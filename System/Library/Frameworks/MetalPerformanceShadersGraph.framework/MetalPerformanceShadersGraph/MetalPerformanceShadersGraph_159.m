BOOL mlir::mps::StridedSliceOp::verifyInvariantsImpl(mlir::mps::StridedSliceOp *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = (v1 + 64);
  v2 = v4;
  if (v4)
  {
    v5 = v3[2];
    if (v5)
    {
      v6 = v3[3];
      if (v6)
      {
        v8 = v3[1];
        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v2, "begin_mask", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v5, "end_mask", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v6, "shrink_axis_mask", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "end_is_size", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0)
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

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
      }

      v33[0] = "requires attribute 'shrink_axis_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v41;
          v28 = __p;
          if (v41 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v41 = v26;
          operator delete(v28);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_67;
        }

        v29 = v39;
        v17 = v38;
        if (v39 == v38)
        {
LABEL_66:
          v39 = v15;
          operator delete(v17);
LABEL_67:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v11;
        }

        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v29 != v15);
LABEL_65:
        v17 = v38;
        goto LABEL_66;
      }
    }

    else
    {
      v33[0] = "requires attribute 'end_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v41;
          v22 = __p;
          if (v41 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v41 = v20;
          operator delete(v22);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_67;
        }

        v23 = v39;
        v17 = v38;
        if (v39 == v38)
        {
          goto LABEL_66;
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
        goto LABEL_65;
      }
    }
  }

  else
  {
    v33[0] = "requires attribute 'begin_mask'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v41;
        v14 = __p;
        if (v41 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v41 = v12;
        operator delete(v14);
      }

      v15 = v38;
      if (!v38)
      {
        goto LABEL_67;
      }

      v16 = v39;
      v17 = v38;
      if (v39 == v38)
      {
        goto LABEL_66;
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
      goto LABEL_65;
    }
  }

  return v11;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::StridedSliceOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.strided_slice", 17, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D0A0;
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

uint64_t mlir::mps::StridedSliceUpdateOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x20uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::StridedSliceUpdateOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2) & 1) != 0)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3) & 1;
  }

  return 0;
}

void mlir::mps::StridedSliceUpdateOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, char a11)
{
  v51[2] = *MEMORY[0x1E69E9840];
  v43 = a4;
  v44 = a3;
  v41 = a6;
  v42 = a5;
  v40 = a7;
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    v17 = operator new(0x20uLL);
    *v17 = 0u;
    v17[1] = 0u;
    *(a2 + 256) = v17;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::StridedSliceUpdateOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v16 = *(a2 + 256);
  }

  *v16 = IntegerAttr;
  v18 = mlir::Builder::getIntegerType(a1, 32, 0);
  v19 = mlir::Builder::getIntegerAttr(a1, v18, a9);
  v20 = *(a2 + 256);
  if (!v20)
  {
    v21 = operator new(0x20uLL);
    *v21 = 0u;
    v21[1] = 0u;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::StridedSliceUpdateOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v20 = *(a2 + 256);
  }

  *(v20 + 16) = v19;
  v22 = mlir::Builder::getIntegerType(a1, 32, 0);
  v23 = mlir::Builder::getIntegerAttr(a1, v22, a10);
  v25 = v23;
  v26 = *(a2 + 256);
  if (v26)
  {
    *(v26 + 24) = v23;
    if (!a11)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v27 = operator new(0x20uLL);
  *v27 = 0u;
  v27[1] = 0u;
  *(a2 + 256) = v27;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::StridedSliceUpdateOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 24) = v25;
  if (a11)
  {
LABEL_15:
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    v29 = *(a2 + 256);
    if (!v29)
    {
      v30 = operator new(0x20uLL);
      *v30 = 0u;
      v30[1] = 0u;
      *(a2 + 256) = v30;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::StridedSliceUpdateOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v29 = *(a2 + 256);
    }

    *(v29 + 8) = UnitAttr;
  }

LABEL_20:
  __src = v50;
  v49 = 0x200000000;
  v31 = *a2;
  mlir::ValueRange::ValueRange(&v46, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v45, *(a2 + 224), *(a2 + 232));
  v51[0] = v46;
  v51[1] = v47;
  if (v47)
  {
    v33 = *(mlir::ValueRange::dereference_iterator(v51, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v34 = v49;
    if (v49 >= HIDWORD(v49))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v50, v49 + 1, 8);
      v34 = v49;
    }

    *(__src + v34) = v33;
    v35 = v49 + 1;
    LODWORD(v49) = v35;
    v36 = __src;
    v37 = *(a2 + 72);
    v38 = v37 + v35;
    if (v38 > *(a2 + 76))
    {
LABEL_24:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v38, 8);
      LODWORD(v37) = *(a2 + 72);
    }
  }

  else
  {
    v39.var0.var0 = 1;
    if (!mlir::emitOptionalError<char const(&)[66]>(v31, v39, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v35 = v49;
    v36 = __src;
    v37 = *(a2 + 72);
    v38 = v37 + v49;
    if (v38 > *(a2 + 76))
    {
      goto LABEL_24;
    }
  }

  if (v35)
  {
    memcpy((*(a2 + 64) + 8 * v37), v36, 8 * v35);
    LODWORD(v37) = *(a2 + 72);
  }

  *(a2 + 72) = v37 + v35;
  if (__src != v50)
  {
    free(__src);
  }
}

BOOL mlir::mps::StridedSliceUpdateOp::verifyInvariantsImpl(mlir::mps::StridedSliceUpdateOp *this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = (v1 + 64);
  v2 = v4;
  if (v4)
  {
    v5 = v3[2];
    if (v5)
    {
      v6 = v3[3];
      if (v6)
      {
        v8 = v3[1];
        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v2, "begin_mask", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v5, "end_mask", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v6, "shrink_axis_mask", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "end_is_size", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0)
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

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
      }

      v33[0] = "requires attribute 'shrink_axis_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v41;
          v28 = __p;
          if (v41 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v41 = v26;
          operator delete(v28);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v29 = v39;
        v17 = v38;
        if (v39 == v38)
        {
LABEL_67:
          v39 = v15;
          operator delete(v17);
LABEL_68:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v11;
        }

        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v29 != v15);
LABEL_66:
        v17 = v38;
        goto LABEL_67;
      }
    }

    else
    {
      v33[0] = "requires attribute 'end_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v41;
          v22 = __p;
          if (v41 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v41 = v20;
          operator delete(v22);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v23 = v39;
        v17 = v38;
        if (v39 == v38)
        {
          goto LABEL_67;
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
        goto LABEL_66;
      }
    }
  }

  else
  {
    v33[0] = "requires attribute 'begin_mask'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v41;
        v14 = __p;
        if (v41 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v41 = v12;
        operator delete(v14);
      }

      v15 = v38;
      if (!v38)
      {
        goto LABEL_68;
      }

      v16 = v39;
      v17 = v38;
      if (v39 == v38)
      {
        goto LABEL_67;
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
      goto LABEL_66;
    }
  }

  return v11;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::StridedSliceUpdateOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.strided_slice_update", 24, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D140;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::SubtractOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.subtract", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D1E0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::SwishOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.swish", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D280;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::TanOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.tan", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D320;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::TanhOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.tanh", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D3C0;
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

void mlir::mps::TileGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a3;
  v13 = a5;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  __src = v20;
  v19 = 0x200000000;
  mlir::ValueRange::ValueRange(&v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v16, *(a2 + 224), *(a2 + 232));
  v21 = v17;
  v7 = *(mlir::ValueRange::dereference_iterator(&v21, 0) + 8);
  v8 = mlir::ValueRange::dereference_iterator(&v21, 1);
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v9 = __src;
  v10 = v19;
  v11 = *(a2 + 72);
  v12 = v11 + v19;
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
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::TileGradientOp::verifyInvariantsImpl(mlir::mps::TileGradientOp *this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::TileGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.tile_gradient", 17, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D460;
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

void mlir::mps::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  __src = v24;
  v23 = 0x200000000;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v6 = mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::TileOp::inferReturnTypes(v6, v7, v8, v21[0], v21[1], v9, v10, v11, v16, v17, &__src) & 1) == 0)
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

void mlir::mps::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v28[2] = *MEMORY[0x1E69E9840];
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
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v28;
  v27 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = mlir::ValueRange::ValueRange(&v25, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::TileOp::inferReturnTypes(v13, v14, v15, a3, a4, v16, v17, v18, v23, v24, &__src) & 1) == 0)
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::TileOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.tile", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D500;
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

uint64_t mlir::mps::TopKGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "smallest";
  v56.var1 = 8;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 53;
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

uint64_t mlir::mps::TopKGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "smallest", 8, *a2);
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

BOOL mlir::mps::TopKGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::TopKGradientOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256));
}

void mlir::mps::TopKGradientOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v27 = a4;
  v28 = a3;
  v25 = a6;
  v26 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  if (a7)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v10);
    v12 = *(a2 + 256);
    if (!v12)
    {
      v13 = operator new(8uLL);
      *v13 = 0;
      *(a2 + 256) = v13;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::TopKGradientOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v12 = *(a2 + 256);
    }

    *v12 = UnitAttr;
  }

  __src = v33;
  v32 = 0x200000000;
  v14 = *a1;
  mlir::ValueRange::ValueRange(v30, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v29, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::TopKGradientOp::inferReturnTypes(v14, v18, v19, v30[0], v30[1], Dictionary, v17, v20, v29[0], v29[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v21 = __src;
  v22 = v32;
  v23 = *(a2 + 72);
  v24 = v23 + v32;
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
  if (__src != v33)
  {
    free(__src);
  }
}

uint64_t mlir::mps::TopKGradientOp::verifyInvariantsImpl(mlir::mps::TopKGradientOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "smallest", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::TopKGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.top_k_grad", 14, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D5A0;
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

BOOL mlir::mps::TopKOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::TopKOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256));
}

void mlir::mps::TopKOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v25 = a4;
  v26 = a3;
  v24 = a5;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  if (a6)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v9);
    v11 = *(a2 + 256);
    if (!v11)
    {
      v12 = operator new(8uLL);
      *v12 = 0;
      *(a2 + 256) = v12;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::TopKOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v11 = *(a2 + 256);
    }

    *v11 = UnitAttr;
  }

  __src = v31;
  v30 = 0x200000000;
  v13 = *a1;
  mlir::ValueRange::ValueRange(v28, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::TopKOp::inferReturnTypes(v13, v17, v18, v28[0], v28[1], Dictionary, v16, v19, v27[0], v27[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = __src;
  v21 = v30;
  v22 = *(a2 + 72);
  v23 = v22 + v30;
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
  if (__src != v31)
  {
    free(__src);
  }
}

uint64_t mlir::mps::TopKOp::verifyInvariantsImpl(mlir::mps::TopKOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v10 = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "smallest", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
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

  v7 = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 1);
  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(v8 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::TopKOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.top_k", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D640;
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

void mlir::mps::TransposeOp::build(uint64_t **a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v10 = a5;
  v11 = a4;
  v8 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int &>(a1, *a2, &v11) - 16;
  v9 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int &>(a1, *a2, &v10);
  mlir::mps::TransposeOp::build(a1, a2, a3, v8, v9 - 16);
}

void mlir::mps::TransposeOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v19 = a4;
  v20 = a3;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  __src = v25;
  v24 = 0x200000000;
  v7 = *a1;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::TransposeOp::inferReturnTypes(v7, v10, v11, v22[0], v22[1], Dictionary, v12, v13, v21[0], v21[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = __src;
  v15 = v24;
  v16 = *(a2 + 72);
  v17 = v16 + v24;
  if (v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v17, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v15);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::TransposeOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.transpose", 13, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D6E0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::TruncateOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.truncate", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D780;
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

uint64_t mlir::mps::TypeConstraintOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "type_constraint";
  v56.var1 = 15;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 60;
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

uint64_t mlir::mps::TypeConstraintOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "type_constraint", 15, *a2);
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

uint64_t mlir::mps::TypeConstraintOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::TypeConstraintOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::mps::TypeConstraintOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v8 = *(a2 + 256);
  if (v8)
  {
    *v8 = a5;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v9 + 1, 8);
      LODWORD(v9) = *(a2 + 72);
    }
  }

  else
  {
    v10 = operator new(8uLL);
    *v10 = 0;
    *(a2 + 256) = v10;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v13;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v12;
    {
      mlir::mps::TypeConstraintOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a5;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

void mlir::mps::TypeConstraintOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v7 = mlir::TypeAttr::get(a4);
  v8 = *(a2 + 256);
  if (!v8)
  {
    v9 = operator new(8uLL);
    *v9 = 0;
    *(a2 + 256) = v9;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::TypeConstraintOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v8 = *(a2 + 256);
  }

  *v8 = v7;
  __src = v26;
  v25 = 0x200000000;
  v10 = *a1;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::TypeConstraintOp::inferReturnTypes(v10, v14, v15, v23[0], v23[1], Dictionary, v13, v16, v22[0], v22[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v17 = __src;
  v18 = v25;
  v19 = *(a2 + 72);
  v20 = v19 + v25;
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
  if (__src != v26)
  {
    free(__src);
  }
}

BOOL mlir::mps::TypeConstraintOp::verifyInvariantsImpl(mlir::mps::TypeConstraintOp *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v16[0] = *this;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v1, "type_constraint", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
    {
      if (*(*this + 36))
      {
        v3 = *this - 16;
      }

      else
      {
        v3 = 0;
      }

      mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = "requires attribute 'type_constraint'";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v16);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
    if (v16[0])
    {
      mlir::InFlightDiagnostic::report(v16);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v22;
        v7 = __p;
        if (v22 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v22 = v5;
        operator delete(v7);
      }

      v8 = v19;
      if (v19)
      {
        v9 = v20;
        v10 = v19;
        if (v20 != v19)
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
          v10 = v19;
        }

        v20 = v8;
        operator delete(v10);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v4;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::TypeConstraintOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.type_constraint", 19, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D820;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::UnrealizedFoldOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.unrealized_fold", 19, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D8C0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::UpdateRandomStateOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.update_random_state", 23, a3, v10, a4, a5);
  *v11 = &unk_1F5B2D960;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::VariableFromTensorOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.variable_from_tensor", 24, a3, v10, a4, a5);
  *v11 = &unk_1F5B2DA00;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::XnorOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.xnor", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B2DAA0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::XorOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.xor", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B2DB40;
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

const char *llvm::getTypeName<mlir::mps::MPSDialectResourceBlobHandle>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::MPSDialectResourceBlobHandle]";
  v6 = 89;
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

uint64_t mlir::mps::anonymous namespace::inferElementWiseBinaryMathOpReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(uint64_t a1, mlir::Float32Type *this)
{
  v3 = mlir::Float32Type::get(this, this);
  v4 = mlir::UnrankedTensorType::get(v3);
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v7 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 8);
    v4 = v7;
    LODWORD(v5) = *(a1 + 8);
  }

  *(*a1 + 8 * v5) = v4;
  ++*(a1 + 8);
  return 1;
}

BOOL mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(mlir *a1, Location a2, char *a3, uint64_t *a4, char *a5, uint64_t *a6, const char *a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

uint64_t mlir::Diagnostic::append<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5, const char *a6)
{
  v12 = strlen(__s);
  v13 = *(a1 + 16);
  v27 = 3;
  v28 = __s;
  v29 = v12;
  v14 = *(a1 + 24);
  v15 = &v27;
  if (v14 >= *(a1 + 28))
  {
    if (v13 <= &v27 && v13 + 24 * v14 > &v27)
    {
      v25 = &v27 - v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v14 + 1, 24);
      v13 = *(a1 + 16);
      v15 = &v25[v13];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v14 + 1, 24);
      v13 = *(a1 + 16);
      v15 = &v27;
    }
  }

  v16 = v13 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  v18 = *a3;
  v19 = &v27;
  mlir::DiagnosticArgument::DiagnosticArgument(&v27, v18);
  v20 = *(a1 + 24);
  v21 = *(a1 + 16);
  if (v20 >= *(a1 + 28))
  {
    if (v21 <= &v27 && v21 + 24 * v20 > &v27)
    {
      v26 = &v27 - v21;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v20 + 1, 24);
      v21 = *(a1 + 16);
      v19 = &v26[v21];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v20 + 1, 24);
      v21 = *(a1 + 16);
      v19 = &v27;
    }
  }

  v22 = v21 + 24 * *(a1 + 24);
  v23 = *v19;
  *(v22 + 16) = *(v19 + 2);
  *v22 = v23;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[6],mlir::Type &,char const(&)[30]>(a1, a4, a5, a6);
}

uint64_t mlir::Diagnostic::append<char const(&)[6],mlir::Type &,char const(&)[30]>(uint64_t a1, char *__s, uint64_t *a3, const char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v9 + 32, v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  return mlir::Diagnostic::append<mlir::Type &,char const(&)[30]>(v9, a3, a4);
}

uint64_t mlir::Diagnostic::append<mlir::Type &,char const(&)[30]>(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = &v19;
  mlir::DiagnosticArgument::DiagnosticArgument(&v19, *a2);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7 >= *(a1 + 28))
  {
    if (v6 <= &v19 && v6 + 24 * v7 > &v19)
    {
      v17 = &v19 - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v7 + 1, 24);
      v6 = *(a1 + 16);
      v5 = &v17[v6];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v7 + 1, 24);
      v6 = *(a1 + 16);
      v5 = &v19;
    }
  }

  v8 = v6 + 24 * *(a1 + 24);
  v9 = *v5;
  *(v8 + 16) = *(v5 + 2);
  *v8 = v9;
  v10 = (*(a1 + 24) + 1);
  *(a1 + 24) = v10;
  v11 = strlen(a3);
  v19 = 3;
  v20 = a3;
  v21 = v11;
  v12 = *(a1 + 16);
  v13 = &v19;
  if (v10 >= *(a1 + 28))
  {
    if (v12 <= &v19 && v12 + 24 * v10 > &v19)
    {
      v18 = &v19 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v10 + 1, 24);
      v12 = *(a1 + 16);
      v13 = &v18[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v10 + 1, 24);
      v12 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v12 + 24 * *(a1 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::append<char const(&)[13],mlir::Type &,char const(&)[4],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5, char *a6, uint64_t *a7, const char *a8)
{
  v16 = strlen(__s);
  v17 = *(a1 + 16);
  v31 = 3;
  v32 = __s;
  v33 = v16;
  v18 = *(a1 + 24);
  v19 = &v31;
  if (v18 >= *(a1 + 28))
  {
    if (v17 <= &v31 && v17 + 24 * v18 > &v31)
    {
      v29 = &v31 - v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v18 + 1, 24);
      v17 = *(a1 + 16);
      v19 = &v29[v17];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v18 + 1, 24);
      v17 = *(a1 + 16);
      v19 = &v31;
    }
  }

  v20 = v17 + 24 * *(a1 + 24);
  v21 = *v19;
  *(v20 + 16) = *(v19 + 2);
  *v20 = v21;
  ++*(a1 + 24);
  v22 = *a3;
  v23 = &v31;
  mlir::DiagnosticArgument::DiagnosticArgument(&v31, v22);
  v24 = *(a1 + 24);
  v25 = *(a1 + 16);
  if (v24 >= *(a1 + 28))
  {
    if (v25 <= &v31 && v25 + 24 * v24 > &v31)
    {
      v30 = &v31 - v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v24 + 1, 24);
      v25 = *(a1 + 16);
      v23 = &v30[v25];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v24 + 1, 24);
      v25 = *(a1 + 16);
      v23 = &v31;
    }
  }

  v26 = v25 + 24 * *(a1 + 24);
  v27 = *v23;
  *(v26 + 16) = *(v23 + 2);
  *v26 = v27;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(a1, a4, a5, a6, a7, a8);
}

BOOL mlir::mps::MPSResourceBlobManagerInterface::decrementResourceRefcount(pthread_rwlock_t **this, MPSResourceBlobEntry *a2)
{
  llvm::sys::RWMutexImpl::lock(this + 6);
  v4 = *(a2 + 11);
  if (v4 == 1)
  {
    *(a2 + 11) = 0;
    if (*(a2 + 80) == 1)
    {
      v5 = *(a2 + 8);
      if (v5 >= 8)
      {
        v6 = a2 + 40;
        v7 = a2 + 40;
        if ((v5 & 2) == 0)
        {
          v7 = *v6;
        }

        (*(v5 & 0xFFFFFFFFFFFFFFF8))(v7, *(a2 + 2), *(a2 + 3), *(a2 + 4));
        v8 = *(a2 + 8);
        if (v8 >= 8)
        {
          if ((v8 & 4) != 0)
          {
            if ((v8 & 2) == 0)
            {
              v6 = *v6;
            }

            (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v6);
          }

          if ((v8 & 2) == 0)
          {
            llvm::deallocate_buffer(*(a2 + 5), *(a2 + 6));
          }
        }
      }

      *(a2 + 80) = 0;
    }
  }

  else
  {
    *(a2 + 11) = v4 - 1;
  }

  llvm::sys::RWMutexImpl::unlock_shared(this + 6);
  return v4 == 1;
}

BOOL mlir::emitOptionalError<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(mlir *a1, Location a2, char *a3, uint64_t *a4, char *a5, uint64_t *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v20);
  if (v20)
  {
    mlir::Diagnostic::append<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(&v21, a3, a4, a5, a6);
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
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
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v10;
}

BOOL mlir::mps::anonymous namespace::getPositiveAxes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, mlir *a5, AttributeStorage *a6, uint64_t a7)
{
  v20[6] = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v16);
  v19 = v12;
  if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ArgOperands = v20;
    v19 = 0x600000000;
    mlir::getIntValues<long long>(v16, v17, &ArgOperands, 1);
    if (ArgOperands != v20)
    {
      v15 = result;
      free(ArgOperands);
      return v15;
    }
  }

  else
  {
    v13.var0.var0 = a6;
    return mlir::emitOptionalError<char const(&)[66]>(a5, v13, "attribute is not integer type");
  }

  return result;
}

BOOL mlir::emitOptionalError<char const(&)[37],char const(&)[14],unsigned long,char const(&)[5],unsigned long &>(mlir *a1, Location a2, char *a3, char *a4, char **a5, char *a6, char **a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[37],char const(&)[14],unsigned long,char const(&)[5],unsigned long &>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

double mlir::Diagnostic::append<char const(&)[37],char const(&)[14],unsigned long,char const(&)[5],unsigned long &>(uint64_t a1, char *__s, char *a3, char **a4, char *a5, char **a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v14 = a1 + 16;
  v15 = *(a1 + 16);
  v23 = 3;
  v24 = __s;
  v25 = v12;
  v16 = *(a1 + 24);
  v17 = &v23;
  if (v16 >= *(a1 + 28))
  {
    if (v15 <= &v23 && v15 + 24 * v16 > &v23)
    {
      v21 = &v23 - v15;
      v22 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v13 + 32, v16 + 1, 24);
      v13 = v22;
      v15 = *(v22 + 16);
      v17 = &v21[v15];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v16 + 1, 24);
      v13 = a1;
      v15 = *(a1 + 16);
      v17 = &v23;
    }
  }

  v18 = v15 + 24 * *(v13 + 24);
  v19 = *v17;
  *(v18 + 16) = *(v17 + 2);
  *v18 = v19;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[18],unsigned long long &,char const(&)[36],unsigned long long &>(v13, a3, a4, a5, a6);
}

BOOL mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[7],char const(&)[15],unsigned long &>(mlir *a1, Location a2, char *a3, char **a4, char *a5, char *a6, char **a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[15],long long &,char const(&)[7],char const(&)[15],unsigned long &>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

BOOL mlir::emitOptionalError<char const(&)[37],char const(&)[6],unsigned long &,char const(&)[13]>(mlir *a1, Location a2, char *a3, char *a4, char **a5, char *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v20);
  if (v20)
  {
    mlir::Diagnostic::append<char const(&)[37],char const(&)[6],unsigned long &,char const(&)[13]>(&v21, a3, a4, a5, a6);
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
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
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v10;
}

double mlir::Diagnostic::append<char const(&)[15],long long &,char const(&)[7],char const(&)[15],unsigned long &>(uint64_t a1, char *__s, char **a3, char *a4, char *a5, char **a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v16 = *(a1 + 16);
  v15 = a1 + 16;
  v14 = v16;
  v35 = 3;
  v36 = __s;
  v37 = v12;
  v17 = *(v15 + 8);
  v18 = &v35;
  if (v17 >= *(v15 + 12))
  {
    if (v14 <= &v35 && v14 + 24 * v17 > &v35)
    {
      v31 = &v35 - v14;
      v32 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 32, v17 + 1, 24);
      v13 = v32;
      v14 = *(v32 + 16);
      v18 = &v31[v14];
    }

    else
    {
      v29 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 32, v17 + 1, 24);
      v13 = v29;
      v14 = *(v29 + 16);
      v18 = &v35;
    }
  }

  v19 = v14 + 24 * *(v13 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v13 + 28);
  v22 = (*(v13 + 24) + 1);
  *(v13 + 24) = v22;
  v23 = *a3;
  v35 = 2;
  v36 = v23;
  v24 = *(v13 + 16);
  v25 = &v35;
  if (v22 >= v21)
  {
    if (v24 <= &v35 && v24 + 24 * v22 > &v35)
    {
      v33 = &v35 - v24;
      v34 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 32, v22 + 1, 24);
      v13 = v34;
      v24 = *(v34 + 16);
      v25 = &v33[v24];
    }

    else
    {
      v30 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v13 + 32, v22 + 1, 24);
      v13 = v30;
      v24 = *(v30 + 16);
      v25 = &v35;
    }
  }

  v26 = v24 + 24 * *(v13 + 24);
  v27 = *v25;
  *(v26 + 16) = *(v25 + 2);
  *v26 = v27;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[7],char const(&)[15],unsigned long &>(v13, a4, a5, a6);
}

double mlir::Diagnostic::append<char const(&)[7],char const(&)[15],unsigned long &>(uint64_t a1, char *__s, char *a3, char **a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v9 + 32, v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[36],unsigned long long &>(v9, a3, a4).n128_u64[0];
  return result;
}

uint64_t mlir::Diagnostic::append<char const(&)[37],char const(&)[6],unsigned long &,char const(&)[13]>(uint64_t a1, char *__s, char *a3, char **a4, char *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v12 = a1 + 16;
  v13 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v10;
  v14 = *(a1 + 24);
  v15 = &v21;
  if (v14 >= *(a1 + 28))
  {
    if (v13 <= &v21 && v13 + 24 * v14 > &v21)
    {
      v19 = &v21 - v13;
      v20 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v12, v11 + 32, v14 + 1, 24);
      v11 = v20;
      v13 = *(v20 + 16);
      v15 = &v19[v13];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v14 + 1, 24);
      v11 = a1;
      v13 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v13 + 24 * *(v11 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(v11 + 24);
  return mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(v11, a3, a4, a5);
}

BOOL mlir::emitOptionalError<char const(&)[36],char const(&)[49],long long &,char const(&)[6]>(mlir *a1, Location a2, char *a3, char *a4, char **a5, char *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v20);
  if (v20)
  {
    mlir::Diagnostic::append<char const(&)[36],char const(&)[49],long long &,char const(&)[6]>(&v21, a3, a4, a5, a6);
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
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
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v10;
}

BOOL mlir::emitOptionalError<char const(&)[31],char const(&)[45],char const(&)[25]>(mlir *a1, Location a2, char *a3, char *a4, const char *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v18);
  if (v18)
  {
    mlir::Diagnostic::append<char const(&)[31],char const(&)[45],char const(&)[25]>(&v19, a3, a4, a5);
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v18);
  if (v18)
  {
    mlir::InFlightDiagnostic::report(&v18);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v25;
      v11 = __p;
      if (v25 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v25 = v9;
      operator delete(v11);
    }

    v12 = v22;
    if (v22)
    {
      v13 = v23;
      v14 = v22;
      if (v23 != v22)
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
        v14 = v22;
      }

      v23 = v12;
      operator delete(v14);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v8;
}

uint64_t mlir::Diagnostic::append<char const(&)[36],char const(&)[49],long long &,char const(&)[6]>(uint64_t a1, char *__s, char *a3, char **a4, char *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v12 = a1 + 16;
  v13 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v10;
  v14 = *(a1 + 24);
  v15 = &v21;
  if (v14 >= *(a1 + 28))
  {
    if (v13 <= &v21 && v13 + 24 * v14 > &v21)
    {
      v19 = &v21 - v13;
      v20 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v12, v11 + 32, v14 + 1, 24);
      v11 = v20;
      v13 = *(v20 + 16);
      v15 = &v19[v13];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v14 + 1, 24);
      v11 = a1;
      v13 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v13 + 24 * *(v11 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(v11 + 24);
  return mlir::Diagnostic::append<char const(&)[3],long long,char const(&)[2]>(v11, a3, a4, a5);
}

double mlir::Diagnostic::append<char const(&)[39],char const(&)[29],long long &,char const(&)[4],long long>(uint64_t a1, char *__s, char *a3, char **a4, char *a5, char **a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v14 = a1 + 16;
  v15 = *(a1 + 16);
  v23 = 3;
  v24 = __s;
  v25 = v12;
  v16 = *(a1 + 24);
  v17 = &v23;
  if (v16 >= *(a1 + 28))
  {
    if (v15 <= &v23 && v15 + 24 * v16 > &v23)
    {
      v21 = &v23 - v15;
      v22 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v13 + 32, v16 + 1, 24);
      v13 = v22;
      v15 = *(v22 + 16);
      v17 = &v21[v15];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v16 + 1, 24);
      v13 = a1;
      v15 = *(a1 + 16);
      v17 = &v23;
    }
  }

  v18 = v15 + 24 * *(v13 + 24);
  v19 = *v17;
  *(v18 + 16) = *(v17 + 2);
  *v18 = v19;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[29],long long &,char const(&)[4],long long>(v13, a3, a4, a5, a6);
}

double mlir::Diagnostic::append<char const(&)[29],long long &,char const(&)[4],long long>(uint64_t a1, char *__s, char **a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 2;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[9],long long &>(v11, a4, a5).n128_u64[0];
  return result;
}

uint64_t mlir::Diagnostic::append<char const(&)[31],char const(&)[45],char const(&)[25]>(uint64_t a1, char *__s, char *a3, const char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v9 + 32, v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  return mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(v9, a3, a4);
}

BOOL mlir::emitOptionalError<char const(&)[27],unsigned int &,char const(&)[47]>(mlir *a1, Location a2, char *a3, unsigned int *a4, char *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v18);
  if (v18)
  {
    mlir::Diagnostic::append<char const(&)[27],unsigned int &,char const(&)[47]>(&v19, a3, a4, a5);
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v18);
  if (v18)
  {
    mlir::InFlightDiagnostic::report(&v18);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v25;
      v11 = __p;
      if (v25 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v25 = v9;
      operator delete(v11);
    }

    v12 = v22;
    if (v22)
    {
      v13 = v23;
      v14 = v22;
      if (v23 != v22)
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
        v14 = v22;
      }

      v23 = v12;
      operator delete(v14);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v8;
}

BOOL mlir::emitOptionalError<char const(&)[38],char const(&)[49],char const(&)[41],unsigned long &,char const(&)[4],long long &>(mlir *a1, Location a2, char *a3, char *a4, char *a5, char **a6, char *a7, char **a8)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v24);
  if (v24)
  {
    mlir::Diagnostic::append<char const(&)[38],char const(&)[49],char const(&)[41],unsigned long &,char const(&)[4],long long &>(&v25, a3, a4, a5, a6, a7, a8);
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v31;
      v17 = __p;
      if (v31 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v31 = v15;
      operator delete(v17);
    }

    v18 = v28;
    if (v28)
    {
      v19 = v29;
      v20 = v28;
      if (v29 != v28)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            operator delete[](v21);
          }
        }

        while (v19 != v18);
        v20 = v28;
      }

      v29 = v18;
      operator delete(v20);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v14;
}

double mlir::Diagnostic::append<char const(&)[38],char const(&)[49],char const(&)[41],unsigned long &,char const(&)[4],long long &>(uint64_t a1, char *__s, char *a3, char *a4, char **a5, char *a6, char **a7)
{
  v14 = strlen(__s);
  v15 = a1;
  v16 = a1 + 16;
  v17 = *(a1 + 16);
  v25 = 3;
  v26 = __s;
  v27 = v14;
  v18 = *(a1 + 24);
  v19 = &v25;
  if (v18 >= *(a1 + 28))
  {
    if (v17 <= &v25 && v17 + 24 * v18 > &v25)
    {
      v23 = &v25 - v17;
      v24 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v16, v15 + 32, v18 + 1, 24);
      v15 = v24;
      v17 = *(v24 + 16);
      v19 = &v23[v17];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v18 + 1, 24);
      v15 = a1;
      v17 = *(a1 + 16);
      v19 = &v25;
    }
  }

  v20 = v17 + 24 * *(v15 + 24);
  v21 = *v19;
  *(v20 + 16) = *(v19 + 2);
  *v20 = v21;
  ++*(v15 + 24);
  return mlir::Diagnostic::append<char const(&)[49],char const(&)[41],unsigned long &,char const(&)[4],long long &>(v15, a3, a4, a5, a6, a7);
}

double mlir::Diagnostic::append<char const(&)[49],char const(&)[41],unsigned long &,char const(&)[4],long long &>(uint64_t a1, char *__s, char *a3, char **a4, char *a5, char **a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v14 = a1 + 16;
  v15 = *(a1 + 16);
  v23 = 3;
  v24 = __s;
  v25 = v12;
  v16 = *(a1 + 24);
  v17 = &v23;
  if (v16 >= *(a1 + 28))
  {
    if (v15 <= &v23 && v15 + 24 * v16 > &v23)
    {
      v21 = &v23 - v15;
      v22 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v13 + 32, v16 + 1, 24);
      v13 = v22;
      v15 = *(v22 + 16);
      v17 = &v21[v15];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v16 + 1, 24);
      v13 = a1;
      v15 = *(a1 + 16);
      v17 = &v23;
    }
  }

  v18 = v15 + 24 * *(v13 + 24);
  v19 = *v17;
  *(v18 + 16) = *(v17 + 2);
  *v18 = v19;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[41],unsigned long &,char const(&)[4],long long &>(v13, a3, a4, a5, a6);
}

double mlir::Diagnostic::append<char const(&)[41],unsigned long &,char const(&)[4],long long &>(uint64_t a1, char *__s, char **a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 5;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 32, v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[9],long long &>(v11, a4, a5).n128_u64[0];
  return result;
}

BOOL mlir::emitOptionalError<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(mlir *a1, Location a2, char *a3, char *a4, char **a5, char *a6, unsigned int *a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

void *llvm::format_provider<int,void>::format(unsigned int *a1, llvm::StringRef *a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v15, a2);
  if ((v6 & 0x100000000) == 0)
  {
    if (v16)
    {
      v8 = 0;
      v9 = *v15;
      if (v9 <= 0x63)
      {
        if (v9 != 68)
        {
          if (v9 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v8 = 0;
        ++v15;
        goto LABEL_19;
      }

      if (v9 == 100)
      {
        goto LABEL_18;
      }

      if (v9 == 110)
      {
LABEL_17:
        ++v15;
        v8 = 1;
LABEL_19:
        --v16;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_20:
    v17 = 0;
    if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
    {
      v14 = 0;
    }

    else
    {
      v14 = v17;
    }

    return llvm::write_integer(a2, *a1, v14, v8);
  }

  v10 = v6;
  v17 = 0;
  if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
  {
    v11 = 0;
  }

  else
  {
    v11 = v17;
  }

  if (llvm::isPrefixedHexStyle(v10))
  {
    v12 = v11 + 2;
  }

  else
  {
    v12 = v11;
  }

  return llvm::write_hex(a2, *a1, v10, v12, 1);
}

BOOL mlir::mps::anonymous namespace::verifyUnsignedIntegerAttr(_BYTE *a1, StringRef a2)
{
  var1 = a2.var1;
  var0 = a2.var0;
  v62 = *MEMORY[0x1E69E9840];
  if (!a1[47] || (InherentAttr = mlir::Operation::getInherentAttr(a1, a2), (v6 & 1) == 0))
  {
    v63.var0 = var0;
    v63.var1 = var1;
    InherentAttr = mlir::DictionaryAttr::get((a1 + 56), v63);
  }

  if (!InherentAttr)
  {
    return 1;
  }

  v7 = *(*InherentAttr + 136);
  v8 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v9 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? InherentAttr : 0;
  v45 = v9;
  if (!v8)
  {
    return 1;
  }

  Value = mlir::AffineMapAttr::getValue(&v45);
  if (mlir::Type::isUnsignedInteger(&Value, 32))
  {
    return 1;
  }

  v44 = 259;
  mlir::Operation::emitOpError(a1, &v43, &Value);
  if (Value)
  {
    v49 = 261;
    v46 = var0;
    v47 = var1;
    mlir::Diagnostic::operator<<(&v51, &v46);
    if (Value)
    {
      LODWORD(v46) = 3;
      v48 = 11;
      v11 = &v46;
      v12 = v52;
      if (v53 >= v54)
      {
        if (v52 <= &v46 && v52 + 24 * v53 > &v46)
        {
          v39 = &v46 - v52;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
          v12 = v52;
          v11 = (v52 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
          v11 = &v46;
          v12 = v52;
        }
      }

      v13 = &v12[24 * v53];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      v15 = ++v53;
      if (Value)
      {
        LODWORD(v46) = 3;
        v47 = ", should be unsigned integer of ";
        v48 = 32;
        v16 = &v46;
        v17 = v52;
        if (v15 >= v54)
        {
          if (v52 <= &v46 && v52 + 24 * v15 > &v46)
          {
            v40 = &v46 - v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v15 + 1, 24);
            v17 = v52;
            v16 = (v52 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v15 + 1, 24);
            v16 = &v46;
            v17 = v52;
          }
        }

        v18 = &v17[24 * v53];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        v20 = ++v53;
        if (Value)
        {
          LODWORD(v46) = 5;
          v47 = 32;
          v21 = &v46;
          v22 = v52;
          if (v20 >= v54)
          {
            if (v52 <= &v46 && v52 + 24 * v20 > &v46)
            {
              v41 = &v46 - v52;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v20 + 1, 24);
              v22 = v52;
              v21 = (v52 + v41);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v20 + 1, 24);
              v21 = &v46;
              v22 = v52;
            }
          }

          v23 = &v22[24 * v53];
          v24 = *v21;
          *(v23 + 2) = v21[2];
          *v23 = v24;
          v25 = ++v53;
          if (Value)
          {
            LODWORD(v46) = 3;
            v47 = " bits.";
            v48 = 6;
            v26 = &v46;
            v27 = v52;
            if (v25 >= v54)
            {
              if (v52 <= &v46 && v52 + 24 * v25 > &v46)
              {
                v42 = &v46 - v52;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v25 + 1, 24);
                v27 = v52;
                v26 = (v52 + v42);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v25 + 1, 24);
                v26 = &v46;
                v27 = v52;
              }
            }

            v28 = &v27[24 * v53];
            v29 = *v26;
            *(v28 + 2) = v26[2];
            *v28 = v29;
            ++v53;
          }
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  v30 = result;
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
    result = v30;
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
      result = v30;
    }

    v31 = __p;
    if (__p)
    {
      v32 = v59;
      v33 = __p;
      if (v59 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v59 = v31;
      operator delete(v33);
      result = v30;
    }

    v34 = v56;
    if (v56)
    {
      v35 = v57;
      v36 = v56;
      if (v57 != v56)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            operator delete[](v37);
          }
        }

        while (v35 != v34);
        v36 = v56;
      }

      v57 = v34;
      operator delete(v36);
      result = v30;
    }

    if (v52 != v55)
    {
      free(v52);
      return v30;
    }
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::inferStridedSliceShape(mlir *a1, AttributeStorage *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v68[4] = *MEMORY[0x1E69E9840];
  v66 = v68;
  v67 = 0x400000000;
  v63 = v65;
  v64 = 0x400000000;
  v59 = a4;
  v60 = v62;
  v61 = 0x400000000;
  if (a5)
  {
    mlir::getIntValues<long long>(a5, a6, &v66, 1);
  }

  if (a7)
  {
    mlir::getIntValues<long long>(a7, a8, &v63, 1);
  }

  if (a9)
  {
    mlir::getIntValues<long long>(a9, a10, &v60, 1);
  }

  if (a4 >= v61)
  {
    v21 = 1;
  }

  else
  {
    v21 = a14;
  }

  if (a4 < v67 || a4 < v64 || (v21 & 1) == 0)
  {
    v57 = v64;
    v58 = v67;
    v56 = v61;
    v23.var0.var0 = a2;
    v24 = mlir::emitOptionalError<char const(&)[37],unsigned long,char const(&)[10],unsigned long,char const(&)[11],unsigned long,char const(&)[40],long long &>(a1, v23, "Slice specification lengths: begin (", &v58, "),  end (", &v57, ") stride (", &v56, ") must be lower or equal to input rank ", &v59);
    v25 = v60;
    if (v60 == v62)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a4 <= *(a15 + 12))
  {
    v22 = a5;
    if (a4)
    {
      goto LABEL_23;
    }

    v24 = 1;
    v25 = v60;
    if (v60 == v62)
    {
      goto LABEL_17;
    }

LABEL_16:
    free(v25);
    goto LABEL_17;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a15, a15 + 16, a4, 8);
  v22 = a5;
LABEL_23:
  v27 = 0;
  while (1)
  {
    v32 = 1 << v27;
    if ((v32 & a13) != 0)
    {
      goto LABEL_26;
    }

    v33 = *(a3 + 8 * v27);
    if (v33 == 0x8000000000000000)
    {
      goto LABEL_24;
    }

    if (!a7)
    {
      v34 = *(a3 + 8 * v27);
      if ((a12 & v32) == 0)
      {
        goto LABEL_24;
      }

      v35 = 0;
      if (v33 == -1)
      {
        v36 = 0;
      }

      else
      {
        v36 = a14;
      }

      v37 = v32 & a11;
      if ((v32 & a11) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    }

    if (v27 >= v64)
    {
      break;
    }

    v34 = *(v63 + v27);
    v35 = 0;
    if (v34 == -1)
    {
      v36 = 0;
    }

    else
    {
      v36 = a14;
    }

    v37 = v32 & a11;
    if ((v32 & a11) == 0)
    {
      goto LABEL_43;
    }

LABEL_47:
    if (a9)
    {
      goto LABEL_48;
    }

LABEL_24:
    v30 = *(a15 + 8);
    v31 = 0x8000000000000000;
    if (v30 >= *(a15 + 12))
    {
      goto LABEL_88;
    }

LABEL_25:
    *(*a15 + 8 * v30) = v31;
    ++*(a15 + 8);
LABEL_26:
    if (a4 == ++v27)
    {
      v24 = 1;
      v25 = v60;
      if (v60 != v62)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  v34 = 0;
  v35 = 0;
  v36 = a14;
  v37 = v32 & a11;
  if ((v32 & a11) != 0)
  {
    goto LABEL_47;
  }

LABEL_43:
  if (v36)
  {
    goto LABEL_47;
  }

  if (!v22)
  {
    goto LABEL_24;
  }

  if (v27 < v67)
  {
    v35 = v66[v27];
    goto LABEL_47;
  }

  v35 = 0;
  if (!a9)
  {
    goto LABEL_24;
  }

LABEL_48:
  if (v27 >= v61)
  {
    v38 = 1;
    v39 = (v33 & (v35 >> 63)) + v35;
    if (a14)
    {
      goto LABEL_54;
    }

LABEL_51:
    if (v34 < 0)
    {
      goto LABEL_60;
    }

LABEL_56:
    v40 = 0;
LABEL_61:
    v41 = v40 + v34;
    v42 = v38 >> 63;
    if (v39 >= v33 - 1)
    {
      v43 = v33 - 1;
    }

    else
    {
      v43 = v39;
    }

    if (v39 >= v42)
    {
      v44 = v43;
    }

    else
    {
      v44 = v38 >> 63;
    }

    if (v41 >= v33)
    {
      v45 = *(a3 + 8 * v27);
    }

    else
    {
      v45 = v41;
    }

    if (v41 < -1)
    {
      v46 = -1;
    }

    else
    {
      v46 = v45;
    }

    v47 = v27 < v67 && v37 == 0;
    v48 = v42 & (v33 - 1);
    if (v47)
    {
      v48 = v44;
    }

    v49 = v38 - 1;
    if (v38 < 0)
    {
      v33 = -1;
      v49 = v38 + 1;
    }

    if ((a12 & v32) != 0 || v27 >= v64)
    {
      v51 = v33;
    }

    else
    {
      v51 = v46;
    }

    v31 = ((v49 - v48 + v51) / v38) & ~(((v49 - v48 + v51) / v38) >> 63);
    v30 = *(a15 + 8);
    if (v30 < *(a15 + 12))
    {
      goto LABEL_25;
    }

LABEL_88:
    v53 = a11;
    v54 = a12;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a15, a15 + 16, v30 + 1, 8);
    a11 = v53;
    a12 = v54;
    v22 = a5;
    v30 = *(a15 + 8);
    goto LABEL_25;
  }

  v38 = *(v60 + v27);
  if (v38)
  {
    v39 = (v33 & (v35 >> 63)) + v35;
    if (!a14)
    {
      goto LABEL_51;
    }

LABEL_54:
    if (v34 == -1)
    {
      a12 |= v32;
    }

    else
    {
      v34 += v39;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_56;
      }
    }

LABEL_60:
    v40 = *(a3 + 8 * v27);
    goto LABEL_61;
  }

  v52.var0.var0 = a2;
  v24 = mlir::emitOptionalError<char const(&)[66]>(a1, v52, "stride cannot be 0");
  v25 = v60;
  if (v60 != v62)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v63 != v65)
  {
    free(v63);
  }

  if (v66 != v68)
  {
    free(v66);
  }

  return v24;
}

__n128 mlir::InFlightDiagnostic::operator<<<char const*&>(uint64_t a1, const char **a2)
{
  if (*a1)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a1;
      v4 = strlen(*a2);
      a1 = v3;
    }

    else
    {
      v4 = 0;
    }

    v13 = 3;
    v14 = v2;
    v15 = v4;
    v5 = *(a1 + 32);
    v6 = *(a1 + 24);
    v7 = &v13;
    if (v5 >= *(a1 + 36))
    {
      if (v6 <= &v13 && v6 + 24 * v5 > &v13)
      {
        v11 = &v13 - v6;
        v12 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v5 + 1, 24);
        a1 = v12;
        v6 = *(v12 + 24);
        v7 = &v11[v6];
      }

      else
      {
        v10 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v5 + 1, 24);
        a1 = v10;
        v6 = *(v10 + 24);
        v7 = &v13;
      }
    }

    v8 = (v6 + 24 * *(a1 + 32));
    result = *v7;
    v8[1].n128_u64[0] = v7[1].n128_u64[0];
    *v8 = result;
    ++*(a1 + 32);
  }

  return result;
}

BOOL mlir::emitOptionalError<char const(&)[37],unsigned long,char const(&)[10],unsigned long,char const(&)[11],unsigned long,char const(&)[40],long long &>(mlir *a1, Location a2, char *a3, char **a4, char *a5, char **a6, char *a7, char **a8, char *a9, char **a10)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v26);
  if (v26)
  {
    mlir::Diagnostic::append<char const(&)[37],unsigned long,char const(&)[10],unsigned long,char const(&)[11],unsigned long,char const(&)[40],long long &>(&v27, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v33;
      v19 = __p;
      if (v33 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v33 = v17;
      operator delete(v19);
    }

    v20 = v30;
    if (v30)
    {
      v21 = v31;
      v22 = v30;
      if (v31 != v30)
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
        v22 = v30;
      }

      v31 = v20;
      operator delete(v22);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v16;
}

double mlir::Diagnostic::append<char const(&)[37],unsigned long,char const(&)[10],unsigned long,char const(&)[11],unsigned long,char const(&)[40],long long &>(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6, char **a7, char *a8, char **a9)
{
  v17 = strlen(__s);
  v18 = a1;
  v21 = *(a1 + 16);
  v20 = a1 + 16;
  v19 = v21;
  v40 = 3;
  v41 = __s;
  v42 = v17;
  v22 = *(v20 + 8);
  v23 = &v40;
  if (v22 >= *(v20 + 12))
  {
    if (v19 <= &v40 && v19 + 24 * v22 > &v40)
    {
      v36 = &v40 - v19;
      v37 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v18 + 32, v22 + 1, 24);
      v18 = v37;
      v19 = *(v37 + 16);
      v23 = &v36[v19];
    }

    else
    {
      v34 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v18 + 32, v22 + 1, 24);
      v18 = v34;
      v19 = *(v34 + 16);
      v23 = &v40;
    }
  }

  v24 = v19 + 24 * *(v18 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  v26 = *(v18 + 28);
  v27 = (*(v18 + 24) + 1);
  *(v18 + 24) = v27;
  v28 = *a3;
  v40 = 5;
  v41 = v28;
  v29 = *(v18 + 16);
  v30 = &v40;
  if (v27 >= v26)
  {
    if (v29 <= &v40 && v29 + 24 * v27 > &v40)
    {
      v38 = &v40 - v29;
      v39 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v18 + 32, v27 + 1, 24);
      v18 = v39;
      v29 = *(v39 + 16);
      v30 = &v38[v29];
    }

    else
    {
      v35 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v18 + 32, v27 + 1, 24);
      v18 = v35;
      v29 = *(v35 + 16);
      v30 = &v40;
    }
  }

  v31 = v29 + 24 * *(v18 + 24);
  v32 = *v30;
  *(v31 + 16) = *(v30 + 2);
  *v31 = v32;
  ++*(v18 + 24);
  return mlir::Diagnostic::append<char const(&)[10],unsigned long,char const(&)[11],unsigned long,char const(&)[40],long long &>(v18, a4, a5, a6, a7, a8, a9);
}

double mlir::Diagnostic::append<char const(&)[10],unsigned long,char const(&)[11],unsigned long,char const(&)[40],long long &>(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6, char **a7)
{
  v14 = strlen(__s);
  v15 = a1;
  v18 = *(a1 + 16);
  v17 = a1 + 16;
  v16 = v18;
  v37 = 3;
  v38 = __s;
  v39 = v14;
  v19 = *(v17 + 8);
  v20 = &v37;
  if (v19 >= *(v17 + 12))
  {
    if (v16 <= &v37 && v16 + 24 * v19 > &v37)
    {
      v33 = &v37 - v16;
      v34 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v15 + 32, v19 + 1, 24);
      v15 = v34;
      v16 = *(v34 + 16);
      v20 = &v33[v16];
    }

    else
    {
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v15 + 32, v19 + 1, 24);
      v15 = v31;
      v16 = *(v31 + 16);
      v20 = &v37;
    }
  }

  v21 = v16 + 24 * *(v15 + 24);
  v22 = *v20;
  *(v21 + 16) = *(v20 + 2);
  *v21 = v22;
  v23 = *(v15 + 28);
  v24 = (*(v15 + 24) + 1);
  *(v15 + 24) = v24;
  v25 = *a3;
  v37 = 5;
  v38 = v25;
  v26 = *(v15 + 16);
  v27 = &v37;
  if (v24 >= v23)
  {
    if (v26 <= &v37 && v26 + 24 * v24 > &v37)
    {
      v35 = &v37 - v26;
      v36 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v15 + 32, v24 + 1, 24);
      v15 = v36;
      v26 = *(v36 + 16);
      v27 = &v35[v26];
    }

    else
    {
      v32 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v15 + 32, v24 + 1, 24);
      v15 = v32;
      v26 = *(v32 + 16);
      v27 = &v37;
    }
  }

  v28 = v26 + 24 * *(v15 + 24);
  v29 = *v27;
  *(v28 + 16) = *(v27 + 2);
  *v28 = v29;
  ++*(v15 + 24);
  return mlir::Diagnostic::append<char const(&)[41],unsigned long &,char const(&)[4],long long &>(v15, a4, a5, a6, a7);
}

BOOL mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(mlir *a1, Location a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v16);
  if (v16)
  {
    v15 = 263;
    v14 = a3;
    mlir::Diagnostic::operator<<(&v17, &v14);
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
  if (v16)
  {
    mlir::InFlightDiagnostic::report(&v16);
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

  return v4;
}

void *llvm::format_provider<unsigned long long,void>::format(unint64_t *a1, llvm::StringRef *a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = a3;
  v16 = a4;
  v6 = llvm::support::detail::HelperFunctions::consumeHexStyle(&v15, a2);
  if ((v6 & 0x100000000) == 0)
  {
    if (v16)
    {
      v8 = 0;
      v9 = *v15;
      if (v9 <= 0x63)
      {
        if (v9 != 68)
        {
          if (v9 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v8 = 0;
        ++v15;
        goto LABEL_19;
      }

      if (v9 == 100)
      {
        goto LABEL_18;
      }

      if (v9 == 110)
      {
LABEL_17:
        ++v15;
        v8 = 1;
LABEL_19:
        --v16;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_20:
    v17 = 0;
    if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
    {
      v14 = 0;
    }

    else
    {
      v14 = v17;
    }

    return llvm::write_integer(a2, *a1, v14, v8);
  }

  v10 = v6;
  v17 = 0;
  if (llvm::consumeUnsignedInteger(&v15, 0xA, &v17, v7))
  {
    v11 = 0;
  }

  else
  {
    v11 = v17;
  }

  if (llvm::isPrefixedHexStyle(v10))
  {
    v12 = v11 + 2;
  }

  else
  {
    v12 = v11;
  }

  return llvm::write_hex(a2, *a1, v10, v12, 1);
}

uint64_t mlir::mps::anonymous namespace::inferBatchToSpaceShape(void *__src, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = *(a5 + 8);
  if (*(a3 + 8) != v7 || a2 < v7)
  {
    return 0;
  }

  v17 = *(a7 + 8);
  if (a2 != v17)
  {
    if (a2 >= v17)
    {
      if (a2 > *(a7 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a7, a7 + 16, a2, 8);
        v17 = *(a7 + 8);
      }

      if (a2 != v17)
      {
        bzero((*a7 + 8 * v17), 8 * (a2 - v17));
      }
    }

    *(a7 + 8) = a2;
  }

  if (a2)
  {
    memmove(*a7, __src, 8 * a2);
  }

  v18 = *(a5 + 8);
  if (v18)
  {
    v19 = *a5;
    v20 = *a3;
    v21 = *a7;
    v22 = 0;
    if (a6)
    {
      v23 = 1;
      while (1)
      {
        v24 = *v19;
        if (*v19 != 1)
        {
          result = 0;
          v25 = (a2 & (*v20 >> 63)) + *v20;
          if (v25 < 0 || a2 <= v25)
          {
            return result;
          }

          if (v24 < 1 || ((1 << v25) & v22) != 0)
          {
            return 0;
          }

          v27 = *(__src + v25);
          v28 = 0x8000000000000000;
          if (v27 != 0x8000000000000000)
          {
            v28 = v27 / v24;
          }

          v22 |= 1 << v25;
          v21[v25] = v28;
          v23 *= *v19;
        }

        ++v20;
        ++v19;
        if (!--v18)
        {
          goto LABEL_32;
        }
      }
    }

    v23 = 1;
    while (1)
    {
      v32 = *v19;
      if (*v19 != 1)
      {
        result = 0;
        v33 = (a2 & (*v20 >> 63)) + *v20;
        if (v33 < 0 || a2 <= v33)
        {
          return result;
        }

        if (v32 < 1 || ((1 << v33) & v22) != 0)
        {
          return 0;
        }

        v22 |= 1 << v33;
        v35 = *(__src + v33);
        v36 = v35 * v32;
        if (v35 == 0x8000000000000000)
        {
          v36 = *(__src + v33);
        }

        v21[v33] = v36;
        v23 *= *v19;
      }

      ++v19;
      ++v20;
      if (!--v18)
      {
        goto LABEL_32;
      }
    }
  }

  v23 = 1;
LABEL_32:
  result = 0;
  v29 = (a2 & (a4 >> 63)) + a4;
  if (v29 >= 0 && a2 > v29)
  {
    v30 = *(__src + v29);
    v31 = 0x8000000000000000;
    if (v30 != 0x8000000000000000)
    {
      if (a6)
      {
        v31 = v30 * v23;
      }

      else
      {
        v31 = v30 / v23;
      }
    }

    *(*a7 + 8 * v29) = v31;
    return 1;
  }

  return result;
}

BOOL mlir::emitOptionalError<char const(&)[16],unsigned long &,char const(&)[29],unsigned long &,char const(&)[2]>(mlir *a1, Location a2, char *a3, char **a4, char *a5, char **a6, char *a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[20],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

BOOL mlir::emitOptionalError<char const(&)[18],unsigned long &,char const(&)[3],unsigned long &>(mlir *a1, Location a2, char *a3, char **a4, char *a5, char **a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v20);
  if (v20)
  {
    mlir::Diagnostic::append<char const(&)[18],unsigned long long &,char const(&)[36],unsigned long long &>(&v21, a3, a4, a5, a6);
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
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
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v10;
}

BOOL mlir::emitOptionalError<char const(&)[21],long long const&,char const(&)[37],long long const&,char const(&)[2]>(mlir *a1, Location a2, char *a3, char **a4, char *a5, char **a6, char *a7)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v17 != v16);
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

BOOL mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(mlir *a1, Location a2, char *a3, char **a4, char *a5, char **a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v20);
  if (v20)
  {
    mlir::Diagnostic::append<char const(&)[29],long long &,char const(&)[4],long long>(&v21, a3, a4, a5, a6);
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
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
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v10;
}

BOOL mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],llvm::StringRef const&,char const(&)[7],mlir::Type,char const(&)[30]>(mlir *a1, Location a2, char *a3, uint64_t *a4, char *a5, uint64_t a6, char *a7, uint64_t *a8, const char *a9)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v25);
  if (v25)
  {
    mlir::Diagnostic::append<char const(&)[13],mlir::Type &,char const(&)[6],llvm::StringRef const&,char const(&)[7],mlir::Type,char const(&)[30]>(&v26, a3, a4, a5, a6, a7, a8, a9);
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
  if (v25)
  {
    mlir::InFlightDiagnostic::report(&v25);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v32;
      v18 = __p;
      if (v32 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v32 = v16;
      operator delete(v18);
    }

    v19 = v29;
    if (v29)
    {
      v20 = v30;
      v21 = v29;
      if (v30 != v29)
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
        v21 = v29;
      }

      v30 = v19;
      operator delete(v21);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

  return v15;
}

uint64_t mlir::Diagnostic::append<char const(&)[13],mlir::Type &,char const(&)[6],llvm::StringRef const&,char const(&)[7],mlir::Type,char const(&)[30]>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t a5, char *a6, uint64_t *a7, const char *a8)
{
  v16 = strlen(__s);
  v17 = *(a1 + 16);
  v31 = 3;
  v32 = __s;
  v33 = v16;
  v18 = *(a1 + 24);
  v19 = &v31;
  if (v18 >= *(a1 + 28))
  {
    if (v17 <= &v31 && v17 + 24 * v18 > &v31)
    {
      v29 = &v31 - v17;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v18 + 1, 24);
      v17 = *(a1 + 16);
      v19 = &v29[v17];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v18 + 1, 24);
      v17 = *(a1 + 16);
      v19 = &v31;
    }
  }

  v20 = v17 + 24 * *(a1 + 24);
  v21 = *v19;
  *(v20 + 16) = *(v19 + 2);
  *v20 = v21;
  ++*(a1 + 24);
  v22 = *a3;
  v23 = &v31;
  mlir::DiagnosticArgument::DiagnosticArgument(&v31, v22);
  v24 = *(a1 + 24);
  v25 = *(a1 + 16);
  if (v24 >= *(a1 + 28))
  {
    if (v25 <= &v31 && v25 + 24 * v24 > &v31)
    {
      v30 = &v31 - v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v24 + 1, 24);
      v25 = *(a1 + 16);
      v23 = &v30[v25];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v24 + 1, 24);
      v25 = *(a1 + 16);
      v23 = &v31;
    }
  }

  v26 = v25 + 24 * *(a1 + 24);
  v27 = *v23;
  *(v26 + 16) = *(v23 + 2);
  *v26 = v27;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[6],llvm::StringRef const&,char const(&)[7],mlir::Type,char const(&)[30]>(a1, a4, a5, a6, a7, a8);
}

uint64_t mlir::Diagnostic::append<char const(&)[6],llvm::StringRef const&,char const(&)[7],mlir::Type,char const(&)[30]>(uint64_t a1, char *__s, uint64_t a3, char *a4, uint64_t *a5, const char *a6)
{
  v12 = strlen(__s);
  v13 = a1 + 16;
  v14 = *(a1 + 16);
  LODWORD(v22) = 3;
  v23 = __s;
  v24 = v12;
  v15 = *(a1 + 24);
  v16 = &v22;
  if (v15 >= *(a1 + 28))
  {
    if (v14 <= &v22 && v14 + 24 * v15 > &v22)
    {
      v21 = &v22 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, a1 + 32, v15 + 1, 24);
      v14 = *(a1 + 16);
      v16 = &v21[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, a1 + 32, v15 + 1, 24);
      v14 = *(a1 + 16);
      v16 = &v22;
    }
  }

  v17 = v14 + 24 * *(a1 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  ++*(a1 + 24);
  v25 = 261;
  v19 = *(a3 + 8);
  v22 = *a3;
  v23 = v19;
  mlir::Diagnostic::operator<<(a1, &v22);
  return mlir::Diagnostic::append<char const(&)[6],mlir::Type &,char const(&)[30]>(a1, a4, a5, a6);
}

BOOL mlir::mps::anonymous namespace::inferConv2DShape(mlir *a1, Location a2, void *a3, char *a4, uint64_t *a5, uint64_t a6)
{
  v66 = a4;
  if (a4 != 4)
  {
    return mlir::emitOptionalError<char const(&)[19],unsigned long &,char const(&)[11]>(a1, a2, "conv2D input rank ", &v66, "must be 4 ");
  }

  v6 = *(a6 + 8);
  if (v6 <= 3)
  {
    if (*(a6 + 12) > 3u || (v7 = a2.var0.var0, v8 = a1, v9 = a3, v10 = a5, v11 = a6, llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, 4uLL, 8), a6 = v11, a1 = v8, a2.var0.var0 = v7, a3 = v9, a5 = v10, v6 = *(v11 + 8), v6 != 4))
    {
      v12 = a1;
      var0 = a2.var0.var0;
      v14 = a5;
      v15 = a3;
      v16 = a6;
      bzero((*a6 + 8 * v6), 32 - 8 * v6);
      a6 = v16;
      a1 = v12;
      a2.var0.var0 = var0;
      a3 = v15;
      a5 = v14;
    }
  }

  *(a6 + 8) = 0;
  v17 = *a3;
  if (*(a6 + 12))
  {
    v18 = 0;
  }

  else
  {
    v62 = a2.var0.var0;
    v46 = a1;
    v47 = a3;
    v48 = a5;
    v49 = a6;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, 1uLL, 8);
    a6 = v49;
    a1 = v46;
    a2.var0.var0 = v62;
    a3 = v47;
    a5 = v48;
    v18 = *(v49 + 8);
  }

  *(*a6 + 8 * v18) = v17;
  v19 = *(a6 + 12);
  v20 = (*(a6 + 8) + 1);
  *(a6 + 8) = v20;
  v21 = a3[1];
  if (v20 >= v19)
  {
    v59 = a3;
    v63 = a2.var0.var0;
    v50 = a1;
    v51 = a5;
    v52 = a6;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v20 + 1, 8);
    a6 = v52;
    a1 = v50;
    a3 = v59;
    a2.var0.var0 = v63;
    a5 = v51;
    LODWORD(v20) = *(v52 + 8);
  }

  *(*a6 + 8 * v20) = v21;
  v22 = *(a6 + 12);
  v23 = (*(a6 + 8) + 1);
  *(a6 + 8) = v23;
  v24 = a3[2];
  if (v23 >= v22)
  {
    v60 = a3;
    v64 = a2.var0.var0;
    v53 = a1;
    v54 = a5;
    v55 = a6;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v23 + 1, 8);
    a6 = v55;
    a1 = v53;
    a3 = v60;
    a2.var0.var0 = v64;
    a5 = v54;
    LODWORD(v23) = *(v55 + 8);
  }

  *(*a6 + 8 * v23) = v24;
  v25 = *(a6 + 12);
  v26 = (*(a6 + 8) + 1);
  *(a6 + 8) = v26;
  v27 = a3[3];
  if (v26 >= v25)
  {
    v61 = a3;
    v65 = a2.var0.var0;
    v56 = a1;
    v57 = a5;
    v58 = a6;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, v26 + 1, 8);
    a6 = v58;
    a1 = v56;
    a3 = v61;
    a2.var0.var0 = v65;
    a5 = v57;
    LODWORD(v26) = *(v58 + 8);
  }

  *(*a6 + 8 * v26) = v27;
  v28 = (*(a6 + 8) + 1);
  *(a6 + 8) = v28;
  v29 = a5[1];
  v30 = 0x8000000000000000;
  v31 = 0x8000000000000000;
  if (v29 == 0x8000000000000000)
  {
    v32 = *a5;
    if (*a5 == 0x8000000000000000)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v31 = (a5[11] + v29 + a5[12] + a5[7] + ~((a5[3] - 1) * a5[9])) / a5[7];
    v32 = *a5;
    if (*a5 == 0x8000000000000000)
    {
LABEL_16:
      v33 = *a6;
      v34 = *(a5 + 31);
      if (v34)
      {
        goto LABEL_17;
      }

LABEL_35:
      if (v28)
      {
        v41 = 0;
        if (v30 <= 0)
        {
          v30 = 0x8000000000000000;
        }

        if (v31 <= 0)
        {
          v31 = 0x8000000000000000;
        }

        v42 = 8 * v28;
        v43 = v33 - 8;
        v44 = a3 + 3;
        do
        {
          v45 = v31;
          if (v41)
          {
            if (v41 == 2)
            {
              v45 = a5[5];
              if (v45 <= 0)
              {
                v45 = 0x8000000000000000;
              }
            }

            else
            {
              v45 = v30;
              if (v41 != 1)
              {
                v45 = *v44;
              }
            }
          }

          *(v43 + v42) = v45;
          ++v41;
          --v44;
          v42 -= 8;
        }

        while (v42);
      }

      return 1;
    }
  }

  v30 = (v32 + ~((a5[4] - 1) * a5[10]) + a5[13] + a5[14] + a5[8]) / a5[8];
  v33 = *a6;
  v34 = *(a5 + 31);
  if (!v34)
  {
    goto LABEL_35;
  }

LABEL_17:
  if (v34 == 1)
  {
    if (v28)
    {
      v35 = 0;
      if (v30 <= 0)
      {
        v30 = 0x8000000000000000;
      }

      if (v31 <= 0)
      {
        v31 = 0x8000000000000000;
      }

      v36 = 8 * v28;
      v37 = v33 - 8;
      v38 = a3 + 3;
      do
      {
        v39 = v30;
        if (v35 != 2)
        {
          v39 = v31;
          if (v35 != 1)
          {
            if (v35)
            {
              v39 = *v38;
            }

            else
            {
              v39 = a5[5];
              if (v39 <= 0)
              {
                v39 = 0x8000000000000000;
              }
            }
          }
        }

        *(v37 + v36) = v39;
        ++v35;
        --v38;
        v36 -= 8;
      }

      while (v36);
    }

    return 1;
  }

  return mlir::emitOptionalError<char const(&)[66]>(a1, a2, "unrecognized input dataLayout to conv2D");
}

BOOL mlir::emitOptionalError<char const(&)[19],unsigned long &,char const(&)[11]>(mlir *a1, Location a2, char *a3, char **a4, char *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v18);
  if (v18)
  {
    mlir::Diagnostic::append<char const(&)[18],unsigned long,char const(&)[8]>(&v19, a3, a4, a5);
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v18);
  if (v18)
  {
    mlir::InFlightDiagnostic::report(&v18);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v25;
      v11 = __p;
      if (v25 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v25 = v9;
      operator delete(v11);
    }

    v12 = v22;
    if (v22)
    {
      v13 = v23;
      v14 = v22;
      if (v23 != v22)
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
        v14 = v22;
      }

      v23 = v12;
      operator delete(v14);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v8;
}

void *llvm::support::detail::stream_operator_format_adapter<mlir::mps::MetalPixelFormat &>::format(void *result, llvm::raw_ostream *this)
{
  v2 = *result[1];
  if (v2 <= 9)
  {
    v3 = qword_1E0998CD8[v2];
    v4 = (&off_1E86D3678)[v2];
    v5 = *(this + 4);
    if (v3 <= *(this + 3) - v5)
    {
      result = memcpy(v5, v4, v3);
      *(this + 4) += v3;
    }

    else
    {

      return llvm::raw_ostream::write(this, v4, v3);
    }
  }

  return result;
}

BOOL mlir::emitOptionalError<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(mlir *a1, Location a2, char *a3, char **a4, char *a5, char **a6, char *a7, char **a8, char *a9)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, a2, &v25);
  if (v25)
  {
    mlir::Diagnostic::append<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(&v26, a3, a4, a5, a6, a7, a8, a9);
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
  if (v25)
  {
    mlir::InFlightDiagnostic::report(&v25);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v32;
      v18 = __p;
      if (v32 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v32 = v16;
      operator delete(v18);
    }

    v19 = v29;
    if (v29)
    {
      v20 = v30;
      v21 = v29;
      if (v30 != v29)
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
        v21 = v29;
      }

      v30 = v19;
      operator delete(v21);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

  return v15;
}

void *std::__function::__func<mlir::mps::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B17F10;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B17F10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, void **a2, void **a3)
{
  v4 = *a3;
  v24[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(*a2);
  v24[1] = v5;
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v23[0] = v6;
  v23[1] = v7;
  if (v24[0])
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v11 = *(a1 + 8);
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v25 = mlir::ElementsAttr::isSplat(v23);
  v26 = isSplat;
  v13 = *(v11 + 24);
  if (v13)
  {
    if ((*(*v13 + 48))(v13, &v26, &v25))
    {
      if (!mlir::CallOpInterface::getArgOperands(v23))
      {
        return 1;
      }

      if (mlir::CallOpInterface::getArgOperands(v24))
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v24);
        v16 = v15;
        v17 = mlir::CallableOpInterface::getArgAttrsAttr(v23);
        if (v16 == v18)
        {
          if (v16)
          {
            v19 = 8 * v16 - 8;
            do
            {
              v20 = v19;
              v21 = *ArgAttrsAttr == *v17 || *v17 == 0x8000000000000000;
              v9 = v21;
              if (!v21)
              {
                break;
              }

              ++ArgAttrsAttr;
              ++v17;
              v19 -= 8;
              v9 = 1;
            }

            while (v20);
            return v9;
          }

          return 1;
        }
      }
    }

    return 0;
  }

  v22 = std::__throw_bad_function_call[abi:nn200100]();
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps12_GLOBAL__N_123areMoreSpecializedTypesENS_9TypeRangeES2_NSt3__18functionIFbNS_4TypeES5_EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps12_GLOBAL__N_123areMoreSpecializedTypesENS_9TypeRangeES2_NSt3__18functionIFbNS_4TypeES5_EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps12_GLOBAL__N_123areMoreSpecializedTypesENS_9TypeRangeES2_NSt3__18functionIFbNS_4TypeES5_EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps12_GLOBAL__N_123areMoreSpecializedTypesENS_9TypeRangeES2_NSt3__18functionIFbNS_4TypeES5_EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
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
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[138];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_3mps19MPSBufferTensorAttrEJPNS1_11MLIRContextENS1_16RankedTensorTypeENS8_28MPSDialectResourceBlobHandleEyEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps23(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps24(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps26(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps33(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps40(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ACosOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.acos", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::ACosOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B17FA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ACoshOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACoshOp>,mlir::OpTrait::OneResult<mlir::mps::ACoshOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACoshOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACoshOp>,mlir::OpTrait::OneOperand<mlir::mps::ACoshOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACoshOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACoshOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACoshOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACoshOp>,mlir::OpTrait::Stitchable<mlir::mps::ACoshOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACoshOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACoshOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.acosh", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::ACoshOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18080;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ASinOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ASinOp>,mlir::OpTrait::OneResult<mlir::mps::ASinOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ASinOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ASinOp>,mlir::OpTrait::OneOperand<mlir::mps::ASinOp>,mlir::OpTrait::OpInvariants<mlir::mps::ASinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ASinOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ASinOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ASinOp>,mlir::OpTrait::Stitchable<mlir::mps::ASinOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ASinOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ASinOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.asin", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::ASinOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18160;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ASinhOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ASinhOp>,mlir::OpTrait::OneResult<mlir::mps::ASinhOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ASinhOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ASinhOp>,mlir::OpTrait::OneOperand<mlir::mps::ASinhOp>,mlir::OpTrait::OpInvariants<mlir::mps::ASinhOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ASinhOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ASinhOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ASinhOp>,mlir::OpTrait::Stitchable<mlir::mps::ASinhOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ASinhOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ASinhOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.asinh", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::ASinhOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18240;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ATan2Op>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ATan2Op>,mlir::OpTrait::OneResult<mlir::mps::ATan2Op>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ATan2Op>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ATan2Op>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::ATan2Op>,mlir::OpTrait::OpInvariants<mlir::mps::ATan2Op>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ATan2Op>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ATan2Op>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::ATan2Op>,mlir::OpTrait::Stitchable<mlir::mps::ATan2Op>,mlir::InferTypeOpInterface::Trait<mlir::mps::ATan2Op>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ATan2Op>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.atan2", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::ATan2Op,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18320;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ATanOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ATanOp>,mlir::OpTrait::OneResult<mlir::mps::ATanOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ATanOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ATanOp>,mlir::OpTrait::OneOperand<mlir::mps::ATanOp>,mlir::OpTrait::OpInvariants<mlir::mps::ATanOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ATanOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ATanOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ATanOp>,mlir::OpTrait::Stitchable<mlir::mps::ATanOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ATanOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ATanOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.atan", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::ATanOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18400;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ATanhOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ATanhOp>,mlir::OpTrait::OneResult<mlir::mps::ATanhOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ATanhOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ATanhOp>,mlir::OpTrait::OneOperand<mlir::mps::ATanhOp>,mlir::OpTrait::OpInvariants<mlir::mps::ATanhOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ATanhOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ATanhOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ATanhOp>,mlir::OpTrait::Stitchable<mlir::mps::ATanhOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ATanhOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ATanhOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.atanh", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::ATanhOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B184E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::AbsoluteOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::AbsoluteOp>,mlir::OpTrait::OneResult<mlir::mps::AbsoluteOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::AbsoluteOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::AbsoluteOp>,mlir::OpTrait::OneOperand<mlir::mps::AbsoluteOp>,mlir::OpTrait::OpInvariants<mlir::mps::AbsoluteOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::AbsoluteOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::AbsoluteOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::AbsoluteOp>,mlir::OpTrait::Stitchable<mlir::mps::AbsoluteOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::AbsoluteOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::AbsoluteOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.absolute", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::AbsoluteOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B185C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::AbsoluteSquareOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::AbsoluteSquareOp>,mlir::OpTrait::OneResult<mlir::mps::AbsoluteSquareOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::AbsoluteSquareOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::AbsoluteSquareOp>,mlir::OpTrait::OneOperand<mlir::mps::AbsoluteSquareOp>,mlir::OpTrait::OpInvariants<mlir::mps::AbsoluteSquareOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::AbsoluteSquareOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::AbsoluteSquareOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::AbsoluteSquareOp>,mlir::OpTrait::Stitchable<mlir::mps::AbsoluteSquareOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::AbsoluteSquareOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::AbsoluteSquareOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.absolute_square", 19, a1, &mlir::detail::TypeIDResolver<mlir::mps::AbsoluteSquareOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B186A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::AddOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::AddOp>,mlir::OpTrait::OneResult<mlir::mps::AddOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::AddOp>,mlir::OpTrait::OpInvariants<mlir::mps::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::AddOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::AddOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::AddOp>,mlir::OpTrait::IsCommutative<mlir::mps::AddOp>,mlir::OpTrait::Stitchable<mlir::mps::AddOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::AddOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::AddOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.add", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18780;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::AndOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::AndOp>,mlir::OpTrait::OneResult<mlir::mps::AndOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::AndOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::AndOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::AndOp>,mlir::OpTrait::OpInvariants<mlir::mps::AndOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::AndOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::AndOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::AndOp>,mlir::OpTrait::IsCommutative<mlir::mps::AndOp>,mlir::OpTrait::Stitchable<mlir::mps::AndOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::AndOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::AndOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.and", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::AndOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18860;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::AssignVariableOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::AssignVariableOp>,mlir::OpTrait::ZeroResults<mlir::mps::AssignVariableOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::AssignVariableOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::AssignVariableOp>,mlir::OpTrait::OpInvariants<mlir::mps::AssignVariableOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::AssignVariableOp>,mlir::DowngraderInterface::Trait<mlir::mps::AssignVariableOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.assign_variable", 19, a1, &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18940;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BandPartOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BandPartOp>,mlir::OpTrait::OneResult<mlir::mps::BandPartOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BandPartOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BandPartOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::BandPartOp>,mlir::OpTrait::OpInvariants<mlir::mps::BandPartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BandPartOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BandPartOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BandPartOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.band_part", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::BandPartOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18A20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BatchToSpaceOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneResult<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OpInvariants<mlir::mps::BatchToSpaceOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BatchToSpaceOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.batch_to_space", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::BatchToSpaceOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18B00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::BatchToSpaceOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BiasAddGradOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BiasAddGradOp>,mlir::OpTrait::OneResult<mlir::mps::BiasAddGradOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BiasAddGradOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BiasAddGradOp>,mlir::OpTrait::OneOperand<mlir::mps::BiasAddGradOp>,mlir::OpTrait::OpInvariants<mlir::mps::BiasAddGradOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::BiasAddGradOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BiasAddGradOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BiasAddGradOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BiasAddGradOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.bias_add_grad", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::BiasAddGradOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18BE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::BiasAddGradOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BiasAddOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BiasAddOp>,mlir::OpTrait::OneResult<mlir::mps::BiasAddOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BiasAddOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BiasAddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BiasAddOp>,mlir::OpTrait::OpInvariants<mlir::mps::BiasAddOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::BiasAddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BiasAddOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::BiasAddOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BiasAddOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BiasAddOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.bias_add", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::BiasAddOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18CC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::BiasAddOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BitwiseAndOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseAndOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseAndOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseAndOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseAndOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseAndOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseAndOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseAndOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseAndOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseAndOp>,mlir::OpTrait::IsCommutative<mlir::mps::BitwiseAndOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseAndOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseAndOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseAndOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.bitwise_and", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::BitwiseAndOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18DA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BitwiseLeftShiftOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseLeftShiftOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseLeftShiftOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseLeftShiftOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseLeftShiftOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.bitwise_left_shift", 22, a1, &mlir::detail::TypeIDResolver<mlir::mps::BitwiseLeftShiftOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18E80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BitwiseNotOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseNotOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OneOperand<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseNotOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseNotOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseNotOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::BitwiseNotOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseNotOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseNotOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseNotOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.bitwise_not", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::BitwiseNotOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B18F60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BitwiseOrOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseOrOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseOrOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseOrOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseOrOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseOrOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseOrOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseOrOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseOrOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseOrOp>,mlir::OpTrait::IsCommutative<mlir::mps::BitwiseOrOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseOrOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseOrOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseOrOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.bitwise_or", 14, a1, &mlir::detail::TypeIDResolver<mlir::mps::BitwiseOrOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19040;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BitwisePopcountOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::OneResult<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::OneOperand<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwisePopcountOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwisePopcountOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwisePopcountOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwisePopcountOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.bitwise_popcount", 20, a1, &mlir::detail::TypeIDResolver<mlir::mps::BitwisePopcountOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19120;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BitwiseRightShiftOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseRightShiftOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseRightShiftOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseRightShiftOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseRightShiftOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.bitwise_right_shift", 23, a1, &mlir::detail::TypeIDResolver<mlir::mps::BitwiseRightShiftOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19200;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BitwiseXorOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseXorOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseXorOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseXorOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseXorOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseXorOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseXorOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseXorOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseXorOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseXorOp>,mlir::OpTrait::IsCommutative<mlir::mps::BitwiseXorOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseXorOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseXorOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseXorOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.bitwise_xor", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::BitwiseXorOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B192E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BroadcastGradientArgsOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::OneResult<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::OpInvariants<mlir::mps::BroadcastGradientArgsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BroadcastGradientArgsOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BroadcastGradientArgsOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BroadcastGradientArgsOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.broadcast_gradient_args", 27, a1, &mlir::detail::TypeIDResolver<mlir::mps::BroadcastGradientArgsOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B193C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::BroadcastToOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BroadcastToOp>,mlir::OpTrait::OneResult<mlir::mps::BroadcastToOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BroadcastToOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BroadcastToOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BroadcastToOp>,mlir::OpTrait::OpInvariants<mlir::mps::BroadcastToOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BroadcastToOp>,mlir::OpTrait::Stitchable<mlir::mps::BroadcastToOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BroadcastToOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BroadcastToOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.broadcast_to", 16, a1, &mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B194A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CallOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CallOp>,mlir::OpTrait::VariadicResults<mlir::mps::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CallOp>,mlir::OpTrait::VariadicOperands<mlir::mps::CallOp>,mlir::OpTrait::OpInvariants<mlir::mps::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CallOp>,mlir::CallOpInterface::Trait<mlir::mps::CallOp>,mlir::DowngraderInterface::Trait<mlir::mps::CallOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.call", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19580;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::CallOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CastOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CastOp>,mlir::OpTrait::OneResult<mlir::mps::CastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CastOp>,mlir::OpTrait::OneOperand<mlir::mps::CastOp>,mlir::OpTrait::OpInvariants<mlir::mps::CastOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::mps::CastOp>,mlir::OpTrait::TypeChanger<mlir::mps::CastOp>,mlir::OpTrait::Stitchable<mlir::mps::CastOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CastOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CastOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.cast", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19660;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::CastOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CeilOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CeilOp>,mlir::OpTrait::OneResult<mlir::mps::CeilOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CeilOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CeilOp>,mlir::OpTrait::OneOperand<mlir::mps::CeilOp>,mlir::OpTrait::OpInvariants<mlir::mps::CeilOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CeilOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::CeilOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::CeilOp>,mlir::OpTrait::Stitchable<mlir::mps::CeilOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CeilOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CeilOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.ceil", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::CeilOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19740;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ClampOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ClampOp>,mlir::OpTrait::OneResult<mlir::mps::ClampOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ClampOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ClampOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::ClampOp>,mlir::OpTrait::OpInvariants<mlir::mps::ClampOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ClampOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::ClampOp>,mlir::OpTrait::Stitchable<mlir::mps::ClampOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ClampOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ClampOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.clamp", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::ClampOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19820;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ColToImOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ColToImOp>,mlir::OpTrait::OneResult<mlir::mps::ColToImOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ColToImOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ColToImOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::ColToImOp>,mlir::OpTrait::OpInvariants<mlir::mps::ColToImOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ColToImOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ColToImOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ColToImOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ColToImOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.col_to_im", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::ColToImOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19900;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ColToImOp::getAttributeNames(void)::attrNames, 5);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ConcatOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ConcatOp>,mlir::OpTrait::OneResult<mlir::mps::ConcatOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ConcatOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ConcatOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ConcatOp>,mlir::OpTrait::OpInvariants<mlir::mps::ConcatOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ConcatOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ConcatOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ConcatOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ConcatOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.concat", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B199E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ConcatOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ConjugateOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ConjugateOp>,mlir::OpTrait::OneResult<mlir::mps::ConjugateOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ConjugateOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ConjugateOp>,mlir::OpTrait::OneOperand<mlir::mps::ConjugateOp>,mlir::OpTrait::OpInvariants<mlir::mps::ConjugateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ConjugateOp>,mlir::OpTrait::Stitchable<mlir::mps::ConjugateOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ConjugateOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::ConjugateOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ConjugateOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ConjugateOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.conjugate", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::ConjugateOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19AC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ConstantOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ConstantOp>,mlir::OpTrait::OneResult<mlir::mps::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::mps::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::mps::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::mps::ConstantOp>,mlir::OpTrait::Stitchable<mlir::mps::ConstantOp>,mlir::DowngraderInterface::Trait<mlir::mps::ConstantOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.constant", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19BA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::Conv2DDataGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::Conv2DDataGradientOp>,mlir::OpTrait::OneResult<mlir::mps::Conv2DDataGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::Conv2DDataGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::Conv2DDataGradientOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mps::Conv2DDataGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::Conv2DDataGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::Conv2DDataGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::Conv2DDataGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::Conv2DDataGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::Conv2DDataGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::Conv2DDataGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.conv_2d_data_gradient", 25, a1, &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19C80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::Conv2DDataGradientOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::Conv2DOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::Conv2DOp>,mlir::OpTrait::OneResult<mlir::mps::Conv2DOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::Conv2DOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::Conv2DOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::Conv2DOp>,mlir::OpTrait::OpInvariants<mlir::mps::Conv2DOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::Conv2DOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::Conv2DOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::Conv2DOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::Conv2DOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::Conv2DOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.conv_2d", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19D60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::Conv2DOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::Conv2DWeightsGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::Conv2DWeightsGradientOp>,mlir::OpTrait::OneResult<mlir::mps::Conv2DWeightsGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::Conv2DWeightsGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::Conv2DWeightsGradientOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::Conv2DWeightsGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::Conv2DWeightsGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::Conv2DWeightsGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::Conv2DWeightsGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::Conv2DWeightsGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::Conv2DWeightsGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::Conv2DWeightsGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.conv_2d_weights_gradient", 28, a1, &mlir::detail::TypeIDResolver<mlir::mps::Conv2DWeightsGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19E40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::Conv2DWeightsGradientOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::Conv3DDataGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::Conv3DDataGradientOp>,mlir::OpTrait::OneResult<mlir::mps::Conv3DDataGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::Conv3DDataGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::Conv3DDataGradientOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mps::Conv3DDataGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::Conv3DDataGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::Conv3DDataGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::Conv3DDataGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::Conv3DDataGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::Conv3DDataGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::Conv3DDataGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.conv_3d_data_gradient", 25, a1, &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B19F20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::Conv3DDataGradientOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::Conv3DOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::Conv3DOp>,mlir::OpTrait::OneResult<mlir::mps::Conv3DOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::Conv3DOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::Conv3DOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::Conv3DOp>,mlir::OpTrait::OpInvariants<mlir::mps::Conv3DOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::Conv3DOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::Conv3DOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::Conv3DOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::Conv3DOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::Conv3DOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.conv_3d", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A000;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::Conv3DOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::Conv3DWeightsGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::Conv3DWeightsGradientOp>,mlir::OpTrait::OneResult<mlir::mps::Conv3DWeightsGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::Conv3DWeightsGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::Conv3DWeightsGradientOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::Conv3DWeightsGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::Conv3DWeightsGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::Conv3DWeightsGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::Conv3DWeightsGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::Conv3DWeightsGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::Conv3DWeightsGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::Conv3DWeightsGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.conv_3d_weights_gradient", 28, a1, &mlir::detail::TypeIDResolver<mlir::mps::Conv3DWeightsGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A0E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::Conv3DWeightsGradientOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CosOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CosOp>,mlir::OpTrait::OneResult<mlir::mps::CosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CosOp>,mlir::OpTrait::OneOperand<mlir::mps::CosOp>,mlir::OpTrait::OpInvariants<mlir::mps::CosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::CosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::CosOp>,mlir::OpTrait::Stitchable<mlir::mps::CosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CosOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.cos", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::CosOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A1C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CoshOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CoshOp>,mlir::OpTrait::OneResult<mlir::mps::CoshOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CoshOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CoshOp>,mlir::OpTrait::OneOperand<mlir::mps::CoshOp>,mlir::OpTrait::OpInvariants<mlir::mps::CoshOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CoshOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::CoshOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::CoshOp>,mlir::OpTrait::Stitchable<mlir::mps::CoshOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CoshOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CoshOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.cosh", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::CoshOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A2A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CostVolumeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CostVolumeOp>,mlir::OpTrait::OneResult<mlir::mps::CostVolumeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CostVolumeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CostVolumeOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::CostVolumeOp>,mlir::OpTrait::OpInvariants<mlir::mps::CostVolumeOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CostVolumeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CostVolumeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CostVolumeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CostVolumeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.cost_volume", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::CostVolumeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A380;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::CostVolumeOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CreateComplexOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CreateComplexOp>,mlir::OpTrait::OneResult<mlir::mps::CreateComplexOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CreateComplexOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CreateComplexOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::CreateComplexOp>,mlir::OpTrait::OpInvariants<mlir::mps::CreateComplexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CreateComplexOp>,mlir::OpTrait::Stitchable<mlir::mps::CreateComplexOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::CreateComplexOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CreateComplexOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CreateComplexOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.create_complex", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A460;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CreateTextureTensorOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CreateTextureTensorOp>,mlir::OpTrait::OneResult<mlir::mps::CreateTextureTensorOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CreateTextureTensorOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CreateTextureTensorOp>,mlir::OpTrait::OneOperand<mlir::mps::CreateTextureTensorOp>,mlir::OpTrait::OpInvariants<mlir::mps::CreateTextureTensorOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CreateTextureTensorOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CreateTextureTensorOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::CreateTextureTensorOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CreateTextureTensorOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CreateTextureTensorOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.create_texture_tensor", 25, a1, &mlir::detail::TypeIDResolver<mlir::mps::CreateTextureTensorOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A540;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::CreateTextureTensorOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CropOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CropOp>,mlir::OpTrait::OneResult<mlir::mps::CropOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CropOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CropOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::CropOp>,mlir::OpTrait::OpInvariants<mlir::mps::CropOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CropOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CropOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CropOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.crop", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A620;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CropResizeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CropResizeOp>,mlir::OpTrait::OneResult<mlir::mps::CropResizeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CropResizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CropResizeOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::CropResizeOp>,mlir::OpTrait::OpInvariants<mlir::mps::CropResizeOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CropResizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CropResizeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CropResizeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CropResizeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.crop_resize", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A700;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::CropResizeOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CumulativeMaximumOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CumulativeMaximumOp>,mlir::OpTrait::OneResult<mlir::mps::CumulativeMaximumOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CumulativeMaximumOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CumulativeMaximumOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::CumulativeMaximumOp>,mlir::OpTrait::OpInvariants<mlir::mps::CumulativeMaximumOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CumulativeMaximumOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CumulativeMaximumOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CumulativeMaximumOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CumulativeMaximumOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.cumulative_maximum", 22, a1, &mlir::detail::TypeIDResolver<mlir::mps::CumulativeMaximumOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A7E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::CumulativeMaximumOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}