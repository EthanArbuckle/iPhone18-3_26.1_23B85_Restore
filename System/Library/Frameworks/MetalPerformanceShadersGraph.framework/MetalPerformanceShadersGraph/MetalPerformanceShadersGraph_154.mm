void mlir::mps::NonZeroOp::build(mlir::UnknownLoc **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v27;
  v26 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::NonZeroOp::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = __src;
  v21 = v26;
  v22 = *(a2 + 72);
  v23 = v22 + v26;
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
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::NonZeroOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.non_zero", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B29B80;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::NorOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.nor", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B29C20;
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

uint64_t mlir::mps::NormalizationOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::FloatAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::NormalizationOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::FloatAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::FloatAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FloatAttr]";
  v38 = 65;
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

void mlir::mps::NormalizationOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v26 = a4;
  v27 = a3;
  v24 = a6;
  v25 = a5;
  v23 = a7;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v10 = *(a2 + 256);
  if (!v10)
  {
    v11 = operator new(8uLL);
    *v11 = 0;
    *(a2 + 256) = v11;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v30;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v30;
    {
      mlir::mps::NormalizationOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v10 = *(a2 + 256);
  }

  *v10 = a8;
  v30 = v32;
  v31 = 0x200000000;
  v12 = *a2;
  mlir::ValueRange::ValueRange(v29, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::ValueRange::ValueRange(&v28, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::NormalizationOp::inferReturnTypes(v14, v12, 1, v29[0], v29[1], v15, v16, v17, v21, v22, &v30))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v30;
  v19 = v31;
  v20 = *(a2 + 72);
  if (v20 + v31 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v20 + v31, 8);
    LODWORD(v20) = *(a2 + 72);
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v20), v18, 8 * v19);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (v30 != v32)
  {
    free(v30);
  }
}

void mlir::mps::NormalizationOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v30 = a4;
  v31 = a3;
  v28 = a6;
  v29 = a5;
  v27 = a7;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  F32Type = mlir::Builder::getF32Type(a1, v11);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a8);
  v14 = *(a2 + 256);
  if (!v14)
  {
    v15 = operator new(8uLL);
    *v15 = 0;
    *(a2 + 256) = v15;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v34;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v34;
    {
      mlir::mps::NormalizationOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v14 = *(a2 + 256);
  }

  *v14 = FloatAttr;
  v34 = v36;
  v35 = 0x200000000;
  v16 = *a2;
  mlir::ValueRange::ValueRange(v33, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v18 = mlir::ValueRange::ValueRange(&v32, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::NormalizationOp::inferReturnTypes(v18, v16, 1, v33[0], v33[1], v19, v20, v21, v25, v26, &v34))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = v34;
  v23 = v35;
  v24 = *(a2 + 72);
  if (v24 + v35 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v24 + v35, 8);
    LODWORD(v24) = *(a2 + 72);
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v24), v22, 8 * v23);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (v34 != v36)
  {
    free(v34);
  }
}

void mlir::mps::NormalizationOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::mps::NormalizationOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::NormalizationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

BOOL mlir::mps::NormalizationOp::verifyInvariantsImpl(mlir::mps::NormalizationOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v3, "epsilon", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 4u))
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
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'epsilon'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::NormalizationOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.normalization", 17, a3, v10, a4, a5);
  *v11 = &unk_1F5B29CC0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::NotEqualToOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.not_equal", 13, a3, v10, a4, a5);
  *v11 = &unk_1F5B29D60;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::NotOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.not", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B29E00;
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

uint64_t mlir::mps::OneHotOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::OneHotOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::mps::OneHotOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v24 = a4;
  v25 = a3;
  v23 = a5;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v9 = mlir::TypeAttr::get(a6);
  v10 = *(a2 + 256);
  if (!v10)
  {
    v11 = operator new(8uLL);
    *v11 = 0;
    *(a2 + 256) = v11;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::OneHotOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::OneHotOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v10 = *(a2 + 256);
  }

  *v10 = v9;
  __src = v30;
  v29 = 0x200000000;
  v12 = *a1;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v15 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::OneHotOp::inferReturnTypes(v12, v16, v17, v27[0], v27[1], Dictionary, v15, v18, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = __src;
  v20 = v29;
  v21 = *(a2 + 72);
  v22 = v21 + v29;
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
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::OneHotOp::verifyInvariantsImpl(const char **this)
{
  v150 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *&(*this)[16 * ((*(*this + 11) >> 23) & 1) + 64];
  if (v3)
  {
    v137 = v2;
    if ((mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v3, "resultElementType", 0x11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v137) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    v5 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v6 = *v5;
    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_53;
    }

    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v25 = v6;
      mlir::arith::ExtUIOp::fold();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v25 + 8);
      v9 = *(v25 + 16);
      if (!v9)
      {
        goto LABEL_37;
      }
    }

    v10 = v8;
    v11 = v9;
    do
    {
      v12 = v11 >> 1;
      v13 = &v10[2 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 2;
      v11 += ~(v11 >> 1);
      if (v15 < v7)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
    if (v10 != &v8[2 * v9] && *v10 == v7)
    {
      v27 = v10[1];
      v137 = v5;
      v138 = v27;
      ArgOperands = mlir::CallOpInterface::getArgOperands(&v137);
      v6 = *v5;
      if (!ArgOperands)
      {
        goto LABEL_53;
      }

LABEL_40:
      {
        v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v30 = *(v6 + 8);
        v31 = *(v6 + 16);
        if (v31)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v126 = v6;
        mlir::arith::ExtUIOp::fold();
        v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v30 = *(v126 + 8);
        v31 = *(v126 + 16);
        if (v31)
        {
LABEL_42:
          v32 = v30;
          v33 = v31;
          do
          {
            v34 = v33 >> 1;
            v35 = &v32[2 * (v33 >> 1)];
            v37 = *v35;
            v36 = v35 + 2;
            v33 += ~(v33 >> 1);
            if (v37 < v29)
            {
              v32 = v36;
            }

            else
            {
              v33 = v34;
            }
          }

          while (v33);
          goto LABEL_50;
        }
      }

      v31 = 0;
      v32 = v30;
LABEL_50:
      if (v32 == &v30[2 * v31] || *v32 != v29)
      {
        v127 = v5;
        v128 = 0;
        mlir::CallableOpInterface::getArgAttrsAttr(&v127);
        v6 = *v5;
        if (v38)
        {
          goto LABEL_53;
        }

LABEL_68:
        {
          v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v53 = *(v6 + 8);
          v54 = *(v6 + 16);
          if (v54)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v116 = v6;
          mlir::arith::ExtUIOp::fold();
          v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v53 = *(v116 + 8);
          v54 = *(v116 + 16);
          if (v54)
          {
LABEL_70:
            v55 = v53;
            v56 = v54;
            do
            {
              v57 = v56 >> 1;
              v58 = &v55[2 * (v56 >> 1)];
              v60 = *v58;
              v59 = v58 + 2;
              v56 += ~(v56 >> 1);
              if (v60 < v52)
              {
                v55 = v59;
              }

              else
              {
                v56 = v57;
              }
            }

            while (v56);
LABEL_163:
            if (v55 != &v53[2 * v54] && *v55 == v52)
            {
              v117 = v55[1];
            }

            else
            {
              v117 = 0;
            }

            v134 = v5;
            v135 = v117;
            isSplat = mlir::ElementsAttr::isSplat(&v134);
            if (mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              goto LABEL_169;
            }

            v6 = *v5;
            v121 = *(*v5 + 136);
            if (v121 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v121 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
            {
LABEL_99:
              v77 = *v5;
              if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
              {
LABEL_100:
                v129 = 261;
                v127 = "operand";
                v128 = 7;
                mlir::Operation::emitOpError(v4, &v127, &v137);
                if (v137)
                {
                  LODWORD(v134) = 3;
                  v135 = " #";
                  v136 = 2;
                  v78 = &v134;
                  v79 = v139;
                  if (v140 >= v141)
                  {
                    if (v139 <= &v134 && v139 + 24 * v140 > &v134)
                    {
                      v115 = &v134 - v139;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v142, v140 + 1, 24);
                      v79 = v139;
                      v78 = (v139 + v115);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v142, v140 + 1, 24);
                      v78 = &v134;
                      v79 = v139;
                    }
                  }

                  v80 = &v79[24 * v140];
                  v81 = *v78;
                  *(v80 + 2) = v78[2];
                  *v80 = v81;
                  v82 = ++v140;
                  if (v137)
                  {
                    LODWORD(v134) = 5;
                    v135 = 1;
                    v83 = &v134;
                    v84 = v139;
                    if (v82 >= v141)
                    {
                      if (v139 <= &v134 && v139 + 24 * v82 > &v134)
                      {
                        v123 = &v134 - v139;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v142, v82 + 1, 24);
                        v84 = v139;
                        v83 = (v139 + v123);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v142, v82 + 1, 24);
                        v83 = &v134;
                        v84 = v139;
                      }
                    }

                    v85 = &v84[24 * v140];
                    v86 = *v83;
                    *(v85 + 2) = v83[2];
                    *v85 = v86;
                    v87 = ++v140;
                    if (v137)
                    {
                      LODWORD(v134) = 3;
                      v135 = " must be 0D tensor of 32-bit unsigned integer or 64-bit unsigned integer values or static-shape defined tensor with shape equal to [1] or unranked tensor of 32-bit unsigned integer or 64-bit unsigned integer values, but got ";
                      v136 = 224;
                      v88 = &v134;
                      v89 = v139;
                      if (v87 >= v141)
                      {
                        if (v139 <= &v134 && v139 + 24 * v87 > &v134)
                        {
                          v124 = &v134 - v139;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v142, v87 + 1, 24);
                          v89 = v139;
                          v88 = (v139 + v124);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v142, v87 + 1, 24);
                          v88 = &v134;
                          v89 = v139;
                        }
                      }

                      v90 = &v89[24 * v140];
                      v91 = *v88;
                      *(v90 + 2) = v88[2];
                      *v90 = v91;
                      ++v140;
                      if (v137)
                      {
                        v92 = &v134;
                        mlir::DiagnosticArgument::DiagnosticArgument(&v134, v5);
                        v93 = v139;
                        if (v140 >= v141)
                        {
                          if (v139 <= &v134 && v139 + 24 * v140 > &v134)
                          {
                            v125 = &v134 - v139;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v142, v140 + 1, 24);
                            v93 = v139;
                            v92 = (v139 + v125);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v142, v140 + 1, 24);
                            v92 = &v134;
                            v93 = v139;
                          }
                        }

                        v94 = &v93[24 * v140];
                        v95 = *v92;
                        *(v94 + 2) = v92[2];
                        *v94 = v95;
                        ++v140;
                      }
                    }
                  }
                }

                v96 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v137);
                if (v137)
                {
                  mlir::InFlightDiagnostic::report(&v137);
                }

                if (v148 == 1)
                {
                  if (v147 != &v148)
                  {
                    free(v147);
                  }

                  v97 = __p;
                  if (__p)
                  {
                    v98 = v146;
                    v99 = __p;
                    if (v146 != __p)
                    {
                      do
                      {
                        v98 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v98 - 1);
                      }

                      while (v98 != v97);
                      v99 = __p;
                    }

                    v146 = v97;
                    operator delete(v99);
                  }

                  v100 = v143;
                  if (v143)
                  {
                    v101 = v144;
                    v102 = v143;
                    if (v144 != v143)
                    {
                      do
                      {
                        v104 = *--v101;
                        v103 = v104;
                        *v101 = 0;
                        if (v104)
                        {
                          operator delete[](v103);
                        }
                      }

                      while (v101 != v100);
                      v102 = v143;
                    }

                    v144 = v100;
                    operator delete(v102);
                  }

                  if (v139 != v142)
                  {
                    free(v139);
                  }
                }

                if (!v96)
                {
                  return 0;
                }

LABEL_169:
                if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
                {
                  if (*(*this + 9))
                  {
                    v118 = (*this - 16);
                  }

                  else
                  {
                    v118 = 0;
                  }

                  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v118, 0);
                  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
                }

                return 0;
              }

              {
                v105 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v106 = *(v77 + 8);
                v107 = *(v77 + 16);
                if (!v107)
                {
                  goto LABEL_155;
                }
              }

              else
              {
                mlir::arith::ExtUIOp::fold();
                v105 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v106 = *(v77 + 8);
                v107 = *(v77 + 16);
                if (!v107)
                {
                  goto LABEL_155;
                }
              }

              v108 = v106;
              v109 = v107;
              do
              {
                v110 = v109 >> 1;
                v111 = &v108[2 * (v109 >> 1)];
                v113 = *v111;
                v112 = v111 + 2;
                v109 += ~(v109 >> 1);
                if (v113 < v105)
                {
                  v108 = v112;
                }

                else
                {
                  v109 = v110;
                }
              }

              while (v109);
              if (v108 != &v106[2 * v107] && *v108 == v105)
              {
                v114 = v108[1];
                goto LABEL_157;
              }

LABEL_155:
              v114 = 0;
LABEL_157:
              v130[0] = v5;
              v130[1] = v114;
              isSplat = mlir::ElementsAttr::isSplat(v130);
              if (mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
                goto LABEL_169;
              }

              goto LABEL_100;
            }

LABEL_58:
            {
              v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v42 = *(v6 + 8);
              v43 = *(v6 + 16);
              if (!v43)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v61 = v6;
              mlir::arith::ExtUIOp::fold();
              v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v42 = *(v61 + 8);
              v43 = *(v61 + 16);
              if (!v43)
              {
                goto LABEL_79;
              }
            }

            v44 = v42;
            v45 = v43;
            do
            {
              v46 = v45 >> 1;
              v47 = &v44[2 * (v45 >> 1)];
              v49 = *v47;
              v48 = v47 + 2;
              v45 += ~(v45 >> 1);
              if (v49 < v41)
              {
                v44 = v48;
              }

              else
              {
                v45 = v46;
              }
            }

            while (v45);
            if (v44 != &v42[2 * v43] && *v44 == v41)
            {
              v62 = v44[1];
              goto LABEL_81;
            }

LABEL_79:
            v62 = 0;
LABEL_81:
            v132[0] = v5;
            v132[1] = v62;
            isSplat = mlir::ElementsAttr::isSplat(v132);
            if (!mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              goto LABEL_99;
            }

            v63 = *v5;
            {
              v64 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v65 = *(v63 + 8);
              v66 = *(v63 + 16);
              if (!v66)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v73 = v63;
              mlir::arith::ExtUIOp::fold();
              v64 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v65 = *(v73 + 8);
              v66 = *(v73 + 16);
              if (!v66)
              {
                goto LABEL_95;
              }
            }

            v67 = v65;
            v68 = v66;
            do
            {
              v69 = v68 >> 1;
              v70 = &v67[2 * (v68 >> 1)];
              v72 = *v70;
              v71 = v70 + 2;
              v68 += ~(v68 >> 1);
              if (v72 < v64)
              {
                v67 = v71;
              }

              else
              {
                v68 = v69;
              }
            }

            while (v68);
            if (v67 != &v65[2 * v66] && *v67 == v64)
            {
              v74 = v67[1];
              goto LABEL_97;
            }

LABEL_95:
            v74 = 0;
LABEL_97:
            v131[0] = v5;
            v131[1] = v74;
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v131);
            v149 = 1;
            if (v76 == 1 && *ArgAttrsAttr == v149)
            {
              goto LABEL_169;
            }

            goto LABEL_99;
          }
        }

        v54 = 0;
        v55 = v53;
        goto LABEL_163;
      }

      v50 = v32[1];
      v127 = v5;
      v128 = v50;
      mlir::CallableOpInterface::getArgAttrsAttr(&v127);
      v6 = *v5;
      if (!v51)
      {
        goto LABEL_68;
      }

LABEL_53:
      v39 = *(v6 + 136);
      if (v39 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v39 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        goto LABEL_99;
      }

      goto LABEL_58;
    }

LABEL_37:
    v137 = v5;
    v138 = 0;
    v26 = mlir::CallOpInterface::getArgOperands(&v137);
    v6 = *v5;
    if (!v26)
    {
      goto LABEL_53;
    }

    goto LABEL_40;
  }

  v127 = "requires attribute 'resultElementType'";
  v129 = 259;
  mlir::OpState::emitOpError(this, &v127, &v137);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v137);
  if (v137)
  {
    mlir::InFlightDiagnostic::report(&v137);
  }

  if (v148 == 1)
  {
    if (v147 != &v148)
    {
      free(v147);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v146;
      v19 = __p;
      if (v146 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v146 = v17;
      operator delete(v19);
    }

    v20 = v143;
    if (v143)
    {
      v21 = v144;
      v22 = v143;
      if (v144 != v143)
      {
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
        v22 = v143;
      }

      v144 = v20;
      operator delete(v22);
    }

    if (v139 != v142)
    {
      free(v139);
    }
  }

  return v16;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::OneHotOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.one_hot", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B29EA0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::OrOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.or", 6, a3, v10, a4, a5);
  *v11 = &unk_1F5B29F40;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PReluOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.prelu", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B29FE0;
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

uint64_t mlir::mps::PadGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "paddingMode";
  v56.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 56;
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

uint64_t mlir::mps::PadGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "paddingMode", 11, *a2);
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid PaddingMode";
        v29 = 49;
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

uint64_t mlir::mps::PadGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingModeAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::PadGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingModeAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PaddingModeAttr]";
  v38 = 76;
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

void mlir::mps::PadGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v39 = *MEMORY[0x1E69E9840];
  v29 = a4;
  v30 = a3;
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  v9 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v9);
  v36[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v36[1] = v9;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v34 = v36;
  v32 = a6;
  v11 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v11);
  v31 = &v32;
  v37 = &v32;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v37);
  v14 = *(a2 + 256);
  if (!v14)
  {
    v15 = operator new(8uLL);
    *v15 = 0;
    *(a2 + 256) = v15;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PadGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PadGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v14 = *(a2 + 256);
  }

  *v14 = ParametricStorageTypeImpl;
  __src = v35;
  v34 = 0x200000000;
  v16 = *a2;
  mlir::ValueRange::ValueRange(&v37, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v18 = mlir::ValueRange::ValueRange(v36, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::PadGradientOp::inferReturnTypes(v18, v16, 1, v37, p_src, v19, v20, v21, v26, v27, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = __src;
  v23 = v34;
  v24 = *(a2 + 72);
  v25 = v24 + v34;
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
  if (__src != v35)
  {
    free(__src);
  }
}

BOOL mlir::mps::PadGradientOp::verifyInvariantsImpl(mlir::mps::PadGradientOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v3, "paddingMode", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u))
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
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'paddingMode'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PadGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.pad_gradient", 16, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A080;
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

uint64_t mlir::mps::PadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingModeAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::PadOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingModeAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::mps::PadOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v22 = a4;
  v23 = a3;
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    v10 = operator new(8uLL);
    *v10 = 0;
    *(a2 + 256) = v10;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PadOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v9 = *(a2 + 256);
  }

  *v9 = a6;
  __src = v28;
  v27 = 0x200000000;
  v11 = *a1;
  v12 = *a2;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v15 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PadOp::inferReturnTypes(v11, v12, 1, v25[0], v25[1], Dictionary, v15, v16, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v17 = __src;
  v18 = v27;
  v19 = *(a2 + 72);
  v20 = v19 + v27;
  if (v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v20, 8);
    LODWORD(v19) = *(a2 + 72);
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v19), v17, 8 * v18);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v28)
  {
    free(__src);
  }
}

void mlir::mps::PadOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v27 = a4;
  v28 = a3;
  v26 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v9 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v34 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v35 = v9;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v32 = &v34;
  v30 = a6;
  v11 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v11);
  v29 = &v30;
  v36 = &v30;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v29, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v36);
  v14 = *(a2 + 256);
  if (!v14)
  {
    v15 = operator new(8uLL);
    *v15 = 0;
    *(a2 + 256) = v15;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PadOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v14 = *(a2 + 256);
  }

  *v14 = ParametricStorageTypeImpl;
  __src = v33;
  v32 = 0x200000000;
  v16 = *a1;
  v17 = *a2;
  mlir::ValueRange::ValueRange(&v36, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v20 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v34, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PadOp::inferReturnTypes(v16, v17, 1, v36, p_src, Dictionary, v20, v21, v34, v35, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = __src;
  v23 = v32;
  v24 = *(a2 + 72);
  v25 = v24 + v32;
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
  if (__src != v33)
  {
    free(__src);
  }
}

BOOL mlir::mps::PadOp::verifyInvariantsImpl(mlir::mps::PadOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v3, "paddingMode", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'paddingMode'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PadOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.pad", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A120;
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

void mlir::mps::PermuteOp::build(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 1);
  v16 = mlir::RankedTensorType::get(&v15, 1, IntegerType, 0);
  v11 = *a2;
  v12 = mlir::TensorType::operator mlir::ShapedType(&v16);
  v15 = mlir::DenseElementsAttr::getFromRawBuffer(v12, v13, a4, 4 * a5, 4, 1, 1);
  v14 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(a1, v11, &v15);
  mlir::mps::PermuteOp::build(a1, a2, a3, v14 - 16);
}

void mlir::mps::PermuteOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  __src = v24;
  v23 = 0x200000000;
  v6 = *a1;
  v7 = *a2;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::PermuteOp::inferReturnTypes(v6, v7, 1, v21[0], v21[1], v9, v10, v11, v16, v17, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = __src;
  v13 = v23;
  v14 = *(a2 + 72);
  v15 = v14 + v23;
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
  if (__src != v24)
  {
    free(__src);
  }
}

void mlir::mps::PermuteOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v28[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v28;
  v27 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v25, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::PermuteOp::inferReturnTypes(v13, v14, 1, a3, a4, v16, v17, v18, v23, v24, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = __src;
  v20 = v27;
  v21 = *(a2 + 72);
  v22 = v21 + v27;
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
  if (__src != v28)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PermuteOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.permute", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A1C0;
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

void mlir::mps::PlaceholderOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 72);
  if (v5 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v5 + 1, 8);
    LODWORD(v5) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v5) = a3;
  ++*(a2 + 72);
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PlaceholderOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.placeholder", 15, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A260;
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

uint64_t mlir::mps::PoolAvgGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v93 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v77 = v6;
  if (!v6)
  {
    a3(&v81, a4);
    if (v81)
    {
      LODWORD(v78) = 3;
      v79 = "expected DictionaryAttr to set properties";
      v80 = 41;
      v26 = &v78;
      v27 = v83;
      if (v84 >= v85)
      {
        if (v83 <= &v78 && v83 + 24 * v84 > &v78)
        {
          v70 = &v78 - v83;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
          v27 = v83;
          v26 = (v83 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
          v26 = &v78;
          v27 = v83;
        }
      }

      v28 = &v27[24 * v84];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v84;
      if (v81)
      {
        mlir::InFlightDiagnostic::report(&v81);
      }
    }

    if (v92 != 1)
    {
      return 0;
    }

    if (v91 != &v92)
    {
      free(v91);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v90;
      v32 = __p;
      if (v90 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v90 = v30;
      operator delete(v32);
    }

    v21 = v87;
    if (!v87)
    {
      goto LABEL_77;
    }

    v33 = v88;
    v23 = v87;
    if (v88 == v87)
    {
LABEL_76:
      v88 = v21;
      operator delete(v23);
LABEL_77:
      if (v83 != v86)
      {
        free(v83);
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
    goto LABEL_75;
  }

  v94.var0 = "ceil_mode";
  v94.var1 = 9;
  v8 = mlir::DictionaryAttr::get(&v77, v94);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 54;
        v10 = &v78;
        v11 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v71 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v11 = v83;
            v10 = (v83 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v10 = &v78;
            v11 = v83;
          }
        }

        v12 = &v11[24 * v84];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v84;
        if (v81)
        {
          v14 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v9);
          v15 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v72 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v15 = v83;
              v14 = (v83 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v14 = &v78;
              v15 = v83;
            }
          }

          v16 = &v15[24 * v84];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v84;
          if (v81)
          {
            mlir::InFlightDiagnostic::report(&v81);
          }
        }
      }

      if ((v92 & 1) == 0)
      {
        return 0;
      }

      if (v91 != &v92)
      {
        free(v91);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v90;
        v20 = __p;
        if (v90 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v90 = v18;
        operator delete(v20);
      }

      v21 = v87;
      if (!v87)
      {
        goto LABEL_77;
      }

      v22 = v88;
      v23 = v87;
      if (v88 == v87)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v95.var0 = "dilation_rates";
  v95.var1 = 14;
  v36 = mlir::DictionaryAttr::get(&v77, v95);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v81, a4);
    if (v81)
    {
      LODWORD(v78) = 3;
      v80 = 59;
      v42 = &v78;
      v43 = v83;
      if (v84 >= v85)
      {
        if (v83 <= &v78 && v83 + 24 * v84 > &v78)
        {
          v73 = &v78 - v83;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
          v43 = v83;
          v42 = (v83 + v73);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
          v42 = &v78;
          v43 = v83;
        }
      }

      v44 = &v43[24 * v84];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      ++v84;
      if (v81)
      {
        v46 = &v78;
        mlir::DiagnosticArgument::DiagnosticArgument(&v78, v37);
        v47 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v75 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v47 = v83;
            v46 = (v83 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v46 = &v78;
            v47 = v83;
          }
        }

        v48 = &v47[24 * v84];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        ++v84;
        if (v81)
        {
          mlir::InFlightDiagnostic::report(&v81);
        }
      }
    }

    if ((v92 & 1) == 0)
    {
      return 0;
    }

    if (v91 != &v92)
    {
      free(v91);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v90;
      v52 = __p;
      if (v90 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v90 = v50;
      operator delete(v52);
    }

    v21 = v87;
    if (!v87)
    {
      goto LABEL_77;
    }

    v53 = v88;
    v23 = v87;
    if (v88 == v87)
    {
      goto LABEL_76;
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
LABEL_75:
    v23 = v87;
    goto LABEL_76;
  }

LABEL_49:
  v96.var0 = "explicit_padding";
  v96.var1 = 16;
  v38 = mlir::DictionaryAttr::get(&v77, v96);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 61;
        v56 = &v78;
        v57 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v74 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v57 = v83;
            v56 = (v83 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v56 = &v78;
            v57 = v83;
          }
        }

        v58 = &v57[24 * v84];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v84;
        if (v81)
        {
          v60 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v39);
          v61 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v76 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v61 = v83;
              v60 = (v83 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v60 = &v78;
              v61 = v83;
            }
          }

          v62 = &v61[24 * v84];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v84;
          if (v81)
          {
            mlir::InFlightDiagnostic::report(&v81);
          }
        }
      }

      if (v92 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v82);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v97.var0 = "include_zero_pad";
  v97.var1 = 16;
  v40 = mlir::DictionaryAttr::get(&v77, v97);
  v78 = v40;
  if (!v40)
  {
LABEL_88:
    v98.var0 = "padding_style";
    v98.var1 = 13;
    v64 = mlir::DictionaryAttr::get(&v77, v98);
    v78 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v81, a4);
        goto LABEL_101;
      }

      a1[4] = v64;
    }

    v99.var0 = "strides";
    v99.var1 = 7;
    v65 = mlir::DictionaryAttr::get(&v77, v99);
    v78 = v65;
    if (v65)
    {
      v66 = v65;
      if (!mlir::DenseIntElementsAttr::classof(v65))
      {
        a3(&v81, a4);
        goto LABEL_101;
      }

      a1[5] = v66;
    }

    v100.var0 = "window_sizes";
    v100.var1 = 12;
    v67 = mlir::DictionaryAttr::get(&v77, v100);
    v78 = v67;
    if (v67)
    {
      v68 = v67;
      if (!mlir::DenseIntElementsAttr::classof(v67))
      {
        a3(&v81, a4);
        goto LABEL_101;
      }

      a1[6] = v68;
    }

    return 1;
  }

  if (*(*v40 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v40;
    goto LABEL_88;
  }

  a3(&v81, a4);
LABEL_101:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v41, &v78);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
  return 0;
}

uint64_t mlir::mps::PoolAvgGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v58[6] = *MEMORY[0x1E69E9840];
  v55 = a1;
  v56 = v58;
  v57 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v55, "ceil_mode", 9, *a2);
  v5 = v57;
  if (v57 >= HIDWORD(v57))
  {
    v41 = NamedAttr;
    v42 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
    v4 = v42;
    NamedAttr = v41;
    v5 = v57;
  }

  v6 = (v56 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v57 + 1;
  LODWORD(v57) = v57 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v55, "dilation_rates", 14, v8);
    v11 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v43 = v9;
      v44 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v10 = v44;
      v9 = v43;
      v11 = v57;
    }

    v12 = (v56 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v55, "explicit_padding", 16, v13);
    v16 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v45 = v14;
      v46 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v15 = v46;
      v14 = v45;
      v16 = v57;
    }

    v17 = (v56 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v55, "include_zero_pad", 16, v18);
    v21 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v47 = v19;
      v48 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v20 = v48;
      v19 = v47;
      v21 = v57;
    }

    v22 = (v56 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v55, "padding_style", 13, v23);
    v26 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v49 = v24;
      v50 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v25 = v50;
      v24 = v49;
      v26 = v57;
    }

    v27 = (v56 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v55, "strides", 7, v28);
    v31 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v51 = v29;
      v52 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v30 = v52;
      v29 = v51;
      v31 = v57;
    }

    v32 = (v56 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v55, "window_sizes", 12, v33);
    v36 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v53 = v34;
      v54 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v35 = v54;
      v34 = v53;
      v36 = v57;
    }

    v37 = (v56 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v38 = v56;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v56 == v58)
    {
      return DictionaryAttr;
    }

    goto LABEL_32;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v55, v56, v7);
  v38 = v56;
  if (v56 != v58)
  {
LABEL_32:
    free(v38);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::PoolAvgGradientOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    switch(__n)
    {
      case 13:
        if (!memcmp(__s1, "padding_style", 0xDuLL))
        {
          return a2[4];
        }

        break;
      case 14:
        if (!memcmp(__s1, "dilation_rates", 0xEuLL))
        {
          return a2[1];
        }

        break;
      case 16:
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[2];
        }

        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          return a2[3];
        }

        break;
    }

    return 0;
  }

  if (__n == 7)
  {
    if (!memcmp(__s1, "strides", 7uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n == 9)
  {
    if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 12 || memcmp(__s1, "window_sizes", 0xCuLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::mps::PoolAvgGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
            {
              v10 = a4;
            }

            else
            {
              v10 = 0;
            }

            v5[4] = v10;
          }

          else
          {
            v5[4] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[1] = v13;
          }

          else
          {
            v5[1] = 0;
          }
        }

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (result)
        {
          if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                v8 = a4;
              }

              else
              {
                v8 = 0;
              }

              v5[3] = v8;
            }

            else
            {
              v5[3] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[2] = v15;
        }

        else
        {
          v5[2] = 0;
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "strides", 7uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[5] = v9;
          }

          else
          {
            v5[5] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v12 = a4;
            }

            else
            {
              v12 = 0;
            }

            *result = v12;
          }

          else
          {
            *result = 0;
          }
        }

        break;
      case 12:
        result = memcmp(__s1, "window_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            v5[6] = v14;
          }

          else
          {
            v5[6] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::PoolAvgGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 14, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 16, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "include_zero_pad", 16, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 13, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "strides", 7, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "window_sizes", 12, v10);
  }
}

BOOL mlir::mps::PoolAvgGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "ceil_mode", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 0xE, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v10, "explicit_padding", 0x10, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "include_zero_pad", 0x10, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v12, "padding_style", 0xD, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v13, "strides", 7, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v14, "window_sizes", 0xC, a3, a4) & 1) != 0)
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(void *a1, void *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
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
    v78 = 8;
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
        v63 = "' failed to satisfy constraint: ui64 elements attribute of shape {8}";
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

BOOL mlir::mps::PoolAvgGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
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
    v5 = operator new(0x38uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 6) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::PoolAvgGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PaddingStyleAttr]";
  v38 = 77;
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

void mlir::mps::PoolAvgGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, char a10, char a11)
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = a4;
  v47 = a3;
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  v17 = *(a2 + 256);
  if (v17)
  {
    *(v17 + 48) = a5;
    v18 = *(a2 + 256);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = operator new(0x38uLL);
    *v20 = 0u;
    v20[1] = 0u;
    v20[2] = 0u;
    *(v20 + 6) = 0;
    *(a2 + 256) = v20;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolAvgGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 48) = a5;
    v18 = *(a2 + 256);
    if (v18)
    {
LABEL_3:
      *(v18 + 40) = a6;
      v19 = *(a2 + 256);
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v21 = operator new(0x38uLL);
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *(v21 + 6) = 0;
  *(a2 + 256) = v21;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::PoolAvgGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 40) = a6;
  v19 = *(a2 + 256);
  if (!v19)
  {
LABEL_11:
    v22 = operator new(0x38uLL);
    *v22 = 0u;
    v22[1] = 0u;
    v22[2] = 0u;
    *(v22 + 6) = 0;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolAvgGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v19 = *(a2 + 256);
  }

LABEL_14:
  *(v19 + 8) = a7;
  v23 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v53[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v53[1] = v23;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = v53;
  v49 = a8;
  v25 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v26 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v25);
  v48 = &v49;
  v54 = &v49;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 32) >> 15) ^ (-348639895 * (v25 ^ (v26 >> 47) ^ v26))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v54);
  v29 = *(a2 + 256);
  if (!v29)
  {
    v30 = operator new(0x38uLL);
    *v30 = 0u;
    v30[1] = 0u;
    v30[2] = 0u;
    *(v30 + 6) = 0;
    *(a2 + 256) = v30;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolAvgGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v29 = *(a2 + 256);
  }

  *(v29 + 32) = ParametricStorageTypeImpl;
  if (a9)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      v32 = operator new(0x38uLL);
      *v32 = 0u;
      v32[1] = 0u;
      v32[2] = 0u;
      *(v32 + 6) = 0;
      *(a2 + 256) = v32;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v31 = *(a2 + 256);
    }

    *(v31 + 16) = a9;
  }

  if (a10)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v27);
    v34 = *(a2 + 256);
    if (!v34)
    {
      v35 = operator new(0x38uLL);
      *v35 = 0u;
      v35[1] = 0u;
      v35[2] = 0u;
      *(v35 + 6) = 0;
      *(a2 + 256) = v35;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v34 = *(a2 + 256);
    }

    *v34 = UnitAttr;
  }

  if (a11)
  {
    v36 = mlir::Builder::getUnitAttr(a1, v27);
    v37 = *(a2 + 256);
    if (!v37)
    {
      v38 = operator new(0x38uLL);
      *v38 = 0u;
      v38[1] = 0u;
      v38[2] = 0u;
      *(v38 + 6) = 0;
      *(a2 + 256) = v38;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v37 = *(a2 + 256);
    }

    *(v37 + 24) = v36;
  }

  __src = v52;
  v51 = 0x200000000;
  mlir::ValueRange::ValueRange(&v54, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v40 = mlir::ValueRange::ValueRange(v53, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v40, v41, v54, p_src, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v42 = __src;
  v43 = v51;
  v44 = *(a2 + 72);
  v45 = v44 + v51;
  if (v45 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v45, 8);
    LODWORD(v44) = *(a2 + 72);
  }

  if (v43)
  {
    memcpy((*(a2 + 64) + 8 * v44), v42, 8 * v43);
    LODWORD(v44) = *(a2 + 72);
  }

  *(a2 + 72) = v44 + v43;
  if (__src != v52)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::PoolAvgGradientOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  *&v16 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v16);
  v12 = result;
  if (a2[5])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18[0] = 4;
    IntegerType = mlir::Builder::getIntegerType(&v12, 64, 0);
    v13[0] = mlir::RankedTensorType::get(v18, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(v13);
    v16 = xmmword_1E098C990;
    v17 = unk_1E098C9A0;
    result = mlir::DenseElementsAttr::getFromRawBuffer(v5, v6, &v16, 32, 8, 1, 0);
    a2[5] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[4])
      {
        return result;
      }

LABEL_7:
      v10 = v12;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v12);
      v18[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
      v18[1] = v10;
      *&v16 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      *(&v16 + 1) = v18;
      v15 = 2;
      v13[0] = &v15;
      v13[1] = &v16;
      v14 = &v15;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
      a2[4] = result;
      return result;
    }
  }

  v18[0] = 4;
  v7 = mlir::Builder::getIntegerType(&v12, 64, 0);
  v13[0] = mlir::RankedTensorType::get(v18, 1, v7, 0);
  v8 = mlir::TensorType::operator mlir::ShapedType(v13);
  v16 = xmmword_1E098C990;
  v17 = unk_1E098C9A0;
  result = mlir::DenseElementsAttr::getFromRawBuffer(v8, v9, &v16, 32, 8, 1, 0);
  a2[1] = result;
  if (!a2[4])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::PoolAvgGradientOp::verifyInvariantsImpl(mlir::mps::PoolAvgGradientOp *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[14];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v9 = v3[12];
    v10 = v3[13];
    v25[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) != 0 && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v10, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v9, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "include_zero_pad", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if (*(*this + 36))
      {
        v11 = *this - 16;
      }

      else
      {
        v11 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = "requires attribute 'window_sizes'";
    v24 = 259;
    mlir::OpState::emitOpError(this, &v23, v25);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v31;
        v16 = __p;
        if (v31 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v31 = v14;
        operator delete(v16);
      }

      v17 = v28;
      if (v28)
      {
        v18 = v29;
        v19 = v28;
        if (v29 != v28)
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
          v19 = v28;
        }

        v29 = v17;
        operator delete(v19);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  return v13;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PoolAvgGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.pooling_average_gradient", 28, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A300;
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

BOOL mlir::mps::PoolAvgOp::readProperties(uint64_t a1, uint64_t a2)
{
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
    v5 = operator new(0x38uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 6) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::PoolAvgOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
  }

  return 0;
}

void mlir::mps::PoolAvgOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v41 = a3;
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    v18 = operator new(0x38uLL);
    *v18 = 0u;
    v18[1] = 0u;
    v18[2] = 0u;
    *(v18 + 6) = 0;
    *(a2 + 256) = v18;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolAvgOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v17 = *(a2 + 256);
  }

  *(v17 + 48) = a4;
  if (a5)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      v20 = operator new(0x38uLL);
      *v20 = 0u;
      v20[1] = 0u;
      v20[2] = 0u;
      *(v20 + 6) = 0;
      *(a2 + 256) = v20;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v19 = *(a2 + 256);
    }

    *(v19 + 40) = a5;
  }

  if (a6)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      v22 = operator new(0x38uLL);
      *v22 = 0u;
      v22[1] = 0u;
      v22[2] = 0u;
      *(v22 + 6) = 0;
      *(a2 + 256) = v22;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v21 = *(a2 + 256);
    }

    *(v21 + 8) = a6;
  }

  if (a7)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      v24 = operator new(0x38uLL);
      *v24 = 0u;
      v24[1] = 0u;
      v24[2] = 0u;
      *(v24 + 6) = 0;
      *(a2 + 256) = v24;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v23 = *(a2 + 256);
    }

    *(v23 + 32) = a7;
  }

  if (a8)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      v26 = operator new(0x38uLL);
      *v26 = 0u;
      v26[1] = 0u;
      v26[2] = 0u;
      *(v26 + 6) = 0;
      *(a2 + 256) = v26;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v25 = *(a2 + 256);
    }

    *(v25 + 16) = a8;
  }

  if (a9)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      v28 = operator new(0x38uLL);
      *v28 = 0u;
      v28[1] = 0u;
      v28[2] = 0u;
      *(v28 + 6) = 0;
      *(a2 + 256) = v28;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v27 = *(a2 + 256);
    }

    *v27 = a9;
  }

  if (a10)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      v30 = operator new(0x38uLL);
      *v30 = 0u;
      v30[1] = 0u;
      v30[2] = 0u;
      *(v30 + 6) = 0;
      *(a2 + 256) = v30;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v29 = *(a2 + 256);
    }

    *(v29 + 24) = a10;
  }

  __src = v46;
  v45 = 0x200000000;
  v31 = *a1;
  v32 = *a2;
  mlir::ValueRange::ValueRange(v43, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v35 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v42, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolAvgOp::inferReturnTypes(v31, v32, 1, v43[0], v43[1], Dictionary, v35, v36, v42, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v37 = __src;
  v38 = v45;
  v39 = *(a2 + 72);
  v40 = v39 + v45;
  if (v40 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v40, 8);
    LODWORD(v39) = *(a2 + 72);
  }

  if (v38)
  {
    memcpy((*(a2 + 64) + 8 * v39), v37, 8 * v38);
    LODWORD(v39) = *(a2 + 72);
  }

  *(a2 + 72) = v39 + v38;
  if (__src != v46)
  {
    free(__src);
  }
}

void mlir::mps::PoolAvgOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, char a9, char a10)
{
  v58 = *MEMORY[0x1E69E9840];
  v49 = a3;
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  v17 = *(a2 + 256);
  if (v17)
  {
    *(v17 + 48) = a4;
    v18 = *(a2 + 256);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = operator new(0x38uLL);
    *v20 = 0u;
    v20[1] = 0u;
    v20[2] = 0u;
    *(v20 + 6) = 0;
    *(a2 + 256) = v20;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolAvgOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 48) = a4;
    v18 = *(a2 + 256);
    if (v18)
    {
LABEL_3:
      *(v18 + 40) = a5;
      v19 = *(a2 + 256);
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v21 = operator new(0x38uLL);
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *(v21 + 6) = 0;
  *(a2 + 256) = v21;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::PoolAvgOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 40) = a5;
  v19 = *(a2 + 256);
  if (!v19)
  {
LABEL_11:
    v22 = operator new(0x38uLL);
    *v22 = 0u;
    v22[1] = 0u;
    v22[2] = 0u;
    *(v22 + 6) = 0;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolAvgOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v19 = *(a2 + 256);
  }

LABEL_14:
  *(v19 + 8) = a6;
  v23 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v55 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  *(&v55 + 1) = v23;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v53 = &v55;
  v51 = a7;
  v25 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v26 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v25);
  v50 = &v51;
  v56 = &v51;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 32) >> 15) ^ (-348639895 * (v25 ^ (v26 >> 47) ^ v26))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v50, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v56);
  v29 = *(a2 + 256);
  if (!v29)
  {
    v30 = operator new(0x38uLL);
    *v30 = 0u;
    v30[1] = 0u;
    v30[2] = 0u;
    *(v30 + 6) = 0;
    *(a2 + 256) = v30;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolAvgOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v29 = *(a2 + 256);
  }

  *(v29 + 32) = ParametricStorageTypeImpl;
  if (a8)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      v32 = operator new(0x38uLL);
      *v32 = 0u;
      v32[1] = 0u;
      v32[2] = 0u;
      *(v32 + 6) = 0;
      *(a2 + 256) = v32;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v31 = *(a2 + 256);
    }

    *(v31 + 16) = a8;
  }

  if (a9)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v27);
    v34 = *(a2 + 256);
    if (!v34)
    {
      v35 = operator new(0x38uLL);
      *v35 = 0u;
      v35[1] = 0u;
      v35[2] = 0u;
      *(v35 + 6) = 0;
      *(a2 + 256) = v35;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v34 = *(a2 + 256);
    }

    *v34 = UnitAttr;
  }

  if (a10)
  {
    v36 = mlir::Builder::getUnitAttr(a1, v27);
    v37 = *(a2 + 256);
    if (!v37)
    {
      v38 = operator new(0x38uLL);
      *v38 = 0u;
      v38[1] = 0u;
      v38[2] = 0u;
      *(v38 + 6) = 0;
      *(a2 + 256) = v38;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolAvgOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolAvgOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v37 = *(a2 + 256);
    }

    *(v37 + 24) = v36;
  }

  __src = v54;
  v53 = 0x200000000;
  v39 = *a1;
  v40 = *a2;
  mlir::ValueRange::ValueRange(&v56, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v43 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v55, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolAvgOp::inferReturnTypes(v39, v40, 1, v56, p_src, Dictionary, v43, v44, v55, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v45 = __src;
  v46 = v53;
  v47 = *(a2 + 72);
  v48 = v47 + v53;
  if (v48 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v48, 8);
    LODWORD(v47) = *(a2 + 72);
  }

  if (v46)
  {
    memcpy((*(a2 + 64) + 8 * v47), v45, 8 * v46);
    LODWORD(v47) = *(a2 + 72);
  }

  *(a2 + 72) = v47 + v46;
  if (__src != v54)
  {
    free(__src);
  }
}

BOOL mlir::mps::PoolAvgOp::verifyInvariantsImpl(mlir::mps::PoolAvgOp *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[14];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v9 = v3[12];
    v10 = v3[13];
    v25[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) != 0 && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v10, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v9, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (v25[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "include_zero_pad", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      if (*(*this + 36))
      {
        v11 = *this - 16;
      }

      else
      {
        v11 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = "requires attribute 'window_sizes'";
    v24 = 259;
    mlir::OpState::emitOpError(this, &v23, v25);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v31;
        v16 = __p;
        if (v31 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v31 = v14;
        operator delete(v16);
      }

      v17 = v28;
      if (v28)
      {
        v18 = v29;
        v19 = v28;
        if (v29 != v28)
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
          v19 = v28;
        }

        v29 = v17;
        operator delete(v19);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  return v13;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PoolAvgOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.pooling_average", 19, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A3A0;
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

BOOL mlir::mps::PoolL2NormGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
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
    v5 = operator new(0x38uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 6) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::PoolL2NormGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
  }

  return 0;
}

void mlir::mps::PoolL2NormGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, char a10, char a11)
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = a4;
  v47 = a3;
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  v17 = *(a2 + 256);
  if (v17)
  {
    *(v17 + 48) = a5;
    v18 = *(a2 + 256);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = operator new(0x38uLL);
    *v20 = 0u;
    v20[1] = 0u;
    v20[2] = 0u;
    *(v20 + 6) = 0;
    *(a2 + 256) = v20;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolL2NormGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 48) = a5;
    v18 = *(a2 + 256);
    if (v18)
    {
LABEL_3:
      *(v18 + 40) = a6;
      v19 = *(a2 + 256);
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v21 = operator new(0x38uLL);
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *(v21 + 6) = 0;
  *(a2 + 256) = v21;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::PoolL2NormGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 40) = a6;
  v19 = *(a2 + 256);
  if (!v19)
  {
LABEL_11:
    v22 = operator new(0x38uLL);
    *v22 = 0u;
    v22[1] = 0u;
    v22[2] = 0u;
    *(v22 + 6) = 0;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolL2NormGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v19 = *(a2 + 256);
  }

LABEL_14:
  *(v19 + 8) = a7;
  v23 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v53[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v53[1] = v23;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = v53;
  v49 = a8;
  v25 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v26 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v25);
  v48 = &v49;
  v54 = &v49;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 32) >> 15) ^ (-348639895 * (v25 ^ (v26 >> 47) ^ v26))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v54);
  v29 = *(a2 + 256);
  if (!v29)
  {
    v30 = operator new(0x38uLL);
    *v30 = 0u;
    v30[1] = 0u;
    v30[2] = 0u;
    *(v30 + 6) = 0;
    *(a2 + 256) = v30;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolL2NormGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v29 = *(a2 + 256);
  }

  *(v29 + 32) = ParametricStorageTypeImpl;
  if (a9)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      v32 = operator new(0x38uLL);
      *v32 = 0u;
      v32[1] = 0u;
      v32[2] = 0u;
      *(v32 + 6) = 0;
      *(a2 + 256) = v32;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v31 = *(a2 + 256);
    }

    *(v31 + 16) = a9;
  }

  if (a10)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v27);
    v34 = *(a2 + 256);
    if (!v34)
    {
      v35 = operator new(0x38uLL);
      *v35 = 0u;
      v35[1] = 0u;
      v35[2] = 0u;
      *(v35 + 6) = 0;
      *(a2 + 256) = v35;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v34 = *(a2 + 256);
    }

    *v34 = UnitAttr;
  }

  if (a11)
  {
    v36 = mlir::Builder::getUnitAttr(a1, v27);
    v37 = *(a2 + 256);
    if (!v37)
    {
      v38 = operator new(0x38uLL);
      *v38 = 0u;
      v38[1] = 0u;
      v38[2] = 0u;
      *(v38 + 6) = 0;
      *(a2 + 256) = v38;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v37 = *(a2 + 256);
    }

    *(v37 + 24) = v36;
  }

  __src = v52;
  v51 = 0x200000000;
  mlir::ValueRange::ValueRange(&v54, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v40 = mlir::ValueRange::ValueRange(v53, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v40, v41, v54, p_src, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v42 = __src;
  v43 = v51;
  v44 = *(a2 + 72);
  v45 = v44 + v51;
  if (v45 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v45, 8);
    LODWORD(v44) = *(a2 + 72);
  }

  if (v43)
  {
    memcpy((*(a2 + 64) + 8 * v44), v42, 8 * v43);
    LODWORD(v44) = *(a2 + 72);
  }

  *(a2 + 72) = v44 + v43;
  if (__src != v52)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PoolL2NormGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.pooling_l2_norm_gradient", 28, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A440;
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

BOOL mlir::mps::PoolL2NormOp::readProperties(uint64_t a1, uint64_t a2)
{
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
    v5 = operator new(0x38uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 6) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::PoolL2NormOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 5))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 6);
  }

  return 0;
}

void mlir::mps::PoolL2NormOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v41 = a3;
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    v18 = operator new(0x38uLL);
    *v18 = 0u;
    v18[1] = 0u;
    v18[2] = 0u;
    *(v18 + 6) = 0;
    *(a2 + 256) = v18;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolL2NormOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v17 = *(a2 + 256);
  }

  *(v17 + 48) = a4;
  if (a5)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      v20 = operator new(0x38uLL);
      *v20 = 0u;
      v20[1] = 0u;
      v20[2] = 0u;
      *(v20 + 6) = 0;
      *(a2 + 256) = v20;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v19 = *(a2 + 256);
    }

    *(v19 + 40) = a5;
  }

  if (a6)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      v22 = operator new(0x38uLL);
      *v22 = 0u;
      v22[1] = 0u;
      v22[2] = 0u;
      *(v22 + 6) = 0;
      *(a2 + 256) = v22;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v21 = *(a2 + 256);
    }

    *(v21 + 8) = a6;
  }

  if (a7)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      v24 = operator new(0x38uLL);
      *v24 = 0u;
      v24[1] = 0u;
      v24[2] = 0u;
      *(v24 + 6) = 0;
      *(a2 + 256) = v24;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v23 = *(a2 + 256);
    }

    *(v23 + 32) = a7;
  }

  if (a8)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      v26 = operator new(0x38uLL);
      *v26 = 0u;
      v26[1] = 0u;
      v26[2] = 0u;
      *(v26 + 6) = 0;
      *(a2 + 256) = v26;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v25 = *(a2 + 256);
    }

    *(v25 + 16) = a8;
  }

  if (a9)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      v28 = operator new(0x38uLL);
      *v28 = 0u;
      v28[1] = 0u;
      v28[2] = 0u;
      *(v28 + 6) = 0;
      *(a2 + 256) = v28;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v27 = *(a2 + 256);
    }

    *v27 = a9;
  }

  if (a10)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      v30 = operator new(0x38uLL);
      *v30 = 0u;
      v30[1] = 0u;
      v30[2] = 0u;
      *(v30 + 6) = 0;
      *(a2 + 256) = v30;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v29 = *(a2 + 256);
    }

    *(v29 + 24) = a10;
  }

  __src = v46;
  v45 = 0x200000000;
  v31 = *a1;
  v32 = *a2;
  mlir::ValueRange::ValueRange(v43, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v35 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v42, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolL2NormOp::inferReturnTypes(v31, v32, 1, v43[0], v43[1], Dictionary, v35, v36, v42, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v37 = __src;
  v38 = v45;
  v39 = *(a2 + 72);
  v40 = v39 + v45;
  if (v40 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v40, 8);
    LODWORD(v39) = *(a2 + 72);
  }

  if (v38)
  {
    memcpy((*(a2 + 64) + 8 * v39), v37, 8 * v38);
    LODWORD(v39) = *(a2 + 72);
  }

  *(a2 + 72) = v39 + v38;
  if (__src != v46)
  {
    free(__src);
  }
}

void mlir::mps::PoolL2NormOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, char a9, char a10)
{
  v58 = *MEMORY[0x1E69E9840];
  v49 = a3;
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  v17 = *(a2 + 256);
  if (v17)
  {
    *(v17 + 48) = a4;
    v18 = *(a2 + 256);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = operator new(0x38uLL);
    *v20 = 0u;
    v20[1] = 0u;
    v20[2] = 0u;
    *(v20 + 6) = 0;
    *(a2 + 256) = v20;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolL2NormOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 48) = a4;
    v18 = *(a2 + 256);
    if (v18)
    {
LABEL_3:
      *(v18 + 40) = a5;
      v19 = *(a2 + 256);
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v21 = operator new(0x38uLL);
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *(v21 + 6) = 0;
  *(a2 + 256) = v21;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::PoolL2NormOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 40) = a5;
  v19 = *(a2 + 256);
  if (!v19)
  {
LABEL_11:
    v22 = operator new(0x38uLL);
    *v22 = 0u;
    v22[1] = 0u;
    v22[2] = 0u;
    *(v22 + 6) = 0;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolL2NormOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v19 = *(a2 + 256);
  }

LABEL_14:
  *(v19 + 8) = a6;
  v23 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v55 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  *(&v55 + 1) = v23;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v53 = &v55;
  v51 = a7;
  v25 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v26 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v25);
  v50 = &v51;
  v56 = &v51;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 32) >> 15) ^ (-348639895 * (v25 ^ (v26 >> 47) ^ v26))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v50, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v56);
  v29 = *(a2 + 256);
  if (!v29)
  {
    v30 = operator new(0x38uLL);
    *v30 = 0u;
    v30[1] = 0u;
    v30[2] = 0u;
    *(v30 + 6) = 0;
    *(a2 + 256) = v30;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolL2NormOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v29 = *(a2 + 256);
  }

  *(v29 + 32) = ParametricStorageTypeImpl;
  if (a8)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      v32 = operator new(0x38uLL);
      *v32 = 0u;
      v32[1] = 0u;
      v32[2] = 0u;
      *(v32 + 6) = 0;
      *(a2 + 256) = v32;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v31 = *(a2 + 256);
    }

    *(v31 + 16) = a8;
  }

  if (a9)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v27);
    v34 = *(a2 + 256);
    if (!v34)
    {
      v35 = operator new(0x38uLL);
      *v35 = 0u;
      v35[1] = 0u;
      v35[2] = 0u;
      *(v35 + 6) = 0;
      *(a2 + 256) = v35;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v34 = *(a2 + 256);
    }

    *v34 = UnitAttr;
  }

  if (a10)
  {
    v36 = mlir::Builder::getUnitAttr(a1, v27);
    v37 = *(a2 + 256);
    if (!v37)
    {
      v38 = operator new(0x38uLL);
      *v38 = 0u;
      v38[1] = 0u;
      v38[2] = 0u;
      *(v38 + 6) = 0;
      *(a2 + 256) = v38;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolL2NormOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolL2NormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v37 = *(a2 + 256);
    }

    *(v37 + 24) = v36;
  }

  __src = v54;
  v53 = 0x200000000;
  v39 = *a1;
  v40 = *a2;
  mlir::ValueRange::ValueRange(&v56, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v43 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v55, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolL2NormOp::inferReturnTypes(v39, v40, 1, v56, p_src, Dictionary, v43, v44, v55, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v45 = __src;
  v46 = v53;
  v47 = *(a2 + 72);
  v48 = v47 + v53;
  if (v48 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v48, 8);
    LODWORD(v47) = *(a2 + 72);
  }

  if (v46)
  {
    memcpy((*(a2 + 64) + 8 * v47), v45, 8 * v46);
    LODWORD(v47) = *(a2 + 72);
  }

  *(a2 + 72) = v47 + v46;
  if (__src != v54)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PoolL2NormOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.pooling_l2_norm", 19, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A4E0;
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

unint64_t mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(mlir::mps::PoolMaxGradientOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 136);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 152);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 136);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

BOOL mlir::mps::PoolMaxGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v97 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v81 = v6;
  if (!v6)
  {
    a3(&v85, a4);
    if (v85)
    {
      LODWORD(v82) = 3;
      v83 = "expected DictionaryAttr to set properties";
      v84 = 41;
      v26 = &v82;
      v27 = v87;
      if (v88 >= v89)
      {
        if (v87 <= &v82 && v87 + 24 * v88 > &v82)
        {
          v74 = &v82 - v87;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
          v27 = v87;
          v26 = (v87 + v74);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
          v26 = &v82;
          v27 = v87;
        }
      }

      v28 = &v27[24 * v88];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v88;
      if (v85)
      {
        mlir::InFlightDiagnostic::report(&v85);
      }
    }

    if (v96 != 1)
    {
      return 0;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v94;
      v32 = __p;
      if (v94 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v94 = v30;
      operator delete(v32);
    }

    v21 = v91;
    if (!v91)
    {
      goto LABEL_77;
    }

    v33 = v92;
    v23 = v91;
    if (v92 == v91)
    {
LABEL_76:
      v92 = v21;
      operator delete(v23);
LABEL_77:
      if (v87 != v90)
      {
        free(v87);
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
    goto LABEL_75;
  }

  v98.var0 = "ceil_mode";
  v98.var1 = 9;
  v8 = mlir::DictionaryAttr::get(&v81, v98);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v85, a4);
      if (v85)
      {
        LODWORD(v82) = 3;
        v84 = 54;
        v10 = &v82;
        v11 = v87;
        if (v88 >= v89)
        {
          if (v87 <= &v82 && v87 + 24 * v88 > &v82)
          {
            v75 = &v82 - v87;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v11 = v87;
            v10 = (v87 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v10 = &v82;
            v11 = v87;
          }
        }

        v12 = &v11[24 * v88];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v88;
        if (v85)
        {
          v14 = &v82;
          mlir::DiagnosticArgument::DiagnosticArgument(&v82, v9);
          v15 = v87;
          if (v88 >= v89)
          {
            if (v87 <= &v82 && v87 + 24 * v88 > &v82)
            {
              v76 = &v82 - v87;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v15 = v87;
              v14 = (v87 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v14 = &v82;
              v15 = v87;
            }
          }

          v16 = &v15[24 * v88];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v88;
          if (v85)
          {
            mlir::InFlightDiagnostic::report(&v85);
          }
        }
      }

      if ((v96 & 1) == 0)
      {
        return 0;
      }

      if (v95 != &v96)
      {
        free(v95);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v94;
        v20 = __p;
        if (v94 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v94 = v18;
        operator delete(v20);
      }

      v21 = v91;
      if (!v91)
      {
        goto LABEL_77;
      }

      v22 = v92;
      v23 = v91;
      if (v92 == v91)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v99.var0 = "dilation_rates";
  v99.var1 = 14;
  v36 = mlir::DictionaryAttr::get(&v81, v99);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v85, a4);
    if (v85)
    {
      LODWORD(v82) = 3;
      v84 = 59;
      v42 = &v82;
      v43 = v87;
      if (v88 >= v89)
      {
        if (v87 <= &v82 && v87 + 24 * v88 > &v82)
        {
          v77 = &v82 - v87;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
          v43 = v87;
          v42 = (v87 + v77);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
          v42 = &v82;
          v43 = v87;
        }
      }

      v44 = &v43[24 * v88];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      ++v88;
      if (v85)
      {
        v46 = &v82;
        mlir::DiagnosticArgument::DiagnosticArgument(&v82, v37);
        v47 = v87;
        if (v88 >= v89)
        {
          if (v87 <= &v82 && v87 + 24 * v88 > &v82)
          {
            v79 = &v82 - v87;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v47 = v87;
            v46 = (v87 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v46 = &v82;
            v47 = v87;
          }
        }

        v48 = &v47[24 * v88];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        ++v88;
        if (v85)
        {
          mlir::InFlightDiagnostic::report(&v85);
        }
      }
    }

    if ((v96 & 1) == 0)
    {
      return 0;
    }

    if (v95 != &v96)
    {
      free(v95);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v94;
      v52 = __p;
      if (v94 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v94 = v50;
      operator delete(v52);
    }

    v21 = v91;
    if (!v91)
    {
      goto LABEL_77;
    }

    v53 = v92;
    v23 = v91;
    if (v92 == v91)
    {
      goto LABEL_76;
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
LABEL_75:
    v23 = v91;
    goto LABEL_76;
  }

LABEL_49:
  v100.var0 = "explicit_padding";
  v100.var1 = 16;
  v38 = mlir::DictionaryAttr::get(&v81, v100);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v85, a4);
      if (v85)
      {
        LODWORD(v82) = 3;
        v84 = 61;
        v56 = &v82;
        v57 = v87;
        if (v88 >= v89)
        {
          if (v87 <= &v82 && v87 + 24 * v88 > &v82)
          {
            v78 = &v82 - v87;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v57 = v87;
            v56 = (v87 + v78);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
            v56 = &v82;
            v57 = v87;
          }
        }

        v58 = &v57[24 * v88];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v88;
        if (v85)
        {
          v60 = &v82;
          mlir::DiagnosticArgument::DiagnosticArgument(&v82, v39);
          v61 = v87;
          if (v88 >= v89)
          {
            if (v87 <= &v82 && v87 + 24 * v88 > &v82)
            {
              v80 = &v82 - v87;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v61 = v87;
              v60 = (v87 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v90, v88 + 1, 24);
              v60 = &v82;
              v61 = v87;
            }
          }

          v62 = &v61[24 * v88];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v88;
          if (v85)
          {
            mlir::InFlightDiagnostic::report(&v85);
          }
        }
      }

      if (v96 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v86);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v101.var0 = "include_zero_pad";
  v101.var1 = 16;
  v40 = mlir::DictionaryAttr::get(&v81, v101);
  v82 = v40;
  if (v40)
  {
    if (*(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v85, a4);
LABEL_112:
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v41, &v82);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v85);
      return 0;
    }

    a1[3] = v40;
  }

  v102.var0 = "indices_mode";
  v102.var1 = 12;
  v64 = mlir::DictionaryAttr::get(&v81, v102);
  v82 = v64;
  if (v64)
  {
    if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
    {
      a3(&v85, a4);
LABEL_91:
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v85, v65);
      goto LABEL_112;
    }

    a1[4] = v64;
  }

  v103.var0 = "indices_result_type";
  v103.var1 = 19;
  v66 = mlir::DictionaryAttr::get(&v81, v103);
  v82 = v66;
  if (v66)
  {
    if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      a3(&v85, a4);
      goto LABEL_112;
    }

    a1[5] = v66;
  }

  v104.var0 = "padding_style";
  v104.var1 = 13;
  v67 = mlir::DictionaryAttr::get(&v81, v104);
  v82 = v67;
  if (v67)
  {
    if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
    {
      a3(&v85, a4);
      goto LABEL_112;
    }

    a1[6] = v67;
  }

  v105.var0 = "strides";
  v105.var1 = 7;
  v68 = mlir::DictionaryAttr::get(&v81, v105);
  v82 = v68;
  if (v68)
  {
    v69 = v68;
    if (!mlir::DenseIntElementsAttr::classof(v68))
    {
      a3(&v85, a4);
      goto LABEL_112;
    }

    a1[7] = v69;
  }

  v106.var0 = "window_sizes";
  v106.var1 = 12;
  v70 = mlir::DictionaryAttr::get(&v81, v106);
  v82 = v70;
  if (v70)
  {
    v71 = v70;
    if (!mlir::DenseIntElementsAttr::classof(v70))
    {
      a3(&v85, a4);
      goto LABEL_91;
    }

    a1[8] = v71;
  }

  v107.var0 = "operandSegmentSizes";
  v107.var1 = 19;
  v72 = mlir::DictionaryAttr::get(&v81, v107);
  if (!v72)
  {
    v108.var0 = "operand_segment_sizes";
    v108.var1 = 21;
    v72 = mlir::DictionaryAttr::get(&v81, v108);
    if (!v72)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 9, 4, v72, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::PoolMaxGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v81[6] = *MEMORY[0x1E69E9840];
  v78 = a1;
  v79 = v81;
  v80 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v78, "ceil_mode", 9, *a2);
    v6 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v60 = NamedAttr;
      v61 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v5 = v61;
      NamedAttr = v60;
      v6 = v80;
    }

    v7 = (v79 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v80) = v80 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v78, "dilation_rates", 14, v8);
    v11 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v62 = v9;
      v63 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v10 = v63;
      v9 = v62;
      v11 = v80;
    }

    v12 = (v79 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v80) = v80 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v78, "explicit_padding", 16, v13);
    v16 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v64 = v14;
      v65 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v15 = v65;
      v14 = v64;
      v16 = v80;
    }

    v17 = (v79 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v80) = v80 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v78, "include_zero_pad", 16, v18);
    v21 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v66 = v19;
      v67 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v20 = v67;
      v19 = v66;
      v21 = v80;
    }

    v22 = (v79 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    LODWORD(v80) = v80 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v78, "indices_mode", 12, v23);
    v26 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v68 = v24;
      v69 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v25 = v69;
      v24 = v68;
      v26 = v80;
    }

    v27 = (v79 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    LODWORD(v80) = v80 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v78, "indices_result_type", 19, v28);
    v31 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v70 = v29;
      v71 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v30 = v71;
      v29 = v70;
      v31 = v80;
    }

    v32 = (v79 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    LODWORD(v80) = v80 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v78, "padding_style", 13, v33);
    v36 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v72 = v34;
      v73 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v35 = v73;
      v34 = v72;
      v36 = v80;
    }

    v37 = (v79 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    LODWORD(v80) = v80 + 1;
  }

  v38 = a2[7];
  if (v38)
  {
    v39 = mlir::Builder::getNamedAttr(&v78, "strides", 7, v38);
    v41 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v74 = v39;
      v75 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v40 = v75;
      v39 = v74;
      v41 = v80;
    }

    v42 = (v79 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    LODWORD(v80) = v80 + 1;
  }

  v43 = a2[8];
  if (v43)
  {
    v44 = mlir::Builder::getNamedAttr(&v78, "window_sizes", 12, v43);
    v46 = v80;
    if (v80 >= HIDWORD(v80))
    {
      v76 = v44;
      v77 = v45;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
      v45 = v77;
      v44 = v76;
      v46 = v80;
    }

    v47 = (v79 + 16 * v46);
    *v47 = v44;
    v47[1] = v45;
    LODWORD(v80) = v80 + 1;
  }

  v48 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 9, 4);
  v49 = mlir::Builder::getNamedAttr(&v78, "operandSegmentSizes", 19, v48);
  v51 = v80;
  if (v80 >= HIDWORD(v80))
  {
    v58 = v49;
    v59 = v50;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, v80 + 1, 16);
    v50 = v59;
    v49 = v58;
    v51 = v80;
  }

  v52 = (v79 + 16 * v51);
  *v52 = v49;
  v52[1] = v50;
  v53 = __CFADD__(v80, 1);
  v54 = (v80 + 1);
  LODWORD(v80) = v80 + 1;
  if (v53)
  {
    DictionaryAttr = 0;
    v56 = v79;
    if (v79 == v81)
    {
      return DictionaryAttr;
    }

    goto LABEL_44;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v78, v79, v54);
  v56 = v79;
  if (v79 != v81)
  {
LABEL_44:
    free(v56);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::PoolMaxGradientOp::computePropertiesHash(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = v7 ^ (v8 >> 47) ^ v8;
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v12 = v10 ^ (v11 >> 47) ^ v11;
  v13 = a1[5];
  v14 = HIDWORD(a1[4]);
  v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v38 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v18 = a1[7];
  v19 = HIDWORD(a1[6]);
  v20 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v19);
  v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) ^ ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 47));
  v21 = HIDWORD(v18);
  v22 = 0x9DDFEA08EB382D69 * ((8 * v18 - 0xAE502812AA7333) ^ HIDWORD(v18));
  v36 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  v23 = a1[9];
  v24 = HIDWORD(a1[8]);
  v25 = 0x9DDFEA08EB382D69 * ((8 * a1[8] - 0xAE502812AA7333) ^ v24);
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47));
  v27 = 0x9DDFEA08EB382D69 * v12;
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) ^ ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) >> 47));
  v28 = a1[10];
  v29 = __ROR8__(v28 + 16, 16);
  v34 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)))) ^ ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)))) >> 47))) ^ v28;
  memset(v44, 0, sizeof(v44));
  memset(v43, 0, sizeof(v43));
  v45 = 0;
  v46 = 0xFF51AFD7ED558CCDLL;
  v30 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
  v42[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v42[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  v40 = 0;
  v31 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v42, &v40, v43, v44, v26);
  v41 = v40;
  v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v42, &v41, v31, v44, v30);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v42, v41, v32, v44, &v39, &v38, &v37, &v36, &v35, &v34);
}

uint64_t mlir::mps::PoolMaxGradientOp::getInherentAttr(uint64_t *a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 13)
  {
    if (__n <= 18)
    {
      if (__n == 14)
      {
        if (!memcmp(__s1, "dilation_rates", 0xEuLL))
        {
          return a2[1];
        }

        return 0;
      }

      if (__n == 16)
      {
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[2];
        }

        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          return a2[3];
        }
      }

      return 0;
    }

    if (__n == 19)
    {
      if (!memcmp(__s1, "indices_result_type", 0x13uLL))
      {
        return a2[5];
      }

      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 9, 4);
  }

  if (__n <= 11)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[7];
      }
    }

    else if (__n == 9 && *__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 12)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (memcmp(__s1, "indices_mode", 0xCuLL))
  {
    if (!memcmp(__s1, "window_sizes", 0xCuLL))
    {
      return a2[8];
    }

    return 0;
  }

  return a2[4];
}

uint64_t mlir::mps::PoolMaxGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 13)
  {
    if (a3 > 18)
    {
      if (a3 == 19)
      {
        result = memcmp(__s1, "indices_result_type", 0x13uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v19 = a4;
            }

            else
            {
              v19 = 0;
            }

            v5[5] = v19;
          }

          else
          {
            v5[5] = 0;
          }

          return result;
        }

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
        v16 = result ? a4 : 0;
        v22 = v16;
        if (v16)
        {
          result = mlir::AffineBinaryOpExpr::getLHS(&v22);
          if (result == 4)
          {
            result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v22);
            if (v17)
            {
              return memmove(v5 + 9, result, 4 * v17);
            }
          }
        }
      }
    }

    else if (a3 == 14)
    {
      result = memcmp(__s1, "dilation_rates", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[1] = v12;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 16)
    {
      result = memcmp(__s1, "explicit_padding", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[3] = v9;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v21 = a4;
        }

        else
        {
          v21 = 0;
        }

        v5[2] = v21;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 > 11)
  {
    if (a3 == 12)
    {
      result = memcmp(__s1, "indices_mode", 0xCuLL);
      if (result)
      {
        result = memcmp(__s1, "window_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            v5[8] = v14;
          }

          else
          {
            v5[8] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
        {
          v18 = a4;
        }

        else
        {
          v18 = 0;
        }

        v5[4] = v18;
      }

      else
      {
        v5[4] = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "padding_style", 0xDuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[6] = v10;
        }

        else
        {
          v5[6] = 0;
        }
      }
    }
  }

  else if (a3 == 7)
  {
    result = memcmp(__s1, "strides", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }

        v5[7] = v11;
      }

      else
      {
        v5[7] = 0;
      }
    }
  }

  else if (a3 == 9 && *__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v20 = a4;
      }

      else
      {
        v20 = 0;
      }

      *result = v20;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::PoolMaxGradientOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 14, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 16, v7);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "include_zero_pad", 16, v8);
  }

  v9 = a2[4];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "indices_mode", 12, v9);
  }

  v10 = a2[5];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "indices_result_type", 19, v10);
  }

  v11 = a2[6];
  if (v11)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 13, v11);
  }

  v12 = a2[7];
  if (v12)
  {
    mlir::NamedAttrList::append(a3, "strides", 7, v12);
  }

  v13 = a2[8];
  if (v13)
  {
    mlir::NamedAttrList::append(a3, "window_sizes", 12, v13);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 9, 4);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v14);
}

BOOL mlir::mps::PoolMaxGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "ceil_mode", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 0xE, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v10, "explicit_padding", 0x10, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "include_zero_pad", 0x10, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v12, "indices_mode", 0xC, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v13, "indices_result_type", 0x13, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v14, "padding_style", 0xD, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v15, "strides", 7, a3, a4) & 1) != 0)
                {
                  v16 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 64));
                  if (!v16 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v16, "window_sizes", 0xC, a3, a4) & 1) != 0)
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: max pool return indices mode";
        v29 = 60;
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

uint64_t mlir::mps::PoolMaxGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v12[26] = *MEMORY[0x1E69E9840];
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
    v5 = operator new(0x58uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    *(v5 + 10) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v9;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v9;
    {
      mlir::mps::PoolMaxGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PoolIndicesModeAttr>(a1, v3 + 4) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 5))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v11 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v11))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v11) >= 5)
    {
      v9[0] = "size mismatch for operand/result_segment_size";
      v10 = 259;
      (*(*a1 + 16))(v12, a1, v9);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
      return 0;
    }

    v6 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v11);
    if (v7)
    {
      memmove(v3 + 9, v6, 4 * v7);
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 7) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 8))
  {
    v9[0] = a1;
    v9[1] = (v3 + 9);
    return mlir::mps::PoolMaxGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v9) & 1;
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PoolIndicesModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PoolIndicesModeAttr]";
  v38 = 80;
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

uint64_t mlir::mps::PoolMaxGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 4);
}

uint64_t mlir::mps::PoolMaxGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 1));
  (*(*a2 + 24))(a2, *(v5 + 2));
  (*(*a2 + 24))(a2, *(v5 + 3));
  (*(*a2 + 24))(a2, *(v5 + 4));
  (*(*a2 + 24))(a2, *(v5 + 5));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v5 + 9, 4);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 24))(a2, *(v5 + 6));
  (*(*a2 + 24))(a2, *(v5 + 7));
  (*(*a2 + 16))(a2, *(v5 + 8));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 18, 4);
  }

  return result;
}

uint64_t mlir::mps::PoolMaxGradientOp::getIndicesResultType(mlir::mps::PoolMaxGradientOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
  if (v2)
  {
    return mlir::AffineMapAttr::getValue(&v2);
  }

  else
  {
    return 0;
  }
}

void mlir::mps::PoolMaxGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, char a12, char a13, unsigned int a14, uint64_t a15)
{
  v17 = a5;
  v80 = *MEMORY[0x1E69E9840];
  v69 = a4;
  v70 = a3;
  v67 = a6;
  v68 = a5;
  mlir::OperationState::addOperands(a2, &v70, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v69, 1uLL);
    v17 = v68;
  }

  if (v17)
  {
    mlir::OperationState::addOperands(a2, &v68, 1uLL);
  }

  if (v67)
  {
    mlir::OperationState::addOperands(a2, &v67, 1uLL);
    v21 = v67 != 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v69 != 0;
  v23 = v68 != 0;
  v24 = *(a2 + 256);
  if (v24)
  {
    v24[18] = 1;
    v24[19] = v22;
    v24[20] = v23;
    v24[21] = v21;
    v25 = *(a2 + 256);
    if (v25)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30 = operator new(0x58uLL);
    *v30 = 0u;
    v30[1] = 0u;
    v30[2] = 0u;
    v30[3] = 0u;
    v30[4] = 0u;
    *(v30 + 10) = 0;
    *(a2 + 256) = v30;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolMaxGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v31 = *(a2 + 256);
    v31[18] = 1;
    v31[19] = v22;
    v31[20] = v23;
    v31[21] = v21;
    v25 = *(a2 + 256);
    if (v25)
    {
LABEL_10:
      v26 = a10;
      *(v25 + 64) = a7;
      v27 = *(a2 + 256);
      if (v27)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  v32 = operator new(0x58uLL);
  *v32 = 0u;
  v32[1] = 0u;
  v32[2] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  *(v32 + 10) = 0;
  *(a2 + 256) = v32;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::PoolMaxGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v26 = a10;
  *(*(a2 + 256) + 64) = a7;
  v27 = *(a2 + 256);
  if (v27)
  {
LABEL_11:
    v28 = a9;
    *(v27 + 56) = a8;
    v29 = *(a2 + 256);
    if (v29)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  v33 = operator new(0x58uLL);
  *v33 = 0u;
  v33[1] = 0u;
  v33[2] = 0u;
  v33[3] = 0u;
  v33[4] = 0u;
  *(v33 + 10) = 0;
  *(a2 + 256) = v33;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::PoolMaxGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v28 = a9;
  *(*(a2 + 256) + 56) = a8;
  v29 = *(a2 + 256);
  if (!v29)
  {
LABEL_22:
    v34 = operator new(0x58uLL);
    *v34 = 0u;
    v34[1] = 0u;
    v34[2] = 0u;
    v34[3] = 0u;
    v34[4] = 0u;
    *(v34 + 10) = 0;
    *(a2 + 256) = v34;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolMaxGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v29 = *(a2 + 256);
  }

LABEL_25:
  *(v29 + 8) = v28;
  v35 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v76 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v77 = v35;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v74 = &v76;
  v72 = v26;
  v37 = 0x9DDFEA08EB382D69 * (((8 * v26) | 4) ^ v26 ^ 0xFF51AFD7ED558CCDLL);
  v38 = 0x9DDFEA08EB382D69 * (v26 ^ 0xFF51AFD7ED558CCDLL ^ (v37 >> 47) ^ v37);
  v71 = &v72;
  v78 = &v72;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v38 >> 47) ^ v38), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v71, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
  v41 = *(a2 + 256);
  if (!v41)
  {
    v42 = operator new(0x58uLL);
    *v42 = 0u;
    v42[1] = 0u;
    v42[2] = 0u;
    v42[3] = 0u;
    v42[4] = 0u;
    *(v42 + 10) = 0;
    *(a2 + 256) = v42;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolMaxGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v41 = *(a2 + 256);
  }

  *(v41 + 48) = ParametricStorageTypeImpl;
  if (a11)
  {
    v43 = *(a2 + 256);
    if (!v43)
    {
      v44 = operator new(0x58uLL);
      *v44 = 0u;
      v44[1] = 0u;
      v44[2] = 0u;
      v44[3] = 0u;
      v44[4] = 0u;
      *(v44 + 10) = 0;
      *(a2 + 256) = v44;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolMaxGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v43 = *(a2 + 256);
    }

    *(v43 + 16) = a11;
  }

  if (a12)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v39);
    v46 = *(a2 + 256);
    if (!v46)
    {
      v47 = operator new(0x58uLL);
      *v47 = 0u;
      v47[1] = 0u;
      v47[2] = 0u;
      v47[3] = 0u;
      v47[4] = 0u;
      *(v47 + 10) = 0;
      *(a2 + 256) = v47;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolMaxGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v46 = *(a2 + 256);
    }

    *v46 = UnitAttr;
  }

  if (a13)
  {
    v48 = mlir::Builder::getUnitAttr(a1, v39);
    v49 = *(a2 + 256);
    if (!v49)
    {
      v50 = operator new(0x58uLL);
      *v50 = 0u;
      v50[1] = 0u;
      v50[2] = 0u;
      v50[3] = 0u;
      v50[4] = 0u;
      *(v50 + 10) = 0;
      *(a2 + 256) = v50;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolMaxGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v49 = *(a2 + 256);
    }

    *(v49 + 24) = v48;
  }

  v51 = *a1;
  v52 = mlir::MLIRContext::getAttributeUniquer(v51);
  v76 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v77 = v51;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v74 = &v76;
  v72 = a14;
  v53 = 0x9DDFEA08EB382D69 * (((8 * a14) | 4) ^ a14 ^ 0xFF51AFD7ED558CCDLL);
  v54 = 0x9DDFEA08EB382D69 * (a14 ^ 0xFF51AFD7ED558CCDLL ^ (v53 >> 47) ^ v53);
  v71 = &v72;
  v78 = &v72;
  p_src = &__src;
  v55 = mlir::StorageUniquer::getParametricStorageTypeImpl(v52, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v54 >> 47) ^ v54), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v71, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
  v56 = *(a2 + 256);
  if (!v56)
  {
    v57 = operator new(0x58uLL);
    *v57 = 0u;
    v57[1] = 0u;
    v57[2] = 0u;
    v57[3] = 0u;
    v57[4] = 0u;
    *(v57 + 10) = 0;
    *(a2 + 256) = v57;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolMaxGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v56 = *(a2 + 256);
  }

  *(v56 + 32) = v55;
  if (a15)
  {
    v58 = *(a2 + 256);
    if (!v58)
    {
      v59 = operator new(0x58uLL);
      *v59 = 0u;
      v59[1] = 0u;
      v59[2] = 0u;
      v59[3] = 0u;
      v59[4] = 0u;
      *(v59 + 10) = 0;
      *(a2 + 256) = v59;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolMaxGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v58 = *(a2 + 256);
    }

    *(v58 + 40) = a15;
  }

  __src = v75;
  v74 = 0x200000000;
  mlir::ValueRange::ValueRange(&v78, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v61 = mlir::ValueRange::ValueRange(&v76, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v61, v62, v78, p_src, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v63 = __src;
  v64 = v74;
  v65 = *(a2 + 72);
  v66 = v65 + v74;
  if (v66 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v66, 8);
    LODWORD(v65) = *(a2 + 72);
  }

  if (v64)
  {
    memcpy((*(a2 + 64) + 8 * v65), v63, 8 * v64);
    LODWORD(v65) = *(a2 + 72);
  }

  *(a2 + 72) = v65 + v64;
  if (__src != v75)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::PoolMaxGradientOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  *&v19 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v19);
  v14 = result;
  if (a2[7])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = 4;
    IntegerType = mlir::Builder::getIntegerType(&v14, 64, 0);
    v15 = mlir::RankedTensorType::get(&v21, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(&v15);
    v19 = xmmword_1E098C990;
    v20 = unk_1E098C9A0;
    result = mlir::DenseElementsAttr::getFromRawBuffer(v5, v6, &v19, 32, 8, 1, 0);
    a2[7] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[6])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v21 = 4;
  v7 = mlir::Builder::getIntegerType(&v14, 64, 0);
  v15 = mlir::RankedTensorType::get(&v21, 1, v7, 0);
  v8 = mlir::TensorType::operator mlir::ShapedType(&v15);
  v19 = xmmword_1E098C990;
  v20 = unk_1E098C9A0;
  result = mlir::DenseElementsAttr::getFromRawBuffer(v8, v9, &v19, 32, 8, 1, 0);
  a2[1] = result;
  if (a2[6])
  {
LABEL_4:
    if (a2[4])
    {
      return result;
    }

LABEL_9:
    v12 = v14;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v14);
    v21 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
    v22 = v12;
    *&v19 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    *(&v19 + 1) = &v21;
    v18 = 0;
    v15 = &v18;
    v16 = &v19;
    v17 = &v18;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v15);
    a2[4] = result;
    return result;
  }

LABEL_8:
  v10 = v14;
  v11 = mlir::MLIRContext::getAttributeUniquer(v14);
  v21 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v22 = v10;
  *&v19 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v19 + 1) = &v21;
  v18 = 2;
  v15 = &v18;
  v16 = &v19;
  v17 = &v18;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v11, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v15);
  a2[6] = result;
  if (!a2[4])
  {
    goto LABEL_9;
  }

  return result;
}