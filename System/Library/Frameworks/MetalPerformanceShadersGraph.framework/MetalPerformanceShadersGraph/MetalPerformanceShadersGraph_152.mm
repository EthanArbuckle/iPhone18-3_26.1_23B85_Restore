BOOL mlir::mps::ImToColOp::verifyInvariantsImpl(mlir::mps::ImToColOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (v4)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = v2[2];
      if (v6)
      {
        v7 = v2[3];
        if (v7)
        {
          v8 = v2[4];
          if (v8)
          {
            v42 = *this;
            if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v7, "kernel_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42) & 1) != 0 && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v8, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps11(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
            {
              if (*(*this + 36))
              {
                v10 = *this - 16;
              }

              else
              {
                v10 = 0;
              }

              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
              return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v40[0] = "requires attribute 'strides'";
            v41 = 259;
            mlir::OpState::emitOpError(this, v40, &v42);
            v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
            if (v42)
            {
              mlir::InFlightDiagnostic::report(&v42);
            }

            if (v51 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v43);
            }
          }

          return v12;
        }

        v40[0] = "requires attribute 'kernel_sizes'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v51 == 1)
        {
          if (v50 != &v51)
          {
            free(v50);
          }

          v33 = __p;
          if (__p)
          {
            v34 = v49;
            v35 = __p;
            if (v49 != __p)
            {
              do
              {
                v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
              }

              while (v34 != v33);
              v35 = __p;
            }

            v49 = v33;
            operator delete(v35);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_83;
          }

          v36 = v47;
          v18 = v46;
          if (v47 == v46)
          {
LABEL_82:
            v47 = v16;
            operator delete(v18);
LABEL_83:
            if (v44 != &v45)
            {
              free(v44);
            }

            return v12;
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

          while (v36 != v16);
LABEL_81:
          v18 = v46;
          goto LABEL_82;
        }
      }

      else
      {
        v40[0] = "requires attribute 'explicit_padding'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v51 == 1)
        {
          if (v50 != &v51)
          {
            free(v50);
          }

          v27 = __p;
          if (__p)
          {
            v28 = v49;
            v29 = __p;
            if (v49 != __p)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = __p;
            }

            v49 = v27;
            operator delete(v29);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_83;
          }

          v30 = v47;
          v18 = v46;
          if (v47 == v46)
          {
            goto LABEL_82;
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

          while (v30 != v16);
          goto LABEL_81;
        }
      }
    }

    else
    {
      v40[0] = "requires attribute 'dilation_rates'";
      v41 = 259;
      mlir::OpState::emitOpError(this, v40, &v42);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v49;
          v23 = __p;
          if (v49 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v49 = v21;
          operator delete(v23);
        }

        v16 = v46;
        if (!v46)
        {
          goto LABEL_83;
        }

        v24 = v47;
        v18 = v46;
        if (v47 == v46)
        {
          goto LABEL_82;
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

        while (v24 != v16);
        goto LABEL_81;
      }
    }
  }

  else
  {
    v40[0] = "requires attribute 'data_layout'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v42);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v49;
        v15 = __p;
        if (v49 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v49 = v13;
        operator delete(v15);
      }

      v16 = v46;
      if (!v46)
      {
        goto LABEL_83;
      }

      v17 = v47;
      v18 = v46;
      if (v47 == v46)
      {
        goto LABEL_82;
      }

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
      goto LABEL_81;
    }
  }

  return v12;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ImToColOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.im_to_col", 13, a3, v10, a4, a5);
  *v11 = &unk_1F5B28780;
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

void mlir::mps::ImaginaryPartOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3)
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
  if ((mlir::mps::ImaginaryPartOp::inferReturnTypes(v5, v8, v9, v18[0], v18[1], Dictionary, v10, v11, v17[0], v17[1], &__src) & 1) == 0)
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

void mlir::mps::ImaginaryPartOp::build(mlir::UnknownLoc **a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::ImaginaryPartOp::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v24[0], v24[1], &__src) & 1) == 0)
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ImaginaryPartOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.imaginary_part", 18, a3, v10, a4, a5);
  *v11 = &unk_1F5B28820;
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

void mlir::mps::InitRandomPhiloxStateOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a3;
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  __src = v23;
  v22 = 0x200000000;
  v7 = *a1;
  mlir::ValueRange::ValueRange(&v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v19, *(a2 + 224), *(a2 + 232));
  v24[0] = 7;
  v9 = mlir::IntegerType::get(v7, 32, 1u);
  v10 = mlir::RankedTensorType::get(v24, 1, v9, 0);
  v11 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v15 = v10;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v23, v22 + 1, 8);
    v10 = v15;
    v11 = v22;
  }

  *(__src + v11) = v10;
  LODWORD(v22) = v22 + 1;
  v12 = v22;
  v13 = __src;
  v14 = *(a2 + 72);
  if (v14 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v14 + v22, 8);
    LODWORD(v14) = *(a2 + 72);
  }

  if (v12)
  {
    memcpy((*(a2 + 64) + 8 * v14), v13, 8 * v12);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v12;
  if (__src != v23)
  {
    free(__src);
  }
}

BOOL mlir::mps::InitRandomPhiloxStateOp::verifyInvariantsImpl(mlir::mps::InitRandomPhiloxStateOp *this)
{
  v96 = *MEMORY[0x1E69E9840];
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps29(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps29(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps29(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
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
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(*v5 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_43;
  }

  {
    v18 = v6;
    mlir::arith::ExtUIOp::fold();
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v10 = *(v18 + 8);
    v11 = *(v18 + 16);
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_24:
    v19 = 0;
    goto LABEL_26;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_14:
  v12 = v10;
  v13 = v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v12[2 * (v13 >> 1)];
    v17 = *v15;
    v16 = v15 + 2;
    v13 += ~(v13 >> 1);
    if (v17 < v9)
    {
      v12 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  if (v12 == &v10[2 * v11] || *v12 != v9)
  {
    goto LABEL_24;
  }

  v19 = v12[1];
LABEL_26:
  v84[0] = v5;
  v84[1] = v19;
  isSplat = mlir::ElementsAttr::isSplat(v84);
  if (!mlir::Type::isSignedInteger(&isSplat, 32))
  {
    goto LABEL_43;
  }

  v20 = *v5;
  {
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    if (v23)
    {
      goto LABEL_29;
    }

LABEL_36:
    v23 = 0;
    v24 = v22;
    goto LABEL_37;
  }

  v30 = v20;
  mlir::arith::ExtUIOp::fold();
  v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v22 = *(v30 + 8);
  v23 = *(v30 + 16);
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_29:
  v24 = v22;
  v25 = v23;
  do
  {
    v26 = v25 >> 1;
    v27 = &v24[2 * (v25 >> 1)];
    v29 = *v27;
    v28 = v27 + 2;
    v25 += ~(v25 >> 1);
    if (v29 < v21)
    {
      v24 = v28;
    }

    else
    {
      v25 = v26;
    }
  }

  while (v25);
LABEL_37:
  if (v24 != &v22[2 * v23] && *v24 == v21)
  {
    v31 = v24[1];
  }

  else
  {
    v31 = 0;
  }

  v77 = v5;
  v78 = v31;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v77);
  v95 = 7;
  if (v33 == 1 && *ArgAttrsAttr == v95)
  {
    return 1;
  }

LABEL_43:
  v34 = *v5;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_59;
  }

  {
    mlir::arith::ExtUIOp::fold();
    v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    if (v37)
    {
      goto LABEL_46;
    }

LABEL_56:
    v44 = 0;
    goto LABEL_58;
  }

  v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  if (!v37)
  {
    goto LABEL_56;
  }

LABEL_46:
  v38 = v36;
  v39 = v37;
  do
  {
    v40 = v39 >> 1;
    v41 = &v38[2 * (v39 >> 1)];
    v43 = *v41;
    v42 = v41 + 2;
    v39 += ~(v39 >> 1);
    if (v43 < v35)
    {
      v38 = v42;
    }

    else
    {
      v39 = v40;
    }
  }

  while (v39);
  if (v38 == &v36[2 * v37] || *v38 != v35)
  {
    goto LABEL_56;
  }

  v44 = v38[1];
LABEL_58:
  v81 = v5;
  v82 = v44;
  isSplat = mlir::ElementsAttr::isSplat(&v81);
  if (mlir::Type::isSignedInteger(&isSplat, 32))
  {
    return 1;
  }

LABEL_59:
  v79 = 261;
  v77 = "result";
  v78 = 6;
  mlir::Operation::emitOpError(v4, &v77, v84);
  if (v84[0])
  {
    LODWORD(v81) = 3;
    v82 = " #";
    v83 = 2;
    v45 = &v81;
    v46 = v85;
    if (v86 >= v87)
    {
      if (v85 <= &v81 && v85 + 24 * v86 > &v81)
      {
        v73 = &v81 - v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v46 = v85;
        v45 = (v85 + v73);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v45 = &v81;
        v46 = v85;
      }
    }

    v47 = &v46[24 * v86];
    v48 = *v45;
    *(v47 + 2) = v45[2];
    *v47 = v48;
    v49 = ++v86;
    if (v84[0])
    {
      LODWORD(v81) = 5;
      v82 = 0;
      v50 = &v81;
      v51 = v85;
      if (v49 >= v87)
      {
        if (v85 <= &v81 && v85 + 24 * v49 > &v81)
        {
          v74 = &v81 - v85;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v49 + 1, 24);
          v51 = v85;
          v50 = (v85 + v74);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v49 + 1, 24);
          v50 = &v81;
          v51 = v85;
        }
      }

      v52 = &v51[24 * v86];
      v53 = *v50;
      *(v52 + 2) = v50[2];
      *v52 = v53;
      v54 = ++v86;
      if (v84[0])
      {
        LODWORD(v81) = 3;
        v82 = " must be static-shape defined tensor with shape equal to [7] or unranked tensor of 32-bit signed integer values, but got ";
        v83 = 121;
        v55 = &v81;
        v56 = v85;
        if (v54 >= v87)
        {
          if (v85 <= &v81 && v85 + 24 * v54 > &v81)
          {
            v75 = &v81 - v85;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v54 + 1, 24);
            v56 = v85;
            v55 = (v85 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v54 + 1, 24);
            v55 = &v81;
            v56 = v85;
          }
        }

        v57 = &v56[24 * v86];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v86;
        if (v84[0])
        {
          v59 = &v81;
          mlir::DiagnosticArgument::DiagnosticArgument(&v81, v5);
          v60 = v85;
          if (v86 >= v87)
          {
            if (v85 <= &v81 && v85 + 24 * v86 > &v81)
            {
              v76 = &v81 - v85;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
              v60 = v85;
              v59 = (v85 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
              v59 = &v81;
              v60 = v85;
            }
          }

          v61 = &v60[24 * v86];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          ++v86;
        }
      }
    }
  }

  v63 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v84);
  if (v84[0])
  {
    mlir::InFlightDiagnostic::report(v84);
  }

  if (v94 == 1)
  {
    if (v93 != &v94)
    {
      free(v93);
    }

    v64 = __p;
    if (__p)
    {
      v65 = v92;
      v66 = __p;
      if (v92 != __p)
      {
        do
        {
          v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
        }

        while (v65 != v64);
        v66 = __p;
      }

      v92 = v64;
      operator delete(v66);
    }

    v67 = v89;
    if (v89)
    {
      v68 = v90;
      v69 = v89;
      if (v90 != v89)
      {
        do
        {
          v71 = *--v68;
          v70 = v71;
          *v68 = 0;
          if (v71)
          {
            operator delete[](v70);
          }
        }

        while (v68 != v67);
        v69 = v89;
      }

      v90 = v67;
      operator delete(v69);
    }

    if (v85 != v88)
    {
      free(v85);
    }
  }

  return v63;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps29(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
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
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
LABEL_43:
    v130 = a2;
    v131 = 0;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v130);
    v10 = *a2;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_46;
  }

  v45 = v25[1];
  v130 = a2;
  v131 = v45;
  v46 = mlir::CallOpInterface::getArgOperands(&v130);
  v10 = *a2;
  if (!v46)
  {
    goto LABEL_2;
  }

LABEL_46:
  {
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v10 + 8);
    v49 = *(v10 + 16);
    if (!v49)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v119 = v10;
    mlir::arith::ExtUIOp::fold();
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v119 + 8);
    v49 = *(v119 + 16);
    if (!v49)
    {
      goto LABEL_124;
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
  if (v50 != &v48[2 * v49] && *v50 == v47)
  {
    v100 = v50[1];
    v120 = a2;
    v121 = v100;
    mlir::CallableOpInterface::getArgAttrsAttr(&v120);
    v10 = *a2;
    if (!v101)
    {
      goto LABEL_127;
    }

LABEL_2:
    v11 = *(v10 + 136);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_62;
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
LABEL_30:
      v125[0] = a2;
      v125[1] = v32;
      isSplat = mlir::ElementsAttr::isSplat(v125);
      if (!mlir::Type::isSignedInteger(&isSplat, 64))
      {
        goto LABEL_62;
      }

      v33 = *a2;
      {
        v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v35 = *(v33 + 8);
        v36 = *(v33 + 16);
        if (!v36)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v56 = v33;
        mlir::arith::ExtUIOp::fold();
        v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v35 = *(v56 + 8);
        v36 = *(v56 + 16);
        if (!v36)
        {
          goto LABEL_58;
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
        v57 = v37[1];
        goto LABEL_60;
      }

LABEL_58:
      v57 = 0;
LABEL_60:
      v124[0] = a2;
      v124[1] = v57;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v124);
      v142 = 1;
      if (v59 == 1 && *ArgAttrsAttr == v142)
      {
        return 1;
      }

      goto LABEL_62;
    }

LABEL_28:
    v32 = 0;
    goto LABEL_30;
  }

LABEL_124:
  v120 = a2;
  v121 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v120);
  v10 = *a2;
  if (v99)
  {
    goto LABEL_2;
  }

LABEL_127:
  {
    v113 = v10;
    mlir::arith::ExtUIOp::fold();
    v102 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v103 = *(v113 + 8);
    v104 = *(v113 + 16);
    if (v104)
    {
      goto LABEL_129;
    }

LABEL_141:
    v114 = 0;
    goto LABEL_143;
  }

  v102 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v103 = *(v10 + 8);
  v104 = *(v10 + 16);
  if (!v104)
  {
    goto LABEL_141;
  }

LABEL_129:
  v105 = v103;
  v106 = v104;
  do
  {
    v107 = v106 >> 1;
    v108 = &v105[2 * (v106 >> 1)];
    v110 = *v108;
    v109 = v108 + 2;
    v106 += ~(v106 >> 1);
    if (v110 < v102)
    {
      v105 = v109;
    }

    else
    {
      v106 = v107;
    }
  }

  while (v106);
  if (v105 == &v103[2 * v104] || *v105 != v102)
  {
    goto LABEL_141;
  }

  v114 = v105[1];
LABEL_143:
  v127 = a2;
  v128 = v114;
  isSplat = mlir::ElementsAttr::isSplat(&v127);
  if (mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v10 = *a2;
  v115 = *(*a2 + 136);
  if (v115 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v115 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_7;
  }

LABEL_62:
  v60 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_79;
  }

  {
    mlir::arith::ExtUIOp::fold();
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    if (v63)
    {
      goto LABEL_65;
    }

LABEL_75:
    v70 = 0;
    goto LABEL_77;
  }

  v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  if (!v63)
  {
    goto LABEL_75;
  }

LABEL_65:
  v64 = v62;
  v65 = v63;
  do
  {
    v66 = v65 >> 1;
    v67 = &v64[2 * (v65 >> 1)];
    v69 = *v67;
    v68 = v67 + 2;
    v65 += ~(v65 >> 1);
    if (v69 < v61)
    {
      v64 = v68;
    }

    else
    {
      v65 = v66;
    }
  }

  while (v65);
  if (v64 == &v62[2 * v63] || *v64 != v61)
  {
    goto LABEL_75;
  }

  v70 = v64[1];
LABEL_77:
  v123[0] = a2;
  v123[1] = v70;
  isSplat = mlir::ElementsAttr::isSplat(v123);
  if (mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

LABEL_79:
  v122 = 261;
  v120 = a3;
  v121 = a4;
  mlir::Operation::emitOpError(a1, &v120, &v130);
  if (v130)
  {
    LODWORD(v127) = 3;
    v128 = " #";
    v129 = 2;
    v72 = &v127;
    v73 = v132;
    if (v133 >= v134)
    {
      if (v132 <= &v127 && v132 + 24 * v133 > &v127)
      {
        v111 = &v127 - v132;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v73 = v132;
        v72 = v132 + v111;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v72 = &v127;
        v73 = v132;
      }
    }

    v74 = &v73[24 * v133];
    v75 = *v72;
    *(v74 + 2) = *(v72 + 2);
    *v74 = v75;
    v76 = ++v133;
    if (v130)
    {
      LODWORD(v127) = 5;
      v128 = a5;
      v77 = &v127;
      v78 = v132;
      if (v76 >= v134)
      {
        if (v132 <= &v127 && v132 + 24 * v76 > &v127)
        {
          v112 = &v127 - v132;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v76 + 1, 24);
          v78 = v132;
          v77 = v132 + v112;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v76 + 1, 24);
          v77 = &v127;
          v78 = v132;
        }
      }

      v79 = &v78[24 * v133];
      v80 = *v77;
      *(v79 + 2) = *(v77 + 2);
      *v79 = v80;
      v81 = ++v133;
      if (v130)
      {
        LODWORD(v127) = 3;
        v128 = " must be 0D tensor of 64-bit signed integer values or static-shape defined tensor with shape equal to [1] or unranked tensor of 64-bit signed integer values, but got ";
        v129 = 166;
        v82 = &v127;
        v83 = v132;
        if (v81 >= v134)
        {
          if (v132 <= &v127 && v132 + 24 * v81 > &v127)
          {
            v117 = &v127 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v81 + 1, 24);
            v83 = v132;
            v82 = v132 + v117;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v81 + 1, 24);
            v82 = &v127;
            v83 = v132;
          }
        }

        v84 = &v83[24 * v133];
        v85 = *v82;
        *(v84 + 2) = *(v82 + 2);
        *v84 = v85;
        ++v133;
        if (v130)
        {
          v86 = &v127;
          mlir::DiagnosticArgument::DiagnosticArgument(&v127, a2);
          v87 = v132;
          if (v133 >= v134)
          {
            if (v132 <= &v127 && v132 + 24 * v133 > &v127)
            {
              v118 = &v127 - v132;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v87 = v132;
              v86 = v132 + v118;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v86 = &v127;
              v87 = v132;
            }
          }

          v88 = &v87[24 * v133];
          v89 = *v86;
          *(v88 + 2) = *(v86 + 2);
          *v88 = v89;
          ++v133;
        }
      }
    }
  }

  v71 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v130);
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

    v90 = __p;
    if (__p)
    {
      v91 = v139;
      v92 = __p;
      if (v139 != __p)
      {
        do
        {
          v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
        }

        while (v91 != v90);
        v92 = __p;
      }

      v139 = v90;
      operator delete(v92);
    }

    v93 = v136;
    if (v136)
    {
      v94 = v137;
      v95 = v136;
      if (v137 != v136)
      {
        do
        {
          v97 = *--v94;
          v96 = v97;
          *v94 = 0;
          if (v97)
          {
            operator delete[](v96);
          }
        }

        while (v94 != v93);
        v95 = v136;
      }

      v137 = v93;
      operator delete(v95);
    }

    if (v132 != v135)
    {
      free(v132);
    }
  }

  return v71;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::InitRandomPhiloxStateOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.init_random_philox_state", 28, a3, v10, a4, a5);
  *v11 = &unk_1F5B288C0;
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

uint64_t mlir::mps::InstanceNormOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "epsilon";
  v56.var1 = 7;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 52;
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

uint64_t mlir::mps::InstanceNormOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "epsilon", 7, *a2);
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

BOOL mlir::mps::InstanceNormOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::InstanceNormOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, *(a2 + 256));
}

void mlir::mps::InstanceNormOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v22 = a4;
  v23 = a3;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  F32Type = mlir::Builder::getF32Type(a1, v8);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a5);
  v11 = *(a2 + 256);
  if (!v11)
  {
    v12 = operator new(8uLL);
    *v12 = 0;
    *(a2 + 256) = v12;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::InstanceNormOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::InstanceNormOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v11 = *(a2 + 256);
  }

  *v11 = FloatAttr;
  __src = v29;
  v28 = 0x200000000;
  v13 = *a2;
  mlir::ValueRange::ValueRange(&v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v24, *(a2 + 224), *(a2 + 232));
  v30[0] = v25;
  v30[1] = v26;
  if (v26)
  {
    v15 = *(mlir::ValueRange::dereference_iterator(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v16 = v28;
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v29, v28 + 1, 8);
      v16 = v28;
    }

    *(__src + v16) = v15;
    v17 = v28 + 1;
    LODWORD(v28) = v17;
    v18 = __src;
    v19 = *(a2 + 72);
    v20 = v19 + v17;
    if (v20 > *(a2 + 76))
    {
LABEL_9:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v20, 8);
      LODWORD(v19) = *(a2 + 72);
    }
  }

  else
  {
    v21.var0.var0 = 1;
    if (!mlir::emitOptionalError<char const(&)[66]>(v13, v21, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v17 = v28;
    v18 = __src;
    v19 = *(a2 + 72);
    v20 = v19 + v28;
    if (v20 > *(a2 + 76))
    {
      goto LABEL_9;
    }
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v19), v18, 8 * v17);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v17;
  if (__src != v29)
  {
    free(__src);
  }
}

uint64_t mlir::mps::InstanceNormOp::verifyInvariantsImpl(mlir::mps::InstanceNormOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v3, "epsilon", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::InstanceNormOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.instance_norm", 17, a3, v10, a4, a5);
  *v11 = &unk_1F5B28960;
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

void mlir::mps::IsFiniteOp::build(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  v5 = *a1;
  mlir::ValueRange::ValueRange(v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v12, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v7 = __src;
  v8 = v15;
  v9 = *(a2 + 72);
  v10 = v9 + v15;
  if (v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v10, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  if (v8)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::IsFiniteOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.is_finite", 13, a3, v10, a4, a5);
  *v11 = &unk_1F5B28A00;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::IsInfiniteOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.is_infinite", 15, a3, v10, a4, a5);
  *v11 = &unk_1F5B28AA0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::IsNaNOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.is_nan", 10, a3, v10, a4, a5);
  *v11 = &unk_1F5B28B40;
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

void mlir::mps::LPNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  __src = v25;
  v24 = 0x200000000;
  v7 = *a2;
  mlir::ValueRange::ValueRange(&v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  v26[0] = v21;
  v26[1] = v22;
  if (v22)
  {
    v9 = *(mlir::ValueRange::dereference_iterator(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = v24;
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v25, v24 + 1, 8);
      v10 = v24;
    }

    *(__src + v10) = v9;
    v11 = v24 + 1;
    LODWORD(v24) = v11;
    v12 = __src;
    v13 = *(a2 + 72);
    v14 = v13 + v11;
    if (v14 > *(a2 + 76))
    {
LABEL_5:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v14, 8);
      LODWORD(v13) = *(a2 + 72);
    }
  }

  else
  {
    v15.var0.var0 = 1;
    if (!mlir::emitOptionalError<char const(&)[66]>(v7, v15, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v11 = v24;
    v12 = __src;
    v13 = *(a2 + 72);
    v14 = v13 + v24;
    if (v14 > *(a2 + 76))
    {
      goto LABEL_5;
    }
  }

  if (v11)
  {
    memcpy((*(a2 + 64) + 8 * v13), v12, 8 * v11);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v11;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::mps::LPNormOp::verifyInvariantsImpl(mlir::mps::LPNormOp *this)
{
  v139 = *MEMORY[0x1E69E9840];
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_3:
    v5 = *(v4 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_60;
    }

LABEL_8:
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v4 + 8);
      v9 = *(v4 + 16);
      if (!v9)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = v4;
      mlir::arith::ExtUIOp::fold();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v25 + 8);
      v9 = *(v25 + 16);
      if (!v9)
      {
        goto LABEL_29;
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
      v26 = v10[1];
      goto LABEL_31;
    }

LABEL_29:
    v26 = 0;
LABEL_31:
    v121[0] = v3;
    v121[1] = v26;
    isSplat = mlir::ElementsAttr::isSplat(v121);
    if (!mlir::Type::isSignlessInteger(&isSplat, 1) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_60;
    }

    v27 = *v3;
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v37 = v27;
      mlir::arith::ExtUIOp::fold();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v37 + 8);
      v30 = *(v37 + 16);
      if (!v30)
      {
        goto LABEL_56;
      }
    }

    v31 = v29;
    v32 = v30;
    do
    {
      v33 = v32 >> 1;
      v34 = &v31[2 * (v32 >> 1)];
      v36 = *v34;
      v35 = v34 + 2;
      v32 += ~(v32 >> 1);
      if (v36 < v28)
      {
        v31 = v35;
      }

      else
      {
        v32 = v33;
      }
    }

    while (v32);
    if (v31 != &v29[2 * v30] && *v31 == v28)
    {
      v38 = v31[1];
      goto LABEL_58;
    }

LABEL_56:
    v38 = 0;
LABEL_58:
    v120[0] = v3;
    v120[1] = v38;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v120);
    v138 = 1;
    if (v40 == 1 && *ArgAttrsAttr == v138)
    {
      goto LABEL_186;
    }

    goto LABEL_60;
  }

  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v4 + 8);
    v18 = *(v4 + 16);
    if (!v18)
    {
      goto LABEL_116;
    }
  }

  else
  {
    v78 = v4;
    mlir::arith::ExtUIOp::fold();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v78 + 8);
    v18 = *(v78 + 16);
    if (!v18)
    {
      goto LABEL_116;
    }
  }

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
LABEL_116:
    v126 = v3;
    v127 = 0;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v126);
    v4 = *v3;
    if (!ArgOperands)
    {
      goto LABEL_3;
    }

    goto LABEL_119;
  }

  v80 = v19[1];
  v126 = v3;
  v127 = v80;
  v81 = mlir::CallOpInterface::getArgOperands(&v126);
  v4 = *v3;
  if (!v81)
  {
    goto LABEL_3;
  }

LABEL_119:
  {
    v82 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v83 = *(v4 + 8);
    v84 = *(v4 + 16);
    if (!v84)
    {
      goto LABEL_150;
    }
  }

  else
  {
    v115 = v4;
    mlir::arith::ExtUIOp::fold();
    v82 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v83 = *(v115 + 8);
    v84 = *(v115 + 16);
    if (!v84)
    {
      goto LABEL_150;
    }
  }

  v85 = v83;
  v86 = v84;
  do
  {
    v87 = v86 >> 1;
    v88 = &v85[2 * (v86 >> 1)];
    v90 = *v88;
    v89 = v88 + 2;
    v86 += ~(v86 >> 1);
    if (v90 < v82)
    {
      v85 = v89;
    }

    else
    {
      v86 = v87;
    }
  }

  while (v86);
  if (v85 == &v83[2 * v84] || *v85 != v82)
  {
LABEL_150:
    v116 = v3;
    v117 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v116);
    v4 = *v3;
    if (v92)
    {
      goto LABEL_3;
    }

    goto LABEL_153;
  }

  v93 = v85[1];
  v116 = v3;
  v117 = v93;
  mlir::CallableOpInterface::getArgAttrsAttr(&v116);
  v4 = *v3;
  if (v94)
  {
    goto LABEL_3;
  }

LABEL_153:
  {
    v95 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v96 = *(v4 + 8);
    v97 = *(v4 + 16);
    if (v97)
    {
      goto LABEL_155;
    }

LABEL_163:
    v97 = 0;
    v98 = v96;
    goto LABEL_164;
  }

  v105 = v4;
  mlir::arith::ExtUIOp::fold();
  v95 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v96 = *(v105 + 8);
  v97 = *(v105 + 16);
  if (!v97)
  {
    goto LABEL_163;
  }

LABEL_155:
  v98 = v96;
  v99 = v97;
  do
  {
    v100 = v99 >> 1;
    v101 = &v98[2 * (v99 >> 1)];
    v103 = *v101;
    v102 = v101 + 2;
    v99 += ~(v99 >> 1);
    if (v103 < v95)
    {
      v98 = v102;
    }

    else
    {
      v99 = v100;
    }
  }

  while (v99);
LABEL_164:
  if (v98 != &v96[2 * v97] && *v98 == v95)
  {
    v106 = v98[1];
  }

  else
  {
    v106 = 0;
  }

  v123 = v3;
  v124 = v106;
  isSplat = mlir::ElementsAttr::isSplat(&v123);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_186;
  }

  v4 = *v3;
  v107 = *(*v3 + 136);
  if (v107 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v107 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_8;
  }

LABEL_60:
  v41 = *v3;
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v69 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v70 = *(v41 + 8);
      v71 = *(v41 + 16);
      if (!v71)
      {
        goto LABEL_131;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v69 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v70 = *(v41 + 8);
      v71 = *(v41 + 16);
      if (!v71)
      {
        goto LABEL_131;
      }
    }

    v72 = v70;
    v73 = v71;
    do
    {
      v74 = v73 >> 1;
      v75 = &v72[2 * (v73 >> 1)];
      v77 = *v75;
      v76 = v75 + 2;
      v73 += ~(v73 >> 1);
      if (v77 < v69)
      {
        v72 = v76;
      }

      else
      {
        v73 = v74;
      }
    }

    while (v73);
    if (v72 != &v70[2 * v71] && *v72 == v69)
    {
      v91 = v72[1];
      goto LABEL_133;
    }

LABEL_131:
    v91 = 0;
LABEL_133:
    v119[0] = v3;
    v119[1] = v91;
    isSplat = mlir::ElementsAttr::isSplat(v119);
    if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_186;
    }
  }

  v118 = 261;
  v116 = "operand";
  v117 = 7;
  mlir::Operation::emitOpError(v2, &v116, &v126);
  if (v126)
  {
    LODWORD(v123) = 3;
    v124 = " #";
    v125 = 2;
    v42 = &v123;
    v43 = v128;
    if (v129 >= v130)
    {
      if (v128 <= &v123 && v128 + 24 * v129 > &v123)
      {
        v104 = &v123 - v128;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v129 + 1, 24);
        v43 = v128;
        v42 = (v128 + v104);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v129 + 1, 24);
        v42 = &v123;
        v43 = v128;
      }
    }

    v44 = &v43[24 * v129];
    v45 = *v42;
    *(v44 + 2) = v42[2];
    *v44 = v45;
    v46 = ++v129;
    if (v126)
    {
      LODWORD(v123) = 5;
      v124 = 1;
      v47 = &v123;
      v48 = v128;
      if (v46 >= v130)
      {
        if (v128 <= &v123 && v128 + 24 * v46 > &v123)
        {
          v112 = &v123 - v128;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v46 + 1, 24);
          v48 = v128;
          v47 = (v128 + v112);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v46 + 1, 24);
          v47 = &v123;
          v48 = v128;
        }
      }

      v49 = &v48[24 * v129];
      v50 = *v47;
      *(v49 + 2) = v47[2];
      *v49 = v50;
      v51 = ++v129;
      if (v126)
      {
        LODWORD(v123) = 3;
        v124 = " must be 0D tensor of mps native type values or static-shape defined tensor with shape equal to [1] or unranked tensor of mps native type values, but got ";
        v125 = 154;
        v52 = &v123;
        v53 = v128;
        if (v51 >= v130)
        {
          if (v128 <= &v123 && v128 + 24 * v51 > &v123)
          {
            v113 = &v123 - v128;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v51 + 1, 24);
            v53 = v128;
            v52 = (v128 + v113);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v51 + 1, 24);
            v52 = &v123;
            v53 = v128;
          }
        }

        v54 = &v53[24 * v129];
        v55 = *v52;
        *(v54 + 2) = v52[2];
        *v54 = v55;
        ++v129;
        if (v126)
        {
          v56 = &v123;
          mlir::DiagnosticArgument::DiagnosticArgument(&v123, v3);
          v57 = v128;
          if (v129 >= v130)
          {
            if (v128 <= &v123 && v128 + 24 * v129 > &v123)
            {
              v114 = &v123 - v128;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v129 + 1, 24);
              v57 = v128;
              v56 = (v128 + v114);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v129 + 1, 24);
              v56 = &v123;
              v57 = v128;
            }
          }

          v58 = &v57[24 * v129];
          v59 = *v56;
          *(v58 + 2) = v56[2];
          *v58 = v59;
          ++v129;
        }
      }
    }
  }

  v60 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v126);
  if (v126)
  {
    mlir::InFlightDiagnostic::report(&v126);
  }

  if (v137 == 1)
  {
    if (v136 != &v137)
    {
      free(v136);
    }

    v61 = __p;
    if (__p)
    {
      v62 = v135;
      v63 = __p;
      if (v135 != __p)
      {
        do
        {
          v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
        }

        while (v62 != v61);
        v63 = __p;
      }

      v135 = v61;
      operator delete(v63);
    }

    v64 = v132;
    if (v132)
    {
      v65 = v133;
      v66 = v132;
      if (v133 != v132)
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
        v66 = v132;
      }

      v133 = v64;
      operator delete(v66);
    }

    if (v128 != v131)
    {
      free(v128);
    }
  }

  if (!v60)
  {
    return 0;
  }

LABEL_186:
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v109 = *this - 16;
  }

  else
  {
    v109 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v109, 0);
  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LPNormOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.lp_norm", 11, a3, v10, a4, a5);
  *v11 = &unk_1F5B28BE0;
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

uint64_t mlir::mps::LSTMGradientOp::getAsmResultNames(uint64_t *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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
  a2(a3, NextResultAtOffset, "gradient_output_sequence", 24);
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
  a2(a3, v9, "gradient_recurrent_weight", 25);
  if (*(*a1 + 36))
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 2);
  v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  a2(a3, v12, "gradient_input_state", 20);
  if (*(*a1 + 36))
  {
    v13 = *a1 - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 3);
  v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  a2(a3, v15, "gradient_input_cell", 19);
  v16 = *a1;
  v17 = *(*a1 + 36);
  v18 = v16 - 16;
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 4);
  if (v17 != 4)
  {
    v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);

    return (a2)(a3, v21, "gradient_peephole", 17);
  }

  return result;
}

uint64_t mlir::mps::LSTMGradientOp::getODSResults(mlir::mps::LSTMGradientOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (a2)
  {
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
LABEL_14:
      v26 = a2 - v4;
      v27 = &dword_1E09845D0 + v4;
      do
      {
        v28 = *v27++;
        v5 += v28;
        --v26;
      }

      while (v26);
      goto LABEL_16;
    }

    if (a2 >= 0x20)
    {
      v6 = 0uLL;
      v7 = "4mlir3mps10MPSDialectE";
      v8 = 0uLL;
      v4 = a2 & 0xFFFFFFE0;
      v9 = v4;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      do
      {
        v16 = *v7[-2].i8;
        v17 = vmovl_u8(*v16.i8);
        v18 = vmovl_high_u8(v16);
        v19 = vmovl_u8(*v7);
        v20 = vmovl_high_u8(*v7->i8);
        v11 = vaddw_high_u16(v11, v18);
        v10 = vaddw_u16(v10, *v18.i8);
        v8 = vaddw_high_u16(v8, v17);
        v6 = vaddw_u16(v6, *v17.i8);
        v15 = vaddw_high_u16(v15, v20);
        v14 = vaddw_u16(v14, *v20.i8);
        v13 = vaddw_high_u16(v13, v19);
        v12 = vaddw_u16(v12, *v19.i8);
        v7 += 4;
        v9 -= 32;
      }

      while (v9);
      a4 = vaddq_s32(vaddq_s32(v13, v8), vaddq_s32(v15, v11));
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v6), vaddq_s32(v14, v10)), a4));
      if (v4 == a2)
      {
        goto LABEL_16;
      }

      if ((a2 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v21 = v4;
    v4 = a2 & 0xFFFFFFFC;
    v22 = v5;
    v23 = (&dword_1E09845D0 + v21);
    v24 = v21 - v4;
    do
    {
      v25 = *v23++;
      a4.i32[0] = v25;
      a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
      v22 = vaddw_u16(v22, *a4.i8);
      v24 += 4;
    }

    while (v24);
    v5 = vaddvq_s32(v22);
    if (v4 == a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_16:
  v29 = *(*this + 36);
  if (v29)
  {
    result = *this - 16;
  }

  else
  {
    result = 0;
  }

  if (a2 + (v29 - 5) * v5)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(result, a2 + (v29 - 5) * v5);
  }

  return result;
}

unint64_t mlir::mps::LSTMGradientOp::getODSResultIndexAndLength(mlir::mps::LSTMGradientOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (!a2)
  {
    v4 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v4 = a2;
  if (a2 < 4)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v7 = 0uLL;
    v8 = "4mlir3mps10MPSDialectE";
    v9 = 0uLL;
    v5 = a2 & 0xFFFFFFE0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *v8[-2].i8;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = vmovl_u8(*v8);
      v21 = vmovl_high_u8(*v8->i8);
      v12 = vaddw_high_u16(v12, v19);
      v11 = vaddw_u16(v11, *v19.i8);
      v9 = vaddw_high_u16(v9, v18);
      v7 = vaddw_u16(v7, *v18.i8);
      v16 = vaddw_high_u16(v16, v21);
      v15 = vaddw_u16(v15, *v21.i8);
      v14 = vaddw_high_u16(v14, v20);
      v13 = vaddw_u16(v13, *v20.i8);
      v8 += 4;
      v10 -= 32;
    }

    while (v10);
    a4 = vaddq_s32(vaddq_s32(v14, v9), vaddq_s32(v16, v12));
    v6 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a4));
    if (v5 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v27 = &dword_1E09845D0 + v5;
      v28 = a2 - v5;
      do
      {
        v29 = *v27++;
        v6 += v29;
        --v28;
      }

      while (v28);
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v22 = v5;
  v5 = a2 & 0xFFFFFFFC;
  v23 = v6;
  v24 = (&dword_1E09845D0 + v22);
  v25 = v22 - v5;
  do
  {
    v26 = *v24++;
    a4.i32[0] = v26;
    a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
    v23 = vaddw_u16(v23, *a4.i8);
    v25 += 4;
  }

  while (v25);
  v6 = vaddvq_s32(v23);
  if (v5 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v30 = *(*this + 36);
  v31 = 0x100000000;
  if (*(&dword_1E09845D0 + v4))
  {
    v31 = (v30 - 4) << 32;
  }

  return v31 | (a2 + (v30 - 5) * v6);
}

BOOL mlir::mps::LSTMGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v92 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v76 = v6;
  if (!v6)
  {
    a3(&v80, a4);
    if (v80)
    {
      LODWORD(v77) = 3;
      v78 = "expected DictionaryAttr to set properties";
      v79 = 41;
      v26 = &v77;
      v27 = v82;
      if (v83 >= v84)
      {
        if (v82 <= &v77 && v82 + 24 * v83 > &v77)
        {
          v69 = &v77 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v27 = v82;
          v26 = (v82 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
          v26 = &v77;
          v27 = v82;
        }
      }

      v28 = &v27[24 * v83];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v83;
      if (v80)
      {
        mlir::InFlightDiagnostic::report(&v80);
      }
    }

    if (v91 != 1)
    {
      return 0;
    }

    if (v90 != &v91)
    {
      free(v90);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v89;
      v32 = __p;
      if (v89 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v89 = v30;
      operator delete(v32);
    }

    v21 = v86;
    if (!v86)
    {
      goto LABEL_70;
    }

    v33 = v87;
    v23 = v86;
    if (v87 == v86)
    {
LABEL_69:
      v87 = v21;
      operator delete(v23);
LABEL_70:
      if (v82 != v85)
      {
        free(v82);
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
    v23 = v86;
    goto LABEL_69;
  }

  v93.var0 = "cell_activation";
  v93.var1 = 15;
  v8 = mlir::DictionaryAttr::get(&v76, v93);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v9 = v8;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 60;
        v10 = &v77;
        v11 = v82;
        if (v83 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v83 > &v77)
          {
            v70 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v11 = v82;
            v10 = (v82 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v10 = &v77;
            v11 = v82;
          }
        }

        v12 = &v11[24 * v83];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v83;
        if (v80)
        {
          v14 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v9);
          v15 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v71 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v15 = v82;
              v14 = (v82 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v14 = &v77;
              v15 = v82;
            }
          }

          v16 = &v15[24 * v83];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v83;
          if (v80)
          {
            mlir::InFlightDiagnostic::report(&v80);
          }
        }
      }

      if ((v91 & 1) == 0)
      {
        return 0;
      }

      if (v90 != &v91)
      {
        free(v90);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v89;
        v20 = __p;
        if (v89 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v89 = v18;
        operator delete(v20);
      }

      v21 = v86;
      if (!v86)
      {
        goto LABEL_70;
      }

      v22 = v87;
      v23 = v86;
      if (v87 == v86)
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

  v94.var0 = "fgate_activation";
  v94.var1 = 16;
  v36 = mlir::DictionaryAttr::get(&v76, v94);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v37 = v36;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 61;
        v38 = &v77;
        v39 = v82;
        if (v83 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v83 > &v77)
          {
            v72 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v39 = v82;
            v38 = (v82 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v38 = &v77;
            v39 = v82;
          }
        }

        v40 = &v39[24 * v83];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v83;
        if (v80)
        {
          v42 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v37);
          v43 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v73 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v43 = v82;
              v42 = (v82 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v42 = &v77;
              v43 = v82;
            }
          }

          v44 = &v43[24 * v83];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v83;
          if (v80)
          {
            mlir::InFlightDiagnostic::report(&v80);
          }
        }
      }

      if ((v91 & 1) == 0)
      {
        return 0;
      }

      if (v90 != &v91)
      {
        free(v90);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v89;
        v48 = __p;
        if (v89 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v89 = v46;
        operator delete(v48);
      }

      v21 = v86;
      if (!v86)
      {
        goto LABEL_70;
      }

      v49 = v87;
      v23 = v86;
      if (v87 == v86)
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

  v95.var0 = "gate_layout";
  v95.var1 = 11;
  v52 = mlir::DictionaryAttr::get(&v76, v95);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
    {
      v53 = v52;
      a3(&v80, a4);
      if (v80)
      {
        LODWORD(v77) = 3;
        v79 = 56;
        v54 = &v77;
        v55 = v82;
        if (v83 >= v84)
        {
          if (v82 <= &v77 && v82 + 24 * v83 > &v77)
          {
            v74 = &v77 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v55 = v82;
            v54 = (v82 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
            v54 = &v77;
            v55 = v82;
          }
        }

        v56 = &v55[24 * v83];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v83;
        if (v80)
        {
          v58 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v53);
          v59 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v75 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v59 = v82;
              v58 = (v82 + v75);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v58 = &v77;
              v59 = v82;
            }
          }

          v60 = &v59[24 * v83];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v83;
          if (v80)
          {
            mlir::InFlightDiagnostic::report(&v80);
          }
        }
      }

      if (v91 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v81);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v96.var0 = "igate_activation";
  v96.var1 = 16;
  v62 = mlir::DictionaryAttr::get(&v76, v96);
  v77 = v62;
  if (v62)
  {
    if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v80, a4);
LABEL_95:
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v80, v63);
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v66, &v77);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
      return 0;
    }

    a1[3] = v62;
  }

  v97.var0 = "ogate_activation";
  v97.var1 = 16;
  v64 = mlir::DictionaryAttr::get(&v76, v97);
  v77 = v64;
  if (v64)
  {
    if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v80, a4);
      goto LABEL_95;
    }

    a1[4] = v64;
  }

  v98.var0 = "zgate_activation";
  v98.var1 = 16;
  v65 = mlir::DictionaryAttr::get(&v76, v98);
  v77 = v65;
  if (v65)
  {
    if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v80, a4);
      goto LABEL_95;
    }

    a1[5] = v65;
  }

  v99.var0 = "operandSegmentSizes";
  v99.var1 = 19;
  v68 = mlir::DictionaryAttr::get(&v76, v99);
  if (!v68)
  {
    v100.var0 = "operand_segment_sizes";
    v100.var1 = 21;
    v68 = mlir::DictionaryAttr::get(&v76, v100);
    if (!v68)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 6, 0xA, v68, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::LSTMGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v60[6] = *MEMORY[0x1E69E9840];
  v57 = a1;
  v58 = v60;
  v59 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v57, "cell_activation", 15, *a2);
    v6 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v45 = NamedAttr;
      v46 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v5 = v46;
      NamedAttr = v45;
      v6 = v59;
    }

    v7 = (v58 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v59) = v59 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v57, "fgate_activation", 16, v8);
    v11 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v47 = v9;
      v48 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v10 = v48;
      v9 = v47;
      v11 = v59;
    }

    v12 = (v58 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v59) = v59 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v57, "gate_layout", 11, v13);
    v16 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v49 = v14;
      v50 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v15 = v50;
      v14 = v49;
      v16 = v59;
    }

    v17 = (v58 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v59) = v59 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v57, "igate_activation", 16, v18);
    v21 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v51 = v19;
      v52 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v20 = v52;
      v19 = v51;
      v21 = v59;
    }

    v22 = (v58 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    LODWORD(v59) = v59 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v57, "ogate_activation", 16, v23);
    v26 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v53 = v24;
      v54 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v25 = v54;
      v24 = v53;
      v26 = v59;
    }

    v27 = (v58 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    LODWORD(v59) = v59 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v57, "zgate_activation", 16, v28);
    v31 = v59;
    if (v59 >= HIDWORD(v59))
    {
      v55 = v29;
      v56 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
      v30 = v56;
      v29 = v55;
      v31 = v59;
    }

    v32 = (v58 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    LODWORD(v59) = v59 + 1;
  }

  v33 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 6, 10);
  v34 = mlir::Builder::getNamedAttr(&v57, "operandSegmentSizes", 19, v33);
  v36 = v59;
  if (v59 >= HIDWORD(v59))
  {
    v43 = v34;
    v44 = v35;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 16);
    v35 = v44;
    v34 = v43;
    v36 = v59;
  }

  v37 = (v58 + 16 * v36);
  *v37 = v34;
  v37[1] = v35;
  v38 = __CFADD__(v59, 1);
  v39 = (v59 + 1);
  LODWORD(v59) = v59 + 1;
  if (v38)
  {
    DictionaryAttr = 0;
    v41 = v58;
    if (v58 == v60)
    {
      return DictionaryAttr;
    }

    goto LABEL_32;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v57, v58, v39);
  v41 = v58;
  if (v58 != v60)
  {
LABEL_32:
    free(v41);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::LSTMGradientOp::computePropertiesHash(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a1[3];
  v8 = HIDWORD(a1[2]);
  v9 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v8);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v43 = v6;
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = a1[5];
  v14 = HIDWORD(a1[4]);
  v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
  v40 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v41 = v12;
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v18 = a1[7];
  v20 = a1[8];
  v19 = a1[9];
  v21 = a1[6] - 0x3C5A37A36834CED9 * v19 - 0x6E18B188484051E8;
  v22 = __ROR8__(v21 + v19, 52);
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v23 = __ROR8__(v21, 37);
  v24 = v21 + v18;
  v25 = __ROR8__(v24, 7);
  v26 = v24 + v20;
  v27 = v25 + v23 + v22 + __ROR8__(v26, 31);
  v28 = v20 + v18;
  v29 = a1[10];
  v30 = __ROR8__(v28 + v29, 52);
  v31 = __ROR8__(v28, 37);
  v32 = v28 + v20;
  v33 = __ROR8__(v32, 7);
  v34 = v32 + v19;
  v35 = v26 + v19 + v31 + v30 + v33 + __ROR8__(v34, 31);
  v36 = (0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v34 + v29 + v27) - 0x651E95C4D06FBFB1 * v35) ^ ((0xC3A5C85C97CB3127 * (v34 + v29 + v27) - 0x651E95C4D06FBFB1 * v35) >> 47))) ^ 0xFF51AFD7ED558CCDLL;
  v38 = 0x9AE16A3B2F90404FLL * ((v36 + v27) ^ ((v36 + v27) >> 47));
  memset(v45, 0, sizeof(v45));
  v46 = 0xFF51AFD7ED558CCDLL;
  v44 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v44, 0, v45, &v45[3] + 8, &v43, &v42, &v41, &v40, &v39, &v38);
}

uint64_t mlir::mps::LSTMGradientOp::getInherentAttr(uint64_t *a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 15)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "gate_layout", 0xBuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 15 && *__s1 == 0x7463615F6C6C6563 && *(__s1 + 7) == 0x6E6F697461766974)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 16)
  {
    if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 6, 10);
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 6, 10);
    }

    return 0;
  }

  if (!memcmp(__s1, "fgate_activation", 0x10uLL))
  {
    return a2[1];
  }

  if (!memcmp(__s1, "igate_activation", 0x10uLL))
  {
    return a2[3];
  }

  if (*__s1 != 0x63615F657461676FLL || *(__s1 + 1) != 0x6E6F697461766974)
  {
    if (*__s1 == 0x63615F657461677ALL && *(__s1 + 1) == 0x6E6F697461766974)
    {
      return a2[5];
    }

    return 0;
  }

  return a2[4];
}

uint64_t mlir::mps::LSTMGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 <= 15)
  {
    if (a3 == 11)
    {
      result = memcmp(__s1, "gate_layout", 0xBuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          v5[2] = v14;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }

    else if (a3 == 15 && *__s1 == 0x7463615F6C6C6563 && *(__s1 + 7) == 0x6E6F697461766974)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else if (a3 == 16)
  {
    result = memcmp(__s1, "fgate_activation", 0x10uLL);
    if (result)
    {
      result = memcmp(__s1, "igate_activation", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x63615F657461676FLL && *(__s1 + 1) == 0x6E6F697461766974)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
            {
              v17 = a4;
            }

            else
            {
              v17 = 0;
            }

            v5[4] = v17;
          }

          else
          {
            v5[4] = 0;
          }
        }

        else if (*__s1 == 0x63615F657461677ALL && *(__s1 + 1) == 0x6E6F697461766974)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
            {
              v11 = a4;
            }

            else
            {
              v11 = 0;
            }

            v5[5] = v11;
          }

          else
          {
            v5[5] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }

        v5[3] = v16;
      }

      else
      {
        v5[3] = 0;
      }
    }

    else if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
      {
        v15 = a4;
      }

      else
      {
        v15 = 0;
      }

      v5[1] = v15;
    }

    else
    {
      v5[1] = 0;
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
        v12 = a4;
      }

      else
      {
        v12 = 0;
      }

      v18 = v12;
      if (v12)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v18);
        if (result == 10)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v18);
          if (v13)
          {
            return memmove(v5 + 6, result, 4 * v13);
          }
        }
      }
    }
  }

  return result;
}

void mlir::mps::LSTMGradientOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "cell_activation", 15, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "fgate_activation", 16, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "gate_layout", 11, v7);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "igate_activation", 16, v8);
  }

  v9 = a2[4];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "ogate_activation", 16, v9);
  }

  v10 = a2[5];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "zgate_activation", 16, v10);
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 6, 10);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v11);
}

BOOL mlir::mps::LSTMGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v8, "cell_activation", 0xF, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "fgate_activation", 0x10, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(v10, "gate_layout", 0xB, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v11, "igate_activation", 0x10, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v12, "ogate_activation", 0x10, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v13, "zgate_activation", 0x10, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid LSTM gate layout";
        v29 = 54;
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

uint64_t mlir::mps::LSTMGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v12[26] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, *(a2 + 256)))
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v9;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v9;
    {
      mlir::mps::LSTMGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::LSTMGateLayoutAttr>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 4))
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

    if (mlir::AffineBinaryOpExpr::getLHS(&v11) >= 11)
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
      memmove(v3 + 6, v6, 4 * v7);
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 5))
  {
    v9[0] = a1;
    v9[1] = (v3 + 6);
    return mlir::mps::LSTMGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v9) & 1;
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::LSTMGateLayoutAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::LSTMGateLayoutAttr]";
  v38 = 79;
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

uint64_t mlir::mps::LSTMGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 0xA);
}

uint64_t mlir::mps::LSTMGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 1));
  (*(*a2 + 24))(a2, *(v5 + 2));
  (*(*a2 + 24))(a2, *(v5 + 3));
  (*(*a2 + 24))(a2, *(v5 + 4));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v5 + 6, 10);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 24))(a2, *(v5 + 5));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 12, 10);
  }

  return result;
}

void mlir::mps::LSTMGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = a14;
  v98 = *MEMORY[0x1E69E9840];
  v87 = a4;
  v88 = a3;
  v85 = a6;
  v86 = a5;
  v83 = a14;
  v84 = a13;
  v81 = a16;
  v82 = a15;
  v79 = a18;
  v80 = a17;
  mlir::OperationState::addOperands(a2, &v88, 1uLL);
  mlir::OperationState::addOperands(a2, &v87, 1uLL);
  mlir::OperationState::addOperands(a2, &v86, 1uLL);
  mlir::OperationState::addOperands(a2, &v85, 1uLL);
  if (a13)
  {
    mlir::OperationState::addOperands(a2, &v84, 1uLL);
    v20 = v83;
  }

  if (v20)
  {
    mlir::OperationState::addOperands(a2, &v83, 1uLL);
  }

  if (v82)
  {
    mlir::OperationState::addOperands(a2, &v82, 1uLL);
  }

  if (v81)
  {
    mlir::OperationState::addOperands(a2, &v81, 1uLL);
  }

  if (v80)
  {
    mlir::OperationState::addOperands(a2, &v80, 1uLL);
  }

  if (v79)
  {
    mlir::OperationState::addOperands(a2, &v79, 1uLL);
    v21 = v79 != 0;
  }

  else
  {
    v21 = 0;
  }

  v22.i64[0] = v82;
  v22.i64[1] = v81;
  v23.i64[0] = v84;
  v23.i64[1] = v83;
  v24 = v80 != 0;
  v25 = *(a2 + 256);
  if (!v25)
  {
    v75 = v23;
    v76 = v22;
    v26 = operator new(0x58uLL);
    *v26 = 0u;
    v26[1] = 0u;
    v26[2] = 0u;
    v26[3] = 0u;
    v26[4] = 0u;
    *(v26 + 10) = 0;
    *(a2 + 256) = v26;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v91;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v91;
    {
      mlir::mps::LSTMGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v25 = *(a2 + 256);
    v23 = v75;
    v22 = v76;
  }

  v27.i64[0] = 0x100000001;
  v27.i64[1] = 0x100000001;
  v25[3] = v27;
  v25[4] = vbicq_s8(v27, vuzp1q_s32(vceqzq_s64(v23), vceqzq_s64(v22)));
  v25[5].i32[0] = v24;
  v25[5].i32[1] = v21;
  v28 = a1;
  v29 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v94 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v95 = v29;
  v91 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v92 = &v94;
  v90 = a7;
  v31 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v32 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v31);
  v89 = &v90;
  v96 = &v90;
  v97 = &v91;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) >> 32) >> 15) ^ (-348639895 * (v31 ^ (v32 >> 47) ^ v32))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v89, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v96);
  v34 = *(a2 + 256);
  if (!v34)
  {
    v35 = operator new(0x58uLL);
    *v35 = 0u;
    v35[1] = 0u;
    v35[2] = 0u;
    v35[3] = 0u;
    v35[4] = 0u;
    *(v35 + 10) = 0;
    *(a2 + 256) = v35;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v91;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v91;
    {
      mlir::mps::LSTMGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v34 = *(a2 + 256);
  }

  *(v34 + 24) = ParametricStorageTypeImpl;
  v36 = *a1;
  v37 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v94 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v95 = v36;
  v91 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v92 = &v94;
  v90 = a8;
  v38 = 0x9DDFEA08EB382D69 * (a8 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)));
  v89 = &v90;
  v96 = &v90;
  v97 = &v91;
  v39 = mlir::StorageUniquer::getParametricStorageTypeImpl(v37, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v38 >> 47) ^ v38), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v89, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v96);
  v40 = *(a2 + 256);
  if (!v40)
  {
    v41 = operator new(0x58uLL);
    *v41 = 0u;
    v41[1] = 0u;
    v41[2] = 0u;
    v41[3] = 0u;
    v41[4] = 0u;
    *(v41 + 10) = 0;
    *(a2 + 256) = v41;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v91;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v91;
    {
      mlir::mps::LSTMGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v40 = *(a2 + 256);
  }

  *(v40 + 8) = v39;
  v42 = *a1;
  v43 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v94 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v95 = v42;
  v91 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v92 = &v94;
  v90 = a9;
  v44 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)));
  v89 = &v90;
  v96 = &v90;
  v97 = &v91;
  v45 = mlir::StorageUniquer::getParametricStorageTypeImpl(v43, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v44 >> 47) ^ v44), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v89, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v96);
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v91;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v91;
    {
      mlir::mps::LSTMGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v46 = *(a2 + 256);
    v28 = a1;
  }

  *(v46 + 40) = v45;
  v48 = *v28;
  v49 = mlir::MLIRContext::getAttributeUniquer(*v28);
  v94 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v95 = v48;
  v91 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v92 = &v94;
  v90 = a10;
  v50 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)));
  v89 = &v90;
  v96 = &v90;
  v97 = &v91;
  v51 = mlir::StorageUniquer::getParametricStorageTypeImpl(v49, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v50 >> 47) ^ v50), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v89, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v96);
  v52 = *(a2 + 256);
  if (!v52)
  {
    v53 = operator new(0x58uLL);
    *v53 = 0u;
    v53[1] = 0u;
    v53[2] = 0u;
    v53[3] = 0u;
    v53[4] = 0u;
    *(v53 + 10) = 0;
    *(a2 + 256) = v53;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v91;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v91;
    {
      mlir::mps::LSTMGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v52 = *(a2 + 256);
    v28 = a1;
  }

  *(v52 + 32) = v51;
  v54 = *v28;
  v55 = mlir::MLIRContext::getAttributeUniquer(*v28);
  v94 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v95 = v54;
  v91 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v92 = &v94;
  v90 = a11;
  v56 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)));
  v89 = &v90;
  v96 = &v90;
  v97 = &v91;
  v57 = mlir::StorageUniquer::getParametricStorageTypeImpl(v55, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v56 >> 47) ^ v56), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v89, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v96);
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v91;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v91;
    {
      mlir::mps::LSTMGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v58 = *(a2 + 256);
  }

  *v58 = v57;
  v60 = *v28;
  v61 = mlir::MLIRContext::getAttributeUniquer(v60);
  v94 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v95 = v60;
  v91 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v92 = &v94;
  v90 = a12;
  v62 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)));
  v89 = &v90;
  v96 = &v90;
  v97 = &v91;
  v63 = mlir::StorageUniquer::getParametricStorageTypeImpl(v61, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v62 >> 47) ^ v62), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v89, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v96);
  v64 = *(a2 + 256);
  if (!v64)
  {
    v65 = operator new(0x58uLL);
    *v65 = 0u;
    v65[1] = 0u;
    v65[2] = 0u;
    v65[3] = 0u;
    v65[4] = 0u;
    *(v65 + 10) = 0;
    *(a2 + 256) = v65;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v91;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v91;
    {
      mlir::mps::LSTMGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v64 = *(a2 + 256);
  }

  *(v64 + 16) = v63;
  v91 = v93;
  v92 = 0x200000000;
  v66 = *a2;
  mlir::ValueRange::ValueRange(&v96, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v69 = *(a2 + 256);
  v70 = mlir::ValueRange::ValueRange(&v94, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::LSTMGradientOp::inferReturnTypes(v70, v66, 1, v96, v97, Dictionary, v69, v71, v94, v95, &v91))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v72 = v91;
  v73 = v92;
  v74 = *(a2 + 72);
  if (v74 + v92 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v74 + v92, 8);
    LODWORD(v74) = *(a2 + 72);
  }

  if (v73)
  {
    memcpy((*(a2 + 64) + 8 * v74), v72, 8 * v73);
    LODWORD(v74) = *(a2 + 72);
  }

  *(a2 + 72) = v74 + v73;
  if (v91 != v93)
  {
    free(v91);
  }
}

mlir::MLIRContext *mlir::mps::LSTMGradientOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v17 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v17);
  v4 = result;
  if (a2[3])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
    v12 = v4;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 3;
    v14 = &v17;
    v15 = &v16;
    v13 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[3] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[5])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v6 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 3;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v6, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[1] = result;
  if (a2[5])
  {
LABEL_4:
    if (a2[4])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[5] = result;
  if (a2[4])
  {
LABEL_5:
    if (*a2)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 3;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v8, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[4] = result;
  if (*a2)
  {
LABEL_6:
    if (a2[2])
    {
      return result;
    }

LABEL_13:
    v10 = mlir::MLIRContext::getAttributeUniquer(v4);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
    v12 = v4;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 0;
    v13 = &v16;
    v14 = &v17;
    v15 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v10, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[2] = result;
    return result;
  }

LABEL_12:
  v9 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v9, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  *a2 = result;
  if (!a2[2])
  {
    goto LABEL_13;
  }

  return result;
}

BOOL mlir::mps::LSTMGradientOp::verifyInvariantsImpl(mlir::mps::LSTMGradientOp *this)
{
  v133[26] = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[8];
  v5 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v8 = v3[12];
  v9 = v3[13];
  v133[0] = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v6, "igate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v5, "fgate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "zgate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v8, "ogate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v4, "cell_activation", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(v7, "gate_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v132 = 0;
  v10 = *(*this + 44);
  v11 = *(*this + 16 * ((v10 >> 23) & 1) + 112);
  if ((v10 & 0x800000) != 0)
  {
    v12 = *(*this + 72);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v11)
    {
LABEL_9:
      v13 = v12 + 24;
      do
      {
        v14 = *this;
        v15 = *(*v13 + 8);
        v16 = v132++;
        if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v14, v15 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v16) & 1) == 0)
        {
          return 0;
        }

        v13 += 32;
      }

      while (--v11);
    }
  }

  ODSOperands = mlir::mps::GRUGradientOp::getODSOperands(this, 1u);
  if (v18)
  {
    v19 = v18;
    v20 = ODSOperands + 24;
    do
    {
      v21 = *this;
      v22 = *(*v20 + 8);
      v23 = v132++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v21, v22 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v23) & 1) == 0)
      {
        return 0;
      }

      v20 += 32;
    }

    while (--v19);
  }

  v24 = mlir::mps::GRUGradientOp::getODSOperands(this, 2u);
  if (v25)
  {
    v26 = v25;
    v27 = v24 + 24;
    do
    {
      v28 = *this;
      v29 = *(*v27 + 8);
      v30 = v132++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v28, v29 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v30) & 1) == 0)
      {
        return 0;
      }

      v27 += 32;
    }

    while (--v26);
  }

  v31 = mlir::mps::GRUGradientOp::getODSOperands(this, 3u);
  if (v32)
  {
    v33 = v32;
    v34 = v31 + 24;
    do
    {
      v35 = *this;
      v36 = *(*v34 + 8);
      v37 = v132++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v35, v36 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v37) & 1) == 0)
      {
        return 0;
      }

      v34 += 32;
    }

    while (--v33);
  }

  v38 = mlir::mps::GRUGradientOp::getODSOperands(this, 4u);
  v40 = v39;
  if (v39 >= 2)
  {
    goto LABEL_25;
  }

  if (v39)
  {
    v47 = *(v38 + 24);
    v48 = *this;
    v49 = *(v47 + 8);
    v50 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v48, v49 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v50) & 1) == 0)
    {
      return 0;
    }
  }

  v51 = mlir::mps::GRUGradientOp::getODSOperands(this, 5u);
  v40 = v52;
  if (v52 >= 2)
  {
    goto LABEL_25;
  }

  if (v52)
  {
    v53 = *(v51 + 24);
    v54 = *this;
    v55 = *(v53 + 8);
    v56 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v54, v55 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v56) & 1) == 0)
    {
      return 0;
    }
  }

  v57 = mlir::mps::GRUGradientOp::getODSOperands(this, 6u);
  v40 = v58;
  if (v58 >= 2)
  {
    goto LABEL_25;
  }

  if (v58)
  {
    v59 = *(v57 + 24);
    v60 = *this;
    v61 = *(v59 + 8);
    v62 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v60, v61 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v62) & 1) == 0)
    {
      return 0;
    }
  }

  v63 = mlir::mps::GRUGradientOp::getODSOperands(this, 7u);
  v40 = v64;
  if (v64 >= 2)
  {
    goto LABEL_25;
  }

  if (v64)
  {
    v65 = *(v63 + 24);
    v66 = *this;
    v67 = *(v65 + 8);
    v68 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v66, v67 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v68) & 1) == 0)
    {
      return 0;
    }
  }

  v69 = mlir::mps::GRUGradientOp::getODSOperands(this, 8u);
  v40 = v70;
  if (v70 >= 2)
  {
    goto LABEL_25;
  }

  if (v70)
  {
    v71 = *(v69 + 24);
    v72 = *this;
    v73 = *(v71 + 8);
    v74 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps32(v72, (v73 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v74) & 1) == 0)
    {
      return 0;
    }
  }

  v75 = mlir::mps::GRUGradientOp::getODSOperands(this, 9u);
  v40 = v76;
  if (v76 >= 2)
  {
LABEL_25:
    v41 = "operand group starting at #";
LABEL_26:
    v130 = v41;
    v131 = 259;
    mlir::OpState::emitOpError(this, &v130, v133);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v133, &v132);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v42, " requires 0 or 1 element, but found ");
    v129 = v40;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v43, &v129);
    v45 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v133);
    return v45;
  }

  if (v76)
  {
    v79 = *(v75 + 24);
    v80 = *this;
    v81 = *(v79 + 8);
    v82 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v80, v81 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v82) & 1) == 0)
    {
      return 0;
    }
  }

  v132 = 0;
  ODSResults = mlir::mps::LSTMGradientOp::getODSResults(this, 0, v77, v78);
  if (v84)
  {
    v87 = ODSResults;
    v88 = v84;
    v89 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v87, v89);
      v91 = *this;
      v92 = *(NextResultAtOffset + 8);
      v132 = v89 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v91, v92 & 0xFFFFFFFFFFFFFFF8, "result", 6, v89) & 1) == 0)
      {
        return 0;
      }

      if (v88 == ++v89)
      {
        goto LABEL_53;
      }
    }
  }

  LODWORD(v89) = 0;
LABEL_53:
  v93 = mlir::mps::LSTMGradientOp::getODSResults(this, 1u, v85, v86);
  if (v94)
  {
    v97 = v93;
    v98 = v94;
    v99 = 0;
    while (1)
    {
      v100 = mlir::detail::OpResultImpl::getNextResultAtOffset(v97, v99);
      v101 = *this;
      v102 = *(v100 + 8);
      v103 = v89 + 1;
      v132 = v89 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v101, v102 & 0xFFFFFFFFFFFFFFF8, "result", 6, v89) & 1) == 0)
      {
        return 0;
      }

      ++v99;
      LODWORD(v89) = v89 + 1;
      if (v98 == v99)
      {
        goto LABEL_59;
      }
    }
  }

  v103 = v89;
LABEL_59:
  v104 = mlir::mps::LSTMGradientOp::getODSResults(this, 2u, v95, v96);
  if (v105)
  {
    v108 = v104;
    v109 = v105;
    v110 = 0;
    while (1)
    {
      v111 = mlir::detail::OpResultImpl::getNextResultAtOffset(v108, v110);
      v112 = *this;
      v113 = *(v111 + 8);
      v114 = v103 + 1;
      v132 = v103 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v112, v113 & 0xFFFFFFFFFFFFFFF8, "result", 6, v103) & 1) == 0)
      {
        return 0;
      }

      ++v110;
      ++v103;
      if (v109 == v110)
      {
        goto LABEL_65;
      }
    }
  }

  v114 = v103;
LABEL_65:
  v115 = mlir::mps::LSTMGradientOp::getODSResults(this, 3u, v106, v107);
  if (v116)
  {
    v119 = v115;
    v120 = v116;
    v121 = 0;
    while (1)
    {
      v122 = mlir::detail::OpResultImpl::getNextResultAtOffset(v119, v121);
      v123 = *this;
      v124 = *(v122 + 8);
      v125 = v114 + 1;
      v132 = v114 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v123, v124 & 0xFFFFFFFFFFFFFFF8, "result", 6, v114) & 1) == 0)
      {
        return 0;
      }

      ++v121;
      ++v114;
      if (v120 == v121)
      {
        goto LABEL_71;
      }
    }
  }

  v125 = v114;
LABEL_71:
  v126 = mlir::mps::LSTMGradientOp::getODSResults(this, 4u, v117, v118);
  v40 = v127;
  if (v127 >= 2)
  {
    v41 = "result group starting at #";
    goto LABEL_26;
  }

  if (v127)
  {
    v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v126, 0);
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(v128 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v125) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps32(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v114 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v10 + 8);
    v40 = *(v10 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v48 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v48 + 8);
    v40 = *(v48 + 16);
    if (!v40)
    {
      goto LABEL_56;
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
    v49 = v41[1];
    v102 = a2;
    v103 = v49;
    if (!mlir::CallOpInterface::getArgOperands(&v102))
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v102 = a2;
  v103 = 0;
  if (!mlir::CallOpInterface::getArgOperands(&v102))
  {
    goto LABEL_2;
  }

LABEL_59:
  v50 = *a2;
  {
    v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v52 = *(v50 + 8);
    v53 = *(v50 + 16);
    if (!v53)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v92 = v50;
    mlir::arith::ExtUIOp::fold();
    v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v52 = *(v92 + 8);
    v53 = *(v92 + 16);
    if (!v53)
    {
      goto LABEL_71;
    }
  }

  v54 = v52;
  v55 = v53;
  do
  {
    v56 = v55 >> 1;
    v57 = &v54[2 * (v55 >> 1)];
    v59 = *v57;
    v58 = v57 + 2;
    v55 += ~(v55 >> 1);
    if (v59 < v51)
    {
      v54 = v58;
    }

    else
    {
      v55 = v56;
    }
  }

  while (v55);
  if (v54 != &v52[2 * v53] && *v54 == v51)
  {
    v61 = v54[1];
    v94 = a2;
    v95 = v61;
    mlir::CallableOpInterface::getArgAttrsAttr(&v94);
    if (!v62)
    {
      goto LABEL_90;
    }

    goto LABEL_74;
  }

LABEL_71:
  v94 = a2;
  v95 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v94);
  if (!v60)
  {
    goto LABEL_90;
  }

LABEL_74:
  v63 = *a2;
  {
    v64 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v65 = *(v63 + 8);
    v66 = *(v63 + 16);
    if (!v66)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v93 = v63;
    mlir::arith::ExtUIOp::fold();
    v64 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v65 = *(v93 + 8);
    v66 = *(v93 + 16);
    if (!v66)
    {
      goto LABEL_87;
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
    v75 = v67[1];
    v99 = a2;
    v100 = v75;
    mlir::CallableOpInterface::getArgAttrsAttr(&v99);
    if (v76 != 1)
    {
      goto LABEL_2;
    }

    goto LABEL_90;
  }

LABEL_87:
  v99 = a2;
  v100 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v99);
  if (v74 != 1)
  {
    goto LABEL_2;
  }

LABEL_90:
  v77 = *a2;
  {
    v78 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v79 = *(v77 + 8);
    v80 = *(v77 + 16);
    if (!v80)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v87 = v77;
    mlir::arith::ExtUIOp::fold();
    v78 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v79 = *(v87 + 8);
    v80 = *(v87 + 16);
    if (!v80)
    {
      goto LABEL_102;
    }
  }

  v81 = v79;
  v82 = v80;
  do
  {
    v83 = v82 >> 1;
    v84 = &v81[2 * (v82 >> 1)];
    v86 = *v84;
    v85 = v84 + 2;
    v82 += ~(v82 >> 1);
    if (v86 < v78)
    {
      v81 = v85;
    }

    else
    {
      v82 = v83;
    }
  }

  while (v82);
  if (v81 != &v79[2 * v80] && *v81 == v78)
  {
    v88 = v81[1];
    goto LABEL_104;
  }

LABEL_102:
  v88 = 0;
LABEL_104:
  v97[0] = a2;
  v97[1] = v88;
  isSplat = mlir::ElementsAttr::isSplat(v97);
  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    return 1;
  }

LABEL_2:
  v96 = 261;
  v94 = a3;
  v95 = a4;
  mlir::Operation::emitOpError(a1, &v94, &v102);
  if (v102)
  {
    LODWORD(v99) = 3;
    v100 = " #";
    v101 = 2;
    v11 = &v99;
    v12 = v104;
    if (v105 >= v106)
    {
      if (v104 <= &v99 && v104 + 24 * v105 > &v99)
      {
        v73 = &v99 - v104;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v107, v105 + 1, 24);
        v12 = v104;
        v11 = v104 + v73;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v107, v105 + 1, 24);
        v11 = &v99;
        v12 = v104;
      }
    }

    v13 = &v12[24 * v105];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    v15 = ++v105;
    if (v102)
    {
      LODWORD(v99) = 5;
      v100 = a5;
      v16 = &v99;
      v17 = v104;
      if (v15 >= v106)
      {
        if (v104 <= &v99 && v104 + 24 * v15 > &v99)
        {
          v89 = &v99 - v104;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v107, v15 + 1, 24);
          v17 = v104;
          v16 = v104 + v89;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v107, v15 + 1, 24);
          v16 = &v99;
          v17 = v104;
        }
      }

      v18 = &v17[24 * v105];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      v20 = ++v105;
      if (v102)
      {
        LODWORD(v99) = 3;
        v100 = " must be 0D/1D tensor of floating point or int values, but got ";
        v101 = 63;
        v21 = &v99;
        v22 = v104;
        if (v20 >= v106)
        {
          if (v104 <= &v99 && v104 + 24 * v20 > &v99)
          {
            v90 = &v99 - v104;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v107, v20 + 1, 24);
            v22 = v104;
            v21 = v104 + v90;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v107, v20 + 1, 24);
            v21 = &v99;
            v22 = v104;
          }
        }

        v23 = &v22[24 * v105];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        ++v105;
        if (v102)
        {
          v25 = &v99;
          mlir::DiagnosticArgument::DiagnosticArgument(&v99, a2);
          v26 = v104;
          if (v105 >= v106)
          {
            if (v104 <= &v99 && v104 + 24 * v105 > &v99)
            {
              v91 = &v99 - v104;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v107, v105 + 1, 24);
              v26 = v104;
              v25 = v104 + v91;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v107, v105 + 1, 24);
              v25 = &v99;
              v26 = v104;
            }
          }

          v27 = &v26[24 * v105];
          v28 = *v25;
          *(v27 + 2) = *(v25 + 2);
          *v27 = v28;
          ++v105;
        }
      }
    }
  }

  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
  if (v102)
  {
    mlir::InFlightDiagnostic::report(&v102);
  }

  if (v113 == 1)
  {
    if (v112 != &v113)
    {
      free(v112);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v111;
      v32 = __p;
      if (v111 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v111 = v30;
      operator delete(v32);
    }

    v33 = v108;
    if (v108)
    {
      v34 = v109;
      v35 = v108;
      if (v109 != v108)
      {
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
        v35 = v108;
      }

      v109 = v33;
      operator delete(v35);
    }

    if (v104 != v107)
    {
      free(v104);
    }
  }

  return v29;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LSTMGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.lstm_gradient", 17, a3, v10, a4, a5);
  *v11 = &unk_1F5B28C80;
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

uint64_t mlir::mps::LSTMOp::getAsmResultNames(uint64_t *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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
  a2(a3, NextResultAtOffset, "result", 6);
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
  a2(a3, v9, "output_cell", 11);
  v10 = *a1;
  v11 = *(*a1 + 36);
  v12 = v10 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 2);
  if (v11 != 2)
  {
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);

    return (a2)(a3, v15, "training_state", 14);
  }

  return result;
}

uint64_t mlir::mps::LSTMOp::getODSResults(mlir::mps::LSTMOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (a2)
  {
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
LABEL_14:
      v26 = a2 - v4;
      v27 = &dword_1E09845DA + v4;
      do
      {
        v28 = *v27++;
        v5 += v28;
        --v26;
      }

      while (v26);
      goto LABEL_16;
    }

    if (a2 >= 0x20)
    {
      v6 = 0uLL;
      v7 = "0MPSDialectE";
      v8 = 0uLL;
      v4 = a2 & 0xFFFFFFE0;
      v9 = v4;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      do
      {
        v16 = *v7[-2].i8;
        v17 = vmovl_u8(*v16.i8);
        v18 = vmovl_high_u8(v16);
        v19 = vmovl_u8(*v7);
        v20 = vmovl_high_u8(*v7->i8);
        v11 = vaddw_high_u16(v11, v18);
        v10 = vaddw_u16(v10, *v18.i8);
        v8 = vaddw_high_u16(v8, v17);
        v6 = vaddw_u16(v6, *v17.i8);
        v15 = vaddw_high_u16(v15, v20);
        v14 = vaddw_u16(v14, *v20.i8);
        v13 = vaddw_high_u16(v13, v19);
        v12 = vaddw_u16(v12, *v19.i8);
        v7 += 4;
        v9 -= 32;
      }

      while (v9);
      a4 = vaddq_s32(vaddq_s32(v13, v8), vaddq_s32(v15, v11));
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v6), vaddq_s32(v14, v10)), a4));
      if (v4 == a2)
      {
        goto LABEL_16;
      }

      if ((a2 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v21 = v4;
    v4 = a2 & 0xFFFFFFFC;
    v22 = v5;
    v23 = (&dword_1E09845DA + v21);
    v24 = v21 - v4;
    do
    {
      v25 = *v23++;
      a4.i32[0] = v25;
      a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
      v22 = vaddw_u16(v22, *a4.i8);
      v24 += 4;
    }

    while (v24);
    v5 = vaddvq_s32(v22);
    if (v4 == a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_16:
  v29 = *(*this + 36);
  if (v29)
  {
    result = *this - 16;
  }

  else
  {
    result = 0;
  }

  if (a2 + (v29 - 3) * v5)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(result, a2 + (v29 - 3) * v5);
  }

  return result;
}

unint64_t mlir::mps::LSTMOp::getODSResultIndexAndLength(mlir::mps::LSTMOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (!a2)
  {
    v4 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v4 = a2;
  if (a2 < 4)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v7 = 0uLL;
    v8 = "0MPSDialectE";
    v9 = 0uLL;
    v5 = a2 & 0xFFFFFFE0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *v8[-2].i8;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = vmovl_u8(*v8);
      v21 = vmovl_high_u8(*v8->i8);
      v12 = vaddw_high_u16(v12, v19);
      v11 = vaddw_u16(v11, *v19.i8);
      v9 = vaddw_high_u16(v9, v18);
      v7 = vaddw_u16(v7, *v18.i8);
      v16 = vaddw_high_u16(v16, v21);
      v15 = vaddw_u16(v15, *v21.i8);
      v14 = vaddw_high_u16(v14, v20);
      v13 = vaddw_u16(v13, *v20.i8);
      v8 += 4;
      v10 -= 32;
    }

    while (v10);
    a4 = vaddq_s32(vaddq_s32(v14, v9), vaddq_s32(v16, v12));
    v6 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a4));
    if (v5 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v27 = &dword_1E09845DA + v5;
      v28 = a2 - v5;
      do
      {
        v29 = *v27++;
        v6 += v29;
        --v28;
      }

      while (v28);
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v22 = v5;
  v5 = a2 & 0xFFFFFFFC;
  v23 = v6;
  v24 = (&dword_1E09845DA + v22);
  v25 = v22 - v5;
  do
  {
    v26 = *v24++;
    a4.i32[0] = v26;
    a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
    v23 = vaddw_u16(v23, *a4.i8);
    v25 += 4;
  }

  while (v25);
  v6 = vaddvq_s32(v23);
  if (v5 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v30 = *(*this + 36);
  v31 = 0x100000000;
  if (*(&dword_1E09845DA + v4))
  {
    v31 = (v30 - 2) << 32;
  }

  return v31 | (a2 + (v30 - 3) * v6);
}

BOOL mlir::mps::LSTMOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_70;
    }

    v33 = v88;
    v23 = v87;
    if (v88 == v87)
    {
LABEL_69:
      v88 = v21;
      operator delete(v23);
LABEL_70:
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
LABEL_68:
    v23 = v87;
    goto LABEL_69;
  }

  v94.var0 = "cell_activation";
  v94.var1 = 15;
  v8 = mlir::DictionaryAttr::get(&v77, v94);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v9 = v8;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 60;
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
        goto LABEL_70;
      }

      v22 = v88;
      v23 = v87;
      if (v88 == v87)
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

  v95.var0 = "fgate_activation";
  v95.var1 = 16;
  v36 = mlir::DictionaryAttr::get(&v77, v95);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v37 = v36;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 61;
        v38 = &v78;
        v39 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v73 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v39 = v83;
            v38 = (v83 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v38 = &v78;
            v39 = v83;
          }
        }

        v40 = &v39[24 * v84];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v84;
        if (v81)
        {
          v42 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v37);
          v43 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v74 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v43 = v83;
              v42 = (v83 + v74);
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

      v46 = __p;
      if (__p)
      {
        v47 = v90;
        v48 = __p;
        if (v90 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v90 = v46;
        operator delete(v48);
      }

      v21 = v87;
      if (!v87)
      {
        goto LABEL_70;
      }

      v49 = v88;
      v23 = v87;
      if (v88 == v87)
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

  v96.var0 = "gate_layout";
  v96.var1 = 11;
  v52 = mlir::DictionaryAttr::get(&v77, v96);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
    {
      v53 = v52;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 56;
        v54 = &v78;
        v55 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v75 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v55 = v83;
            v54 = (v83 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v54 = &v78;
            v55 = v83;
          }
        }

        v56 = &v55[24 * v84];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v84;
        if (v81)
        {
          v58 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v53);
          v59 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v76 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v59 = v83;
              v58 = (v83 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v58 = &v78;
              v59 = v83;
            }
          }

          v60 = &v59[24 * v84];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
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

    a1[2] = v52;
  }

  v97.var0 = "igate_activation";
  v97.var1 = 16;
  v62 = mlir::DictionaryAttr::get(&v77, v97);
  v78 = v62;
  if (v62)
  {
    if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v81, a4);
LABEL_99:
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v81, v63);
      goto LABEL_100;
    }

    a1[3] = v62;
  }

  v98.var0 = "ogate_activation";
  v98.var1 = 16;
  v64 = mlir::DictionaryAttr::get(&v77, v98);
  v78 = v64;
  if (v64)
  {
    if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v81, a4);
      goto LABEL_99;
    }

    a1[4] = v64;
  }

  v99.var0 = "training";
  v99.var1 = 8;
  v65 = mlir::DictionaryAttr::get(&v77, v99);
  v78 = v65;
  if (v65)
  {
    if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v81, a4);
LABEL_100:
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v66, &v78);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
      return 0;
    }

    a1[5] = v65;
  }

  v100.var0 = "zgate_activation";
  v100.var1 = 16;
  v67 = mlir::DictionaryAttr::get(&v77, v100);
  v78 = v67;
  if (v67)
  {
    if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v81, a4);
      goto LABEL_99;
    }

    a1[6] = v67;
  }

  v101.var0 = "operandSegmentSizes";
  v101.var1 = 19;
  v69 = mlir::DictionaryAttr::get(&v77, v101);
  if (!v69)
  {
    v102.var0 = "operand_segment_sizes";
    v102.var1 = 21;
    v69 = mlir::DictionaryAttr::get(&v77, v102);
    if (!v69)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 7, 7, v69, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::LSTMOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v67[6] = *MEMORY[0x1E69E9840];
  v64 = a1;
  v65 = v67;
  v66 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v64, "cell_activation", 15, *a2);
    v6 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v50 = NamedAttr;
      v51 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v5 = v51;
      NamedAttr = v50;
      v6 = v66;
    }

    v7 = (v65 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v66) = v66 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v64, "fgate_activation", 16, v8);
    v11 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v52 = v9;
      v53 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v10 = v53;
      v9 = v52;
      v11 = v66;
    }

    v12 = (v65 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v66) = v66 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v64, "gate_layout", 11, v13);
    v16 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v54 = v14;
      v55 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v15 = v55;
      v14 = v54;
      v16 = v66;
    }

    v17 = (v65 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v66) = v66 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v64, "igate_activation", 16, v18);
    v21 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v56 = v19;
      v57 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v20 = v57;
      v19 = v56;
      v21 = v66;
    }

    v22 = (v65 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    LODWORD(v66) = v66 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v64, "ogate_activation", 16, v23);
    v26 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v58 = v24;
      v59 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v25 = v59;
      v24 = v58;
      v26 = v66;
    }

    v27 = (v65 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    LODWORD(v66) = v66 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v64, "training", 8, v28);
    v31 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v60 = v29;
      v61 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v30 = v61;
      v29 = v60;
      v31 = v66;
    }

    v32 = (v65 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    LODWORD(v66) = v66 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v64, "zgate_activation", 16, v33);
    v36 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v62 = v34;
      v63 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
      v35 = v63;
      v34 = v62;
      v36 = v66;
    }

    v37 = (v65 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    LODWORD(v66) = v66 + 1;
  }

  v38 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 7, 7);
  v39 = mlir::Builder::getNamedAttr(&v64, "operandSegmentSizes", 19, v38);
  v41 = v66;
  if (v66 >= HIDWORD(v66))
  {
    v48 = v39;
    v49 = v40;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 16);
    v40 = v49;
    v39 = v48;
    v41 = v66;
  }

  v42 = (v65 + 16 * v41);
  *v42 = v39;
  v42[1] = v40;
  v43 = __CFADD__(v66, 1);
  v44 = (v66 + 1);
  LODWORD(v66) = v66 + 1;
  if (v43)
  {
    DictionaryAttr = 0;
    v46 = v65;
    if (v65 == v67)
    {
      return DictionaryAttr;
    }

    goto LABEL_36;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v64, v65, v44);
  v46 = v65;
  if (v65 != v67)
  {
LABEL_36:
    free(v46);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::LSTMOp::computePropertiesHash(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = (0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v31 = v9;
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v29 = v14;
  v17 = a1[7];
  v18 = HIDWORD(a1[6]);
  v19 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v18);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v20 = 0xB492B66FBE98F273 * v17;
  v21 = a1[8];
  v22 = 0x9AE16A3B2F90404FLL * *(a1 + 76);
  v23 = __ROR8__(v20 - v21, 43) - 0x3C5A37A36834CED9 * *(a1 + 68) + __ROR8__(v22 ^ 0xFF51AFD7ED558CCDLL, 30);
  v24 = v20 + __ROR8__(v21 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v22 + 28;
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) ^ ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) >> 47));
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  v35 = 0;
  v36 = 0xFF51AFD7ED558CCDLL;
  v32[0] = v3;
  v32[1] = 0x9DDFEA08EB382D69 * v6;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v32, 0, v33, v34, &v31, &v30, &v29, &v28, &v27, &v26);
}

uint64_t mlir::mps::LSTMOp::getInherentAttr(uint64_t *a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 15)
  {
    if (__n == 8)
    {
      if (!memcmp(__s1, "training", 8uLL))
      {
        return a2[5];
      }
    }

    else if (__n == 11)
    {
      if (!memcmp(__s1, "gate_layout", 0xBuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 15 && *__s1 == 0x7463615F6C6C6563 && *(__s1 + 7) == 0x6E6F697461766974)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 16)
  {
    if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 7, 7);
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 7, 7);
    }

    return 0;
  }

  if (!memcmp(__s1, "fgate_activation", 0x10uLL))
  {
    return a2[1];
  }

  if (!memcmp(__s1, "igate_activation", 0x10uLL))
  {
    return a2[3];
  }

  if (*__s1 != 0x63615F657461676FLL || *(__s1 + 1) != 0x6E6F697461766974)
  {
    if (!memcmp(__s1, "zgate_activation", 0x10uLL))
    {
      return a2[6];
    }

    return 0;
  }

  return a2[4];
}

uint64_t mlir::mps::LSTMOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 15)
  {
    if (a3 == 16)
    {
      result = memcmp(__s1, "fgate_activation", 0x10uLL);
      if (result)
      {
        result = memcmp(__s1, "igate_activation", 0x10uLL);
        if (result)
        {
          if (*__s1 == 0x63615F657461676FLL && *(__s1 + 1) == 0x6E6F697461766974)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
              {
                v17 = a4;
              }

              else
              {
                v17 = 0;
              }

              v5[4] = v17;
            }

            else
            {
              v5[4] = 0;
            }
          }

          else
          {
            result = memcmp(__s1, "zgate_activation", 0x10uLL);
            if (!result)
            {
              if (a4)
              {
                if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
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

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
          {
            v16 = a4;
          }

          else
          {
            v16 = 0;
          }

          v5[3] = v16;
        }

        else
        {
          v5[3] = 0;
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        v5[1] = v14;
      }

      else
      {
        v5[1] = 0;
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
        v12 = result ? a4 : 0;
        v18 = v12;
        if (v12)
        {
          result = mlir::AffineBinaryOpExpr::getLHS(&v18);
          if (result == 7)
          {
            result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v18);
            if (v13)
            {
              return memmove(v5 + 7, result, 4 * v13);
            }
          }
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "training", 8uLL);
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

        v5[5] = v7;
      }

      else
      {
        v5[5] = 0;
      }
    }
  }

  else if (a3 == 11)
  {
    result = memcmp(__s1, "gate_layout", 0xBuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
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

  else if (a3 == 15 && *__s1 == 0x7463615F6C6C6563 && *(__s1 + 7) == 0x6E6F697461766974)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
      {
        v15 = a4;
      }

      else
      {
        v15 = 0;
      }

      *result = v15;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::LSTMOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "cell_activation", 15, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "fgate_activation", 16, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "gate_layout", 11, v7);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "igate_activation", 16, v8);
  }

  v9 = a2[4];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "ogate_activation", 16, v9);
  }

  v10 = a2[5];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "training", 8, v10);
  }

  v11 = a2[6];
  if (v11)
  {
    mlir::NamedAttrList::append(a3, "zgate_activation", 16, v11);
  }

  v12 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 7, 7);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v12);
}

BOOL mlir::mps::LSTMOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v8, "cell_activation", 0xF, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "fgate_activation", 0x10, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(v10, "gate_layout", 0xB, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v11, "igate_activation", 0x10, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v12, "ogate_activation", 0x10, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v13, "training", 8, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v14, "zgate_activation", 0x10, a3, a4) & 1) != 0)
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

uint64_t mlir::mps::LSTMOp::readProperties(uint64_t a1, uint64_t a2)
{
  v12[26] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, *(a2 + 256)))
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
    *(v5 + 20) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v9;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v9;
    {
      mlir::mps::LSTMOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::LSTMGateLayoutAttr>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 4))
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

    if (mlir::AffineBinaryOpExpr::getLHS(&v11) >= 8)
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
      memmove(v3 + 7, v6, 4 * v7);
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 6))
  {
    v9[0] = a1;
    v9[1] = (v3 + 7);
    return mlir::mps::GRUGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v9) & 1;
  }

  return 0;
}

uint64_t mlir::mps::LSTMOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 1));
  (*(*a2 + 24))(a2, *(v5 + 2));
  (*(*a2 + 24))(a2, *(v5 + 3));
  (*(*a2 + 24))(a2, *(v5 + 4));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, v5 + 7, 7);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 24))(a2, *(v5 + 5));
  (*(*a2 + 24))(a2, *(v5 + 6));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 14, 7);
  }

  return result;
}

void mlir::mps::LSTMOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = a13;
  v99 = *MEMORY[0x1E69E9840];
  v88 = a4;
  v89 = a3;
  v86 = a13;
  v87 = a12;
  v84 = a15;
  v85 = a14;
  v83 = a16;
  mlir::OperationState::addOperands(a2, &v89, 1uLL);
  mlir::OperationState::addOperands(a2, &v88, 1uLL);
  if (a12)
  {
    mlir::OperationState::addOperands(a2, &v87, 1uLL);
    v19 = v86;
  }

  if (v19)
  {
    mlir::OperationState::addOperands(a2, &v86, 1uLL);
  }

  if (v85)
  {
    mlir::OperationState::addOperands(a2, &v85, 1uLL);
  }

  if (v84)
  {
    mlir::OperationState::addOperands(a2, &v84, 1uLL);
  }

  if (v83)
  {
    mlir::OperationState::addOperands(a2, &v83, 1uLL);
    v20 = v83 != 0;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = v85;
  v21.i64[1] = v84;
  v22.i64[0] = v87;
  v22.i64[1] = v86;
  v23 = *(a2 + 256);
  if (!v23)
  {
    v78 = v22;
    v82 = v21;
    v24 = operator new(0x58uLL);
    *v24 = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    v24[3] = 0u;
    v24[4] = 0u;
    *(v24 + 20) = 0;
    *(a2 + 256) = v24;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v92;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v92;
    {
      mlir::mps::LSTMOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v23 = *(a2 + 256);
    v21 = v82;
    v22 = v78;
  }

  v23[3].i64[1] = 0x100000001;
  v25 = vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v21));
  v26.i64[0] = 0x100000001;
  v26.i64[1] = 0x100000001;
  v23[4] = vbicq_s8(v26, v25);
  v23[5].i32[0] = v20;
  v27 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v95 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v96 = v27;
  v92 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v93 = &v95;
  v91 = a5;
  v29 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v30 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v29);
  v90 = &v91;
  v97 = &v91;
  v98 = &v92;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v90, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v97);
  v32 = *(a2 + 256);
  if (!v32)
  {
    v33 = operator new(0x58uLL);
    *v33 = 0u;
    v33[1] = 0u;
    v33[2] = 0u;
    v33[3] = 0u;
    v33[4] = 0u;
    *(v33 + 20) = 0;
    *(a2 + 256) = v33;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v92;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v92;
    {
      mlir::mps::LSTMOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v32 = *(a2 + 256);
  }

  *(v32 + 24) = ParametricStorageTypeImpl;
  v34 = *a1;
  v35 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v95 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v96 = v34;
  v92 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v93 = &v95;
  v91 = a6;
  v36 = 0x9DDFEA08EB382D69 * (a6 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ a6 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ a6 ^ 0xFF51AFD7ED558CCDLL)));
  v90 = &v91;
  v97 = &v91;
  v98 = &v92;
  v37 = mlir::StorageUniquer::getParametricStorageTypeImpl(v35, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v36 >> 47) ^ v36), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v90, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v97);
  v38 = *(a2 + 256);
  if (!v38)
  {
    v39 = operator new(0x58uLL);
    *v39 = 0u;
    v39[1] = 0u;
    v39[2] = 0u;
    v39[3] = 0u;
    v39[4] = 0u;
    *(v39 + 20) = 0;
    *(a2 + 256) = v39;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v92;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v92;
    {
      mlir::mps::LSTMOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v38 = *(a2 + 256);
  }

  *(v38 + 8) = v37;
  v40 = *a1;
  v41 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v95 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v96 = v40;
  v92 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v93 = &v95;
  v91 = a7;
  v42 = 0x9DDFEA08EB382D69 * (a7 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ a7 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ a7 ^ 0xFF51AFD7ED558CCDLL)));
  v90 = &v91;
  v97 = &v91;
  v98 = &v92;
  v43 = mlir::StorageUniquer::getParametricStorageTypeImpl(v41, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v42 >> 47) ^ v42), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v90, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v97);
  v44 = *(a2 + 256);
  if (!v44)
  {
    v45 = operator new(0x58uLL);
    *v45 = 0u;
    v45[1] = 0u;
    v45[2] = 0u;
    v45[3] = 0u;
    v45[4] = 0u;
    *(v45 + 20) = 0;
    *(a2 + 256) = v45;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v92;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v92;
    {
      mlir::mps::LSTMOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v44 = *(a2 + 256);
  }

  *(v44 + 48) = v43;
  v46 = *a1;
  v47 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v95 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v96 = v46;
  v92 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v93 = &v95;
  v91 = a8;
  v48 = 0x9DDFEA08EB382D69 * (a8 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)));
  v90 = &v91;
  v97 = &v91;
  v98 = &v92;
  v49 = mlir::StorageUniquer::getParametricStorageTypeImpl(v47, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v48 >> 47) ^ v48), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v90, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v97);
  v50 = *(a2 + 256);
  if (!v50)
  {
    v51 = operator new(0x58uLL);
    *v51 = 0u;
    v51[1] = 0u;
    v51[2] = 0u;
    v51[3] = 0u;
    v51[4] = 0u;
    *(v51 + 20) = 0;
    *(a2 + 256) = v51;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v92;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v92;
    {
      mlir::mps::LSTMOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v50 = *(a2 + 256);
  }

  *(v50 + 32) = v49;
  v52 = *a1;
  v53 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v95 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v96 = v52;
  v92 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v93 = &v95;
  v91 = a9;
  v54 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)));
  v90 = &v91;
  v97 = &v91;
  v98 = &v92;
  v55 = mlir::StorageUniquer::getParametricStorageTypeImpl(v53, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v54 >> 47) ^ v54), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v90, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v97);
  v56 = *(a2 + 256);
  if (!v56)
  {
    v57 = operator new(0x58uLL);
    *v57 = 0u;
    v57[1] = 0u;
    v57[2] = 0u;
    v57[3] = 0u;
    v57[4] = 0u;
    *(v57 + 20) = 0;
    *(a2 + 256) = v57;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v92;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v92;
    {
      mlir::mps::LSTMOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v56 = *(a2 + 256);
  }

  *v56 = v55;
  v58 = *a1;
  v59 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v95 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v96 = v58;
  v92 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v93 = &v95;
  v91 = a10;
  v60 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)));
  v90 = &v91;
  v97 = &v91;
  v98 = &v92;
  v61 = mlir::StorageUniquer::getParametricStorageTypeImpl(v59, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v60 >> 47) ^ v60), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v90, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v97);
  v63 = v61;
  v64 = *(a2 + 256);
  if (v64)
  {
    *(v64 + 16) = v61;
    if (!a11)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  v65 = operator new(0x58uLL);
  *v65 = 0u;
  v65[1] = 0u;
  v65[2] = 0u;
  v65[3] = 0u;
  v65[4] = 0u;
  *(v65 + 20) = 0;
  *(a2 + 256) = v65;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v92;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v92;
  {
    mlir::mps::LSTMOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 16) = v63;
  if (a11)
  {
LABEL_42:
    UnitAttr = mlir::Builder::getUnitAttr(a1, v62);
    v67 = *(a2 + 256);
    if (!v67)
    {
      v68 = operator new(0x58uLL);
      *v68 = 0u;
      v68[1] = 0u;
      v68[2] = 0u;
      v68[3] = 0u;
      v68[4] = 0u;
      *(v68 + 20) = 0;
      *(a2 + 256) = v68;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v92;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v92;
      {
        mlir::mps::LSTMOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::LSTMOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v67 = *(a2 + 256);
    }

    *(v67 + 40) = UnitAttr;
  }

LABEL_47:
  v92 = v94;
  v93 = 0x200000000;
  v69 = *a1;
  v70 = *a2;
  mlir::ValueRange::ValueRange(&v97, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v73 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v95, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::LSTMOp::inferReturnTypes(v69, v70, 1, v97, v98, Dictionary, v73, v74, v95, v96, &v92))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v75 = v92;
  v76 = v93;
  v77 = *(a2 + 72);
  if (v77 + v93 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v77 + v93, 8);
    LODWORD(v77) = *(a2 + 72);
  }

  if (v76)
  {
    memcpy((*(a2 + 64) + 8 * v77), v75, 8 * v76);
    LODWORD(v77) = *(a2 + 72);
  }

  *(a2 + 72) = v77 + v76;
  if (v92 != v94)
  {
    free(v92);
  }
}

mlir::MLIRContext *mlir::mps::LSTMOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v17 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v17);
  v4 = result;
  if (a2[3])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
    v12 = v4;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 3;
    v14 = &v17;
    v15 = &v16;
    v13 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[3] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[6])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v6 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 3;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v6, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[1] = result;
  if (a2[6])
  {
LABEL_4:
    if (a2[4])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[6] = result;
  if (a2[4])
  {
LABEL_5:
    if (*a2)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 3;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v8, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[4] = result;
  if (*a2)
  {
LABEL_6:
    if (a2[2])
    {
      return result;
    }

LABEL_13:
    v10 = mlir::MLIRContext::getAttributeUniquer(v4);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
    v12 = v4;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 0;
    v13 = &v16;
    v14 = &v17;
    v15 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v10, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[2] = result;
    return result;
  }

LABEL_12:
  v9 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v9, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  *a2 = result;
  if (!a2[2])
  {
    goto LABEL_13;
  }

  return result;
}

BOOL mlir::mps::LSTMOp::verifyInvariantsImpl(mlir::mps::LSTMOp *this)
{
  v92[26] = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[8];
  v5 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v9 = v3[12];
  v8 = v3[13];
  v10 = v3[14];
  v92[0] = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v6, "igate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v5, "fgate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v10, "zgate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "ogate_activation", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v4, "cell_activation", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(v7, "gate_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "training", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v91 = 0;
  v11 = *(*this + 44);
  v12 = *(*this + 16 * ((v11 >> 23) & 1) + 120);
  if ((v11 & 0x800000) != 0)
  {
    v13 = *(*this + 72);
    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
    if (v12)
    {
LABEL_10:
      v14 = v13 + 24;
      do
      {
        v15 = *this;
        v16 = *(*v14 + 8);
        v17 = v91++;
        if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, v16 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v17) & 1) == 0)
        {
          return 0;
        }

        v14 += 32;
      }

      while (--v12);
    }
  }

  ODSOperands = mlir::mps::GRUOp::getODSOperands(this, 1u);
  if (v19)
  {
    v20 = v19;
    v21 = ODSOperands + 24;
    do
    {
      v22 = *this;
      v23 = *(*v21 + 8);
      v24 = v91++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v22, v23 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v24) & 1) == 0)
      {
        return 0;
      }

      v21 += 32;
    }

    while (--v20);
  }

  v25 = mlir::mps::GRUOp::getODSOperands(this, 2u);
  v27 = v26;
  if (v26 >= 2)
  {
    goto LABEL_18;
  }

  if (v26)
  {
    v34 = *(v25 + 24);
    v35 = *this;
    v36 = *(v34 + 8);
    v37 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v35, v36 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v37) & 1) == 0)
    {
      return 0;
    }
  }

  v38 = mlir::mps::GRUOp::getODSOperands(this, 3u);
  v27 = v39;
  if (v39 >= 2)
  {
    goto LABEL_18;
  }

  if (v39)
  {
    v40 = *(v38 + 24);
    v41 = *this;
    v42 = *(v40 + 8);
    v43 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v41, v42 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v43) & 1) == 0)
    {
      return 0;
    }
  }

  v44 = mlir::mps::GRUOp::getODSOperands(this, 4u);
  v27 = v45;
  if (v45 >= 2)
  {
    goto LABEL_18;
  }

  if (v45)
  {
    v46 = *(v44 + 24);
    v47 = *this;
    v48 = *(v46 + 8);
    v49 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v47, v48 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v49) & 1) == 0)
    {
      return 0;
    }
  }

  v50 = mlir::mps::GRUOp::getODSOperands(this, 5u);
  v27 = v51;
  if (v51 >= 2)
  {
    goto LABEL_18;
  }

  if (v51)
  {
    v52 = *(v50 + 24);
    v53 = *this;
    v54 = *(v52 + 8);
    v55 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v53, v54 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v55) & 1) == 0)
    {
      return 0;
    }
  }

  v56 = mlir::mps::GRUOp::getODSOperands(this, 6u);
  v27 = v57;
  if (v57 >= 2)
  {
LABEL_18:
    v28 = "operand group starting at #";
LABEL_19:
    v89 = v28;
    v90 = 259;
    mlir::OpState::emitOpError(this, &v89, v92);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v92, &v91);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v29, " requires 0 or 1 element, but found ");
    v88 = v27;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v30, &v88);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v92);
    return v32;
  }

  if (v57)
  {
    v60 = *(v56 + 24);
    v61 = *this;
    v62 = *(v60 + 8);
    v63 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps32(v61, (v62 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v63) & 1) == 0)
    {
      return 0;
    }
  }

  v91 = 0;
  ODSResults = mlir::mps::LSTMOp::getODSResults(this, 0, v58, v59);
  if (v65)
  {
    v68 = ODSResults;
    v69 = v65;
    v70 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v68, v70);
      v72 = *this;
      v73 = *(NextResultAtOffset + 8);
      v91 = v70 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v72, v73 & 0xFFFFFFFFFFFFFFF8, "result", 6, v70) & 1) == 0)
      {
        return 0;
      }

      if (v69 == ++v70)
      {
        goto LABEL_43;
      }
    }
  }

  LODWORD(v70) = 0;
LABEL_43:
  v74 = mlir::mps::LSTMOp::getODSResults(this, 1u, v66, v67);
  if (v75)
  {
    v78 = v74;
    v79 = v75;
    v80 = 0;
    while (1)
    {
      v81 = mlir::detail::OpResultImpl::getNextResultAtOffset(v78, v80);
      v82 = *this;
      v83 = *(v81 + 8);
      v84 = v70 + 1;
      v91 = v70 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v82, v83 & 0xFFFFFFFFFFFFFFF8, "result", 6, v70) & 1) == 0)
      {
        return 0;
      }

      ++v80;
      LODWORD(v70) = v70 + 1;
      if (v79 == v80)
      {
        goto LABEL_49;
      }
    }
  }

  v84 = v70;
LABEL_49:
  v85 = mlir::mps::LSTMOp::getODSResults(this, 2u, v76, v77);
  v27 = v86;
  if (v86 >= 2)
  {
    v28 = "result group starting at #";
    goto LABEL_19;
  }

  if (v86)
  {
    v87 = mlir::detail::OpResultImpl::getNextResultAtOffset(v85, 0);
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(v87 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v84) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LSTMOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.lstm", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B28D20;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LeakyReluOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.leaky_relu", 14, a3, v10, a4, a5);
  *v11 = &unk_1F5B28DC0;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LessThanOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.less", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B28E60;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::LessThanOrEqualToOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.less_equal", 14, a3, v10, a4, a5);
  *v11 = &unk_1F5B28F00;
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

uint64_t mlir::mps::LocalConvolutionDataGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_74;
    }

    v33 = v81;
    v23 = v80;
    if (v81 == v80)
    {
LABEL_73:
      v81 = v21;
      operator delete(v23);
LABEL_74:
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
    goto LABEL_72;
  }

  v87.var0 = "data_layout";
  v87.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v70, v87);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 56;
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
        goto LABEL_74;
      }

      v22 = v81;
      v23 = v80;
      if (v81 == v80)
      {
        goto LABEL_73;
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
      goto LABEL_72;
    }

    *a1 = v8;
  }

  v88.var0 = "dilation_rates";
  v88.var1 = 14;
  v36 = mlir::DictionaryAttr::get(&v70, v88);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v74, a4);
    if (v74)
    {
      v71 = 3;
      v73 = 59;
      v41 = &v71;
      v42 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v66 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v42 = v76;
          v41 = (v76 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v41 = &v71;
          v42 = v76;
        }
      }

      v43 = &v42[24 * v77];
      v44 = *v41;
      *(v43 + 2) = *(v41 + 2);
      *v43 = v44;
      ++v77;
      if (v74)
      {
        v45 = &v71;
        mlir::DiagnosticArgument::DiagnosticArgument(&v71, v37);
        v46 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v68 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v46 = v76;
            v45 = (v76 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v45 = &v71;
            v46 = v76;
          }
        }

        v47 = &v46[24 * v77];
        v48 = *v45;
        *(v47 + 2) = *(v45 + 2);
        *v47 = v48;
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

    v49 = __p;
    if (__p)
    {
      v50 = v83;
      v51 = __p;
      if (v83 != __p)
      {
        do
        {
          v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
        }

        while (v50 != v49);
        v51 = __p;
      }

      v83 = v49;
      operator delete(v51);
    }

    v21 = v80;
    if (!v80)
    {
      goto LABEL_74;
    }

    v52 = v81;
    v23 = v80;
    if (v81 == v80)
    {
      goto LABEL_73;
    }

    do
    {
      v54 = *--v52;
      v53 = v54;
      *v52 = 0;
      if (v54)
      {
        operator delete[](v53);
      }
    }

    while (v52 != v21);
LABEL_72:
    v23 = v80;
    goto LABEL_73;
  }

LABEL_49:
  v89.var0 = "kernel_sizes";
  v89.var1 = 12;
  v38 = mlir::DictionaryAttr::get(&v70, v89);
  if (!v38)
  {
    return 1;
  }

  v39 = v38;
  if (mlir::DenseIntElementsAttr::classof(v38))
  {
    a1[2] = v39;
    return 1;
  }

  a3(&v74, a4);
  if (v74)
  {
    v71 = 3;
    v73 = 57;
    v55 = &v71;
    v56 = v76;
    if (v77 >= v78)
    {
      if (v76 <= &v71 && v76 + 24 * v77 > &v71)
      {
        v67 = &v71 - v76;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v56 = v76;
        v55 = (v76 + v67);
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
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v39);
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