uint64_t llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(a1, a2);
  }

  v3 = *a1;
  *(*a1 + 8 * v2) = *a2;
  v4 = v2 + 1;
  *(a1 + 8) = v4;
  return v3 + 8 * v4 - 8;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::pdl_interp::ApplyRewriteOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::pdl_interp::ApplyRewriteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = *(a2 + 256);
  if (v11)
  {
    *v11 = a5;
    v12 = *(a2 + 72);
    v13 = a4 + v12;
    if (a4 + v12 <= *(a2 + 76))
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v13, 8);
    v12 = *(a2 + 72);
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v14 = operator new(8uLL);
  *v14 = 0;
  *(a2 + 256) = v14;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v18;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v17;
  {
    mlir::pdl_interp::ApplyRewriteOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  **(a2 + 256) = a5;
  v12 = *(a2 + 72);
  v13 = a4 + v12;
  if (a4 + v12 > *(a2 + 76))
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = 0;
  v16 = *(a2 + 64) + 8 * v12;
  do
  {
    *(v16 + 8 * v15) = mlir::TypeRange::dereference_iterator(a3, v15);
    ++v15;
  }

  while (a4 != v15);
  LODWORD(v12) = *(a2 + 72);
LABEL_12:
  *(a2 + 72) = v12 + a4;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::verifyInvariantsImpl(mlir::pdl_interp::ApplyRewriteOp *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    *v20 = v2;
    if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 68);
      if (v5)
      {
        v6 = 0;
        v7 = *(v4 + 72) + 24;
        while ((mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6) & 1) != 0)
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            goto LABEL_8;
          }
        }

        return 0;
      }
    }

LABEL_8:
    mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl();
    return v20[0];
  }

  else
  {
    v18 = "requires attribute 'name'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (*v20)
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
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
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::parse(uint64_t a1, uint64_t a2)
{
  v29[16] = *MEMORY[0x1E69E9840];
  v28[0] = v29;
  v28[1] = 0x400000000;
  v26[0] = &v27;
  v26[1] = 0x100000000;
  v22 = 0;
  __src = &v25;
  v24 = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v22, v6))
  {
    goto LABEL_26;
  }

  v7 = v22;
  if (v22)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      v9 = operator new(8uLL);
      *v9 = 0;
      *(a2 + 256) = v9;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v20;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v20;
      {
        mlir::pdl_interp::ApplyRewriteOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = *(a2 + 256);
      v7 = v22;
    }

    *v8 = v7;
  }

  if ((*(*a1 + 288))(a1))
  {
    v10 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v28, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v26) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0;
  }

  if (((*(*a1 + 112))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0 || (v21 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v11 = *(a2 + 8), v20[0] = a1, v20[1] = &v21, v20[2] = a2, (v12 = mlir::NamedAttrList::get(a2 + 112, **(v11 + 96))) != 0) && (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v12, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) & 1) == 0)
  {
LABEL_26:
    v17 = 0;
    v18 = __src;
    if (__src == &v25)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = __src;
  v14 = v24;
  v15 = *(a2 + 72);
  v16 = v15 + v24;
  if (v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  v17 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v28, v26, v10, a2 + 16) & 1;
  v18 = __src;
  if (__src != &v25)
  {
LABEL_27:
    free(v18);
  }

LABEL_28:
  if (v26[0] != &v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return v17;
}

void mlir::pdl_interp::AreEqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a4;
  v13 = a3;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 208);
  if (v9 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v9 + 1, 8);
    LODWORD(v9) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v9) = a5;
  v10 = *(a2 + 212);
  v11 = (*(a2 + 208) + 1);
  *(a2 + 208) = v11;
  if (v11 >= v10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v11) = a6;
  ++*(a2 + 208);
}

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (mlir::pdl::PDLType::classof(a2))
  {
    return 1;
  }

  v43 = 261;
  v42[0] = a3;
  v42[1] = a4;
  mlir::Operation::emitOpError(a1, v42, v47);
  if (v47[0])
  {
    v44 = 3;
    v45 = " #";
    v46 = 2;
    v11 = &v44;
    v12 = v48;
    if (v49 >= v50)
    {
      if (v48 <= &v44 && v48 + 24 * v49 > &v44)
      {
        v38 = &v44 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v12 = v48;
        v11 = (v48 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v11 = &v44;
        v12 = v48;
      }
    }

    v13 = &v12[24 * v49];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    v15 = ++v49;
    if (v47[0])
    {
      v44 = 5;
      v45 = a5;
      v16 = &v44;
      v17 = v48;
      if (v15 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v15 > &v44)
        {
          v39 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v15 + 1, 24);
          v17 = v48;
          v16 = (v48 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v15 + 1, 24);
          v16 = &v44;
          v17 = v48;
        }
      }

      v18 = &v17[24 * v49];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      v20 = ++v49;
      if (v47[0])
      {
        v44 = 3;
        v45 = " must be pdl type, but got ";
        v46 = 27;
        v21 = &v44;
        v22 = v48;
        if (v20 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v20 > &v44)
          {
            v40 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v20 + 1, 24);
            v22 = v48;
            v21 = (v48 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v20 + 1, 24);
            v21 = &v44;
            v22 = v48;
          }
        }

        v23 = &v22[24 * v49];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        ++v49;
        if (v47[0])
        {
          v25 = &v44;
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, a2);
          v26 = v48;
          if (v49 >= v50)
          {
            if (v48 <= &v44 && v48 + 24 * v49 > &v44)
            {
              v41 = &v44 - v48;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v26 = v48;
              v25 = (v48 + v41);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
              v25 = &v44;
              v26 = v48;
            }
          }

          v27 = &v26[24 * v49];
          v28 = *v25;
          *(v27 + 2) = *(v25 + 2);
          *v27 = v28;
          ++v49;
        }
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v55;
      v31 = __p;
      if (v55 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v55 = v29;
      operator delete(v31);
    }

    v32 = v52;
    if (v52)
    {
      v33 = v53;
      v34 = v52;
      if (v53 != v52)
      {
        do
        {
          v36 = *--v33;
          v35 = v36;
          *v33 = 0;
          if (v36)
          {
            operator delete[](v35);
          }
        }

        while (v33 != v32);
        v34 = v52;
      }

      v53 = v32;
      operator delete(v34);
    }

    if (v48 != v51)
    {
      free(v48);
    }
  }

  return v10;
}

uint64_t mlir::pdl_interp::AreEqualOp::parse(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x1E69E9840];
  v17[0] = v18;
  v17[1] = 0x400000000;
  v9 = 0;
  v14 = v16;
  v15 = 0x200000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 720))(a1, v17, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 104))(a1))
  {
    v10 = 0;
    if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v10))
    {
      v9 = v10;
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 56))(a1))
      {
        v10 = 0;
        v5 = (*(*a1 + 808))(a1, &v10);
        if ((v5 & 0x100) == 0)
        {
LABEL_7:
          mlir::BlockRange::BlockRange(&v10, v14, v15);
          mlir::OperationState::addSuccessors(a2, v10, v11);
          v10 = &v9;
          v11 = 1;
          v12 = &v9;
          v13 = 1;
          v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(a1, v17, &v10, v4, a2 + 16) & 1;
          goto LABEL_16;
        }

        if (v5)
        {
          llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v14, &v10);
          while (((*(*a1 + 128))(a1) & 1) != 0)
          {
            if (((*(*a1 + 800))(a1, &v10) & 1) == 0)
            {
              goto LABEL_15;
            }

            v7 = v15;
            if (v15 >= HIDWORD(v15))
            {
              llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v14, &v10);
            }

            else
            {
              *(v14 + v15) = v10;
              LODWORD(v15) = v7 + 1;
            }
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_15:
  v6 = 0;
LABEL_16:
  if (v14 != v16)
  {
    free(v14);
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  return v6;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 2);
  v8 = *a3;
  v9 = a3[1];
  v10 = *a3 + 8 * v9;
  v11 = a3[2];
  v12 = a3[3];
  v13 = &v11[8 * v12];
  v14 = 0;
  if (v9 | v12)
  {
    v15 = *a3;
    v16 = a3[2];
    do
    {
      v17 = v15 == v10;
      v15 += 8;
      if (v17)
      {
        v16 += 8;
        v15 = v10;
      }

      ++v14;
    }

    while (v15 != v10 || v16 != v13);
  }

  if (v14 == v7)
  {
    v18 = *a2;
    v56 = *a2;
    v57 = v8;
    v58 = v11;
    v59 = v10;
    v60 = v13;
    if (v7)
    {
      v19 = v18 + 32 * v7;
      while (1)
      {
        v20 = &unk_1F5B04EB0;
        do
        {
          while (1)
          {
            v22 = *(v20 - 1);
            v23 = (&v57 + (*v20 >> 1));
            if (*v20)
            {
              break;
            }

            v20 += 2;
            v21 = v22(v23);
            if (v21)
            {
              goto LABEL_16;
            }
          }

          v20 += 2;
          v21 = (*(*v23 + v22))();
        }

        while (!v21);
LABEL_16:
        if (((*(*a1 + 728))(a1, v18, *v21, a5) & 1) == 0)
        {
          return 0;
        }

        v18 = v56 + 32;
        v56 += 32;
        if (v57 == v59)
        {
          if (v58 != v60)
          {
            v58 += 8;
          }
        }

        else
        {
          v57 += 8;
        }

        if (v18 == v19)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v52 = 257;
    (*(*a1 + 24))(&v56, a1, a4, v51);
    if (v56)
    {
      v53 = 5;
      v54 = v7;
      v24 = &v53;
      v25 = v59;
      if (v60 >= HIDWORD(v60))
      {
        if (v59 <= &v53 && v59 + 24 * v60 > &v53)
        {
          v48 = &v53 - v59;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v60 + 1, 24);
          v25 = v59;
          v24 = (v59 + v48);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v60 + 1, 24);
          v24 = &v53;
          v25 = v59;
        }
      }

      v26 = &v25[24 * v60];
      v27 = *v24;
      *(v26 + 2) = *(v24 + 2);
      *v26 = v27;
      v28 = (v60 + 1);
      LODWORD(v60) = v60 + 1;
      if (v56)
      {
        v53 = 3;
        v54 = " operands present, but expected ";
        v55 = 32;
        v29 = &v53;
        v30 = v59;
        if (v28 >= HIDWORD(v60))
        {
          if (v59 <= &v53 && v59 + 24 * v28 > &v53)
          {
            v49 = &v53 - v59;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v28 + 1, 24);
            v30 = v59;
            v29 = (v59 + v49);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v28 + 1, 24);
            v29 = &v53;
            v30 = v59;
          }
        }

        v31 = &v30[24 * v60];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        v33 = (v60 + 1);
        LODWORD(v60) = v60 + 1;
        if (v56)
        {
          v53 = 5;
          v54 = v14;
          v34 = &v53;
          v35 = v59;
          if (v33 >= HIDWORD(v60))
          {
            if (v59 <= &v53 && v59 + 24 * v33 > &v53)
            {
              v50 = &v53 - v59;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v33 + 1, 24);
              v35 = v59;
              v34 = (v59 + v50);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v33 + 1, 24);
              v34 = &v53;
              v35 = v59;
            }
          }

          v36 = &v35[24 * v60];
          v37 = *v34;
          *(v36 + 2) = *(v34 + 2);
          *v36 = v37;
          LODWORD(v60) = v60 + 1;
        }
      }
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
    if (v56)
    {
      mlir::InFlightDiagnostic::report(&v56);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v65;
        v41 = __p;
        if (v65 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v65 = v39;
        operator delete(v41);
      }

      v42 = v62;
      if (v62)
      {
        v43 = v63;
        v44 = v62;
        if (v63 != v62)
        {
          do
          {
            v46 = *--v43;
            v45 = v46;
            *v43 = 0;
            if (v46)
            {
              operator delete[](v45);
            }
          }

          while (v43 != v42);
          v44 = v62;
        }

        v63 = v42;
        operator delete(v44);
      }

      if (v59 != v61)
      {
        free(v59);
      }
    }
  }

  return v38;
}

uint64_t mlir::pdl_interp::BranchOp::parse(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (((*(*a1 + 800))(a1, &v7) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = v7;
  v5 = *(a2 + 208);
  if (v5 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v5 + 1, 8);
    LODWORD(v5) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v5) = v4;
  ++*(a2 + 208);
  return 1;
}

void mlir::pdl_interp::BranchOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  v9 = v11;
  v10 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::pdl_interp::CheckAttributeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v21 = v4;
  if (v4)
  {
    v37.var0 = "constantValue";
    v37.var1 = 13;
    v6 = mlir::DictionaryAttr::get(&v21, v37);
    if (v6)
    {
      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v25, a4);
    if (v25[0])
    {
      v22 = 3;
      v23 = "expected DictionaryAttr to set properties";
      v24 = 41;
      v8 = &v22;
      v9 = v26;
      if (v27 >= v28)
      {
        if (v26 <= &v22 && v26 + 24 * v27 > &v22)
        {
          v20 = &v22 - v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
          v9 = v26;
          v8 = (v26 + v20);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
          v8 = &v22;
          v9 = v26;
        }
      }

      v10 = &v9[24 * v27];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v27;
      if (v25[0])
      {
        mlir::InFlightDiagnostic::report(v25);
      }
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v33;
        v14 = __p;
        if (v33 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v33 = v12;
        operator delete(v14);
      }

      v15 = v30;
      if (v30)
      {
        v16 = v31;
        v17 = v30;
        if (v31 != v30)
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
          v17 = v30;
        }

        v31 = v15;
        operator delete(v17);
      }

      if (v26 != v29)
      {
        free(v26);
      }
    }

    return 0;
  }
}

uint64_t mlir::pdl_interp::CheckAttributeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "constantValue", 13, *a2);
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

uint64_t mlir::pdl_interp::CheckAttributeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    v4 = a1;
    v5 = operator new(8uLL);
    *v5 = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::pdl_interp::CheckAttributeOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    a1 = v4;
  }

  return (*(*a1 + 48))(a1, v3) & 1;
}

void mlir::pdl_interp::CheckAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v10 = *(a2 + 256);
  if (!v10)
  {
    v11 = operator new(8uLL);
    *v11 = 0;
    *(a2 + 256) = v11;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v17;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v16;
    {
      mlir::pdl_interp::CheckAttributeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v10 = *(a2 + 256);
  }

  *v10 = a4;
  v12 = *(a2 + 208);
  if (v12 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v12 + 1, 8);
    LODWORD(v12) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v12) = a5;
  v13 = *(a2 + 212);
  v14 = (*(a2 + 208) + 1);
  *(a2 + 208) = v14;
  if (v14 >= v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v14 + 1, 8);
    LODWORD(v14) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v14) = a6;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckAttributeOp::verifyInvariantsImpl(mlir::pdl_interp::CheckAttributeOp *this)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64))
  {
    return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
  }

  v11 = "requires attribute 'constantValue'";
  v12 = 259;
  mlir::OpState::emitOpError(this, &v11, v13);
  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v13[0])
  {
    mlir::InFlightDiagnostic::report(v13);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v19;
      v4 = __p;
      if (v19 != __p)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v19 = v2;
      operator delete(v4);
    }

    v5 = v16;
    if (v16)
    {
      v6 = v17;
      v7 = v16;
      if (v17 != v16)
      {
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
        v7 = v16;
      }

      v17 = v5;
      operator delete(v7);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }

  return v1;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    return 1;
  }

  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v44);
  if (v44[0])
  {
    v41 = 3;
    v42 = " #";
    v43 = 2;
    v7 = &v41;
    v8 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v35 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v8 = v45;
        v7 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v7 = &v41;
        v8 = v45;
      }
    }

    v9 = &v8[24 * v46];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a5;
      v12 = &v41;
      v13 = v45;
      if (v11 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v11 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v13 = v45;
          v12 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v12 = &v41;
          v13 = v45;
        }
      }

      v14 = &v13[24 * v46];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v43 = 53;
        v17 = &v41;
        v18 = v45;
        if (v16 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v16 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v18 = v45;
            v17 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v17 = &v41;
            v18 = v45;
          }
        }

        v19 = &v18[24 * v46];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v46;
        if (v44[0])
        {
          v21 = &v41;
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
          v22 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v46 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v22 = v45;
              v21 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v21 = &v41;
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
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
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

uint64_t mlir::pdl_interp::CheckAttributeOp::parse(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13 = 0;
  v16 = v18;
  v17 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v14, 1))
  {
    v20 = 257;
    if ((*(*a1 + 400))(a1, "is", 2, v19) & 1) != 0 && ((*(*a1 + 440))(a1, &v13, 0))
    {
      v4 = v13;
      if (v13)
      {
        v5 = a2[32];
        if (!v5)
        {
          v6 = operator new(8uLL);
          *v6 = 0;
          a2[32] = v6;
          a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
          a2[35] = v19;
          a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
          a2[37] = v19;
          {
            mlir::pdl_interp::CheckAttributeOp::readProperties();
          }

          a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
          v5 = a2[32];
          v4 = v13;
        }

        *v5 = v4;
      }

      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 14))
      {
        mlir::NamedAttrList::get((a2 + 14), **(a2[1] + 96));
        if ((*(*a1 + 56))(a1))
        {
          v19[0] = 0;
          v7 = (*(*a1 + 808))(a1, v19);
          if ((v7 & 0x100) == 0)
          {
LABEL_13:
            mlir::BlockRange::BlockRange(v19, v16, v17);
            mlir::OperationState::addSuccessors(a2, v19[0], v19[1]);
            v8 = (*(*a1 + 32))(a1);
            v9 = mlir::Builder::getType<mlir::pdl::AttributeType>(v8);
            v10 = (*(*a1 + 728))(a1, v14, v9, a2 + 2) & 1;
            goto LABEL_22;
          }

          if (v7)
          {
            llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v16, v19);
            while (((*(*a1 + 128))(a1) & 1) != 0)
            {
              if (((*(*a1 + 800))(a1, v19) & 1) == 0)
              {
                goto LABEL_21;
              }

              v11 = v17;
              if (v17 >= HIDWORD(v17))
              {
                llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v16, v19);
              }

              else
              {
                *(v16 + v17) = v19[0];
                LODWORD(v17) = v11 + 1;
              }
            }

            goto LABEL_13;
          }
        }
      }
    }
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  if (v16 != v18)
  {
    free(v16);
  }

  return v10;
}

uint64_t mlir::Builder::getType<mlir::pdl::AttributeType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
}

void mlir::pdl_interp::CheckAttributeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29545;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "is", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v29 = v31;
  v31[0] = "constantValue";
  v31[1] = 13;
  v30 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v29, v30);
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 15917;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "->", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v21 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v22 = v20 - 1;
  if (v22)
  {
    v23 = (v21 + 56);
    do
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = v25[4];
      if (v25[3] - v26 <= 1uLL)
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      else
      {
        *v26 = 8236;
        v25[4] += 2;
      }

      v24 = *v23;
      v23 += 4;
      (*(*a2 + 176))(a2, v24);
      --v22;
    }

    while (v22);
  }

LABEL_24:
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
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
    goto LABEL_68;
  }

  v74.var0 = "compareAtLeast";
  v74.var1 = 14;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 59;
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
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
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

  v75.var0 = "count";
  v75.var1 = 5;
  v36 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 50;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
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
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
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

  if (v72)
  {
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

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
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
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "compareAtLeast", 14, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "count", 5, v8);
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

uint64_t mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(uint64_t a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_11;
  }

  v35 = a1;
  v8 = a4;
  v9 = a5;
  Value = mlir::AffineMapAttr::getValue(&v35);
  isSignlessInteger = mlir::Type::isSignlessInteger(&Value, 32);
  a5 = v9;
  a4 = v8;
  if (!isSignlessInteger)
  {
    goto LABEL_11;
  }

  v34 = a1;
  mlir::IntegerAttr::getValue(&v34, &__p);
  v11 = v41[0] - 1;
  if (v41[0] >= 0x41)
  {
    p_p = (__p + 8 * (v11 >> 6));
  }

  else
  {
    p_p = &__p;
  }

  v13 = (1 << v11) & *p_p;
  if (v41[0] >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  a4 = v8;
  a5 = v9;
  if (!v13)
  {
    return 1;
  }

LABEL_11:
  a4(&__p, a5);
  if (__p)
  {
    LODWORD(Value) = 3;
    v37 = "attribute '";
    v38 = 11;
    p_Value = &Value;
    v15 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &Value && v42 + 24 * v43 > &Value)
      {
        v32 = &Value - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v15 = v42;
        p_Value = v42 + v32;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        p_Value = &Value;
        v15 = v42;
      }
    }

    v16 = &v15[24 * v43];
    v17 = *p_Value;
    *(v16 + 2) = *(p_Value + 2);
    *v16 = v17;
    ++v43;
    if (__p)
    {
      v39 = 261;
      Value = a2;
      v37 = a3;
      mlir::Diagnostic::operator<<(v41, &Value);
      if (__p)
      {
        LODWORD(Value) = 3;
        v37 = "' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative";
        v38 = 93;
        v18 = &Value;
        v19 = v42;
        if (v43 >= v44)
        {
          if (v42 <= &Value && v42 + 24 * v43 > &Value)
          {
            v33 = &Value - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v19 = v42;
            v18 = v42 + v33;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v18 = &Value;
            v19 = v42;
          }
        }

        v20 = &v19[24 * v43];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        ++v43;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
  if (__p)
  {
    mlir::InFlightDiagnostic::report(&__p);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v23 = v48;
    if (v48)
    {
      v24 = v49;
      v25 = v48;
      if (v49 != v48)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = v48;
      }

      v49 = v23;
      operator delete(v25);
    }

    v26 = v46;
    if (v46)
    {
      v27 = v47;
      v28 = v46;
      if (v47 != v46)
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
        v28 = v46;
      }

      v47 = v26;
      operator delete(v28);
    }

    if (v42 != v45)
    {
      free(v42);
    }
  }

  return v22;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 1) & 1;
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::pdl_interp::CheckOperandCountOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 1) & 1;
    }
  }

  return 0;
}

void *mlir::pdl_interp::CheckOperandCountOp::getCount(mlir::pdl_interp::CheckOperandCountOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v5, &__p);
  if (v4 <= 0x40)
  {
    return __p;
  }

  v2 = *__p;
  operator delete[](__p);
  return v2;
}

void mlir::pdl_interp::CheckOperandCountOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v26 = a3;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  v16 = IntegerAttr;
  v17 = *(a2 + 256);
  if (v17)
  {
    *(v17 + 8) = IntegerAttr;
    if (!a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = operator new(0x10uLL);
    *v21 = 0;
    v21[1] = 0;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v28;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v27;
    {
      mlir::pdl_interp::CheckOperandCountOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 8) = v16;
    if (!a5)
    {
LABEL_3:
      v18 = *(a2 + 208);
      if (v18 < *(a2 + 212))
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  UnitAttr = mlir::Builder::getUnitAttr(a1, v15);
  v23 = UnitAttr;
  v24 = *(a2 + 256);
  if (v24)
  {
    *v24 = UnitAttr;
    v18 = *(a2 + 208);
    if (v18 < *(a2 + 212))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v25 = operator new(0x10uLL);
  *v25 = 0;
  v25[1] = 0;
  *(a2 + 256) = v25;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v30;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v29;
  {
    mlir::pdl_interp::CheckOperandCountOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  **(a2 + 256) = v23;
  v18 = *(a2 + 208);
  if (v18 >= *(a2 + 212))
  {
LABEL_12:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v18 + 1, 8);
    LODWORD(v18) = *(a2 + 208);
  }

LABEL_4:
  *(*(a2 + 200) + 8 * v18) = a6;
  v19 = *(a2 + 212);
  v20 = (*(a2 + 208) + 1);
  *(a2 + 208) = v20;
  if (v20 >= v19)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v20 + 1, 8);
    LODWORD(v20) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v20) = a7;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckOperandCountOp::verifyInvariantsImpl(mlir::pdl_interp::CheckOperandCountOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v18[0] = v2;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v4, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (v18[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "compareAtLeast", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18)))
    {
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'count'";
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

uint64_t mlir::pdl_interp::CheckOperandCountOp::parse(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24 = 0;
  v27 = v29;
  v28 = 0x200000000;
  v33 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v25, 1))
    {
      v33 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, &v30))
      {
        if ((*(*a1 + 408))(a1, "at_least", 8))
        {
          v4 = (*(*a1 + 32))(a1);
          UnitAttr = mlir::Builder::getUnitAttr(v4, v5);
          v7 = a2[32];
          if (!v7)
          {
            v8 = operator new(0x10uLL);
            *v8 = 0;
            v8[1] = 0;
            a2[32] = v8;
            a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
            a2[35] = &v30;
            a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
            a2[37] = &v30;
            {
              mlir::pdl_interp::CheckOperandCountOp::readProperties();
            }

            a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
            v7 = a2[32];
          }

          *v7 = UnitAttr;
        }

        v9 = (*(*a1 + 32))(a1);
        IntegerType = mlir::Builder::getIntegerType(v9, 32);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v24, IntegerType))
        {
          v11 = v24;
          if (v24)
          {
            v12 = a2[32];
            if (!v12)
            {
              v13 = operator new(0x10uLL);
              *v13 = 0;
              v13[1] = 0;
              a2[32] = v13;
              a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
              a2[35] = &v30;
              a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
              a2[37] = &v30;
              {
                mlir::pdl_interp::CheckOperandCountOp::readProperties();
              }

              a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
              v12 = a2[32];
              v11 = v24;
            }

            *(v12 + 8) = v11;
          }

          v23 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v14 = a2[1];
            v30 = a1;
            v31 = &v23;
            v32 = a2;
            v15 = mlir::NamedAttrList::get((a2 + 14), **(v14 + 96));
            if (!v15 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v15, "compareAtLeast", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v30) & 1) != 0)
            {
              v16 = mlir::NamedAttrList::get((a2 + 14), *(*(v14 + 96) + 8));
              if (!v16 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v16, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v30)) && ((*(*a1 + 56))(a1))
              {
                v30 = 0;
                v17 = (*(*a1 + 808))(a1, &v30);
                if ((v17 & 0x100) == 0)
                {
LABEL_24:
                  mlir::BlockRange::BlockRange(&v30, v27, v28);
                  mlir::OperationState::addSuccessors(a2, v30, v31);
                  v18 = (*(*a1 + 32))(a1);
                  v19 = mlir::Builder::getType<mlir::pdl::OperationType>(v18);
                  v20 = (*(*a1 + 728))(a1, v25, v19, a2 + 2) & 1;
                  goto LABEL_33;
                }

                if (v17)
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v27, &v30);
                  while (((*(*a1 + 128))(a1) & 1) != 0)
                  {
                    if (((*(*a1 + 800))(a1, &v30) & 1) == 0)
                    {
                      goto LABEL_32;
                    }

                    v21 = v28;
                    if (v28 >= HIDWORD(v28))
                    {
                      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v27, &v30);
                    }

                    else
                    {
                      *(v27 + v28) = v30;
                      LODWORD(v28) = v21 + 1;
                    }
                  }

                  goto LABEL_24;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_32:
  v20 = 0;
LABEL_33:
  if (v27 != v29)
  {
    free(v27);
  }

  return v20;
}

uint64_t mlir::Builder::getType<mlir::pdl::OperationType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
}

void mlir::pdl_interp::CheckOperandCountOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x1E69E9840];
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] - v13 > 1uLL)
  {
    *v13 = 29545;
    v12[4] += 2;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
    {
      goto LABEL_23;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, "is", 2uLL);
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
    {
      goto LABEL_23;
    }
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 7uLL)
  {
    *v17 = 0x747361656C5F7461;
    v16[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(v16, "at_least", 8uLL);
  }

LABEL_23:
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9));
  v37 = v39;
  v39[0] = "compareAtLeast";
  v39[1] = 14;
  v39[2] = "count";
  v39[3] = 5;
  v38 = 0x200000002;
  mlir::Attribute::getContext((*this + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v37, v38);
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
  if (v24[3] - v25 > 1uLL)
  {
    *v25 = 15917;
    v24[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v24, "->", 2uLL);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v28 = v36;
    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v28 = v36;
    if (!v36)
    {
      goto LABEL_37;
    }
  }

  v29 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v30 = v28 - 1;
  if (v30)
  {
    v31 = (v29 + 56);
    do
    {
      v33 = (*(*a2 + 16))(a2);
      v34 = v33[4];
      if (v33[3] - v34 <= 1uLL)
      {
        llvm::raw_ostream::write(v33, ", ", 2uLL);
      }

      else
      {
        *v34 = 8236;
        v33[4] += 2;
      }

      v32 = *v31;
      v31 += 4;
      (*(*a2 + 176))(a2, v32);
      --v30;
    }

    while (v30);
  }

LABEL_37:
  if (v37 != v39)
  {
    free(v37);
  }
}

uint64_t mlir::pdl_interp::CheckOperationNameOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::pdl_interp::CheckOperationNameOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::pdl_interp::CheckOperationNameOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v20 = 261;
  v19[0] = a4;
  v19[1] = a5;
  StringAttr = mlir::Builder::getStringAttr(a1, v19);
  v14 = *(a2 + 256);
  if (!v14)
  {
    v15 = operator new(8uLL);
    *v15 = 0;
    *(a2 + 256) = v15;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v22;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v22;
    {
      mlir::pdl_interp::CheckOperationNameOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v14 = *(a2 + 256);
  }

  *v14 = StringAttr;
  v16 = *(a2 + 208);
  if (v16 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v16 + 1, 8);
    LODWORD(v16) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v16) = a6;
  v17 = *(a2 + 212);
  v18 = (*(a2 + 208) + 1);
  *(a2 + 208) = v18;
  if (v18 >= v17)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v18 + 1, 8);
    LODWORD(v18) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v18) = a7;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckOperationNameOp::verifyInvariantsImpl(mlir::pdl_interp::CheckOperationNameOp *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v1, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'name'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
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
  }

  return v3;
}

uint64_t mlir::pdl_interp::CheckOperationNameOp::parse(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19 = 0;
  v22 = v24;
  v23 = 0x200000000;
  v28 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v20, 1))
    {
      v28 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, &v25))
      {
        v4 = (*(*a1 + 32))(a1);
        v6 = mlir::NoneType::get(*v4, v5);
        if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v19, v6))
        {
          v7 = v19;
          if (v19)
          {
            v8 = a2[32];
            if (!v8)
            {
              v9 = operator new(8uLL);
              *v9 = 0;
              a2[32] = v9;
              a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
              a2[35] = &v25;
              a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
              a2[37] = &v25;
              {
                mlir::pdl_interp::CheckOperationNameOp::readProperties();
              }

              a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
              v8 = a2[32];
              v7 = v19;
            }

            *v8 = v7;
          }

          v18 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v10 = a2[1];
            v25 = a1;
            v26 = &v18;
            v27 = a2;
            v11 = mlir::NamedAttrList::get((a2 + 14), **(v10 + 96));
            if (!v11 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v11, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v25)) && ((*(*a1 + 56))(a1))
            {
              v25 = 0;
              v12 = (*(*a1 + 808))(a1, &v25);
              if ((v12 & 0x100) == 0)
              {
LABEL_16:
                mlir::BlockRange::BlockRange(&v25, v22, v23);
                mlir::OperationState::addSuccessors(a2, v25, v26);
                v13 = (*(*a1 + 32))(a1);
                v14 = mlir::Builder::getType<mlir::pdl::OperationType>(v13);
                v15 = (*(*a1 + 728))(a1, v20, v14, a2 + 2) & 1;
                goto LABEL_25;
              }

              if (v12)
              {
                llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v22, &v25);
                while (((*(*a1 + 128))(a1) & 1) != 0)
                {
                  if (((*(*a1 + 800))(a1, &v25) & 1) == 0)
                  {
                    goto LABEL_24;
                  }

                  v16 = v23;
                  if (v23 >= HIDWORD(v23))
                  {
                    llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v22, &v25);
                  }

                  else
                  {
                    *(v22 + v23) = v25;
                    LODWORD(v23) = v16 + 1;
                  }
                }

                goto LABEL_16;
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  v15 = 0;
LABEL_25:
  if (v22 != v24)
  {
    free(v22);
  }

  return v15;
}

void mlir::pdl_interp::CheckOperationNameOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v35[4] = *MEMORY[0x1E69E9840];
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] - v13 > 1uLL)
  {
    *v13 = 29545;
    v12[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, "is", 2uLL);
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v33 = v35;
  v35[0] = "name";
  v35[1] = 4;
  v34 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v17, v33, v34);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] - v21 > 1uLL)
  {
    *v21 = 15917;
    v20[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, "->", 2uLL);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v24 = v32;
    if (!v32)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v24 = v32;
    if (!v32)
    {
      goto LABEL_30;
    }
  }

  v25 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v26 = v24 - 1;
  if (v26)
  {
    v27 = (v25 + 56);
    do
    {
      v29 = (*(*a2 + 16))(a2);
      v30 = v29[4];
      if (v29[3] - v30 <= 1uLL)
      {
        llvm::raw_ostream::write(v29, ", ", 2uLL);
      }

      else
      {
        *v30 = 8236;
        v29[4] += 2;
      }

      v28 = *v27;
      v27 += 4;
      (*(*a2 + 176))(a2, v28);
      --v26;
    }

    while (v26);
  }

LABEL_30:
  if (v33 != v35)
  {
    free(v33);
  }
}

uint64_t mlir::pdl_interp::CheckResultCountOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 1) & 1;
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::pdl_interp::CheckResultCountOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 1) & 1;
    }
  }

  return 0;
}

void mlir::pdl_interp::CheckResultCountOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v26 = a3;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  v16 = IntegerAttr;
  v17 = *(a2 + 256);
  if (v17)
  {
    *(v17 + 8) = IntegerAttr;
    if (!a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = operator new(0x10uLL);
    *v21 = 0;
    v21[1] = 0;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v28;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v27;
    {
      mlir::pdl_interp::CheckResultCountOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 8) = v16;
    if (!a5)
    {
LABEL_3:
      v18 = *(a2 + 208);
      if (v18 < *(a2 + 212))
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  UnitAttr = mlir::Builder::getUnitAttr(a1, v15);
  v23 = UnitAttr;
  v24 = *(a2 + 256);
  if (v24)
  {
    *v24 = UnitAttr;
    v18 = *(a2 + 208);
    if (v18 < *(a2 + 212))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v25 = operator new(0x10uLL);
  *v25 = 0;
  v25[1] = 0;
  *(a2 + 256) = v25;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v30;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v29;
  {
    mlir::pdl_interp::CheckResultCountOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  **(a2 + 256) = v23;
  v18 = *(a2 + 208);
  if (v18 >= *(a2 + 212))
  {
LABEL_12:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v18 + 1, 8);
    LODWORD(v18) = *(a2 + 208);
  }

LABEL_4:
  *(*(a2 + 200) + 8 * v18) = a6;
  v19 = *(a2 + 212);
  v20 = (*(a2 + 208) + 1);
  *(a2 + 208) = v20;
  if (v20 >= v19)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v20 + 1, 8);
    LODWORD(v20) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v20) = a7;
  ++*(a2 + 208);
}

uint64_t mlir::pdl_interp::CheckResultCountOp::parse(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24 = 0;
  v27 = v29;
  v28 = 0x200000000;
  v33 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v25, 1))
    {
      v33 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, &v30))
      {
        if ((*(*a1 + 408))(a1, "at_least", 8))
        {
          v4 = (*(*a1 + 32))(a1);
          UnitAttr = mlir::Builder::getUnitAttr(v4, v5);
          v7 = a2[32];
          if (!v7)
          {
            v8 = operator new(0x10uLL);
            *v8 = 0;
            v8[1] = 0;
            a2[32] = v8;
            a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
            a2[35] = &v30;
            a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
            a2[37] = &v30;
            {
              mlir::pdl_interp::CheckResultCountOp::readProperties();
            }

            a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
            v7 = a2[32];
          }

          *v7 = UnitAttr;
        }

        v9 = (*(*a1 + 32))(a1);
        IntegerType = mlir::Builder::getIntegerType(v9, 32);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v24, IntegerType))
        {
          v11 = v24;
          if (v24)
          {
            v12 = a2[32];
            if (!v12)
            {
              v13 = operator new(0x10uLL);
              *v13 = 0;
              v13[1] = 0;
              a2[32] = v13;
              a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
              a2[35] = &v30;
              a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
              a2[37] = &v30;
              {
                mlir::pdl_interp::CheckResultCountOp::readProperties();
              }

              a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
              v12 = a2[32];
              v11 = v24;
            }

            *(v12 + 8) = v11;
          }

          v23 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v14 = a2[1];
            v30 = a1;
            v31 = &v23;
            v32 = a2;
            v15 = mlir::NamedAttrList::get((a2 + 14), **(v14 + 96));
            if (!v15 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v15, "compareAtLeast", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v30) & 1) != 0)
            {
              v16 = mlir::NamedAttrList::get((a2 + 14), *(*(v14 + 96) + 8));
              if (!v16 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v16, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v30)) && ((*(*a1 + 56))(a1))
              {
                v30 = 0;
                v17 = (*(*a1 + 808))(a1, &v30);
                if ((v17 & 0x100) == 0)
                {
LABEL_24:
                  mlir::BlockRange::BlockRange(&v30, v27, v28);
                  mlir::OperationState::addSuccessors(a2, v30, v31);
                  v18 = (*(*a1 + 32))(a1);
                  v19 = mlir::Builder::getType<mlir::pdl::OperationType>(v18);
                  v20 = (*(*a1 + 728))(a1, v25, v19, a2 + 2) & 1;
                  goto LABEL_33;
                }

                if (v17)
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v27, &v30);
                  while (((*(*a1 + 128))(a1) & 1) != 0)
                  {
                    if (((*(*a1 + 800))(a1, &v30) & 1) == 0)
                    {
                      goto LABEL_32;
                    }

                    v21 = v28;
                    if (v28 >= HIDWORD(v28))
                    {
                      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v27, &v30);
                    }

                    else
                    {
                      *(v27 + v28) = v30;
                      LODWORD(v28) = v21 + 1;
                    }
                  }

                  goto LABEL_24;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_32:
  v20 = 0;
LABEL_33:
  if (v27 != v29)
  {
    free(v27);
  }

  return v20;
}

uint64_t mlir::pdl_interp::CheckTypeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "type";
  v56.var1 = 4;
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
    v43 = 49;
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

uint64_t mlir::pdl_interp::CheckTypeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "type", 4, *a2);
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

uint64_t mlir::pdl_interp::CheckTypeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::pdl_interp::CheckTypeOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::pdl_interp::CheckTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v10 = *(a2 + 256);
  if (!v10)
  {
    v11 = operator new(8uLL);
    *v11 = 0;
    *(a2 + 256) = v11;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v17;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v16;
    {
      mlir::pdl_interp::CheckTypeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v10 = *(a2 + 256);
  }

  *v10 = a4;
  v12 = *(a2 + 208);
  if (v12 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v12 + 1, 8);
    LODWORD(v12) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v12) = a5;
  v13 = *(a2 + 212);
  v14 = (*(a2 + 208) + 1);
  *(a2 + 208) = v14;
  if (v14 >= v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v14 + 1, 8);
    LODWORD(v14) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v14) = a6;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckTypeOp::verifyInvariantsImpl(mlir::pdl_interp::CheckTypeOp *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v1, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'type'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
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
  }

  return v3;
}

uint64_t mlir::pdl_interp::CheckTypeOp::parse(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19 = 0;
  v22 = v24;
  v23 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v20, 1))
  {
    v28 = 257;
    if ((*(*a1 + 400))(a1, "is", 2, &v25))
    {
      v4 = (*(*a1 + 32))(a1);
      v6 = mlir::NoneType::get(*v4, v5);
      if (mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v19, v6))
      {
        v7 = v19;
        if (v19)
        {
          v8 = a2[32];
          if (!v8)
          {
            v9 = operator new(8uLL);
            *v9 = 0;
            a2[32] = v9;
            a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
            a2[35] = &v25;
            a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
            a2[37] = &v25;
            {
              mlir::pdl_interp::CheckTypeOp::readProperties();
            }

            a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
            v8 = a2[32];
            v7 = v19;
          }

          *v8 = v7;
        }

        v18 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 14))
        {
          v10 = a2[1];
          v25 = a1;
          v26 = &v18;
          v27 = a2;
          v11 = mlir::NamedAttrList::get((a2 + 14), **(v10 + 96));
          if (!v11 || (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v11, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v25)) && ((*(*a1 + 56))(a1))
          {
            v25 = 0;
            v12 = (*(*a1 + 808))(a1, &v25);
            if ((v12 & 0x100) == 0)
            {
LABEL_15:
              mlir::BlockRange::BlockRange(&v25, v22, v23);
              mlir::OperationState::addSuccessors(a2, v25, v26);
              v13 = (*(*a1 + 32))(a1);
              v14 = mlir::Builder::getType<mlir::pdl::TypeType>(v13);
              v15 = (*(*a1 + 728))(a1, v20, v14, a2 + 2) & 1;
              goto LABEL_24;
            }

            if (v12)
            {
              llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v22, &v25);
              while (((*(*a1 + 128))(a1) & 1) != 0)
              {
                if (((*(*a1 + 800))(a1, &v25) & 1) == 0)
                {
                  goto LABEL_23;
                }

                v16 = v23;
                if (v23 >= HIDWORD(v23))
                {
                  llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v22, &v25);
                }

                else
                {
                  *(v22 + v23) = v25;
                  LODWORD(v23) = v16 + 1;
                }
              }

              goto LABEL_15;
            }
          }
        }
      }
    }
  }

LABEL_23:
  v15 = 0;
LABEL_24:
  if (v22 != v24)
  {
    free(v22);
  }

  return v15;
}

uint64_t mlir::Builder::getType<mlir::pdl::TypeType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
}

void mlir::pdl_interp::CheckTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29545;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "is", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v29 = v31;
  v31[0] = "type";
  v31[1] = 4;
  v30 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v29, v30);
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 15917;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "->", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v21 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v22 = v20 - 1;
  if (v22)
  {
    v23 = (v21 + 56);
    do
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = v25[4];
      if (v25[3] - v26 <= 1uLL)
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      else
      {
        *v26 = 8236;
        v25[4] += 2;
      }

      v24 = *v23;
      v23 += 4;
      (*(*a2 + 176))(a2, v24);
      --v22;
    }

    while (v22);
  }

LABEL_24:
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::pdl_interp::CheckTypesOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "types";
  v56.var1 = 5;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 50;
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

uint64_t mlir::pdl_interp::CheckTypesOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "types", 5, *a2);
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

uint64_t mlir::pdl_interp::CheckTypesOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::pdl_interp::CheckTypesOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::pdl_interp::CheckTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v10 = *(a2 + 256);
  if (!v10)
  {
    v11 = operator new(8uLL);
    *v11 = 0;
    *(a2 + 256) = v11;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v17;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v16;
    {
      mlir::pdl_interp::CheckTypesOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v10 = *(a2 + 256);
  }

  *v10 = a4;
  v12 = *(a2 + 208);
  if (v12 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v12 + 1, 8);
    LODWORD(v12) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v12) = a5;
  v13 = *(a2 + 212);
  v14 = (*(a2 + 208) + 1);
  *(a2 + 208) = v14;
  if (v14 >= v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v14 + 1, 8);
    LODWORD(v14) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v14) = a6;
  ++*(a2 + 208);
}

BOOL mlir::pdl_interp::CheckTypesOp::verifyInvariantsImpl(mlir::pdl_interp::CheckTypesOp *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v1, "types", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'types'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
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
  }

  return v3;
}

uint64_t mlir::pdl_interp::CheckTypesOp::parse(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20 = 0;
  v23 = v25;
  v24 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v21, 1))
  {
    v29 = 257;
    if ((*(*a1 + 400))(a1, "are", 3, &v26))
    {
      v4 = (*(*a1 + 32))(a1);
      v6 = mlir::NoneType::get(*v4, v5);
      if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v20, v6))
      {
        v7 = v20;
        if (v20)
        {
          v8 = a2[32];
          if (!v8)
          {
            v9 = operator new(8uLL);
            *v9 = 0;
            a2[32] = v9;
            a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
            a2[35] = &v26;
            a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
            a2[37] = &v26;
            {
              mlir::pdl_interp::CheckTypesOp::readProperties();
            }

            a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
            v8 = a2[32];
            v7 = v20;
          }

          *v8 = v7;
        }

        v19 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 14))
        {
          v10 = a2[1];
          v26 = a1;
          v27 = &v19;
          v28 = a2;
          v11 = mlir::NamedAttrList::get((a2 + 14), **(v10 + 96));
          if (!v11 || (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v11, "types", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v26)) && ((*(*a1 + 56))(a1))
          {
            v26 = 0;
            v12 = (*(*a1 + 808))(a1, &v26);
            if ((v12 & 0x100) == 0)
            {
LABEL_15:
              mlir::BlockRange::BlockRange(&v26, v23, v24);
              mlir::OperationState::addSuccessors(a2, v26, v27);
              v13 = (*(*a1 + 32))(a1);
              v14 = mlir::Builder::getType<mlir::pdl::TypeType>(v13);
              v15 = mlir::pdl::RangeType::get(v14);
              v16 = (*(*a1 + 728))(a1, v21, v15, a2 + 2) & 1;
              goto LABEL_24;
            }

            if (v12)
            {
              llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v23, &v26);
              while (((*(*a1 + 128))(a1) & 1) != 0)
              {
                if (((*(*a1 + 800))(a1, &v26) & 1) == 0)
                {
                  goto LABEL_23;
                }

                v17 = v24;
                if (v24 >= HIDWORD(v24))
                {
                  llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v23, &v26);
                }

                else
                {
                  *(v23 + v24) = v26;
                  LODWORD(v24) = v17 + 1;
                }
              }

              goto LABEL_15;
            }
          }
        }
      }
    }
  }

LABEL_23:
  v16 = 0;
LABEL_24:
  if (v23 != v25)
  {
    free(v23);
  }

  return v16;
}

void mlir::pdl_interp::CheckTypesOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 2)
  {
    *(v9 + 2) = 101;
    *v9 = 29281;
    v8[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, "are", 3uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v29 = v31;
  v31[0] = "types";
  v31[1] = 5;
  v30 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v29, v30);
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 15917;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "->", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v21 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v22 = v20 - 1;
  if (v22)
  {
    v23 = (v21 + 56);
    do
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = v25[4];
      if (v25[3] - v26 <= 1uLL)
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      else
      {
        *v26 = 8236;
        v25[4] += 2;
      }

      v24 = *v23;
      v23 += 4;
      (*(*a2 + 176))(a2, v24);
      --v22;
    }

    while (v22);
  }

LABEL_24:
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::pdl_interp::CreateAttributeOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    v4 = a1;
    v5 = operator new(8uLL);
    *v5 = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v8;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v7;
    {
      mlir::pdl_interp::CreateAttributeOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    a1 = v4;
  }

  return (*(*a1 + 48))(a1, v3) & 1;
}

void mlir::pdl_interp::CreateAttributeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);

  mlir::pdl_interp::CreateAttributeOp::build(SingletonImpl, a2, SingletonImpl, a3);
}

void mlir::pdl_interp::CreateAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 256);
  if (v7)
  {
    *v7 = a4;
    v8 = *(a2 + 72);
    if (v8 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v8 + 1, 8);
      LODWORD(v8) = *(a2 + 72);
    }
  }

  else
  {
    v9 = operator new(8uLL);
    *v9 = 0;
    *(a2 + 256) = v9;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v11;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v10;
    {
      mlir::pdl_interp::CreateAttributeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a4;
    v8 = *(a2 + 72);
    if (v8 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::CreateAttributeOp::verifyInvariantsImpl(mlir::pdl_interp::CreateAttributeOp *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64))
  {
    v3 = *(v2 + 36);
    v4 = v2 - 16;
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
    return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  else
  {
    v17 = "requires attribute 'value'";
    v18 = 259;
    mlir::OpState::emitOpError(this, &v17, v19);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }

    if (v27 == 1)
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
  }

  return v7;
}

uint64_t mlir::pdl_interp::CreateAttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  if (((*(*a1 + 440))(a1, &v12, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = v12;
  if (v12)
  {
    v5 = *(a2 + 256);
    if (!v5)
    {
      v6 = operator new(8uLL);
      *v6 = 0;
      *(a2 + 256) = v6;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v14;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v13;
      {
        mlir::pdl_interp::CreateAttributeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v5 = *(a2 + 256);
      v4 = v12;
    }

    *v5 = v4;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttrList::get(a2 + 112, **(*(a2 + 8) + 96));
  v7 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v7);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v10 + 1, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v10) = SingletonImpl;
  ++*(a2 + 72);
  return 1;
}

void mlir::pdl_interp::CreateAttributeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v9 = v11;
  v11[0] = "value";
  v11[1] = 5;
  v10 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

BOOL mlir::pdl_interp::CreateOperationOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_70;
    }

    v33 = v82;
    v23 = v81;
    if (v82 == v81)
    {
LABEL_69:
      v82 = v21;
      operator delete(v23);
LABEL_70:
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
LABEL_68:
    v23 = v81;
    goto LABEL_69;
  }

  v88.var0 = "inferredResultTypes";
  v88.var1 = 19;
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
        v74 = 64;
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
        goto LABEL_70;
      }

      v22 = v82;
      v23 = v81;
      if (v82 == v81)
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

  v89.var0 = "inputAttributeNames";
  v89.var1 = 19;
  v36 = mlir::DictionaryAttr::get(&v71, v89);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v37 = v36;
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 64;
        v38 = &v72;
        v39 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v39 = v77;
            v38 = (v77 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v38 = &v72;
            v39 = v77;
          }
        }

        v40 = &v39[24 * v78];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v78;
        if (v75)
        {
          v42 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v37);
          v43 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v68 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v43 = v77;
              v42 = (v77 + v68);
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

      v46 = __p;
      if (__p)
      {
        v47 = v84;
        v48 = __p;
        if (v84 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v84 = v46;
        operator delete(v48);
      }

      v21 = v81;
      if (!v81)
      {
        goto LABEL_70;
      }

      v49 = v82;
      v23 = v81;
      if (v82 == v81)
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

  v90.var0 = "name";
  v90.var1 = 4;
  v52 = mlir::DictionaryAttr::get(&v71, v90);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v53 = v52;
      a3(&v75, a4);
      if (v75)
      {
        v72 = 3;
        v74 = 49;
        v54 = &v72;
        v55 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v55 = v77;
            v54 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v54 = &v72;
            v55 = v77;
          }
        }

        v56 = &v55[24 * v78];
        v57 = *v54;
        *(v56 + 2) = *(v54 + 2);
        *v56 = v57;
        ++v78;
        if (v75)
        {
          v58 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v53);
          v59 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v59 = v77;
              v58 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v58 = &v72;
              v59 = v77;
            }
          }

          v60 = &v59[24 * v78];
          v61 = *v58;
          *(v60 + 2) = *(v58 + 2);
          *v60 = v61;
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

    a1[2] = v52;
  }

  v91.var0 = "operandSegmentSizes";
  v91.var1 = 19;
  v62 = mlir::DictionaryAttr::get(&v71, v91);
  if (!v62)
  {
    v92.var0 = "operand_segment_sizes";
    v92.var1 = 21;
    v62 = mlir::DictionaryAttr::get(&v71, v92);
    if (!v62)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 3, 3, v62, a3, a4) & 1) != 0;
}

uint64_t mlir::pdl_interp::CreateOperationOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = v39;
  v38 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v36, "inferredResultTypes", 19, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v36, "inputAttributeNames", 19, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v36, "name", 4, v13);
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

unint64_t mlir::pdl_interp::CreateOperationOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = *(a1 + 28);
  v10 = __ROR8__(v9 + 12, 12);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::pdl_interp::CreateOperationOp::getInherentAttr(uint64_t *a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 4)
  {
    if (!memcmp(__s1, "name", 4uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 21)
  {
    v9 = a1;
    if (!memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v9, a2 + 3, 3);
    }

    return 0;
  }

  if (__n != 19)
  {
    return 0;
  }

  if (*__s1 == 0x6465727265666E69 && *(__s1 + 1) == 0x7954746C75736552 && *(__s1 + 11) == 0x7365707954746C75)
  {
    return *a2;
  }

  if (*__s1 != 0x7474417475706E69 || *(__s1 + 1) != 0x614E657475626972 || *(__s1 + 11) != 0x73656D614E657475)
  {
    v9 = a1;
    if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v9, a2 + 3, 3);
    }

    return 0;
  }

  return a2[1];
}

uint64_t mlir::pdl_interp::CreateOperationOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 4)
  {
    result = memcmp(__s1, "name", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        *(v5 + 16) = v12;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else
  {
    if (a3 == 21)
    {
      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 19)
      {
        return result;
      }

      if (*__s1 == 0x6465727265666E69 && *(__s1 + 1) == 0x7954746C75736552 && *(__s1 + 11) == 0x7365707954746C75)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }

          *result = v13;
        }

        else
        {
          *result = 0;
        }

        return result;
      }

      if (*__s1 == 0x7474417475706E69 && *(__s1 + 1) == 0x614E657475626972 && *(__s1 + 11) == 0x73656D614E657475)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          *(result + 8) = v14;
        }

        else
        {
          *(result + 8) = 0;
        }

        return result;
      }

      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
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
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;
      if (v10)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v15);
        if (result == 3)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v15);
          if (v11)
          {
            return memmove((v5 + 24), result, 4 * v11);
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "inferredResultTypes", 0x13, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v9, "inputAttributeNames", 0x13, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v10, "name", 4, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::CreateOperationOp::readProperties(uint64_t a1, uint64_t a2)
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
    v5 = operator new(0x28uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(v5 + 8) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v9;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v9;
    {
      mlir::pdl_interp::CreateOperationOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return 0;
    }
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 1) & 1) == 0 || (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 2) & 1) == 0)
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

    if (mlir::AffineBinaryOpExpr::getLHS(&v11) >= 4)
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
      memmove(v3 + 3, v6, 4 * v7);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 3) & 1) != 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::pdl_interp::CreateOperationOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::pdl_interp::CreateOperationOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 16))(a2, *(v5 + 1));
  (*(*a2 + 16))(a2, *(v5 + 2));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v5 + 3, 3);
    (*(*a2 + 16))(a2, v8);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 6, 3);
  }

  return result;
}

__n128 mlir::pdl_interp::CreateOperationOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  mlir::pdl_interp::CreateOperationOp::build(a1, a2, SingletonImpl, a3, a4, a9, a10, v22, a11, a12, a13, a5, a6, a7);
  return result;
}

void mlir::pdl_interp::CreateOperationOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14)
{
  v14 = a7;
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a12, a13);
  v20 = *(a2 + 256);
  if (!v20)
  {
    v21 = operator new(0x28uLL);
    *v21 = 0u;
    v21[1] = 0u;
    *(v21 + 8) = 0;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v36;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v36;
    {
      mlir::pdl_interp::CreateOperationOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v20 = *(a2 + 256);
  }

  v20[6] = v14;
  v20[7] = a10;
  v20[8] = a13;
  v37 = 261;
  v36[0] = a4;
  v36[1] = a5;
  StringAttr = mlir::Builder::getStringAttr(a1, v36);
  v24 = StringAttr;
  v25 = *(a2 + 256);
  if (v25)
  {
    v26 = a14;
    v27 = a11;
    *(v25 + 16) = StringAttr;
    v28 = *(a2 + 256);
    if (v28)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v30 = operator new(0x28uLL);
    *v30 = 0u;
    v30[1] = 0u;
    *(v30 + 8) = 0;
    *(a2 + 256) = v30;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v38;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v38;
    {
      mlir::pdl_interp::CreateOperationOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v26 = a14;
    v27 = a11;
    *(*(a2 + 256) + 16) = v24;
    v28 = *(a2 + 256);
    if (v28)
    {
LABEL_7:
      *(v28 + 8) = v27;
      if (!v26)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  v31 = operator new(0x28uLL);
  *v31 = 0u;
  v31[1] = 0u;
  *(v31 + 8) = 0;
  *(a2 + 256) = v31;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = v36;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = v36;
  {
    mlir::pdl_interp::CreateOperationOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = v27;
  if (!v26)
  {
LABEL_8:
    v29 = *(a2 + 72);
    if (v29 >= *(a2 + 76))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_17:
  UnitAttr = mlir::Builder::getUnitAttr(a1, v23);
  v33 = UnitAttr;
  v34 = *(a2 + 256);
  if (v34)
  {
    *v34 = UnitAttr;
    v29 = *(a2 + 72);
    if (v29 < *(a2 + 76))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v35 = operator new(0x28uLL);
  *v35 = 0u;
  v35[1] = 0u;
  *(v35 + 8) = 0;
  *(a2 + 256) = v35;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = v36;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = v36;
  {
    mlir::pdl_interp::CreateOperationOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  **(a2 + 256) = v33;
  v29 = *(a2 + 72);
  if (v29 >= *(a2 + 76))
  {
LABEL_9:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v29 + 1, 8);
    LODWORD(v29) = *(a2 + 72);
  }

LABEL_10:
  *(*(a2 + 64) + 8 * v29) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::CreateOperationOp::verifyInvariantsImpl(mlir::pdl_interp::CreateOperationOp *this)
{
  v125 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  v4 = v3 + 64;
  if (!v6)
  {
    v108 = "requires attribute 'inputAttributeNames'";
    v110 = 259;
    mlir::OpState::emitOpError(this, &v108, v114);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
    if (v114[0])
    {
      mlir::InFlightDiagnostic::report(v114);
    }

    if (v124 != 1)
    {
      return v18;
    }

    if (v123 != &v124)
    {
      free(v123);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v122;
      v21 = __p;
      if (v122 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v122 = v19;
      operator delete(v21);
    }

    v22 = v119;
    if (v119)
    {
      v23 = v120;
      v24 = v119;
      if (v120 == v119)
      {
        goto LABEL_97;
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
LABEL_96:
      v24 = v119;
LABEL_97:
      v120 = v22;
      operator delete(v24);
    }

LABEL_98:
    if (v115 != v118)
    {
      free(v115);
    }

    return v18;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
    v108 = "requires attribute 'name'";
    v110 = 259;
    mlir::OpState::emitOpError(this, &v108, v114);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
    if (v114[0])
    {
      mlir::InFlightDiagnostic::report(v114);
    }

    if (v124 != 1)
    {
      return v18;
    }

    if (v123 != &v124)
    {
      free(v123);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v122;
      v29 = __p;
      if (v122 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v122 = v27;
      operator delete(v29);
    }

    v22 = v119;
    if (v119)
    {
      v30 = v120;
      v24 = v119;
      if (v120 == v119)
      {
        goto LABEL_97;
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
      goto LABEL_96;
    }

    goto LABEL_98;
  }

  v114[0] = v2;
  if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v7, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v114) & 1) == 0)
  {
    return 0;
  }

  v114[0] = *this;
  if ((mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v6, "inputAttributeNames", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v114) & 1) == 0)
  {
    return 0;
  }

  v114[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "inferredResultTypes", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v114) & 1) == 0)
  {
    return 0;
  }

  v8 = *(*this + 44);
  v9 = *(*this + 16 * ((v8 >> 23) & 1) + 88);
  if ((v8 & 0x800000) != 0)
  {
    v10 = *(*this + 72);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
    if (v9)
    {
LABEL_8:
      v11 = 0;
      v12 = v10 + 24;
      while ((mlir::pdl::__mlir_ods_local_type_constraint_PDLOps8(*this, *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11) & 1) != 0)
      {
        ++v11;
        v12 += 32;
        if (v9 == v11)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

LABEL_11:
  ODSOperands = mlir::memref::ReinterpretCastOp::getODSOperands(this, 1u);
  if (v14)
  {
    v15 = ODSOperands;
    v16 = v14;
    v17 = 0;
    do
    {
      v33 = *(*(v15 + 32 * v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v34 = *this;
        v110 = 261;
        v108 = "operand";
        v109 = 7;
        mlir::Operation::emitOpError(v34, &v108, v114);
        if (v114[0])
        {
          v111 = 3;
          v112 = " #";
          v113 = 2;
          v35 = v115;
          if (v116 >= v117)
          {
            if (v115 <= &v111 && v115 + 24 * v116 > &v111)
            {
              v62 = &v111 - v115;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
              v35 = v115;
              v36 = (v115 + v62);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
              v36 = &v111;
              v35 = v115;
            }
          }

          else
          {
            v36 = &v111;
          }

          v37 = &v35[24 * v116];
          v38 = *v36;
          *(v37 + 2) = *(v36 + 2);
          *v37 = v38;
          v39 = ++v116;
          if (v114[0])
          {
            v111 = 5;
            v112 = v9;
            v40 = v115;
            if (v39 >= v117)
            {
              if (v115 <= &v111 && v115 + 24 * v39 > &v111)
              {
                v63 = &v111 - v115;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v39 + 1, 24);
                v40 = v115;
                v41 = (v115 + v63);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v39 + 1, 24);
                v41 = &v111;
                v40 = v115;
              }
            }

            else
            {
              v41 = &v111;
            }

            v42 = &v40[24 * v116];
            v43 = *v41;
            *(v42 + 2) = *(v41 + 2);
            *v42 = v43;
            v44 = ++v116;
            if (v114[0])
            {
              v111 = 3;
              v113 = 65;
              v45 = v115;
              if (v44 >= v117)
              {
                if (v115 <= &v111 && v115 + 24 * v44 > &v111)
                {
                  v64 = &v111 - v115;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v44 + 1, 24);
                  v45 = v115;
                  v46 = (v115 + v64);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v44 + 1, 24);
                  v46 = &v111;
                  v45 = v115;
                }
              }

              else
              {
                v46 = &v111;
              }

              v47 = &v45[24 * v116];
              v48 = *v46;
              *(v47 + 2) = *(v46 + 2);
              *v47 = v48;
              ++v116;
              if (v114[0])
              {
                v49 = &v111;
                mlir::DiagnosticArgument::DiagnosticArgument(&v111, v33);
                v50 = v115;
                if (v116 >= v117)
                {
                  if (v115 <= &v111 && v115 + 24 * v116 > &v111)
                  {
                    v65 = &v111 - v115;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                    v50 = v115;
                    v49 = (v115 + v65);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                    v49 = &v111;
                    v50 = v115;
                  }
                }

                v51 = &v50[24 * v116];
                v52 = *v49;
                *(v51 + 2) = *(v49 + 2);
                *v51 = v52;
                ++v116;
              }
            }
          }
        }

        v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
        if (v114[0])
        {
          mlir::InFlightDiagnostic::report(v114);
        }

        if (v124 == 1)
        {
          if (v123 != &v124)
          {
            free(v123);
          }

          v54 = __p;
          if (__p)
          {
            v55 = v122;
            v56 = __p;
            if (v122 != __p)
            {
              do
              {
                v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
              }

              while (v55 != v54);
              v56 = __p;
            }

            v122 = v54;
            operator delete(v56);
          }

          v57 = v119;
          if (v119)
          {
            v58 = v120;
            v59 = v119;
            if (v120 != v119)
            {
              do
              {
                v61 = *--v58;
                v60 = v61;
                *v58 = 0;
                if (v61)
                {
                  operator delete[](v60);
                }
              }

              while (v58 != v57);
              v59 = v119;
            }

            v120 = v57;
            operator delete(v59);
          }

          if (v115 != v118)
          {
            free(v115);
          }
        }

        if (!v53)
        {
          return 0;
        }
      }

      LODWORD(v9) = v9 + 1;
    }

    while (++v17 != v16);
  }

  v66 = mlir::memref::ReinterpretCastOp::getODSOperands(this, 2u);
  if (v67)
  {
    v68 = v66;
    v69 = v67;
    v70 = 0;
    do
    {
      v71 = *(*(v68 + 32 * v70 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v72 = *(*v71 + 136);
      if (v72 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v73 = *this;
        if (v72 != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || (v114[0] = *(*(v68 + 32 * v70 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*mlir::AffineMapAttr::getValue(v114) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
        {
          v110 = 261;
          v108 = "operand";
          v109 = 7;
          mlir::Operation::emitOpError(v73, &v108, v114);
          if (v114[0])
          {
            v111 = 3;
            v112 = " #";
            v113 = 2;
            v74 = v115;
            if (v116 >= v117)
            {
              if (v115 <= &v111 && v115 + 24 * v116 > &v111)
              {
                v101 = &v111 - v115;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                v74 = v115;
                v75 = (v115 + v101);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                v75 = &v111;
                v74 = v115;
              }
            }

            else
            {
              v75 = &v111;
            }

            v76 = &v74[24 * v116];
            v77 = *v75;
            *(v76 + 2) = *(v75 + 2);
            *v76 = v77;
            v78 = ++v116;
            if (v114[0])
            {
              v111 = 5;
              v112 = v9;
              v79 = v115;
              if (v78 >= v117)
              {
                if (v115 <= &v111 && v115 + 24 * v78 > &v111)
                {
                  v102 = &v111 - v115;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v78 + 1, 24);
                  v79 = v115;
                  v80 = (v115 + v102);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v78 + 1, 24);
                  v80 = &v111;
                  v79 = v115;
                }
              }

              else
              {
                v80 = &v111;
              }

              v81 = &v79[24 * v116];
              v82 = *v80;
              *(v81 + 2) = *(v80 + 2);
              *v81 = v82;
              v83 = ++v116;
              if (v114[0])
              {
                v111 = 3;
                v113 = 87;
                v84 = v115;
                if (v83 >= v117)
                {
                  if (v115 <= &v111 && v115 + 24 * v83 > &v111)
                  {
                    v103 = &v111 - v115;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v83 + 1, 24);
                    v84 = v115;
                    v85 = (v115 + v103);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v83 + 1, 24);
                    v85 = &v111;
                    v84 = v115;
                  }
                }

                else
                {
                  v85 = &v111;
                }

                v86 = &v84[24 * v116];
                v87 = *v85;
                *(v86 + 2) = *(v85 + 2);
                *v86 = v87;
                ++v116;
                if (v114[0])
                {
                  v88 = &v111;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v111, v71);
                  v89 = v115;
                  if (v116 >= v117)
                  {
                    if (v115 <= &v111 && v115 + 24 * v116 > &v111)
                    {
                      v104 = &v111 - v115;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                      v89 = v115;
                      v88 = (v115 + v104);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
                      v88 = &v111;
                      v89 = v115;
                    }
                  }

                  v90 = &v89[24 * v116];
                  v91 = *v88;
                  *(v90 + 2) = *(v88 + 2);
                  *v90 = v91;
                  ++v116;
                }
              }
            }
          }

          v92 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
          if (v114[0])
          {
            mlir::InFlightDiagnostic::report(v114);
          }

          if (v124 == 1)
          {
            if (v123 != &v124)
            {
              free(v123);
            }

            v93 = __p;
            if (__p)
            {
              v94 = v122;
              v95 = __p;
              if (v122 != __p)
              {
                do
                {
                  v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
                }

                while (v94 != v93);
                v95 = __p;
              }

              v122 = v93;
              operator delete(v95);
            }

            v96 = v119;
            if (v119)
            {
              v97 = v120;
              v98 = v119;
              if (v120 != v119)
              {
                do
                {
                  v100 = *--v97;
                  v99 = v100;
                  *v97 = 0;
                  if (v100)
                  {
                    operator delete[](v99);
                  }
                }

                while (v97 != v96);
                v98 = v119;
              }

              v120 = v96;
              operator delete(v98);
            }

            if (v115 != v118)
            {
              free(v115);
            }
          }

          if (!v92)
          {
            return 0;
          }
        }
      }

      LODWORD(v9) = v9 + 1;
    }

    while (++v70 != v69);
  }

  if (*(*this + 36))
  {
    v106 = *this - 16;
  }

  else
  {
    v106 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v106, 0);
  return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::pdl_interp::CreateOperationOp::parse(_DWORD *a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v50 = v52;
  v51 = 0x400000000;
  v48[0] = &v49;
  v48[1] = 0x100000000;
  v45 = v47;
  v46 = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v40[0] = &v41;
  v40[1] = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v38, v6))
  {
    goto LABEL_49;
  }

  v7 = v38;
  if (v38)
  {
    v8 = a2[32];
    if (!v8)
    {
      v9 = operator new(0x28uLL);
      *v9 = 0u;
      v9[1] = 0u;
      *(v9 + 8) = 0;
      a2[32] = v9;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = &v53;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = &v53;
      {
        mlir::pdl_interp::CreateOperationOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = a2[32];
      v7 = v38;
    }

    *(v8 + 16) = v7;
  }

  if ((*(*a1 + 288))(a1))
  {
    v10 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v50, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v48) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v10 = 0;
  }

  v37 = v10;
  (*(*a1 + 40))(a1);
  v11 = (*(*a1 + 32))(a1);
  v53 = v55;
  v54 = 0x400000000;
  if ((*(*a1 + 80))(a1) & 1) == 0 || (v39[0] = a1, v39[1] = &v53, v39[2] = &v45, ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseCreateOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>, v39, 0, 0)) && ((*(*a1 + 88))(a1))
  {
    ArrayAttr = mlir::Builder::getArrayAttr(v11, v53, v54);
    v13 = 0;
    v14 = v53;
    if (v53 == v55)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  ArrayAttr = 0;
  v13 = 1;
  v14 = v53;
  if (v53 != v55)
  {
LABEL_19:
    free(v14);
  }

LABEL_20:
  if ((v13 & 1) == 0)
  {
    v15 = a2[32];
    if (!v15)
    {
      v16 = operator new(0x28uLL);
      *v16 = 0u;
      v16[1] = 0u;
      *(v16 + 8) = 0;
      a2[32] = v16;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = &v53;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = &v53;
      {
        mlir::pdl_interp::CreateOperationOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v15 = a2[32];
    }

    *(v15 + 8) = ArrayAttr;
    v17 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 64))(a1))
    {
      if ((*(*a1 + 160))(a1))
      {
        v56 = 257;
        if (((*(*a1 + 400))(a1, "inferred", 8, &v53) & 1) == 0 || ((*(*a1 + 168))(a1) & 1) == 0)
        {
          goto LABEL_49;
        }

        v18 = (*(*a1 + 32))(a1);
        UnitAttr = mlir::Builder::getUnitAttr(v18, v19);
        if (UnitAttr)
        {
          v21 = a2[32];
          if (!v21)
          {
            v22 = UnitAttr;
            v23 = operator new(0x28uLL);
            *v23 = 0u;
            v23[1] = 0u;
            *(v23 + 8) = 0;
            a2[32] = v23;
            a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
            a2[35] = &v53;
            a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
            a2[37] = &v53;
            {
              mlir::pdl_interp::CreateOperationOp::readProperties();
            }

            a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
            v21 = a2[32];
            UnitAttr = v22;
          }

          *v21 = UnitAttr;
        }
      }

      else if (((*(*a1 + 280))(a1) & 1) == 0 || ((*(*a1 + 720))(a1, &v42, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 584))(a1, v40) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v39[0] = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 14))
    {
      v24 = a2[1];
      v53 = a1;
      v54 = v39;
      v55[0] = a2;
      if (mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(v24, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateOperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v53))
      {
        v36 = v17;
        v25 = v51;
        v26 = v46;
        v27 = v43;
        v28 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2);
        v28[6] = v25;
        v28[7] = v26;
        v28[8] = v27;
        v29 = (*(*a1 + 32))(a1);
        v53 = mlir::Builder::getType<mlir::pdl::OperationType>(v29);
        v30 = (*(*a1 + 32))(a1);
        v31 = mlir::Builder::getType<mlir::pdl::AttributeType>(v30);
        mlir::OperationState::addTypes(a2, &v53, 1);
        if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v50, v48, v37, (a2 + 2)))
        {
          if (!v46)
          {
LABEL_48:
            v34 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v42, v40, v36, (a2 + 2)) & 1;
            goto LABEL_50;
          }

          v32 = v45;
          v33 = 32 * v46;
          while (((*(*a1 + 728))(a1, v32, v31, a2 + 2) & 1) != 0)
          {
            v32 += 32;
            v33 -= 32;
            if (!v33)
            {
              goto LABEL_48;
            }
          }
        }
      }
    }
  }

LABEL_49:
  v34 = 0;
LABEL_50:
  if (v40[0] != &v41)
  {
    free(v40[0]);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48[0] != &v49)
  {
    free(v48[0]);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  return v34;
}

void mlir::pdl_interp::CreateRangeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  mlir::OperationState::addOperands(a2, a4, a5);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::pdl_interp::CreateRangeOp::parse(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x1E69E9840];
  v16 = v18;
  v17 = 0x400000000;
  v13 = &v15;
  v14 = 0x100000000;
  v11 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v16, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v17 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &v13) & 1) == 0))
  {
    goto LABEL_13;
  }

  mlir::ValueRange::ValueRange(v12, v13, v14);
  if (v12[1])
  {
    v5 = mlir::TypeRange::dereference_iterator(v12[0], 0);
    RangeElementTypeOrSelf = mlir::pdl::getRangeElementTypeOrSelf(v5);
    v11 = mlir::pdl::RangeType::get(RangeElementTypeOrSelf);
  }

  else if (((*(*a1 + 576))(a1, &v11) & 1) == 0)
  {
    goto LABEL_13;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
LABEL_13:
    v8 = 0;
    v9 = v13;
    if (v13 == &v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = v11;
  ++*(a2 + 72);
  v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v16, &v13, v4, a2 + 16) & 1;
  v9 = v13;
  if (v13 != &v15)
  {
LABEL_14:
    free(v9);
  }

LABEL_15:
  if (v16 != v18)
  {
    free(v16);
  }

  return v8;
}

uint64_t mlir::pdl_interp::CreateTypeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "value";
  v56.var1 = 5;
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
    v43 = 50;
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

uint64_t mlir::pdl_interp::CreateTypeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::pdl_interp::CreateTypeOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::pdl_interp::CreateTypeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);

  mlir::pdl_interp::CreateTypeOp::build(SingletonImpl, a2, SingletonImpl, a3);
}

void mlir::pdl_interp::CreateTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 256);
  if (v7)
  {
    *v7 = a4;
    v8 = *(a2 + 72);
    if (v8 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v8 + 1, 8);
      LODWORD(v8) = *(a2 + 72);
    }
  }

  else
  {
    v9 = operator new(8uLL);
    *v9 = 0;
    *(a2 + 256) = v9;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v11;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v10;
    {
      mlir::pdl_interp::CreateTypeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a4;
    v8 = *(a2 + 72);
    if (v8 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::CreateTypeOp::verifyInvariantsImpl(mlir::pdl_interp::CreateTypeOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
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
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'value'";
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

uint64_t mlir::pdl_interp::CreateTypeOp::parse(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v19, v6))
  {
    return 0;
  }

  v7 = v19;
  if (v19)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      v9 = operator new(8uLL);
      *v9 = 0;
      *(a2 + 256) = v9;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v17;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v17;
      {
        mlir::pdl_interp::CreateTypeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = *(a2 + 256);
      v7 = v19;
    }

    *v8 = v7;
  }

  v18 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v17[0] = a1;
  v17[1] = &v18;
  v17[2] = a2;
  v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
  if (v11)
  {
    if ((mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v11, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v12);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v15 + 1, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v15) = SingletonImpl;
  ++*(a2 + 72);
  return 1;
}

void mlir::pdl_interp::CreateTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v9 = v11;
  v11[0] = "value";
  v11[1] = 5;
  v10 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::pdl_interp::CreateTypesOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::pdl_interp::CreateTypesOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::pdl_interp::CreateTypesOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v7 = mlir::pdl::RangeType::get(SingletonImpl);

  mlir::pdl_interp::CreateTypesOp::build(v7, a2, v7, a3);
}

void mlir::pdl_interp::CreateTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 256);
  if (v7)
  {
    *v7 = a4;
    v8 = *(a2 + 72);
    if (v8 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v8 + 1, 8);
      LODWORD(v8) = *(a2 + 72);
    }
  }

  else
  {
    v9 = operator new(8uLL);
    *v9 = 0;
    *(a2 + 256) = v9;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v11;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v10;
    {
      mlir::pdl_interp::CreateTypesOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a4;
    v8 = *(a2 + 72);
    if (v8 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::CreateTypesOp::verifyInvariantsImpl(mlir::pdl_interp::CreateTypesOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
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
      return mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'value'";
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

uint64_t mlir::pdl_interp::CreateTypesOp::parse(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v20, v6))
  {
    return 0;
  }

  v7 = v20;
  if (v20)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      v9 = operator new(8uLL);
      *v9 = 0;
      *(a2 + 256) = v9;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v18;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v18;
      {
        mlir::pdl_interp::CreateTypesOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = *(a2 + 256);
      v7 = v20;
    }

    *v8 = v7;
  }

  v19 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v18[0] = a1;
  v18[1] = &v19;
  v18[2] = a2;
  v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
  if (v11)
  {
    if ((mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v11, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v12);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v15 = mlir::pdl::RangeType::get(SingletonImpl);
  v16 = *(a2 + 72);
  if (v16 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16 + 1, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v16) = v15;
  ++*(a2 + 72);
  return 1;
}

uint64_t mlir::pdl_interp::EraseOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v8, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v4);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  return (*(*a1 + 728))(a1, v8, SingletonImpl, a2 + 16) & 1;
}

uint64_t mlir::pdl_interp::ExtractOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::pdl_interp::ExtractOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::pdl_interp::ExtractOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::AffineMapAttr::getValue(&v9);
  mlir::pdl_interp::ExtractOp::build(a1, a2, Value, a3, a4);
}

void mlir::pdl_interp::ExtractOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v15 = a4;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a5);
  v11 = IntegerAttr;
  v12 = *(a2 + 256);
  if (v12)
  {
    *v12 = IntegerAttr;
    v13 = *(a2 + 72);
    if (v13 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v13 + 1, 8);
      LODWORD(v13) = *(a2 + 72);
    }
  }

  else
  {
    v14 = operator new(8uLL);
    *v14 = 0;
    *(a2 + 256) = v14;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v17;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v16;
    {
      mlir::pdl_interp::ExtractOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = v11;
    v13 = *(a2 + 72);
    if (v13 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v13) = a3;
  ++*(a2 + 72);
}

BOOL mlir::pdl_interp::ExtractOp::verifyInvariantsImpl(mlir::pdl_interp::ExtractOp *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v20 = v2;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v20) & 1) != 0 && (mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps11(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (*(*this + 36) ? (v4 = *this - 16) : (v4 = 0), v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0), (mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(*this, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0)))
    {
      if (*(*this + 36))
      {
        v6 = *this - 16;
      }

      else
      {
        v6 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
      if (mlir::pdl::RangeType::get(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) == (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        return 1;
      }

      else
      {
        v19 = 259;
        mlir::OpState::emitOpError(this, v18, &v20);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
        if (v20)
        {
          mlir::InFlightDiagnostic::report(&v20);
        }

        if (v29 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v21);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18[0] = "requires attribute 'index'";
    v19 = 259;
    mlir::OpState::emitOpError(this, v18, &v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v20);
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

      v9 = __p;
      if (__p)
      {
        v10 = v27;
        v11 = __p;
        if (v27 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v27 = v9;
        operator delete(v11);
      }

      v12 = v24;
      if (v24)
      {
        v13 = v25;
        v14 = v24;
        if (v25 != v24)
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
          v14 = v24;
        }

        v25 = v12;
        operator delete(v14);
      }

      if (v22 != &v23)
      {
        free(v22);
      }
    }
  }

  return v8;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps11(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v49[0] = a2;
    v9 = a1;
    Value = mlir::AffineMapAttr::getValue(v49);
    v11 = mlir::pdl::PDLType::classof(Value);
    a1 = v9;
    if (v11)
    {
      return 1;
    }
  }

  v45 = 261;
  v44[0] = a3;
  v44[1] = a4;
  mlir::Operation::emitOpError(a1, v44, v49);
  if (v49[0])
  {
    v46 = 3;
    v47 = " #";
    v48 = 2;
    v13 = &v46;
    v14 = v50;
    if (v51 >= v52)
    {
      if (v50 <= &v46 && v50 + 24 * v51 > &v46)
      {
        v40 = &v46 - v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v14 = v50;
        v13 = (v50 + v40);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v13 = &v46;
        v14 = v50;
      }
    }

    v15 = &v14[24 * v51];
    v16 = *v13;
    *(v15 + 2) = *(v13 + 2);
    *v15 = v16;
    v17 = ++v51;
    if (v49[0])
    {
      v46 = 5;
      v47 = a5;
      v18 = &v46;
      v19 = v50;
      if (v17 >= v52)
      {
        if (v50 <= &v46 && v50 + 24 * v17 > &v46)
        {
          v41 = &v46 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v17 + 1, 24);
          v19 = v50;
          v18 = (v50 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v17 + 1, 24);
          v18 = &v46;
          v19 = v50;
        }
      }

      v20 = &v19[24 * v51];
      v21 = *v18;
      *(v20 + 2) = *(v18 + 2);
      *v20 = v21;
      v22 = ++v51;
      if (v49[0])
      {
        v46 = 3;
        v47 = " must be range of pdl type values, but got ";
        v48 = 43;
        v23 = &v46;
        v24 = v50;
        if (v22 >= v52)
        {
          if (v50 <= &v46 && v50 + 24 * v22 > &v46)
          {
            v42 = &v46 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v22 + 1, 24);
            v24 = v50;
            v23 = (v50 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v22 + 1, 24);
            v23 = &v46;
            v24 = v50;
          }
        }

        v25 = &v24[24 * v51];
        v26 = *v23;
        *(v25 + 2) = *(v23 + 2);
        *v25 = v26;
        ++v51;
        if (v49[0])
        {
          v27 = &v46;
          mlir::DiagnosticArgument::DiagnosticArgument(&v46, a2);
          v28 = v50;
          if (v51 >= v52)
          {
            if (v50 <= &v46 && v50 + 24 * v51 > &v46)
            {
              v43 = &v46 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v28 = v50;
              v27 = (v50 + v43);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v27 = &v46;
              v28 = v50;
            }
          }

          v29 = &v28[24 * v51];
          v30 = *v27;
          *(v29 + 2) = *(v27 + 2);
          *v29 = v30;
          ++v51;
        }
      }
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v57;
      v33 = __p;
      if (v57 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v57 = v31;
      operator delete(v33);
    }

    v34 = v54;
    if (v54)
    {
      v35 = v55;
      v36 = v54;
      if (v55 != v54)
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
        v36 = v54;
      }

      v55 = v34;
      operator delete(v36);
    }

    if (v50 != v53)
    {
      free(v50);
    }
  }

  return v12;
}

uint64_t mlir::pdl_interp::ExtractOp::parse(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20 = 0;
  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 32);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v23, IntegerType))
  {
    return 0;
  }

  v6 = v23;
  if (v23)
  {
    v7 = a2[32];
    if (!v7)
    {
      v8 = operator new(8uLL);
      *v8 = 0;
      a2[32] = v8;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v24;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v24;
      {
        mlir::pdl_interp::ExtractOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v7 = a2[32];
      v6 = v23;
    }

    *v7 = v6;
  }

  v25 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v24) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v24[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v24))
  {
    return 0;
  }

  v9 = v24[0];
  v20 = v24[0];
  v17[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v10 = a2[1];
  v24[0] = a1;
  v24[1] = v17;
  v24[2] = a2;
  if (!mlir::pdl_interp::ExtractOp::verifyInherentAttrs(v10, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v24))
  {
    return 0;
  }

  v19 = v9;
  if (mlir::pdl::PDLType::classof(v9))
  {
    mlir::OperationState::addTypes(a2, &v20, 1);
    v11 = mlir::pdl::RangeType::get(v20);
    return (*(*a1 + 728))(a1, v21, v11, a2 + 2) & 1;
  }

  else
  {
    v13 = (*(*a1 + 16))(a1);
    v18 = 257;
    (*(*a1 + 24))(v24, a1, v13, v17);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v24, "'result' must be pdl type, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v14, &v19);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
    return v16;
  }
}

void mlir::pdl_interp::ExtractOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 26223;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "of", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = v25;
  v25[0] = "index";
  v25[1] = 5;
  v24 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::pdl_interp::FuncOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v72 = v6;
  if (!v6)
  {
    a3(&v76, a4);
    if (v76)
    {
      LODWORD(v73) = 3;
      v74 = "expected DictionaryAttr to set properties";
      v75 = 41;
      v26 = &v73;
      v27 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v65 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v27 = v78;
          v26 = (v78 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v26 = &v73;
          v27 = v78;
        }
      }

      v28 = &v27[24 * v79];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v79;
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }
    }

    if (v87 != 1)
    {
      return 0;
    }

    if (v86 != &v87)
    {
      free(v86);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v85;
      v32 = __p;
      if (v85 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v85 = v30;
      operator delete(v32);
    }

    v21 = v82;
    if (!v82)
    {
      goto LABEL_70;
    }

    v33 = v83;
    v23 = v82;
    if (v83 == v82)
    {
LABEL_69:
      v83 = v21;
      operator delete(v23);
LABEL_70:
      if (v78 != v81)
      {
        free(v78);
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
    v23 = v82;
    goto LABEL_69;
  }

  v89.var0 = "arg_attrs";
  v89.var1 = 9;
  v8 = mlir::DictionaryAttr::get(&v72, v89);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 54;
        v10 = &v73;
        v11 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v66 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v11 = v78;
            v10 = (v78 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v10 = &v73;
            v11 = v78;
          }
        }

        v12 = &v11[24 * v79];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v79;
        if (v76)
        {
          v14 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v9);
          v15 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v67 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v15 = v78;
              v14 = (v78 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v14 = &v73;
              v15 = v78;
            }
          }

          v16 = &v15[24 * v79];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v85;
        v20 = __p;
        if (v85 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v85 = v18;
        operator delete(v20);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v22 = v83;
      v23 = v82;
      if (v83 == v82)
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

  v90.var0 = "function_type";
  v90.var1 = 13;
  v36 = mlir::DictionaryAttr::get(&v72, v90);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v37 = v36;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 58;
        v38 = &v73;
        v39 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v68 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v39 = v78;
            v38 = (v78 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v38 = &v73;
            v39 = v78;
          }
        }

        v40 = &v39[24 * v79];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v79;
        if (v76)
        {
          v42 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v37);
          v43 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v69 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v43 = v78;
              v42 = (v78 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v42 = &v73;
              v43 = v78;
            }
          }

          v44 = &v43[24 * v79];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v85;
        v48 = __p;
        if (v85 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v85 = v46;
        operator delete(v48);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v49 = v83;
      v23 = v82;
      if (v83 == v82)
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

  v91.var0 = "res_attrs";
  v91.var1 = 9;
  v53 = mlir::DictionaryAttr::get(&v72, v91);
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v54 = v53;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 54;
        v55 = &v73;
        v56 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v70 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v56 = v78;
            v55 = (v78 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v55 = &v73;
            v56 = v78;
          }
        }

        v57 = &v56[24 * v79];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v79;
        if (v76)
        {
          v59 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v54);
          v60 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v71 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v60 = v78;
              v59 = (v78 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v59 = &v73;
              v60 = v78;
            }
          }

          v61 = &v60[24 * v79];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if (v87 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v77);
      }

      return 0;
    }

    a1[2] = v53;
  }

  v92.var0 = "sym_name";
  v92.var1 = 8;
  v63 = mlir::DictionaryAttr::get(&v72, v92);
  v73 = v63;
  if (!v63)
  {
    return 1;
  }

  if (*(*v63 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[3] = v63;
    return 1;
  }

  a3(&v76, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v73);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
  return 0;
}

uint64_t mlir::pdl_interp::FuncOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "arg_attrs", 9, *a2);
  v5 = v36;
  if (v36 >= HIDWORD(v36))
  {
    v26 = NamedAttr;
    v27 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
    v4 = v27;
    NamedAttr = v26;
    v5 = v36;
  }

  v6 = (v35 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v34, "function_type", 13, v8);
    v11 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v28 = v9;
      v29 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v10 = v29;
      v9 = v28;
      v11 = v36;
    }

    v12 = (v35 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v34, "res_attrs", 9, v13);
    v16 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v30 = v14;
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v15 = v31;
      v14 = v30;
      v16 = v36;
    }

    v17 = (v35 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v34, "sym_name", 8, v18);
    v21 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v32 = v19;
      v33 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v20 = v33;
      v19 = v32;
      v21 = v36;
    }

    v22 = (v35 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = v35;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v7);
  v23 = v35;
  if (v35 != v37)
  {
LABEL_20:
    free(v23);
  }

  return DictionaryAttr;
}

unint64_t mlir::pdl_interp::FuncOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, v9);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::pdl_interp::FuncOp::getInherentAttr(int a1, void *a2, void *__s1, size_t __n)
{
  if (__n == 8)
  {
    if (!memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "function_type", 0xDuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
  {
    return *a2;
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[2];
}