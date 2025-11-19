uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps5(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_26;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v7;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
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
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isUnsignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isBF16(v57))
  {
    return 1;
  }

  if (mlir::Type::isF16(v57))
  {
    return 1;
  }

  isF32 = mlir::Type::isF32(v57);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isF32)
  {
    return 1;
  }

LABEL_26:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
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
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of 8-bit unsigned integer or 8-bit signed integer or bfloat16 type or 16-bit float or 32-bit float values, but got ";
        v61 = 131;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
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
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v12 = a1;
  {
    v56 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v9 + 8);
  v15 = *(v9 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
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
    goto LABEL_18;
  }

  v22 = v16[1];
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  isSignedInteger = mlir::Type::isSignedInteger(v57, 32);
  a1 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_22:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
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
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of 32-bit signed integer values, but got ";
        v61 = 57;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
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
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x1E69E9840];
  v13[0] = v14;
  v13[1] = 0x400000000;
  if ((*(*a1 + 280))())
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v11))
        {
          v12[0] = mlir::FunctionType::getInputs(&v11);
          v12[1] = v5;
          Results = mlir::FunctionType::getResults(&v11);
          mlir::OperationState::addTypes(a2, Results, v7);
          v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v13, v12, v4, a2 + 16) & 1;
          v9 = v13[0];
          if (v13[0] == v14)
          {
            return v8;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v8 = 0;
  v9 = v13[0];
  if (v13[0] != v14)
  {
LABEL_10:
    free(v9);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp *this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps8(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps7(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v58 = a2;
  v36 = a1;
  Values = mlir::SparseElementsAttr::getValues(&v58);
  a1 = v36;
  if (!Values || *(*Values + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    goto LABEL_2;
  }

  v38 = *a2;
  {
    v55 = v38;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = *(v55 + 8);
    v41 = *(v55 + 16);
    if (v41)
    {
      goto LABEL_31;
    }

LABEL_59:
    v50 = 0;
    goto LABEL_61;
  }

  v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  if (!v41)
  {
    goto LABEL_59;
  }

LABEL_31:
  v42 = v40;
  v43 = v41;
  do
  {
    v44 = v43 >> 1;
    v45 = &v42[2 * (v43 >> 1)];
    v47 = *v45;
    v46 = v45 + 2;
    v43 += ~(v43 >> 1);
    if (v47 < v39)
    {
      v42 = v46;
    }

    else
    {
      v43 = v44;
    }
  }

  while (v43);
  if (v42 == &v40[2 * v41] || *v42 != v39)
  {
    goto LABEL_59;
  }

  v50 = v42[1];
LABEL_61:
  v61[0] = a2;
  v61[1] = v50;
  v56[0] = mlir::ElementsAttr::isSplat(v61);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56) || mlir::Type::isSignedInteger(v56, 4) || mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v56, 32);
  a1 = v36;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    LODWORD(v58) = 3;
    v59 = " #";
    v60 = 2;
    v9 = &v58;
    v10 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v48 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v10 = v62;
        v9 = (v62 + v48);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v9 = &v58;
        v10 = v62;
      }
    }

    v11 = &v10[24 * v63];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    v13 = ++v63;
    if (v61[0])
    {
      LODWORD(v58) = 5;
      v59 = a5;
      v14 = &v58;
      v15 = v62;
      if (v13 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v13 > &v58)
        {
          v49 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v13 + 1, 24);
          v15 = v62;
          v14 = (v62 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v13 + 1, 24);
          v14 = &v58;
          v15 = v62;
        }
      }

      v16 = &v15[24 * v63];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      v18 = ++v63;
      if (v61[0])
      {
        LODWORD(v58) = 3;
        v59 = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
        v60 = 144;
        v19 = &v58;
        v20 = v62;
        if (v18 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v18 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v18 + 1, 24);
            v20 = v62;
            v19 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v18 + 1, 24);
            v19 = &v58;
            v20 = v62;
          }
        }

        v21 = &v20[24 * v63];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v63;
        if (v61[0])
        {
          v23 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v24 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v24 = v62;
              v23 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v23 = &v58;
              v24 = v62;
            }
          }

          v25 = &v24[24 * v63];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          ++v63;
        }
      }
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v69;
      v30 = __p;
      if (v69 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v69 = v28;
      operator delete(v30);
    }

    v31 = v66;
    if (v66)
    {
      v32 = v67;
      v33 = v66;
      if (v67 != v66)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            operator delete[](v34);
          }
        }

        while (v32 != v31);
        v33 = v66;
      }

      v67 = v31;
      operator delete(v33);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v27;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps8(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v58 = a2;
  v36 = a1;
  Values = mlir::SparseElementsAttr::getValues(&v58);
  if (Values)
  {
    a1 = v36;
    if (*(*Values + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v38 = *a2;
  {
    v55 = v38;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = *(v55 + 8);
    v41 = *(v55 + 16);
    if (v41)
    {
      goto LABEL_31;
    }

LABEL_57:
    v48 = 0;
    goto LABEL_59;
  }

  v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  if (!v41)
  {
    goto LABEL_57;
  }

LABEL_31:
  v42 = v40;
  v43 = v41;
  do
  {
    v44 = v43 >> 1;
    v45 = &v42[2 * (v43 >> 1)];
    v47 = *v45;
    v46 = v45 + 2;
    v43 += ~(v43 >> 1);
    if (v47 < v39)
    {
      v42 = v46;
    }

    else
    {
      v43 = v44;
    }
  }

  while (v43);
  if (v42 == &v40[2 * v41] || *v42 != v39)
  {
    goto LABEL_57;
  }

  v48 = v42[1];
LABEL_59:
  v61[0] = a2;
  v61[1] = v48;
  v56[0] = mlir::ElementsAttr::isSplat(v61);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56) || mlir::Type::isSignedInteger(v56, 4) || mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v56, 32);
  a1 = v36;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    LODWORD(v58) = 3;
    v59 = " #";
    v60 = 2;
    v9 = &v58;
    v10 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v10 = v62;
        v9 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v9 = &v58;
        v10 = v62;
      }
    }

    v11 = &v10[24 * v63];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    v13 = ++v63;
    if (v61[0])
    {
      LODWORD(v58) = 5;
      v59 = a5;
      v14 = &v58;
      v15 = v62;
      if (v13 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v13 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v13 + 1, 24);
          v15 = v62;
          v14 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v13 + 1, 24);
          v14 = &v58;
          v15 = v62;
        }
      }

      v16 = &v15[24 * v63];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      v18 = ++v63;
      if (v61[0])
      {
        LODWORD(v58) = 3;
        v59 = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
        v60 = 144;
        v19 = &v58;
        v20 = v62;
        if (v18 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v18 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v18 + 1, 24);
            v20 = v62;
            v19 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v18 + 1, 24);
            v19 = &v58;
            v20 = v62;
          }
        }

        v21 = &v20[24 * v63];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v63;
        if (v61[0])
        {
          v23 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v24 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v24 = v62;
              v23 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v23 = &v58;
              v24 = v62;
            }
          }

          v25 = &v24[24 * v63];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          ++v63;
        }
      }
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v69;
      v30 = __p;
      if (v69 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v69 = v28;
      operator delete(v30);
    }

    v31 = v66;
    if (v66)
    {
      v32 = v67;
      v33 = v66;
      if (v67 != v66)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            operator delete[](v34);
          }
        }

        while (v32 != v31);
        v33 = v66;
      }

      v67 = v31;
      operator delete(v33);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v27;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x1E69E9840];
  v13[0] = v14;
  v13[1] = 0x400000000;
  if ((*(*a1 + 280))())
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v11))
        {
          v12[0] = mlir::FunctionType::getInputs(&v11);
          v12[1] = v5;
          Results = mlir::FunctionType::getResults(&v11);
          mlir::OperationState::addTypes(a2, Results, v7);
          v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v13, v12, v4, a2 + 16) & 1;
          v9 = v13[0];
          if (v13[0] == v14)
          {
            return v8;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v8 = 0;
  v9 = v13[0];
  if (v13[0] != v14)
  {
LABEL_10:
    free(v9);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp *this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps8(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x1E69E9840];
  v13[0] = v14;
  v13[1] = 0x400000000;
  if ((*(*a1 + 280))())
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v11))
        {
          v12[0] = mlir::FunctionType::getInputs(&v11);
          v12[1] = v5;
          Results = mlir::FunctionType::getResults(&v11);
          mlir::OperationState::addTypes(a2, Results, v7);
          v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v13, v12, v4, a2 + 16) & 1;
          v9 = v13[0];
          if (v13[0] == v14)
          {
            return v8;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v8 = 0;
  v9 = v13[0];
  if (v13[0] != v14)
  {
LABEL_10:
    free(v9);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreMLAX::DequantizeOp *this)
{
  if ((mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps9(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps9(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(*this, *(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps9(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v7;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
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
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isSignedInteger(v57, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v57, 8))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v57, 8);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_24:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
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
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer values, but got ";
        v61 = 106;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
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
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x1E69E9840];
  v13[0] = v14;
  v13[1] = 0x400000000;
  if ((*(*a1 + 280))())
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v11))
        {
          v12[0] = mlir::FunctionType::getInputs(&v11);
          v12[1] = v5;
          Results = mlir::FunctionType::getResults(&v11);
          mlir::OperationState::addTypes(a2, Results, v7);
          v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v13, v12, v4, a2 + 16) & 1;
          v9 = v13[0];
          if (v13[0] == v14)
          {
            return v8;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v8 = 0;
  v9 = v13[0];
  if (v13[0] != v14)
  {
LABEL_10:
    free(v9);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreMLAX::QuantizeOp *this)
{
  if ((mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps10(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(*this, *(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps10(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps10(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_23;
  }

  v12 = a1;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v9 + 8);
    v15 = *(v9 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
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
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isUnsignedInteger(v57, 8))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v57, 8);
  a1 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_23:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
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
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of 8-bit unsigned integer or 8-bit signed integer values, but got ";
        v61 = 82;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
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
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x1E69E9840];
  v13[0] = v14;
  v13[1] = 0x400000000;
  if ((*(*a1 + 280))())
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v11))
        {
          v12[0] = mlir::FunctionType::getInputs(&v11);
          v12[1] = v5;
          Results = mlir::FunctionType::getResults(&v11);
          mlir::OperationState::addTypes(a2, Results, v7);
          v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v13, v12, v4, a2 + 16) & 1;
          v9 = v13[0];
          if (v13[0] == v14)
          {
            return v8;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v8 = 0;
  v9 = v13[0];
  if (v13[0] != v14)
  {
LABEL_10:
    free(v9);
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x1E69E9840];
  v13[0] = v14;
  v13[1] = 0x400000000;
  if ((*(*a1 + 280))())
  {
    v4 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v11))
        {
          v12[0] = mlir::FunctionType::getInputs(&v11);
          v12[1] = v5;
          Results = mlir::FunctionType::getResults(&v11);
          mlir::OperationState::addTypes(a2, Results, v7);
          v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v13, v12, v4, a2 + 16) & 1;
          v9 = v13[0];
          if (v13[0] == v14)
          {
            return v8;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v8 = 0;
  v9 = v13[0];
  if (v13[0] != v14)
  {
LABEL_10:
    free(v9);
  }

  return v8;
}

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coremlax.copy_with_constraints", 30, v31, v9, 0, 0);
  *v8 = &unk_1F5B3D650;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp]";
    v32 = 118;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coremlax.copy_with_constraints", 30, v31, v9, 0, 0);
  *v8 = &unk_1F5B3E130;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp]";
    v32 = 115;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v76 = a2;
  ParentOp = a2;
  do
  {
    v7 = *(ParentOp + 16);
    if (v7)
    {
      ParentOp = mlir::Block::getParentOp(v7);
      if (ParentOp)
      {
        continue;
      }
    }

    v75 = 0;
    goto LABEL_38;
  }

  while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id);
  v75 = ParentOp;
  Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v75);
  if (v9 != 11 || (*Name == 0x6572707265746E49 ? (v10 = *(Name + 3) == 0x7265746572707265) : (v10 = 0), !v10))
  {
LABEL_38:
    v26 = "Needs to be Interpreter-isolated to be folded";
LABEL_39:
    v80 = v26;
    v82[8] = 259;
    v77[0] = &v80;
    v27 = a3[2];
    if (v27)
    {
      if (mlir::RewriterBase::Listener::classof(v27))
      {
        (*(*v27 + 88))(v27, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v77);
      }
    }

    return 0;
  }

  v80 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v80);
  if (!DefiningOp)
  {
    v74 = 0;
LABEL_45:
    v26 = "Non-constant or non-tensor source";
    goto LABEL_39;
  }

  v12 = *(*(DefiningOp + 48) + 16);
  v13 = v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v14 = DefiningOp;
  }

  else
  {
    v14 = 0;
  }

  v74 = v14;
  if (!v13 || *(*mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(&v74) + 136) != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    goto LABEL_45;
  }

  Value = mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(&v74);
  v71 = 0;
  v72 = std::system_category();
  NumElements = mlir::DenseElementsAttr::getNumElements(&Value);
  llvm::sys::Memory::allocateMappedMemory(NumElements, 0, 50331648, &v71, &v69);
  v67 = v69;
  v16 = v69;
  v68 = v70;
  mlir::DenseElementsAttr::getRawStringData(&Value);
  v18 = v17;
  RawStringData = mlir::DenseElementsAttr::getRawStringData(&Value);
  v62 = v20;
  v66[0] = mlir::ArrayAttr::getValue(&Value);
  v66[1] = v21;
  v80 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  Values = mlir::SparseElementsAttr::getValues(&v80);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v66);
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&Values, ArgAttrsAttr, &v80);
  isSplat = mlir::ElementsAttr::isSplat(v66);
  v24 = *(*isSplat + 136);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v77[0] = isSplat;
    Width = mlir::IntegerType::getWidth(v77);
  }

  else
  {
    if (v24 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v25 = -1;
      goto LABEL_49;
    }

    v77[0] = isSplat;
    Width = mlir::FloatType::getWidth(v77);
  }

  v25 = Width;
LABEL_49:
  v30 = __ROR8__(v25 - 8, 3);
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      v49 = mlir::CallableOpInterface::getArgAttrsAttr(v66);
      v51 = v50;
      v52 = v80;
      v53 = v81;
      RawData = mlir::DenseArrayAttr::getRawData(&Values);
      mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned int>(a1, v16, v18, RawStringData, v62, v18, v49, v51, v52, v53, RawData);
    }

    else
    {
      if (v30 != 7)
      {
        goto LABEL_56;
      }

      v37 = mlir::CallableOpInterface::getArgAttrsAttr(v66);
      v39 = v38;
      v40 = v80;
      v41 = v81;
      v42 = mlir::DenseArrayAttr::getRawData(&Values);
      mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned long long>(a1, v16, v18, RawStringData, v62, v18, v37, v39, v40, v41, v42);
    }

LABEL_59:
    v64 = *(a2 + 24);
    v77[0] = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    v55 = mlir::TensorType::operator mlir::ShapedType(v77);
    v63[0] = mlir::ODIE::Compiler::CoreML::createElementsAttr(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::matchAndRewrite(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::PatternRewriter &)::{lambda(void)#2}>, &v64, v55, v56, v16, v18);
    v63[1] = v57;
    if (v63[0])
    {
      v58 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ElementsAttr &>((a3 + 1), *(a2 + 24), v63);
      (*(*a3 + 8))(a3, a2, v58);
      result = 1;
    }

    else
    {
      v77[0] = "Can't create new Attr";
      v78 = 259;
      v79 = v77;
      v59 = a3[2];
      if (v59 && mlir::RewriterBase::Listener::classof(v59))
      {
        (*(*v59 + 88))(v59, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v79);
      }

      result = 0;
    }

    goto LABEL_65;
  }

  if (!v30)
  {
    v43 = mlir::CallableOpInterface::getArgAttrsAttr(v66);
    v45 = v44;
    v46 = v80;
    v47 = v81;
    v48 = mlir::DenseArrayAttr::getRawData(&Values);
    mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned char>(a1, v16, v18, RawStringData, v62, v18, v43, v45, v46, v47, v48);
    goto LABEL_59;
  }

  if (v30 == 1)
  {
    v31 = mlir::CallableOpInterface::getArgAttrsAttr(v66);
    v33 = v32;
    v34 = v80;
    v35 = v81;
    v36 = mlir::DenseArrayAttr::getRawData(&Values);
    mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned short>(a1, v16, v18, RawStringData, v62, v18, v31, v33, v34, v35, v36);
    goto LABEL_59;
  }

LABEL_56:
  result = mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(a3, &v76, "Can't re-layout");
LABEL_65:
  if (v80 != v82)
  {
    v60 = result;
    free(v80);
    result = v60;
  }

  if (v67)
  {
    v61 = result;
    llvm::sys::Memory::releaseMappedMemory(&v67);
    return v61;
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

void mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned long long>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v54[6] = *MEMORY[0x1E69E9840];
  v52 = v54;
  v53 = 0x600000000;
  if (!a8)
  {
    if (a6 < 8)
    {
      return;
    }

    v19 = a6 >> 3;
    if (a6 >= 0x40 && (a4 + (a6 & 0xFFFFFFFFFFFFFFF8) <= a2 || (a2 + 1) <= a4))
    {
      v20 = v19 & 0x1FFFFFFFFFFFFFFCLL;
      v50 = (a4 - 8);
      v51 = v19 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v50 += 4;
        v51 -= 4;
      }

      while (v51);
      *a2 = *v50;
      if (v19 == v20)
      {
        return;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v19 - v20;
    v22 = (a4 + 8 * v20);
    do
    {
      v23 = *v22++;
      *a2 = v23;
      --v21;
    }

    while (v21);
    return;
  }

  if (a8 < 7)
  {
    v16 = 0;
    v17 = v54;
    v18 = a8;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, a8, 8);
    v16 = v53;
    v17 = v52;
    v18 = a8 - v53;
    if (a8 == v53)
    {
      goto LABEL_15;
    }
  }

  bzero(&v17[v16], 8 * v18);
LABEL_15:
  LODWORD(v53) = a8;
  if (a6 >= 8)
  {
    v24 = a6 >> 3;
    v25 = 0;
    if (a8 - 1 < 0)
    {
      do
      {
        v39 = 0;
        v40 = a11;
        v41 = v17;
        v42 = a8;
        v43 = (a9 + 8);
        do
        {
          while (1)
          {
            v46 = *v40++;
            v45 = v46;
            v48 = *v41++;
            v47 = v48;
            if (v45 != 1)
            {
              break;
            }

            v44 = *v43++;
            v39 += v44 * v47;
            if (!--v42)
            {
              goto LABEL_29;
            }
          }

          v49 = *v43++;
          v39 += v47 % v45 + v49 * (v47 / v45);
          --v42;
        }

        while (v42);
LABEL_29:
        a2[v39] = *(a4 + 8 * v25++);
      }

      while (v25 != v24);
    }

    else
    {
      do
      {
        v26 = (a8 - 1);
        v27 = v25;
        do
        {
          v17[v26] = v27 % *(a7 + v26 * 8);
          v27 /= *(a7 + v26 * 8);
          --v26;
        }

        while (v26 != -1);
        v28 = 0;
        v29 = a11;
        v30 = v17;
        v31 = (a9 + 8);
        v32 = a8;
        do
        {
          while (1)
          {
            v35 = *v29++;
            v34 = v35;
            v37 = *v30++;
            v36 = v37;
            if (v34 != 1)
            {
              break;
            }

            v33 = *v31++;
            v28 += v33 * v36;
            if (!--v32)
            {
              goto LABEL_21;
            }
          }

          v38 = *v31++;
          v28 += v36 % v34 + v38 * (v36 / v34);
          --v32;
        }

        while (v32);
LABEL_21:
        a2[v28] = *(a4 + 8 * v25++);
      }

      while (v25 != v24);
    }
  }

  if (v17 != v54)
  {
    free(v17);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned int>(uint64_t a1, _DWORD *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v54[6] = *MEMORY[0x1E69E9840];
  v52 = v54;
  v53 = 0x600000000;
  if (!a8)
  {
    if (a6 < 4)
    {
      return;
    }

    v19 = a6 >> 2;
    if (a6 >= 0x20 && (a4 + (a6 & 0xFFFFFFFFFFFFFFFCLL) <= a2 || (a2 + 1) <= a4))
    {
      v20 = v19 & 0x3FFFFFFFFFFFFFF8;
      v50 = (a4 - 4);
      v51 = v19 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v50 += 8;
        v51 -= 8;
      }

      while (v51);
      *a2 = *v50;
      if (v19 == v20)
      {
        return;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v19 - v20;
    v22 = (a4 + 4 * v20);
    do
    {
      v23 = *v22++;
      *a2 = v23;
      --v21;
    }

    while (v21);
    return;
  }

  if (a8 < 7)
  {
    v16 = 0;
    v17 = v54;
    v18 = a8;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, a8, 8);
    v16 = v53;
    v17 = v52;
    v18 = a8 - v53;
    if (a8 == v53)
    {
      goto LABEL_15;
    }
  }

  bzero(&v17[v16], 8 * v18);
LABEL_15:
  LODWORD(v53) = a8;
  if (a6 >= 4)
  {
    v24 = a6 >> 2;
    v25 = 0;
    if (a8 - 1 < 0)
    {
      do
      {
        v39 = 0;
        v40 = a11;
        v41 = v17;
        v42 = a8;
        v43 = (a9 + 8);
        do
        {
          while (1)
          {
            v46 = *v40++;
            v45 = v46;
            v48 = *v41++;
            v47 = v48;
            if (v45 != 1)
            {
              break;
            }

            v44 = *v43++;
            v39 += v44 * v47;
            if (!--v42)
            {
              goto LABEL_29;
            }
          }

          v49 = *v43++;
          v39 += v47 % v45 + v49 * (v47 / v45);
          --v42;
        }

        while (v42);
LABEL_29:
        a2[v39] = *(a4 + 4 * v25++);
      }

      while (v25 != v24);
    }

    else
    {
      do
      {
        v26 = (a8 - 1);
        v27 = v25;
        do
        {
          v17[v26] = v27 % *(a7 + v26 * 8);
          v27 /= *(a7 + v26 * 8);
          --v26;
        }

        while (v26 != -1);
        v28 = 0;
        v29 = a11;
        v30 = v17;
        v31 = (a9 + 8);
        v32 = a8;
        do
        {
          while (1)
          {
            v35 = *v29++;
            v34 = v35;
            v37 = *v30++;
            v36 = v37;
            if (v34 != 1)
            {
              break;
            }

            v33 = *v31++;
            v28 += v33 * v36;
            if (!--v32)
            {
              goto LABEL_21;
            }
          }

          v38 = *v31++;
          v28 += v36 % v34 + v38 * (v36 / v34);
          --v32;
        }

        while (v32);
LABEL_21:
        a2[v28] = *(a4 + 4 * v25++);
      }

      while (v25 != v24);
    }
  }

  if (v17 != v54)
  {
    free(v17);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned short>(uint64_t a1, _WORD *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v57[6] = *MEMORY[0x1E69E9840];
  v55 = v57;
  v56 = 0x600000000;
  if (!a8)
  {
    if (a6 < 2)
    {
      return;
    }

    v19 = a6 >> 1;
    if (a6 < 8 || a4 + (a6 & 0xFFFFFFFFFFFFFFFELL) > a2 && (a2 + 1) > a4)
    {
      v20 = 0;
      goto LABEL_10;
    }

    if (a6 >= 0x20)
    {
      v20 = v19 & 0x7FFFFFFFFFFFFFF0;
      v50 = (a4 - 2);
      v51 = v19 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v50 += 16;
        v51 -= 16;
      }

      while (v51);
      *a2 = *v50;
      if (v19 == v20)
      {
        return;
      }

      if ((a6 & 0x18) == 0)
      {
LABEL_10:
        v21 = v19 - v20;
        v22 = (a4 + 2 * v20);
        do
        {
          v23 = *v22++;
          *a2 = v23;
          --v21;
        }

        while (v21);
        return;
      }
    }

    else
    {
      v20 = 0;
    }

    v52 = v20;
    v20 = v19 & 0x7FFFFFFFFFFFFFFCLL;
    v53 = (a4 + 2 * v52 - 2);
    v54 = v52 - (v19 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v53 += 4;
      v54 += 4;
    }

    while (v54);
    *a2 = *v53;
    if (v19 == v20)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a8 < 7)
  {
    v16 = 0;
    v17 = v57;
    v18 = a8;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, a8, 8);
    v16 = v56;
    v17 = v55;
    v18 = a8 - v56;
    if (a8 == v56)
    {
      goto LABEL_15;
    }
  }

  bzero(&v17[v16], 8 * v18);
LABEL_15:
  LODWORD(v56) = a8;
  if (a6 >= 2)
  {
    v24 = a6 >> 1;
    v25 = 0;
    if (a8 - 1 < 0)
    {
      do
      {
        v39 = 0;
        v40 = a11;
        v41 = v17;
        v42 = a8;
        v43 = (a9 + 8);
        do
        {
          while (1)
          {
            v46 = *v40++;
            v45 = v46;
            v48 = *v41++;
            v47 = v48;
            if (v45 != 1)
            {
              break;
            }

            v44 = *v43++;
            v39 += v44 * v47;
            if (!--v42)
            {
              goto LABEL_29;
            }
          }

          v49 = *v43++;
          v39 += v47 % v45 + v49 * (v47 / v45);
          --v42;
        }

        while (v42);
LABEL_29:
        a2[v39] = *(a4 + 2 * v25++);
      }

      while (v25 != v24);
    }

    else
    {
      do
      {
        v26 = (a8 - 1);
        v27 = v25;
        do
        {
          v17[v26] = v27 % *(a7 + v26 * 8);
          v27 /= *(a7 + v26 * 8);
          --v26;
        }

        while (v26 != -1);
        v28 = 0;
        v29 = a11;
        v30 = v17;
        v31 = (a9 + 8);
        v32 = a8;
        do
        {
          while (1)
          {
            v35 = *v29++;
            v34 = v35;
            v37 = *v30++;
            v36 = v37;
            if (v34 != 1)
            {
              break;
            }

            v33 = *v31++;
            v28 += v33 * v36;
            if (!--v32)
            {
              goto LABEL_21;
            }
          }

          v38 = *v31++;
          v28 += v36 % v34 + v38 * (v36 / v34);
          --v32;
        }

        while (v32);
LABEL_21:
        a2[v28] = *(a4 + 2 * v25++);
      }

      while (v25 != v24);
    }
  }

  if (v17 != v57)
  {
    free(v17);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned char>(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v55[6] = *MEMORY[0x1E69E9840];
  v53 = v55;
  v54 = 0x600000000;
  if (!a8)
  {
    if (!a6)
    {
      goto LABEL_41;
    }

    if (a6 < 8 || a4 + a6 > a2 && (a2 + 1) > a4)
    {
      v18 = 0;
LABEL_10:
      v19 = a6 - v18;
      v20 = (a4 + v18);
      do
      {
        v21 = *v20++;
        *a2 = v21;
        --v19;
      }

      while (v19);
      goto LABEL_41;
    }

    if (a6 >= 0x20)
    {
      v18 = a6 & 0xFFFFFFFFFFFFFFE0;
      v48 = (a4 - 1);
      v49 = a6 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v48 += 32;
        v49 -= 32;
      }

      while (v49);
      *a2 = *v48;
      if (v18 == a6)
      {
        goto LABEL_41;
      }

      if ((a6 & 0x18) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = 0;
    }

    v50 = v18;
    v18 = a6 & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + a4 - 1);
    v52 = v50 - (a6 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v51 += 8;
      v52 += 8;
    }

    while (v52);
    *a2 = *v51;
    if (v18 == a6)
    {
      goto LABEL_41;
    }

    goto LABEL_10;
  }

  if (a8 < 7)
  {
    v16 = 0;
    v17 = a8;
    goto LABEL_14;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, a8, 8);
  v16 = v54;
  v17 = a8 - v54;
  if (a8 != v54)
  {
LABEL_14:
    bzero(v53 + 8 * v16, 8 * v17);
  }

  LODWORD(v54) = a8;
  if (a6)
  {
    v22 = v53;
    v23 = 0;
    if (a8 - 1 < 0)
    {
      do
      {
        v37 = 0;
        v38 = a11;
        v39 = v22;
        v40 = a8;
        v41 = (a9 + 8);
        do
        {
          while (1)
          {
            v44 = *v38++;
            v43 = v44;
            v46 = *v39++;
            v45 = v46;
            if (v43 != 1)
            {
              break;
            }

            v42 = *v41++;
            v37 += v42 * v45;
            if (!--v40)
            {
              goto LABEL_26;
            }
          }

          v47 = *v41++;
          v37 += v45 % v43 + v47 * (v45 / v43);
          --v40;
        }

        while (v40);
LABEL_26:
        a2[v37] = *(a4 + v23++);
      }

      while (v23 != a6);
    }

    else
    {
      do
      {
        v24 = (a8 - 1);
        v25 = v23;
        do
        {
          v22[v24] = v25 % *(a7 + v24 * 8);
          v25 /= *(a7 + v24 * 8);
          --v24;
        }

        while (v24 != -1);
        v26 = 0;
        v27 = a11;
        v28 = v22;
        v29 = (a9 + 8);
        v30 = a8;
        do
        {
          while (1)
          {
            v33 = *v27++;
            v32 = v33;
            v35 = *v28++;
            v34 = v35;
            if (v32 != 1)
            {
              break;
            }

            v31 = *v29++;
            v26 += v31 * v34;
            if (!--v30)
            {
              goto LABEL_18;
            }
          }

          v36 = *v29++;
          v26 += v34 % v32 + v36 * (v34 / v32);
          --v30;
        }

        while (v30);
LABEL_18:
        a2[v26] = *(a4 + v23++);
      }

      while (v23 != a6);
    }
  }

LABEL_41:
  if (v53 != v55)
  {
    free(v53);
  }
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v16[38] = *MEMORY[0x1E69E9840];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ElementsAttr &>(v16, v15, v14);
  }

  mlir::OperationState::OperationState(v16, a2, v7);
  if (*a3)
  {
    v9 = *(a3[1] + 24);
  }

  else
  {
    v9 = 0;
  }

  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v16, *a3, v9);
  v10 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v11;
}

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coremlax.copy_discarding_constraints", 36, v31, v9, 0, 0);
  *v8 = &unk_1F5B3D790;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp]";
    v32 = 107;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coremlax.copy_discarding_constraints", 36, v31, v9, 0, 0);
  *v8 = &unk_1F5B3D6F0;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp]";
    v32 = 124;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coremlax.cast", 13, v31, v9, 0, 0);
  *v8 = &unk_1F5B3D800;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp]";
    v32 = 117;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coremlax.cast", 13, v31, v9, 0, 0);
  *v8 = &unk_1F5B3D8A0;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp]";
    v32 = 103;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

uint64_t OUTLINED_FUNCTION_34_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  return mlir::ArrayAttr::getValue(&a14);
}

unint64_t OUTLINED_FUNCTION_35_13()
{
  v2 = *v0;

  return mlir::Operation::getAttrDictionary(v2);
}

void mlir::ODIE::Compiler::CoreMLAX::getStrides(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = a1;
  Value = mlir::ArrayAttr::getValue(&v17);
  Values = mlir::SparseElementsAttr::getValues(&v17);
  if (*(*Values + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v5 = Values;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  if (v5)
  {
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v16, Value, a2);
    return;
  }

  mlir::ArrayAttr::getValue(&v17);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  v7 = v6 + 1;
  if (v6 != -1)
  {
    if (v7 < 7)
    {
      v8 = 0;
      v9 = v6 + 1;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 2), v6 + 1, 8);
      v8 = *(a2 + 2);
      v9 = v7 - v8;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    bzero((*a2 + 8 * v8), 8 * v9);
LABEL_12:
    *(a2 + 2) = v7;
    if (v7)
    {
      v10 = v7;
      v11 = *a2;
      *(*a2 + 8 * (v7 - 1)) = 1;
      if (v7 != 1)
      {
        v12 = 0;
        v13 = v11 - 16;
        v14 = 1;
        do
        {
          v15 = *(Value - 16 + 8 * v10);
          v12 |= v15 == 0x8000000000000000;
          v14 *= v15;
          if (v12)
          {
            v14 = 0x8000000000000000;
          }

          *(v13 + 8 * v10--) = v14;
        }

        while (v10 != 1);
      }
    }
  }
}

void llvm::detail::IEEEFloat::makeNaN(llvm::detail::IEEEFloat *this, int a2, int a3, const llvm::APInt *a4)
{
  p_p = a4;
  v7 = *this;
  v8 = *(this + 20) & 0xF0;
  if (a3)
  {
    v9 = 9;
  }

  else
  {
    v9 = 1;
  }

  *(this + 20) = v9 | v8;
  v10 = v7[4];
  if (v10 != 1)
  {
    *(this + 4) = *v7 + 1;
    v11 = v7[2];
    v12 = (this + 8);
    if ((v11 - 64) > 0xFFFFFF7F)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7[5] == 2)
  {
    *(this + 4) = v7[1] - 1;
    v11 = v7[2];
    v12 = (this + 8);
    if ((v11 - 64) > 0xFFFFFF7F)
    {
      goto LABEL_10;
    }

LABEL_9:
    v12 = *v12;
    goto LABEL_10;
  }

  *(this + 4) = *v7;
  v11 = v7[2];
  v12 = (this + 8);
  if ((v11 - 64) <= 0xFFFFFF7F)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = ((v11 + 64) >> 6);
  v33 = 1;
  __p = 0;
  if (v10 == 1)
  {
    v14 = &v33;
    if (v7[5] == 2)
    {
      *(this + 20) = v8 | 9;
      v31 = v7[2] - 1;
      if (v31 <= 0x40)
      {
        v30 = 0;
        goto LABEL_30;
      }

      v20 = 0;
      v21 = 0;
    }

    else
    {
      v31 = v11 - 1;
      if ((v11 - 1) <= 0x40)
      {
        if (v11 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0xFFFFFFFFFFFFFFFFLL >> ~(v11 + 62);
        }

        v30 = v16;
LABEL_30:
        a2 = 0;
        __p = v30;
        v15 = v31;
        v33 = v31;
        p_p = &__p;
        if (v13 <= ((v31 + 63) >> 6))
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v20 = -1;
      v21 = 1;
    }

    llvm::APInt::initSlowCase(&v30, v20, v21);
    goto LABEL_30;
  }

  if (a4)
  {
    v14 = (a4 + 8);
    v15 = *(a4 + 2);
    if (v13 <= ((v15 + 63) >> 6))
    {
LABEL_32:
      if (v15 >= 0x41)
      {
        p_p = *p_p;
      }

      v22 = (v15 + 63) >> 6;
      if (v13 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v13;
      }

      llvm::APInt::tcAssign(v12, p_p, v23);
      v17 = *this;
      v18 = *(*this + 8);
      v24 = (v18 - 1) >> 6;
      *(v12 + v24) &= ~(-1 << (v18 - 1));
      v25 = v24 + 1;
      if (v24 + 1 != v13)
      {
        v26 = v13 + ~v24;
        if (v26 < 0xA)
        {
          v27 = v24 + 1;
        }

        else if (v13 - 1 <= v24)
        {
          v27 = v24 + 1;
        }

        else
        {
          v27 = v25 + (v26 & 0xFFFFFFFC);
          v28 = v26 & 0xFFFFFFFC;
          do
          {
            v29 = (v12 + 8 * v25);
            *v29 = 0uLL;
            v29[1] = 0uLL;
            v25 += 4;
            v28 -= 4;
          }

          while (v28);
          if (v26 == (v26 & 0xFFFFFFFC))
          {
            goto LABEL_47;
          }
        }

        do
        {
          *(v12 + v27++) = 0;
        }

        while (v13 != v27);
      }

LABEL_47:
      v19 = (v18 - 2);
      if (a2)
      {
        goto LABEL_48;
      }

      goto LABEL_25;
    }

LABEL_31:
    llvm::APInt::tcSet(v12, 0, v13);
    v15 = *v14;
    goto LABEL_32;
  }

  llvm::APInt::tcSet(v12, 0, (v11 + 64) >> 6);
  v17 = *this;
  v18 = *(*this + 8);
  v19 = (v18 - 2);
  if (a2)
  {
LABEL_48:
    llvm::APInt::tcClearBit(v12, v19);
    if (!llvm::APInt::tcIsZero(v12, v13))
    {
      goto LABEL_51;
    }

    v19 = (v18 - 3);
    goto LABEL_50;
  }

LABEL_25:
  if (*(v17 + 20) != 2)
  {
LABEL_50:
    llvm::APInt::tcSetBit(v12, v19);
  }

LABEL_51:
  if (*this == &llvm::semX87DoubleExtended)
  {
    llvm::APInt::tcSetBit(v12, (v18 - 1));
    if (v33 < 0x41)
    {
      return;
    }
  }

  else if (v33 < 0x41)
  {
    return;
  }

  if (__p)
  {
    operator delete[](__p);
  }
}

void *llvm::detail::IEEEFloat::operator=(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = *a2;
    if (*result == *a2)
    {
      v2 = *result;
    }

    else
    {
      if ((*(*result + 8) - 64) <= 0xFFFFFF7F && result[1])
      {
        v3 = result;
        v4 = a2;
        operator delete[](result[1]);
        a2 = v4;
        result = v3;
        v2 = *v4;
      }

      *result = v2;
      v5 = *(v2 + 8) + 64;
      if (v5 >= 0x80)
      {
        v6 = result;
        v7 = a2;
        v8 = operator new[]((v5 >> 3) & 0x1FFFFFF8);
        a2 = v7;
        v9 = v8;
        result = v6;
        v6[1] = v9;
      }
    }

    v10 = *(result + 20) & 0xF7 | *(a2 + 20) & 8;
    *(result + 20) = v10;
    v11 = *(a2 + 20);
    v12 = v11 & 7;
    *(result + 20) = v10 & 0xF8 | v11 & 7;
    *(result + 4) = *(a2 + 4);
    v14 = (v11 & 6) != 0 && v12 != 3;
    if (v12 == 1 || v14)
    {
      v16 = *(v2 + 8);
      v17 = result + 1;
      v18 = result;
      if ((v16 - 64) <= 0xFFFFFF7F)
      {
        v17 = *v17;
      }

      v19 = *(*a2 + 8) - 64;
      v22 = a2[1];
      v20 = a2 + 1;
      v21 = v22;
      if (v19 < 0xFFFFFF80)
      {
        v20 = v21;
      }

      llvm::APInt::tcAssign(v17, v20, ((v16 + 64) >> 6));
      return v18;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::operator=(uint64_t result, uint64_t a2)
{
  if ((*(*result + 8) - 64) <= 0xFFFFFF7F)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = result;
      v4 = a2;
      operator delete[](v2);
      a2 = v4;
      result = v3;
    }
  }

  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v5 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v5;
  *(result + 20) = v5 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return result;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllOnes(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  v4 = v3 + 63;
  v5 = (v4 >> 6) - 1;
  if (v4 >> 6 == 1)
  {
    v5 = 0;
    return (v1[v5] | (-1 << v4)) == -1;
  }

  else
  {
    v6 = (v4 >> 6) - 1;
    v7 = v1;
    while (1)
    {
      v8 = *v7++;
      if (v8 != -1)
      {
        break;
      }

      if (!--v6)
      {
        return (v1[v5] | (-1 << v4)) == -1;
      }
    }

    return 0;
  }
}

uint64_t llvm::detail::IEEEFloat::compare(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = *(this + 20);
  v4 = *(a2 + 20);
  v5 = 4 * (v3 & 7) + (v4 & 7);
  result = 3;
  if (v5 <= 7)
  {
    if (v5 > 3)
    {
      return result;
    }

    if ((v5 - 2) >= 2)
    {
      v7 = (v3 >> 3) & 1;
      v8 = v7 == ((v4 >> 3) & 1);
      v9 = (2 * v7) ^ 2;
      if (v8)
      {
        v9 = 1;
      }

      if (v5)
      {
        return 3;
      }

      else
      {
        return v9;
      }
    }

    return ~(v3 >> 2) & 2;
  }

  if (v5 > 11)
  {
    if (v5 > 13)
    {
      if (v5 != 14)
      {
        return 1;
      }
    }

    else if (v5 != 12)
    {
      return result;
    }

    return (v4 >> 2) & 2;
  }

  if (v5 <= 9)
  {
    if (v5 != 8)
    {
      return result;
    }

    return (v4 >> 2) & 2;
  }

  if (v5 != 10)
  {
    return ~(v3 >> 2) & 2;
  }

  v10 = (v3 >> 3) & 1;
  if (v10 != ((v4 >> 3) & 1))
  {
    return (2 * v10) ^ 2u;
  }

  v11 = *(this + 4) - *(a2 + 4);
  if (!v11)
  {
    v12 = (this + 8);
    v13 = *(*this + 8);
    if ((v13 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v12;
    }

    v14 = *(*a2 + 8) - 64;
    v17 = *(a2 + 1);
    v15 = (a2 + 8);
    v16 = v17;
    if (v14 < 0xFFFFFF80)
    {
      v15 = v16;
    }

    v11 = llvm::APInt::tcCompare(v12, v15, ((v13 + 64) >> 6));
    LOBYTE(v3) = *(this + 20);
  }

  if (v11 <= 0)
  {
    result = v11 >= 0;
  }

  else
  {
    result = 2;
  }

  if ((v3 & 8) != 0)
  {
    v18 = v11 <= 0 && v11 >= 0;
    if (result)
    {
      return v18;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void llvm::detail::IEEEFloat::~IEEEFloat(llvm::detail::IEEEFloat *this)
{
  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    v1 = *(this + 1);
    if (v1)
    {
      operator delete[](v1);
    }
  }
}

BOOL llvm::detail::IEEEFloat::bitwiseIsEqual(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v2 = *a2;
  if (*this == *a2)
  {
    v3 = *(this + 20);
    v4 = *(a2 + 20);
    if ((v3 & 7) == (v4 & 7) && ((v4 ^ v3) & 8) == 0)
    {
      v5 = 1;
      if ((v3 & 7) == 0 || (v3 & 7) == 3)
      {
        return v5;
      }

      if ((v3 & 6) == 0 || *(this + 4) == *(a2 + 4))
      {
        v6 = *(*this + 8);
        v7 = (this + 8);
        if ((v6 - 64) <= 0xFFFFFF7F)
        {
          v7 = *v7;
        }

        v8 = v6 + 64;
        v11 = *(a2 + 1);
        v9 = a2 + 8;
        v10 = v11;
        if ((*(v2 + 8) - 64) < 0xFFFFFF80)
        {
          v9 = v10;
        }

        return memcmp(v7, v9, (v8 >> 3) & 0x1FFFFFF8) == 0;
      }
    }
  }

  return 0;
}

uint64_t llvm::detail::IEEEFloat::normalize(uint64_t a1, int a2, int a3)
{
  if ((*(a1 + 20) & 6) == 0 || (*(a1 + 20) & 7) == 3)
  {
    return 0;
  }

  v8 = (a1 + 8);
  v9 = *(*a1 + 8);
  v10 = (a1 + 8);
  if ((v9 - 64) <= 0xFFFFFF7F)
  {
    v10 = *v8;
  }

  v11 = llvm::APInt::tcMSB(v10, ((v9 + 64) >> 6));
  v12 = *a1;
  v13 = v11 + 1;
  if (v11 == -1)
  {
    v13 = 0;
  }

  else
  {
    v21 = v12[2];
    v22 = *(a1 + 16);
    v23 = v22 + v13 - v21;
    if (v23 > *v12)
    {
      goto LABEL_22;
    }

    v26 = v12[1];
    if (v23 >= v26)
    {
      v27 = v13 - v21;
    }

    else
    {
      v27 = v26 - v22;
    }

    if ((v27 & 0x80000000) != 0)
    {
      if ((v21 - 64) <= 0xFFFFFF7F)
      {
        v8 = *v8;
      }

      llvm::APInt::tcShiftLeft(v8, ((v21 + 64) >> 6), -v27);
      result = 0;
      *(a1 + 16) += v27;
      return result;
    }

    if (v27)
    {
      *(a1 + 16) = v27 + v22;
      v28 = v8;
      if ((v21 - 64) <= 0xFFFFFF7F)
      {
        v28 = *v8;
      }

      v29 = v21 + 64;
      v30 = ((v21 + 64) >> 6);
      v31 = llvm::APInt::tcLSB(v28, v30);
      if (v31 >= v27)
      {
        llvm::APInt::tcShiftRight(v28, (v29 >> 6), v27);
        a3 = a3 != 0;
      }

      else
      {
        if (v31 + 1 == v27)
        {
          v32 = 2;
          v33 = 3;
        }

        else if ((v29 & 0xFFFFFFC0) >= v27 && llvm::APInt::tcExtractBit(v28, (v27 - 1)))
        {
          v33 = 3;
          v32 = 3;
        }

        else
        {
          v33 = 1;
          v32 = 1;
        }

        llvm::APInt::tcShiftRight(v28, v30, v27);
        if (a3)
        {
          a3 = v33;
        }

        else
        {
          a3 = v32;
        }
      }

      if (v13 >= v27)
      {
        v13 -= v27;
      }

      else
      {
        v13 = 0;
      }

      v12 = *a1;
    }
  }

  if (v12[4] == 1 && v12[5] == 1 && *(a1 + 16) == *v12)
  {
    v14 = v12[2];
    v15 = v8;
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v15 = *v8;
    }

    v16 = v14 + 63;
    v17 = (v16 >> 6) - 1;
    if (v16 >> 6 == 1)
    {
      v17 = 0;
LABEL_41:
      if ((*(v15 + v17) | (-1 << v16)) == 0xFFFFFFFFFFFFFFFFLL)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = v15;
      v19 = (v16 >> 6) - 1;
      while (1)
      {
        v20 = *v18;
        v18 = (v18 + 8);
        if (v20 != -1)
        {
          break;
        }

        if (!--v19)
        {
          goto LABEL_41;
        }
      }
    }
  }

  if (!a3)
  {
    if (!v13)
    {
      v34 = *(a1 + 20) & 0xF8 | 3;
      *(a1 + 20) = v34;
      if (v12[5] == 2)
      {
        result = 0;
        *(a1 + 20) = v34 & 0xF3;
        return result;
      }
    }

    return 0;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_78;
    }

    if (a3 != 3)
    {
      if (a3 != 2 || (*(a1 + 20) & 7) == 3)
      {
        goto LABEL_78;
      }

      v35 = v8;
      if ((v12[2] - 64) <= 0xFFFFFF7F)
      {
        v35 = *v8;
      }

      Bit = llvm::APInt::tcExtractBit(v35, 0);
      v12 = *a1;
      if (!Bit)
      {
        goto LABEL_78;
      }
    }
  }

  else if (a2 == 2)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      goto LABEL_78;
    }
  }

  else if (a2 == 3)
  {
    if ((*(a1 + 20) & 8) == 0)
    {
      goto LABEL_78;
    }
  }

  else if ((a3 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_78;
  }

  if (!v13)
  {
    *(a1 + 16) = v12[1];
  }

  v37 = v12[2];
  v38 = v8;
  if ((v37 - 64) <= 0xFFFFFF7F)
  {
    v38 = *v8;
  }

  llvm::APInt::tcAddPart(v38, 1, (v37 + 64) >> 6);
  v39 = *(*a1 + 8);
  v40 = v8;
  if ((v39 - 64) <= 0xFFFFFF7F)
  {
    v40 = *v8;
  }

  v41 = llvm::APInt::tcMSB(v40, ((v39 + 64) >> 6));
  v12 = *a1;
  if (v41 != *(*a1 + 8))
  {
    v13 = v41 + 1;
    if (v12[4] != 1 || v12[5] != 1 || *(a1 + 16) != *v12 || !llvm::detail::IEEEFloat::isSignificandAllOnes(a1))
    {
LABEL_78:
      if (v13 == v12[2])
      {
        return 16;
      }

      if (!v13)
      {
        v43 = *(a1 + 20) & 0xF8 | 3;
        *(a1 + 20) = v43;
        if (v12[5] == 2)
        {
          *(a1 + 20) = v43 & 0xF3;
        }
      }

      return 24;
    }

LABEL_22:
    v24 = a1;
    v25 = a2;
LABEL_23:

    return llvm::detail::IEEEFloat::handleOverflow(v24, v25);
  }

  v42 = *(a1 + 16);
  if (v42 == *v12)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v24 = a1;
    goto LABEL_23;
  }

  *(a1 + 16) = v42 + 1;
  if ((v41 - 64) <= 0xFFFFFF7F)
  {
    v8 = *v8;
  }

  v44 = ((v41 + 64) >> 6);
  llvm::APInt::tcLSB(v8, v44);
  llvm::APInt::tcShiftRight(v8, v44, 1u);
  return 16;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t a1, uint64_t a2, llvm::APInt *a3)
{
  *a1 = a2;
  v6 = *(a2 + 8) + 64;
  if (v6 >= 0x80)
  {
    *(a1 + 8) = operator new[]((v6 >> 3) & 0x1FFFFFF8);
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 2;
  v7 = *(a2 + 8);
  v8 = (a1 + 8);
  v9 = (a1 + 8);
  if ((v7 - 64) <= 0xFFFFFF7F)
  {
    v9 = *v8;
  }

  llvm::APInt::tcSet(v9, 0, (v7 + 64) >> 6);
  *(a1 + 16) = *(a2 + 8) - 1;
  if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
  {
    v8 = *v8;
  }

  *v8 = a3;
  llvm::detail::IEEEFloat::normalize(a1, 1, 0);
  return a1;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v4 = *(a2 + 8) + 64;
  if (v4 >= 0x80)
  {
    *(a1 + 8) = operator new[]((v4 >> 3) & 0x1FFFFFF8);
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 3;
  v5 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 4) - 1;
  v6 = (a1 + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  llvm::APInt::tcSet(v6, 0, (v5 + 64) >> 6);
  return a1;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v4 = *a2;
  *this = *a2;
  v5 = *(v4 + 8) + 64;
  if (v5 >= 0x80)
  {
    *(this + 1) = operator new[]((v5 >> 3) & 0x1FFFFFF8);
  }

  v6 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
  *(this + 20) = v6;
  v7 = *(a2 + 20);
  v8 = v7 & 7;
  *(this + 20) = v6 & 0xF8 | v7 & 7;
  *(this + 4) = *(a2 + 4);
  v10 = (v7 & 6) != 0 && v8 != 3;
  if (v8 == 1 || v10)
  {
    v12 = *(v4 + 8);
    v13 = (this + 8);
    if ((v12 - 64) <= 0xFFFFFF7F)
    {
      v13 = *v13;
    }

    v14 = *(*a2 + 8) - 64;
    v17 = *(a2 + 1);
    v16 = (a2 + 8);
    v15 = v17;
    if (v14 >= 0xFFFFFF80)
    {
      v18 = v16;
    }

    else
    {
      v18 = v15;
    }

    llvm::APInt::tcAssign(v13, v18, ((v12 + 64) >> 6));
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t result, uint64_t a2)
{
  *result = &llvm::semBogus;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v2 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v2;
  *(result + 20) = v2 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return result;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(unint64_t **a1, uint64_t a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(*a1 + 2);
  v7 = 2 * v6;
  v8 = 2 * v6 + 64;
  v9 = (v8 >> 6);
  if (v8 < 0x140)
  {
    v10 = &v54;
    v11 = a1 + 1;
    v12 = (a1 + 1);
    if (v6 - 64 > 0xFFFFFF7F)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = operator new[]((8 * v9));
  v11 = a1 + 1;
  v12 = (a1 + 1);
  if (v6 - 64 <= 0xFFFFFF7F)
  {
LABEL_5:
    v12 = *v11;
  }

LABEL_6:
  v46 = v11;
  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v13 = (a2 + 8);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  llvm::APInt::tcFullMultiply(v10, v12, v13, ((v6 + 64) >> 6), ((v6 + 64) >> 6));
  p_p = llvm::APInt::tcMSB(v10, (v8 >> 6));
  v15 = p_p + 1;
  v16 = *(a2 + 16) + *(a1 + 4) + 2;
  *(a1 + 4) = v16;
  if ((*(a3 + 20) & 7) == 3)
  {
    v17 = 0;
    *(a1 + 4) = v16 + ~v6;
    v18 = v15 - v6;
    if (v15 <= v6)
    {
      goto LABEL_54;
    }

    goto LABEL_41;
  }

  v45 = v12;
  v19 = v7 + 64;
  v20 = *a1;
  v43 = *a1;
  v44 = a1[1];
  if (v7 != v15)
  {
    llvm::APInt::tcShiftLeft(v10, v9, v7 - v15);
    *(a1 + 4) -= v7 - v15;
    v20 = *a1;
  }

  v21 = *(v20 + 2);
  v51 = *v20;
  v52 = v21;
  DWORD2(v51) = (2 * v6) | 1;
  v22 = v10;
  if (v9 == 1)
  {
    v22 = *v10;
  }

  *a1 = &v51;
  a1[1] = v22;
  *&v47[1] = *a3;
  v23 = *(*&v47[1] + 8);
  v24 = v23 + 64;
  v8 = v19;
  if ((v23 + 64) >= 0x80)
  {
    p_p = operator new[]((v24 >> 3) & 0x1FFFFFF8);
    __p = p_p;
  }

  v25 = *(a3 + 20);
  v26 = v25 & 7;
  v50 = v25 & 0xF;
  v49 = *(a3 + 16);
  v28 = (v25 & 6) != 0 && v26 != 3;
  v12 = v45;
  if (v26 == 1 || v28)
  {
    if ((v23 - 64) >= 0xFFFFFF80)
    {
      p_p = &__p;
    }

    v31 = *(a3 + 8);
    v30 = (a3 + 8);
    v29 = v31;
    if ((v23 - 64) >= 0xFFFFFF80)
    {
      v32 = v30;
    }

    else
    {
      v32 = v29;
    }

    llvm::APInt::tcAssign(p_p, v32, (v24 >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v47[1], &v51, 0, &v53);
  ++v49;
  v33 = *(*&v47[1] + 8);
  if ((v33 - 64) >= 0xFFFFFF80)
  {
    v34 = &__p;
  }

  else
  {
    v34 = __p;
  }

  v35 = ((v33 + 64) >> 6);
  llvm::APInt::tcLSB(v34, v35);
  llvm::APInt::tcShiftRight(v34, v35, 1u);
  v17 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v47[1], 0);
  if (v9 == 1)
  {
    *v10 = *v46;
  }

  *a1 = v43;
  a1[1] = v44;
  v15 = llvm::APInt::tcMSB(v10, v9) + 1;
  if ((*(*&v47[1] + 8) - 64) <= 0xFFFFFF7F && __p)
  {
    operator delete[](__p);
  }

  *(a1 + 4) += ~v6;
  v18 = v15 - v6;
  if (v15 > v6)
  {
LABEL_41:
    v36 = v15 + 63;
    v37 = ((v15 + 63) >> 6);
    v38 = llvm::APInt::tcLSB(v10, v37);
    if (v38 >= v18)
    {
      llvm::APInt::tcShiftRight(v10, (v36 >> 6), v18);
      v17 = v17 != 0;
    }

    else
    {
      v39 = v8;
      if (v38 + 1 == v18)
      {
        v40 = 2;
        v41 = 3;
      }

      else if ((v36 & 0xFFFFFFC0) >= v18 && llvm::APInt::tcExtractBit(v10, (v18 - 1)))
      {
        v41 = 3;
        v40 = 3;
      }

      else
      {
        v41 = 1;
        v40 = 1;
      }

      llvm::APInt::tcShiftRight(v10, v37, v18);
      if (v17)
      {
        v17 = v41;
      }

      else
      {
        v17 = v40;
      }

      v8 = v39;
    }

    *(a1 + 4) += v18;
  }

LABEL_54:
  llvm::APInt::tcAssign(v12, v10, ((v6 + 64) >> 6));
  if (v8 >= 0x140)
  {
    operator delete[](v10);
  }

  return v17;
}

uint64_t llvm::detail::IEEEFloat::convert(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v8 = *a1;
  if ((*(a1 + 20) & 7) == 1 && (*(v8 + 16) - 1) >= 2)
  {
    v10 = *(v8 + 8);
    v11 = (a1 + 8);
    if ((v10 - 64) <= 0xFFFFFF7F)
    {
      v11 = *v11;
    }

    v66 = llvm::APInt::tcExtractBit(v11, (v10 - 2)) == 0;
    v9 = *a1;
  }

  else
  {
    v66 = 0;
    v9 = *a1;
  }

  v12 = 0;
  v13 = *(a2 + 8);
  v14 = v13 + 64;
  v15 = *(v9 + 8);
  v16 = v15 + 64;
  v17 = ((v15 + 64) >> 6);
  v18 = v13 - *(v8 + 8);
  if (a2 == &llvm::semX87DoubleExtended || v8 != &llvm::semX87DoubleExtended)
  {
LABEL_16:
    v65 = v12;
    v20 = (v14 >> 6);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_19;
  }

  if ((*(a1 + 20) & 7) != 1)
  {
    goto LABEL_18;
  }

  if ((v15 - 64) > 0xFFFFFF7F)
  {
    v19 = *(a1 + 8);
    if (v19 < 0)
    {
      goto LABEL_14;
    }

LABEL_15:
    v12 = 1;
    goto LABEL_16;
  }

  v19 = **(a1 + 8);
  if ((v19 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  if ((v19 & 0x4000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v65 = 0;
  v20 = (v14 >> 6);
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_19:
  if ((*(a1 + 20) & 6) != 0 && (*(a1 + 20) & 7) != 3)
  {
    v21 = (a1 + 8);
    if ((v15 - 64) <= 0xFFFFFF7F)
    {
      v21 = *v21;
    }

    v22 = llvm::APInt::tcMSB(v21, (v16 >> 6));
    v23 = v22 + 1 - *(v8 + 8);
    v24 = *(a1 + 16);
    v25 = *(a2 + 4);
    if ((v24 + v23) < v25)
    {
      v23 = v25 - v24;
    }

    if ((v23 & 0x80000000) != 0)
    {
      if (v23 <= v18)
      {
        v27 = v18;
      }

      else
      {
        v27 = v23;
      }

      v18 -= v27;
      *(a1 + 16) = v27 + v24;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v22 + 1 <= -v18)
    {
      v26 = v22 + v18;
      v18 = -v22;
      *(a1 + 16) = v26 + v24;
      if ((-v22 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  v28 = *(a1 + 20) & 7;
  if ((*(a1 + 20) & 6) != 0 && v28 != 3)
  {
    v29 = *a1;
    goto LABEL_36;
  }

  if (v28 != 1 || (v29 = *a1, *(*a1 + 16) == 1))
  {
LABEL_43:
    v33 = 0;
    if (v20 <= v17)
    {
      goto LABEL_64;
    }

LABEL_44:
    v34 = a4;
    v35 = v33;
    v36 = a3;
    v37 = operator new[]((8 * v20));
    llvm::APInt::tcSet(v37, 0, v20);
    v38 = *(a1 + 20) & 7;
    v40 = (*(a1 + 20) & 6) != 0 && v38 != 3;
    if (v38 == 1 || v40)
    {
      v41 = (a1 + 8);
      if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
      {
        v41 = *v41;
      }

      llvm::APInt::tcAssign(v37, v41, v17);
    }

    if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
    {
      v42 = *(a1 + 8);
      if (v42)
      {
        operator delete[](v42);
      }
    }

    *(a1 + 8) = v37;
    a3 = v36;
    v33 = v35;
    a4 = v34;
    goto LABEL_84;
  }

LABEL_36:
  v63 = a3;
  v30 = (a1 + 8);
  v64 = a4;
  if ((*(v29 + 8) - 64) <= 0xFFFFFF7F)
  {
    v30 = *v30;
  }

  v31 = -v18;
  v32 = llvm::APInt::tcLSB(v30, (v16 >> 6));
  v33 = 0;
  if (v32 < -v18)
  {
    if (v32 + 1 == v31)
    {
      v33 = 2;
    }

    else if ((v16 & 0xFFFFFFC0) >= v31 && llvm::APInt::tcExtractBit(v30, ~v18))
    {
      v33 = 3;
    }

    else
    {
      v33 = 1;
    }
  }

  llvm::APInt::tcShiftRight(v30, (v16 >> 6), -v18);
  a4 = v64;
  a3 = v63;
  if (v20 > v17)
  {
    goto LABEL_44;
  }

LABEL_64:
  if (v20 == 1 && v17 != 1)
  {
    v44 = *(a1 + 20) & 7;
    v46 = (*(a1 + 20) & 6) != 0 && v44 != 3;
    v47 = *(*a1 + 8) - 64;
    if (v44 == 1 || v46)
    {
      v50 = (a1 + 8);
      v48 = a4;
      if (v47 <= 0xFFFFFF7F)
      {
        v50 = *v50;
      }

      v49 = *v50;
      if (v47 > 0xFFFFFF7F)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v48 = a4;
      v49 = 0;
      if (v47 > 0xFFFFFF7F)
      {
LABEL_83:
        *(a1 + 8) = v49;
        a4 = v48;
        goto LABEL_84;
      }
    }

    v51 = *(a1 + 8);
    if (v51)
    {
      operator delete[](v51);
    }

    goto LABEL_83;
  }

LABEL_84:
  *a1 = a2;
  v52 = *(a1 + 20);
  if (v18 >= 1)
  {
    v53 = v52 & 7;
    v54 = (v52 & 6) == 0 || v53 == 3;
    v55 = !v54;
    if (v53 == 1 || v55)
    {
      v56 = (a1 + 8);
      if ((*(a2 + 8) - 64) <= 0xFFFFFF7F)
      {
        v56 = *v56;
      }

      llvm::APInt::tcShiftLeft(v56, v20, v18);
      v52 = *(a1 + 20);
    }
  }

  v57 = v52 & 7;
  if ((v52 & 6) != 0 && v57 != 3)
  {
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v33);
    *a4 = result != 0;
    return result;
  }

  if ((v52 & 7) == 0)
  {
    if (*(*a1 + 16) == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v52 >> 3) & 1, 0);
      *a4 = 1;
      return 16;
    }

    goto LABEL_111;
  }

  if (v57 == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      v59 = (*(v8 + 20) != 2) & (v52 >> 3);
      *a4 = v59;
      if (v59)
      {
        result = 16;
      }

      else
      {
        result = 0;
      }

      *(a1 + 20) &= ~8u;
      return result;
    }

LABEL_111:
    result = 0;
    *a4 = 0;
    return result;
  }

  if (v57 != 1)
  {
    goto LABEL_111;
  }

  if (*(*a1 + 16) == 1)
  {
    *a4 = *(v8 + 16) != 1;
    llvm::detail::IEEEFloat::makeNaN(a1, 0, (*(a1 + 20) >> 3) & 1, 0);
    return v66;
  }

  else
  {
    if (*(v8 + 20) == 2 && *(*a1 + 20) != 2)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, 0, 0);
    }

    if (v33)
    {
      v60 = 1;
    }

    else
    {
      v60 = v65;
    }

    *a4 = v60;
    if ((v65 & 1) == 0 && *a1 == &llvm::semX87DoubleExtended)
    {
      llvm::APInt::tcSetBit(*(a1 + 8), 0x3F);
    }

    if (v66)
    {
      if (*(*a1 + 16) == 1)
      {
        return 1;
      }

      else
      {
        v61 = *(*a1 + 8);
        v62 = (a1 + 8);
        if ((v61 - 64) <= 0xFFFFFF7F)
        {
          v62 = *v62;
        }

        llvm::APInt::tcSetBit(v62, (v61 - 2));
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, int a3)
{
  v4 = this;
  v6 = (this + 16);
  v5 = *(this + 4);
  v7 = *(a2 + 20);
  v8 = *(a2 + 4);
  v9 = v5 - v8;
  if ((((((v7 ^ *(this + 20)) & 8) == 0) ^ a3) & 1) == 0)
  {
    v22 = *a2;
    v88 = *a2;
    v23 = *(*a2 + 8) + 64;
    if (v23 >= 0x80)
    {
      this = operator new[]((v23 >> 3) & 0x1FFFFFF8);
      __p = this;
    }

    v24 = v7 & 7;
    v91 = v7 & 0xF;
    v90 = v8;
    v26 = (v7 & 6) != 0 && v24 != 3;
    if (v24 == 1 || v26)
    {
      v28 = *(v22 + 8);
      if ((v28 - 64) >= 0xFFFFFF80)
      {
        this = &__p;
      }

      v31 = *(a2 + 1);
      v30 = (a2 + 8);
      v29 = v31;
      if ((v28 - 64) >= 0xFFFFFF80)
      {
        v32 = v30;
      }

      else
      {
        v32 = v29;
      }

      llvm::APInt::tcAssign(this, v32, ((v28 + 64) >> 6));
    }

    if (v5 == v8)
    {
      v33 = 0;
      v34 = *v6 - v90;
      if (*v6 != v90)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v40 = v9 - 1;
      if (v9 < 1)
      {
        v54 = ~v9;
        *(v4 + 4) += ~v9;
        v55 = *(*v4 + 8);
        v56 = (v4 + 8);
        if ((v55 - 64) <= 0xFFFFFF7F)
        {
          v56 = *v56;
        }

        v57 = &v90;
        v58 = v55 + 64;
        v59 = ((v55 + 64) >> 6);
        v60 = llvm::APInt::tcLSB(v56, v59);
        if (v60 >= v54)
        {
          v33 = 0;
        }

        else if (-2 - v60 == v9)
        {
          v33 = 2;
        }

        else if ((v58 & 0xFFFFFFC0) >= v54 && llvm::APInt::tcExtractBit(v56, (-2 - v9)))
        {
          v33 = 3;
        }

        else
        {
          v33 = 1;
        }

        llvm::APInt::tcShiftRight(v56, v59, ~v9);
        v73 = *(v88 + 8);
        if ((v73 - 64) >= 0xFFFFFF80)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        llvm::APInt::tcShiftLeft(p_p, ((v73 + 64) >> 6), 1u);
      }

      else
      {
        v90 += v40;
        v41 = *(v88 + 8);
        if ((v41 - 64) >= 0xFFFFFF80)
        {
          v42 = &__p;
        }

        else
        {
          v42 = __p;
        }

        v43 = v41 + 64;
        v44 = ((v41 + 64) >> 6);
        v45 = llvm::APInt::tcLSB(v42, v44);
        if (v45 >= v40)
        {
          v33 = 0;
        }

        else
        {
          v46 = (v9 - 2);
          if (v45 == v46)
          {
            v33 = 2;
          }

          else if ((v43 & 0xFFFFFFC0) >= v40 && llvm::APInt::tcExtractBit(v42, v46))
          {
            v33 = 3;
          }

          else
          {
            v33 = 1;
          }
        }

        llvm::APInt::tcShiftRight(v42, v44, v9 - 1);
        v71 = (v4 + 8);
        v72 = *(*v4 + 8);
        if ((v72 - 64) <= 0xFFFFFF7F)
        {
          v71 = *v71;
        }

        llvm::APInt::tcShiftLeft(v71, ((v72 + 64) >> 6), 1u);
        v57 = v6;
      }

      --*v57;
      v34 = *v6 - v90;
      if (*v6 != v90)
      {
LABEL_45:
        v35 = v33 != 0;
        if ((v34 & 0x80000000) == 0)
        {
LABEL_46:
          v37 = *v4;
          v36 = (v4 + 8);
          v38 = *(v37 + 8);
          if ((v38 - 64) <= 0xFFFFFF7F)
          {
            v36 = *v36;
          }

          if ((*(v88 + 8) - 64) >= 0xFFFFFF80)
          {
            v39 = &__p;
          }

          else
          {
            v39 = __p;
          }

          llvm::APInt::tcSubtract(v36, v39, v35, (v38 + 64) >> 6);
          goto LABEL_128;
        }

LABEL_116:
        v79 = *(v88 + 8);
        if ((v79 - 64) >= 0xFFFFFF80)
        {
          v80 = &__p;
        }

        else
        {
          v80 = __p;
        }

        v81 = (v4 + 8);
        if ((*(*v4 + 8) - 64) >= 0xFFFFFF80)
        {
          v82 = (v4 + 8);
        }

        else
        {
          v82 = *(v4 + 1);
        }

        llvm::APInt::tcSubtract(v80, v82, v35, (v79 + 64) >> 6);
        v83 = *(*v4 + 8);
        if ((v83 - 64) <= 0xFFFFFF7F)
        {
          v81 = *v81;
        }

        if ((*(v88 + 8) - 64) >= 0xFFFFFF80)
        {
          v84 = &__p;
        }

        else
        {
          v84 = __p;
        }

        llvm::APInt::tcAssign(v81, v84, ((v83 + 64) >> 6));
        *(v4 + 20) ^= 8u;
LABEL_128:
        if (v33 == 3)
        {
          v85 = 1;
        }

        else
        {
          v85 = v33;
        }

        if (v33 == 1)
        {
          v21 = 3;
        }

        else
        {
          v21 = v85;
        }

        if ((*(v88 + 8) - 64) > 0xFFFFFF7F)
        {
          return v21;
        }

        goto LABEL_135;
      }
    }

    v75 = (v4 + 8);
    v76 = *(*v4 + 8);
    if ((v76 - 64) <= 0xFFFFFF7F)
    {
      v75 = *v75;
    }

    if ((*(v88 + 8) - 64) >= 0xFFFFFF80)
    {
      v77 = &__p;
    }

    else
    {
      v77 = __p;
    }

    v78 = llvm::APInt::tcCompare(v75, v77, ((v76 + 64) >> 6));
    v35 = v33 != 0;
    if ((v78 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_116;
  }

  if (v9 >= 1)
  {
    v87 = *a2;
    v10 = *(*a2 + 8);
    v11 = v10 + 64;
    if ((v10 + 64) >= 0x80)
    {
      this = operator new[]((v11 >> 3) & 0x1FFFFFF8);
      __p = this;
    }

    v12 = v7 & 7;
    v91 = v7 & 0xF;
    v90 = v8;
    v14 = (v7 & 6) != 0 && v12 != 3;
    if (v12 == 1 || v14)
    {
      if ((v10 - 64) >= 0xFFFFFF80)
      {
        this = &__p;
      }

      v17 = *(a2 + 1);
      v16 = (a2 + 8);
      v15 = v17;
      if ((v10 - 64) >= 0xFFFFFF80)
      {
        v18 = v16;
      }

      else
      {
        v18 = v15;
      }

      llvm::APInt::tcAssign(this, v18, (v11 >> 6));
      v8 = v90;
      this = __p;
      v10 = *(v87 + 8);
      v11 = v10 + 64;
    }

    v90 = v8 + v9;
    if ((v10 - 64) >= 0xFFFFFF80)
    {
      v19 = &__p;
    }

    else
    {
      v19 = this;
    }

    v20 = llvm::APInt::tcLSB(v19, (v11 >> 6));
    if (v20 >= v9)
    {
      v21 = 0;
    }

    else if (v20 + 1 == v9)
    {
      v21 = 2;
    }

    else if ((v11 & 0xFFFFFFC0) >= v9 && llvm::APInt::tcExtractBit(v19, (v9 - 1)))
    {
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }

    llvm::APInt::tcShiftRight(v19, (v11 >> 6), v9);
    v62 = *v4;
    v61 = (v4 + 8);
    v63 = *(v62 + 8);
    if ((v63 - 64) <= 0xFFFFFF7F)
    {
      v61 = *v61;
    }

    if ((*(v87 + 8) - 64) >= 0xFFFFFF80)
    {
      v64 = &__p;
    }

    else
    {
      v64 = __p;
    }

    llvm::APInt::tcAdd(v61, v64, 0, (v63 + 64) >> 6);
    if ((*(v87 + 8) - 64) > 0xFFFFFF7F)
    {
      return v21;
    }

LABEL_135:
    if (__p)
    {
      operator delete[](__p);
    }

    return v21;
  }

  v47 = v8 - v5;
  *(this + 4) = v8;
  v48 = *(*this + 8);
  v49 = (this + 8);
  v50 = (this + 8);
  if ((v48 - 64) <= 0xFFFFFF7F)
  {
    v50 = *v49;
  }

  v51 = v48 + 64;
  v52 = ((v48 + 64) >> 6);
  v53 = llvm::APInt::tcLSB(v50, v52);
  if (v53 >= v47)
  {
    v21 = 0;
  }

  else if (v53 + 1 == v47)
  {
    v21 = 2;
  }

  else if ((v51 & 0xFFFFFFC0) >= v47 && llvm::APInt::tcExtractBit(v50, ~v9))
  {
    v21 = 3;
  }

  else
  {
    v21 = 1;
  }

  llvm::APInt::tcShiftRight(v50, v52, -v9);
  v65 = *(*v4 + 8);
  if ((v65 - 64) <= 0xFFFFFF7F)
  {
    v49 = *v49;
  }

  v66 = *(*a2 + 8) - 64;
  v69 = *(a2 + 1);
  v68 = (a2 + 8);
  v67 = v69;
  if (v66 >= 0xFFFFFF80)
  {
    v70 = v68;
  }

  else
  {
    v70 = v67;
  }

  llvm::APInt::tcAdd(v49, v70, 0, (v65 + 64) >> 6);
  return v21;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(unint64_t **this, const llvm::detail::IEEEFloat *a2)
{
  v3 = this;
  v4 = *this;
  v9 = v4;
  v5 = *(v4 + 2);
  v6 = v5 + 64;
  if ((v5 + 64) >= 0x80)
  {
    this = operator new[]((v6 >> 3) & 0x1FFFFFF8);
    __p = this;
  }

  v12 = 3;
  v11 = *(v4 + 1) - 1;
  if ((v5 - 64) >= 0xFFFFFF80)
  {
    this = &__p;
  }

  llvm::APInt::tcSet(this, 0, v6 >> 6);
  result = llvm::detail::IEEEFloat::multiplySignificand(v3, a2, &v9);
  if ((*(v9 + 2) - 64) <= 0xFFFFFF7F)
  {
    if (__p)
    {
      v8 = result;
      operator delete[](__p);
      return v8;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::divideSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v4 = this + 8;
  LODWORD(v5) = *(*this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v6 = a2 + 8;
  }

  else
  {
    v6 = *(a2 + 1);
  }

  v7 = v5 + 64;
  v8 = (v5 + 64) >> 6;
  if ((v5 + 64) < 0xC0)
  {
    v9 = v38;
    v10 = &v38[v8];
    if (v5 > 0xFFFFFFBF)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v9 = operator new[]((16 * v8));
    v10 = (v9 + 8 * v8);
  }

  if (v8 >= 0x14)
  {
    v11 = 0;
    v12 = (v9 + 8 * v8);
    v13 = (v10 + 8 * v8);
    v14 = &v4[8 * v8];
    v15 = &v6[8 * v8];
    v17 = v9 < v14 && v4 < v12;
    v19 = v9 < v15 && v6 < v12;
    v21 = v10 < v14 && v4 < v13;
    v23 = v10 < v15 && v6 < v13;
    v25 = v4 < v15 && v6 < v14;
    v26 = v10 >= v12 || v9 >= v13;
    if (v26 && !v17 && !v19 && !v21 && !v23 && !v25)
    {
      v27 = 0;
      v11 = v8 & 0x3FFFFFC;
      v28 = (v4 + 16);
      do
      {
        v29 = *v28;
        v30 = (v9 + v27);
        *v30 = *(v28 - 1);
        v30[1] = v29;
        v31 = *&v6[v27 + 16];
        v32 = (v10 + v27);
        *v32 = *&v6[v27];
        v32[1] = v31;
        *(v28 - 1) = 0uLL;
        *v28 = 0uLL;
        v28 += 2;
        v27 += 32;
      }

      while (((8 * v8) & 0x1FFFFFE0) != v27);
      goto LABEL_55;
    }
  }

  else
  {
    v11 = 0;
  }

  do
  {
    *(v9 + v11) = *&v4[8 * v11];
    *(v10 + v11) = *&v6[8 * v11];
    *&v4[8 * v11++] = 0;
LABEL_55:
    ;
  }

  while (v8 != v11);
LABEL_56:
  *(this + 4) -= *(a2 + 4);
  v33 = v5 + ~llvm::APInt::tcMSB(v10, (v7 >> 6));
  if (v33)
  {
    *(this + 4) += v33;
    llvm::APInt::tcShiftLeft(v10, (v7 >> 6), v33);
  }

  v34 = v5 + ~llvm::APInt::tcMSB(v9, (v7 >> 6));
  if (v34)
  {
    *(this + 4) -= v34;
    llvm::APInt::tcShiftLeft(v9, (v7 >> 6), v34);
  }

  if ((llvm::APInt::tcCompare(v9, v10, (v7 >> 6)) & 0x80000000) != 0)
  {
    --*(this + 4);
    llvm::APInt::tcShiftLeft(v9, (v7 >> 6), 1u);
  }

  while (v5)
  {
    while ((llvm::APInt::tcCompare(v9, v10, (v7 >> 6)) & 0x80000000) == 0)
    {
      llvm::APInt::tcSubtract(v9, v10, 0, v7 >> 6);
      v5 = (v5 - 1);
      llvm::APInt::tcSetBit(v4, v5);
      llvm::APInt::tcShiftLeft(v9, (v7 >> 6), 1u);
      if (!v5)
      {
        goto LABEL_67;
      }
    }

    LODWORD(v5) = v5 - 1;
    llvm::APInt::tcShiftLeft(v9, (v7 >> 6), 1u);
  }

LABEL_67:
  v35 = llvm::APInt::tcCompare(v9, v10, (v7 >> 6));
  if (v35 > 0)
  {
    v36 = 3;
    if (v7 < 0xC0)
    {
      return v36;
    }

    goto LABEL_72;
  }

  if (!v35)
  {
    v36 = 2;
    if (v7 < 0xC0)
    {
      return v36;
    }

    goto LABEL_72;
  }

  v36 = !llvm::APInt::tcIsZero(v9, (v7 >> 6));
  if (v7 >= 0xC0)
  {
LABEL_72:
    operator delete[](v9);
  }

  return v36;
}

uint64_t llvm::detail::IEEEFloat::handleOverflow(_BYTE *a1, int a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3 != 2)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if ((a1[20] & 8) == 0)
        {
          goto LABEL_2;
        }
      }

      else if (a2 != 4)
      {
        goto LABEL_2;
      }
    }

    else if (a2 != 1 && (a2 != 2 || (a1[20] & 8) != 0))
    {
      goto LABEL_2;
    }

    v13 = a1[20];
    if (v3 == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v13 >> 3) & 1, 0);
    }

    else
    {
      a1[20] = v13 & 0xF8;
    }

    return 20;
  }

LABEL_2:
  a1[20] = a1[20] & 0xF8 | 2;
  *(a1 + 4) = *v2;
  v4 = v2[2];
  v5 = v4 - 64;
  v6 = a1 + 8;
  v7 = a1 + 8;
  if (v4 - 64 <= 0xFFFFFF7F)
  {
    v7 = *v6;
  }

  v8 = v4 + 64;
  v9 = v4 - 65;
  if (v4 >= 0x41)
  {
    memset(v7, 255, 8 * (v9 >> 6) + 8);
    v10 = (v9 >> 6) + 1;
    v4 = v5 - (v9 & 0xFFFFFFC0);
    v11 = v8 >> 6;
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = 0;
  v11 = v8 >> 6;
  if (v4)
  {
LABEL_13:
    v7[v10++] = 0xFFFFFFFFFFFFFFFFLL >> -v4;
  }

LABEL_14:
  if (v10 < v11)
  {
    bzero(&v7[v10], 8 * (v11 + ~v10) + 8);
  }

  if (v2[4] == 1 && v2[5] == 1)
  {
    if (v5 <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    llvm::APInt::tcClearBit(v6, 0);
  }

  return 16;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, int a3)
{
  v3 = *(this + 20);
  v4 = *(a2 + 20);
  v5 = 4 * (v3 & 7) + (v4 & 7);
  if (v5 > 7)
  {
    if (v5 > 11)
    {
      if (v5 > 13)
      {
        if (v5 != 14)
        {
          return 0;
        }

        v22 = v4 & 8 | v3 & 0xF7;
        *(this + 20) = v22;
        v23 = *(a2 + 20);
        v24 = v23 & 7;
        v25 = v22 & 0xF8 | v23 & 7;
        *(this + 20) = v25;
        *(this + 4) = *(a2 + 4);
        v27 = (v23 & 6) != 0 && v24 != 3;
        if (v24 == 1 || v27)
        {
          v28 = (this + 8);
          v29 = *(*this + 8);
          v30 = a3;
          v31 = this;
          if ((v29 - 64) <= 0xFFFFFF7F)
          {
            v28 = *v28;
          }

          if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
          {
            v32 = (a2 + 8);
          }

          else
          {
            v32 = *(a2 + 1);
          }

          v33 = a2;
          llvm::APInt::tcAssign(v28, v32, ((v29 + 64) >> 6));
          a2 = v33;
          this = v31;
          v25 = *(v31 + 20);
          a3 = v30;
        }

        if (a3 != (*(a2 + 20) & 8) >> 3)
        {
          v19 = 8;
        }

        else
        {
          v19 = 0;
        }

        v20 = v25 & 0xF7;
LABEL_57:
        *(this + 20) = v19 | v20;
        return 0;
      }

      if (v5 != 12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v5 > 9)
      {
        if (v5 == 10)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      if (v5 != 8)
      {
LABEL_10:
        v6 = v4 & 8 | v3 & 0xF7;
        *(this + 20) = v6;
        v7 = *(a2 + 20);
        v8 = v7 & 7;
        v3 = v6 & 0xF8 | v7 & 7;
        *(this + 20) = v3;
        *(this + 4) = *(a2 + 4);
        v10 = (v7 & 6) != 0 && v8 != 3;
        if (v8 == 1 || v10)
        {
          v34 = (this + 8);
          v35 = *(*this + 8);
          v36 = this;
          if ((v35 - 64) <= 0xFFFFFF7F)
          {
            v34 = *v34;
          }

          if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
          {
            v37 = (a2 + 8);
          }

          else
          {
            v37 = *(a2 + 1);
          }

          v38 = a2;
          llvm::APInt::tcAssign(v34, v37, ((v35 + 64) >> 6));
          a2 = v38;
          this = v36;
          if ((*(v36 + 20) & 7) != 1)
          {
            goto LABEL_65;
          }

LABEL_19:
          if ((*(*this + 16) - 1) >= 2)
          {
            v11 = a2;
            v12 = *(*this + 8);
            v13 = this;
            v14 = (this + 8);
            v15 = (this + 8);
            if ((v12 - 64) <= 0xFFFFFF7F)
            {
              v15 = *v14;
            }

            Bit = llvm::APInt::tcExtractBit(v15, (v12 - 2));
            a2 = v11;
            if (!Bit)
            {
              if (*(*v13 + 16) != 1)
              {
                v17 = *(*v13 + 8);
                if ((v17 - 64) <= 0xFFFFFF7F)
                {
                  v14 = *v14;
                }

                llvm::APInt::tcSetBit(v14, (v17 - 2));
              }

              return 1;
            }
          }

LABEL_65:
          if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
          {
            return 0;
          }

          v39 = *(*a2 + 8);
          v42 = *(a2 + 1);
          v40 = (a2 + 8);
          v41 = v42;
          if ((v39 - 64) >= 0xFFFFFF80)
          {
            v43 = v40;
          }

          else
          {
            v43 = v41;
          }

          return llvm::APInt::tcExtractBit(v43, (v39 - 2)) == 0;
        }

LABEL_18:
        if ((v3 & 7) != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_19;
      }
    }

    *(this + 20) = v3 & 0xF8;
    if (a3 != (*(a2 + 20) & 8) >> 3)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = v3 & 0xF0;
    goto LABEL_57;
  }

  if (v5 > 3)
  {
    goto LABEL_18;
  }

  if ((v5 - 2) < 2)
  {
    return 0;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (((((v4 ^ v3) & 8) == 0) ^ a3))
  {
    return 0;
  }

  llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
  return 1;
}

BOOL llvm::detail::IEEEFloat::multiplySpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20);
  v3 = *(a2 + 20);
  v4 = 4 * (v2 & 7) + (v3 & 7);
  if (v4 <= 7)
  {
    if (v4 <= 2)
    {
      if (v4)
      {
        v5 = v4 == 1;
      }

      else
      {
        v5 = 0;
      }

      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    if ((v4 - 4) < 4)
    {
      *(this + 20) = v3 & 8 ^ v2;
      if ((v2 & 7) != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

LABEL_18:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  if (v4 > 11)
  {
    if ((v4 - 14) >= 2)
    {
      if (v4 != 12)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_47:
    *(this + 20) = v2 & 0xF8 | 3;
    return 0;
  }

  if (v4 > 9)
  {
    if (v4 == 10)
    {
      return 0;
    }

    goto LABEL_47;
  }

  if (v4 == 8)
  {
LABEL_12:
    *(this + 20) = v2 & 0xF8;
    return 0;
  }

LABEL_20:
  v7 = v3 & 8 | v2 & 0xF7;
  *(this + 20) = v7;
  v8 = *(a2 + 20);
  v9 = v8 & 7;
  v10 = v7 & 0xF8 | v8 & 7;
  *(this + 20) = v10;
  *(this + 4) = *(a2 + 4);
  v12 = (v8 & 6) != 0 && v9 != 3;
  if (v9 == 1 || v12)
  {
    v13 = (this + 8);
    v14 = *(*this + 8);
    v15 = this;
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v13 = *v13;
    }

    if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
    {
      v16 = (a2 + 8);
    }

    else
    {
      v16 = *(a2 + 1);
    }

    v17 = a2;
    llvm::APInt::tcAssign(v13, v16, ((v14 + 64) >> 6));
    a2 = v17;
    this = v15;
    v10 = *(v15 + 20);
  }

  *(this + 20) = v10 & 0xF7;
  *(this + 20) = *(a2 + 20) & 8 ^ v10 & 0xF7;
  if ((v10 & 7) != 1)
  {
LABEL_39:
    if ((*(a2 + 20) & 7) == 1 && (*(*a2 + 16) - 1) >= 2)
    {
      v24 = *(*a2 + 8);
      v27 = *(a2 + 1);
      v25 = (a2 + 8);
      v26 = v27;
      if ((v24 - 64) >= 0xFFFFFF80)
      {
        v28 = v25;
      }

      else
      {
        v28 = v26;
      }

      return llvm::APInt::tcExtractBit(v28, (v24 - 2)) == 0;
    }

    return 0;
  }

LABEL_35:
  if ((*(*this + 16) - 1) < 2)
  {
    goto LABEL_39;
  }

  v18 = a2;
  v19 = *(*this + 8);
  v20 = this;
  v21 = (this + 8);
  v22 = (this + 8);
  if ((v19 - 64) <= 0xFFFFFF7F)
  {
    v22 = *v21;
  }

  Bit = llvm::APInt::tcExtractBit(v22, (v19 - 2));
  a2 = v18;
  if (Bit)
  {
    goto LABEL_39;
  }

  if (*(*v20 + 16) == 1)
  {
    return 1;
  }

  v29 = *(*v20 + 8);
  if ((v29 - 64) <= 0xFFFFFF7F)
  {
    v21 = *v21;
  }

  llvm::APInt::tcSetBit(v21, (v29 - 2));
  return 1;
}

uint64_t llvm::detail::IEEEFloat::divideSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20);
  v3 = *(a2 + 20);
  v4 = 4 * (v2 & 7) + (v3 & 7);
  if (v4 <= 7)
  {
    if (v4 > 3)
    {
      goto LABEL_27;
    }

    if ((v4 - 2) >= 2)
    {
      if (!v4)
      {
        goto LABEL_41;
      }

      goto LABEL_12;
    }

    return 0;
  }

  if (v4 > 11)
  {
    if (v4 > 13)
    {
      if (v4 != 14)
      {
LABEL_41:
        llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
        return 1;
      }

      return 0;
    }

    if (v4 == 12)
    {
      return 0;
    }
  }

  else
  {
    if (v4 > 9)
    {
      if (v4 != 10)
      {
        if (*(*this + 16) == 1)
        {
          llvm::detail::IEEEFloat::makeNaN(this, 0, (v2 >> 3) & 1, 0);
        }

        else
        {
          *(this + 20) = v2 & 0xF8;
        }

        return 2;
      }

      return 0;
    }

    if (v4 == 8)
    {
      *(this + 20) = v2 & 0xF8 | 3;
      return 0;
    }
  }

LABEL_12:
  v6 = v3 & 8 | v2 & 0xF7;
  *(this + 20) = v6;
  v7 = *(a2 + 20);
  v8 = v7 & 7;
  v9 = v6 & 0xF8 | v7 & 7;
  *(this + 20) = v9;
  *(this + 4) = *(a2 + 4);
  v11 = (v7 & 6) != 0 && v8 != 3;
  if (v8 == 1 || v11)
  {
    v12 = (this + 8);
    v13 = *(*this + 8);
    v14 = this;
    if ((v13 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v12;
    }

    if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
    {
      v15 = (a2 + 8);
    }

    else
    {
      v15 = *(a2 + 1);
    }

    v16 = a2;
    llvm::APInt::tcAssign(v12, v15, ((v13 + 64) >> 6));
    a2 = v16;
    this = v14;
    v9 = *(v14 + 20);
  }

  LOBYTE(v2) = v9 & 0xF7;
  *(this + 20) = v9 & 0xF7;
  v3 = *(a2 + 20);
LABEL_27:
  *(this + 20) = v3 & 8 ^ v2;
  if ((v2 & 7) != 1 || (*(*this + 16) - 1) < 2)
  {
    goto LABEL_33;
  }

  v17 = a2;
  v18 = *(*this + 8);
  v19 = this;
  v20 = (this + 8);
  v21 = (this + 8);
  if ((v18 - 64) <= 0xFFFFFF7F)
  {
    v21 = *v20;
  }

  Bit = llvm::APInt::tcExtractBit(v21, (v18 - 2));
  a2 = v17;
  if (!Bit)
  {
    if (*(*v19 + 16) == 1)
    {
      return 1;
    }

    v28 = *(*v19 + 8);
    if ((v28 - 64) <= 0xFFFFFF7F)
    {
      v20 = *v20;
    }

    llvm::APInt::tcSetBit(v20, (v28 - 2));
    return 1;
  }

  else
  {
LABEL_33:
    if ((*(a2 + 20) & 7) == 1 && (*(*a2 + 16) - 1) >= 2)
    {
      v23 = *(*a2 + 8);
      v26 = *(a2 + 1);
      v24 = (a2 + 8);
      v25 = v26;
      if ((v23 - 64) >= 0xFFFFFF80)
      {
        v27 = v24;
      }

      else
      {
        v27 = v25;
      }

      return llvm::APInt::tcExtractBit(v27, (v23 - 2)) == 0;
    }

    else
    {
      return 0;
    }
  }
}

BOOL llvm::detail::IEEEFloat::modSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20);
  v3 = *(a2 + 20);
  v4 = 4 * (v2 & 7) + (v3 & 7);
  if (v4 <= 7)
  {
    if (v4 > 3)
    {
      goto LABEL_21;
    }

    if ((v4 - 2) >= 2 && v4 != 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  v7 = 1 << v4;
  if ((v7 & 0x5500) != 0)
  {
    return 0;
  }

  if ((v7 & 0x2200) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v8 = v3 & 8 | v2 & 0xF7;
  *(this + 20) = v8;
  v9 = *(a2 + 20);
  v10 = v9 & 7;
  v2 = v8 & 0xF8 | v9 & 7;
  *(this + 20) = v2;
  *(this + 4) = *(a2 + 4);
  v12 = (v9 & 6) != 0 && v10 != 3;
  if (v10 != 1 && !v12)
  {
LABEL_21:
    if ((v2 & 7) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  v20 = (this + 8);
  v21 = *(*this + 8);
  v22 = this;
  if ((v21 - 64) <= 0xFFFFFF7F)
  {
    v20 = *v20;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v23 = (a2 + 8);
  }

  else
  {
    v23 = *(a2 + 1);
  }

  v24 = a2;
  llvm::APInt::tcAssign(v20, v23, ((v21 + 64) >> 6));
  a2 = v24;
  this = v22;
  if ((*(v22 + 20) & 7) != 1)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((*(*this + 16) - 1) >= 2)
  {
    v13 = a2;
    v14 = *(*this + 8);
    v15 = this;
    v16 = (this + 8);
    v17 = (this + 8);
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v17 = *v16;
    }

    Bit = llvm::APInt::tcExtractBit(v17, (v14 - 2));
    a2 = v13;
    if (!Bit)
    {
      if (*(*v15 + 16) != 1)
      {
        v19 = *(*v15 + 8);
        if ((v19 - 64) <= 0xFFFFFF7F)
        {
          v16 = *v16;
        }

        llvm::APInt::tcSetBit(v16, (v19 - 2));
        return 1;
      }

      return 1;
    }
  }

LABEL_36:
  if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
  {
    return 0;
  }

  v25 = *(*a2 + 8);
  v28 = *(a2 + 1);
  v26 = (a2 + 8);
  v27 = v28;
  if ((v25 - 64) >= 0xFFFFFF80)
  {
    v29 = v26;
  }

  else
  {
    v29 = v27;
  }

  return llvm::APInt::tcExtractBit(v29, (v25 - 2)) == 0;
}

_BYTE *llvm::detail::IEEEFloat::changeSign(_BYTE *this)
{
  v1 = this[20];
  if (*(*this + 20) != 2 || (v1 & 5 | 2) != 3)
  {
    this[20] = v1 ^ 8;
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::add(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, 0);
  if (result == 2)
  {
    v7 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, 0);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v7);
  }

  v8 = a1[20];
  if ((v8 & 7) == 3)
  {
    v9 = a2[20];
    if ((v9 & 7) != 3 || ((v9 ^ v8) & 8) != 0)
    {
      LOBYTE(v8) = v8 & 0xF3 | (8 * (a3 == 3));
      a1[20] = v8;
    }

    if (*(*a1 + 20) == 2)
    {
      a1[20] = v8 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::subtract(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, 1);
  if (result == 2)
  {
    v7 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, 1);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v7);
  }

  v8 = a1[20];
  if ((v8 & 7) == 3)
  {
    v9 = a2[20];
    if ((v9 & 7) != 3 || ((v9 ^ v8) & 8) == 0)
    {
      LOBYTE(v8) = v8 & 0xF3 | (8 * (a3 == 3));
      a1[20] = v8;
    }

    if (*(*a1 + 20) == 2)
    {
      a1[20] = v8 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::multiply(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::multiplySpecials(a1, a2);
  v7 = *(a1 + 20);
  if ((v7 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v7 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v8 = llvm::detail::IEEEFloat::multiplySignificand(a1, a2);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v8);
    if (v8)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::divide(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::divideSpecials(a1, a2);
  v7 = *(a1 + 20);
  if ((v7 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v7 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v8 = llvm::detail::IEEEFloat::divideSignificand(a1, a2);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v8);
    if (v8)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::mod(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  result = llvm::detail::IEEEFloat::modSpecials(this, a2);
  v6 = *(this + 20);
  v7 = (v6 & 6) == 0 || (v6 & 7) == 3;
  if (v7 || (*(a2 + 20) & 6) == 0 || (*(a2 + 20) & 7) == 3)
  {
    LOBYTE(v8) = *(this + 20);
    goto LABEL_7;
  }

  v11 = (this + 8);
  v12 = (a2 + 8);
  while (1)
  {
    v13 = *(this + 4) - *(a2 + 4);
    if (!v13)
    {
      v14 = result;
      v15 = *(*this + 8);
      v16 = (this + 8);
      if ((v15 - 64) <= 0xFFFFFF7F)
      {
        v16 = *v11;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v17 = (a2 + 8);
      }

      else
      {
        v17 = *(a2 + 1);
      }

      v13 = llvm::APInt::tcCompare(v16, v17, ((v15 + 64) >> 6));
      result = v14;
    }

    if (v13 < 0)
    {
      break;
    }

    v18 = llvm::detail::ilogb(this, v5);
    v20 = llvm::detail::ilogb(a2, v19);
    v21 = *a2;
    v70 = v21;
    v22 = v21[2] + 64;
    if (v22 >= 0x80)
    {
      v71 = operator new[]((v22 >> 3) & 0x1FFFFFF8);
    }

    v23 = *(a2 + 20);
    v24 = v23 & 7;
    v73 = v73 & 0xF0 | v23 & 0xF;
    v25 = *(a2 + 4);
    v72 = v25;
    v27 = (v23 & 6) != 0 && v24 != 3;
    if (v24 == 1 || v27)
    {
      v29 = v21[2];
      if ((v29 - 64) >= 0xFFFFFF80)
      {
        v30 = &v71;
      }

      else
      {
        v30 = v71;
      }

      if ((v29 - 64) >= 0xFFFFFF80)
      {
        v31 = (a2 + 8);
      }

      else
      {
        v31 = *v12;
      }

      llvm::APInt::tcAssign(v30, v31, ((v29 + 64) >> 6));
      v21 = v70;
      v25 = v72;
    }

    v32 = v18 - v20;
    v33 = *v21 + v21[2] + ~v21[1];
    v34 = -2 - v33;
    if (v33 + 1 < v32)
    {
      v35 = v33 + 1;
    }

    else
    {
      v35 = v32;
    }

    if (v34 > v32)
    {
      v35 = v34;
    }

    v72 = v35 + v25;
    llvm::detail::IEEEFloat::normalize(&v70, 1, 0);
    v36 = v73;
    v37 = v70;
    if ((v73 & 7) == 1)
    {
      v38 = v70[4];
      if (v38 != 1)
      {
        v39 = v70[2];
        if ((v39 - 64) >= 0xFFFFFF80)
        {
          v40 = &v71;
        }

        else
        {
          v40 = v71;
        }

        llvm::APInt::tcSetBit(v40, (v39 - 2));
        v37 = v70;
        v36 = v73;
        LOBYTE(v38) = (v73 & 7) == 1;
      }
    }

    else
    {
      LOBYTE(v38) = 0;
    }

    v74 = v37;
    __p = v71;
    v76 = v72;
    v77 = v77 & 0xF0 | v36 & 0xF;
    v70 = &llvm::semBogus;
    if (v38)
    {
      goto LABEL_64;
    }

    v41 = *(this + 4);
    if (v41 == v72)
    {
      v42 = *(*this + 8);
      v43 = (this + 8);
      if ((v42 - 64) <= 0xFFFFFF7F)
      {
        v43 = *v11;
      }

      if ((v37[2] - 64) >= 0xFFFFFF80)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v71;
      }

      if ((llvm::APInt::tcCompare(v43, p_p, ((v42 + 64) >> 6)) & 0x80000000) == 0)
      {
        goto LABEL_98;
      }

LABEL_64:
      v45 = *a2;
      v66 = v45;
      v46 = v45[2] + 64;
      if (v46 >= 0x80)
      {
        v67 = operator new[]((v46 >> 3) & 0x1FFFFFF8);
      }

      v47 = *(a2 + 20);
      v48 = v47 & 7;
      v69 = v69 & 0xF0 | v47 & 0xF;
      v49 = *(a2 + 4);
      v68 = v49;
      v51 = (v47 & 6) != 0 && v48 != 3;
      if (v48 == 1 || v51)
      {
        v52 = v45[2];
        if ((v52 - 64) >= 0xFFFFFF80)
        {
          v53 = &v67;
        }

        else
        {
          v53 = v67;
        }

        if ((v52 - 64) >= 0xFFFFFF80)
        {
          v54 = (a2 + 8);
        }

        else
        {
          v54 = *v12;
        }

        llvm::APInt::tcAssign(v53, v54, ((v52 + 64) >> 6));
        v45 = v66;
        v49 = v68;
      }

      v55 = v32 - 1;
      v56 = *v45 + v45[2] + ~v45[1];
      if (v56 + 1 < v32 - 1)
      {
        v55 = v56 + 1;
      }

      if (-2 - v56 >= v32)
      {
        v55 = -2 - v56;
      }

      v68 = v55 + v49;
      llvm::detail::IEEEFloat::normalize(&v66, 1, 0);
      v57 = v69;
      v58 = v66;
      if ((v69 & 7) == 1 && v66[4] != 1)
      {
        v59 = v66[2];
        if ((v59 - 64) >= 0xFFFFFF80)
        {
          v60 = &v67;
        }

        else
        {
          v60 = v67;
        }

        llvm::APInt::tcSetBit(v60, (v59 - 2));
        v58 = v66;
        v57 = v69;
      }

      v61 = v67;
      v62 = v68;
      v66 = &llvm::semBogus;
      if ((v74[2] - 64) <= 0xFFFFFF7F && __p)
      {
        operator delete[](__p);
        v63 = v66;
      }

      else
      {
        v63 = &llvm::semBogus;
      }

      v74 = v58;
      __p = v61;
      v76 = v62;
      v77 = v77 & 0xF0 | v57 & 0xF;
      if ((v63[2] - 64) <= 0xFFFFFF7F && v67)
      {
        operator delete[](v67);
      }

      goto LABEL_98;
    }

    if (v41 - v72 < 0)
    {
      goto LABEL_64;
    }

LABEL_98:
    v77 = v77 & 0xF7 | *(this + 20) & 8;
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v74, 1);
    if (result == 2)
    {
      v64 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v74, 1);
      result = llvm::detail::IEEEFloat::normalize(this, 1, v64);
    }

    v8 = *(this + 20);
    if ((v8 & 7) == 3)
    {
      if ((v77 & 7) != 3 || ((v77 ^ v8) & 8) == 0)
      {
        LOBYTE(v8) = v8 & 0xF3;
        *(this + 20) = v8;
      }

      if (*(*this + 20) == 2)
      {
        LOBYTE(v8) = v8 & 0xF3;
        *(this + 20) = v8;
      }
    }

    if ((v74[2] - 64) <= 0xFFFFFF7F && __p)
    {
      v65 = result;
      operator delete[](__p);
      result = v65;
      LOBYTE(v8) = *(this + 20);
    }

    if ((v8 & 6) == 0 || (v8 & 7) == 3 || (*(a2 + 20) & 6) == 0 || (*(a2 + 20) & 7) == 3)
    {
      goto LABEL_7;
    }
  }

  LOBYTE(v8) = *(this + 20);
LABEL_7:
  if ((v8 & 7) == 3)
  {
    v9 = v8 & 0xF3;
    v10 = v9 | v6 & 8;
    *(this + 20) = v10;
    if (*(*this + 20) == 2)
    {
      v10 = v9;
    }

    *(this + 20) = v10;
  }

  return result;
}

uint64_t llvm::detail::ilogb(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 7) == 0)
  {
    return 0x7FFFFFFFLL;
  }

  if (v5 == 1)
  {
    return 0x80000000;
  }

  if (v5 == 3)
  {
    return 2147483649;
  }

  v28 = v2;
  v29 = v3;
  v7 = (v4 & 6) == 0 || v5 == 3;
  if (v7 || *(this + 4) != *(*this + 4))
  {
    return *(this + 4);
  }

  v8 = *(*this + 8);
  v9 = (this + 8);
  v10 = (v8 - 64) >= 0xFFFFFF80 ? (this + 8) : *(this + 1);
  v11 = this;
  Bit = llvm::APInt::tcExtractBit(v10, (v8 - 1));
  this = v11;
  if (Bit)
  {
    return *(this + 4);
  }

  p_p = *v11;
  v24 = p_p;
  v14 = p_p[2];
  v15 = v14 + 64;
  if ((v14 + 64) >= 0x80)
  {
    p_p = operator new[]((v15 >> 3) & 0x1FFFFFF8);
    this = v11;
    __p = p_p;
  }

  v16 = *(this + 20);
  v17 = v16 & 7;
  v27 = v16 & 0xF;
  v18 = *(this + 4);
  v26 = v18;
  v20 = (v16 & 6) != 0 && v17 != 3;
  if (v17 == 1 || v20)
  {
    if ((v14 - 64) < 0xFFFFFF80)
    {
      v21 = *(this + 1);
    }

    else
    {
      p_p = &__p;
      v21 = v9;
    }

    v22 = this;
    llvm::APInt::tcAssign(p_p, v21, (v15 >> 6));
    v14 = *(*v22 + 8);
    v18 = v26;
  }

  v26 = v18 + v14 - 1;
  llvm::detail::IEEEFloat::normalize(&v24, 1, 0);
  result = (v26 - (v14 - 1));
  if ((v24[2] - 64) <= 0xFFFFFF7F)
  {
    if (__p)
    {
      v23 = (v26 - (v14 - 1));
      operator delete[](__p);
      return v23;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::fusedMultiplyAdd(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, unint64_t *a3, int a4)
{
  v6 = this;
  v7 = *(this + 20);
  *(this + 20) = *(a2 + 20) & 8 ^ v7;
  v8 = v7 & 6;
  v9 = v7 & 7;
  if (v8)
  {
    v10 = v9 == 3;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || ((*(a2 + 20) & 6) != 0 ? (v11 = (*(a2 + 20) & 7) == 3) : (v11 = 1), v11 || (v12 = *(a3 + 20), (v12 & 6) == 0)))
  {
    if (llvm::detail::IEEEFloat::multiplySpecials(this, a2))
    {
      return 1;
    }

    result = llvm::detail::IEEEFloat::addOrSubtractSpecials(v6, a3, 0);
    if (result == 2)
    {
      v23 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v6, a3, 0);
      result = llvm::detail::IEEEFloat::normalize(v6, a4, v23);
    }

    v24 = v6[20];
    if ((v24 & 7) == 3)
    {
      v25 = *(a3 + 20);
      if ((v25 & 7) != 3 || ((v25 ^ v24) & 8) != 0)
      {
        LOBYTE(v24) = v24 & 0xF3 | (8 * (a4 == 3));
        v6[20] = v24;
      }

      if (*(*v6 + 20) == 2)
      {
        v22 = v24 & 0xF7;
LABEL_39:
        v6[20] = v22;
      }
    }
  }

  else
  {
    v26 = *a3;
    v13 = *(v26 + 8);
    v14 = v13 + 64;
    if ((v13 + 64) >= 0x80)
    {
      v15 = a2;
      this = operator new[]((v14 >> 3) & 0x1FFFFFF8);
      a2 = v15;
      __p = this;
    }

    v29 = v12 & 0xF;
    v28 = *(a3 + 4);
    if ((v12 & 7) != 3)
    {
      if ((v13 - 64) >= 0xFFFFFF80)
      {
        this = &__p;
      }

      v16 = a3 + 1;
      if ((v13 - 64) < 0xFFFFFF80)
      {
        v16 = a3[1];
      }

      v17 = (v14 >> 6);
      v18 = a2;
      llvm::APInt::tcAssign(this, v16, v17);
      a2 = v18;
    }

    v19 = llvm::detail::IEEEFloat::multiplySignificand(v6, a2, &v26);
    if ((*(v26 + 8) - 64) <= 0xFFFFFF7F && __p)
    {
      operator delete[](__p);
    }

    LODWORD(result) = llvm::detail::IEEEFloat::normalize(v6, a4, v19);
    if (v19)
    {
      result = result | 0x10;
    }

    else
    {
      result = result;
    }

    v21 = v6[20];
    if ((v21 & 7) == 3 && (result & 8) == 0 && ((*(a3 + 20) ^ v21) & 8) != 0)
    {
      v22 = v21 & 0xF3;
      v6[20] = v22 | (8 * (a4 == 3));
      if (*(*v6 + 20) != 2)
      {
        v22 |= 8 * (a4 == 3);
      }

      goto LABEL_39;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromAPInt(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = *(a2 + 8);
  v8 = ((v7 + 63) >> 6);
  v19 = *(a2 + 8);
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a2);
    LODWORD(v7) = v19;
    v9 = __p;
    v10 = *(a1 + 20);
    *(a1 + 20) = v10 & 0xF7;
    if (!a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = *a2;
    __p = *a2;
    v10 = *(a1 + 20);
    *(a1 + 20) = v10 & 0xF7;
    if (!a3)
    {
      goto LABEL_21;
    }
  }

  p_p = (v9 + 8 * ((v7 - 1) >> 6));
  if (v7 < 0x41)
  {
    p_p = &__p;
  }

  if ((*p_p >> (v7 - 1)))
  {
    *(a1 + 20) = v10 | 8;
    v17 = v7;
    if (v7 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v16, &__p);
      LODWORD(v7) = v17;
      if (v17 > 0x40)
      {
        llvm::APInt::flipAllBitsSlowCase(&v16);
LABEL_15:
        llvm::APInt::operator++(&v16);
        LODWORD(v7) = v17;
        v9 = v16;
        v17 = 0;
        if (v19 > 0x40 && __p)
        {
          operator delete[](__p);
          __p = v9;
          v19 = v7;
          if (v17 >= 0x41 && v16)
          {
            operator delete[](v16);
            LODWORD(v7) = v19;
            v9 = __p;
          }
        }

        else
        {
          __p = v16;
          v19 = v7;
        }

        goto LABEL_21;
      }

      v9 = v16;
    }

    v12 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
    if (!v7)
    {
      v12 = 0;
    }

    v16 = (v12 & ~v9);
    goto LABEL_15;
  }

LABEL_21:
  if (v7 >= 0x41)
  {
    v13 = v9;
  }

  else
  {
    v13 = &__p;
  }

  result = llvm::detail::IEEEFloat::convertFromUnsignedParts(a1, v13, v8, a4);
  if (v19 >= 0x41)
  {
    if (__p)
    {
      v15 = result;
      operator delete[](__p);
      return v15;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertToSignExtendedInteger(uint64_t a1, llvm::APInt *this, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  *a7 = 0;
  v7 = *(a1 + 20) & 7;
  if (v7 < 2)
  {
    return 1;
  }

  v11 = ((a4 + 63) >> 6);
  if (v7 == 3)
  {
    llvm::APInt::tcSet(this, 0, (a4 + 63) >> 6);
    LOBYTE(v12) = ((*(a1 + 20) >> 3) & 1) == 0;
LABEL_5:
    v8 = 0;
    *a7 = v12;
    return v8;
  }

  v14 = (a1 + 8);
  v15 = *(*a1 + 8);
  v16 = (a1 + 8);
  if ((v15 - 64) <= 0xFFFFFF7F)
  {
    v16 = *v14;
  }

  v17 = *(a1 + 16);
  if ((v17 & 0x80000000) != 0)
  {
    v22 = a6;
    v19 = a5;
    v39 = a4;
    llvm::APInt::tcSet(this, 0, (a4 + 63) >> 6);
    v21 = (*(*a1 + 8) + ~*(a1 + 16));
    if (!v21)
    {
LABEL_18:
      v29 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    if (v17 >= a4)
    {
      return 1;
    }

    v19 = a5;
    v39 = a4;
    v20 = v17 + 1;
    v21 = v15 - (v17 + 1);
    if (v15 <= v17 + 1)
    {
      llvm::APInt::tcExtract(this, ((a4 + 63) >> 6), v16, v15, 0);
      llvm::APInt::tcShiftLeft(this, v11, v20 - *(*a1 + 8));
      v29 = 1;
      v30 = llvm::APInt::tcMSB(this, v11);
      v31 = v30 + 1;
      if ((*(a1 + 20) & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_52;
    }

    v22 = a6;
    llvm::APInt::tcExtract(this, ((a4 + 63) >> 6), v16, (v17 + 1), v15 - v20);
    if (!v21)
    {
      goto LABEL_18;
    }
  }

  v23 = *(*a1 + 8) + 64;
  v24 = llvm::APInt::tcLSB(v16, (v23 >> 6));
  if (v24 >= v21)
  {
    goto LABEL_18;
  }

  v25 = v24 + 1;
  v26 = this;
  if (v25 == v21)
  {
    v27 = 0;
    v28 = 2;
  }

  else if ((v23 & 0xFFFFFFC0) >= v21 && (Bit = llvm::APInt::tcExtractBit(v16, (v21 - 1)), v26 = this, Bit))
  {
    v27 = 0;
    v28 = 3;
  }

  else
  {
    v27 = 1;
    v28 = 1;
  }

  if (v22 <= 1)
  {
    if (v22)
    {
      if (v28 == 3)
      {
        goto LABEL_48;
      }

      if (v28 == 2 && (*(a1 + 20) & 7) != 3)
      {
        if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
        {
          v14 = *v14;
        }

        v35 = llvm::APInt::tcExtractBit(v14, v21);
        v26 = this;
        if (v35)
        {
          goto LABEL_48;
        }
      }
    }

    goto LABEL_51;
  }

  if (v22 == 2)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v22 == 3)
    {
      if ((*(a1 + 20) & 8) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_51;
    }

    if (v27)
    {
LABEL_51:
      v29 = 0;
      v30 = llvm::APInt::tcMSB(v26, v11);
      v31 = v30 + 1;
      if ((*(a1 + 20) & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_52:
      if (v19)
      {
        v36 = this;
        if (v31 == v39)
        {
          v37 = v30;
          v38 = llvm::APInt::tcLSB(this, v11);
          v36 = this;
          if (v38 == v37)
          {
            goto LABEL_59;
          }
        }

        else if (v31 <= v39)
        {
LABEL_59:
          llvm::APInt::tcNegate(v36, v11);
          if ((v29 & 1) == 0)
          {
            return 16;
          }

          LOBYTE(v12) = 1;
          goto LABEL_5;
        }
      }

      else
      {
        v36 = this;
        if (!v31)
        {
          goto LABEL_59;
        }
      }

      return 1;
    }
  }

LABEL_48:
  v8 = 1;
  if (llvm::APInt::tcAddPart(v26, 1, v11))
  {
    return v8;
  }

  v29 = 0;
LABEL_19:
  v30 = llvm::APInt::tcMSB(this, v11);
  v31 = v30 + 1;
  if ((*(a1 + 20) & 8) != 0)
  {
    goto LABEL_52;
  }

LABEL_22:
  v32 = (v19 ^ 1) + v39;
  v33 = v31 >= v32;
  if (v31 < v32)
  {
    v12 = v29;
  }

  else
  {
    v12 = 0;
  }

  if (v33)
  {
    v8 = 1;
  }

  else
  {
    v8 = 16;
  }

  if (v12 == 1)
  {
    goto LABEL_5;
  }

  return v8;
}

uint64_t llvm::detail::IEEEFloat::convertToInteger(uint64_t a1, llvm::APInt *a2, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  result = llvm::detail::IEEEFloat::convertToSignExtendedInteger(a1, a2, a3, a4, a5, a6, a7);
  if (result != 1)
  {
    return result;
  }

  v12 = ((a4 + 63) >> 6);
  if ((*(a1 + 20) & 7) != 1)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v13 = 0;
      LOBYTE(v14) = a5;
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = a4 - a5;
      v15 = a4 - a5 - 65;
      if (a4 - a5 < 0x41)
      {
        v13 = 0;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v16 = result;
        memset(a2, 255, 8 * (v15 >> 6) + 8);
        result = v16;
        v13 = (v15 >> 6) + 1;
        v17 = v14 - (v15 & 0xFFFFFFC0);
        LOBYTE(v14) = v17 - 64;
        if (v17 == 64)
        {
          goto LABEL_10;
        }
      }
    }

    *(a2 + v13++) = 0xFFFFFFFFFFFFFFFFLL >> -v14;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:
  if (v13 < v12)
  {
    v18 = result;
    bzero(a2 + 8 * v13, 8 * (v12 + ~v13) + 8);
    result = v18;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (a5)
    {
      v19 = a4 - 1;
      v20 = result;
      llvm::APInt::tcShiftLeft(a2, v12, v19);
      return v20;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromUnsignedParts(uint64_t a1, llvm::APInt *this, unint64_t *a3, int a4)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v8 = llvm::APInt::tcMSB(this, a3);
  v9 = (v8 + 1);
  v10 = *(*a1 + 8);
  v11 = (a1 + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v12 = ((v10 + 64) >> 6);
  v13 = v9 - v10;
  if (v9 >= v10)
  {
    *(a1 + 16) = v8;
    v15 = llvm::APInt::tcLSB(this, a3);
    if (v15 >= v13)
    {
      v14 = 0;
    }

    else if (v15 + 1 == v13)
    {
      v14 = 2;
    }

    else if (v13 <= a3 << 6 && llvm::APInt::tcExtractBit(this, (v13 - 1)))
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    llvm::APInt::tcExtract(v11, v12, this, v10, v13);
  }

  else
  {
    *(a1 + 16) = v10 - 1;
    llvm::APInt::tcExtract(v11, v12, this, v9, 0);
    v14 = 0;
  }

  return llvm::detail::IEEEFloat::normalize(a1, a4, v14);
}

uint64_t llvm::detail::IEEEFloat::convertFromHexadecimalString@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v10 = *(*a1 + 8);
  v11 = (a1 + 8);
  v12 = (a1 + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v12 = *v11;
  }

  llvm::APInt::tcSet(v12, 0, (v10 + 64) >> 6);
  *(a1 + 16) = 0;
  v14 = *(*a1 + 8);
  if ((v14 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v15 = &a2[a3];
  if (!a3)
  {
    v19 = a2;
    goto LABEL_18;
  }

  v16 = a3 - 1;
  v17 = a2;
  do
  {
    v18 = *v17;
    if (v18 != 48)
    {
      if (v18 != 46)
      {
        v19 = v17;
        goto LABEL_18;
      }

      if (a3 == 1)
      {
        goto LABEL_50;
      }

      v19 = v17;
      while (v16)
      {
        v20 = *++v19;
        --v16;
        if (v20 != 48)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_55;
    }

    ++v17;
    --v16;
  }

  while (v16 != -1);
  v19 = &a2[a3];
LABEL_18:
  v17 = &a2[a3];
LABEL_19:
  if (v19 == v15)
  {
LABEL_55:
    v33 = "Hex strings require an exponent";
    goto LABEL_56;
  }

  v21 = 0;
  v22 = 0;
  v23 = v14 & 0xFFFFFFC0;
  v24 = v23 + 64;
  v25 = *(a5 + 8);
  v26 = v19;
  do
  {
    v28 = *v26;
    if (v28 == 46)
    {
      if (v17 != v15)
      {
        v34 = "String contains multiple dots";
LABEL_53:
        v53[0] = v34;
        v54 = 259;
        v35 = llvm::inconvertibleErrorCode(v13);
        v37 = v36;
        v38 = operator new(0x38uLL);
        result = llvm::StringError::StringError(v38, v53, v35, v37);
        v40 = v25 | 1;
        goto LABEL_57;
      }

      v17 = v26++;
      continue;
    }

    v13 = llvm::hexDigitValue(char)::LUT[v28];
    if (v13 == -1)
    {
      break;
    }

    ++v26;
    if (v24)
    {
      v24 -= 4;
      v27 = v13 << v24;
      v13 = v24 >> 6;
      v11[v13] = (v11[v13] | v27);
    }

    else
    {
      if ((v22 & 1) == 0)
      {
        if ((v28 - 57) > 0xFFFFFFFFFFFFFFF6)
        {
          if ((llvm::hexDigitValue(char)::LUT[v28] & 7) != 0)
          {
            v21 = v21 & 0xFFFFFFFF00000000 | 1;
          }

          else
          {
            v29 = v26;
            if (v26 == v15)
            {
LABEL_52:
              v34 = "Invalid trailing hexadecimal fraction!";
              goto LABEL_53;
            }

            while (1)
            {
              v30 = *v29;
              if (v30 != 48 && v30 != 46)
              {
                break;
              }

              if (++v29 == v15)
              {
                goto LABEL_52;
              }
            }

            v31 = v21 & 0xFFFFFFFF00000000;
            if (llvm::hexDigitValue(char)::LUT[v30] == -1)
            {
              v21 = v31 | (2 * (v28 != 48));
            }

            else
            {
              if (v28 == 48)
              {
                v32 = 1;
              }

              else
              {
                v32 = 3;
              }

              v21 = v32 | v31;
            }
          }
        }

        else
        {
          v21 = v21 & 0xFFFFFFFF00000000 | 3;
        }
      }

      v24 = 0;
      v22 = 1;
    }
  }

  while (v26 != v15);
  if (v26 == v15)
  {
    goto LABEL_55;
  }

  if ((*v26 | 0x20) != 0x70)
  {
    v33 = "Invalid character in significand";
    goto LABEL_56;
  }

  if (v26 == a2 || v17 != v15 && v26 - a2 == 1)
  {
LABEL_50:
    v33 = "Significand has no digits";
LABEL_56:
    v53[0] = v33;
    v54 = 259;
    v41 = llvm::inconvertibleErrorCode(v13);
    v43 = v42;
    v44 = operator new(0x38uLL);
    result = llvm::StringError::StringError(v44, v53, v41, v43);
    v40 = *(a5 + 8) | 1;
LABEL_57:
    *(a5 + 8) = v40;
    *a5 = result;
  }

  else
  {
    if (v26 != v19)
    {
      if (v17 == v15)
      {
        v45 = v26;
      }

      else
      {
        v45 = v17;
      }

      v46 = (v26 + 1);
      if (v26 + 1 == v15 || ((v47 = *v46, v47 == 45) || v47 == 43) && (v46 = (v26 + 2), v26 + 2 == v15))
      {
        v33 = "Exponent has no digits";
        goto LABEL_56;
      }

      if (v46 != v15)
      {
        v48 = 0;
        while (1)
        {
          v49 = *v46 - 48;
          if (v49 >= 0xA)
          {
            break;
          }

          v48 = v49 + 10 * v48;
          if (v48 >= 0x8000)
          {
            goto LABEL_79;
          }

          if (++v46 == v15)
          {
            goto LABEL_74;
          }
        }

        v33 = "Invalid character in exponent";
        goto LABEL_56;
      }

      v48 = 0;
LABEL_74:
      v50 = *(*a1 + 8) - v23 + 4 * (v45 - v19 + ((v45 - v19) >> 31)) - 65;
      if (v50 != v50 || (v47 != 45 ? (v51 = v48) : (v51 = -v48), v52 = v51 + v50, v52 != v52))
      {
LABEL_79:
        if (v47 == 45)
        {
          v52 = -32768;
        }

        else
        {
          v52 = 0x7FFF;
        }
      }

      *(a1 + 16) = v52;
    }

    result = llvm::detail::IEEEFloat::normalize(a1, a4, v21);
    *(a5 + 8) &= ~1u;
    *a5 = result;
  }

  return result;
}

uint64_t llvm::createError(llvm *a1, llvm::Twine *a2)
{
  v4 = llvm::inconvertibleErrorCode(a1);
  v6 = v5;
  v7 = operator new(0x38uLL);
  result = llvm::StringError::StringError(v7, a2, v4, v6);
  *a1 = result;
  return result;
}

unint64_t *llvm::detail::IEEEFloat::roundSignificandWithExponent(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v5 = v3;
  v63 = v6;
  v62 = v7;
  v8 = v2;
  v77 = *MEMORY[0x1E69E9840];
  v65 = 0xFFFF800100007FFFLL;
  v66 = 0;
  v67 = 0;
  v60 = v4;
  v10 = v4 == 1 || v4 == 4;
  v61 = v10;
  v11 = (*(*v2 + 8) + 74) >> 6;
  if (v3 >= 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = -v3;
  }

  v73 = 390625;
  v68[0] = llvm::powerOf5(unsigned long long *,unsigned int)::firstEightPowers[v12 & 7];
  if (v12 < 8)
  {
    v64 = 1;
    goto LABEL_34;
  }

  if ((v12 & 8) != 0)
  {
    v1 = &v69;
    v13 = v68;
    llvm::APInt::tcFullMultiply(&v69, v68, &v73, 1, 1);
    if (__p)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    v64 = v21;
    if (v12 >= 0x10)
    {
LABEL_14:
      v14 = v12 >> 4;
      v15 = &v74;
      v16 = 1;
      do
      {
        while (1)
        {
          llvm::APInt::tcFullMultiply(v15, &v15[-v16], &v15[-v16], v16, v16);
          v20 = 2 * v16 - 1;
          v16 = v15[v20] ? (2 * v16) : v20;
          if (v14)
          {
            break;
          }

          v18 = v1;
          v15 += v16;
          v19 = v14 >= 2;
          v14 >>= 1;
          if (!v19)
          {
            goto LABEL_30;
          }
        }

        llvm::APInt::tcFullMultiply(v13, v1, v15, v64, v16);
        v17 = v16 + v64;
        if (!v13[v16 - 1 + v64])
        {
          v17 = v16 + v64 - 1;
        }

        v64 = v17;
        v18 = v13;
        v13 = v1;
        v1 = v18;
        v15 += v16;
        v19 = v14 >= 2;
        v14 >>= 1;
      }

      while (v19);
      goto LABEL_30;
    }
  }

  else
  {
    v13 = &v69;
    v1 = v68;
    v64 = 1;
    if (v12 >= 0x10)
    {
      goto LABEL_14;
    }
  }

  v18 = v1;
LABEL_30:
  if (v18 != v68)
  {
    llvm::APInt::tcAssign(v68, v18, v64);
  }

  do
  {
LABEL_34:
    LODWORD(v66) = (v11 << 6) - 1;
    v22 = *(*v8 + 8);
    v73 = &v65;
    if (v11 << 6 <= 0x7F)
    {
      v23 = v74;
    }

    else
    {
      v23 = operator new[]((8 * v11) & 0x1FFFFFFF);
      v74 = v23;
    }

    v76 = v76 & 0xF0 | 3;
    v75 = HIDWORD(v65) - 1;
    if ((v11 << 6) - 65 >= 0xFFFFFF80)
    {
      v23 = &v74;
    }

    llvm::APInt::tcSet(v23, 0, v11 & 0x3FFFFFF);
    v24 = v76 & 0xF0;
    v76 = v76 & 0xF0 | v8[20] & 8 | 3;
    if (*(v73 + 20) == 2)
    {
      v76 = v24 | 3;
    }

    v75 = *(v73 + 4) - 1;
    v25 = *(v73 + 8);
    if ((v25 - 64) >= 0xFFFFFF80)
    {
      v26 = &v74;
    }

    else
    {
      v26 = v74;
    }

    llvm::APInt::tcSet(v26, 0, (v25 + 64) >> 6);
    v69 = &v65;
    v27 = v66;
    v28 = v66 + 64;
    if ((v66 + 64) <= 0x7F)
    {
      p_p = __p;
    }

    else
    {
      p_p = operator new[]((v28 >> 3) & 0x1FFFFFF8);
      __p = p_p;
    }

    v30 = (v11 << 6) - 1 - v22;
    v72 = v72 & 0xF0 | 3;
    v71 = HIDWORD(v65) - 1;
    if ((v27 - 64) >= 0xFFFFFF80)
    {
      p_p = &__p;
    }

    llvm::APInt::tcSet(p_p, 0, v28 >> 6);
    v31 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v73, v62, v63, 1);
    v32 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v69, v68, v64, 1);
    v75 += v5;
    if (v5 < 0)
    {
      v33 = llvm::detail::IEEEFloat::divideSignificand(&v73, &v69);
      v36 = *(*v8 + 4);
      v35 = v30;
      v37 = v36 - v75;
      if (v36 > v75)
      {
        v35 = v37 + v30;
        if (v37 + v30 >= v66)
        {
          v30 = v66;
        }

        else
        {
          v30 += v37;
        }
      }

      v34 = 2 * ((v32 | v33) != 0);
    }

    else
    {
      v33 = llvm::detail::IEEEFloat::multiplySignificand(&v73, &v69);
      v34 = v32 != 0;
      v35 = v30;
    }

    v38 = v33 != 0;
    if (v31)
    {
      ++v34;
    }

    v39 = 2 * v38;
    v40 = v38 | (2 * v34);
    if (v34)
    {
      v41 = v40;
    }

    else
    {
      v41 = v39;
    }

    if ((*(v73 + 8) - 64) >= 0xFFFFFF80)
    {
      v42 = &v74;
    }

    else
    {
      v42 = v74;
    }

    v43 = (v30 - 1) >> 6;
    v44 = v42[v43] & (0xFFFFFFFFFFFFFFFFLL >> ((v30 - 1) & 0x3F ^ 0x3F));
    v45 = 1 << (v30 - 1);
    if (!v61)
    {
      v45 = 0;
    }

    if (v30 - 1 > 0x3F)
    {
      if (v44 == v45)
      {
        v48 = v43 - 1;
        while (v48)
        {
          if (v42[v48--])
          {
            goto LABEL_80;
          }
        }

        v47 = 2 * *v42;
        if (v47 >= v41)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v44 != v45 - 1)
        {
LABEL_80:
          v47 = -2;
LABEL_84:
          v52 = *(*v8 + 8);
          v53 = (v8 + 8);
          if ((v52 - 64) <= 0xFFFFFF7F)
          {
            v53 = *(v8 + 1);
          }

          llvm::APInt::tcExtract(v53, ((v52 + 64) >> 6), v42, (v66 - v30), v30);
          *(v8 + 4) = v75 + v30 + *(*v8 + 8) - v66;
          v54 = *(v73 + 8);
          if ((v54 - 64) >= 0xFFFFFF80)
          {
            v55 = &v74;
          }

          else
          {
            v55 = v74;
          }

          v56 = v54 + 64;
          v57 = llvm::APInt::tcLSB(v55, ((v54 + 64) >> 6));
          if (v57 >= v35)
          {
            v58 = 0;
          }

          else if (v57 + 1 == v35)
          {
            v58 = 2;
          }

          else if ((v56 & 0xFFFFFFC0) >= v35 && llvm::APInt::tcExtractBit(v55, (v35 - 1)))
          {
            v58 = 3;
          }

          else
          {
            v58 = 1;
          }

          v1 = llvm::detail::IEEEFloat::normalize(v8, v60, v58);
          goto LABEL_98;
        }

        v50 = v43 - 1;
        while (v50)
        {
          v51 = v42[v50--];
          if (v51 != -1)
          {
            goto LABEL_80;
          }
        }

        v47 = -2 * *v42;
        if (v47 >= v41)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      v46 = v44 - v45;
      if ((v44 - v45) < 0)
      {
        v46 = v45 - v44;
      }

      v47 = 2 * v46;
      if (2 * v46 >= v41)
      {
        goto LABEL_84;
      }
    }

LABEL_98:
    if ((*(v69 + 2) - 64) <= 0xFFFFFF7F && __p)
    {
      operator delete[](__p);
    }

    if ((*(v73 + 8) - 64) <= 0xFFFFFF7F && v74)
    {
      operator delete[](v74);
    }

    v11 *= 2;
  }

  while (v47 < v41);
  return v1;
}

void llvm::detail::IEEEFloat::convertFromDecimalString(_BYTE *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = &a2[a3];
  if (!a3)
  {
    v10 = a2;
    v8 = a2;
    if (a2 != v6)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v7 = a3 - 1;
  v8 = a2;
  do
  {
    v9 = *v8;
    if (v9 != 48)
    {
      if (v9 != 46)
      {
        v10 = v8;
        goto LABEL_22;
      }

      if (a3 == 1)
      {
LABEL_37:
        v20 = "Significand has no digits";
        goto LABEL_104;
      }

      v10 = v8;
      while (v7)
      {
        v11 = *++v10;
        --v7;
        if (v11 != 48)
        {
          goto LABEL_23;
        }
      }

      v10 = &a2[a3];
LABEL_13:
      v12 = 0;
      v13 = &a2[a3];
      if (v6 == v10)
      {
        goto LABEL_46;
      }

      goto LABEL_14;
    }

    ++v8;
    --v7;
  }

  while (v7 != -1);
  v10 = &a2[a3];
LABEL_22:
  v8 = &a2[a3];
LABEL_23:
  if (v10 == v6)
  {
    goto LABEL_13;
  }

LABEL_24:
  v13 = v10;
  while (1)
  {
    v19 = *v13;
    if (v19 != 46)
    {
      v18 = v13;
      if ((v19 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      goto LABEL_26;
    }

    if (v8 != v6)
    {
      v20 = "String contains multiple dots";
      goto LABEL_104;
    }

    v18 = v13 + 1;
    if (v13 + 1 == v6)
    {
      v8 = v13++;
      goto LABEL_45;
    }

    v8 = v13;
    if ((*v18 - 58) < 0xFFFFFFF6)
    {
      break;
    }

LABEL_26:
    v13 = v18 + 1;
    if (v18 + 1 == v6)
    {
      goto LABEL_32;
    }
  }

  v13 = v18;
LABEL_32:
  if (v13 == v6)
  {
LABEL_45:
    v12 = 0;
    if (v13 != v10)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

  if ((*v13 | 0x20) != 0x65)
  {
    goto LABEL_103;
  }

  if (v13 == a2 || v8 != v6 && v13 - a2 == 1)
  {
    goto LABEL_37;
  }

  v42 = (v13 + 1);
  if (v13 + 1 == v6 || ((v43 = *v42, v43 == 45) || v43 == 43) && v13 + 2 == v6)
  {
    v12 = 0;
    if (v8 == v6)
    {
      v8 = v13;
    }

    if (v13 != v10)
    {
      goto LABEL_14;
    }

LABEL_46:
    v25 = 0;
    v17 = v10;
    if (v10 == v6)
    {
      goto LABEL_48;
    }

LABEL_47:
    if ((*v10 - 58) <= 0xFFFFFFF5)
    {
      goto LABEL_48;
    }

    if (v25 >= 51085)
    {
      goto LABEL_52;
    }

    v29 = *a1;
    if (v25 < -51082 || 28738 * v25 + 28738 <= 8651 * (v29[1] - v29[2]))
    {
      a1[20] = a1[20] & 0xF8 | 2;
      v38 = v29[2];
      v39 = (a1 + 8);
      if ((v38 - 64) <= 0xFFFFFF7F)
      {
        v39 = *v39;
      }

      llvm::APInt::tcSet(v39, 0, (v38 + 64) >> 6);
      v28 = llvm::detail::IEEEFloat::normalize(a1, a4, 1);
      goto LABEL_73;
    }

    if (42039 * v25 - 42039 >= 12655 * *v29)
    {
LABEL_52:
      v28 = llvm::detail::IEEEFloat::handleOverflow(a1, a4);
LABEL_73:
      v27 = v28;
      goto LABEL_74;
    }

    v31 = a2;
    v32 = operator new[](((((196 * (v17 - v10) + 196) / 0x3Bu + 64) >> 3) & 0x1FFFFF8) + 8);
    v33 = 0;
LABEL_57:
    v34 = 0;
    v35 = 1;
    while (1)
    {
      v36 = *v31;
      if (v36 == 46)
      {
        if (++v31 == v6)
        {
          v31 = v6;
LABEL_66:
          llvm::APInt::tcMultiplyPart(v32, v32, v35, v34, v33, v33 + 1, 0);
          if (*(v32 + v33))
          {
            ++v33;
          }

          if (v31 > v17)
          {
            a1[20] = a1[20] & 0xF8 | 2;
            v27 = llvm::detail::IEEEFloat::roundSignificandWithExponent(a1);
            operator delete[](v32);
            goto LABEL_74;
          }

          goto LABEL_57;
        }

        LOBYTE(v36) = *v31;
      }

      v37 = v36 - 48;
      if (v37 > 9)
      {
        break;
      }

      ++v31;
      v35 *= 10;
      v34 = 10 * v34 + v37;
      if (v31 > v17 || v35 >= 0x1999999999999999)
      {
        goto LABEL_66;
      }
    }

    operator delete[](v32);
LABEL_103:
    v20 = "Invalid character in significand";
LABEL_104:
    v53 = v20;
    v54 = 259;
    v48 = llvm::inconvertibleErrorCode(a1);
    v50 = v49;
    v51 = operator new(0x38uLL);
    v52 = llvm::StringError::StringError(v51, &v53, v48, v50);
    *(a5 + 8) |= 1u;
    *a5 = v52;
    return;
  }

  if (v43 == 45 || (v44 = *v42, v43 == 43))
  {
    v42 = (v13 + 2);
    if (v13 + 2 == v6)
    {
      v20 = "Exponent has no digits";
      goto LABEL_104;
    }

    v44 = *v42;
  }

  v45 = v44 - 48;
  if (v45 > 9)
  {
LABEL_84:
    v20 = "Invalid character in exponent";
    goto LABEL_104;
  }

  v46 = v42 + 1;
  while (v46 != v6)
  {
    v47 = *v46 - 48;
    if (v47 >= 0xA)
    {
      goto LABEL_84;
    }

    v45 = v47 + 10 * v45;
    ++v46;
    if (v45 >> 6 >= 0x177)
    {
      v45 = 24000;
      break;
    }
  }

  if (v43 == 45)
  {
    v12 = -v45;
  }

  else
  {
    v12 = v45;
  }

  if (v8 == v6)
  {
    v8 = v13;
  }

  if (v13 == v10)
  {
    goto LABEL_46;
  }

LABEL_14:
  if (v13 != a2)
  {
LABEL_15:
    v14 = v13 - 1;
    while (v14 != a2)
    {
      v16 = *v14--;
      v15 = v16;
      if (v16 != 48)
      {
        if (v15 == 46)
        {
          v13 = v14 + 1;
          goto LABEL_15;
        }

        v17 = v14 + 1;
        goto LABEL_39;
      }
    }
  }

  v17 = a2;
LABEL_39:
  v21 = v8 - v17;
  v22 = v8 > v10;
  v23 = v8 >= v17;
  v24 = v8 > v17;
  if (v23)
  {
    v22 = 0;
  }

  v25 = v12 + v21 - v24 + v17 - v10 - v22;
  if (v10 != v6)
  {
    goto LABEL_47;
  }

LABEL_48:
  v26 = a1[20] & 0xF8 | 3;
  a1[20] = v26;
  v27 = 0;
  if (*(*a1 + 20) == 2)
  {
    a1[20] = v26 & 0xF3;
  }

LABEL_74:
  *(a5 + 8) &= ~1u;
  *a5 = v27;
}

uint64_t llvm::detail::IEEEFloat::convertFromStringSpecials(llvm::detail::IEEEFloat *a1, unsigned __int8 *a2, size_t a3)
{
  if (a3 < 3)
  {
    return 0;
  }

  v42 = v3;
  v43 = v4;
  if (a3 == 8)
  {
    v9 = "INFINITY";
LABEL_14:
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = memcmp(a2, v9, a3);
    a3 = v12;
    a2 = v11;
    v14 = v13;
    a1 = v10;
    if (!v14)
    {
LABEL_20:
      v21 = *a1;
      if (*(*a1 + 16) != 1)
      {
        *(a1 + 20) &= 0xF0u;
        *(a1 + 4) = *v21 + 1;
        v24 = v21[2];
        v25 = (a1 + 8);
        if ((v24 - 64) <= 0xFFFFFF7F)
        {
          v25 = *v25;
        }

        llvm::APInt::tcSet(v25, 0, (v24 + 64) >> 6);
        return 1;
      }

      v22 = 0;
      v23 = 0;
      goto LABEL_45;
    }

LABEL_15:
    v8 = *a2;
    if (v8 != 45)
    {
      v7 = 0;
      v15 = a3;
      goto LABEL_30;
    }

    ++a2;
    v15 = a3 - 1;
    if (a3 == 9)
    {
      v16 = a1;
      v20 = a2;
      v17 = a2;
      v19 = "INFINITY";
    }

    else
    {
      if (a3 != 4)
      {
LABEL_29:
        v8 = *a2;
        v7 = 1;
        goto LABEL_30;
      }

      v16 = a1;
      v17 = a2;
      v18 = memcmp(a2, "inf", 3uLL);
      a1 = v16;
      if (!v18)
      {
LABEL_54:
        llvm::detail::IEEEFloat::makeInf(a1, 1);
        return 1;
      }

      v19 = "Inf";
      v20 = v17;
    }

    v26 = memcmp(v20, v19, v15);
    a2 = v17;
    v27 = v26;
    a1 = v16;
    if (v27)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

  if (a3 == 4)
  {
    v9 = "+Inf";
    goto LABEL_14;
  }

  if (a3 != 3)
  {
    goto LABEL_15;
  }

  if (*a2 == 28265 && a2[2] == 102)
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = *a2;
  if (v8 == 45)
  {
    return 0;
  }

  v15 = 3;
LABEL_30:
  if ((v8 | 0x20) == 0x73)
  {
    if (--v15 < 3)
    {
      return 0;
    }

    ++a2;
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if ((*a2 != 24942 || a2[2] != 110) && (*a2 != 24910 || a2[2] != 78))
  {
    return 0;
  }

  v31 = a2 + 3;
  v32 = v15 - 3;
  v40 = a2 + 3;
  v41 = v15 - 3;
  if (v15 > 3)
  {
    v33 = *v31;
    if (v33 == 40)
    {
      if (v32 < 3 || a2[v15 - 1] != 41)
      {
        return 0;
      }

      v31 = a2 + 4;
      v32 = v15 - 5;
      v40 = a2 + 4;
      v41 = v15 - 5;
      v33 = a2[4];
    }

    v34 = v7;
    v35 = a1;
    if (v33 == 48)
    {
      v36 = v32 - 2;
      if (v32 >= 2 && __tolower(v31[1]) == 120)
      {
        v40 = v31 + 2;
        v41 = v36;
        v37 = 16;
      }

      else
      {
        v37 = 8;
      }
    }

    else
    {
      v37 = 10;
    }

    v39 = 1;
    __p = 0;
    if ((llvm::StringRef::getAsInteger(&v40, v37, &__p) & 1) == 0)
    {
      llvm::detail::IEEEFloat::makeNaN(v35, v28, v34, &__p);
      if (v39 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      return 1;
    }

    if (v39 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }

    return 0;
  }

  v23 = v7;
  v22 = v28;
LABEL_45:
  llvm::detail::IEEEFloat::makeNaN(a1, v22, v23, 0);
  return 1;
}

void llvm::detail::IEEEFloat::makeInf(llvm::detail::IEEEFloat *this, int a2)
{
  v2 = *this;
  if (*(*this + 16) == 1)
  {
    llvm::detail::IEEEFloat::makeNaN(this, 0, a2, 0);
  }

  else
  {
    if (a2)
    {
      v3 = 8;
    }

    else
    {
      v3 = 0;
    }

    *(this + 20) = *(this + 20) & 0xF0 | v3;
    *(this + 4) = *v2 + 1;
    v4 = v2[2];
    v5 = (this + 8);
    if ((v4 - 64) <= 0xFFFFFF7F)
    {
      v5 = *v5;
    }

    llvm::APInt::tcSet(v5, 0, (v4 + 64) >> 6);
  }
}

void llvm::detail::IEEEFloat::convertFromString(llvm *a1@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (!a3)
  {
    v10 = "Invalid string length";
LABEL_5:
    v18[0] = v10;
    v19 = 259;
    v11 = llvm::inconvertibleErrorCode(a1);
    v13 = v12;
    v14 = operator new(0x38uLL);
    v15 = llvm::StringError::StringError(v14, v18, v11, v13);
    *(a5 + 8) |= 1u;
    *a5 = v15;
    return;
  }

  v7 = a3;
  v8 = a2;
  v9 = a1;
  a1 = llvm::detail::IEEEFloat::convertFromStringSpecials(a1, a2, a3);
  if (a1)
  {
    *(a5 + 8) &= ~1u;
    *a5 = 0;
    return;
  }

  *(v9 + 20) = *(v9 + 20) & 0xF7 | (8 * (*v8 == 45));
  v16 = *v8;
  if (v16 != 45 && v16 != 43)
  {
    goto LABEL_10;
  }

  if (!--v7)
  {
    v10 = "String has no digits";
    goto LABEL_5;
  }

  ++v8;
LABEL_10:
  if (v7 >= 2 && *v8 == 48 && (v8[1] | 0x20) == 0x78)
  {
    if (v7 == 2)
    {
      v18[0] = "Invalid string";
      v19 = 259;
      llvm::createError(&v17, v18);
      *(a5 + 8) |= 1u;
      *a5 = v17;
    }

    else
    {

      llvm::detail::IEEEFloat::convertFromHexadecimalString(v9, v8 + 2, v7 - 2, a4, a5);
    }
  }

  else
  {

    llvm::detail::IEEEFloat::convertFromDecimalString(v9, v8, v7, a4, a5);
  }
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    v5 = (v2 >> 3) & 1;
    v6 = *this;
    v26 = 0u;
    v27 = 0u;
    if (v3 == 1)
    {
      LOBYTE(v5) = 0;
    }

    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v21 = 0uLL;
    v28 = 0;
    v29 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v21) = v3;
    BYTE1(v21) = v5;
    v20 = 0;
    v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v21, &v20, (&v21 + 2), &v25, *(v6 + 8));
    v8 = v20;
  }

  else
  {
    v9 = (v2 >> 3) & 1;
    v10 = *this;
    v11 = *(*this + 8);
    v12 = (this + 8);
    if ((v11 - 64) < 0xFFFFFF80)
    {
      v12 = *(this + 1);
    }

    v14 = llvm::hashing::detail::hash_combine_range_impl<char const>(v12, &v12[(v11 + 64) >> 6]);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v28 = 0;
    v29 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v21) = v3;
    BYTE1(v21) = v9;
    v18 = 0;
    v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v21, &v18, (&v21 + 2), &v25, *(v10 + 8));
    v19 = v18;
    v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v21, &v19, v15, &v25, *(this + 4));
    v20 = v19;
    v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v21, &v20, v16, &v25, v14);
    v8 = v20;
  }

  return llvm::hashing::detail::hash_combine_recursive_helper::combine(&v21, v8, v7, &v25);
}

uint64_t llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, uint64_t a2@<X8>)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      v11 = 0;
      v7 = 0;
    }

    else
    {
      if ((v4 & 7) != 0)
      {
        v13 = *this;
        v12 = (this + 8);
        if ((*(v13 + 8) - 64) <= 0xFFFFFF7F)
        {
          v12 = *v12;
        }

        v7 = *v12;
      }

      else
      {
        v7 = 0x8000000000000000;
      }

      v11 = 0x7FFFLL;
    }
  }

  else
  {
    LODWORD(v8) = *(this + 4) + 0x3FFF;
    v10 = *this;
    v9 = (this + 8);
    if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
    {
      v9 = *v9;
    }

    v7 = *v9;
    if (v8 == 1)
    {
      v8 = v7 >> 63;
    }

    v11 = v8 & 0x7FFF;
  }

  v15[0] = v7;
  v15[1] = v11 & 0xFFFFFFFFFFFF7FFFLL | (((v4 >> 3) & 1) << 15);
  return llvm::APInt::APInt(a2, 0x50u, v15, 2u);
}