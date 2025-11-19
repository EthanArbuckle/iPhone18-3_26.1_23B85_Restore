uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v106 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v37 = a1;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v9 + 8);
    v40 = *(v9 + 16);
    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v48 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
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
    v50 = v41[1];
    v94 = a2;
    v95 = v50;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v94);
    a1 = v37;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v94 = a2;
  v95 = 0;
  v49 = mlir::CallOpInterface::getArgOperands(&v94);
  a1 = v37;
  if (!v49)
  {
    goto LABEL_2;
  }

LABEL_59:
  v52 = *a2;
  {
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v82 = v52;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v82 + 8);
    v55 = *(v82 + 16);
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  v56 = v54;
  v57 = v55;
  do
  {
    v58 = v57 >> 1;
    v59 = &v56[2 * (v57 >> 1)];
    v61 = *v59;
    v60 = v59 + 2;
    v57 += ~(v57 >> 1);
    if (v61 < v53)
    {
      v56 = v60;
    }

    else
    {
      v57 = v58;
    }
  }

  while (v57);
  if (v56 != &v54[2 * v55] && *v56 == v53)
  {
    v63 = v56[1];
    v83 = a2;
    v84 = v63;
    mlir::CallableOpInterface::getArgAttrsAttr(&v83);
    a1 = v37;
    if (!v64)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v83 = a2;
  v84 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v83);
  a1 = v37;
  if (!v62)
  {
LABEL_74:
    v65 = *a2;
    {
      v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v67 = *(v65 + 8);
      v68 = *(v65 + 16);
      if (!v68)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v77 = v65;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v67 = *(v77 + 8);
      v68 = *(v77 + 16);
      if (!v68)
      {
        goto LABEL_88;
      }
    }

    v69 = v67;
    v70 = v68;
    do
    {
      v71 = v70 >> 1;
      v72 = &v69[2 * (v70 >> 1)];
      v74 = *v72;
      v73 = v72 + 2;
      v70 += ~(v70 >> 1);
      if (v74 < v66)
      {
        v69 = v73;
      }

      else
      {
        v70 = v71;
      }
    }

    while (v70);
    if (v69 != &v67[2 * v68] && *v69 == v66)
    {
      v78 = v69[1];
      goto LABEL_90;
    }

LABEL_88:
    v78 = 0;
LABEL_90:
    v91 = a2;
    v92 = v78;
    isSplat = mlir::ElementsAttr::isSplat(&v91);
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }

    if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      goto LABEL_104;
    }

    v88 = isSplat;
    Value = mlir::AffineMapAttr::getValue(&v88);
    if (!mlir::Type::isF16(&Value))
    {
      if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
LABEL_104:
        a1 = v37;
        goto LABEL_2;
      }

      v86 = isSplat;
      v87 = mlir::AffineMapAttr::getValue(&v86);
      isF32 = mlir::Type::isF32(&v87);
      a1 = v37;
      if (!isF32)
      {
        goto LABEL_2;
      }
    }

    return 1;
  }

LABEL_2:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(a1, &v83, &v94);
  if (v94)
  {
    LODWORD(v91) = 3;
    v92 = " #";
    v93 = 2;
    v10 = &v91;
    v11 = v96;
    if (v97 >= v98)
    {
      if (v96 <= &v91 && v96 + 24 * v97 > &v91)
      {
        v75 = &v91 - v96;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
        v11 = v96;
        v10 = v96 + v75;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
        v10 = &v91;
        v11 = v96;
      }
    }

    v12 = &v11[24 * v97];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    v14 = ++v97;
    if (v94)
    {
      LODWORD(v91) = 5;
      v92 = a5;
      v15 = &v91;
      v16 = v96;
      if (v14 >= v98)
      {
        if (v96 <= &v91 && v96 + 24 * v14 > &v91)
        {
          v76 = &v91 - v96;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v14 + 1, 24);
          v16 = v96;
          v15 = v96 + v76;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v14 + 1, 24);
          v15 = &v91;
          v16 = v96;
        }
      }

      v17 = &v16[24 * v97];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      v19 = ++v97;
      if (v94)
      {
        LODWORD(v91) = 3;
        v92 = " must be 0D tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v93 = 225;
        v20 = &v91;
        v21 = v96;
        if (v19 >= v98)
        {
          if (v96 <= &v91 && v96 + 24 * v19 > &v91)
          {
            v80 = &v91 - v96;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v19 + 1, 24);
            v21 = v96;
            v20 = v96 + v80;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v19 + 1, 24);
            v20 = &v91;
            v21 = v96;
          }
        }

        v22 = &v21[24 * v97];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v97;
        if (v94)
        {
          v24 = &v91;
          mlir::DiagnosticArgument::DiagnosticArgument(&v91, a2);
          v25 = v96;
          if (v97 >= v98)
          {
            if (v96 <= &v91 && v96 + 24 * v97 > &v91)
            {
              v81 = &v91 - v96;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v25 = v96;
              v24 = v96 + v81;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v24 = &v91;
              v25 = v96;
            }
          }

          v26 = &v25[24 * v97];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v97;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
  if (v94)
  {
    mlir::InFlightDiagnostic::report(&v94);
  }

  if (v105 == 1)
  {
    if (v104 != &v105)
    {
      free(v104);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v103;
      v31 = __p;
      if (v103 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v103 = v29;
      operator delete(v31);
    }

    v32 = v100;
    if (v100)
    {
      v33 = v101;
      v34 = v100;
      if (v101 != v100)
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
        v34 = v100;
      }

      v101 = v32;
      operator delete(v34);
    }

    if (v96 != v99)
    {
      free(v96);
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReadHandleOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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
  a2(a3, NextResultAtOffset, "output", 6);
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

  return (a2)(a3, v9, "out_token", 9);
}

BOOL mlir::ODIE::Compiler::CoreML::ReadHandleOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ReadHandleOp *this)
{
  v31 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps26(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v3 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 1);
  v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u) & 1) == 0)
  {
    return 0;
  }

  v6 = *(*this + 72);
  v7 = *(v6 + 24);
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(v6 + 56));
  if (HandleForToken)
  {
    v9 = HandleForToken == v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 1;
  }

  v20 = "failed to verify that input token must come from an operation on the same handle";
  v21 = 259;
  mlir::OpState::emitOpError(this, &v20, v22);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  v11 = result;
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
    result = v11;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v11;
    }

    v12 = __p;
    if (__p)
    {
      v13 = v28;
      v14 = __p;
      if (v28 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v28 = v12;
      operator delete(v14);
      result = v11;
    }

    v15 = v25;
    if (v25)
    {
      v16 = v26;
      v17 = v25;
      if (v26 != v25)
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
        v17 = v25;
      }

      v26 = v15;
      operator delete(v17);
      result = v11;
    }

    if (v23 != &v24)
    {
      free(v23);
      return v11;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps26(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
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
        v42 = " must be , but got ";
        v43 = 19;
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

uint64_t mlir::ODIE::Compiler::CoreML::RealPartOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7))
  {
    return 0;
  }

  v9 = v7;
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  v7 = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::OperationState::addTypes(a2, &v7, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::ReduceMaxOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ReduceMaxOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
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
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReturnOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v10, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v11 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v8) & 1) == 0) || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0))
  {
    v5 = 0;
    v6 = v8[0];
    if (v8[0] == &v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v10, v8, v4, a2 + 16) & 1;
  v6 = v8[0];
  if (v8[0] != &v9)
  {
LABEL_9:
    free(v6);
  }

LABEL_10:
  if (v10 != v12)
  {
    free(v10);
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreML::ScatterNdOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ScatterNdOp *this)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps21(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    v32[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v33 = 259;
    mlir::OpState::emitOpError(this, v32, &v34);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    v15 = result;
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
      result = v15;
    }

    if (v43 != 1)
    {
      return result;
    }

    if (v42 != &v43)
    {
      free(v42);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v41;
      v18 = __p;
      if (v41 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v41 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v38;
    if (v38)
    {
      v20 = v39;
      v21 = v38;
      if (v39 == v38)
      {
        goto LABEL_50;
      }

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
LABEL_49:
      v21 = v38;
LABEL_50:
      v39 = v19;
      operator delete(v21);
      result = v15;
    }

LABEL_51:
    if (v36 == &v37)
    {
      return result;
    }

    free(v36);
    return v15;
  }

  v5 = mlir::getElementTypeOrSelf(*this - 16);
  if (v5 != mlir::getElementTypeOrSelf(*(*(*this + 72) + 88)))
  {
    v32[0] = "failed to verify that Result 0 element type must match element type of operand 2.";
    v33 = 259;
    mlir::OpState::emitOpError(this, v32, &v34);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    v15 = result;
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
      result = v15;
    }

    if (v43 != 1)
    {
      return result;
    }

    if (v42 != &v43)
    {
      free(v42);
      result = v15;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v41;
      v26 = __p;
      if (v41 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v41 = v24;
      operator delete(v26);
      result = v15;
    }

    v19 = v38;
    if (v38)
    {
      v27 = v39;
      v21 = v38;
      if (v39 == v38)
      {
        goto LABEL_50;
      }

      do
      {
        v29 = *--v27;
        v28 = v29;
        *v27 = 0;
        if (v29)
        {
          operator delete[](v28);
        }
      }

      while (v27 != v19);
      goto LABEL_49;
    }

    goto LABEL_51;
  }

  v31 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = mlir::Type::cast<mlir::ShapedType>(&v31);
  v35 = v6;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v34);
  v9 = v8;
  v30 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  v32[0] = mlir::Type::cast<mlir::ShapedType>(&v30);
  v32[1] = v10;
  v11 = mlir::CallableOpInterface::getArgAttrsAttr(v32);
  if (v9 == v12 && !memcmp(ArgAttrsAttr, v11, 8 * v9))
  {
    return 1;
  }

  v32[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
  v33 = 259;
  mlir::OpState::emitOpError(this, v32, &v34);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
  if (v34)
  {
    v14 = result;
    mlir::InFlightDiagnostic::report(&v34);
    result = v14;
  }

  if (v43 == 1)
  {
    v15 = result;
    mlir::Diagnostic::~Diagnostic(&v35);
    return v15;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterNdOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v12 = 0;
  v13[0] = &v14;
  v11[0] = &v12;
  v11[1] = 1;
  v9[1] = 1;
  v10 = 0;
  v8 = 0;
  v9[0] = &v10;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v22, 1) & 1) != 0 && (v25 = 257, ((*(*a1 + 400))(a1, "with", 4, v24)) && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v19, 1)) && (v25 = 257, ((*(*a1 + 400))(a1, "at", 2, v24)) && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v16, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v24[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v24)) && (v14 = v24[0], ((*(*a1 + 120))(a1)) && (v24[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v24)) && (v12 = v24[0], ((*(*a1 + 120))(a1)) && (v24[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v24)) && (v10 = v24[0], ((*(*a1 + 296))(a1)) && (v25 = 257, ((*(*a1 + 400))(a1, "to", 2, v24)) && (v24[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v24)) && (v8 = v24[0], (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (mlir::OperationState::addTypes(a2, &v8, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v21, v13, v4, a2 + 16)) && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v9, v6, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v11, v5, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ScatterNdOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v49[4] = *MEMORY[0x1E69E9840];
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
  if (v8[3] - v9 > 3uLL)
  {
    *v9 = 1752459639;
    v8[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "with", 4uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
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
  if (v14[3] - v15 > 1uLL)
  {
    *v15 = 29793;
    v14[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "at", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++v20[4];
  }

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
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    *v25 = 40;
    ++v24[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++v26[4];
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if (v30[3] == v31)
  {
    llvm::raw_ostream::write(v30, ",", 1uLL);
  }

  else
  {
    *v31 = 44;
    ++v30[4];
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, ")", 1uLL);
  }

  else
  {
    *v35 = 41;
    ++v34[4];
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = v38[4];
  if (v38[3] - v39 > 1uLL)
  {
    *v39 = 28532;
    v38[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v38, "to", 2uLL);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  if (*(*this + 9))
  {
    v42 = *this - 16;
  }

  else
  {
    v42 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v47 = v49;
  v48 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v45, v47, v48);
  if (v47 != v49)
  {
    free(v47);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SelectOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::SelectOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
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
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v9 = 0;
  v10[0] = &v11;
  v8[0] = &v9;
  v8[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v16, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v13, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v18[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v18)) && (v11 = v18[0], ((*(*a1 + 120))(a1)) && (v18[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v18)) && (v9 = v18[0], ((*(*a1 + 296))(a1)) && (v19 = 257, ((*(*a1 + 400))(a1, "to", 2, v18)) && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (v18[0] = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (mlir::OperationState::addTypes(a2, v18, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v10, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v8, v5, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SliceOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::SliceOp *this)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v22 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v23[0] = mlir::Type::cast<mlir::ShapedType>(&v22);
  v23[1] = v4;
  mlir::CallableOpInterface::getArgAttrsAttr(v23);
  v6 = v5;
  v21 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  v19[0] = mlir::Type::cast<mlir::ShapedType>(&v21);
  v19[1] = v7;
  mlir::CallableOpInterface::getArgAttrsAttr(v19);
  if (v6 == v8)
  {
    return 1;
  }

  v19[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
  v20 = 259;
  mlir::OpState::emitOpError(this, v19, v23);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  v10 = result;
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
    result = v10;
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v29;
      v13 = __p;
      if (v29 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v29 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v26;
    if (v26)
    {
      v15 = v27;
      v16 = v26;
      if (v27 != v26)
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
        v16 = v26;
      }

      v27 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v24 != &v25)
    {
      free(v24);
      return v10;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::SliceUpdateOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::SliceUpdateOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    v39 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v41 = 259;
    mlir::OpState::emitOpError(this, &v39, &v42);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    v15 = result;
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
      result = v15;
    }

    if (v51 != 1)
    {
      return result;
    }

    if (v50 != &v51)
    {
      free(v50);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v49;
      v18 = __p;
      if (v49 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v49 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v46;
    if (v46)
    {
      v20 = v47;
      v21 = v46;
      if (v47 == v46)
      {
        goto LABEL_52;
      }

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
LABEL_51:
      v21 = v46;
LABEL_52:
      v47 = v19;
      operator delete(v21);
      result = v15;
    }

LABEL_53:
    if (v44 == &v45)
    {
      return result;
    }

    free(v44);
    return v15;
  }

  v5 = mlir::getElementTypeOrSelf(*this - 16);
  if (v5 != mlir::getElementTypeOrSelf(*(*(*this + 72) + 152)))
  {
    v39 = "failed to verify that Result 0 element type must match element type of operand 4.";
    v41 = 259;
    mlir::OpState::emitOpError(this, &v39, &v42);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    v15 = result;
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
      result = v15;
    }

    if (v51 != 1)
    {
      return result;
    }

    if (v50 != &v51)
    {
      free(v50);
      result = v15;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v49;
      v26 = __p;
      if (v49 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v49 = v24;
      operator delete(v26);
      result = v15;
    }

    v19 = v46;
    if (v46)
    {
      v27 = v47;
      v21 = v46;
      if (v47 == v46)
      {
        goto LABEL_52;
      }

      do
      {
        v29 = *--v27;
        v28 = v29;
        *v27 = 0;
        if (v29)
        {
          operator delete[](v28);
        }
      }

      while (v27 != v19);
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  v38 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = mlir::Type::cast<mlir::ShapedType>(&v38);
  v43 = v6;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v42);
  v9 = v8;
  v37 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  v39 = mlir::Type::cast<mlir::ShapedType>(&v37);
  v40 = v10;
  v11 = mlir::CallableOpInterface::getArgAttrsAttr(&v39);
  if (v9 == v12 && !memcmp(ArgAttrsAttr, v11, 8 * v9))
  {
    v30 = *this;
    v42 = 0x200000001;
    LODWORD(v43) = 3;
    if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v30, &v42, 3))
    {
      v38 = (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
      v42 = mlir::Type::cast<mlir::ShapedType>(&v38);
      v43 = v31;
      mlir::CallableOpInterface::getArgAttrsAttr(&v42);
      v33 = v32;
      v37 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
      v39 = mlir::Type::cast<mlir::ShapedType>(&v37);
      v40 = v34;
      mlir::CallableOpInterface::getArgAttrsAttr(&v39);
      if (v33 == v35)
      {
        return 1;
      }

      v36 = "failed to verify that Result 0 and operand 4 must have the same rank.";
    }

    else
    {
      v36 = "failed to verify that Operands should have same shape.";
    }

    v39 = v36;
    v41 = 259;
    mlir::OpState::emitOpError(this, &v39, &v42);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
    return v15;
  }

  v39 = "failed to verify that Result 0 and operand 0 must have the same shape.";
  v41 = 259;
  mlir::OpState::emitOpError(this, &v39, &v42);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
  if (v42)
  {
    v14 = result;
    mlir::InFlightDiagnostic::report(&v42);
    result = v14;
  }

  if (v51 == 1)
  {
    v15 = result;
    mlir::Diagnostic::~Diagnostic(&v43);
    return v15;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v30[0] = v31;
  v30[1] = 1;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v27[0] = v28;
  v27[1] = 1;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  v19[1] = 1;
  v20 = 0;
  v18 = 0;
  v19[0] = &v20;
  v17[0] = &v18;
  v17[1] = 1;
  v15[1] = 1;
  v16 = 0;
  v14 = 0;
  v15[0] = &v16;
  v13[0] = &v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v34, 1) & 1) != 0 && (v37 = 257, ((*(*a1 + 400))(a1, "with", 4, v36)) && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v31, 1)) && (v37 = 257, ((*(*a1 + 400))(a1, "at", 2, v36)) && ((*(*a1 + 280))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v28, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v25, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v22, 1)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v36[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v36)) && (v20 = v36[0], ((*(*a1 + 120))(a1)) && (v36[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v36)) && (v18 = v36[0], ((*(*a1 + 120))(a1)) && (v36[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v36)) && (v16 = v36[0], ((*(*a1 + 120))(a1)) && (v36[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v36)) && (v14 = v36[0], ((*(*a1 + 120))(a1)) && (v36[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v36)) && (v12 = v36[0], ((*(*a1 + 296))(a1)) && (v37 = 257, ((*(*a1 + 400))(a1, "to", 2, v36)) && (v36[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v36)) && (v10 = v36[0], (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (mlir::OperationState::addTypes(a2, &v10, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v33, v19, v4, a2 + 16)) && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v27, v15, v6, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v24, v13, v7, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v21, v11, v8, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v30, v17, v5, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::SliceUpdateOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v69[4] = *MEMORY[0x1E69E9840];
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
  if (v8[3] - v9 > 3uLL)
  {
    *v9 = 1752459639;
    v8[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "with", 4uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
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
  if (v14[3] - v15 > 1uLL)
  {
    *v15 = 29793;
    v14[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "at", 2uLL);
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

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    *v19 = 40;
    ++v18[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ",", 1uLL);
  }

  else
  {
    *v21 = 44;
    ++v20[4];
  }

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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ",", 1uLL);
  }

  else
  {
    *v25 = 44;
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if (v28[3] == v29)
  {
    llvm::raw_ostream::write(v28, ")", 1uLL);
  }

  else
  {
    *v29 = 41;
    ++v28[4];
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = v32[4];
  if (v32[3] == v33)
  {
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++v32[4];
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (v35 >= *(v34 + 3))
  {
    llvm::raw_ostream::write(v34, 32);
  }

  else
  {
    *(v34 + 4) = v35 + 1;
    *v35 = 32;
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, "(", 1uLL);
  }

  else
  {
    *v37 = 40;
    ++v36[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = v38[4];
  if (v38[3] == v39)
  {
    llvm::raw_ostream::write(v38, ",", 1uLL);
  }

  else
  {
    *v39 = 44;
    ++v38[4];
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = (*(*a2 + 16))(a2);
  v43 = v42[4];
  if (v42[3] == v43)
  {
    llvm::raw_ostream::write(v42, ",", 1uLL);
  }

  else
  {
    *v43 = 44;
    ++v42[4];
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (*(*a2 + 16))(a2);
  v47 = v46[4];
  if (v46[3] == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++v46[4];
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v50 = (*(*a2 + 16))(a2);
  v51 = v50[4];
  if (v50[3] == v51)
  {
    llvm::raw_ostream::write(v50, ",", 1uLL);
  }

  else
  {
    *v51 = 44;
    ++v50[4];
  }

  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (v53 >= *(v52 + 3))
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    *(v52 + 4) = v53 + 1;
    *v53 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = (*(*a2 + 16))(a2);
  v55 = v54[4];
  if (v54[3] == v55)
  {
    llvm::raw_ostream::write(v54, ")", 1uLL);
  }

  else
  {
    *v55 = 41;
    ++v54[4];
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (v57 >= *(v56 + 3))
  {
    llvm::raw_ostream::write(v56, 32);
  }

  else
  {
    *(v56 + 4) = v57 + 1;
    *v57 = 32;
  }

  v58 = (*(*a2 + 16))(a2);
  v59 = v58[4];
  if (v58[3] - v59 > 1uLL)
  {
    *v59 = 28532;
    v58[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v58, "to", 2uLL);
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (v61 >= *(v60 + 3))
  {
    llvm::raw_ostream::write(v60, 32);
  }

  else
  {
    *(v60 + 4) = v61 + 1;
    *v61 = 32;
  }

  if (*(*this + 9))
  {
    v62 = *this - 16;
  }

  else
  {
    v62 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v62, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v67 = v69;
  v68 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v65, v67, v68);
  if (v67 != v69)
  {
    free(v67);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SoftmaxOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::SoftmaxOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
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
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::SplitOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::SplitOp *this)
{
  v148 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_3:
    if (*(v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_4;
    }

    goto LABEL_128;
  }

  {
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v4 + 8);
    v34 = *(v4 + 16);
    if (!v34)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v57 = v4;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v57 + 8);
    v34 = *(v57 + 16);
    if (!v34)
    {
      goto LABEL_91;
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
LABEL_91:
    v136 = v3;
    v137 = 0;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v136);
    v4 = *v3;
    if (!ArgOperands)
    {
      goto LABEL_3;
    }

    goto LABEL_94;
  }

  v59 = v35[1];
  v136 = v3;
  v137 = v59;
  v60 = mlir::CallOpInterface::getArgOperands(&v136);
  v4 = *v3;
  if (!v60)
  {
    goto LABEL_3;
  }

LABEL_94:
  {
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v4 + 8);
    v63 = *(v4 + 16);
    if (!v63)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v123 = v4;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v123 + 8);
    v63 = *(v123 + 16);
    if (!v63)
    {
      goto LABEL_106;
    }
  }

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
LABEL_106:
    v124 = v3;
    v125 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v124);
    v4 = *v3;
    if (v70)
    {
      goto LABEL_3;
    }

    goto LABEL_109;
  }

  v71 = v64[1];
  v124 = v3;
  v125 = v71;
  mlir::CallableOpInterface::getArgAttrsAttr(&v124);
  v4 = *v3;
  if (v72)
  {
    goto LABEL_3;
  }

LABEL_109:
  {
    v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v74 = *(v4 + 8);
    v75 = *(v4 + 16);
    if (v75)
    {
      goto LABEL_111;
    }

LABEL_120:
    v75 = 0;
    v76 = v74;
    goto LABEL_121;
  }

  v84 = v4;
  mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
  v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v74 = *(v84 + 8);
  v75 = *(v84 + 16);
  if (!v75)
  {
    goto LABEL_120;
  }

LABEL_111:
  v76 = v74;
  v77 = v75;
  do
  {
    v78 = v77 >> 1;
    v79 = &v76[2 * (v77 >> 1)];
    v81 = *v79;
    v80 = v79 + 2;
    v77 += ~(v77 >> 1);
    if (v81 < v73)
    {
      v76 = v80;
    }

    else
    {
      v77 = v78;
    }
  }

  while (v77);
LABEL_121:
  if (v76 != &v74[2 * v75] && *v76 == v73)
  {
    v85 = v76[1];
  }

  else
  {
    v85 = 0;
  }

  v133 = v3;
  v134 = v85;
  isSplat = mlir::ElementsAttr::isSplat(&v133);
  if (mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32))
  {
    goto LABEL_43;
  }

  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_4;
  }

LABEL_128:
  {
    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v87 = *(v4 + 8);
    v88 = *(v4 + 16);
    if (!v88)
    {
      goto LABEL_140;
    }
  }

  else
  {
    v95 = v4;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v87 = *(v95 + 8);
    v88 = *(v95 + 16);
    if (!v88)
    {
      goto LABEL_140;
    }
  }

  v89 = v87;
  v90 = v88;
  do
  {
    v91 = v90 >> 1;
    v92 = &v89[2 * (v90 >> 1)];
    v94 = *v92;
    v93 = v92 + 2;
    v90 += ~(v90 >> 1);
    if (v94 < v86)
    {
      v89 = v93;
    }

    else
    {
      v90 = v91;
    }
  }

  while (v90);
  if (v89 == &v87[2 * v88] || *v89 != v86)
  {
LABEL_140:
    v130 = v3;
    v131 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v130))
    {
      goto LABEL_4;
    }

    goto LABEL_143;
  }

  v96 = v89[1];
  v130 = v3;
  v131 = v96;
  if (!mlir::CallOpInterface::getArgOperands(&v130))
  {
    goto LABEL_4;
  }

LABEL_143:
  v97 = *v3;
  {
    v98 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v99 = *(v97 + 8);
    v100 = *(v97 + 16);
    if (!v100)
    {
      goto LABEL_155;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v98 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v99 = *(v97 + 8);
    v100 = *(v97 + 16);
    if (!v100)
    {
      goto LABEL_155;
    }
  }

  v101 = v99;
  v102 = v100;
  do
  {
    v103 = v102 >> 1;
    v104 = &v101[2 * (v102 >> 1)];
    v106 = *v104;
    v105 = v104 + 2;
    v102 += ~(v102 >> 1);
    if (v106 < v98)
    {
      v101 = v105;
    }

    else
    {
      v102 = v103;
    }
  }

  while (v102);
  if (v101 != &v99[2 * v100] && *v101 == v98)
  {
    v108 = v101[1];
    v128 = v3;
    v129 = v108;
    mlir::CallableOpInterface::getArgAttrsAttr(&v128);
    if (v109 == 1)
    {
      goto LABEL_158;
    }

    goto LABEL_4;
  }

LABEL_155:
  v128 = v3;
  v129 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v128);
  if (v107 == 1)
  {
LABEL_158:
    v110 = *v3;
    {
      v111 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v112 = *(v110 + 8);
      v113 = *(v110 + 16);
      if (!v113)
      {
        goto LABEL_170;
      }
    }

    else
    {
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v111 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v112 = *(v110 + 8);
      v113 = *(v110 + 16);
      if (!v113)
      {
        goto LABEL_170;
      }
    }

    v114 = v112;
    v115 = v113;
    do
    {
      v116 = v115 >> 1;
      v117 = &v114[2 * (v115 >> 1)];
      v119 = *v117;
      v118 = v117 + 2;
      v115 += ~(v115 >> 1);
      if (v119 < v111)
      {
        v114 = v118;
      }

      else
      {
        v115 = v116;
      }
    }

    while (v115);
    if (v114 != &v112[2 * v113] && *v114 == v111)
    {
      v120 = v114[1];
      goto LABEL_172;
    }

LABEL_170:
    v120 = 0;
LABEL_172:
    v127[0] = v3;
    v127[1] = v120;
    isSplat = mlir::ElementsAttr::isSplat(v127);
    if (mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32))
    {
      goto LABEL_43;
    }
  }

LABEL_4:
  v126 = 261;
  v124 = "operand";
  v125 = 7;
  mlir::Operation::emitOpError(v2, &v124, &v136);
  if (v136)
  {
    LODWORD(v133) = 3;
    v134 = " #";
    v135 = 2;
    v5 = &v133;
    v6 = v138;
    if (v139 >= v140)
    {
      if (v138 <= &v133 && v138 + 24 * v139 > &v133)
      {
        v82 = &v133 - v138;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v139 + 1, 24);
        v6 = v138;
        v5 = (v138 + v82);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v139 + 1, 24);
        v5 = &v133;
        v6 = v138;
      }
    }

    v7 = &v6[24 * v139];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    v9 = ++v139;
    if (v136)
    {
      LODWORD(v133) = 5;
      v134 = 1;
      v10 = &v133;
      v11 = v138;
      if (v9 >= v140)
      {
        if (v138 <= &v133 && v138 + 24 * v9 > &v133)
        {
          v83 = &v133 - v138;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v9 + 1, 24);
          v11 = v138;
          v10 = (v138 + v83);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v9 + 1, 24);
          v10 = &v133;
          v11 = v138;
        }
      }

      v12 = &v11[24 * v139];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      v14 = ++v139;
      if (v136)
      {
        LODWORD(v133) = 3;
        v134 = " must be 0D tensor of Index type. values or 1D tensor of Index type. values, but got ";
        v135 = 85;
        v15 = &v133;
        v16 = v138;
        if (v14 >= v140)
        {
          if (v138 <= &v133 && v138 + 24 * v14 > &v133)
          {
            v121 = &v133 - v138;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v14 + 1, 24);
            v16 = v138;
            v15 = (v138 + v121);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v14 + 1, 24);
            v15 = &v133;
            v16 = v138;
          }
        }

        v17 = &v16[24 * v139];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v139;
        if (v136)
        {
          v19 = &v133;
          mlir::DiagnosticArgument::DiagnosticArgument(&v133, v3);
          v20 = v138;
          if (v139 >= v140)
          {
            if (v138 <= &v133 && v138 + 24 * v139 > &v133)
            {
              v122 = &v133 - v138;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v139 + 1, 24);
              v20 = v138;
              v19 = (v138 + v122);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v141, v139 + 1, 24);
              v19 = &v133;
              v20 = v138;
            }
          }

          v21 = &v20[24 * v139];
          v22 = *v19;
          *(v21 + 2) = v19[2];
          *v21 = v22;
          ++v139;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v136);
  if (v136)
  {
    mlir::InFlightDiagnostic::report(&v136);
  }

  if (v147 == 1)
  {
    if (v146 != &v147)
    {
      free(v146);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v145;
      v26 = __p;
      if (v145 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v145 = v24;
      operator delete(v26);
    }

    v27 = v142;
    if (v142)
    {
      v28 = v143;
      v29 = v142;
      if (v143 != v142)
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
        v29 = v142;
      }

      v143 = v27;
      operator delete(v29);
    }

    if (v138 != v141)
    {
      free(v138);
    }
  }

  if (!v23)
  {
    return 0;
  }

LABEL_43:
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v41 = *this;
  v42 = *(*this + 36);
  if (*(*this + 36))
  {
    v43 = *this - 16;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, v44);
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps28(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v44) & 1) == 0)
      {
        return 0;
      }

      if (v42 == ++v44)
      {
        v41 = *this;
        break;
      }
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v41 - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    return 1;
  }

  v124 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v126 = 259;
  mlir::OpState::emitOpError(this, &v124, &v136);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v136);
  v48 = result;
  if (v136)
  {
    mlir::InFlightDiagnostic::report(&v136);
    result = v48;
  }

  if (v147 == 1)
  {
    if (v146 != &v147)
    {
      free(v146);
      result = v48;
    }

    v49 = __p;
    if (__p)
    {
      v50 = v145;
      v51 = __p;
      if (v145 != __p)
      {
        do
        {
          v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
        }

        while (v50 != v49);
        v51 = __p;
      }

      v145 = v49;
      operator delete(v51);
      result = v48;
    }

    v52 = v142;
    if (v142)
    {
      v53 = v143;
      v54 = v142;
      if (v143 != v142)
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
        v54 = v142;
      }

      v143 = v52;
      operator delete(v54);
      result = v48;
    }

    if (v138 != v141)
    {
      free(v138);
      return v48;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps28(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_36;
  }

  v12 = *a2;
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
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
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v63[0] = a2;
  v63[1] = v22;
  v55[0] = mlir::ElementsAttr::isSplat(v63);
  if (mlir::Type::isF16(v55))
  {
    return 1;
  }

  if (mlir::Type::isF32(v55))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v55, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v55, 64))
  {
    return 1;
  }

  if (*(*v55[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v59 = v55[0];
    Value = mlir::AffineMapAttr::getValue(&v59);
    if (mlir::Type::isF16(&Value))
    {
      return 1;
    }

    if (*(*v55[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v57 = v55[0];
      v58 = mlir::AffineMapAttr::getValue(&v57);
      if (mlir::Type::isF32(&v58))
      {
        return 1;
      }
    }
  }

  v23 = 1;
  if (mlir::Type::isSignlessInteger(v55, 1))
  {
    return v23;
  }

LABEL_36:
  v56 = 261;
  v55[0] = a3;
  v55[1] = a4;
  mlir::Operation::emitOpError(a1, v55, v63);
  if (v63[0])
  {
    LODWORD(Value) = 3;
    v61 = " #";
    v62 = 2;
    p_Value = &Value;
    v25 = v64;
    if (v65 >= v66)
    {
      if (v64 <= &Value && v64 + 24 * v65 > &Value)
      {
        v51 = &Value - v64;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        v25 = v64;
        p_Value = (v64 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        p_Value = &Value;
        v25 = v64;
      }
    }

    v26 = &v25[24 * v65];
    v27 = *p_Value;
    *(v26 + 2) = p_Value[2];
    *v26 = v27;
    v28 = ++v65;
    if (v63[0])
    {
      LODWORD(Value) = 5;
      v61 = a5;
      v29 = &Value;
      v30 = v64;
      if (v28 >= v66)
      {
        if (v64 <= &Value && v64 + 24 * v28 > &Value)
        {
          v52 = &Value - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v28 + 1, 24);
          v30 = v64;
          v29 = (v64 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v28 + 1, 24);
          v29 = &Value;
          v30 = v64;
        }
      }

      v31 = &v30[24 * v65];
      v32 = *v29;
      *(v31 + 2) = v29[2];
      *v31 = v32;
      v33 = ++v65;
      if (v63[0])
      {
        LODWORD(Value) = 3;
        v61 = " must be variadic of CoreML Tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
        v62 = 258;
        v34 = &Value;
        v35 = v64;
        if (v33 >= v66)
        {
          if (v64 <= &Value && v64 + 24 * v33 > &Value)
          {
            v53 = &Value - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v33 + 1, 24);
            v35 = v64;
            v34 = (v64 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v33 + 1, 24);
            v34 = &Value;
            v35 = v64;
          }
        }

        v36 = &v35[24 * v65];
        v37 = *v34;
        *(v36 + 2) = v34[2];
        *v36 = v37;
        ++v65;
        if (v63[0])
        {
          v38 = &Value;
          mlir::DiagnosticArgument::DiagnosticArgument(&Value, a2);
          v39 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &Value && v64 + 24 * v65 > &Value)
            {
              v54 = &Value - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v39 = v64;
              v38 = (v64 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v38 = &Value;
              v39 = v64;
            }
          }

          v40 = &v39[24 * v65];
          v41 = *v38;
          *(v40 + 2) = v38[2];
          *v40 = v41;
          ++v65;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v63);
  if (v63[0])
  {
    mlir::InFlightDiagnostic::report(v63);
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v71;
      v44 = __p;
      if (v71 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v71 = v42;
      operator delete(v44);
    }

    v45 = v68;
    if (v68)
    {
      v46 = v69;
      v47 = v68;
      if (v69 != v68)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            operator delete[](v48);
          }
        }

        while (v46 != v45);
        v47 = v68;
      }

      v69 = v45;
      operator delete(v47);
    }

    if (v64 != v67)
    {
      free(v64);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::StackOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::StackOp *this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v4 = -1;
    v5 = 32;
LABEL_5:
    v6 = v5 + 24;
    v7 = 1;
    while ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps28(*this, (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v7) & 1) != 0)
    {
      ++v7;
      v6 += 32;
      if (!--v4)
      {
        v2 = *this;
        goto LABEL_9;
      }
    }

    return 0;
  }

  v3 = *(v2 + 68);
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v5 = *(v2 + 72) + 32;
    goto LABEL_5;
  }

LABEL_9:
  v8 = *(v2 + 36);
  v9 = v2 - 16;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::TransposeOp *this)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    v27 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v30[0] = mlir::Type::cast<mlir::ShapedType>(&v27);
    v30[1] = v5;
    mlir::CallableOpInterface::getArgAttrsAttr(v30);
    v7 = v6;
    v26 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = mlir::Type::cast<mlir::ShapedType>(&v26);
    v28[1] = v8;
    mlir::CallableOpInterface::getArgAttrsAttr(v28);
    if (v7 == v9)
    {
      return 1;
    }

    v28[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v11 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v11;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v11;
      }

      v20 = __p;
      if (__p)
      {
        v21 = v36;
        v22 = __p;
        if (v36 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v36 = v20;
        operator delete(v22);
        result = v11;
      }

      v15 = v33;
      if (!v33)
      {
        goto LABEL_46;
      }

      v23 = v34;
      v17 = v33;
      if (v34 == v33)
      {
LABEL_45:
        v34 = v15;
        operator delete(v17);
        result = v11;
LABEL_46:
        if (v31 != &v32)
        {
          free(v31);
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
LABEL_44:
      v17 = v33;
      goto LABEL_45;
    }
  }

  else
  {
    v28[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v11 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v11;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v11;
      }

      v12 = __p;
      if (__p)
      {
        v13 = v36;
        v14 = __p;
        if (v36 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v36 = v12;
        operator delete(v14);
        result = v11;
      }

      v15 = v33;
      if (!v33)
      {
        goto LABEL_46;
      }

      v16 = v34;
      v17 = v33;
      if (v34 == v33)
      {
        goto LABEL_45;
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
      goto LABEL_44;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::WhereOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::WhereOp *this)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 72) + 88));
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 72) + 56)))
  {
    v24[0] = "failed to verify that Operands should have same element type.";
    v25 = 259;
    mlir::OpState::emitOpError(this, v24, &v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
    v8 = result;
    if (v26)
    {
      mlir::InFlightDiagnostic::report(&v26);
      result = v8;
    }

    if (v35 != 1)
    {
      return result;
    }

    if (v34 != &v35)
    {
      free(v34);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v33;
      v11 = __p;
      if (v33 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v33 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v30;
    if (!v30)
    {
      goto LABEL_48;
    }

    v13 = v31;
    v14 = v30;
    if (v31 == v30)
    {
      goto LABEL_47;
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
    goto LABEL_46;
  }

  v5 = mlir::getElementTypeOrSelf(*this - 16);
  if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 72) + 56)))
  {
    v6 = *this;
    v26 = 0x100000000;
    v27[0] = 2;
    if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v6, &v26, 3))
    {
      return 1;
    }

    v24[0] = "failed to verify that Operands should have same shape.";
    v25 = 259;
    mlir::OpState::emitOpError(this, v24, &v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
    if (v26)
    {
      v23 = result;
      mlir::InFlightDiagnostic::report(&v26);
      result = v23;
    }

    if (v35 == 1)
    {
      v8 = result;
      mlir::Diagnostic::~Diagnostic(v27);
      return v8;
    }

    return result;
  }

  v24[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
  v25 = 259;
  mlir::OpState::emitOpError(this, v24, &v26);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  v8 = result;
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
    result = v8;
  }

  if (v35 != 1)
  {
    return result;
  }

  if (v34 != &v35)
  {
    free(v34);
    result = v8;
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
    result = v8;
  }

  v12 = v30;
  if (v30)
  {
    v20 = v31;
    v14 = v30;
    if (v31 == v30)
    {
      goto LABEL_47;
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
LABEL_46:
    v14 = v30;
LABEL_47:
    v31 = v12;
    operator delete(v14);
    result = v8;
  }

LABEL_48:
  if (v28 != &v29)
  {
    free(v28);
    return v8;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::WriteHandleOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::WriteHandleOp *this)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps26(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 72);
  v5 = *(v4 + 24);
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(v4 + 88));
  if (HandleForToken)
  {
    v7 = HandleForToken == v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 1;
  }

  v18 = "failed to verify that input token must come from an operation on the same handle";
  v19 = 259;
  mlir::OpState::emitOpError(this, &v18, v20);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
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
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3__0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B3CF70;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3__0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B3CF70;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3__0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EEclEOSE_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v4 = *(result + 8);
    v12 = *a2;
    Value = mlir::AffineMapAttr::getValue(&v12);
    AttrData = mlir::OpaqueAttr::getAttrData(&Value);
    v7 = v6;
    v9 = llvm::StringMapImpl::hash(AttrData, v6, v8);
    result = llvm::StringMapImpl::FindKey(v4, AttrData, v7, v9);
    if (result == -1 || result == *(v4 + 8) || (v10 = *(*(*v4 + 8 * result) + 8)) == 0)
    {
      v10 = v12;
    }

    *a3 = v10;
    *(a3 + 8) = 1;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3__0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEE3$_0NS7_12ParamRefAttrESB_SB_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSM_8optionalINSM_4pairISP_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSB_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEE3$_0NS7_12ParamRefAttrESB_SB_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSM_8optionalINSM_4pairISP_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSB_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEE3$_0NS7_12ParamRefAttrESB_SB_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSM_8optionalINSM_4pairISP_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSB_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEE3$_0NS7_12ParamRefAttrESB_SB_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSM_8optionalINSM_4pairISP_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSB_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::StringMap<mlir::Attribute,llvm::MallocAllocator> const&,llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::PendingSpecialization> &)::$_1>(uint64_t a1, mlir::Operation *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || **a1 == a2)
  {
    mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(*(a1 + 8), a2, 1, 1, 1);
    v5 = *(a1 + 16);
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v10[0] = &unk_1F5B3CFF0;
    v10[1] = v5;
    v10[2] = &v7;
    v11 = v10;
    *(&v8[0] + 1) = std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<mlir::WalkResult ()(mlir::Attribute)>>(v8, v10);
    if (v11 == v10)
    {
      (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    mlir::AttrTypeWalker::walkImpl(v8, AttrDictionary, 1);
    mlir::AttrTypeWalker::~AttrTypeWalker(v8);
  }

  mlir::Operation::erase(a2);
  return 2;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIRZZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEENK3__1clEPNS2_9OperationEEUlNS7_13ParamBindAttrEE_SN_SB_vEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISY_EEFNS2_10WalkResultESB_EE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_1F5B3CFF0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIRZZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEENK3__1clEPNS2_9OperationEEUlNS7_13ParamBindAttrEE_SN_SB_vEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISY_EEFNS2_10WalkResultESB_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B3CFF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIRZZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEENK3__1clEPNS2_9OperationEEUlNS7_13ParamBindAttrEE_SN_SB_vEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISY_EEFNS2_10WalkResultESB_EEclEOSB_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  v5 = *(**(a1 + 16) + 24);
  v6 = *(v4 + 8);
  if (v6 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 8), v4 + 16, v6 + 1, 16);
    LODWORD(v6) = *(v4 + 8);
  }

  v7 = (*v4 + 16 * v6);
  *v7 = v5;
  v7[1] = v2;
  ++*(v4 + 8);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIRZZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEENK3__1clEPNS2_9OperationEEUlNS7_13ParamBindAttrEE_SN_SB_vEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISY_EEFNS2_10WalkResultESB_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir14AttrTypeWalker7addWalkIRZZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS4_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS6_15MallocAllocatorEEERNS6_15SmallVectorImplINS4_21PendingSpecializationEEEENK3$_1clEPNS_9OperationEEUlNS4_13ParamBindAttrEE_SK_S8_vEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlS8_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir14AttrTypeWalker7addWalkIRZZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS4_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS6_15MallocAllocatorEEERNS6_15SmallVectorImplINS4_21PendingSpecializationEEEENK3$_1clEPNS_9OperationEEUlNS4_13ParamBindAttrEE_SK_S8_vEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlS8_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir14AttrTypeWalker7addWalkIRZZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS4_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS6_15MallocAllocatorEEERNS6_15SmallVectorImplINS4_21PendingSpecializationEEEENK3$_1clEPNS_9OperationEEUlNS4_13ParamBindAttrEE_SK_S8_vEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlS8_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir14AttrTypeWalker7addWalkIRZZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS4_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS6_15MallocAllocatorEEERNS6_15SmallVectorImplINS4_21PendingSpecializationEEEENK3$_1clEPNS_9OperationEEUlNS4_13ParamBindAttrEE_SK_S8_vEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlS8_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(void *a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = a1;
  CoreMLTensorEncoding = mlir::ODIE::Compiler::CoreML::getCoreMLTensorEncoding(a1);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  result = 0;
  v29[0] = v4;
  v29[1] = v6;
  if (CoreMLTensorEncoding && v4)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v29);
    v9 = v8;
    isSplat = mlir::ElementsAttr::isSplat(v29);
    v27[0] = &v31;
    if (mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(&CoreMLTensorEncoding, v11, v12, v13, v14, ArgAttrsAttr, v9, isSplat, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(mlir::Type,mlir::Operation *)::$_0>, v27))
    {
      Value = mlir::ArrayAttr::getValue(&CoreMLTensorEncoding);
      if (v16 < 1)
      {
        return 1;
      }

      v17 = 0;
      while (v17 == *(Value + 4 * v17))
      {
        if ((v16 & 0x7FFFFFFF) == ++v17)
        {
          return 1;
        }
      }

      v18 = *(a2 + 24);
      v27[0] = "only contiguous layout is supported";
      v28 = 259;
      mlir::emitError(v18, v27, v32);
      if (v32[0])
      {
        mlir::InFlightDiagnostic::report(v32);
      }

      if (v40 == 1)
      {
        if (v39 != &v40)
        {
          free(v39);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v38;
          v21 = __p;
          if (v38 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v38 = v19;
          operator delete(v21);
        }

        v22 = v35;
        if (v35)
        {
          v23 = v36;
          v24 = v35;
          if (v36 != v35)
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
            v24 = v35;
          }

          v36 = v22;
          operator delete(v24);
        }

        if (v33 != &v34)
        {
          free(v33);
        }
      }
    }

    return 0;
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(mlir::Type,mlir::Operation *)::$_0>(mlir::Attribute **a1@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext(*a1);
  v5 = mlir::UnknownLoc::get(Context, v4);

  mlir::emitError(v5, v6, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void *llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::TypedAttr,llvm::CastInfo<mlir::TypedAttr,mlir::TypedAttr,void>>::doCastIfPossible(void *result)
{
  if (result)
  {
    v1 = *result;
    {
      v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      v11 = v1;
      v12 = result;
      mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
      result = v12;
      v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v3 = *(v11 + 8);
      v4 = *(v11 + 16);
      if (!v4)
      {
        return result;
      }
    }

    v5 = v3;
    v6 = v4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v6 += ~(v6 >> 1);
      if (v10 < v2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void mlir::ODIE::Compiler::extract1DIntVector<int>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v4 = a2 + 16;
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v13, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v15);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, a1, NumElements);
  for (i = v14; i != v12[2]; i = ++v14)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v13, &__p);
    v7 = v11;
    if (v11 >= 0x41)
    {
      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
      {
        v8 = *__p;
      }

      else
      {
        LODWORD(v8) = -1;
      }
    }

    else
    {
      LODWORD(v8) = __p;
    }

    v9 = *(a2 + 8);
    if (v9 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v4, v9 + 1, 4);
      v9 = *(a2 + 8);
    }

    *(*a2 + 4 * v9) = v8;
    ++*(a2 + 8);
    if (v11 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }
}

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coreml.broadcast_to", 19, v31, v9, 0, 0);
  *v8 = &unk_1F5B3D070;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims]";
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

void mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims::~ReplaceBroadcastToWithBroadcastInDims(mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v124[6] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 72);
  v109 = *(v5 + 24);
  v6 = *(v109 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v5 + 56);
  v107 = v7[1] & 0xFFFFFFFFFFFFFFF8;
  v108 = v6;
  result = mlir::TensorType::hasRank(&v108);
  if (result)
  {
    Value = mlir::ArrayAttr::getValue(&v108);
    if (v10)
    {
      v11 = 8 * v10;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    result = mlir::TensorType::hasRank(&v107);
    if (!result)
    {
      return result;
    }

    v12 = mlir::ArrayAttr::getValue(&v107);
    if (v13)
    {
      v14 = 8 * v13;
      while (*v12 != 0x8000000000000000)
      {
        ++v12;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }

LABEL_11:
    v122 = 0;
    v115 = &v122;
    __src = v7;
    result = mlir::Value::getDefiningOp(&__src);
    if (result)
    {
      result = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v115, result);
      if (result)
      {
        mlir::ArrayAttr::getValue(&v108);
        v16 = v15;
        mlir::ODIE::Compiler::extract1DIntVector<int>(v7, &__src);
        if ((v121 & 1) == 0)
        {
          v101 = std::__throw_bad_optional_access[abi:nn200100]();
          return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(v101, v102, v103);
        }

        v122 = v124;
        v123 = 0xC00000000;
        v17 = v119;
        if (v119)
        {
          if (__src == v120)
          {
            v18 = v119;
            if (v119 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v124, v119, 4), (v18 = v119) != 0))
            {
              memcpy(v122, __src, 4 * v18);
            }

            LODWORD(v123) = v17;
            LODWORD(v119) = 0;
            if ((v121 & 1) == 0)
            {
LABEL_25:
              v19 = v17 - v16;
              if (v17 <= v16)
              {
                goto LABEL_63;
              }

              __src = v120;
              v119 = 0xC00000000;
              if (v17)
              {
                if (v17 < 0xD)
                {
                  v20 = 0;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v120, v17, 4);
                  v20 = v119;
                }

                if (v17 != v20)
                {
                  bzero(__src + 4 * v20, 4 * (v17 - v20));
                }

                LODWORD(v119) = v17;
              }

              if (v19 >= 1)
              {
                memset_pattern16(__src, &xmmword_1E099B5F0, 4 * v19);
              }

              v21 = mlir::ArrayAttr::getValue(&v108);
              if (v16 >= 1)
              {
                v22 = __src;
                if (v16 <= 7)
                {
                  v23 = 0;
LABEL_41:
                  v31 = v23 - v16;
                  v32 = (v21 + 8 * v23);
                  v33 = &v22[4 * v17];
                  do
                  {
                    v34 = *v32++;
                    *&v33[4 * v31] = v34;
                  }

                  while (!__CFADD__(v31++, 1));
                  goto LABEL_44;
                }

                v23 = v16 & 0x7FFFFFFFFFFFFFF8;
                v24 = (v21 + 32);
                v25 = (__src + 4 * v17 + -4 * v16 + 16);
                v26 = v16 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v28 = v24[-2];
                  v27 = v24[-1];
                  v30 = *v24;
                  v29 = v24[1];
                  v24 += 4;
                  v25[-1] = vuzp1q_s32(v28, v27);
                  *v25 = vuzp1q_s32(v30, v29);
                  v25 += 2;
                  v26 -= 8;
                }

                while (v26);
                if (v16 != v23)
                {
                  goto LABEL_41;
                }
              }

LABEL_44:
              v115 = v117;
              v116 = 0x600000000;
              if (v17)
              {
                if (v17 < 7)
                {
                  v36 = 0;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v117, v17, 8);
                  v36 = v116;
                }

                if (v17 != v36)
                {
                  bzero(v115 + 8 * v36, 8 * (v17 - v36));
                }

                LODWORD(v116) = v17;
              }

              v37 = v119;
              if (!v119)
              {
                goto LABEL_59;
              }

              v38 = __src;
              v39 = v115;
              v40 = (v119 - 1) & 0x3FFFFFFFFFFFFFFFLL;
              if (v40 > 6)
              {
                v43 = v40 + 1;
                v41 = (v40 + 1) & 0x7FFFFFFFFFFFFFF8;
                v42 = (__src + 4 * v41);
                v44 = v115 + 32;
                v45 = __src + 16;
                v46 = v41;
                do
                {
                  v47 = *(v45 - 1);
                  *&v48 = v47;
                  *(&v48 + 1) = SDWORD1(v47);
                  v49 = v48;
                  *&v48 = SDWORD2(v47);
                  *(&v48 + 1) = SHIDWORD(v47);
                  v50 = v48;
                  *&v48 = *v45;
                  *(&v48 + 1) = HIDWORD(*v45);
                  v51 = v48;
                  *&v48 = *(v45 + 1);
                  *(&v48 + 1) = HIDWORD(*v45);
                  *(v44 - 2) = v49;
                  *(v44 - 1) = v50;
                  *v44 = v51;
                  v44[1] = v48;
                  v44 += 4;
                  v45 += 32;
                  v46 -= 8;
                }

                while (v46);
                if (v43 == v41)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                v41 = 0;
                v42 = __src;
              }

              v52 = &v38[4 * v37];
              v53 = &v39[8 * v41];
              do
              {
                v54 = *v42++;
                *v53 = v54;
                v53 += 8;
              }

              while (v42 != v52);
LABEL_59:
              v55 = *(a2 + 24);
              v114 = v17;
              IntegerType = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
              v105 = mlir::RankedTensorType::get(&v114, 1, IntegerType, 0);
              v57 = mlir::TensorType::operator mlir::ShapedType(&v105);
              v106 = mlir::DenseElementsAttr::getFromRawBuffer(v57, v58, __src, 4 * v119, 4, 1, 1);
              v110 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 1), v55, &v106);
              v59 = *(a2 + 24);
              v60 = v115;
              v61 = v116;
              ElementType = mlir::TensorType::getElementType(&v108);
              v106 = mlir::RankedTensorType::get(v60, v61, ElementType, 0);
              v63 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>((a3 + 1), v59, &v106, &v109, &v110);
              v109 = v63 - 16;
              v108 = *(v63 - 8) & 0xFFFFFFFFFFFFFFF8;
              if (v115 != v117)
              {
                free(v115);
              }

              if (__src != v120)
              {
                free(__src);
              }

LABEL_63:
              mlir::ArrayAttr::getValue(&v108);
              __src = v120;
              v119 = 0xC00000000;
              v115 = v117;
              v116 = 0xC00000000;
              v64 = mlir::ArrayAttr::getValue(&v108);
              if (v65)
              {
                v66 = 0;
                v67 = 8 * v65;
                do
                {
                  if (*(v64 + 8 * v66) != *&v122[4 * v66])
                  {
                    v68 = v119;
                    if (v119 >= HIDWORD(v119))
                    {
                      v71 = v64;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v120, v119 + 1, 4);
                      v64 = v71;
                      v68 = v119;
                    }

                    *(__src + v68) = v66;
                    LODWORD(v119) = v119 + 1;
                    v69 = *&v122[4 * v66];
                    v70 = v116;
                    if (v116 >= HIDWORD(v116))
                    {
                      v104 = v64;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v117, v116 + 1, 4);
                      v64 = v104;
                      v70 = v116;
                    }

                    *(v115 + v70) = v69;
                    LODWORD(v116) = v116 + 1;
                  }

                  ++v66;
                  v67 -= 8;
                }

                while (v67);
              }

              v72 = *(a2 + 24);
              v114 = v119;
              v73 = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
              v105 = mlir::RankedTensorType::get(&v114, 1, v73, 0);
              v74 = mlir::TensorType::operator mlir::ShapedType(&v105);
              v110 = mlir::DenseElementsAttr::getFromRawBuffer(v74, v75, v115, 4 * v116, 4, 1, 1);
              v106 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 1), v72, &v110);
              v76 = *(a2 + 24);
              v113 = v119;
              v77 = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
              v114 = mlir::RankedTensorType::get(&v113, 1, v77, 0);
              v78 = mlir::TensorType::operator mlir::ShapedType(&v114);
              v110 = mlir::DenseElementsAttr::getFromRawBuffer(v78, v79, __src, 4 * v119, 4, 1, 1);
              v105 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 1), v76, &v110);
              v110 = v112;
              v111 = 0x600000000;
              if (v17)
              {
                if (v17 < 7)
                {
                  v80 = 0;
                  v81 = v112;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v112, v17, 8);
                  v80 = v111;
                  v81 = v110;
                }

                if (v17 != v80)
                {
                  bzero(&v81[v80], 8 * (v17 - v80));
                }

                LODWORD(v111) = v17;
              }

              else
              {
                v81 = v112;
              }

              v82 = v123;
              if (!v123)
              {
                goto LABEL_88;
              }

              v83 = v122;
              v84 = (v123 - 1) & 0x3FFFFFFFFFFFFFFFLL;
              if (v84 > 6)
              {
                v87 = v84 + 1;
                v85 = (v84 + 1) & 0x7FFFFFFFFFFFFFF8;
                v86 = &v122[4 * v85];
                v88 = v81 + 4;
                v89 = v122 + 16;
                v90 = v85;
                do
                {
                  v91 = *(v89 - 1);
                  *&v92 = v91;
                  *(&v92 + 1) = SDWORD1(v91);
                  v93 = v92;
                  *&v92 = SDWORD2(v91);
                  *(&v92 + 1) = SHIDWORD(v91);
                  v94 = v92;
                  *&v92 = *v89;
                  *(&v92 + 1) = HIDWORD(*v89);
                  v95 = v92;
                  *&v92 = *(v89 + 1);
                  *(&v92 + 1) = HIDWORD(*v89);
                  *(v88 - 2) = v93;
                  *(v88 - 1) = v94;
                  *v88 = v95;
                  v88[1] = v92;
                  v88 += 4;
                  v89 += 32;
                  v90 -= 8;
                }

                while (v90);
                if (v87 == v85)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                v85 = 0;
                v86 = v122;
              }

              v96 = &v83[4 * v82];
              v97 = &v81[v85];
              do
              {
                v98 = *v86++;
                *v97++ = v98;
              }

              while (v86 != v96);
LABEL_88:
              v99 = mlir::TensorType::getElementType(&v108);
              v114 = mlir::RankedTensorType::get(v81, v17, v99, 0);
              v100 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &,mlir::ODIE::Compiler::CoreML::ConstantOp &>((a3 + 1), *(a2 + 24), &v114, &v109, &v106, &v105);
              ((*a3)[1])(a3, a2, v100);
              if (v110 != v112)
              {
                free(v110);
              }

              if (v115 != v117)
              {
                free(v115);
              }

              if (__src != v120)
              {
                free(__src);
              }

              if (v122 != v124)
              {
                free(v122);
              }

              return 1;
            }
          }

          else
          {
            v122 = __src;
            v123 = v119;
            __src = v120;
            v119 = 0;
          }
        }

        if (__src != v120)
        {
          free(__src);
          v17 = v123;
        }

        goto LABEL_25;
      }
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v25[24] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v7);
  v9 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v9)
  {
    v11 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
  }

  v18[0] = v9;
  v18[1] = v11;
  mlir::NamedAttribute::NamedAttribute(v19, **(v20[1] + 96), v9);
  mlir::NamedAttrList::push_back(v25, v19[0], v19[1]);
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v18);
  v13 = v22;
  if (v22 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, &v24, v22 + 1, 8);
    v13 = v22;
  }

  *(v21 + 8 * v13) = CallableForCallee;
  ++v22;
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v26[28] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6)
{
  v30[28] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(v26, v24, v23);
  }

  mlir::OperationState::OperationState(v26, a2, v13);
  v15 = *a3;
  v16 = *a5 - 16;
  v17 = *a6 - 16;
  v24[0] = *a4;
  v23[0] = v16;
  v25 = v17;
  mlir::OperationState::addOperands(v26, v24, 1uLL);
  mlir::OperationState::addOperands(v26, v23, 1uLL);
  mlir::OperationState::addOperands(v26, &v25, 1uLL);
  v18 = v28;
  if (v28 >= v29)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v30, v28 + 1, 8);
    v18 = v28;
  }

  *(v27 + 8 * v18) = v15;
  ++v28;
  v19 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v20;
}

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coreml.if", 9, v31, v9, 0, 0);
  *v8 = &unk_1F5B3D110;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock]";
    v32 = 99;
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

uint64_t mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[6] = *MEMORY[0x1E69E9840];
  v45 = 0;
  v5 = *(*(a2 + 72) + 24);
  v37[0] = &v45;
  *&v44[0] = v5;
  result = mlir::Value::getDefiningOp(v44);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v37, result);
    if (result)
    {
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v45, v44);
      *v37 = v44[0];
      *v38 = v44[1];
      v7 = &v48;
      mlir::DenseElementsAttr::IntElementIterator::operator*(v37, &v48);
      v9 = v49;
      if (v49 >= 0x41)
      {
        if (v9 - llvm::APInt::countLeadingZerosSlowCase(&v48) > 0x40)
        {
          goto LABEL_12;
        }

        v7 = v48;
      }

      if (*v7 == 1)
      {
        v10 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
        if (v10)
        {
          v11 = (v10 - 8);
        }

        else
        {
          v11 = 0;
        }

        if (v9 < 0x41)
        {
LABEL_21:
          v15 = *(a2 + 16);
          v16 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, v8);
          *(a3 + 24) = v15;
          *(a3 + 32) = v16;
          v37[0] = 0;
          v37[1] = 0;
          LODWORD(v38[0]) = 0;
          v40 = 0;
          v38[1] = 0;
          v39 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v18 = v11[5];
          v19 = v11 + 4;
          if (v18 != v11 + 4)
          {
            for (i = *v19; v18 != i; v18 = v18[1])
            {
              v21 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v18, v17);
              mlir::OpBuilder::clone((a3 + 8), v21, v37);
            }
          }

          v48 = v50;
          v49 = 0x600000000;
          Terminator = mlir::Block::getTerminator(v11, v17);
          if ((*(Terminator + 46) & 0x80) == 0 || (v23 = *(Terminator + 68), !v23))
          {
LABEL_38:
            v35 = *(a2 + 36);
            if (v35)
            {
              v36 = a2 - 16;
            }

            else
            {
              v36 = 0;
            }

            mlir::ValueRange::ValueRange(v47, v36, v35);
            mlir::ValueRange::ValueRange(v46, v48, v49);
            mlir::RewriterBase::replaceAllUsesWith(a3, v47[0], v47[1], v46[0], v46[1]);
            (*(*a3 + 16))(a3, a2);
            if (v48 != v50)
            {
              free(v48);
            }

            llvm::deallocate_buffer(v41, (16 * v43));
          }

          v24 = 0;
          v25 = *(Terminator + 72);
          while (1)
          {
            if (!LODWORD(v38[0]))
            {
              goto LABEL_27;
            }

            v28 = *(v25 + 32 * v24 + 24);
            v29 = 0x9DDFEA08EB382D69 * ((8 * v28 - 0xAE502812AA7333) ^ HIDWORD(v28));
            v30 = 0x9DDFEA08EB382D69 * (HIDWORD(v28) ^ (v29 >> 47) ^ v29);
            v31 = (-348639895 * ((v30 >> 47) ^ v30)) & (LODWORD(v38[0]) - 1);
            v32 = *(v37[0] + 2 * v31);
            if (v32 != v28)
            {
              break;
            }

LABEL_31:
            if (v31 == LODWORD(v38[0]))
            {
              goto LABEL_27;
            }

            v26 = *(v37[0] + 2 * v31 + 1);
            v27 = v49;
            if (v49 >= HIDWORD(v49))
            {
LABEL_33:
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v50, v27 + 1, 8);
              v27 = v49;
            }

LABEL_28:
            v48[v27] = v26;
            LODWORD(v49) = v49 + 1;
            if (++v24 == v23)
            {
              goto LABEL_38;
            }
          }

          v33 = 1;
          while (v32 != -4096)
          {
            v34 = v31 + v33++;
            v31 = v34 & (LODWORD(v38[0]) - 1);
            v32 = *(v37[0] + 2 * v31);
            if (v32 == v28)
            {
              goto LABEL_31;
            }
          }

LABEL_27:
          v26 = 0;
          v27 = v49;
          if (v49 >= HIDWORD(v49))
          {
            goto LABEL_33;
          }

          goto LABEL_28;
        }

LABEL_19:
        if (v48)
        {
          operator delete[](v48);
        }

        goto LABEL_21;
      }

LABEL_12:
      v12 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v13 = *(v12 + 24);
      if (v13 == v12 + 24 || v13 == 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = (v13 - 8);
      }

      if (v9 < 0x41)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow(uint64_t a1, unint64_t a2)
{
  v16 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v16);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 << 6;
    v9 = v4;
    do
    {
      *v9 = v9 + 16;
      *(v9 + 8) = 0x300000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v9, v6);
      }

      v10 = *(v6 + 40);
      *(v9 + 56) = *(v6 + 56);
      *(v9 + 40) = v10;
      v9 += 64;
      v6 += 64;
      v8 -= 64;
    }

    while (v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = v11 << 6;
      v13 = (v12 + v6 - 64);
      v14 = -v12;
      do
      {
        if (v13 + 2 != *v13)
        {
          free(*v13);
        }

        v13 -= 8;
        v14 += 64;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v15 = v16;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v15;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_6FuncOpENSA_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_1F5B3D1B0;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_6FuncOpENSA_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B3D1B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_6FuncOpENSA_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EEclEOSK_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v7 = *(result + 8);
    v6 = *(result + 16);
    v18 = *a2;
    result = mlir::DenseArrayAttr::getRawData(v6);
    v9 = *(v7 + 8);
    if (v9)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = result;
      v12 = *v7;
      v13 = 16 * v8 - 16;
      v14 = 8 * v9 - 8;
      while (1)
      {
        Value = mlir::AffineMapAttr::getValue(&v18);
        result = mlir::AffineMapAttr::getValue(v12);
        if (Value == result)
        {
          break;
        }

        v16 = &v18;
        if (v14)
        {
          v12 = (v12 + 8);
          v11 += 2;
          v17 = v13;
          v13 -= 16;
          v14 -= 8;
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v16 = v11;
LABEL_13:
      v4 = *v16;
    }

    *a3 = v4;
    v5 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_6FuncOpENSA_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_6FuncOpENS7_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_6FuncOpENS7_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_6FuncOpENS7_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_6FuncOpENS7_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_7GraphOpENSA_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_1F5B3D230;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_7GraphOpENSA_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B3D230;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_7GraphOpENSA_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EEclEOSK_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v7 = *(result + 8);
    v6 = *(result + 16);
    v18 = *a2;
    result = mlir::DenseArrayAttr::getRawData(v6);
    v9 = *(v7 + 8);
    if (v9)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = result;
      v12 = *v7;
      v13 = 16 * v8 - 16;
      v14 = 8 * v9 - 8;
      while (1)
      {
        Value = mlir::AffineMapAttr::getValue(&v18);
        result = mlir::AffineMapAttr::getValue(v12);
        if (Value == result)
        {
          break;
        }

        v16 = &v18;
        if (v14)
        {
          v12 = (v12 + 8);
          v11 += 2;
          v17 = v13;
          v13 -= 16;
          v14 -= 8;
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v16 = v11;
LABEL_13:
      v4 = *v16;
    }

    *a3 = v4;
    v5 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_7GraphOpENSA_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_7GraphOpENS7_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_7GraphOpENS7_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_7GraphOpENS7_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_7GraphOpENS7_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 48);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coreml.expand_dims", 18, v31, v9, 0, 0);
  *v8 = &unk_1F5B3D2B0;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>]";
    v32 = 142;
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

uint64_t mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v47[6] = *MEMORY[0x1E69E9840];
  v41 = *(*(a2 + 72) + 24);
  v40 = *(v41 + 8) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::TensorType::hasRank(&v40);
  if (result)
  {
    Value = mlir::ArrayAttr::getValue(&v40);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    result = mlir::TensorType::hasRank(&v39);
    if (!result)
    {
      return result;
    }

    v9 = mlir::ArrayAttr::getValue(&v39);
    if (v10)
    {
      v11 = 8 * v10;
      while (*v9 != 0x8000000000000000)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }

LABEL_11:
    v12 = *(*(a2 + 72) + 56);
    v42 = &v43;
    v43 = 0;
    v45 = v12;
    result = mlir::Value::getDefiningOp(&v45);
    if (result)
    {
      result = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v42, result);
      if (result)
      {
        mlir::ArrayAttr::getValue(&v39);
        v45 = v47;
        v46 = 0xC00000000;
        if (v13)
        {
          v14 = v13;
          if (v13 < 0xD)
          {
            v15 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v13, 4);
            v15 = v46;
          }

          if (v14 != v15)
          {
            bzero(v45 + 4 * v15, 4 * (v14 - v15));
          }

          LODWORD(v46) = v14;
        }

        v16 = mlir::ArrayAttr::getValue(&v39);
        if (!v17)
        {
          goto LABEL_30;
        }

        v18 = v45;
        v19 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v19 > 6)
        {
          v22 = v19 + 1;
          v20 = (v19 + 1) & 0x3FFFFFFFFFFFFFF8;
          v21 = (v16 + 8 * v20);
          v23 = (v45 + 16);
          v24 = (v16 + 32);
          v25 = v20;
          do
          {
            v27 = v24[-2];
            v26 = v24[-1];
            v29 = *v24;
            v28 = v24[1];
            v24 += 4;
            v23[-1] = vuzp1q_s32(v27, v26);
            *v23 = vuzp1q_s32(v29, v28);
            v23 += 2;
            v25 -= 8;
          }

          while (v25);
          if (v22 == v20)
          {
LABEL_30:
            v32 = *(a2 + 24);
            mlir::ArrayAttr::getValue(&v39);
            v44 = v33;
            IntegerType = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
            v38 = mlir::RankedTensorType::get(&v44, 1, IntegerType, 0);
            v35 = mlir::TensorType::operator mlir::ShapedType(&v38);
            v42 = mlir::DenseElementsAttr::getFromRawBuffer(v35, v36, v45, 4 * v46, 4, 1, 1);
            v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 1), v32, &v42);
            v37 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>((a3 + 1), *(a2 + 24), &v39, &v41, &v43);
            ((*a3)[1])(a3, a2, v37);
            if (v45 != v47)
            {
              free(v45);
            }

            return 1;
          }
        }

        else
        {
          v20 = 0;
          v21 = v16;
        }

        v30 = &v18[4 * v20];
        do
        {
          v31 = *v21++;
          *v30 = v31;
          v30 += 4;
        }

        while (v21 != (v16 + 8 * v17));
        goto LABEL_30;
      }
    }
  }

  return result;
}

void mlir::RewritePatternSet::addImpl<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "coreml.shrink_dims", 18, v31, v9, 0, 0);
  *v8 = &unk_1F5B3D350;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>]";
    v32 = 142;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_(mlir::ODIE::Compiler::CoreML::AsyncValueType **a1, mlir::AsmParser *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(*a1, a2);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties]";
  v6 = 124;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 128;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties]";
  v6 = 128;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ErrorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 48);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties]";
  v6 = 124;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties]";
  v6 = 124;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties]";
  v6 = 133;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties]";
  v6 = 131;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::PlaceholderOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = v30 + v22;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = v30 + v23;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

__n128 OUTLINED_FUNCTION_6_20@<Q0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 24 * v1);
  result = *v2;
  v3[1].n128_u64[0] = v2[1].n128_u64[0];
  *v3 = result;
  return result;
}

void OUTLINED_FUNCTION_33_6()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void OUTLINED_FUNCTION_34_12()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v1 + 32, v0 + 1, 24);
}

void OUTLINED_FUNCTION_35_12()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v1 + 32, v0 + 1, 24);
}

void OUTLINED_FUNCTION_44_8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v2, a2 + 1, 24);
}

void OUTLINED_FUNCTION_45_4(uint64_t a1)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v2, v1 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_66_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v35 - 96) = a2;
  a35 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);

  return mlir::AffineMapAttr::getValue(&a35);
}

uint64_t OUTLINED_FUNCTION_67_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 2) = 32;
  *a2 = 14880;
  *(result + 32) += 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  a9 = **(*(*v9 + 48) + 96);

  return mlir::OpaqueAttr::getAttrData(&a9);
}

void OUTLINED_FUNCTION_70_6(uint64_t a1, Location a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = *(a7 + 24);

  mlir::emitError(v9, a2, va);
}

uint64_t OUTLINED_FUNCTION_72_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return mlir::DiagnosticArgument::DiagnosticArgument(va, a4);
}

uint64_t *OUTLINED_FUNCTION_86_7@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a8 = a1;
  a9 = v34;

  return mlir::OperandRange::getTypes(&a8, &a34);
}

uint64_t *OUTLINED_FUNCTION_87_7@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a8 = a1;
  a9 = v34;

  return mlir::OperandRange::getTypes(&a8, &a34);
}

uint64_t OUTLINED_FUNCTION_89_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  *(v44 - 128) = v41;
  *(v44 - 120) = v43;
  *(v44 - 112) = &a11;
  *(v44 - 104) = v42;

  return mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement(&a41, v44 - 128);
}

void OUTLINED_FUNCTION_90_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, llvm *a47, uint64_t a48, unsigned int a49)
{

  llvm::deallocate_buffer(a47, (16 * a49));
}

uint64_t OUTLINED_FUNCTION_116_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return mlir::InFlightDiagnostic::InFlightDiagnostic(&a41, &a15);
}

void OUTLINED_FUNCTION_117_5(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  operator delete(a1);
}

void OUTLINED_FUNCTION_118_6(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{

  operator delete(a1);
}

uint64_t mlir::ODIE::Compiler::CoreML::TransformCastOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::TransformCastOp *this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLTransformOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLTransformOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLTransformOps1(uint64_t a1, uint64_t *a2, void *a3, void *a4, unsigned int a5)
{
  v80 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v62 = a3;
    v63 = a1;
    v60 = v7;
    v61 = a4;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    a4 = v61;
    a3 = v62;
    a1 = v63;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v60 + 8);
    v10 = *(v60 + 16);
    if (!v10)
    {
      goto LABEL_13;
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
    v44 = *a2;
    {
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = *(v44 + 8);
      v47 = *(v44 + 16);
      if (!v47)
      {
        goto LABEL_68;
      }
    }

    else
    {
      mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = *(v44 + 8);
      v47 = *(v44 + 16);
      if (!v47)
      {
        goto LABEL_68;
      }
    }

    v48 = v46;
    v49 = v47;
    do
    {
      v50 = v49 >> 1;
      v51 = &v48[2 * (v49 >> 1)];
      v53 = *v51;
      v52 = v51 + 2;
      v49 += ~(v49 >> 1);
      if (v53 < v45)
      {
        v48 = v52;
      }

      else
      {
        v49 = v50;
      }
    }

    while (v49);
    if (v48 != &v46[2 * v47] && *v48 == v45)
    {
      v55 = v48[1];
      goto LABEL_70;
    }

LABEL_68:
    v55 = 0;
LABEL_70:
    v69[0] = a2;
    v69[1] = v55;
    mlir::ElementsAttr::isSplat(v69);
    return 1;
  }

LABEL_13:
  v65 = 261;
  v64[0] = a3;
  v64[1] = a4;
  mlir::Operation::emitOpError(a1, v64, v69);
  if (v69[0])
  {
    v66 = 3;
    v67 = " #";
    v68 = 2;
    v17 = &v66;
    v18 = v70;
    if (v71 >= v72)
    {
      if (v70 <= &v66 && v70 + 24 * v71 > &v66)
      {
        v56 = &v66 - v70;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
        v18 = v70;
        v17 = (v70 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
        v17 = &v66;
        v18 = v70;
      }
    }

    v19 = &v18[24 * v71];
    v20 = *v17;
    *(v19 + 2) = *(v17 + 2);
    *v19 = v20;
    v21 = ++v71;
    if (v69[0])
    {
      v66 = 5;
      v67 = a5;
      v22 = &v66;
      v23 = v70;
      if (v21 >= v72)
      {
        if (v70 <= &v66 && v70 + 24 * v21 > &v66)
        {
          v57 = &v66 - v70;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v21 + 1, 24);
          v23 = v70;
          v22 = (v70 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v21 + 1, 24);
          v22 = &v66;
          v23 = v70;
        }
      }

      v24 = &v23[24 * v71];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v71;
      if (v69[0])
      {
        v66 = 3;
        v67 = " must be shaped of any type values, but got ";
        v68 = 44;
        v27 = &v66;
        v28 = v70;
        if (v26 >= v72)
        {
          if (v70 <= &v66 && v70 + 24 * v26 > &v66)
          {
            v58 = &v66 - v70;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v26 + 1, 24);
            v28 = v70;
            v27 = (v70 + v58);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v26 + 1, 24);
            v27 = &v66;
            v28 = v70;
          }
        }

        v29 = &v28[24 * v71];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v71;
        if (v69[0])
        {
          v31 = &v66;
          mlir::DiagnosticArgument::DiagnosticArgument(&v66, a2);
          v32 = v70;
          if (v71 >= v72)
          {
            if (v70 <= &v66 && v70 + 24 * v71 > &v66)
            {
              v59 = &v66 - v70;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
              v32 = v70;
              v31 = (v70 + v59);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
              v31 = &v66;
              v32 = v70;
            }
          }

          v33 = &v32[24 * v71];
          v34 = *v31;
          *(v33 + 2) = *(v31 + 2);
          *v33 = v34;
          ++v71;
        }
      }
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v69);
  if (v69[0])
  {
    mlir::InFlightDiagnostic::report(v69);
  }

  if (v79 == 1)
  {
    if (v78 != &v79)
    {
      free(v78);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v77;
      v38 = __p;
      if (v77 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v77 = v36;
      operator delete(v38);
    }

    v39 = v74;
    if (v74)
    {
      v40 = v75;
      v41 = v74;
      if (v75 != v74)
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
        v41 = v74;
      }

      v75 = v39;
      operator delete(v41);
    }

    if (v70 != v73)
    {
      free(v70);
    }
  }

  return v35;
}

uint64_t mlir::ODIE::Compiler::CoreML::TransformCastOp::parse(uint64_t a1, uint64_t a2)
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

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  if (!mlir::AsmParser::parseType<mlir::ShapedType>(a1, &v12))
  {
    return 0;
  }

  v8 = v12;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &v12) & 1) == 0)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  if (!mlir::AsmParser::parseType<mlir::ShapedType>(a1, &v12))
  {
    return 0;
  }

  v6 = v12;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::OperationState::addTypes(a2, &v6, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

void mlir::ODIE::Compiler::CoreML::TransformCastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v30[4] = *MEMORY[0x1E69E9840];
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
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
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

  NextResultAtOffset = *(*(*this + 9) + 24);
  Type = mlir::detail::TypedValue<mlir::ShapedType>::getType(&NextResultAtOffset);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::ShapedType,llvm::CastInfo<mlir::ShapedType,mlir::ShapedType,void>>::doCastIfPossible(Type);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = Type;
  }

  (*(*a2 + 32))(a2, v14);
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
  if (v17[3] - v18 > 1uLL)
  {
    *v18 = 28532;
    v17[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, "to", 2uLL);
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

  if (*(*this + 9))
  {
    v21 = *this - 16;
  }

  else
  {
    v21 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v22 = mlir::detail::TypedValue<mlir::ShapedType>::getType(&NextResultAtOffset);
  v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::ShapedType,llvm::CastInfo<mlir::ShapedType,mlir::ShapedType,void>>::doCastIfPossible(v22);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  (*(*a2 + 32))(a2, v24);
  NextResultAtOffset = v30;
  v29 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v26, NextResultAtOffset, v29);
  if (NextResultAtOffset != v30)
  {
    free(NextResultAtOffset);
  }
}

void *llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::ShapedType,llvm::CastInfo<mlir::ShapedType,mlir::ShapedType,void>>::doCastIfPossible(void *result)
{
  if (result)
  {
    v1 = *result;
    {
      v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      v11 = v1;
      v12 = result;
      mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
      result = v12;
      v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v3 = *(v11 + 8);
      v4 = *(v11 + 16);
      if (!v4)
      {
        return result;
      }
    }

    v5 = v3;
    v6 = v4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v6 += ~(v6 >> 1);
      if (v10 < v2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  return result;
}

BOOL mlir::AsmParser::parseType<mlir::ShapedType>(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 536))(a1, &v19) & 1) == 0)
  {
    return 0;
  }

  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v19);
  *a2 = v5;
  a2[1] = v6;
  if (v5)
  {
    return 1;
  }

  v17 = "invalid kind of type specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v4, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v8 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v8;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v8;
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
      result = v8;
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
      result = v8;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Transforms::getValuesNotUsedByOps@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 24);
  v4 = *(result + 32);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v4)
  {
    v5 = result;
    v6 = v3 + 8 * v4;
    do
    {
      v7 = *(*v3 + 36);
      if (v7)
      {
        v8 = *v3 - 16;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
          v13 = *result;
          if (*result)
          {
            v16 = *(v5 + 16);
            if (v16)
            {
              v17 = *v5;
              v18 = v16 - 1;
              while (1)
              {
                v10 = v13[2];
                v11 = ((v10 >> 4) ^ (v10 >> 9)) & v18;
                v12 = *(v17 + 8 * v11);
                if (v12 != v10)
                {
                  break;
                }

LABEL_10:
                if (v11 == v16)
                {
                  goto LABEL_20;
                }

                v13 = *v13;
                if (!v13)
                {
                  goto LABEL_23;
                }
              }

              v14 = 1;
              while (v12 != -4096)
              {
                v15 = v11 + v14++;
                v11 = v15 & v18;
                v12 = *(v17 + 8 * v11);
                if (v12 == v10)
                {
                  goto LABEL_10;
                }
              }
            }

LABEL_20:
            result = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
            v19 = *(a2 + 8);
            if (v19 >= *(a2 + 12))
            {
              v20 = result;
              llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v19 + 1, 8);
              result = v20;
              v19 = *(a2 + 8);
            }

            *(*a2 + 8 * v19) = result;
            ++*(a2 + 8);
          }

LABEL_23:
          ;
        }
      }

      v3 += 8;
    }

    while (v3 != v6);
  }

  return result;
}

void mlir::ODIE::Compiler::Transforms::fixupResultTokens(llvm *a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v37[0] = a1;
  v37[1] = 0;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(v37, v5) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        break;
      }

      v5 = (v37[1] + 1);
      v37[1] = v5;
    }

    while (v5 != *(&v38 + 1));
  }

  v34 = *v37;
  v35 = v38;
  v36 = v39;
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v38) = 0;
  __src = 0;
  v6 = *(&v34 + 1);
  while (v6 != a2)
  {
    v31 = __src;
    v32 = mlir::ValueRange::dereference_iterator(&v34, v6);
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](v37, &v32) = v31;
    v6 = *(&v34 + 1) + 1;
    __src = __src + 1;
    for (*(&v34 + 1) = v6; v6 != *(&v35 + 1); *(&v34 + 1) = v6)
    {
      v18 = mlir::ValueRange::dereference_iterator(&v34, v6);
      v6 = *(&v34 + 1);
      if (*(*(*(v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        break;
      }

      v6 = *(&v34 + 1) + 1;
    }
  }

  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *a3 + 8 * v8;
  v10 = *a3;
  if (v8)
  {
    v11 = 8 * v8;
    v10 = *a3;
    do
    {
      if (*(*(*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        goto LABEL_11;
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
    __src = &v34 + 8;
    *&v34 = 0x600000000;
    v12 = &v34 + 8;
  }

  else
  {
LABEL_11:
    __src = &v34 + 8;
    *&v34 = 0x600000000;
    if (v10 == v9)
    {
      LODWORD(v11) = 0;
      v12 = &v34 + 8;
      LODWORD(v34) = 0;
      v9 = v7 + 8 * v8;
      v19 = v7;
      if (!v8)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = v13++;
        do
        {
          if (++v14 == v9)
          {
            goto LABEL_17;
          }
        }

        while (*(*(*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
      }

      while (v14 != v9);
LABEL_17:
      if (v15 < 6)
      {
        v16 = 0;
        v17 = 0;
        v12 = &v34 + 8;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v34 + 8, v13, 8);
        v16 = v34;
        v12 = __src;
        v17 = v34;
      }

      v20 = &v12[8 * v16];
      do
      {
        v21 = *v10++;
        *v20 = v21;
        if (v10 == v9)
        {
          break;
        }

        while (*(*(*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
        {
          if (++v10 == v9)
          {
            goto LABEL_34;
          }
        }

        v20 += 8;
      }

      while (v10 != v9);
LABEL_34:
      LODWORD(v11) = v17 + v13;
      v7 = *a3;
      v22 = *(a3 + 8);
      LODWORD(v34) = v11;
      v9 = v7 + 8 * v22;
      v19 = v7;
      if (!v22)
      {
LABEL_39:
        if (v19 != v9)
        {
          for (i = v19 + 8; i != v9; i += 8)
          {
            if (*(*(*(*i + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
            {
              *v19 = *i;
              v19 += 8;
            }
          }
        }

        v9 = v19;
LABEL_46:
        *(a3 + 8) = (v9 - v7) >> 3;
        v30 = v37;
        v31 = &v30;
        v24 = 126 - 2 * __clz(v11);
        if (v11)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,false>(v12, &v12[8 * v11], &v31, v25, 1);
        v26 = __src;
        v27 = v34;
        v28 = *(a3 + 8);
        v29 = v28 + v34;
        if (v29 > *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v29, 8);
          LODWORD(v28) = *(a3 + 8);
        }

        if (v27)
        {
          memcpy((*a3 + 8 * v28), v26, 8 * v27);
          LODWORD(v28) = *(a3 + 8);
        }

        *(a3 + 8) = v28 + v27;
        if (__src != &v34 + 8)
        {
          free(__src);
        }

        llvm::deallocate_buffer(v37[0], (16 * v38));
      }
    }
  }

  v19 = v7;
  while (*(*(*(*v19 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
  {
    v19 += 8;
    if (v19 == v9)
    {
      goto LABEL_46;
    }
  }

  goto LABEL_39;
}

uint64_t mlir::ODIE::Compiler::Transforms::segmentFunctionOpInterfaceForDelegate(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, mlir::ForwardIterator *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64[6] = *MEMORY[0x1E69E9840];
  v58[0] = a5;
  v58[1] = a6;
  v7 = a1 + 64;
  v8 = *(a1 + 44);
  v9 = (v8 >> 23) & 1;
  v10 = (v8 >> 21) & 0x7F8;
  v11 = 32 * *(a1 + 40);
  v12 = (((a1 + 64 + 16 * v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11);
  if (*v12 != v12)
  {
    v62 = v64;
    v63 = 0x600000000;
    v16 = v12[1];
    if (v16)
    {
      v17 = v16 - 8;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v17 + 40);
    v19 = (v17 + 32);
    if (v18 == v19 || (v20 = *v19, v18 == *v19))
    {
      v23 = 0;
      v26 = v64;
    }

    else
    {
      do
      {
        v21 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v18, a2);
        v22 = v63;
        if (v63 >= HIDWORD(v63))
        {
          v24 = v21;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v63 + 1, 8);
          v21 = v24;
          v22 = v63;
        }

        v62[v22] = v21;
        v23 = v63 + 1;
        LODWORD(v63) = v63 + 1;
        v18 = v18[1];
      }

      while (v18 != v20);
      v25 = *(a1 + 44);
      v26 = v62;
      v9 = (v25 >> 23) & 1;
      v10 = (v25 >> 21) & 0x7F8;
      v11 = 32 * *(a1 + 40);
    }

    v57 = 0;
    v49[0] = 0;
    v49[1] = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v60[0] = v61;
    v60[1] = 0x600000000;
    v48[0] = a7;
    v48[1] = &v57;
    v48[2] = v49;
    v48[3] = v60;
    v27 = *(a1 + 24);
    v48[4] = v58;
    v48[5] = v27;
    v47[0] = a7;
    v47[1] = v49;
    v46[0] = a7;
    v46[1] = &v57;
    v28 = *(((v7 + 16 * v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8);
    if (v28)
    {
      v29 = v28 - 8;
    }

    else
    {
      v29 = 0;
    }

    v46[2] = v29;
    v46[3] = v49;
    v46[4] = v60;
    if (!v23)
    {
LABEL_33:
      v40 = *(((v7 + 16 * v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8);
      if (v40)
      {
        v41 = (v40 - 8);
      }

      else
      {
        v41 = 0;
      }

      Terminator = mlir::Block::getTerminator(v41, a2);
      mlir::ODIE::Compiler::Transforms::segmentFunctionOpInterfaceForDelegate(mlir::FunctionOpInterface,llvm::function_ref<llvm::LogicalResult ()(mlir::Operation *)>,llvm::StringRef,mlir::IRRewriter &)::$_1::operator()(v48, Terminator);
      if (v60[0] != v61)
      {
        free(v60[0]);
      }

      llvm::deallocate_buffer(v54, (16 * v56));
    }

    v30 = 8 * v23;
    v31 = a3;
    while (1)
    {
      v32 = *v26;
      if (*v26)
      {
        v33 = *(*(*v26 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        goto LABEL_17;
      }

      {
        mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes();
      }

      if ((*(**(v32 + 6) + 32))(*(v32 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        goto LABEL_18;
      }

      if ((v31(a4, v32) & 1) == 0)
      {
LABEL_17:
        mlir::ODIE::Compiler::Transforms::segmentFunctionOpInterfaceForDelegate(mlir::FunctionOpInterface,llvm::function_ref<llvm::LogicalResult ()(mlir::Operation *)>,llvm::StringRef,mlir::IRRewriter &)::$_1::operator()(v48, v32);
      }

      else
      {
        Block = v57;
        if (!v57)
        {
          v35 = a4;
          v36 = v7;
          v37 = ((v7 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
          mlir::ValueRange::ValueRange(v59, 0, 0);
          v38 = v37;
          v7 = v36;
          a4 = v35;
          v31 = a3;
          Block = mlir::OpBuilder::createBlock((a7 + 8), v38, 0, v59[0], v59[1], 0, 0);
          v57 = Block;
        }

        v45 = *(a7 + 24);
        *(a7 + 24) = Block;
        *(a7 + 32) = Block + 32;
        mlir::detail::walk<mlir::ForwardIterator>(v32, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::segmentFunctionOpInterfaceForDelegate(mlir::FunctionOpInterface,llvm::function_ref<llvm::LogicalResult ()(mlir::Operation *)>,llvm::StringRef,mlir::IRRewriter &)::$_3 const>, v46, 0);
        mlir::RewriterBase::moveOpBefore(a7, v32, v57, v57 + 4);
        mlir::detail::walk<mlir::ForwardIterator>(v32, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::segmentFunctionOpInterfaceForDelegate(mlir::FunctionOpInterface,llvm::function_ref<llvm::LogicalResult ()(mlir::Operation *)>,llvm::StringRef,mlir::IRRewriter &)::$_2 const>, v47, 0);
        if (v45)
        {
          *(a7 + 24) = v45;
        }

        else
        {
          *(a7 + 24) = 0;
          *(a7 + 32) = 0;
        }
      }

LABEL_18:
      ++v26;
      v30 -= 8;
      if (!v30)
      {
        v39 = *(a1 + 44);
        v9 = (v39 >> 23) & 1;
        v10 = (v39 >> 21) & 0x7F8;
        v11 = 32 * *(a1 + 40);
        goto LABEL_33;
      }
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::Transforms::segmentFunctionOpInterfaceForDelegate(mlir::FunctionOpInterface,llvm::function_ref<llvm::LogicalResult ()(mlir::Operation *)>,llvm::StringRef,mlir::IRRewriter &)::$_1::operator()(uint64_t result, uint64_t a2)
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = **(result + 8);
  if (v2)
  {
    v3 = v2 + 4;
    if (v2[4] != v2 + 4)
    {
      v8 = 0;
      *v7 = 0u;
      v9 = v11;
      v10 = 0;
      v12[0] = v7;
      v4 = v2[5];
      if (v4 != v3)
      {
        do
        {
          v5 = v4[1];
          v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v4, a2);
          mlir::detail::walk<mlir::ForwardIterator>(v6, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::createIsolatedGroupOp(mlir::RewriterBase &,mlir::Location,mlir::Operation&,mlir::Block &,llvm::SmallVector<mlir::Value,6u> const&,llvm::StringRef)::$_0>, v12, 1);
          v4 = v5;
        }

        while (v5 != v3);
      }

      mlir::ODIE::Compiler::Transforms::getValuesNotUsedByOps(v7, v12);
      mlir::ValueRange::ValueRange(v11, v2[6], (v2[7] - v2[6]) >> 3);
      mlir::ODIE::Compiler::Transforms::fixupResultTokens(v11[0], v11[1], v12);
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,llvm::ArrayRef<mlir::Type>,llvm::SmallVector<mlir::Value,6u> const&,mlir::StringAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,llvm::ArrayRef<mlir::Type>,llvm::SmallVector<mlir::Value,6u> const&,mlir::StringAttr>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5);
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::createIsolatedGroupOp(mlir::RewriterBase &,mlir::Location,mlir::Operation&,mlir::Block &,llvm::SmallVector<mlir::Value,6u> const&,llvm::StringRef)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2, &v5, v6);
  if (v6[16] == 1)
  {
    v3 = v5;
    v4 = *(v2 + 32);
    if (v4 >= *(v2 + 36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v2 + 40, v4 + 1, 8);
      LODWORD(v4) = *(v2 + 32);
    }

    *(*(v2 + 24) + 8 * v4) = v3;
    ++*(v2 + 32);
  }
}

uint64_t llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::ODIE::Compiler::Transforms::createIsolatedGroupOp(mlir::RewriterBase &,mlir::Location,mlir::Operation &,mlir::Block &,llvm::SmallVector<mlir::Value,6u> const&,llvm::StringRef)::$_1>(uint64_t a1, uint64_t a2)
{
  ParentOp = *(a2 + 16);
  while (1)
  {
    v3 = *(ParentOp + 16);
    if (!v3)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v3);
    if (!ParentOp)
    {
      break;
    }

    if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,false>(unint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v527 = result;
LABEL_2:
  v513 = a2 - 1;
  v6 = v527;
  while (1)
  {
    v7 = a2 - v6;
    v527 = v6;
    if (v7 > 2)
    {
      v8 = v6;
      switch(v7)
      {
        case 3:
          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(v6, v6 + 1, v513, a3);
        case 4:
          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(v6, v6 + 1, v6 + 2, v513, a3);
        case 5:
          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(v6, v6 + 1, v6 + 2, v6 + 3, v513, a3);
      }

      goto LABEL_10;
    }

    if (v7 < 2)
    {
      return result;
    }

    v8 = v6;
    if (v7 == 2)
    {
      break;
    }

LABEL_10:
    if (v7 <= 23)
    {
      v280 = v8 + 1;
      v282 = v8 == a2 || v280 == a2;
      if (a5)
      {
        if (v282)
        {
          return result;
        }

        v283 = v6;
LABEL_438:
        v285 = v280;
        v286 = *v283;
        v287 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v283[1]);
        if (HandleForToken)
        {
          v288 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v287, &HandleForToken);
          v289 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v286);
          HandleForToken = result;
          if (result)
          {
            goto LABEL_440;
          }
        }

        else
        {
          v288 = -1;
          v289 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v286);
          HandleForToken = result;
          if (result)
          {
LABEL_440:
            result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v289, &HandleForToken);
            if (v288 >= *result)
            {
              goto LABEL_437;
            }

LABEL_444:
            v290 = *v285;
            v284 = v285;
            while (1)
            {
              while (1)
              {
                *v284 = *v283;
                if (v283 == v527)
                {
                  v284 = v527;
LABEL_436:
                  *v284 = v290;
LABEL_437:
                  v280 = v285 + 1;
                  v283 = v285;
                  if (v285 + 1 == a2)
                  {
                    return result;
                  }

                  goto LABEL_438;
                }

                v284 = v283;
                v292 = *--v283;
                v291 = v292;
                v293 = *a3;
                v294 = mlir::ODIE::Compiler::getHandleForToken(v290);
                if (v294)
                {
                  break;
                }

                v307 = -1;
                v308 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v291);
                if (result)
                {
                  goto LABEL_467;
                }

LABEL_445:
                if (v307 >= -1)
                {
                  goto LABEL_436;
                }
              }

              v295 = *v293;
              v296 = *(v295 + 16);
              if (!v296)
              {
                break;
              }

              v297 = 0x9DDFEA08EB382D69 * ((8 * v294 - 0xAE502812AA7333) ^ HIDWORD(v294));
              v298 = 0x9DDFEA08EB382D69 * (HIDWORD(v294) ^ (v297 >> 47) ^ v297);
              v299 = v296 - 1;
              v300 = (v296 - 1) & (-348639895 * ((v298 >> 47) ^ v298));
              v301 = (*v295 + 16 * v300);
              v302 = *v301;
              if (*v301 == v294)
              {
                goto LABEL_466;
              }

              v303 = 0;
              v304 = 1;
              while (v302 != -4096)
              {
                if (v303)
                {
                  v305 = 0;
                }

                else
                {
                  v305 = v302 == -8192;
                }

                if (v305)
                {
                  v303 = v301;
                }

                v306 = v300 + v304++;
                v300 = v306 & v299;
                v301 = (*v295 + 16 * (v306 & v299));
                v302 = *v301;
                if (*v301 == v294)
                {
                  goto LABEL_466;
                }
              }

              if (v303)
              {
                v301 = v303;
              }

              v321 = *(v295 + 8);
              if (4 * v321 + 4 >= 3 * v296)
              {
                break;
              }

              if (v296 + ~v321 - *(v295 + 12) <= v296 >> 3)
              {
                v322 = v294;
LABEL_494:
                llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v295, v296);
                v325 = *(v295 + 16);
                if (v325)
                {
                  v294 = v322;
                  v326 = 0x9DDFEA08EB382D69 * ((8 * v322 - 0xAE502812AA7333) ^ HIDWORD(v322));
                  v327 = 0x9DDFEA08EB382D69 * (HIDWORD(v322) ^ (v326 >> 47) ^ v326);
                  LODWORD(v326) = -348639895 * ((v327 >> 47) ^ v327);
                  v328 = v325 - 1;
                  v329 = (v325 - 1) & v326;
                  v301 = (*v295 + 16 * v329);
                  v330 = *v301;
                  if (*v301 != v322)
                  {
                    v331 = 0;
                    v332 = 1;
                    while (v330 != -4096)
                    {
                      if (v331)
                      {
                        v333 = 0;
                      }

                      else
                      {
                        v333 = v330 == -8192;
                      }

                      if (v333)
                      {
                        v331 = v301;
                      }

                      v334 = v329 + v332++;
                      v329 = v334 & v328;
                      v301 = (*v295 + 16 * (v334 & v328));
                      v330 = *v301;
                      if (*v301 == v322)
                      {
                        goto LABEL_518;
                      }
                    }

                    if (v331)
                    {
                      v301 = v331;
                    }
                  }
                }

                else
                {
                  v301 = 0;
                  v294 = v322;
                }

LABEL_518:
                ++*(v295 + 8);
                if (*v301 == -4096)
                {
                  goto LABEL_465;
                }

LABEL_464:
                --*(v295 + 12);
                goto LABEL_465;
              }

              *(v295 + 8) = v321 + 1;
              if (*v301 != -4096)
              {
                goto LABEL_464;
              }

LABEL_465:
              *v301 = v294;
              v301[1] = 0;
LABEL_466:
              v307 = *(v301 + 2);
              v308 = *a3;
              result = mlir::ODIE::Compiler::getHandleForToken(v291);
              if (!result)
              {
                goto LABEL_445;
              }

LABEL_467:
              v309 = *v308;
              v310 = *(*v308 + 16);
              if (!v310)
              {
                goto LABEL_492;
              }

              v311 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
              v312 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v311 >> 47) ^ v311);
              v313 = v310 - 1;
              v314 = (v310 - 1) & (-348639895 * ((v312 >> 47) ^ v312));
              v315 = (*v309 + 16 * v314);
              v316 = *v315;
              if (*v315 != result)
              {
                v317 = 0;
                v318 = 1;
                while (v316 != -4096)
                {
                  if (v317)
                  {
                    v319 = 0;
                  }

                  else
                  {
                    v319 = v316 == -8192;
                  }

                  if (v319)
                  {
                    v317 = v315;
                  }

                  v320 = v314 + v318++;
                  v314 = v320 & v313;
                  v315 = (*v309 + 16 * (v320 & v313));
                  v316 = *v315;
                  if (*v315 == result)
                  {
                    goto LABEL_483;
                  }
                }

                if (v317)
                {
                  v315 = v317;
                }

                v323 = *(v309 + 8);
                if (4 * v323 + 4 >= 3 * v310)
                {
LABEL_492:
                  v324 = result;
                  v310 *= 2;
                  goto LABEL_506;
                }

                if (v310 + ~v323 - *(v309 + 12) <= v310 >> 3)
                {
                  v324 = result;
LABEL_506:
                  llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v309, v310);
                  v335 = *(v309 + 16);
                  if (v335)
                  {
                    result = v324;
                    v336 = 0x9DDFEA08EB382D69 * ((8 * v324 - 0xAE502812AA7333) ^ HIDWORD(v324));
                    v337 = 0x9DDFEA08EB382D69 * (HIDWORD(v324) ^ (v336 >> 47) ^ v336);
                    LODWORD(v336) = -348639895 * ((v337 >> 47) ^ v337);
                    v338 = v335 - 1;
                    v339 = (v335 - 1) & v336;
                    v315 = (*v309 + 16 * v339);
                    v340 = *v315;
                    if (*v315 != v324)
                    {
                      v341 = 0;
                      v342 = 1;
                      while (v340 != -4096)
                      {
                        if (v341)
                        {
                          v343 = 0;
                        }

                        else
                        {
                          v343 = v340 == -8192;
                        }

                        if (v343)
                        {
                          v341 = v315;
                        }

                        v344 = v339 + v342++;
                        v339 = v344 & v338;
                        v315 = (*v309 + 16 * (v344 & v338));
                        v340 = *v315;
                        if (*v315 == v324)
                        {
                          goto LABEL_521;
                        }
                      }

                      if (v341)
                      {
                        v315 = v341;
                      }
                    }
                  }

                  else
                  {
                    v315 = 0;
                    result = v324;
                  }

LABEL_521:
                  ++*(v309 + 8);
                  if (*v315 != -4096)
                  {
LABEL_481:
                    --*(v309 + 12);
                  }
                }

                else
                {
                  *(v309 + 8) = v323 + 1;
                  if (*v315 != -4096)
                  {
                    goto LABEL_481;
                  }
                }

                *v315 = result;
                v315[1] = 0;
              }

LABEL_483:
              if (v307 >= *(v315 + 2))
              {
                goto LABEL_436;
              }
            }

            v322 = v294;
            v296 *= 2;
            goto LABEL_494;
          }
        }

        if (v288 >= -1)
        {
          goto LABEL_437;
        }

        goto LABEL_444;
      }

      if (v282)
      {
        return result;
      }

      while (1)
      {
        v447 = v280;
        v448 = *v527;
        v449 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v527[1]);
        if (HandleForToken)
        {
          v450 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v449, &HandleForToken);
          v451 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v448);
          HandleForToken = result;
          if (!result)
          {
            goto LABEL_685;
          }
        }

        else
        {
          v450 = -1;
          v451 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v448);
          HandleForToken = result;
          if (!result)
          {
LABEL_685:
            if (v450 >= -1)
            {
              goto LABEL_679;
            }

LABEL_686:
            v452 = *v447;
            v453 = v447;
            while (2)
            {
              while (2)
              {
                v454 = v453;
                v453 = v527;
                *v454 = *v527;
                v455 = *--v527;
                v456 = *a3;
                v457 = mlir::ODIE::Compiler::getHandleForToken(v452);
                if (v457)
                {
                  v458 = *v456;
                  v459 = *(v458 + 16);
                  if (!v459)
                  {
                    goto LABEL_729;
                  }

                  v460 = 0x9DDFEA08EB382D69 * ((8 * v457 - 0xAE502812AA7333) ^ HIDWORD(v457));
                  v461 = 0x9DDFEA08EB382D69 * (HIDWORD(v457) ^ (v460 >> 47) ^ v460);
                  v462 = v459 - 1;
                  v463 = (v459 - 1) & (-348639895 * ((v461 >> 47) ^ v461));
                  v464 = (*v458 + 16 * v463);
                  v465 = *v464;
                  if (*v464 != v457)
                  {
                    v466 = 0;
                    v467 = 1;
                    while (v465 != -4096)
                    {
                      if (v466)
                      {
                        v468 = 0;
                      }

                      else
                      {
                        v468 = v465 == -8192;
                      }

                      if (v468)
                      {
                        v466 = v464;
                      }

                      v469 = v463 + v467++;
                      v463 = v469 & v462;
                      v464 = (*v458 + 16 * (v469 & v462));
                      v465 = *v464;
                      if (*v464 == v457)
                      {
                        goto LABEL_707;
                      }
                    }

                    if (v466)
                    {
                      v464 = v466;
                    }

                    v484 = *(v458 + 8);
                    if (4 * v484 + 4 >= 3 * v459)
                    {
LABEL_729:
                      v485 = v457;
                      v459 *= 2;
                      goto LABEL_735;
                    }

                    if (v459 + ~v484 - *(v458 + 12) <= v459 >> 3)
                    {
                      v485 = v457;
LABEL_735:
                      llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v458, v459);
                      v488 = *(v458 + 16);
                      if (v488)
                      {
                        v457 = v485;
                        v489 = 0x9DDFEA08EB382D69 * ((8 * v485 - 0xAE502812AA7333) ^ HIDWORD(v485));
                        v490 = 0x9DDFEA08EB382D69 * (HIDWORD(v485) ^ (v489 >> 47) ^ v489);
                        LODWORD(v489) = -348639895 * ((v490 >> 47) ^ v490);
                        v491 = v488 - 1;
                        v492 = (v488 - 1) & v489;
                        v464 = (*v458 + 16 * v492);
                        v493 = *v464;
                        if (*v464 != v485)
                        {
                          v494 = 0;
                          v495 = 1;
                          while (v493 != -4096)
                          {
                            if (v494)
                            {
                              v496 = 0;
                            }

                            else
                            {
                              v496 = v493 == -8192;
                            }

                            if (v496)
                            {
                              v494 = v464;
                            }

                            v497 = v492 + v495++;
                            v492 = v497 & v491;
                            v464 = (*v458 + 16 * (v497 & v491));
                            v493 = *v464;
                            if (*v464 == v485)
                            {
                              goto LABEL_759;
                            }
                          }

                          if (v494)
                          {
                            v464 = v494;
                          }
                        }
                      }

                      else
                      {
                        v464 = 0;
                        v457 = v485;
                      }

LABEL_759:
                      ++*(v458 + 8);
                      if (*v464 != -4096)
                      {
LABEL_705:
                        --*(v458 + 12);
                      }
                    }

                    else
                    {
                      *(v458 + 8) = v484 + 1;
                      if (*v464 != -4096)
                      {
                        goto LABEL_705;
                      }
                    }

                    *v464 = v457;
                    v464[1] = 0;
                  }

LABEL_707:
                  v470 = *(v464 + 2);
                  v471 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v455);
                  if (!result)
                  {
LABEL_687:
                    if (v470 >= -1)
                    {
                      goto LABEL_678;
                    }

                    continue;
                  }
                }

                else
                {
                  v470 = -1;
                  v471 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v455);
                  if (!result)
                  {
                    goto LABEL_687;
                  }
                }

                break;
              }

              v472 = *v471;
              v473 = *(*v471 + 16);
              if (v473)
              {
                v474 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
                v475 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v474 >> 47) ^ v474);
                v476 = v473 - 1;
                v477 = (v473 - 1) & (-348639895 * ((v475 >> 47) ^ v475));
                v478 = (*v472 + 16 * v477);
                v479 = *v478;
                if (*v478 != result)
                {
                  v480 = 0;
                  v481 = 1;
                  while (v479 != -4096)
                  {
                    if (v480)
                    {
                      v482 = 0;
                    }

                    else
                    {
                      v482 = v479 == -8192;
                    }

                    if (v482)
                    {
                      v480 = v478;
                    }

                    v483 = v477 + v481++;
                    v477 = v483 & v476;
                    v478 = (*v472 + 16 * (v483 & v476));
                    v479 = *v478;
                    if (*v478 == result)
                    {
                      goto LABEL_724;
                    }
                  }

                  if (v480)
                  {
                    v478 = v480;
                  }

                  v486 = *(v472 + 8);
                  if (4 * v486 + 4 >= 3 * v473)
                  {
                    break;
                  }

                  if (v473 + ~v486 - *(v472 + 12) > v473 >> 3)
                  {
                    *(v472 + 8) = v486 + 1;
                    if (*v478 != -4096)
                    {
                      goto LABEL_722;
                    }

                    goto LABEL_723;
                  }

                  v487 = result;
LABEL_747:
                  llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v472, v473);
                  v498 = *(v472 + 16);
                  if (v498)
                  {
                    result = v487;
                    v499 = 0x9DDFEA08EB382D69 * ((8 * v487 - 0xAE502812AA7333) ^ HIDWORD(v487));
                    v500 = 0x9DDFEA08EB382D69 * (HIDWORD(v487) ^ (v499 >> 47) ^ v499);
                    LODWORD(v499) = -348639895 * ((v500 >> 47) ^ v500);
                    v501 = v498 - 1;
                    v502 = (v498 - 1) & v499;
                    v478 = (*v472 + 16 * v502);
                    v503 = *v478;
                    if (*v478 != v487)
                    {
                      v504 = 0;
                      v505 = 1;
                      while (v503 != -4096)
                      {
                        if (v504)
                        {
                          v506 = 0;
                        }

                        else
                        {
                          v506 = v503 == -8192;
                        }

                        if (v506)
                        {
                          v504 = v478;
                        }

                        v507 = v502 + v505++;
                        v502 = v507 & v501;
                        v478 = (*v472 + 16 * (v507 & v501));
                        v503 = *v478;
                        if (*v478 == v487)
                        {
                          goto LABEL_762;
                        }
                      }

                      if (v504)
                      {
                        v478 = v504;
                      }
                    }
                  }

                  else
                  {
                    v478 = 0;
                    result = v487;
                  }

LABEL_762:
                  ++*(v472 + 8);
                  if (*v478 != -4096)
                  {
LABEL_722:
                    --*(v472 + 12);
                  }

LABEL_723:
                  *v478 = result;
                  v478[1] = 0;
                }

LABEL_724:
                if (v470 >= *(v478 + 2))
                {
LABEL_678:
                  *v453 = v452;
                  goto LABEL_679;
                }

                continue;
              }

              break;
            }

            v487 = result;
            v473 *= 2;
            goto LABEL_747;
          }
        }

        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v451, &HandleForToken);
        if (v450 < *result)
        {
          goto LABEL_686;
        }

LABEL_679:
        v280 = v447 + 1;
        v527 = v447;
        if (v447 + 1 == a2)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      if (v8 == a2)
      {
        return result;
      }

      v345 = (v7 - 2) >> 1;
      v521 = a2 - v6;
      v524 = v345;
      v346 = v6;
      while (1)
      {
        v347 = v345;
        if (v524 < v345)
        {
          goto LABEL_532;
        }

        v511 = v345;
        v348 = (2 * v345) | 1;
        v349 = &v346[v348];
        v350 = 2 * v345 + 2;
        if (v350 < v7)
        {
          break;
        }

LABEL_543:
        v347 = v511;
        v356 = &v346[v511];
        v357 = *v356;
        v358 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
        if (HandleForToken)
        {
          v359 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v358, &HandleForToken);
          v360 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v357);
          HandleForToken = result;
          if (!result)
          {
            goto LABEL_548;
          }
        }

        else
        {
          v359 = -1;
          v360 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v357);
          HandleForToken = result;
          if (!result)
          {
LABEL_548:
            v346 = v527;
            v7 = v521;
            if (v359 >= -1)
            {
LABEL_549:
              v518 = *v356;
              while (1)
              {
                while (1)
                {
                  v361 = v349;
                  *v356 = *v349;
                  if (v524 < v348)
                  {
LABEL_531:
                    *v361 = v518;
                    v347 = v511;
                    goto LABEL_532;
                  }

                  v362 = (2 * v348) | 1;
                  v349 = &v346[v362];
                  v363 = 2 * v348 + 2;
                  if (v363 < v7)
                  {
                    break;
                  }

                  v348 = (2 * v348) | 1;
                  v368 = *a3;
                  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
                  if (!HandleForToken)
                  {
                    goto LABEL_565;
                  }

LABEL_557:
                  v369 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v368, &HandleForToken);
                  v370 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v518);
                  HandleForToken = result;
                  if (!result)
                  {
                    goto LABEL_566;
                  }

LABEL_550:
                  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v370, &HandleForToken);
                  v7 = v521;
                  v356 = v361;
                  if (v369 < *result)
                  {
                    goto LABEL_531;
                  }
                }

                v364 = v349[1];
                v365 = *a3;
                HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
                if (HandleForToken)
                {
                  v514 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v365, &HandleForToken);
                  v366 = *a3;
                  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v364);
                  if (HandleForToken)
                  {
                    goto LABEL_555;
                  }
                }

                else
                {
                  v514 = -1;
                  v366 = *a3;
                  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v364);
                  if (HandleForToken)
                  {
LABEL_555:
                    v367 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v366, &HandleForToken);
                    goto LABEL_561;
                  }
                }

                v367 = -1;
LABEL_561:
                if (v514 >= v367)
                {
                  v348 = v362;
                }

                else
                {
                  ++v349;
                  v348 = v363;
                }

                v346 = v527;
                v368 = *a3;
                HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
                if (HandleForToken)
                {
                  goto LABEL_557;
                }

LABEL_565:
                v369 = -1;
                v370 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v518);
                HandleForToken = result;
                if (result)
                {
                  goto LABEL_550;
                }

LABEL_566:
                v7 = v521;
                v356 = v361;
                if (v369 < -1)
                {
                  goto LABEL_531;
                }
              }
            }

            goto LABEL_532;
          }
        }

        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v360, &HandleForToken);
        v346 = v527;
        v7 = v521;
        if (v359 >= *result)
        {
          goto LABEL_549;
        }

LABEL_532:
        v345 = v347 - 1;
        if (!v347)
        {
          while (1)
          {
            v372 = 0;
            v373 = v527;
            v515 = *v527;
            v374 = (v7 - 2) >> 1;
            v519 = v374;
            v522 = v7;
            do
            {
              while (1)
              {
                v375 = &v373[v372];
                v376 = v375 + 1;
                v377 = (2 * v372) | 1;
                v378 = 2 * v372 + 2;
                if (v378 < v7)
                {
                  break;
                }

                v372 = (2 * v372) | 1;
                *v373 = *v376;
                v373 = v375 + 1;
                if (v377 > v374)
                {
                  goto LABEL_659;
                }
              }

              v381 = v375[2];
              v380 = v375 + 2;
              v379 = v381;
              v382 = *a3;
              v383 = mlir::ODIE::Compiler::getHandleForToken(*(v380 - 1));
              if (!v383)
              {
                v525 = -1;
                v396 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v379);
                if (!result)
                {
                  goto LABEL_586;
                }

                goto LABEL_593;
              }

              v384 = *v382;
              v385 = *(v384 + 16);
              if (!v385)
              {
                goto LABEL_618;
              }

              v386 = 0x9DDFEA08EB382D69 * ((8 * v383 - 0xAE502812AA7333) ^ HIDWORD(v383));
              v387 = 0x9DDFEA08EB382D69 * (HIDWORD(v383) ^ (v386 >> 47) ^ v386);
              v388 = v385 - 1;
              v389 = (v385 - 1) & (-348639895 * ((v387 >> 47) ^ v387));
              v390 = (*v384 + 16 * v389);
              v391 = *v390;
              if (*v390 == v383)
              {
                goto LABEL_592;
              }

              v392 = 0;
              v393 = 1;
              while (v391 != -4096)
              {
                if (v392)
                {
                  v394 = 0;
                }

                else
                {
                  v394 = v391 == -8192;
                }

                if (v394)
                {
                  v392 = v390;
                }

                v395 = v389 + v393++;
                v389 = v395 & v388;
                v390 = (*v384 + 16 * (v395 & v388));
                v391 = *v390;
                if (*v390 == v383)
                {
                  goto LABEL_592;
                }
              }

              if (v392)
              {
                v390 = v392;
              }

              v410 = *(v384 + 8);
              if (4 * v410 + 4 >= 3 * v385)
              {
LABEL_618:
                v526 = v383;
                v385 *= 2;
                goto LABEL_624;
              }

              if (v385 + ~v410 - *(v384 + 12) <= v385 >> 3)
              {
                v526 = v383;
LABEL_624:
                llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v384, v385);
                v412 = *(v384 + 16);
                if (v412)
                {
                  v383 = v526;
                  v413 = 0x9DDFEA08EB382D69 * ((8 * v526 - 0xAE502812AA7333) ^ HIDWORD(v526));
                  v414 = 0x9DDFEA08EB382D69 * (HIDWORD(v526) ^ (v413 >> 47) ^ v413);
                  LODWORD(v413) = -348639895 * ((v414 >> 47) ^ v414);
                  v415 = v412 - 1;
                  v416 = (v412 - 1) & v413;
                  v390 = (*v384 + 16 * v416);
                  v417 = *v390;
                  if (*v390 != v526)
                  {
                    v418 = 0;
                    v419 = 1;
                    while (v417 != -4096)
                    {
                      if (v418)
                      {
                        v420 = 0;
                      }

                      else
                      {
                        v420 = v417 == -8192;
                      }

                      if (v420)
                      {
                        v418 = v390;
                      }

                      v421 = v416 + v419++;
                      v416 = v421 & v415;
                      v390 = (*v384 + 16 * (v421 & v415));
                      v417 = *v390;
                      if (*v390 == v526)
                      {
                        goto LABEL_648;
                      }
                    }

                    if (v418)
                    {
                      v390 = v418;
                    }
                  }
                }

                else
                {
                  v390 = 0;
                  v383 = v526;
                }

LABEL_648:
                ++*(v384 + 8);
                if (*v390 == -4096)
                {
                  goto LABEL_591;
                }

LABEL_590:
                --*(v384 + 12);
                goto LABEL_591;
              }

              *(v384 + 8) = v410 + 1;
              if (*v390 != -4096)
              {
                goto LABEL_590;
              }

LABEL_591:
              *v390 = v383;
              v390[1] = 0;
LABEL_592:
              v525 = *(v390 + 2);
              v396 = *a3;
              result = mlir::ODIE::Compiler::getHandleForToken(v379);
              if (!result)
              {
LABEL_586:
                v397 = -1;
                goto LABEL_610;
              }

LABEL_593:
              v398 = *v396;
              v399 = *(*v396 + 16);
              if (!v399)
              {
                goto LABEL_622;
              }

              v400 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
              v401 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v400 >> 47) ^ v400);
              v402 = v399 - 1;
              v403 = (v399 - 1) & (-348639895 * ((v401 >> 47) ^ v401));
              v404 = (*v398 + 16 * v403);
              v405 = *v404;
              if (*v404 != result)
              {
                v406 = 0;
                v407 = 1;
                while (v405 != -4096)
                {
                  if (v406)
                  {
                    v408 = 0;
                  }

                  else
                  {
                    v408 = v405 == -8192;
                  }

                  if (v408)
                  {
                    v406 = v404;
                  }

                  v409 = v403 + v407++;
                  v403 = v409 & v402;
                  v404 = (*v398 + 16 * (v409 & v402));
                  v405 = *v404;
                  if (*v404 == result)
                  {
                    goto LABEL_609;
                  }
                }

                if (v406)
                {
                  v404 = v406;
                }

                v411 = *(v398 + 8);
                if (4 * v411 + 4 >= 3 * v399)
                {
LABEL_622:
                  v512 = result;
                  v399 *= 2;
                  goto LABEL_636;
                }

                if (v399 + ~v411 - *(v398 + 12) <= v399 >> 3)
                {
                  v512 = result;
LABEL_636:
                  llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v398, v399);
                  v422 = *(v398 + 16);
                  if (v422)
                  {
                    result = v512;
                    v423 = 0x9DDFEA08EB382D69 * ((8 * v512 - 0xAE502812AA7333) ^ HIDWORD(v512));
                    v424 = 0x9DDFEA08EB382D69 * (HIDWORD(v512) ^ (v423 >> 47) ^ v423);
                    LODWORD(v423) = -348639895 * ((v424 >> 47) ^ v424);
                    v425 = v422 - 1;
                    v426 = (v422 - 1) & v423;
                    v404 = (*v398 + 16 * v426);
                    v427 = *v404;
                    if (*v404 != v512)
                    {
                      v428 = 0;
                      v429 = 1;
                      while (v427 != -4096)
                      {
                        if (v428)
                        {
                          v430 = 0;
                        }

                        else
                        {
                          v430 = v427 == -8192;
                        }

                        if (v430)
                        {
                          v428 = v404;
                        }

                        v431 = v426 + v429++;
                        v426 = v431 & v425;
                        v404 = (*v398 + 16 * (v431 & v425));
                        v427 = *v404;
                        if (*v404 == v512)
                        {
                          goto LABEL_651;
                        }
                      }

                      if (v428)
                      {
                        v404 = v428;
                      }
                    }
                  }

                  else
                  {
                    v404 = 0;
                    result = v512;
                  }

LABEL_651:
                  ++*(v398 + 8);
                  if (*v404 != -4096)
                  {
LABEL_607:
                    --*(v398 + 12);
                  }
                }

                else
                {
                  *(v398 + 8) = v411 + 1;
                  if (*v404 != -4096)
                  {
                    goto LABEL_607;
                  }
                }

                *v404 = result;
                v404[1] = 0;
              }

LABEL_609:
              v397 = *(v404 + 2);
LABEL_610:
              v374 = v519;
              v7 = v522;
              if (v525 >= v397)
              {
                v372 = v377;
              }

              else
              {
                v376 = v380;
                v372 = v378;
              }

              *v373 = *v376;
              v373 = v376;
            }

            while (v372 <= v519);
LABEL_659:
            v432 = a2 - 1;
            v49 = v376 == --a2;
            if (v49)
            {
              *v376 = v515;
              goto LABEL_569;
            }

            *v376 = *v432;
            *v432 = v515;
            v433 = (v376 - v527 + 8) >> 3;
            v371 = v433 < 2;
            v434 = v433 - 2;
            if (!v371)
            {
              v435 = v434 >> 1;
              v436 = &v527[v434 >> 1];
              v437 = *v376;
              v438 = *a3;
              HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v436);
              if (HandleForToken)
              {
                v439 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v438, &HandleForToken);
                v440 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v437);
                HandleForToken = result;
                if (result)
                {
LABEL_663:
                  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v440, &HandleForToken);
                  v441 = v527;
                  v7 = v522;
                  if (v439 >= *result)
                  {
                    goto LABEL_569;
                  }

                  goto LABEL_667;
                }
              }

              else
              {
                v439 = -1;
                v440 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v437);
                HandleForToken = result;
                if (result)
                {
                  goto LABEL_663;
                }
              }

              v441 = v527;
              v7 = v522;
              if (v439 >= -1)
              {
                goto LABEL_569;
              }

LABEL_667:
              v442 = *v376;
              while (1)
              {
                v443 = v436;
                *v376 = *v436;
                if (!v435)
                {
LABEL_675:
                  *v443 = v442;
                  v7 = v522;
                  break;
                }

                v435 = (v435 - 1) >> 1;
                v436 = &v441[v435];
                v444 = *a3;
                HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v436);
                if (HandleForToken)
                {
                  v445 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v444, &HandleForToken);
                  v446 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v442);
                  HandleForToken = result;
                  if (result)
                  {
                    goto LABEL_668;
                  }
                }

                else
                {
                  v445 = -1;
                  v446 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v442);
                  HandleForToken = result;
                  if (result)
                  {
LABEL_668:
                    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v446, &HandleForToken);
                    v376 = v443;
                    v441 = v527;
                    if (v445 >= *result)
                    {
                      goto LABEL_675;
                    }

                    continue;
                  }
                }

                v376 = v443;
                v441 = v527;
                if (v445 >= -1)
                {
                  goto LABEL_675;
                }
              }
            }

LABEL_569:
            v371 = v7-- <= 2;
            if (v371)
            {
              return result;
            }
          }
        }
      }

      v351 = v349[1];
      v352 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
      if (HandleForToken)
      {
        v353 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v352, &HandleForToken);
        v354 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v351);
        if (HandleForToken)
        {
LABEL_537:
          v355 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v354, &HandleForToken);
LABEL_540:
          if (v353 < v355)
          {
            ++v349;
            v348 = v350;
          }

          v346 = v527;
          goto LABEL_543;
        }
      }

      else
      {
        v353 = -1;
        v354 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v351);
        if (HandleForToken)
        {
          goto LABEL_537;
        }
      }

      v355 = -1;
      goto LABEL_540;
    }

    v9 = v7 >> 1;
    v10 = &v8[v7 >> 1];
    if (v7 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(&v8[v7 >> 1], v8, v513, a3);
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_19:
      v17 = 0;
      v18 = *v8;
      do
      {
        while (1)
        {
          v19 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v8[v17 + 1]);
          if (HandleForToken)
          {
            break;
          }

          v20 = -1;
          v21 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
          if (!HandleForToken)
          {
            goto LABEL_25;
          }

LABEL_20:
          ++v17;
          if (v20 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v21, &HandleForToken))
          {
            goto LABEL_26;
          }
        }

        v20 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v19, &HandleForToken);
        v21 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
        if (HandleForToken)
        {
          goto LABEL_20;
        }

LABEL_25:
        ++v17;
      }

      while (v20 < -1);
LABEL_26:
      v22 = &v8[v17];
      v23 = a2;
      if (v17 == 1)
      {
        v23 = a2;
        while (1)
        {
          if (v22 >= v23)
          {
            goto LABEL_42;
          }

          v28 = *--v23;
          v29 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v28);
          if (HandleForToken)
          {
            v30 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v29, &HandleForToken);
            v31 = *a3;
            HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
            if (!HandleForToken)
            {
              goto LABEL_41;
            }

LABEL_35:
            if (v30 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v31, &HandleForToken))
            {
              goto LABEL_42;
            }
          }

          else
          {
            v30 = -1;
            v31 = *a3;
            HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
            if (HandleForToken)
            {
              goto LABEL_35;
            }

LABEL_41:
            if (v30 < -1)
            {
              goto LABEL_42;
            }
          }
        }
      }

      while (2)
      {
        while (2)
        {
          v24 = *--v23;
          v25 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v24);
          if (HandleForToken)
          {
            v26 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v25, &HandleForToken);
            v27 = *a3;
            HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
            if (!HandleForToken)
            {
              break;
            }

            goto LABEL_28;
          }

          v26 = -1;
          v27 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
          if (HandleForToken)
          {
LABEL_28:
            if (v26 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v27, &HandleForToken))
            {
              goto LABEL_42;
            }

            continue;
          }

          break;
        }

        if (v26 >= -1)
        {
          continue;
        }

        break;
      }

LABEL_42:
      v520 = v22;
      if (v22 < v23)
      {
        v32 = v23;
        v33 = v22;
        while (1)
        {
          v34 = *v33;
          *v33 = *v32;
          *v32 = v34;
          do
          {
            while (1)
            {
              v35 = v33;
              v36 = v33[1];
              ++v33;
              v37 = *a3;
              v38 = mlir::ODIE::Compiler::getHandleForToken(v36);
              if (!v38)
              {
                break;
              }

              v39 = *v37;
              v40 = *(*v37 + 16);
              if (!v40)
              {
                goto LABEL_88;
              }

              v41 = 0x9DDFEA08EB382D69 * ((8 * v38 - 0xAE502812AA7333) ^ HIDWORD(v38));
              v42 = 0x9DDFEA08EB382D69 * (HIDWORD(v38) ^ (v41 >> 47) ^ v41);
              v43 = v40 - 1;
              v44 = (v40 - 1) & (-348639895 * ((v42 >> 47) ^ v42));
              v45 = (*v39 + 16 * v44);
              v46 = *v45;
              if (*v45 == v38)
              {
                goto LABEL_66;
              }

              v47 = 0;
              v48 = 1;
              while (v46 != -4096)
              {
                if (v47)
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v46 == -8192;
                }

                if (v49)
                {
                  v47 = v45;
                }

                v50 = v44 + v48++;
                v44 = v50 & v43;
                v45 = (*v39 + 16 * (v50 & v43));
                v46 = *v45;
                if (*v45 == v38)
                {
                  goto LABEL_66;
                }
              }

              if (v47)
              {
                v45 = v47;
              }

              v66 = *(v39 + 8);
              if (4 * v66 + 4 >= 3 * v40)
              {
LABEL_88:
                v67 = v38;
                llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v39, 2 * v40);
                v68 = *(v39 + 16);
                if (v68)
                {
LABEL_89:
                  v38 = v67;
                  v69 = 0x9DDFEA08EB382D69 * ((8 * v67 - 0xAE502812AA7333) ^ HIDWORD(v67));
                  v70 = 0x9DDFEA08EB382D69 * (HIDWORD(v67) ^ (v69 >> 47) ^ v69);
                  LODWORD(v69) = -348639895 * ((v70 >> 47) ^ v70);
                  v71 = v68 - 1;
                  v72 = (v68 - 1) & v69;
                  v45 = (*v39 + 16 * v72);
                  v73 = *v45;
                  if (*v45 != v67)
                  {
                    v74 = 0;
                    v75 = 1;
                    while (v73 != -4096)
                    {
                      if (v74)
                      {
                        v76 = 0;
                      }

                      else
                      {
                        v76 = v73 == -8192;
                      }

                      if (v76)
                      {
                        v74 = v45;
                      }

                      v77 = v72 + v75++;
                      v72 = v77 & v71;
                      v45 = (*v39 + 16 * (v77 & v71));
                      v73 = *v45;
                      if (*v45 == v67)
                      {
                        goto LABEL_115;
                      }
                    }

                    if (v74)
                    {
                      v45 = v74;
                    }
                  }

LABEL_115:
                  ++*(v39 + 8);
                  if (*v45 == -4096)
                  {
                    goto LABEL_65;
                  }

LABEL_64:
                  --*(v39 + 12);
                  goto LABEL_65;
                }

LABEL_114:
                v45 = 0;
                v38 = v67;
                goto LABEL_115;
              }

              if (v40 + ~v66 - *(v39 + 12) <= v40 >> 3)
              {
                v67 = v38;
                llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v39, v40);
                v68 = *(v39 + 16);
                if (v68)
                {
                  goto LABEL_89;
                }

                goto LABEL_114;
              }

              *(v39 + 8) = v66 + 1;
              if (*v45 != -4096)
              {
                goto LABEL_64;
              }

LABEL_65:
              *v45 = v38;
              v45[1] = 0;
LABEL_66:
              v51 = *(v45 + 2);
              v52 = *a3;
              v53 = mlir::ODIE::Compiler::getHandleForToken(v18);
              if (v53)
              {
                goto LABEL_67;
              }

LABEL_46:
              if (v51 >= -1)
              {
                goto LABEL_128;
              }
            }

            v51 = -1;
            v52 = *a3;
            v53 = mlir::ODIE::Compiler::getHandleForToken(v18);
            if (!v53)
            {
              goto LABEL_46;
            }

LABEL_67:
            v54 = *v52;
            v55 = *(v54 + 16);
            if (!v55)
            {
              goto LABEL_102;
            }

            v56 = 0x9DDFEA08EB382D69 * ((8 * v53 - 0xAE502812AA7333) ^ HIDWORD(v53));
            v57 = 0x9DDFEA08EB382D69 * (HIDWORD(v53) ^ (v56 >> 47) ^ v56);
            v58 = v55 - 1;
            v59 = (v55 - 1) & (-348639895 * ((v57 >> 47) ^ v57));
            v60 = (*v54 + 16 * v59);
            v61 = *v60;
            if (*v60 == v53)
            {
              continue;
            }

            v62 = 0;
            v63 = 1;
            while (v61 != -4096)
            {
              if (v62)
              {
                v64 = 0;
              }

              else
              {
                v64 = v61 == -8192;
              }

              if (v64)
              {
                v62 = v60;
              }

              v65 = v59 + v63++;
              v59 = v65 & v58;
              v60 = (*v54 + 16 * (v65 & v58));
              v61 = *v60;
              if (*v60 == v53)
              {
                goto LABEL_83;
              }
            }

            if (v62)
            {
              v60 = v62;
            }

            v78 = *(v54 + 8);
            if (4 * v78 + 4 >= 3 * v55)
            {
LABEL_102:
              v509 = v53;
              llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v54, 2 * v55);
              v79 = *(v54 + 16);
              if (v79)
              {
LABEL_103:
                v53 = v509;
                v80 = 0x9DDFEA08EB382D69 * ((8 * v509 - 0xAE502812AA7333) ^ HIDWORD(v509));
                v81 = 0x9DDFEA08EB382D69 * (HIDWORD(v509) ^ (v80 >> 47) ^ v80);
                LODWORD(v80) = -348639895 * ((v81 >> 47) ^ v81);
                v82 = v79 - 1;
                v83 = (v79 - 1) & v80;
                v60 = (*v54 + 16 * v83);
                v84 = *v60;
                if (*v60 != v509)
                {
                  v85 = 0;
                  v86 = 1;
                  while (v84 != -4096)
                  {
                    if (v85)
                    {
                      v87 = 0;
                    }

                    else
                    {
                      v87 = v84 == -8192;
                    }

                    if (v87)
                    {
                      v85 = v60;
                    }

                    v88 = v83 + v86++;
                    v83 = v88 & v82;
                    v60 = (*v54 + 16 * (v88 & v82));
                    v84 = *v60;
                    if (*v60 == v509)
                    {
                      goto LABEL_119;
                    }
                  }

                  if (v85)
                  {
                    v60 = v85;
                  }
                }

LABEL_119:
                ++*(v54 + 8);
                if (*v60 == -4096)
                {
                  goto LABEL_82;
                }

LABEL_81:
                --*(v54 + 12);
                goto LABEL_82;
              }

LABEL_118:
              v60 = 0;
              v53 = v509;
              goto LABEL_119;
            }

            if (v55 + ~v78 - *(v54 + 12) <= v55 >> 3)
            {
              v509 = v53;
              llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v54, v55);
              v79 = *(v54 + 16);
              if (v79)
              {
                goto LABEL_103;
              }

              goto LABEL_118;
            }

            *(v54 + 8) = v78 + 1;
            if (*v60 != -4096)
            {
              goto LABEL_81;
            }

LABEL_82:
            *v60 = v53;
            v60[1] = 0;
LABEL_83:
            ;
          }

          while (v51 < *(v60 + 2));
          do
          {
            while (1)
            {
LABEL_128:
              v89 = *--v32;
              v90 = *a3;
              v91 = mlir::ODIE::Compiler::getHandleForToken(v89);
              if (!v91)
              {
                v104 = -1;
                v105 = *a3;
                v106 = mlir::ODIE::Compiler::getHandleForToken(v18);
                if (!v106)
                {
                  goto LABEL_127;
                }

                break;
              }

              v92 = *v90;
              v93 = *(*v90 + 16);
              if (!v93)
              {
                goto LABEL_169;
              }

              v94 = 0x9DDFEA08EB382D69 * ((8 * v91 - 0xAE502812AA7333) ^ HIDWORD(v91));
              v95 = 0x9DDFEA08EB382D69 * (HIDWORD(v91) ^ (v94 >> 47) ^ v94);
              v96 = v93 - 1;
              v97 = (v93 - 1) & (-348639895 * ((v95 >> 47) ^ v95));
              v98 = (*v92 + 16 * v97);
              v99 = *v98;
              if (*v98 == v91)
              {
                goto LABEL_147;
              }

              v100 = 0;
              v101 = 1;
              while (v99 != -4096)
              {
                if (v100)
                {
                  v102 = 0;
                }

                else
                {
                  v102 = v99 == -8192;
                }

                if (v102)
                {
                  v100 = v98;
                }

                v103 = v97 + v101++;
                v97 = v103 & v96;
                v98 = (*v92 + 16 * (v103 & v96));
                v99 = *v98;
                if (*v98 == v91)
                {
                  goto LABEL_147;
                }
              }

              if (v100)
              {
                v98 = v100;
              }

              v119 = *(v92 + 8);
              if (4 * v119 + 4 >= 3 * v93)
              {
LABEL_169:
                v120 = v91;
                llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v92, 2 * v93);
                v121 = *(v92 + 16);
                if (v121)
                {
LABEL_170:
                  v91 = v120;
                  v122 = 0x9DDFEA08EB382D69 * ((8 * v120 - 0xAE502812AA7333) ^ HIDWORD(v120));
                  v123 = 0x9DDFEA08EB382D69 * (HIDWORD(v120) ^ (v122 >> 47) ^ v122);
                  LODWORD(v122) = -348639895 * ((v123 >> 47) ^ v123);
                  v124 = v121 - 1;
                  v125 = (v121 - 1) & v122;
                  v98 = (*v92 + 16 * v125);
                  v126 = *v98;
                  if (*v98 != v120)
                  {
                    v127 = 0;
                    v128 = 1;
                    while (v126 != -4096)
                    {
                      if (v127)
                      {
                        v129 = 0;
                      }

                      else
                      {
                        v129 = v126 == -8192;
                      }

                      if (v129)
                      {
                        v127 = v98;
                      }

                      v130 = v125 + v128++;
                      v125 = v130 & v124;
                      v98 = (*v92 + 16 * (v130 & v124));
                      v126 = *v98;
                      if (*v98 == v120)
                      {
                        goto LABEL_196;
                      }
                    }

                    if (v127)
                    {
                      v98 = v127;
                    }
                  }

LABEL_196:
                  ++*(v92 + 8);
                  if (*v98 == -4096)
                  {
                    goto LABEL_146;
                  }

LABEL_145:
                  --*(v92 + 12);
                  goto LABEL_146;
                }

LABEL_195:
                v98 = 0;
                v91 = v120;
                goto LABEL_196;
              }

              if (v93 + ~v119 - *(v92 + 12) <= v93 >> 3)
              {
                v120 = v91;
                llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v92, v93);
                v121 = *(v92 + 16);
                if (v121)
                {
                  goto LABEL_170;
                }

                goto LABEL_195;
              }

              *(v92 + 8) = v119 + 1;
              if (*v98 != -4096)
              {
                goto LABEL_145;
              }

LABEL_146:
              *v98 = v91;
              v98[1] = 0;
LABEL_147:
              v104 = *(v98 + 2);
              v105 = *a3;
              v106 = mlir::ODIE::Compiler::getHandleForToken(v18);
              if (v106)
              {
                break;
              }

LABEL_127:
              if (v104 < -1)
              {
                goto LABEL_44;
              }
            }

            v107 = *v105;
            v108 = *(v107 + 16);
            if (!v108)
            {
              goto LABEL_183;
            }

            v109 = 0x9DDFEA08EB382D69 * ((8 * v106 - 0xAE502812AA7333) ^ HIDWORD(v106));
            v110 = 0x9DDFEA08EB382D69 * (HIDWORD(v106) ^ (v109 >> 47) ^ v109);
            v111 = v108 - 1;
            v112 = (v108 - 1) & (-348639895 * ((v110 >> 47) ^ v110));
            v113 = (*v107 + 16 * v112);
            v114 = *v113;
            if (*v113 == v106)
            {
              continue;
            }

            v115 = 0;
            v116 = 1;
            while (v114 != -4096)
            {
              if (v115)
              {
                v117 = 0;
              }

              else
              {
                v117 = v114 == -8192;
              }

              if (v117)
              {
                v115 = v113;
              }

              v118 = v112 + v116++;
              v112 = v118 & v111;
              v113 = (*v107 + 16 * (v118 & v111));
              v114 = *v113;
              if (*v113 == v106)
              {
                goto LABEL_164;
              }
            }

            if (v115)
            {
              v113 = v115;
            }

            v131 = *(v107 + 8);
            if (4 * v131 + 4 >= 3 * v108)
            {
LABEL_183:
              v510 = v106;
              llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v107, 2 * v108);
              v132 = *(v107 + 16);
              if (v132)
              {
LABEL_184:
                v106 = v510;
                v133 = 0x9DDFEA08EB382D69 * ((8 * v510 - 0xAE502812AA7333) ^ HIDWORD(v510));
                v134 = 0x9DDFEA08EB382D69 * (HIDWORD(v510) ^ (v133 >> 47) ^ v133);
                LODWORD(v133) = -348639895 * ((v134 >> 47) ^ v134);
                v135 = v132 - 1;
                v136 = (v132 - 1) & v133;
                v113 = (*v107 + 16 * v136);
                v137 = *v113;
                if (*v113 != v510)
                {
                  v138 = 0;
                  v139 = 1;
                  while (v137 != -4096)
                  {
                    if (v138)
                    {
                      v140 = 0;
                    }

                    else
                    {
                      v140 = v137 == -8192;
                    }

                    if (v140)
                    {
                      v138 = v113;
                    }

                    v141 = v136 + v139++;
                    v136 = v141 & v135;
                    v113 = (*v107 + 16 * (v141 & v135));
                    v137 = *v113;
                    if (*v113 == v510)
                    {
                      goto LABEL_200;
                    }
                  }

                  if (v138)
                  {
                    v113 = v138;
                  }
                }

LABEL_200:
                ++*(v107 + 8);
                if (*v113 == -4096)
                {
                  goto LABEL_163;
                }

LABEL_162:
                --*(v107 + 12);
                goto LABEL_163;
              }

LABEL_199:
              v113 = 0;
              v106 = v510;
              goto LABEL_200;
            }

            if (v108 + ~v131 - *(v107 + 12) <= v108 >> 3)
            {
              v510 = v106;
              llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v107, v108);
              v132 = *(v107 + 16);
              if (v132)
              {
                goto LABEL_184;
              }

              goto LABEL_199;
            }

            *(v107 + 8) = v131 + 1;
            if (*v113 != -4096)
            {
              goto LABEL_162;
            }

LABEL_163:
            *v113 = v106;
            v113[1] = 0;
LABEL_164:
            ;
          }

          while (v104 >= *(v113 + 2));
LABEL_44:
          if (v33 >= v32)
          {
            goto LABEL_209;
          }
        }
      }

      v35 = v22 - 1;
LABEL_209:
      if (v35 != v527)
      {
        *v527 = *v35;
      }

      *v35 = v18;
      if (v520 < v23)
      {
LABEL_214:
        result = std::__introsort<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,false>(v527, v35, a3, a4, a5 & 1);
        a5 = 0;
        v6 = v35 + 1;
      }

      else
      {
        v142 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*>(v527, v35, a3);
        v6 = v35 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*>(v35 + 1, a2, a3);
        if (result)
        {
          a2 = v35;
          if (v142)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v142)
        {
          goto LABEL_214;
        }
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(v8, &v8[v7 >> 1], v513, a3);
      v11 = v9;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(v8 + 1, &v8[v11 - 1], a2 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(v8 + 2, &v8[v11 + 1], a2 - 3, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::ODIE::Compiler::Transforms::fixupResultTokens(mlir::ValueRange,llvm::SmallVector<mlir::Value,6u> &)::$_3 &,mlir::Value*,0>(&v8[v11 - 1], v10, &v8[v11 + 1], a3);
      v12 = *v8;
      *v8 = v8[v11];
      v8[v11] = v12;
      --a4;
      if (a5)
      {
        goto LABEL_19;
      }

LABEL_16:
      v13 = *v8;
      v14 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(v8 - 1));
      if (HandleForToken)
      {
        v15 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v14, &HandleForToken);
        v16 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
        if (!HandleForToken)
        {
          goto LABEL_216;
        }
      }

      else
      {
        v15 = -1;
        v16 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
        if (!HandleForToken)
        {
LABEL_216:
          if (v15 < -1)
          {
            goto LABEL_19;
          }

          goto LABEL_217;
        }
      }

      if (v15 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v16, &HandleForToken))
      {
        goto LABEL_19;
      }

LABEL_217:
      v143 = *v8;
      v144 = *v513;
      v145 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v8);
      if (HandleForToken)
      {
        v146 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v145, &HandleForToken);
        v147 = *a3;
        result = mlir::ODIE::Compiler::getHandleForToken(v144);
        HandleForToken = result;
        if (result)
        {
          goto LABEL_219;
        }
      }

      else
      {
        v146 = -1;
        v147 = *a3;
        result = mlir::ODIE::Compiler::getHandleForToken(v144);
        HandleForToken = result;
        if (result)
        {
LABEL_219:
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v147, &HandleForToken);
          if (v146 < *result)
          {
            goto LABEL_220;
          }

          goto LABEL_230;
        }
      }

      if (v146 < -1)
      {
LABEL_220:
        v6 = v8;
        while (1)
        {
          v149 = v6[1];
          ++v6;
          v148 = v149;
          v150 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v143);
          if (HandleForToken)
          {
            v151 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v150, &HandleForToken);
            v152 = *a3;
            result = mlir::ODIE::Compiler::getHandleForToken(v148);
            HandleForToken = result;
            if (!result)
            {
              goto LABEL_226;
            }

LABEL_221:
            result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v152, &HandleForToken);
            if (v151 < *result)
            {
              goto LABEL_238;
            }
          }

          else
          {
            v151 = -1;
            v152 = *a3;
            result = mlir::ODIE::Compiler::getHandleForToken(v148);
            HandleForToken = result;
            if (result)
            {
              goto LABEL_221;
            }

LABEL_226:
            if (v151 < -1)
            {
              goto LABEL_238;
            }
          }
        }
      }

LABEL_230:
      v153 = v8 + 1;
      while (1)
      {
        v6 = v153;
        if (v153 >= a2)
        {
          break;
        }

        v154 = *v153;
        v155 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v143);
        if (HandleForToken)
        {
          v156 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v155, &HandleForToken);
          v157 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v154);
          HandleForToken = result;
          if (!result)
          {
            goto LABEL_237;
          }

LABEL_231:
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v157, &HandleForToken);
          v153 = v6 + 1;
          if (v156 < *result)
          {
            break;
          }
        }

        else
        {
          v156 = -1;
          v157 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v154);
          HandleForToken = result;
          if (result)
          {
            goto LABEL_231;
          }

LABEL_237:
          v153 = v6 + 1;
          if (v156 < -1)
          {
            break;
          }
        }
      }

LABEL_238:
      v158 = a2;
      if (v6 < a2)
      {
        v158 = a2;
        while (1)
        {
          v160 = *--v158;
          v159 = v160;
          v161 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v143);
          if (HandleForToken)
          {
            v162 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v161, &HandleForToken);
            v163 = *a3;
            result = mlir::ODIE::Compiler::getHandleForToken(v159);
            HandleForToken = result;
            if (!result)
            {
              goto LABEL_245;
            }

LABEL_240:
            result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v163, &HandleForToken);
            if (v162 >= *result)
            {
              break;
            }
          }

          else
          {
            v162 = -1;
            v163 = *a3;
            result = mlir::ODIE::Compiler::getHandleForToken(v159);
            HandleForToken = result;
            if (result)
            {
              goto LABEL_240;
            }

LABEL_245:
            if (v162 >= -1)
            {
              break;
            }
          }
        }
      }

LABEL_246:
      if (v6 < v158)
      {
        v164 = *v6;
        *v6 = *v158;
        *v158 = v164;
        while (2)
        {
          while (1)
          {
            v166 = v6[1];
            ++v6;
            v165 = v166;
            v167 = *a3;
            v168 = mlir::ODIE::Compiler::getHandleForToken(v143);
            if (v168)
            {
              break;
            }

            v181 = -1;
            v182 = *a3;
            v183 = mlir::ODIE::Compiler::getHandleForToken(v165);
            if (v183)
            {
              goto LABEL_269;
            }

LABEL_248:
            if (v181 < -1)
            {
              goto LABEL_332;
            }
          }

          v169 = *v167;
          v170 = *(*v167 + 16);
          if (v170)
          {
            v171 = 0x9DDFEA08EB382D69 * ((8 * v168 - 0xAE502812AA7333) ^ HIDWORD(v168));
            v172 = 0x9DDFEA08EB382D69 * (HIDWORD(v168) ^ (v171 >> 47) ^ v171);
            v173 = v170 - 1;
            v174 = (v170 - 1) & (-348639895 * ((v172 >> 47) ^ v172));
            v175 = (*v169 + 16 * v174);
            v176 = *v175;
            if (*v175 != v168)
            {
              v177 = 0;
              v178 = 1;
              while (v176 != -4096)
              {
                if (v177)
                {
                  v179 = 0;
                }

                else
                {
                  v179 = v176 == -8192;
                }

                if (v179)
                {
                  v177 = v175;
                }

                v180 = v174 + v178++;
                v174 = v180 & v173;
                v175 = (*v169 + 16 * (v180 & v173));
                v176 = *v175;
                if (*v175 == v168)
                {
                  goto LABEL_268;
                }
              }

              if (v177)
              {
                v175 = v177;
              }

              v196 = *(v169 + 8);
              if (4 * v196 + 4 >= 3 * v170)
              {
                break;
              }

              if (v170 + ~v196 - *(v169 + 12) > v170 >> 3)
              {
                *(v169 + 8) = v196 + 1;
                if (*v175 != -4096)
                {
                  goto LABEL_266;
                }

                goto LABEL_267;
              }

              v197 = v168;
LABEL_296:
              llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v169, v170);
              v200 = *(v169 + 16);
              if (v200)
              {
                v168 = v197;
                v201 = 0x9DDFEA08EB382D69 * ((8 * v197 - 0xAE502812AA7333) ^ HIDWORD(v197));
                v202 = 0x9DDFEA08EB382D69 * (HIDWORD(v197) ^ (v201 >> 47) ^ v201);
                LODWORD(v201) = -348639895 * ((v202 >> 47) ^ v202);
                v203 = v200 - 1;
                v204 = (v200 - 1) & v201;
                v175 = (*v169 + 16 * v204);
                v205 = *v175;
                if (*v175 != v197)
                {
                  v206 = 0;
                  v207 = 1;
                  while (v205 != -4096)
                  {
                    if (v206)
                    {
                      v208 = 0;
                    }

                    else
                    {
                      v208 = v205 == -8192;
                    }

                    if (v208)
                    {
                      v206 = v175;
                    }

                    v209 = v204 + v207++;
                    v204 = v209 & v203;
                    v175 = (*v169 + 16 * (v209 & v203));
                    v205 = *v175;
                    if (*v175 == v197)
                    {
                      goto LABEL_320;
                    }
                  }

                  if (v206)
                  {
                    v175 = v206;
                  }
                }
              }

              else
              {
                v175 = 0;
                v168 = v197;
              }

LABEL_320:
              ++*(v169 + 8);
              if (*v175 != -4096)
              {
LABEL_266:
                --*(v169 + 12);
              }

LABEL_267:
              *v175 = v168;
              v175[1] = 0;
            }

LABEL_268:
            v181 = *(v175 + 2);
            v8 = v527;
            v182 = *a3;
            v183 = mlir::ODIE::Compiler::getHandleForToken(v165);
            if (!v183)
            {
              goto LABEL_248;
            }

LABEL_269:
            v184 = *v182;
            v185 = *(*v182 + 16);
            if (!v185)
            {
              goto LABEL_294;
            }

            v186 = 0x9DDFEA08EB382D69 * ((8 * v183 - 0xAE502812AA7333) ^ HIDWORD(v183));
            v187 = 0x9DDFEA08EB382D69 * (HIDWORD(v183) ^ (v186 >> 47) ^ v186);
            v188 = v185 - 1;
            v189 = (v185 - 1) & (-348639895 * ((v187 >> 47) ^ v187));
            v190 = (*v184 + 16 * v189);
            v191 = *v190;
            if (*v190 != v183)
            {
              v192 = 0;
              v193 = 1;
              while (v191 != -4096)
              {
                if (v192)
                {
                  v194 = 0;
                }

                else
                {
                  v194 = v191 == -8192;
                }

                if (v194)
                {
                  v192 = v190;
                }

                v195 = v189 + v193++;
                v189 = v195 & v188;
                v190 = (*v184 + 16 * (v195 & v188));
                v191 = *v190;
                if (*v190 == v183)
                {
                  goto LABEL_285;
                }
              }

              if (v192)
              {
                v190 = v192;
              }

              v198 = *(v184 + 8);
              if (4 * v198 + 4 >= 3 * v185)
              {
LABEL_294:
                v199 = v183;
                v185 *= 2;
                goto LABEL_308;
              }

              if (v185 + ~v198 - *(v184 + 12) <= v185 >> 3)
              {
                v199 = v183;
LABEL_308:
                llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v184, v185);
                v210 = *(v184 + 16);
                if (v210)
                {
                  v183 = v199;
                  v211 = 0x9DDFEA08EB382D69 * ((8 * v199 - 0xAE502812AA7333) ^ HIDWORD(v199));
                  v212 = 0x9DDFEA08EB382D69 * (HIDWORD(v199) ^ (v211 >> 47) ^ v211);
                  LODWORD(v211) = -348639895 * ((v212 >> 47) ^ v212);
                  v213 = v210 - 1;
                  v214 = (v210 - 1) & v211;
                  v190 = (*v184 + 16 * v214);
                  v215 = *v190;
                  if (*v190 != v199)
                  {
                    v216 = 0;
                    v217 = 1;
                    while (v215 != -4096)
                    {
                      if (v216)
                      {
                        v218 = 0;
                      }

                      else
                      {
                        v218 = v215 == -8192;
                      }

                      if (v218)
                      {
                        v216 = v190;
                      }

                      v219 = v214 + v217++;
                      v214 = v219 & v213;
                      v190 = (*v184 + 16 * (v219 & v213));
                      v215 = *v190;
                      v8 = v527;
                      if (*v190 == v199)
                      {
                        goto LABEL_323;
                      }
                    }

                    if (v216)
                    {
                      v190 = v216;
                    }

                    v8 = v527;
                  }
                }

                else
                {
                  v190 = 0;
                  v183 = v199;
                }

LABEL_323:
                ++*(v184 + 8);
                if (*v190 != -4096)
                {
LABEL_283:
                  --*(v184 + 12);
                }
              }

              else
              {
                *(v184 + 8) = v198 + 1;
                if (*v190 != -4096)
                {
                  goto LABEL_283;
                }
              }

              *v190 = v183;
              v190[1] = 0;
            }

LABEL_285:
            if (v181 < *(v190 + 2))
            {
              while (1)
              {
LABEL_332:
                while (1)
                {
                  v221 = *--v158;
                  v220 = v221;
                  v222 = *a3;
                  v223 = mlir::ODIE::Compiler::getHandleForToken(v143);
                  if (v223)
                  {
                    break;
                  }

                  v236 = -1;
                  v237 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v220);
                  if (result)
                  {
                    goto LABEL_352;
                  }

LABEL_331:
                  if (v236 >= -1)
                  {
                    goto LABEL_246;
                  }
                }

                v224 = *v222;
                v225 = *(*v222 + 16);
                if (!v225)
                {
                  break;
                }

                v226 = 0x9DDFEA08EB382D69 * ((8 * v223 - 0xAE502812AA7333) ^ HIDWORD(v223));
                v227 = 0x9DDFEA08EB382D69 * (HIDWORD(v223) ^ (v226 >> 47) ^ v226);
                v228 = v225 - 1;
                v229 = (v225 - 1) & (-348639895 * ((v227 >> 47) ^ v227));
                v230 = (*v224 + 16 * v229);
                v231 = *v230;
                if (*v230 == v223)
                {
                  goto LABEL_351;
                }

                v232 = 0;
                v233 = 1;
                while (v231 != -4096)
                {
                  if (v232)
                  {
                    v234 = 0;
                  }

                  else
                  {
                    v234 = v231 == -8192;
                  }

                  if (v234)
                  {
                    v232 = v230;
                  }

                  v235 = v229 + v233++;
                  v229 = v235 & v228;
                  v230 = (*v224 + 16 * (v235 & v228));
                  v231 = *v230;
                  if (*v230 == v223)
                  {
                    goto LABEL_351;
                  }
                }

                if (v232)
                {
                  v230 = v232;
                }

                v250 = *(v224 + 8);
                if (4 * v250 + 4 >= 3 * v225)
                {
                  break;
                }

                if (v225 + ~v250 - *(v224 + 12) <= v225 >> 3)
                {
                  v251 = v223;
LABEL_379:
                  llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v224, v225);
                  v254 = *(v224 + 16);
                  if (v254)
                  {
                    v223 = v251;
                    v255 = 0x9DDFEA08EB382D69 * ((8 * v251 - 0xAE502812AA7333) ^ HIDWORD(v251));
                    v256 = 0x9DDFEA08EB382D69 * (HIDWORD(v251) ^ (v255 >> 47) ^ v255);
                    LODWORD(v255) = -348639895 * ((v256 >> 47) ^ v256);
                    v257 = v254 - 1;
                    v258 = (v254 - 1) & v255;
                    v230 = (*v224 + 16 * v258);
                    v259 = *v230;
                    if (*v230 != v251)
                    {
                      v260 = 0;
                      v261 = 1;
                      while (v259 != -4096)
                      {
                        if (v260)
                        {
                          v262 = 0;
                        }

                        else
                        {
                          v262 = v259 == -8192;
                        }

                        if (v262)
                        {
                          v260 = v230;
                        }

                        v263 = v258 + v261++;
                        v258 = v263 & v257;
                        v230 = (*v224 + 16 * (v263 & v257));
                        v259 = *v230;
                        if (*v230 == v251)
                        {
                          goto LABEL_403;
                        }
                      }

                      if (v260)
                      {
                        v230 = v260;
                      }
                    }
                  }

                  else
                  {
                    v230 = 0;
                    v223 = v251;
                  }

LABEL_403:
                  ++*(v224 + 8);
                  if (*v230 == -4096)
                  {
                    goto LABEL_350;
                  }

LABEL_349:
                  --*(v224 + 12);
                  goto LABEL_350;
                }

                *(v224 + 8) = v250 + 1;
                if (*v230 != -4096)
                {
                  goto LABEL_349;
                }

LABEL_350:
                *v230 = v223;
                v230[1] = 0;
LABEL_351:
                v236 = *(v230 + 2);
                v8 = v527;
                v237 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v220);
                if (!result)
                {
                  goto LABEL_331;
                }

LABEL_352:
                v238 = *v237;
                v239 = *(*v237 + 16);
                if (!v239)
                {
                  goto LABEL_377;
                }

                v240 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
                v241 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v240 >> 47) ^ v240);
                v242 = v239 - 1;
                v243 = (v239 - 1) & (-348639895 * ((v241 >> 47) ^ v241));
                v244 = (*v238 + 16 * v243);
                v245 = *v244;
                if (*v244 != result)
                {
                  v246 = 0;
                  v247 = 1;
                  while (v245 != -4096)
                  {
                    if (v246)
                    {
                      v248 = 0;
                    }

                    else
                    {
                      v248 = v245 == -8192;
                    }

                    if (v248)
                    {
                      v246 = v244;
                    }

                    v249 = v243 + v247++;
                    v243 = v249 & v242;
                    v244 = (*v238 + 16 * (v249 & v242));
                    v245 = *v244;
                    if (*v244 == result)
                    {
                      goto LABEL_368;
                    }
                  }

                  if (v246)
                  {
                    v244 = v246;
                  }

                  v252 = *(v238 + 8);
                  if (4 * v252 + 4 >= 3 * v239)
                  {
LABEL_377:
                    v253 = result;
                    v239 *= 2;
                    goto LABEL_391;
                  }

                  if (v239 + ~v252 - *(v238 + 12) <= v239 >> 3)
                  {
                    v253 = result;
LABEL_391:
                    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v238, v239);
                    v264 = *(v238 + 16);
                    if (v264)
                    {
                      result = v253;
                      v265 = 0x9DDFEA08EB382D69 * ((8 * v253 - 0xAE502812AA7333) ^ HIDWORD(v253));
                      v266 = 0x9DDFEA08EB382D69 * (HIDWORD(v253) ^ (v265 >> 47) ^ v265);
                      LODWORD(v265) = -348639895 * ((v266 >> 47) ^ v266);
                      v267 = v264 - 1;
                      v268 = (v264 - 1) & v265;
                      v244 = (*v238 + 16 * v268);
                      v269 = *v244;
                      if (*v244 != v253)
                      {
                        v270 = 0;
                        v271 = 1;
                        while (v269 != -4096)
                        {
                          if (v270)
                          {
                            v272 = 0;
                          }

                          else
                          {
                            v272 = v269 == -8192;
                          }

                          if (v272)
                          {
                            v270 = v244;
                          }

                          v273 = v268 + v271++;
                          v268 = v273 & v267;
                          v244 = (*v238 + 16 * (v273 & v267));
                          v269 = *v244;
                          v8 = v527;
                          if (*v244 == v253)
                          {
                            goto LABEL_406;
                          }
                        }

                        if (v270)
                        {
                          v244 = v270;
                        }

                        v8 = v527;
                      }
                    }

                    else
                    {
                      v244 = 0;
                      result = v253;
                    }

LABEL_406:
                    ++*(v238 + 8);
                    if (*v244 != -4096)
                    {
LABEL_366:
                      --*(v238 + 12);
                    }
                  }

                  else
                  {
                    *(v238 + 8) = v252 + 1;
                    if (*v244 != -4096)
                    {
                      goto LABEL_366;
                    }
                  }

                  *v244 = result;
                  v244[1] = 0;
                }

LABEL_368:
                if (v236 >= *(v244 + 2))
                {
                  goto LABEL_246;
                }
              }

              v251 = v223;
              v225 *= 2;
              goto LABEL_379;
            }

            continue;
          }

          break;
        }

        v197 = v168;
        v170 *= 2;
        goto LABEL_296;
      }

      v274 = v6 - 1;
      if (v6 - 1 != v8)
      {
        *v8 = *v274;
      }

      a5 = 0;
      *v274 = v143;
    }
  }

  v275 = *v6;
  v276 = *a3;
  v277 = mlir::ODIE::Compiler::getHandleForToken(*(a2 - 1));
  HandleForToken = v277;
  if (v277)
  {
    v278 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v276, &HandleForToken);
    v279 = *a3;
    result = mlir::ODIE::Compiler::getHandleForToken(v275);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_422;
    }

LABEL_771:
    if (v278 < -1)
    {
      goto LABEL_772;
    }
  }

  else
  {
    v278 = -1;
    v279 = *a3;
    result = mlir::ODIE::Compiler::getHandleForToken(v275);
    HandleForToken = result;
    if (!result)
    {
      goto LABEL_771;
    }

LABEL_422:
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*v279, &HandleForToken);
    if (v278 < *result)
    {
LABEL_772:
      v508 = *v6;
      *v6 = *(a2 - 1);
      *(a2 - 1) = v508;
    }
  }

  return result;
}