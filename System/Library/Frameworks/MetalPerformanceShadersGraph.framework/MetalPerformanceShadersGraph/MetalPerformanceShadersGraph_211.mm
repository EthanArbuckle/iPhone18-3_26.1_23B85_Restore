void *mlir::Type::cast<mlir::ShapedType>(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
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
      mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
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

BOOL mlir::ODIE::Compiler::CoreML::BatchNormOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::BatchNormOp *this)
{
  v123 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(*this, (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 72) + 184) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_37;
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_16:
    v7 = 0;
    v8 = v6;
    goto LABEL_17;
  }

  v14 = v4;
  mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v6 = *(v14 + 8);
  v7 = *(v14 + 16);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_9:
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
LABEL_17:
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
  }

  else
  {
    v15 = 0;
  }

  *&v112 = v3;
  *(&v112 + 1) = v15;
  if (mlir::CallOpInterface::getArgOperands(&v112))
  {
    v16 = *v3;
    {
      v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      if (v19)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v104 = v16;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v18 = *(v104 + 8);
      v19 = *(v104 + 16);
      if (v19)
      {
LABEL_24:
        v20 = v18;
        v21 = v19;
        do
        {
          v22 = v21 >> 1;
          v23 = &v20[2 * (v21 >> 1)];
          v25 = *v23;
          v24 = v23 + 2;
          v21 += ~(v21 >> 1);
          if (v25 < v17)
          {
            v20 = v24;
          }

          else
          {
            v21 = v22;
          }
        }

        while (v21);
LABEL_32:
        if (v20 != &v18[2 * v19] && *v20 == v17)
        {
          v26 = v20[1];
        }

        else
        {
          v26 = 0;
        }

        v105 = v3;
        v106 = v26;
        mlir::CallableOpInterface::getArgAttrsAttr(&v105);
        if (v27)
        {
          goto LABEL_37;
        }

        v77 = *v3;
        {
          v78 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v79 = *(v77 + 8);
          v80 = *(v77 + 16);
          if (v80)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v100 = v77;
          mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
          v78 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v79 = *(v100 + 8);
          v80 = *(v100 + 16);
          if (v80)
          {
LABEL_104:
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
LABEL_157:
            if (v81 != &v79[2 * v80] && *v81 == v78)
            {
              v101 = v81[1];
            }

            else
            {
              v101 = 0;
            }

            v109 = v3;
            v110 = v101;
            isSplat = mlir::ElementsAttr::isSplat(&v109);
            if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat))
            {
              goto LABEL_67;
            }

            goto LABEL_37;
          }
        }

        v80 = 0;
        v81 = v79;
        goto LABEL_157;
      }
    }

    v19 = 0;
    v20 = v18;
    goto LABEL_32;
  }

LABEL_37:
  v107 = 261;
  v105 = "operand";
  v106 = 7;
  mlir::Operation::emitOpError(v2, &v105, &v112);
  if (v112)
  {
    LODWORD(v109) = 3;
    v110 = " #";
    v111 = 2;
    v28 = &v109;
    v29 = v113;
    if (v114 >= v115)
    {
      if (v113 <= &v109 && v113 + 24 * v114 > &v109)
      {
        v98 = &v109 - v113;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v116, v114 + 1, 24);
        v29 = v113;
        v28 = (v113 + v98);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v116, v114 + 1, 24);
        v28 = &v109;
        v29 = v113;
      }
    }

    v30 = &v29[24 * v114];
    v31 = *v28;
    *(v30 + 2) = v28[2];
    *v30 = v31;
    v32 = ++v114;
    if (v112)
    {
      LODWORD(v109) = 5;
      v110 = 5;
      v33 = &v109;
      v34 = v113;
      if (v32 >= v115)
      {
        if (v113 <= &v109 && v113 + 24 * v32 > &v109)
        {
          v99 = &v109 - v113;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v116, v32 + 1, 24);
          v34 = v113;
          v33 = (v113 + v99);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v116, v32 + 1, 24);
          v33 = &v109;
          v34 = v113;
        }
      }

      v35 = &v34[24 * v114];
      v36 = *v33;
      *(v35 + 2) = v33[2];
      *v35 = v36;
      v37 = ++v114;
      if (v112)
      {
        LODWORD(v109) = 3;
        v110 = " must be 0D tensor of 16-bit float or 32-bit float values, but got ";
        v111 = 67;
        v38 = &v109;
        v39 = v113;
        if (v37 >= v115)
        {
          if (v113 <= &v109 && v113 + 24 * v37 > &v109)
          {
            v102 = &v109 - v113;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v116, v37 + 1, 24);
            v39 = v113;
            v38 = (v113 + v102);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v116, v37 + 1, 24);
            v38 = &v109;
            v39 = v113;
          }
        }

        v40 = &v39[24 * v114];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v114;
        if (v112)
        {
          v42 = &v109;
          mlir::DiagnosticArgument::DiagnosticArgument(&v109, v3);
          v43 = v113;
          if (v114 >= v115)
          {
            if (v113 <= &v109 && v113 + 24 * v114 > &v109)
            {
              v103 = &v109 - v113;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v116, v114 + 1, 24);
              v43 = v113;
              v42 = (v113 + v103);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v113, v116, v114 + 1, 24);
              v42 = &v109;
              v43 = v113;
            }
          }

          v44 = &v43[24 * v114];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v114;
        }
      }
    }
  }

  v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
  if (v112)
  {
    mlir::InFlightDiagnostic::report(&v112);
  }

  if (v122[0] == 1)
  {
    if (v121 != v122)
    {
      free(v121);
    }

    v47 = __p;
    if (__p)
    {
      v48 = v120;
      v49 = __p;
      if (v120 != __p)
      {
        do
        {
          v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
        }

        while (v48 != v47);
        v49 = __p;
      }

      v120 = v47;
      operator delete(v49);
    }

    v50 = v117;
    if (v117)
    {
      v51 = v118;
      v52 = v117;
      if (v118 != v117)
      {
        do
        {
          v54 = *--v51;
          v53 = v54;
          *v51 = 0;
          if (v54)
          {
            operator delete[](v53);
          }
        }

        while (v51 != v50);
        v52 = v117;
      }

      v118 = v50;
      operator delete(v52);
    }

    if (v113 != v116)
    {
      free(v113);
    }
  }

  if (!v46)
  {
    return 0;
  }

LABEL_67:
  if (*(*this + 36))
  {
    v55 = *this - 16;
  }

  else
  {
    v55 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v55, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 72) + 56));
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) || (v58 = mlir::getElementTypeOrSelf(*(*(*this + 72) + 88)), v58 != mlir::getElementTypeOrSelf(*(*(*this + 72) + 56))) || (v59 = mlir::getElementTypeOrSelf(*(*(*this + 72) + 120)), v59 != mlir::getElementTypeOrSelf(*(*(*this + 72) + 88))) || (v60 = mlir::getElementTypeOrSelf(*(*(*this + 72) + 152)), v60 != mlir::getElementTypeOrSelf(*(*(*this + 72) + 120))))
  {
    v105 = "failed to verify that Operands should have same element type.";
    v107 = 259;
    mlir::OpState::emitOpError(this, &v105, &v112);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
    v68 = result;
    if (v112)
    {
      mlir::InFlightDiagnostic::report(&v112);
      result = v68;
    }

    if (v122[0] != 1)
    {
      return result;
    }

    if (v121 != v122)
    {
      free(v121);
      result = v68;
    }

    v69 = __p;
    if (__p)
    {
      v70 = v120;
      v71 = __p;
      if (v120 != __p)
      {
        do
        {
          v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
        }

        while (v70 != v69);
        v71 = __p;
      }

      v120 = v69;
      operator delete(v71);
      result = v68;
    }

    v72 = v117;
    if (v117)
    {
      v73 = v118;
      v74 = v117;
      if (v118 != v117)
      {
        do
        {
          v76 = *--v73;
          v75 = v76;
          *v73 = 0;
          if (v76)
          {
            operator delete[](v75);
          }
        }

        while (v73 != v72);
        v74 = v117;
      }

      v118 = v72;
      operator delete(v74);
      result = v68;
    }

    v87 = v113;
    if (v113 == v116)
    {
      return result;
    }

LABEL_113:
    free(v87);
    return v68;
  }

  v61 = mlir::getElementTypeOrSelf(*(*(*this + 72) + 24));
  if (v61 != mlir::getElementTypeOrSelf(*(*(*this + 72) + 184)))
  {
    v62 = mlir::getElementTypeOrSelf(*(*(*this + 72) + 184));
    v63 = *(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id ? v62 : 0;
    *&v112 = v63;
    *(&v112 + 1) = this;
    if (v63)
    {
      v64 = mlir::getElementTypeOrSelf(*(*(*this + 72) + 24));
      if (v64 != mlir::AffineMapAttr::getValue(&v112))
      {
        v97 = "failed to verify that Operand 5 and operand 0 must have the same inner element type.";
LABEL_133:
        v105 = v97;
        v107 = 259;
        mlir::OpState::emitOpError(this, &v105, &v112);
        v68 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
        if (v112)
        {
          mlir::InFlightDiagnostic::report(&v112);
        }

        if (v122[0] == 1)
        {
          mlir::Diagnostic::~Diagnostic((&v112 + 8));
        }

        return v68;
      }
    }
  }

  v65 = *this;
  v112 = xmmword_1E099B5E0;
  if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v65, &v112, 4))
  {
    v66 = mlir::getElementTypeOrSelf(*this - 16);
    if (v66 == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
    {
      return 1;
    }

    v97 = "failed to verify that Result 0 element type must match element type of operand 0.";
    goto LABEL_133;
  }

  v105 = "failed to verify that Operands should have same shape.";
  v107 = 259;
  mlir::OpState::emitOpError(this, &v105, &v112);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
  if (v112)
  {
    v88 = result;
    mlir::InFlightDiagnostic::report(&v112);
    result = v88;
  }

  if (v122[0] == 1)
  {
    v68 = result;
    if (v121 != v122)
    {
      free(v121);
    }

    v89 = __p;
    if (__p)
    {
      v90 = v120;
      v91 = __p;
      if (v120 != __p)
      {
        do
        {
          v90 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v90 - 1);
        }

        while (v90 != v89);
        v91 = __p;
      }

      v120 = v89;
      operator delete(v91);
    }

    v92 = v117;
    if (v117)
    {
      v93 = v118;
      v94 = v117;
      if (v118 != v117)
      {
        do
        {
          v96 = *--v93;
          v95 = v96;
          *v93 = 0;
          if (v96)
          {
            operator delete[](v95);
          }
        }

        while (v93 != v92);
        v94 = v117;
      }

      v118 = v92;
      operator delete(v94);
    }

    v87 = v113;
    result = v68;
    if (v113 != v116)
    {
      goto LABEL_113;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_25;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
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
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
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

LABEL_25:
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
        v61 = " must be CoreML Tensor of 16-bit float or 32-bit float or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v62 = 157;
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

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
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
    if (v64 == 1)
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
  if (v62 == 1)
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
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat))
    {
      return 1;
    }

    if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      goto LABEL_94;
    }

    v88 = isSplat;
    Value = mlir::AffineMapAttr::getValue(&v88);
    if (!mlir::Type::isF16(&Value))
    {
      if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
LABEL_94:
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
        v92 = " must be 1D tensor of 16-bit float or 32-bit float or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v93 = 153;
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

uint64_t mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v18 = 0uLL;
  if (a3)
  {
    v3 = a2;
    v5 = &a2[a3];
    do
    {
      v6 = (*(*(*(a1 + 72) + 32 * *v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v6)
      {
        *&v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
        *(&v17 + 1) = v7;
        if (v17 && mlir::CallOpInterface::getArgOperands(&v17))
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v17);
          if (v9)
          {
            v10 = 8 * v9;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v10 -= 8;
              if (!v10)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            if (v18)
            {
              v11 = mlir::CallableOpInterface::getArgAttrsAttr(&v18);
              v13 = v12;
              v14 = mlir::CallableOpInterface::getArgAttrsAttr(&v17);
              if (v13 != v15 || memcmp(v11, v14, 8 * v13))
              {
                return 0;
              }
            }

            else
            {
              v18 = v17;
            }
          }
        }
      }

      else
      {
        v17 = 0uLL;
      }

      ++v3;
    }

    while (v3 != v5);
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp *this)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
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
        goto LABEL_47;
      }

      v23 = v34;
      v17 = v33;
      if (v34 == v33)
      {
LABEL_46:
        v34 = v15;
        operator delete(v17);
        result = v11;
LABEL_47:
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
LABEL_45:
      v17 = v33;
      goto LABEL_46;
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
        goto LABEL_47;
      }

      v16 = v34;
      v17 = v33;
      if (v34 == v33)
      {
        goto LABEL_46;
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
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::BroadcastShapesOp *this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::BroadcastToOp *this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v58.var0 = "callee";
  v58.var1 = 6;
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
    v45 = 51;
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

unint64_t mlir::ODIE::Compiler::CoreML::CallOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1819042147 ? (v4 = *(a3 + 4) == 25957) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::CallOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6 && *a2 == 1819042147 && *(a2 + 4) == 25957)
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

void mlir::ODIE::Compiler::CoreML::CallOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "callee", 6, *a2);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(uint64_t *a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
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
    mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
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

BOOL mlir::ODIE::Compiler::CoreML::CallOp::readProperties(uint64_t a1, void *a2)
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
  a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  a2[35] = &v8;
  a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  a2[37] = &v7;
  {
    mlir::ODIE::Compiler::CoreML::CallOp::readProperties();
  }

  a2[33] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, a2[32]);
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v18[0] = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v1, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
    {
      v3 = *(*this + 36);
      if (*(*this + 36))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'callee'";
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

BOOL mlir::ODIE::Compiler::CoreML::CastOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::CastOp *this)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
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

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::parse(uint64_t a1, uint64_t a2)
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

  v12[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, v12))
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
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  v12[0] = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

void mlir::ODIE::Compiler::CoreML::CastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
    *v15 = 28532;
    v14[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "to", 2uLL);
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
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v74.var0 = "param_decls";
  v74.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 56;
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

  v75.var0 = "sym_name";
  v75.var1 = 8;
  v36 = mlir::DictionaryAttr::get(&v58, v75);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 53;
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

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "param_decls", 11, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "sym_name", 8, v8);
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

unint64_t mlir::ODIE::Compiler::CoreML::ClassOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 11 && *a3 == 0x65645F6D61726170 && *(a3 + 3) == 0x736C6365645F6D61)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x656D616E5F6D7973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::ODIE::Compiler::CoreML::ClassOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v5 = a4;
        }

        else
        {
          v5 = 0;
        }

        result[1] = v5;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 11 && *a2 == 0x65645F6D61726170 && *(a2 + 3) == 0x736C6365645F6D61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
      {
        v6 = a4;
      }

      else
      {
        v6 = 0;
      }

      *result = v6;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ClassOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "param_decls", 11, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "sym_name", 8, v5);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ClassOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v8, "param_decls", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
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
        v29 = 53;
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

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) & 1;
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::ODIE::Compiler::CoreML::ClassOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) & 1;
    }
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::setParamDecls(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ClassOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ClassOp *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = v1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *(v2 + 8);
    if (v5)
    {
      v25[0] = *this;
      if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) != 0 && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v3, "param_decls", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)))
      {
        return mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(*this, ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40), "bodyRegion", 10, 0) & 1;
      }

      else
      {
        return 0;
      }
    }

    v23[0] = "requires attribute 'sym_name'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v16 = __p;
      if (__p)
      {
        v17 = v31;
        v18 = __p;
        if (v31 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v31 = v16;
        operator delete(v18);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v19 = v29;
      v13 = v28;
      if (v29 == v28)
      {
LABEL_40:
        v29 = v11;
        operator delete(v13);
LABEL_41:
        if (v26 != &v27)
        {
          free(v26);
        }

        return v7;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          operator delete[](v20);
        }
      }

      while (v19 != v11);
LABEL_39:
      v13 = v28;
      goto LABEL_40;
    }
  }

  else
  {
    v23[0] = "requires attribute 'param_decls'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v12 = v29;
      v13 = v28;
      if (v29 == v28)
      {
        goto LABEL_40;
      }

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
      goto LABEL_39;
    }
  }

  return v7;
}

unint64_t mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "ction6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3$_0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EEE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &byte_1E099B600[v6];
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = &byte_1E099B600[v23];
  v26 = v23 - v6;
  do
  {
    v27 = *v25;
    v25 += 4;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (byte_1E099B600[v5])
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ConcatOp *this)
{
  v78 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 68);
    v4 = v3 - 1;
    if (v3 == 1)
    {
      goto LABEL_94;
    }

    v5 = *(v2 + 72) + 32;
  }

  else
  {
    v4 = -1;
    v5 = 32;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = *this;
    v9 = *(*(v5 + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = *v9;
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      {
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v10 + 8);
        v15 = *(v10 + 16);
        if (!v15)
        {
          goto LABEL_25;
        }
      }

      else
      {
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v10 + 8);
        v15 = *(v10 + 16);
        if (!v15)
        {
          goto LABEL_25;
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
LABEL_27:
        v67[0] = v9;
        v67[1] = v22;
        v59[0] = mlir::ElementsAttr::isSplat(v67);
        if (mlir::Type::isF16(v59))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isF32(v59))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v59, 4))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v59, 8))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v59, 16))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v59, 32))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v59, 64))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v59, 4))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v59, 8))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v59, 16))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v59, 32))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v59, 64))
        {
          goto LABEL_7;
        }

        if (*(*v59[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v63 = v59[0];
          Value = mlir::AffineMapAttr::getValue(&v63);
          if (mlir::Type::isF16(&Value))
          {
            goto LABEL_7;
          }

          if (*(*v59[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
          {
            v61 = v59[0];
            v62 = mlir::AffineMapAttr::getValue(&v61);
            if (mlir::Type::isF32(&v62))
            {
              goto LABEL_7;
            }
          }
        }

        if (mlir::Type::isSignlessInteger(v59, 1))
        {
          goto LABEL_7;
        }

        goto LABEL_41;
      }

LABEL_25:
      v22 = 0;
      goto LABEL_27;
    }

LABEL_41:
    v60 = 261;
    v59[0] = "operand";
    v59[1] = 7;
    mlir::Operation::emitOpError(v8, v59, v67);
    if (v67[0])
    {
      LODWORD(Value) = 3;
      v65 = " #";
      v66 = 2;
      v23 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &Value && v68 + 24 * v69 > &Value)
        {
          v50 = &Value - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v23 = v68;
          p_Value = (v68 + v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          p_Value = &Value;
          v23 = v68;
        }
      }

      else
      {
        p_Value = &Value;
      }

      v25 = &v23[24 * v69];
      v26 = *p_Value;
      *(v25 + 2) = p_Value[2];
      *v25 = v26;
      v27 = ++v69;
      if (v67[0])
      {
        LODWORD(Value) = 5;
        v65 = v7;
        v28 = v68;
        if (v27 >= v70)
        {
          if (v68 <= &Value && v68 + 24 * v27 > &Value)
          {
            v51 = &Value - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v27 + 1, 24);
            v28 = v68;
            v29 = (v68 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v27 + 1, 24);
            v29 = &Value;
            v28 = v68;
          }
        }

        else
        {
          v29 = &Value;
        }

        v30 = &v28[24 * v69];
        v31 = *v29;
        *(v30 + 2) = v29[2];
        *v30 = v31;
        v32 = ++v69;
        if (v67[0])
        {
          LODWORD(Value) = 3;
          v65 = " must be variadic of tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
          v66 = 251;
          v33 = v68;
          if (v32 >= v70)
          {
            if (v68 <= &Value && v68 + 24 * v32 > &Value)
            {
              v52 = &Value - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v32 + 1, 24);
              v33 = v68;
              v34 = (v68 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v32 + 1, 24);
              v34 = &Value;
              v33 = v68;
            }
          }

          else
          {
            v34 = &Value;
          }

          v35 = &v33[24 * v69];
          v36 = *v34;
          *(v35 + 2) = v34[2];
          *v35 = v36;
          ++v69;
          if (v67[0])
          {
            v37 = &Value;
            mlir::DiagnosticArgument::DiagnosticArgument(&Value, v9);
            v38 = v68;
            if (v69 >= v70)
            {
              if (v68 <= &Value && v68 + 24 * v69 > &Value)
              {
                v53 = &Value - v68;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
                v38 = v68;
                v37 = (v68 + v53);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
                v37 = &Value;
                v38 = v68;
              }
            }

            v39 = &v38[24 * v69];
            v40 = *v37;
            *(v39 + 2) = v37[2];
            *v39 = v40;
            ++v69;
          }
        }
      }
    }

    v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v77 == 1)
    {
      if (v76 != &v77)
      {
        free(v76);
      }

      v42 = __p;
      if (__p)
      {
        v43 = v75;
        v44 = __p;
        if (v75 != __p)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = __p;
        }

        v75 = v42;
        operator delete(v44);
      }

      v45 = v72;
      if (v72)
      {
        v46 = v73;
        v47 = v72;
        if (v73 != v72)
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
          v47 = v72;
        }

        v73 = v45;
        operator delete(v47);
      }

      if (v68 != v71)
      {
        free(v68);
      }
    }

    if (!v41)
    {
      return 0;
    }

LABEL_7:
    ++v7;
    ++v6;
  }

  while (v6 != v4);
  v2 = *this;
LABEL_94:
  v54 = *(v2 + 36);
  v55 = v2 - 16;
  if (v54)
  {
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v56, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 46) & 0x80) != 0 && *(*this + 68) > 1u)
  {
    return 1;
  }

  mlir::ODIE::Compiler::CoreML::ConcatOp::verifyInvariantsImpl(this, v67);
  return LOBYTE(v67[0]);
}

void *mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::getValueAttr(mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase *this)
{
  result = *(this + 3);
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
      mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
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

BOOL mlir::ODIE::Compiler::CoreML::ConstantOp::readProperties(uint64_t a1, void *a2)
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
  a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  a2[35] = &v8;
  a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  a2[37] = &v7;
  {
    mlir::ODIE::Compiler::CoreML::ConstantOp::readProperties();
  }

  a2[33] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, a2[32]);
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 256);
  if (v9)
  {
    *v9 = a4;
    v9[1] = a5;
    v10 = *(a2 + 72);
    if (v10 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v10 + 1, 8);
      LODWORD(v10) = *(a2 + 72);
    }
  }

  else
  {
    v11 = operator new(0x10uLL);
    *v11 = 0;
    v11[1] = 0;
    *(a2 + 256) = v11;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v14;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v13;
    {
      mlir::ODIE::Compiler::CoreML::ConstantOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v12 = *(a2 + 256);
    *v12 = a4;
    v12[1] = a5;
    v10 = *(a2 + 72);
    if (v10 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
}

BOOL mlir::ODIE::Compiler::CoreML::ConstantOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ConstantOp *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v16[0] = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v1, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
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
    v14 = "requires attribute 'value'";
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

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::parse(void *a1, uint64_t a2)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  if (!mlir::AsmParser::parseAttribute<mlir::TypedAttr>(a1, &v21, 0))
  {
    return 0;
  }

  if (v21)
  {
    v4 = *(a2 + 256);
    if (!v4)
    {
      v5 = operator new(0x10uLL);
      *v5 = 0;
      v5[1] = 0;
      *(a2 + 256) = v5;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::ODIE::Compiler::CoreML::ConstantOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v4 = *(a2 + 256);
    }

    *v4 = v21;
  }

  v23[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  __src = a1;
  v25 = v23;
  v26[0] = a2;
  v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
  if (v7)
  {
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v7, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) & 1) == 0)
    {
      return 0;
    }
  }

  __src = v26;
  v25 = 0x600000000;
  mlir::AsmParser::getContext(a1);
  v8 = *a2;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::AsmParser::getContext(a1);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  v12 = mlir::ValueRange::ValueRange(v22, *(a2 + 224), *(a2 + 232));
  v14 = mlir::ODIE::Compiler::CoreML::ConstantOp::inferReturnTypes(v12, v8, 1, v23[0], v23[1], Dictionary, v11, v13, v22[0], v22[1], &__src);
  v15 = __src;
  if ((v14 & 1) == 0)
  {
    result = 0;
    if (__src == v26)
    {
      return result;
    }

LABEL_21:
    v20 = result;
    free(v15);
    return v20;
  }

  v16 = v25;
  v17 = *(a2 + 72);
  v18 = v17 + v25;
  if (v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18, 8);
    LODWORD(v17) = *(a2 + 72);
  }

  if (v16)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v16);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  result = 1;
  v15 = __src;
  if (__src != v26)
  {
    goto LABEL_21;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::print(mlir::ODIE::Compiler::CoreML::ConstantOp *this, mlir::OpAsmPrinter *a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
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

  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  (*(*a2 + 40))(a2, CalleeAttr);
  v10 = v12;
  v12[0] = "value";
  v12[1] = 5;
  v11 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v8, v10, v11);
  if (v10 != v12)
  {
    free(v10);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::Conv2dOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::Conv2dOp *this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 72) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
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
    if (v64 == 4)
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
  if (v62 == 4)
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
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat))
    {
      return 1;
    }

    if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      goto LABEL_94;
    }

    v88 = isSplat;
    Value = mlir::AffineMapAttr::getValue(&v88);
    if (!mlir::Type::isF16(&Value))
    {
      if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
LABEL_94:
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
        v92 = " must be 4D tensor of 16-bit float or 32-bit float or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v93 = 153;
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

BOOL mlir::ODIE::Compiler::CoreML::CosOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::CosOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
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

BOOL mlir::ODIE::Compiler::CoreML::CreateComplexOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::CreateComplexOp *this)
{
  v41 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 72) + 56));
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    v29[0] = "failed to verify that Operands should have same element type.";
    v30 = 259;
    mlir::OpState::emitOpError(this, v29, &v31);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
    v10 = result;
    if (v31)
    {
      mlir::InFlightDiagnostic::report(&v31);
      result = v10;
    }

    if (v40 != 1)
    {
      return result;
    }

    if (v39 != &v40)
    {
      free(v39);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v38;
      v13 = __p;
      if (v38 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v38 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v35;
    if (!v35)
    {
      goto LABEL_47;
    }

    v15 = v36;
    v16 = v35;
    if (v36 == v35)
    {
      goto LABEL_46;
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
    goto LABEL_45;
  }

  v5 = *this;
  v31 = 0x100000000;
  if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v5, &v31, 2))
  {
    v28 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v31 = mlir::Type::cast<mlir::ShapedType>(&v28);
    v32 = v6;
    isSplat = mlir::ElementsAttr::isSplat(&v31);
    v26 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
    v29[0] = mlir::Type::cast<mlir::ShapedType>(&v26);
    v29[1] = v8;
    v27 = mlir::ElementsAttr::isSplat(v29);
    if (isSplat == mlir::AffineMapAttr::getValue(&v27))
    {
      return 1;
    }

    v29[0] = "failed to verify that Result 0 and operand 0 must have the same inner element type.";
    v30 = 259;
    mlir::OpState::emitOpError(this, v29, &v31);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
    if (v31)
    {
      v25 = result;
      mlir::InFlightDiagnostic::report(&v31);
      result = v25;
    }

    if (v40 == 1)
    {
      v10 = result;
      mlir::Diagnostic::~Diagnostic(&v32);
      return v10;
    }

    return result;
  }

  v29[0] = "failed to verify that Operands should have same shape.";
  v30 = 259;
  mlir::OpState::emitOpError(this, v29, &v31);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v10 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v10;
  }

  if (v40 != 1)
  {
    return result;
  }

  if (v39 != &v40)
  {
    free(v39);
    result = v10;
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
    result = v10;
  }

  v14 = v35;
  if (v35)
  {
    v22 = v36;
    v16 = v35;
    if (v36 == v35)
    {
      goto LABEL_46;
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
LABEL_45:
    v16 = v35;
LABEL_46:
    v36 = v14;
    operator delete(v16);
    result = v10;
  }

LABEL_47:
  if (v33 != &v34)
  {
    free(v33);
    return v10;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_34;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v55 = v12;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (!v15)
    {
      goto LABEL_19;
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
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ElementsAttr::isSplat(v61);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56) || mlir::Type::isSignedInteger(v56, 4) || mlir::Type::isSignedInteger(v56, 8) || mlir::Type::isSignedInteger(v56, 16) || mlir::Type::isSignedInteger(v56, 32) || mlir::Type::isSignedInteger(v56, 64) || mlir::Type::isUnsignedInteger(v56, 4) || mlir::Type::isUnsignedInteger(v56, 8) || mlir::Type::isUnsignedInteger(v56, 16) || mlir::Type::isUnsignedInteger(v56, 32) || mlir::Type::isUnsignedInteger(v56, 64))
  {
    return 1;
  }

LABEL_34:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v24 = &v58;
    v25 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v25 = v62;
        v24 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v24 = &v58;
        v25 = v62;
      }
    }

    v26 = &v25[24 * v63];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v29 = &v58;
      v30 = v62;
      if (v28 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v28 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v28 + 1, 24);
          v30 = v62;
          v29 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v28 + 1, 24);
          v29 = &v58;
          v30 = v62;
        }
      }

      v31 = &v30[24 * v63];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      v33 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be CoreML Tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer values, but got ";
        v60 = 143;
        v34 = &v58;
        v35 = v62;
        if (v33 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v33 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v33 + 1, 24);
            v35 = v62;
            v34 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v33 + 1, 24);
            v34 = &v58;
            v35 = v62;
          }
        }

        v36 = &v35[24 * v63];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v63;
        if (v61[0])
        {
          v38 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v39 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v39 = v62;
              v38 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v38 = &v58;
              v39 = v62;
            }
          }

          v40 = &v39[24 * v63];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v63;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
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

    v42 = __p;
    if (__p)
    {
      v43 = v69;
      v44 = __p;
      if (v69 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v69 = v42;
      operator delete(v44);
    }

    v45 = v66;
    if (v66)
    {
      v46 = v67;
      v47 = v66;
      if (v67 != v66)
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
        v47 = v66;
      }

      v67 = v45;
      operator delete(v47);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_22;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
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
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v64[0] = a2;
  v64[1] = v22;
  isSplat = mlir::ElementsAttr::isSplat(v64);
  if (*(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v52 = isSplat;
    v61 = isSplat;
    v57[0] = mlir::AffineMapAttr::getValue(&v61);
    if (mlir::Type::isF16(v57))
    {
      return 1;
    }

    if (*(*v52 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v59 = v52;
      Value = mlir::AffineMapAttr::getValue(&v59);
      if (mlir::Type::isF32(&Value))
      {
        return 1;
      }
    }
  }

LABEL_22:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v64);
  if (v64[0])
  {
    LODWORD(v61) = 3;
    v62 = " #";
    v63 = 2;
    v24 = &v61;
    v25 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v53 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v25 = v65;
        v24 = (v65 + v53);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v24 = &v61;
        v25 = v65;
      }
    }

    v26 = &v25[24 * v66];
    v27 = *v24;
    *(v26 + 2) = v24[2];
    *v26 = v27;
    v28 = ++v66;
    if (v64[0])
    {
      LODWORD(v61) = 5;
      v62 = a5;
      v29 = &v61;
      v30 = v65;
      if (v28 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v28 > &v61)
        {
          v54 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v28 + 1, 24);
          v30 = v65;
          v29 = (v65 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v28 + 1, 24);
          v29 = &v61;
          v30 = v65;
        }
      }

      v31 = &v30[24 * v66];
      v32 = *v29;
      *(v31 + 2) = v29[2];
      *v31 = v32;
      v33 = ++v66;
      if (v64[0])
      {
        LODWORD(v61) = 3;
        v62 = " must be CoreML Tensor of complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v63 = 125;
        v34 = &v61;
        v35 = v65;
        if (v33 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v33 > &v61)
          {
            v55 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v33 + 1, 24);
            v35 = v65;
            v34 = (v65 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v33 + 1, 24);
            v34 = &v61;
            v35 = v65;
          }
        }

        v36 = &v35[24 * v66];
        v37 = *v34;
        *(v36 + 2) = v34[2];
        *v36 = v37;
        ++v66;
        if (v64[0])
        {
          v38 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, a2);
          v39 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v56 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v39 = v65;
              v38 = (v65 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v38 = &v61;
              v39 = v65;
            }
          }

          v40 = &v39[24 * v66];
          v41 = *v38;
          *(v40 + 2) = v38[2];
          *v40 = v41;
          ++v66;
        }
      }
    }
  }

  v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v72;
      v45 = __p;
      if (v72 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v72 = v43;
      operator delete(v45);
    }

    v46 = v69;
    if (v69)
    {
      v47 = v70;
      v48 = v69;
      if (v70 != v69)
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
        v48 = v69;
      }

      v70 = v46;
      operator delete(v48);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v42;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (v12 = v8, ((*(*a1 + 120))(a1)) && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (v10 = v8, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (v8 = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (mlir::OperationState::addTypes(a2, &v8, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::CreateComplexOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v37[4] = *MEMORY[0x1E69E9840];
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
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++v16[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++v18[4];
  }

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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
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

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] - v27 > 1uLL)
  {
    *v27 = 15917;
    v26[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
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

  if (*(*this + 9))
  {
    v30 = *this - 16;
  }

  else
  {
    v30 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = v37;
  v36 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v33, v35, v36);
  if (v35 != v37)
  {
    free(v35);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateTokenOp::inferReturnTypes(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        v14 = a1;
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        a1 = v14;
        goto LABEL_7;
      }

      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 1uLL, 8);
      a1 = v13;
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  **a11 = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateTokenOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::CreateTokenOp *this)
{
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v74.var0 = "delegate_id";
  v74.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v58, v74);
  if (!v8)
  {
LABEL_46:
    v75.var0 = "resource";
    v75.var1 = 8;
    v36 = mlir::DictionaryAttr::get(&v58, v75);
    if (v36)
    {
      v37 = v36;
      if (!mlir::detail::DenseArrayAttrImpl<signed char>::classof(v36))
      {
        a3(v62, a4);
        if (v62[0])
        {
          v59 = 3;
          v61 = 53;
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

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    goto LABEL_46;
  }

  v9 = v8;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 56;
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

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "delegate_id", 11, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "resource", 8, v8);
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

unint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 11 && *a3 == 0x65746167656C6564 && *(a3 + 3) == 0x64695F6574616765)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x656372756F736572)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::ODIE::Compiler::CoreML::DelegateOp::setInherentAttr(void *result, void *a2, uint64_t a3, void *a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656372756F736572)
    {
      if (a4)
      {
        v5 = result;
        v7 = mlir::detail::DenseArrayAttrImpl<signed char>::classof(a4);
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

  else if (a3 == 11 && *a2 == 0x65746167656C6564 && *(a2 + 3) == 0x64695F6574616765)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

void mlir::ODIE::Compiler::CoreML::DelegateOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "delegate_id", 11, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "resource", 8, v5);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v8, "delegate_id", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v9, "resource", 8, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(void *a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1 || mlir::detail::DenseArrayAttrImpl<signed char>::classof(a1))
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
        v30 = "' failed to satisfy constraint: i8 dense array attribute";
        v31 = 56;
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

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<signed char>>(a1, v3 + 1);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<signed char>>(a1, v3 + 1);
    }
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<signed char>>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::detail::DenseArrayAttrImpl<signed char>::classof(v36))
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int8_t>]";
  v38 = 90;
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

void mlir::ODIE::Compiler::CoreML::DelegateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  v13 = *(a2 + 256);
  if (v13)
  {
    *v13 = a7;
    v14 = *(a2 + 256);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = operator new(0x10uLL);
    *v17 = 0;
    v17[1] = 0;
    *(a2 + 256) = v17;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v22;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v21;
    {
      mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a7;
    v14 = *(a2 + 256);
    if (v14)
    {
LABEL_3:
      *(v14 + 8) = a8;
      v15 = *(a2 + 72);
      v16 = a4 + v15;
      if (a4 + v15 <= *(a2 + 76))
      {
        goto LABEL_4;
      }

LABEL_12:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
      v15 = *(a2 + 72);
      if (!a4)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  v18 = operator new(0x10uLL);
  *v18 = 0;
  v18[1] = 0;
  *(a2 + 256) = v18;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v24;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v23;
  {
    mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = a8;
  v15 = *(a2 + 72);
  v16 = a4 + v15;
  if (a4 + v15 > *(a2 + 76))
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_13:
  v19 = 0;
  v20 = *(a2 + 64) + 8 * v15;
  do
  {
    *(v20 + 8 * v19) = mlir::TypeRange::dereference_iterator(a3, v19);
    ++v19;
  }

  while (a4 != v19);
  LODWORD(v15) = *(a2 + 72);
LABEL_16:
  *(a2 + 72) = v15 + a4;
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v33[0] = *this;
      if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v2, "delegate_id", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v33) & 1) == 0)
      {
        return 0;
      }

      v33[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v5, "resource", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v33) & 1) == 0)
      {
        return 0;
      }

      v23 = *this;
      v24 = *(*this + 9);
      if (*(*this + 9))
      {
        v25 = *this - 16;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        for (i = 0; i != v24; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v25, i);
        }

        v23 = *this;
      }

      mlir::Operation::getOperandTypes(v23, v33);
      mlir::TypeRange::TypeRange<mlir::OperandRange>(v29, v33);
      v27 = *(*this + 9);
      v28 = *this - 16;
      if (!v27)
      {
        v28 = 0;
      }

      v30 = v28;
      v31 = v27;
      mlir::OperandRange::getTypes(&v30, v33);
      mlir::TypeRange::TypeRange<mlir::ResultRange>(&v30, v33);
      if (mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(v29[0], v29[1], v30, v31))
      {
        return 1;
      }

      v30 = "failed to verify that number of handle inputs must match number of token outputs";
      v32 = 259;
      mlir::OpState::emitOpError(this, &v30, v33);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v33);
      return v7;
    }

    v30 = "requires attribute 'resource'";
    v32 = 259;
    mlir::OpState::emitOpError(this, &v30, v33);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v39;
        v18 = __p;
        if (v39 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v39 = v16;
        operator delete(v18);
      }

      v11 = v36;
      if (!v36)
      {
        goto LABEL_40;
      }

      v19 = v37;
      v13 = v36;
      if (v37 == v36)
      {
LABEL_39:
        v37 = v11;
        operator delete(v13);
LABEL_40:
        if (v34 != &v35)
        {
          free(v34);
        }

        return v7;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          operator delete[](v20);
        }
      }

      while (v19 != v11);
LABEL_38:
      v13 = v36;
      goto LABEL_39;
    }
  }

  else
  {
    v30 = "requires attribute 'delegate_id'";
    v32 = 259;
    mlir::OpState::emitOpError(this, &v30, v33);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v39;
        v10 = __p;
        if (v39 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v39 = v8;
        operator delete(v10);
      }

      v11 = v36;
      if (!v36)
      {
        goto LABEL_40;
      }

      v12 = v37;
      v13 = v36;
      if (v37 == v36)
      {
        goto LABEL_39;
      }

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
      goto LABEL_38;
    }
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::EqualOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::EqualOp *this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "message";
  v56.var1 = 7;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "message", 7, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 7 && (*a3 == 1936942445 ? (v4 = *(a3 + 3) == 1701273971) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::ErrorOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 7 && *a2 == 1936942445 && *(a2 + 3) == 1701273971)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ErrorOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "message", 7, *a2);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::ODIE::Compiler::CoreML::ErrorOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::ErrorOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ErrorOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v18[0] = *this;
    if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v1, "message", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
    {
      v3 = *(*this + 36);
      if (*(*this + 36))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'message'";
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

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::parse(uint64_t a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  __src = v24;
  v23 = 0x100000000;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v21, v6))
  {
    goto LABEL_19;
  }

  v7 = v21;
  if (v21)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      v9 = operator new(8uLL);
      *v9 = 0;
      *(a2 + 256) = v9;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v19;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v19;
      {
        mlir::ODIE::Compiler::CoreML::ErrorOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = *(a2 + 256);
      v7 = v21;
    }

    *v8 = v7;
  }

  if (((*(*a1 + 64))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0 || (v20 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v10 = *(a2 + 8), v19[0] = a1, v19[1] = &v20, v19[2] = a2, (v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96))) != 0) && (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v11, "message", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ErrorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19) & 1) == 0)
  {
LABEL_19:
    v16 = 0;
    v17 = __src;
    if (__src == v24)
    {
      return v16;
    }

LABEL_20:
    free(v17);
    return v16;
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
  v16 = 1;
  v17 = __src;
  if (__src != v24)
  {
    goto LABEL_20;
  }

  return v16;
}

void mlir::ODIE::Compiler::CoreML::ErrorOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v30 = *MEMORY[0x1E69E9840];
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
  v6 = *this;
  if (*(*this + 9))
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
    if (v9[3] - v10 > 1uLL)
    {
      *v10 = 15917;
      v9[4] += 2;
    }

    else
    {
      llvm::raw_ostream::write(v9, "->", 2uLL);
    }

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (v12 >= *(v11 + 3))
    {
      llvm::raw_ostream::write(v11, 32);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 32;
    }

    v13 = *(*this + 9);
    v14 = *this - 16;
    if (!v13)
    {
      v14 = 0;
    }

    v25[0] = v14;
    v25[1] = v13;
    mlir::OperandRange::getTypes(v25, &v26);
    v15 = v27;
    v16 = v29;
    if (v27 != v29)
    {
      v17 = v26;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, v27);
      (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v15 + 1; v16 != i; ++i)
      {
        v23 = (*(*a2 + 16))(a2);
        v24 = v23[4];
        if (v23[3] - v24 <= 1uLL)
        {
          llvm::raw_ostream::write(v23, ", ", 2uLL);
        }

        else
        {
          *v24 = 8236;
          v23[4] += 2;
        }

        v22 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, i);
        (*(*a2 + 32))(a2, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v6 = *this;
  }

  v26 = &v28;
  v28 = "message";
  v29 = 7;
  v27 = 0x200000001;
  v25[0] = mlir::Operation::getAttrDictionary(v6);
  Value = mlir::ArrayAttr::getValue(v25);
  (*(*a2 + 192))(a2, Value, v21, v26, v27);
  if (v26 != &v28)
  {
    free(v26);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ExpandDimsOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ExpandDimsOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
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

uint64_t mlir::ODIE::Compiler::CoreML::ExpandDimsOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::CoreML::ExpandDimsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v37[4] = *MEMORY[0x1E69E9840];
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
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++v16[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++v18[4];
  }

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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
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

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] - v27 > 1uLL)
  {
    *v27 = 28532;
    v26[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "to", 2uLL);
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

  if (*(*this + 9))
  {
    v30 = *this - 16;
  }

  else
  {
    v30 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = v37;
  v36 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v33, v35, v36);
  if (v35 != v37)
  {
    free(v35);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FillOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::FillOp *this)
{
  v99 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
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
    mlir::Operation::emitOpError(v2, &v76, &v87);
    if (v87)
    {
      LODWORD(v84) = 3;
      v85 = " #";
      v86 = 2;
      v5 = &v84;
      v6 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v84 && v89 + 24 * v90 > &v84)
        {
          v69 = &v84 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v6 = v89;
          v5 = (v89 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v5 = &v84;
          v6 = v89;
        }
      }

      v7 = &v6[24 * v90];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v90;
      if (v87)
      {
        LODWORD(v84) = 5;
        v85 = 1;
        v10 = &v84;
        v11 = v89;
        if (v9 >= v91)
        {
          if (v89 <= &v84 && v89 + 24 * v9 > &v84)
          {
            v70 = &v84 - v89;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v9 + 1, 24);
            v11 = v89;
            v10 = (v89 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v9 + 1, 24);
            v10 = &v84;
            v11 = v89;
          }
        }

        v12 = &v11[24 * v90];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v90;
        if (v87)
        {
          LODWORD(v84) = 3;
          v85 = " must be 0D tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
          v86 = 242;
          v15 = &v84;
          v16 = v89;
          if (v14 >= v91)
          {
            if (v89 <= &v84 && v89 + 24 * v14 > &v84)
            {
              v73 = &v84 - v89;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v14 + 1, 24);
              v16 = v89;
              v15 = (v89 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v14 + 1, 24);
              v15 = &v84;
              v16 = v89;
            }
          }

          v17 = &v16[24 * v90];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v90;
          if (v87)
          {
            v19 = &v84;
            mlir::DiagnosticArgument::DiagnosticArgument(&v84, v3);
            v20 = v89;
            if (v90 >= v91)
            {
              if (v89 <= &v84 && v89 + 24 * v90 > &v84)
              {
                v74 = &v84 - v89;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
                v20 = v89;
                v19 = (v89 + v74);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
                v19 = &v84;
                v20 = v89;
              }
            }

            v21 = &v20[24 * v90];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            ++v90;
          }
        }
      }
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if (v98 == 1)
    {
      if (v97 != &v98)
      {
        free(v97);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v96;
        v26 = __p;
        if (v96 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v96 = v24;
        operator delete(v26);
      }

      v27 = v93;
      if (v93)
      {
        v28 = v94;
        v29 = v93;
        if (v94 != v93)
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
          v29 = v93;
        }

        v94 = v27;
        operator delete(v29);
      }

      if (v89 != v92)
      {
        free(v89);
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
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
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
    v87 = v3;
    v88 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v87))
    {
      goto LABEL_3;
    }

    goto LABEL_65;
  }

  v45 = v35[1];
  v87 = v3;
  v88 = v45;
  if (!mlir::CallOpInterface::getArgOperands(&v87))
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
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
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
    if (v56)
    {
      goto LABEL_3;
    }

    goto LABEL_80;
  }

  v57 = v50[1];
  v76 = v3;
  v77 = v57;
  mlir::CallableOpInterface::getArgAttrsAttr(&v76);
  if (v58)
  {
    goto LABEL_3;
  }

LABEL_80:
  v59 = *v3;
  {
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    if (v62)
    {
      goto LABEL_82;
    }

LABEL_91:
    v62 = 0;
    v63 = v61;
    goto LABEL_92;
  }

  v71 = v59;
  mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
  v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v61 = *(v71 + 8);
  v62 = *(v71 + 16);
  if (!v62)
  {
    goto LABEL_91;
  }

LABEL_82:
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
LABEL_92:
  if (v63 != &v61[2 * v62] && *v63 == v60)
  {
    v72 = v63[1];
  }

  else
  {
    v72 = 0;
  }

  v84 = v3;
  v85 = v72;
  isSplat = mlir::ElementsAttr::isSplat(&v84);
  if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isSignedInteger(&isSplat, 4) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 4) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    if (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v81 = isSplat, Value = mlir::AffineMapAttr::getValue(&v81), !mlir::Type::isF16(&Value)) && (*(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v79 = isSplat, v80 = mlir::AffineMapAttr::getValue(&v79), !mlir::Type::isF32(&v80))))
    {
      if (!mlir::Type::isSignlessInteger(&isSplat, 1))
      {
        goto LABEL_3;
      }
    }
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v94.var0 = "arg_attrs";
  v94.var1 = 9;
  v8 = mlir::DictionaryAttr::get(&v77, v94);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

  v95.var0 = "externAttr";
  v95.var1 = 10;
  v36 = mlir::DictionaryAttr::get(&v77, v95);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
    {
      v37 = v36;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 55;
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

  v96.var0 = "function_type";
  v96.var1 = 13;
  v52 = mlir::DictionaryAttr::get(&v77, v96);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v53 = v52;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 58;
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

  v97.var0 = "no_inline";
  v97.var1 = 9;
  v62 = mlir::DictionaryAttr::get(&v77, v97);
  v78 = v62;
  if (v62)
  {
    if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v81, a4);
LABEL_95:
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v81, v63);
      goto LABEL_96;
    }

    a1[3] = v62;
  }

  v98.var0 = "param_decls";
  v98.var1 = 11;
  v64 = mlir::DictionaryAttr::get(&v77, v98);
  v78 = v64;
  if (!v64)
  {
LABEL_92:
    v99.var0 = "res_attrs";
    v99.var1 = 9;
    v66 = mlir::DictionaryAttr::get(&v77, v99);
    v78 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v81, a4);
        goto LABEL_95;
      }

      a1[5] = v66;
    }

    v100.var0 = "safeTransforms";
    v100.var1 = 14;
    v68 = mlir::DictionaryAttr::get(&v77, v100);
    v78 = v68;
    if (v68)
    {
      if (*(*v68 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        a3(&v81, a4);
        goto LABEL_96;
      }

      a1[6] = v68;
    }

    v101.var0 = "sym_name";
    v101.var1 = 8;
    v69 = mlir::DictionaryAttr::get(&v77, v101);
    v78 = v69;
    if (v69)
    {
      if (*(*v69 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v81, a4);
        goto LABEL_96;
      }

      a1[7] = v69;
    }

    return 1;
  }

  if (*(*v64 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    a1[4] = v64;
    goto LABEL_92;
  }

  a3(&v81, a4);
LABEL_96:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v65, &v78);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v65[6] = *MEMORY[0x1E69E9840];
  v62 = a1;
  v63 = v65;
  v64 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v62, "arg_attrs", 9, *a2);
  v5 = v64;
  if (v64 >= HIDWORD(v64))
  {
    v46 = NamedAttr;
    v47 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
    v4 = v47;
    NamedAttr = v46;
    v5 = v64;
  }

  v6 = (v63 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v64 + 1;
  LODWORD(v64) = v64 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v62, "externAttr", 10, v8);
    v11 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v48 = v9;
      v49 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v10 = v49;
      v9 = v48;
      v11 = v64;
    }

    v12 = (v63 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v62, "function_type", 13, v13);
    v16 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v50 = v14;
      v51 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v15 = v51;
      v14 = v50;
      v16 = v64;
    }

    v17 = (v63 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v62, "no_inline", 9, v18);
    v21 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v52 = v19;
      v53 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v20 = v53;
      v19 = v52;
      v21 = v64;
    }

    v22 = (v63 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v62, "param_decls", 11, v23);
    v26 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v54 = v24;
      v55 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v25 = v55;
      v24 = v54;
      v26 = v64;
    }

    v27 = (v63 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v62, "res_attrs", 9, v28);
    v31 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v56 = v29;
      v57 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v30 = v57;
      v29 = v56;
      v31 = v64;
    }

    v32 = (v63 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v62, "safeTransforms", 14, v33);
    v36 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v58 = v34;
      v59 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v35 = v59;
      v34 = v58;
      v36 = v64;
    }

    v37 = (v63 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v38 = a2[7];
  if (v38)
  {
    v39 = mlir::Builder::getNamedAttr(&v62, "sym_name", 8, v38);
    v41 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v60 = v39;
      v61 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v40 = v61;
      v39 = v60;
      v41 = v64;
    }

    v42 = (v63 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v43 = v63;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v63 == v65)
    {
      return DictionaryAttr;
    }

    goto LABEL_36;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v62, v63, v7);
  v43 = v63;
  if (v63 != v65)
  {
LABEL_36:
    free(v43);
  }

  return DictionaryAttr;
}