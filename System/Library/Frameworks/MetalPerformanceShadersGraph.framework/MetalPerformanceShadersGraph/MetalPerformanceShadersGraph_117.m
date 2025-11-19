unint64_t mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(mlir::Operation **this, int a2)
{
  LODWORD(v2) = a2;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v5 + 16 * v6), *(*(*(*this + 6) + 96) + 24));
  if (v8)
  {
    AttrDictionary = *(v7 + 1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    v10 = 0;
    return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
  }

  AttrDictionary = 0;
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = 0;
  LODWORD(v10) = 0;
  v2 = v2;
  do
  {
    v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + v9) + v10);
    v9 += 4;
  }

  while (4 * v2 != v9);
  return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
}

uint64_t mlir::mpsx::QuantizedGatherOp::getDtype(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::QuantizedGatherOp::getAllowNegativeIndicesAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 48), **(*(*this + 6) + 96));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

void mlir::mpsx::QuantizedGatherOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11)
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = a4;
  v42 = a3;
  v39 = a6;
  v40 = a5;
  v37 = a8;
  v38 = a7;
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  mlir::OperationState::addOperands(a2, &v39, 1uLL);
  if (a7)
  {
    mlir::OperationState::addOperands(a2, &v38, 1uLL);
  }

  if (a8)
  {
    mlir::OperationState::addOperands(a2, &v37, 1uLL);
    v15 = v37 != 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(*(a2 + 8) + 96) + 24);
  *&v17 = 0x100000001;
  *(&v17 + 1) = 0x100000001;
  *__src = v17;
  v45[0] = v38 != 0;
  v45[1] = v15;
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, __src, 6);
  mlir::NamedAttribute::NamedAttribute(&v46, v16, DenseI32ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v46, v47);
  v19 = *(*(*(a2 + 8) + 96) + 16);
  v20 = mlir::TypeAttr::get(a9);
  mlir::NamedAttribute::NamedAttribute(__src, v19, v20);
  mlir::NamedAttrList::push_back(a2 + 112, __src[0], __src[1]);
  v21 = *(*(*(a2 + 8) + 96) + 8);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a10);
  mlir::NamedAttribute::NamedAttribute(__src, v21, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src[0], __src[1]);
  if (a11)
  {
    v25 = **(*(a2 + 8) + 96);
    UnitAttr = mlir::Builder::getUnitAttr(a1, v24);
    mlir::NamedAttribute::NamedAttribute(__src, v25, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, __src[0], __src[1]);
  }

  __src[0] = v45;
  __src[1] = 0x200000000;
  v27 = *a1;
  v28 = *a2;
  mlir::ValueRange::ValueRange(&v46, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v43, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::QuantizedGatherOp::inferReturnTypes(v27, v28, 1, v46, v47, Dictionary, v31, v32, v43[0], v43[1], __src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v33 = __src[0];
  v34 = LODWORD(__src[1]);
  v35 = *(a2 + 72);
  v36 = v35 + LODWORD(__src[1]);
  if (v36 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v36, 8);
    LODWORD(v35) = *(a2 + 72);
  }

  if (v34)
  {
    memcpy((*(a2 + 64) + 8 * v35), v33, 8 * v34);
    LODWORD(v35) = *(a2 + 72);
  }

  *(a2 + 72) = v35 + v34;
  if (__src[0] != v45)
  {
    free(__src[0]);
  }
}

BOOL mlir::mpsx::QuantizedGatherOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v231 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_7:
    v208 = "requires attribute 'batch_dims'";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v229 != 1)
    {
      return v7;
    }

    if (v228 != &v229)
    {
      free(v228);
    }

    v8 = v226;
    if (v226)
    {
      v9 = v227;
      v10 = v226;
      if (v227 != v226)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = v226;
      }

      v227 = v8;
      operator delete(v10);
    }

    v11 = v224;
    if (v224)
    {
      v12 = v225;
      v13 = v224;
      if (v225 == v224)
      {
        goto LABEL_88;
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
LABEL_87:
      v13 = v224;
LABEL_88:
      v225 = v11;
      operator delete(v13);
    }

LABEL_89:
    if (v220 != v223)
    {
      free(v220);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::CallGraphNode::getCallableRegion(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::CallGraphNode::getCallableRegion(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v208 = "requires attribute 'dtype'";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v229 != 1)
    {
      return v7;
    }

    if (v228 != &v229)
    {
      free(v228);
    }

    v19 = v226;
    if (v226)
    {
      v20 = v227;
      v21 = v226;
      if (v227 != v226)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = v226;
      }

      v227 = v19;
      operator delete(v21);
    }

    v11 = v224;
    if (v224)
    {
      v22 = v225;
      v13 = v224;
      if (v225 == v224)
      {
        goto LABEL_88;
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

      while (v22 != v11);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    if (mlir::CallGraphNode::getCallableRegion((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v25 = v6 - v16;
  if (!v25)
  {
LABEL_47:
    v208 = "requires attribute 'operandSegmentSizes'";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v229 != 1)
    {
      return v7;
    }

    if (v228 != &v229)
    {
      free(v228);
    }

    v27 = v226;
    if (v226)
    {
      v28 = v227;
      v29 = v226;
      if (v227 != v226)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = v226;
      }

      v227 = v27;
      operator delete(v29);
    }

    v11 = v224;
    if (v224)
    {
      v30 = v225;
      v13 = v224;
      if (v225 == v224)
      {
        goto LABEL_88;
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

      while (v30 != v11);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v26 = *(v18 + 1);
  while (mlir::CallGraphNode::getCallableRegion(v18) != *(*(*(*this + 6) + 96) + 24))
  {
    v18 = (v18 + 16);
    v25 -= 16;
    if (!v25)
    {
      goto LABEL_47;
    }
  }

  v213[0] = *(v18 + 1);
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(v213);
  if (v33 != 6)
  {
    v34 = v33;
    v208 = "'operandSegmentSizes' attribute for specifying operand segments must have 6 elements, but got ";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    if (AttrDictionary)
    {
      LODWORD(isSplat) = 5;
      v216 = v34;
      v35 = &isSplat;
      v36 = v220;
      if (v221 >= v222)
      {
        if (v220 <= &isSplat && &v220[3 * v221] > &isSplat)
        {
          v205 = &isSplat - v220;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v220, v223, v221 + 1, 24);
          v36 = v220;
          v35 = (v220 + v205);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v220, v223, v221 + 1, 24);
          v35 = &isSplat;
          v36 = v220;
        }
      }

      v37 = &v36[3 * v221];
      v38 = *v35;
      v37[2] = v35[2];
      *v37 = v38;
      ++v221;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if ((v229 & 1) == 0)
    {
      return v7;
    }

    if (v228 != &v229)
    {
      free(v228);
    }

    v39 = v226;
    if (v226)
    {
      v40 = v227;
      v41 = v226;
      if (v227 != v226)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = v226;
      }

      v227 = v39;
      operator delete(v41);
    }

    v11 = v224;
    if (v224)
    {
      v42 = v225;
      v13 = v224;
      if (v225 == v224)
      {
        goto LABEL_88;
      }

      do
      {
        v44 = *--v42;
        v43 = v44;
        *v42 = 0;
        if (v44)
        {
          operator delete[](v43);
        }
      }

      while (v42 != v11);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v26, "dtype", 5) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, v17, "batch_dims", 0xA) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v5, "allow_negative_indices", 0x16) & 1) == 0)
  {
    return 0;
  }

  v207 = 0;
  ODSOperands = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 0);
  if (v47)
  {
    v48 = ODSOperands;
    v49 = v47;
    for (i = 0; i != v49; ++i)
    {
      v51 = *this;
      v52 = (*(*(v48 + 32 * i + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v53 = v207++;
      v54 = *v52;
      v55 = *(*v52 + 136);
      if (v55 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v55 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v54 + 8);
        AttrDictionary = v52;
        v219 = v57;
        isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
        if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          continue;
        }

        v54 = *v52;
        v55 = *(*v52 + 136);
      }

      if (v55 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v55 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v59 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v54 + 8);
        v208 = v52;
        v209 = v59;
        isSplat = mlir::ElementsAttr::isSplat(&v208);
        if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
        {
          continue;
        }
      }

      v210 = 261;
      v208 = "operand";
      v209 = 7;
      mlir::Operation::emitOpError(v51, &v208, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
      if (*v60)
      {
        v62 = v60 + 24;
        v61 = *(v60 + 24);
        LODWORD(isSplat) = 5;
        v216 = v53;
        v63 = *(v60 + 32);
        if (v63 >= *(v60 + 36))
        {
          if (v61 <= &isSplat && v61 + 24 * v63 > &isSplat)
          {
            v89 = &isSplat - v61;
            v90 = v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v60 + 24, v60 + 40, v63 + 1, 24);
            v60 = v90;
            v61 = *(v90 + 24);
            p_isSplat = &v89[v61];
          }

          else
          {
            v87 = v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v60 + 24, v60 + 40, v63 + 1, 24);
            v60 = v87;
            v61 = *(v87 + 24);
            p_isSplat = &isSplat;
          }
        }

        else
        {
          p_isSplat = &isSplat;
        }

        v65 = v61 + 24 * *(v60 + 32);
        v66 = *p_isSplat;
        *(v65 + 16) = p_isSplat[2];
        *v65 = v66;
        v67 = (*(v60 + 32) + 1);
        *(v60 + 32) = v67;
        if (*v60)
        {
          LODWORD(isSplat) = 3;
          v216 = " must be tensor of mps native type values or tensor of quantized values, but got ";
          v217 = 81;
          v68 = *(v60 + 24);
          if (v67 >= *(v60 + 36))
          {
            if (v68 <= &isSplat && v68 + 24 * v67 > &isSplat)
            {
              v91 = &isSplat - v68;
              v92 = v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v62, v60 + 40, v67 + 1, 24);
              v60 = v92;
              v68 = *(v92 + 24);
              v69 = &v91[v68];
            }

            else
            {
              v88 = v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v62, v60 + 40, v67 + 1, 24);
              v60 = v88;
              v68 = *(v88 + 24);
              v69 = &isSplat;
            }
          }

          else
          {
            v69 = &isSplat;
          }

          v70 = v68 + 24 * *(v60 + 32);
          v71 = *v69;
          *(v70 + 16) = v69[2];
          *v70 = v71;
          ++*(v60 + 32);
          if (*v60)
          {
            v72 = &isSplat;
            v73 = v60;
            mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v52);
            v74 = *(v73 + 32);
            v75 = *(v73 + 24);
            if (v74 >= *(v73 + 36))
            {
              if (v75 <= &isSplat && v75 + 24 * v74 > &isSplat)
              {
                v93 = &isSplat - v75;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v62, v73 + 40, v74 + 1, 24);
                v60 = v73;
                v75 = *(v73 + 24);
                v72 = &v93[v75];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v62, v73 + 40, v74 + 1, 24);
                v60 = v73;
                v75 = *(v73 + 24);
                v72 = &isSplat;
              }
            }

            else
            {
              v60 = v73;
            }

            v76 = v75 + 24 * *(v60 + 32);
            v77 = *v72;
            *(v76 + 16) = v72[2];
            *v76 = v77;
            ++*(v60 + 32);
          }
        }
      }

      v78 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v229 == 1)
      {
        if (v228 != &v229)
        {
          free(v228);
        }

        v79 = v226;
        if (v226)
        {
          v80 = v227;
          v81 = v226;
          if (v227 != v226)
          {
            do
            {
              v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
            }

            while (v80 != v79);
            v81 = v226;
          }

          v227 = v79;
          operator delete(v81);
        }

        v82 = v224;
        if (v224)
        {
          v83 = v225;
          v84 = v224;
          if (v225 != v224)
          {
            do
            {
              v86 = *--v83;
              v85 = v86;
              *v83 = 0;
              if (v86)
              {
                operator delete[](v85);
              }
            }

            while (v83 != v82);
            v84 = v224;
          }

          v225 = v82;
          operator delete(v84);
        }

        if (v220 != v223)
        {
          free(v220);
        }
      }

      if (!v78)
      {
        return 0;
      }
    }
  }

  v94 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 1);
  if (v95)
  {
    v96 = v94;
    v97 = v95;
    v98 = 0;
    do
    {
      v99 = *this;
      v100 = *(*(v96 + 32 * v98 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v101 = v207++;
      v102 = *(*v100 + 136);
      if (v102 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v102 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
        AttrDictionary = v100;
        v219 = v104;
        v208 = mlir::ElementsAttr::isSplat(&AttrDictionary);
        if (mlir::Type::isSignedInteger(&v208, 8) || mlir::Type::isSignedInteger(&v208, 16) || mlir::Type::isSignedInteger(&v208, 32) || mlir::Type::isSignedInteger(&v208, 64) || mlir::Type::isUnsignedInteger(&v208, 8) || mlir::Type::isUnsignedInteger(&v208, 16) || mlir::Type::isUnsignedInteger(&v208, 32) || mlir::Type::isUnsignedInteger(&v208, 64))
        {
          continue;
        }
      }

      v210 = 261;
      v208 = "operand";
      v209 = 7;
      mlir::Operation::emitOpError(v99, &v208, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
      if (*v105)
      {
        v106 = *(v105 + 24);
        LODWORD(isSplat) = 5;
        v216 = v101;
        v107 = *(v105 + 32);
        if (v107 >= *(v105 + 36))
        {
          if (v106 <= &isSplat && v106 + 24 * v107 > &isSplat)
          {
            v128 = &isSplat - v106;
            v129 = v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v105 + 24, v105 + 40, v107 + 1, 24);
            v105 = v129;
            v106 = *(v129 + 24);
            v108 = &v128[v106];
          }

          else
          {
            v127 = v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v105 + 24, v105 + 40, v107 + 1, 24);
            v105 = v127;
            v106 = *(v127 + 24);
            v108 = &isSplat;
          }
        }

        else
        {
          v108 = &isSplat;
        }

        v109 = v106 + 24 * *(v105 + 32);
        v110 = *v108;
        *(v109 + 16) = v108[2];
        *v109 = v110;
        ++*(v105 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v105, " must be tensor of int values, but got ");
      if (*v111)
      {
        v112 = &isSplat;
        v113 = v111;
        mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v100);
        v114 = *(v113 + 24);
        v115 = *(v113 + 32);
        if (v115 >= *(v113 + 36))
        {
          if (v114 <= &isSplat && v114 + 24 * v115 > &isSplat)
          {
            v130 = &isSplat - v114;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v113 + 24, v113 + 40, v115 + 1, 24);
            v111 = v113;
            v114 = *(v113 + 24);
            v112 = &v130[v114];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v113 + 24, v113 + 40, v115 + 1, 24);
            v111 = v113;
            v114 = *(v113 + 24);
            v112 = &isSplat;
          }
        }

        else
        {
          v111 = v113;
        }

        v116 = v114 + 24 * *(v111 + 32);
        v117 = *v112;
        *(v116 + 16) = v112[2];
        *v116 = v117;
        ++*(v111 + 32);
      }

      v118 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v111);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v229 == 1)
      {
        if (v228 != &v229)
        {
          free(v228);
        }

        v119 = v226;
        if (v226)
        {
          v120 = v227;
          v121 = v226;
          if (v227 != v226)
          {
            do
            {
              v120 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v120 - 1);
            }

            while (v120 != v119);
            v121 = v226;
          }

          v227 = v119;
          operator delete(v121);
        }

        v122 = v224;
        if (v224)
        {
          v123 = v225;
          v124 = v224;
          if (v225 != v224)
          {
            do
            {
              v126 = *--v123;
              v125 = v126;
              *v123 = 0;
              if (v126)
              {
                operator delete[](v125);
              }
            }

            while (v123 != v122);
            v124 = v224;
          }

          v225 = v122;
          operator delete(v124);
        }

        if (v220 != v223)
        {
          free(v220);
        }
      }

      if (!v118)
      {
        return 0;
      }
    }

    while (++v98 != v97);
  }

  v206 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 2);
  if (v131)
  {
    v132 = v131;
    v133 = 0;
    while (1)
    {
      v134 = *this;
      v135 = (*(*(v206 + 32 * v133 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v136 = v207++;
      v137 = *v135;
      if (*(*v135 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v137 + 8);
        AttrDictionary = v135;
        v219 = v138;
        ArgOperands = mlir::CallOpInterface::getArgOperands(&AttrDictionary);
        v137 = *v135;
        if (ArgOperands)
        {
          v140 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v137 + 8);
          v208 = v135;
          v209 = v140;
          mlir::CallableOpInterface::getArgAttrsAttr(&v208);
          v137 = *v135;
          if (!v141)
          {
            v175 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v137 + 8);
            isSplat = v135;
            v216 = v175;
            v214 = mlir::ElementsAttr::isSplat(&isSplat);
            if (mlir::Type::isSignedInteger(&v214, 32) || mlir::Type::isSignedInteger(&v214, 64))
            {
              goto LABEL_230;
            }

            v137 = *v135;
          }
        }
      }

      v142 = *(v137 + 136);
      if (v142 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v142 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v144 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v137 + 8);
        v213[0] = v135;
        v213[1] = v144;
        v214 = mlir::ElementsAttr::isSplat(v213);
        if (mlir::Type::isSignedInteger(&v214, 32) || mlir::Type::isSignedInteger(&v214, 64))
        {
          v145 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
          v212[0] = v135;
          v212[1] = v145;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v212);
          v230 = 1;
          if (v147 == 1 && *ArgAttrsAttr == v230)
          {
            goto LABEL_230;
          }
        }
      }

      if (*(*v135 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v174 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
        v211[0] = v135;
        v211[1] = v174;
        v214 = mlir::ElementsAttr::isSplat(v211);
        if (mlir::Type::isSignedInteger(&v214, 32) || mlir::Type::isSignedInteger(&v214, 64))
        {
          goto LABEL_230;
        }
      }

      v210 = 261;
      v208 = "operand";
      v209 = 7;
      mlir::Operation::emitOpError(v134, &v208, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
      v149 = v148;
      if (*v148)
      {
        v150 = *(v148 + 24);
        LODWORD(isSplat) = 5;
        v216 = v136;
        v151 = *(v148 + 32);
        if (v151 >= *(v148 + 36))
        {
          if (v150 <= &isSplat && v150 + 24 * v151 > &isSplat)
          {
            v176 = &isSplat - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v148 + 24, v148 + 40, v151 + 1, 24);
            v150 = *(v149 + 24);
            v152 = &v176[v150];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v148 + 24, v148 + 40, v151 + 1, 24);
            v150 = *(v149 + 24);
            v152 = &isSplat;
          }
        }

        else
        {
          v152 = &isSplat;
        }

        v153 = v150 + 24 * *(v149 + 32);
        v154 = *v152;
        *(v153 + 16) = v152[2];
        *v153 = v154;
        v155 = (*(v149 + 32) + 1);
        *(v149 + 32) = v155;
        if (*v149)
        {
          break;
        }
      }

LABEL_253:
      v165 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v229 == 1)
      {
        if (v228 != &v229)
        {
          free(v228);
        }

        v166 = v226;
        if (v226)
        {
          v167 = v227;
          v168 = v226;
          if (v227 != v226)
          {
            do
            {
              v167 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v167 - 1);
            }

            while (v167 != v166);
            v168 = v226;
          }

          v227 = v166;
          operator delete(v168);
        }

        v169 = v224;
        if (v224)
        {
          v170 = v225;
          v171 = v224;
          if (v225 != v224)
          {
            do
            {
              v173 = *--v170;
              v172 = v173;
              *v170 = 0;
              if (v173)
              {
                operator delete[](v172);
              }
            }

            while (v170 != v169);
            v171 = v224;
          }

          v225 = v169;
          operator delete(v171);
        }

        if (v220 != v223)
        {
          free(v220);
        }
      }

      if (!v165)
      {
        return 0;
      }

LABEL_230:
      if (++v133 == v132)
      {
        goto LABEL_294;
      }
    }

    LODWORD(isSplat) = 3;
    v216 = " must be 0D tensor of mps index type values or static-shape defined tensor with shape equal to [1] or unranked tensor of mps index type values, but got ";
    v217 = 152;
    v156 = *(v149 + 24);
    if (v155 >= *(v149 + 36))
    {
      if (v156 <= &isSplat && v156 + 24 * v155 > &isSplat)
      {
        v177 = &isSplat - v156;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v149 + 24, v149 + 40, v155 + 1, 24);
        v156 = *(v149 + 24);
        v157 = &v177[v156];
LABEL_250:
        v158 = v156 + 24 * *(v149 + 32);
        v159 = *v157;
        *(v158 + 16) = v157[2];
        *v158 = v159;
        ++*(v149 + 32);
        if (*v149)
        {
          v160 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v135);
          v161 = *(v149 + 32);
          v162 = *(v149 + 24);
          if (v161 >= *(v149 + 36))
          {
            if (v162 <= &isSplat && v162 + 24 * v161 > &isSplat)
            {
              v178 = &isSplat - v162;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v149 + 24, v149 + 40, v161 + 1, 24);
              v162 = *(v149 + 24);
              v160 = &v178[v162];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v149 + 24, v149 + 40, v161 + 1, 24);
              v162 = *(v149 + 24);
              v160 = &isSplat;
            }
          }

          v163 = v162 + 24 * *(v149 + 32);
          v164 = *v160;
          *(v163 + 16) = v160[2];
          *v163 = v164;
          ++*(v149 + 32);
        }

        goto LABEL_253;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(v149 + 24, v149 + 40, v155 + 1, 24);
      v156 = *(v149 + 24);
    }

    v157 = &isSplat;
    goto LABEL_250;
  }

LABEL_294:
  v179 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 3);
  if (v180)
  {
    v181 = v180;
    v182 = v207;
    v183 = v179 + 24;
    do
    {
      v184 = *this;
      v185 = *(*v183 + 8);
      v186 = v182 + 1;
      v207 = v182 + 1;
      if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(v184, v185 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v182) & 1) == 0)
      {
        return 0;
      }

      v183 += 32;
      v182 = v186;
    }

    while (--v181);
  }

  v187 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 4);
  v189 = v188;
  if (v188 >= 2)
  {
LABEL_299:
    v208 = "operand group starting at #";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(&AttrDictionary, &v207);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v190, " requires 0 or 1 element, but found ");
    isSplat = v189;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v191, &isSplat);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v192);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
    return v7;
  }

  if (v188)
  {
    v193 = *(v187 + 24);
    v194 = *this;
    v195 = *(v193 + 8);
    v196 = v207++;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps18(v194, v195 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v196) & 1) == 0)
    {
      return 0;
    }
  }

  v197 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 5);
  v189 = v198;
  if (v198 >= 2)
  {
    goto LABEL_299;
  }

  if (v198)
  {
    v199 = *(v197 + 24);
    v200 = *this;
    v201 = *(v199 + 8);
    v202 = v207++;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(v200, v201 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v202) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v203 = *this - 16;
  }

  else
  {
    v203 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v203, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps18(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v44[0] = a2;
    v44[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v40[0] = mlir::ElementsAttr::isSplat(v44);
    if (mlir::Type::isSignedInteger(v40, 2))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 4))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 1))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 2))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 4))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 32))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v40[0] + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
    {
      return 1;
    }
  }

  v41 = 261;
  v40[0] = a3;
  v40[1] = a4;
  mlir::Operation::emitOpError(a1, v40, v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, " #");
  if (*v13)
  {
    v14 = *(v13 + 24);
    v42 = 5;
    v43 = a5;
    v15 = *(v13 + 32);
    v16 = &v42;
    if (v15 >= *(v13 + 36))
    {
      if (v14 <= &v42 && v14 + 24 * v15 > &v42)
      {
        v37 = &v42 - v14;
        v38 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v15 + 1, 24);
        v13 = v38;
        v14 = *(v38 + 24);
        v16 = &v37[v14];
      }

      else
      {
        v36 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v15 + 1, 24);
        v13 = v36;
        v14 = *(v36 + 24);
        v16 = &v42;
      }
    }

    v17 = v14 + 24 * *(v13 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    ++*(v13 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, " must be tensor of quantized values, but got ");
  if (*v19)
  {
    v20 = &v42;
    v21 = v19;
    mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
    v19 = v21;
    v22 = *(v21 + 24);
    v23 = *(v21 + 32);
    if (v23 >= *(v21 + 36))
    {
      if (v22 <= &v42 && v22 + 24 * v23 > &v42)
      {
        v39 = &v42 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v39[v22];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v42;
      }
    }

    v24 = v22 + 24 * *(v19 + 32);
    v25 = *v20;
    *(v24 + 16) = *(v20 + 2);
    *v24 = v25;
    ++*(v19 + 32);
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v50;
      v29 = __p;
      if (v50 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v50 = v27;
      operator delete(v29);
    }

    v30 = v47;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
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
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v26;
}

uint64_t mlir::mpsx::detail::QuantizedMatMulOpGenericAdaptorBase::getWeightsQuantParamsAxis(mlir::mpsx::detail::QuantizedMatMulOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), v3, *(*(*(this + 1) + 96) + 40));
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 1);
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    v9 = 0;
    return v8 | v6 | v9;
  }

  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v6 = 0;
  }

  v14 = v6;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  mlir::IntegerAttr::getValue(&v14, &__p);
  if (v13 > 0x40)
  {
    v11 = *__p;
    operator delete[](__p);
  }

  else if (v13)
  {
    v11 = (__p << -v13) >> -v13;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v6 = v11 & 0xFFFFFF00;
  v9 = v11;
  v8 = 0x100000000;
  return v8 | v6 | v9;
}

unint64_t mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(mlir::Operation **this, int a2)
{
  LODWORD(v2) = a2;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v5 + 16 * v6 - 16), *(*(*(*this + 6) + 96) + 8));
  if (v8)
  {
    AttrDictionary = *(v7 + 1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    v10 = 0;
    return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
  }

  AttrDictionary = 0;
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = 0;
  LODWORD(v10) = 0;
  v2 = v2;
  do
  {
    v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + v9) + v10);
    v9 += 4;
  }

  while (4 * v2 != v9);
  return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &__p);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *__p;
      operator delete[](__p);
    }

    else if (v4)
    {
      v2 = (__p << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &__p);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *__p;
      operator delete[](__p);
    }

    else if (v4)
    {
      v2 = (__p << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getTransposeLhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getTransposeRhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

void mlir::mpsx::QuantizedMatMulOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, unsigned __int8 a18)
{
  v66 = *MEMORY[0x1E69E9840];
  v55 = a4;
  v56 = a3;
  v53 = a6;
  v54 = a5;
  v51 = a9;
  v52 = a8;
  v49 = a11;
  v50 = a10;
  v47 = a14;
  v48 = a13;
  v46 = a15;
  mlir::OperationState::addOperands(a2, &v56, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v55, 1uLL);
  }

  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v54, 1uLL);
  }

  if (a6)
  {
    mlir::OperationState::addOperands(a2, &v53, 1uLL);
  }

  mlir::OperationState::addOperands(a2, &v52, 1uLL);
  if (a9)
  {
    mlir::OperationState::addOperands(a2, &v51, 1uLL);
  }

  if (a10)
  {
    mlir::OperationState::addOperands(a2, &v50, 1uLL);
  }

  if (a11)
  {
    mlir::OperationState::addOperands(a2, &v49, 1uLL);
  }

  if (a13)
  {
    mlir::OperationState::addOperands(a2, &v48, 1uLL);
  }

  if (a14)
  {
    mlir::OperationState::addOperands(a2, &v47, 1uLL);
  }

  if (a15)
  {
    mlir::OperationState::addOperands(a2, &v46, 1uLL);
    v22 = v46 != 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(*(*(a2 + 8) + 96) + 8);
  LODWORD(__src) = 1;
  HIDWORD(__src) = v55 != 0;
  LODWORD(v59) = v54 != 0;
  HIDWORD(v59) = v53 != 0;
  v24.i64[0] = v51;
  v24.i64[1] = v50;
  v25.i64[0] = v49;
  v25.i64[1] = v48;
  v60 = 1;
  v26 = vuzp1q_s32(vceqzq_s64(v24), vceqzq_s64(v25));
  v25.i64[0] = 0x100000001;
  v25.i64[1] = 0x100000001;
  v61 = vbicq_s8(v25, v26);
  v62 = v47 != 0;
  v63 = v22;
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, &__src, 11);
  mlir::NamedAttribute::NamedAttribute(&v64, v23, DenseI32ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v64, v65);
  if (a7)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a7);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v59);
  }

  if (a12)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 40), a12);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v59);
  }

  v28 = *(*(*(a2 + 8) + 96) + 16);
  v29 = mlir::TypeAttr::get(a16);
  mlir::NamedAttribute::NamedAttribute(&__src, v28, v29);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v59);
  v30 = *(*(*(a2 + 8) + 96) + 24);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a17);
  mlir::NamedAttribute::NamedAttribute(&__src, v30, BoolAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v59);
  v32 = *(*(*(a2 + 8) + 96) + 32);
  v33 = mlir::Builder::getBoolAttr(a1, a18);
  mlir::NamedAttribute::NamedAttribute(&__src, v32, v33);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v59);
  __src = &v60;
  v59 = 0x200000000;
  v34 = *a1;
  v35 = *a2;
  mlir::ValueRange::ValueRange(&v64, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v57, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::QuantizedMatMulOp::inferReturnTypes(v34, v35, 1, v64, v65, Dictionary, v38, v39, v57[0], v57[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v40 = __src;
  v41 = v59;
  v42 = *(a2 + 72);
  v43 = v42 + v59;
  if (v43 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v43, 8);
    LODWORD(v42) = *(a2 + 72);
  }

  if (v41)
  {
    memcpy((*(a2 + 64) + 8 * v42), v40, 8 * v41);
    LODWORD(v42) = *(a2 + 72);
  }

  *(a2 + 72) = v42 + v41;
  if (__src != &v60)
  {
    free(__src);
  }
}

uint64_t mlir::mpsx::QuantizedMatMulOp::populateDefaultAttrs(mlir::mpsx::QuantizedMatMulOp *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[3]))
  {
    v5 = v4[3];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v11, v5, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v11, v12);
  }

  result = mlir::NamedAttrList::get(a2, v4[4]);
  if (!result)
  {
    v8 = v4[4];
    v9 = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v11, v8, v9);
    return mlir::NamedAttrList::push_back(a2, v11, v12);
  }

  return result;
}

BOOL mlir::mpsx::QuantizedMatMulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v133 = *MEMORY[0x1E69E9840];
  v122[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v122);
  if (!v3)
  {
LABEL_7:
    v119[0] = "requires attribute 'operandSegmentSizes'";
    v120 = 259;
    mlir::OpState::emitOpError(this, v119, v122);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
    if (v122[0])
    {
      mlir::InFlightDiagnostic::report(v122);
    }

    if (v132 != 1)
    {
      return v7;
    }

    if (v131 != &v132)
    {
      free(v131);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v130;
      v10 = __p;
      if (v130 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v130 = v8;
      operator delete(v10);
    }

    v11 = v127;
    if (v127)
    {
      v12 = v128;
      v13 = v127;
      if (v128 == v127)
      {
        goto LABEL_80;
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
LABEL_79:
      v13 = v127;
LABEL_80:
      v128 = v11;
      operator delete(v13);
    }

LABEL_81:
    if (v123 != v126)
    {
      free(v123);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::CallGraphNode::getCallableRegion(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::CallGraphNode::getCallableRegion(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v119[0] = "requires attribute 'output_type'";
    v120 = 259;
    mlir::OpState::emitOpError(this, v119, v122);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
    if (v122[0])
    {
      mlir::InFlightDiagnostic::report(v122);
    }

    if (v132 != 1)
    {
      return v7;
    }

    if (v131 != &v132)
    {
      free(v131);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v130;
      v21 = __p;
      if (v130 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v130 = v19;
      operator delete(v21);
    }

    v11 = v127;
    if (v127)
    {
      v22 = v128;
      v13 = v127;
      if (v128 == v127)
      {
        goto LABEL_80;
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

      while (v22 != v11);
      goto LABEL_79;
    }

    goto LABEL_81;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    if (mlir::CallGraphNode::getCallableRegion((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v25 = *(v18 + 1);
  v26 = v6 - v16;
  if (v6 == v16)
  {
    v29 = 0;
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      if (mlir::CallGraphNode::getCallableRegion(v18) == *(*(*(*this + 6) + 96) + 24))
      {
        v27 = *(v18 + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(v18) == *(*(*(*this + 6) + 96) + 32))
      {
        v28 = *(v18 + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(v18) == *(*(*(*this + 6) + 96) + 40))
      {
        v29 = *(v18 + 1);
      }

      v18 = (v18 + 16);
      v26 -= 16;
    }

    while (v26);
  }

  v118 = v17;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v118);
  if (v30 != 11)
  {
    v31 = v30;
    v119[0] = "'operandSegmentSizes' attribute for specifying operand segments must have 11 elements, but got ";
    v120 = 259;
    mlir::OpState::emitOpError(this, v119, v122);
    if (v122[0])
    {
      LODWORD(v121[0]) = 5;
      v121[1] = v31;
      v32 = v121;
      v33 = v123;
      if (v124 >= v125)
      {
        if (v123 <= v121 && v123 + 24 * v124 > v121)
        {
          v117 = v121 - v123;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
          v33 = v123;
          v32 = (v123 + v117);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
          v32 = v121;
          v33 = v123;
        }
      }

      v34 = &v33[24 * v124];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      ++v124;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
    if (v122[0])
    {
      mlir::InFlightDiagnostic::report(v122);
    }

    if ((v132 & 1) == 0)
    {
      return v7;
    }

    if (v131 != &v132)
    {
      free(v131);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v130;
      v38 = __p;
      if (v130 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v130 = v36;
      operator delete(v38);
    }

    v11 = v127;
    if (v127)
    {
      v39 = v128;
      v13 = v127;
      if (v128 == v127)
      {
        goto LABEL_80;
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

      while (v39 != v11);
      goto LABEL_79;
    }

    goto LABEL_81;
  }

  if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v5, "input_quant_params_axis", 0x17) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v29, "weights_quant_params_axis", 0x19) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v25, "output_type", 0xB) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v27, "transpose_lhs", 0xD) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v28, "transpose_rhs", 0xD) & 1) == 0)
  {
    return 0;
  }

  LODWORD(v118) = 0;
  ODSOperands = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 0);
  if (v44)
  {
    v45 = v44;
    v46 = ODSOperands + 24;
    do
    {
      v47 = *this;
      v48 = *(*v46 + 8);
      v49 = v118;
      LODWORD(v118) = v118 + 1;
      if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(v47, v48 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v49) & 1) == 0)
      {
        return 0;
      }

      v46 += 32;
    }

    while (--v45);
  }

  v50 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 1);
  v52 = v51;
  if (v51 >= 2)
  {
LABEL_89:
    v119[0] = "operand group starting at #";
    v120 = 259;
    mlir::OpState::emitOpError(this, v119, v122);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v122, &v118);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v53, " requires 0 or 1 element, but found ");
    v121[0] = v52;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v54, v121);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v122);
    return v7;
  }

  if (v51)
  {
    v56 = *(v50 + 24);
    v57 = *this;
    v58 = *(v56 + 8);
    v59 = v118;
    LODWORD(v118) = v118 + 1;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v57, (v58 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v59) & 1) == 0)
    {
      return 0;
    }
  }

  v60 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 2);
  v52 = v61;
  if (v61 >= 2)
  {
    goto LABEL_89;
  }

  if (v61)
  {
    v62 = *(v60 + 24);
    v63 = *this;
    v64 = *(v62 + 8);
    v65 = v118;
    LODWORD(v118) = v118 + 1;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v63, (v64 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v65) & 1) == 0)
    {
      return 0;
    }
  }

  v66 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 3);
  v52 = v67;
  if (v67 >= 2)
  {
    goto LABEL_89;
  }

  if (v67)
  {
    v68 = *(v66 + 24);
    v69 = *this;
    v70 = *(v68 + 8);
    v71 = v118;
    LODWORD(v118) = v118 + 1;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v69, (v70 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v71) & 1) == 0)
    {
      return 0;
    }
  }

  v72 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 4);
  if (v73)
  {
    v74 = v73;
    v75 = v72 + 24;
    do
    {
      v76 = *this;
      v77 = *(*v75 + 8);
      v78 = v118;
      LODWORD(v118) = v118 + 1;
      if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(v76, v77 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v78) & 1) == 0)
      {
        return 0;
      }

      v75 += 32;
    }

    while (--v74);
  }

  v79 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 5);
  v52 = v80;
  if (v80 >= 2)
  {
    goto LABEL_89;
  }

  if (v80)
  {
    v81 = *(v79 + 24);
    v82 = *this;
    v83 = *(v81 + 8);
    v84 = v118;
    LODWORD(v118) = v118 + 1;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps13(v82, (v83 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v84) & 1) == 0)
    {
      return 0;
    }
  }

  v85 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 6);
  v52 = v86;
  if (v86 >= 2)
  {
    goto LABEL_89;
  }

  if (v86)
  {
    v87 = *(v85 + 24);
    v88 = *this;
    v89 = *(v87 + 8);
    v90 = v118;
    LODWORD(v118) = v118 + 1;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v88, (v89 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v90) & 1) == 0)
    {
      return 0;
    }
  }

  v91 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 7);
  v52 = v92;
  if (v92 >= 2)
  {
    goto LABEL_89;
  }

  if (v92)
  {
    v93 = *(v91 + 24);
    v94 = *this;
    v95 = *(v93 + 8);
    v96 = v118;
    LODWORD(v118) = v118 + 1;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v94, (v95 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v96) & 1) == 0)
    {
      return 0;
    }
  }

  v97 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 8);
  v52 = v98;
  if (v98 >= 2)
  {
    goto LABEL_89;
  }

  if (v98)
  {
    v99 = *(v97 + 24);
    v100 = *this;
    v101 = *(v99 + 8);
    v102 = v118;
    LODWORD(v118) = v118 + 1;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(v100, v101 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v102) & 1) == 0)
    {
      return 0;
    }
  }

  v103 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 9);
  v52 = v104;
  if (v104 >= 2)
  {
    goto LABEL_89;
  }

  if (v104)
  {
    v105 = *(v103 + 24);
    v106 = *this;
    v107 = *(v105 + 8);
    v108 = v118;
    LODWORD(v118) = v118 + 1;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v106, (v107 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v108) & 1) == 0)
    {
      return 0;
    }
  }

  v109 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 10);
  v52 = v110;
  if (v110 >= 2)
  {
    goto LABEL_89;
  }

  if (v110)
  {
    v111 = *(v109 + 24);
    v112 = *this;
    v113 = *(v111 + 8);
    v114 = v118;
    LODWORD(v118) = v118 + 1;
    if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v112, (v113 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v114) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v115 = *this - 16;
  }

  else
  {
    v115 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v115, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::getTransposeLhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::getTransposeRhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

void mlir::mpsx::SparseDenseMatMulOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlir::MLIRContext *a8, unsigned __int8 a9, unsigned int a10)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v32 = a4;
  v33 = a3;
  v30 = a6;
  v31 = a5;
  v29 = a7;
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  v13 = *(*(*(a2 + 8) + 96) + 8);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a8);
  mlir::NamedAttribute::NamedAttribute(&v36, v13, BoolAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  v15 = *(*(*(a2 + 8) + 96) + 16);
  v16 = mlir::Builder::getBoolAttr(a1, a9);
  mlir::NamedAttribute::NamedAttribute(&v36, v15, v16);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  v17 = **(*(a2 + 8) + 96);
  v18 = mlir::mps::SparseTensorStorageAttr::get(*a1, a10);
  mlir::NamedAttribute::NamedAttribute(&v36, v17, v18);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  v36 = v38;
  v37 = 0x200000000;
  v19 = *a1;
  mlir::ValueRange::ValueRange(v35, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v34, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::SparseDenseMatMulOp::inferReturnTypes(v19, v22, v23, v35[0], v35[1], Dictionary, v24, v25, v34[0], v34[1], &v36) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = v36;
  v27 = v37;
  v28 = *(a2 + 72);
  if (v28 + v37 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v28 + v37, 8);
    LODWORD(v28) = *(a2 + 72);
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v28), v26, 8 * v27);
    LODWORD(v28) = *(a2 + 72);
  }

  *(a2 + 72) = v28 + v27;
  if (v36 != v38)
  {
    free(v36);
  }
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::populateDefaultAttrs(mlir::mpsx::SparseDenseMatMulOp *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[1]))
  {
    v5 = v4[1];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v11, v5, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v11, v12);
  }

  result = mlir::NamedAttrList::get(a2, v4[2]);
  if (!result)
  {
    v8 = v4[2];
    v9 = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v11, v8, v9);
    return mlir::NamedAttrList::push_back(a2, v11, v12);
  }

  return result;
}

BOOL mlir::mpsx::SparseDenseMatMulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v156 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v7 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    if (v5)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = mlir::CallGraphNode::getCallableRegion(v4);
        v7 = *this;
        if (v20 == *(*(*(*this + 6) + 96) + 8))
        {
          v18 = *(v4 + 1);
        }

        else
        {
          v21 = mlir::CallGraphNode::getCallableRegion(v4);
          v7 = *this;
          if (v21 == *(*(*(*this + 6) + 96) + 16))
          {
            v19 = *(v4 + 1);
          }
        }

        v4 = (v4 + 16);
        v5 -= 16;
      }

      while (v5);
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(v7, v18, "transpose_lhs", 0xD) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v19, "transpose_rhs", 0xD) & 1) == 0)
    {
      return 0;
    }

    v22 = *this;
    if (v17 && *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
    {
      v140 = 257;
      mlir::Operation::emitOpError(v22, &v138, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "attribute '");
      if (*v23)
      {
        v140 = 261;
        v138 = "storage_type";
        v139 = 12;
        v24 = v23;
        mlir::Diagnostic::operator<<((v23 + 1), &v138);
        v23 = v24;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "' failed to satisfy constraint: valid SparseTensorStorage");
      v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v155 == 1)
      {
        if (v154 != &v155)
        {
          free(v154);
        }

        v27 = __p;
        if (__p)
        {
          v28 = v153;
          v29 = __p;
          if (v153 != __p)
          {
            do
            {
              v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
            }

            while (v28 != v27);
            v29 = __p;
          }

          v153 = v27;
          operator delete(v29);
        }

        v30 = v150;
        if (v150)
        {
          v31 = v151;
          v32 = v150;
          if (v151 != v150)
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
            v32 = v150;
          }

          v151 = v30;
          operator delete(v32);
        }

        if (v148 != v149)
        {
          free(v148);
        }
      }

      if (!v26)
      {
        return 0;
      }

      v22 = *this;
    }

    v35 = (*(*(*(v22 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v36 = *v35;
    v37 = *(*v35 + 136);
    if (v37 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v36 + 8);
      AttrDictionary = v35;
      v147 = v38;
      isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
      if (mlir::Type::isF32(&isSplat))
      {
LABEL_96:
        if (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps20(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps20(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
        {
          v65 = *this;
          v66 = *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8;
          v67 = *(*v66 + 136);
          if (v67 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v67 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            v69 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v66 + 8);
            AttrDictionary = v66;
            v147 = v69;
            v138 = mlir::ElementsAttr::isSplat(&AttrDictionary);
            if (mlir::Type::isSignedInteger(&v138, 32) || mlir::Type::isSignedInteger(&v138, 64))
            {
              goto LABEL_133;
            }
          }

          v140 = 261;
          v138 = "operand";
          v139 = 7;
          mlir::Operation::emitOpError(v65, &v138, &AttrDictionary);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
          if (*v70)
          {
            v71 = *(v70 + 24);
            LODWORD(v144) = 5;
            v145 = 3;
            v72 = *(v70 + 32);
            v73 = &v144;
            if (v72 >= *(v70 + 36))
            {
              if (v71 <= &v144 && v71 + 24 * v72 > &v144)
              {
                v132 = &v144 - v71;
                v133 = v70;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v70 + 24, v70 + 40, v72 + 1, 24);
                v70 = v133;
                v71 = *(v133 + 24);
                v73 = &v132[v71];
              }

              else
              {
                v127 = v70;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v70 + 24, v70 + 40, v72 + 1, 24);
                v70 = v127;
                v71 = *(v127 + 24);
                v73 = &v144;
              }
            }

            v74 = v71 + 24 * *(v70 + 32);
            v75 = *v73;
            *(v74 + 16) = *(v73 + 2);
            *v74 = v75;
            ++*(v70 + 32);
          }

          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v70, " must be tensor of mps index type values, but got ");
          if (*v76)
          {
            v77 = &v144;
            v78 = v76;
            mlir::DiagnosticArgument::DiagnosticArgument(&v144, v66);
            v79 = *(v78 + 24);
            v80 = *(v78 + 32);
            if (v80 >= *(v78 + 36))
            {
              if (v79 <= &v144 && v79 + 24 * v80 > &v144)
              {
                v134 = &v144 - v79;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v78 + 24, v78 + 40, v80 + 1, 24);
                v76 = v78;
                v79 = *(v78 + 24);
                v77 = &v134[v79];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v78 + 24, v78 + 40, v80 + 1, 24);
                v76 = v78;
                v79 = *(v78 + 24);
                v77 = &v144;
              }
            }

            else
            {
              v76 = v78;
            }

            v81 = v79 + 24 * *(v76 + 32);
            v82 = *v77;
            *(v81 + 16) = *(v77 + 2);
            *v81 = v82;
            ++*(v76 + 32);
          }

          v83 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
          if (AttrDictionary)
          {
            mlir::InFlightDiagnostic::report(&AttrDictionary);
          }

          if (v155 == 1)
          {
            if (v154 != &v155)
            {
              free(v154);
            }

            v84 = __p;
            if (__p)
            {
              v85 = v153;
              v86 = __p;
              if (v153 != __p)
              {
                do
                {
                  v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
                }

                while (v85 != v84);
                v86 = __p;
              }

              v153 = v84;
              operator delete(v86);
            }

            v87 = v150;
            if (v150)
            {
              v88 = v151;
              v89 = v150;
              if (v151 != v150)
              {
                do
                {
                  v91 = *--v88;
                  v90 = v91;
                  *v88 = 0;
                  if (v91)
                  {
                    operator delete[](v90);
                  }
                }

                while (v88 != v87);
                v89 = v150;
              }

              v151 = v87;
              operator delete(v89);
            }

            if (v148 != v149)
            {
              free(v148);
            }
          }

          if (v83)
          {
LABEL_133:
            v92 = *this;
            v93 = (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
            v94 = *v93;
            v95 = *(*v93 + 136);
            if (v95 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
            {
              v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v94 + 8);
              AttrDictionary = v93;
              v147 = v96;
              isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
              if (mlir::Type::isF32(&isSplat))
              {
LABEL_168:
                if (*(*this + 9))
                {
                  v123 = *this - 16;
                }

                else
                {
                  v123 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v123, 0);
                return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
              }

              v94 = *v93;
              v95 = *(*v93 + 136);
            }

            if (v95 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
            {
              v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v94 + 8);
              v138 = v93;
              v139 = v97;
              if (mlir::CallOpInterface::getArgOperands(&v138))
              {
                v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v93 + 8);
                v144 = v93;
                v145 = v98;
                mlir::CallableOpInterface::getArgAttrsAttr(&v144);
                if (v99 == 2)
                {
                  v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v93 + 8);
                  v141 = v93;
                  v142 = v100;
                  isSplat = mlir::ElementsAttr::isSplat(&v141);
                  if (mlir::Type::isF32(&isSplat))
                  {
                    goto LABEL_168;
                  }
                }
              }
            }

            v140 = 261;
            v138 = "operand";
            v139 = 7;
            mlir::Operation::emitOpError(v92, &v138, &AttrDictionary);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
            if (*v101)
            {
              v102 = *(v101 + 24);
              LODWORD(v144) = 5;
              v145 = 4;
              v103 = *(v101 + 32);
              v104 = &v144;
              if (v103 >= *(v101 + 36))
              {
                if (v102 <= &v144 && v102 + 24 * v103 > &v144)
                {
                  v135 = &v144 - v102;
                  v136 = v101;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v101 + 24, v101 + 40, v103 + 1, 24);
                  v101 = v136;
                  v102 = *(v136 + 24);
                  v104 = &v135[v102];
                }

                else
                {
                  v128 = v101;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v101 + 24, v101 + 40, v103 + 1, 24);
                  v101 = v128;
                  v102 = *(v128 + 24);
                  v104 = &v144;
                }
              }

              v105 = v102 + 24 * *(v101 + 32);
              v106 = *v104;
              *(v105 + 16) = *(v104 + 2);
              *v105 = v106;
              ++*(v101 + 32);
            }

            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v101, " must be unranked tensor of 32-bit float values or 2D tensor of 32-bit float values, but got ");
            if (*v107)
            {
              v108 = &v144;
              v109 = v107;
              mlir::DiagnosticArgument::DiagnosticArgument(&v144, v93);
              v110 = *(v109 + 24);
              v111 = *(v109 + 32);
              if (v111 >= *(v109 + 36))
              {
                if (v110 <= &v144 && v110 + 24 * v111 > &v144)
                {
                  v137 = &v144 - v110;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v109 + 24, v109 + 40, v111 + 1, 24);
                  v107 = v109;
                  v110 = *(v109 + 24);
                  v108 = &v137[v110];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v109 + 24, v109 + 40, v111 + 1, 24);
                  v107 = v109;
                  v110 = *(v109 + 24);
                  v108 = &v144;
                }
              }

              else
              {
                v107 = v109;
              }

              v112 = v110 + 24 * *(v107 + 32);
              v113 = *v108;
              *(v112 + 16) = *(v108 + 2);
              *v112 = v113;
              ++*(v107 + 32);
            }

            v114 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
            if (AttrDictionary)
            {
              mlir::InFlightDiagnostic::report(&AttrDictionary);
            }

            if (v155 == 1)
            {
              if (v154 != &v155)
              {
                free(v154);
              }

              v115 = __p;
              if (__p)
              {
                v116 = v153;
                v117 = __p;
                if (v153 != __p)
                {
                  do
                  {
                    v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v116 - 1);
                  }

                  while (v116 != v115);
                  v117 = __p;
                }

                v153 = v115;
                operator delete(v117);
              }

              v118 = v150;
              if (v150)
              {
                v119 = v151;
                v120 = v150;
                if (v151 != v150)
                {
                  do
                  {
                    v122 = *--v119;
                    v121 = v122;
                    *v119 = 0;
                    if (v122)
                    {
                      operator delete[](v121);
                    }
                  }

                  while (v119 != v118);
                  v120 = v150;
                }

                v151 = v118;
                operator delete(v120);
              }

              if (v148 != v149)
              {
                free(v148);
              }
            }

            if (v114)
            {
              goto LABEL_168;
            }
          }
        }

        return 0;
      }

      v36 = *v35;
      v37 = *(*v35 + 136);
    }

    if (v37 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v36 + 8), v138 = v35, v139 = v39, !mlir::CallOpInterface::getArgOperands(&v138)) || (v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8), v144 = v35, v145 = v40, mlir::CallableOpInterface::getArgAttrsAttr(&v144), v41 != 1) || (v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8), v141 = v35, v142 = v42, isSplat = mlir::ElementsAttr::isSplat(&v141), !mlir::Type::isF32(&isSplat)))
    {
      v140 = 261;
      v138 = "operand";
      v139 = 7;
      mlir::Operation::emitOpError(v22, &v138, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
      if (*v43)
      {
        v44 = *(v43 + 24);
        LODWORD(v144) = 5;
        v145 = 0;
        v45 = *(v43 + 32);
        v46 = &v144;
        if (v45 >= *(v43 + 36))
        {
          if (v44 <= &v144 && v44 + 24 * v45 > &v144)
          {
            v129 = &v144 - v44;
            v130 = v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 24, v43 + 40, v45 + 1, 24);
            v43 = v130;
            v44 = *(v130 + 24);
            v46 = &v129[v44];
          }

          else
          {
            v126 = v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 24, v43 + 40, v45 + 1, 24);
            v43 = v126;
            v44 = *(v126 + 24);
            v46 = &v144;
          }
        }

        v47 = v44 + 24 * *(v43 + 32);
        v48 = *v46;
        *(v47 + 16) = *(v46 + 2);
        *v47 = v48;
        ++*(v43 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v43, " must be unranked tensor of 32-bit float values or 1D tensor of 32-bit float values, but got ");
      if (*v49)
      {
        v50 = &v144;
        v51 = v49;
        mlir::DiagnosticArgument::DiagnosticArgument(&v144, v35);
        v52 = *(v51 + 24);
        v53 = *(v51 + 32);
        if (v53 >= *(v51 + 36))
        {
          if (v52 <= &v144 && v52 + 24 * v53 > &v144)
          {
            v131 = &v144 - v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v51 + 24, v51 + 40, v53 + 1, 24);
            v49 = v51;
            v52 = *(v51 + 24);
            v50 = &v131[v52];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v51 + 24, v51 + 40, v53 + 1, 24);
            v49 = v51;
            v52 = *(v51 + 24);
            v50 = &v144;
          }
        }

        else
        {
          v49 = v51;
        }

        v54 = v52 + 24 * *(v49 + 32);
        v55 = *v50;
        *(v54 + 16) = *(v50 + 2);
        *v54 = v55;
        ++*(v49 + 32);
      }

      v56 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v155 == 1)
      {
        if (v154 != &v155)
        {
          free(v154);
        }

        v57 = __p;
        if (__p)
        {
          v58 = v153;
          v59 = __p;
          if (v153 != __p)
          {
            do
            {
              v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
            }

            while (v58 != v57);
            v59 = __p;
          }

          v153 = v57;
          operator delete(v59);
        }

        v60 = v150;
        if (v150)
        {
          v61 = v151;
          v62 = v150;
          if (v151 != v150)
          {
            do
            {
              v64 = *--v61;
              v63 = v64;
              *v61 = 0;
              if (v64)
              {
                operator delete[](v63);
              }
            }

            while (v61 != v60);
            v62 = v150;
          }

          v151 = v60;
          operator delete(v62);
        }

        if (v148 != v149)
        {
          free(v148);
        }
      }

      if (!v56)
      {
        return 0;
      }
    }

    goto LABEL_96;
  }

LABEL_5:
  v138 = "requires attribute 'storage_type'";
  v140 = 259;
  mlir::OpState::emitOpError(this, &v138, &AttrDictionary);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v155 == 1)
  {
    if (v154 != &v155)
    {
      free(v154);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v153;
      v11 = __p;
      if (v153 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v153 = v9;
      operator delete(v11);
    }

    v12 = v150;
    if (v150)
    {
      v13 = v151;
      v14 = v150;
      if (v151 != v150)
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
        v14 = v150;
      }

      v151 = v12;
      operator delete(v14);
    }

    if (v148 != v149)
    {
      free(v148);
    }
  }

  return v8;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps20(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v58[0] = a2;
    v58[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v58);
    if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
    {
      return 1;
    }

    v10 = *a2;
    v11 = *(*a2 + 136);
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v50 = a2;
    v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::CallOpInterface::getArgOperands(&v50))
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v55 = a2;
      v56 = v12;
      mlir::CallableOpInterface::getArgAttrsAttr(&v55);
      if (v13 == 1)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v53[0] = a2;
        v53[1] = v14;
        isSplat = mlir::ElementsAttr::isSplat(v53);
        if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
        {
          return 1;
        }
      }
    }
  }

  v52 = 261;
  v50 = a3;
  v51 = a4;
  mlir::Operation::emitOpError(a1, &v50, v58);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v58, " #");
  if (*v15)
  {
    v17 = v15 + 24;
    v16 = *(v15 + 24);
    LODWORD(v55) = 5;
    v56 = a5;
    v18 = *(v15 + 32);
    v19 = &v55;
    if (v18 >= *(v15 + 36))
    {
      if (v16 <= &v55 && v16 + 24 * v18 > &v55)
      {
        v45 = &v55 - v16;
        v46 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, v15 + 40, v18 + 1, 24);
        v15 = v46;
        v16 = *(v46 + 24);
        v19 = &v45[v16];
      }

      else
      {
        v43 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, v15 + 40, v18 + 1, 24);
        v15 = v43;
        v16 = *(v43 + 24);
        v19 = &v55;
      }
    }

    v20 = v16 + 24 * *(v15 + 32);
    v21 = *v19;
    *(v20 + 16) = *(v19 + 2);
    *v20 = v21;
    v22 = (*(v15 + 32) + 1);
    *(v15 + 32) = v22;
    if (*v15)
    {
      LODWORD(v55) = 3;
      v56 = " must be unranked tensor of 32/64-bit signed integer values or 1D tensor of 32/64-bit signed integer values, but got ";
      v57 = 117;
      v23 = *(v15 + 24);
      v24 = &v55;
      if (v22 >= *(v15 + 36))
      {
        if (v23 <= &v55 && v23 + 24 * v22 > &v55)
        {
          v47 = &v55 - v23;
          v48 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v15 + 40, v22 + 1, 24);
          v15 = v48;
          v23 = *(v48 + 24);
          v24 = &v47[v23];
        }

        else
        {
          v44 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v15 + 40, v22 + 1, 24);
          v15 = v44;
          v23 = *(v44 + 24);
          v24 = &v55;
        }
      }

      v25 = v23 + 24 * *(v15 + 32);
      v26 = *v24;
      *(v25 + 16) = *(v24 + 2);
      *v25 = v26;
      ++*(v15 + 32);
      if (*v15)
      {
        v27 = &v55;
        v28 = v15;
        mlir::DiagnosticArgument::DiagnosticArgument(&v55, a2);
        v15 = v28;
        v29 = *(v28 + 32);
        v30 = *(v28 + 24);
        if (v29 >= *(v28 + 36))
        {
          if (v30 <= &v55 && v30 + 24 * v29 > &v55)
          {
            v49 = &v55 - v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v28 + 40, v29 + 1, 24);
            v15 = v28;
            v30 = *(v28 + 24);
            v27 = &v49[v30];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v17, v28 + 40, v29 + 1, 24);
            v15 = v28;
            v30 = *(v28 + 24);
            v27 = &v55;
          }
        }

        v31 = v30 + 24 * *(v15 + 32);
        v32 = *v27;
        *(v31 + 16) = *(v27 + 2);
        *v31 = v32;
        ++*(v15 + 32);
      }
    }
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v58[0])
  {
    mlir::InFlightDiagnostic::report(v58);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v64;
      v36 = __p;
      if (v64 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v64 = v34;
      operator delete(v36);
    }

    v37 = v61;
    if (v61)
    {
      v38 = v62;
      v39 = v61;
      if (v62 != v61)
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
        v39 = v61;
      }

      v62 = v37;
      operator delete(v39);
    }

    if (v59 != &v60)
    {
      free(v59);
    }
  }

  return v33;
}

void mlir::mpsx::StitchedOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::OperationState::addRegion(a2);
  v5 = *(a2 + 72);
  if (v5 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v5 + 1, 8);
    LODWORD(v5) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v5) = a3;
  ++*(a2 + 72);
}

BOOL mlir::mpsx::TensorToBufferOpAdaptor::verify(mlir::mpsx::TensorToBufferOpAdaptor *this, Location a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v55 = *this;
  Value = mlir::AffineMapAttr::getValue(&v55);
  if (Value == mlir::DictionaryAttr::end(&v55))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
      {
        v5 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 24))
      {
        v9 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 32))
      {
        v8 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v55));
    if (v8)
    {
      if (!mlir::DenseIntElementsAttr::classof(v8))
      {
        goto LABEL_20;
      }

      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
      v48 = v8;
      v49 = v10;
      Type = mlir::ElementsAttr::getType(&v48);
      v12 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v56 = v12;
      v57 = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(&v56);
      if (v13 != 1 || (v51 = v8, v52 = mlir::ArrayAttr::getValue(&v51), v53 = v14, isSplat = mlir::ElementsAttr::isSplat(&v52), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_20:
        v48 = "'mpsx.tensor_to_buffer' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v50 = 259;
        mlir::emitError(a2.var0.var0, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v63;
            v18 = __p;
            if (v63 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v63 = v16;
            operator delete(v18);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v20 = v61;
          v21 = v60;
          if (v61 == v60)
          {
LABEL_100:
            v61 = v19;
            operator delete(v21);
LABEL_101:
            if (v58 != &v59)
            {
              free(v58);
            }

            return v15;
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
LABEL_99:
          v21 = v60;
          goto LABEL_100;
        }

        return v15;
      }
    }
  }

  if (!v9)
  {
LABEL_56:
    if (!v5)
    {
      goto LABEL_63;
    }

    if (!mlir::DenseIntElementsAttr::classof(v5))
    {
      goto LABEL_67;
    }

    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    v48 = v5;
    v49 = v30;
    v31 = mlir::ElementsAttr::getType(&v48);
    v32 = v31;
    if (v31)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    }

    v56 = v32;
    v57 = v31;
    mlir::CallableOpInterface::getArgAttrsAttr(&v56);
    if (v33 == 1 && (v51 = v5, v52 = mlir::ArrayAttr::getValue(&v51), v53 = v34, isSplat = mlir::ElementsAttr::isSplat(&v52), mlir::Type::isUnsignedInteger(&isSplat, 64)))
    {
LABEL_63:
      if (v7 && !mlir::BoolAttr::classof(v7))
      {
        v48 = "'mpsx.tensor_to_buffer' op attribute 'isTensorBufferOp' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2.var0.var0, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v41 = __p;
          if (__p)
          {
            v42 = v63;
            v43 = __p;
            if (v63 != __p)
            {
              do
              {
                v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
              }

              while (v42 != v41);
              v43 = __p;
            }

            v63 = v41;
            operator delete(v43);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v44 = v61;
          v21 = v60;
          if (v61 == v60)
          {
            goto LABEL_100;
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

          while (v44 != v19);
          goto LABEL_99;
        }
      }

      else if (v6 && !mlir::BoolAttr::classof(v6))
      {
        v48 = "'mpsx.tensor_to_buffer' op attribute 'isChannelAndInterleaveSame' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2.var0.var0, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v57);
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
LABEL_67:
      v48 = "'mpsx.tensor_to_buffer' op attribute 'interleave' failed to satisfy constraint: ui64 elements attribute of rank 1";
      v50 = 259;
      mlir::emitError(a2.var0.var0, &v48, &v56);
      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
      if (v56)
      {
        mlir::InFlightDiagnostic::report(&v56);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v63;
          v37 = __p;
          if (v63 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v63 = v35;
          operator delete(v37);
        }

        v19 = v60;
        if (!v60)
        {
          goto LABEL_101;
        }

        v38 = v61;
        v21 = v60;
        if (v61 == v60)
        {
          goto LABEL_100;
        }

        do
        {
          v40 = *--v38;
          v39 = v40;
          *v38 = 0;
          if (v40)
          {
            operator delete[](v39);
          }
        }

        while (v38 != v19);
        goto LABEL_99;
      }
    }

    return v15;
  }

  if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v56 = v9;
    mlir::AffineMapAttr::getValue(&v56);
    goto LABEL_56;
  }

  v48 = "'mpsx.tensor_to_buffer' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v50 = 259;
  mlir::emitError(a2.var0.var0, &v48, &v56);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
  if (v56)
  {
    mlir::InFlightDiagnostic::report(&v56);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v19 = v60;
    if (!v60)
    {
      goto LABEL_101;
    }

    v27 = v61;
    v21 = v60;
    if (v61 == v60)
    {
      goto LABEL_100;
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
    goto LABEL_99;
  }

  return v15;
}

void mlir::mpsx::TensorToBufferOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, mlir::MLIRContext *a7, mlir::MLIRContext *a8)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v30 = a3;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  if (a4)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 32), a4);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  }

  if (a5)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 24), a5);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  }

  if (a6)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a6);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  }

  v15 = *(*(*(a2 + 8) + 96) + 16);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a7);
  mlir::NamedAttribute::NamedAttribute(&__src, v15, BoolAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  v17 = *(*(*(a2 + 8) + 96) + 8);
  v18 = mlir::Builder::getBoolAttr(a1, a8);
  mlir::NamedAttribute::NamedAttribute(&__src, v17, v18);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  __src = v35;
  v34 = 0x200000000;
  v19 = *a1;
  mlir::ValueRange::ValueRange(v32, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v31, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::TensorToBufferOp::inferReturnTypes(v19, v22, v23, v32[0], v32[1], Dictionary, v24, v25, v31[0], v31[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = __src;
  v27 = v34;
  v28 = *(a2 + 72);
  v29 = v28 + v34;
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
  if (__src != v35)
  {
    free(__src);
  }
}

void mlir::mpsx::TensorToBufferOp::build(mlir::UnknownLoc **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mpsx::TensorToBufferOp::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v24[0], v24[1], &__src) & 1) == 0)
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

uint64_t mlir::mpsx::TensorToBufferOp::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 16 * v3;
    do
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v12 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v13 = mlir::CallGraphNode::getCallableRegion(v4);
        v12 = *this;
        if (v13 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v14 = mlir::CallGraphNode::getCallableRegion(v4);
          v12 = *this;
          if (v14 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }

          else
          {
            v15 = mlir::CallGraphNode::getCallableRegion(v4);
            v12 = *this;
            if (v15 == *(*(*(*this + 6) + 96) + 24))
            {
              v8 = *(v4 + 1);
            }

            else
            {
              v16 = mlir::CallGraphNode::getCallableRegion(v4);
              v12 = *this;
              if (v16 == *(*(*(*this + 6) + 96) + 32))
              {
                v9 = *(v4 + 1);
              }
            }
          }
        }
      }

      v4 = (v4 + 16);
      v10 -= 16;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v12 = *this;
  }

  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(v12, v9, "shape", 5) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v8, "resultElementType", 0x11) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(*this, v5, "interleave", 10) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v7, "isTensorBufferOp", 0x10) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v6, "isChannelAndInterleaveSame", 0x1A) & 1) == 0 || (mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v17 = *this - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mpsx::VarHandleOp::getIdentifier(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

BOOL mlir::mpsx::VarHandleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::CallGraphNode::getCallableRegion(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(*this, v4[1], "identifier", 0xA))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'identifier'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
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
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::Diagnostic::append<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5)
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
  return mlir::Diagnostic::append<mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(v11, a3, a4, a5);
}

uint64_t mlir::Diagnostic::append<mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(uint64_t a1, uint64_t *a2, char *a3, uint64_t *a4)
{
  v7 = v14;
  mlir::DiagnosticArgument::DiagnosticArgument(v14, *a2);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v9 >= *(a1 + 28))
  {
    if (v8 <= v14 && v8 + 24 * v9 > v14)
    {
      v13 = &v14[-v8];
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v9 + 1, 24);
      v8 = *(a1 + 16);
      v7 = &v13[v8];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v9 + 1, 24);
      v8 = *(a1 + 16);
      v7 = v14;
    }
  }

  v10 = v8 + 24 * *(a1 + 24);
  v11 = *v7;
  *(v10 + 16) = *(v7 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[5],mlir::Type>(a1, a3, a4);
}

uint64_t mlir::Diagnostic::append<char const(&)[27],unsigned int &,char const(&)[47]>(uint64_t a1, char *__s, unsigned int *a3, char *a4)
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
  return mlir::Diagnostic::append<unsigned int &,char const(&)[47]>(v9, a3, a4);
}

uint64_t mlir::Diagnostic::append<unsigned int &,char const(&)[47]>(uint64_t a1, unsigned int *a2, char *__s)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  v7 = *a2;
  v21 = 5;
  v22 = v7;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v5 <= &v21 && v5 + 24 * v8 > &v21)
    {
      v19 = &v21 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v19[v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v5 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(__s);
  v21 = 3;
  v22 = __s;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, a1 + 32, v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, a1 + 32, v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

double mlir::Diagnostic::append<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(uint64_t a1, char *__s, char *a3, char **a4, char *a5, unsigned int *a6)
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
  return mlir::Diagnostic::append<char const(&)[19],long long &,char const(&)[4],unsigned int &>(v13, a3, a4, a5, a6);
}

double mlir::Diagnostic::append<char const(&)[19],long long &,char const(&)[4],unsigned int &>(uint64_t a1, char *__s, char **a3, char *a4, unsigned int *a5)
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
  *&result = mlir::Diagnostic::append<char const(&)[21],unsigned int>(v11, a4, a5).n128_u64[0];
  return result;
}

uint64_t mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(uint64_t a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v6;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v21 && v7 + 24 * v8 > &v21)
    {
      v19 = &v21 - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v19[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v7 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(a3);
  v21 = 3;
  v22 = a3;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, a1 + 32, v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

__n128 std::__function::__func<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_1F5B15E38;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B15E38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(void *isSplat, uint64_t *a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(**a2 + 136);
  {
    v25 = v6;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    v6 = v25;
  }

  v7 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  if (v6 != mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    goto LABEL_6;
  }

  v8 = *(*v5 + 136);
  {
    goto LABEL_34;
  }

  while (v8 == v7[130])
  {
    isSplat = isSplat[1];
    v19 = *(*v4 + 136);
    {
      v27 = v19;
      mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
      v19 = v27;
      v7 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    }

    if (v19 == v7[130])
    {
      v20 = v4;
    }

    else
    {
      v20 = 0;
    }

    v4 = *(v20 + 8);
    v21 = *(*v5 + 136);
    {
      v28 = v21;
      mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
      v21 = v28;
      v7 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    }

    if (v21 == v7[130])
    {
      v22 = v5;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22[1];
    v30[0] = v4;
    v29[0] = v23;
    v24 = isSplat[3];
    if (v24)
    {
      return (*(*v24 + 48))(v24, v30, v29);
    }

LABEL_33:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_34:
    v26 = v8;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    v8 = v26;
    v7 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  }

LABEL_6:
  v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  if (v9)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v30[0] = v4;
  v30[1] = v9;
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v10 = 0;
  }

  result = 0;
  v29[0] = v5;
  v29[1] = v10;
  if (!v4 || !v5)
  {
    return result;
  }

  v5 = isSplat[2];
  isSplat = mlir::ElementsAttr::isSplat(v30);
  v12 = mlir::ElementsAttr::isSplat(v29);
  v32 = isSplat;
  v31 = v12;
  v13 = v5[3];
  if (!v13)
  {
    goto LABEL_33;
  }

  result = (*(*v13 + 48))(v13, &v32, &v31);
  if (result)
  {
    if (mlir::CallOpInterface::getArgOperands(v29))
    {
      result = mlir::CallOpInterface::getArgOperands(v30);
      if (result)
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v30);
        v16 = v15;
        v17 = mlir::CallableOpInterface::getArgAttrsAttr(v29);
        return mlir::mps::isMoreSpecializedShape(ArgAttrsAttr, v16, v17, v18);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.ane", 8, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B15E80;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc(0x48uLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getArgumentTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v3);
  return mlir::FunctionType::getInputs(&FunctionType);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getResultTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v3);
  return mlir::FunctionType::getResults(&FunctionType);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc(0x38uLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::verifyBody;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::cloneTypeWith(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v11);
  return mlir::FunctionType::clone(&FunctionType, a3, a4, a5, a6);
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyBody(mlir::Operation **a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = (((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10));
  if (*v1 == v1)
  {
    return 1;
  }

  FunctionType = mlir::mpsx::ANEOp::getFunctionType(a1);
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  v5 = v4;
  v6 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7 + 48;
  v8 = *(v7 + 48);
  if (((*(v9 + 8) - v8) >> 3) != v4)
  {
    v52[0] = "entry block must have ";
    v53 = 259;
    mlir::OpState::emitOpError(a1, v52, &FunctionType);
    if (FunctionType)
    {
      v54 = 5;
      v55 = v5;
      v13 = &v54;
      v14 = v58;
      if (v59 >= v60)
      {
        if (v58 <= &v54 && v58 + 24 * v59 > &v54)
        {
          v49 = &v54 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v14 = v58;
          v13 = (v58 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v13 = &v54;
          v14 = v58;
        }
      }

      v15 = &v14[24 * v59];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v59;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&FunctionType, " arguments to match function signature");
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (FunctionType)
    {
      mlir::InFlightDiagnostic::report(&FunctionType);
    }

    if (v67 != 1)
    {
      return v12;
    }

    if (v66 != &v67)
    {
      free(v66);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v65;
      v20 = __p;
      if (v65 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v65 = v18;
      operator delete(v20);
    }

    v21 = v62;
    if (v62)
    {
      v22 = v63;
      v23 = v62;
      if (v63 != v62)
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
        v23 = v62;
      }

      v63 = v21;
      operator delete(v23);
    }

    v47 = v58;
    if (v58 == v61)
    {
      return v12;
    }

LABEL_57:
    free(v47);
    return v12;
  }

  if (!v4)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = *(*(v8 + 8 * v10) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*Inputs != v11)
    {
      break;
    }

    ++v10;
    ++Inputs;
    if (v4 == v10)
    {
      return 1;
    }
  }

  v26 = Inputs;
  v52[0] = "type of entry block argument #";
  v53 = 259;
  mlir::OpState::emitOpError(a1, v52, &FunctionType);
  if (FunctionType)
  {
    v54 = 5;
    v55 = v10;
    v27 = &v54;
    v28 = v58;
    if (v59 >= v60)
    {
      if (v58 <= &v54 && v58 + 24 * v59 > &v54)
      {
        v50 = &v54 - v58;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v28 = v58;
        v27 = (v58 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v27 = &v54;
        v28 = v58;
      }
    }

    v29 = &v28[24 * v59];
    v30 = *v27;
    *(v29 + 2) = *(v27 + 2);
    *v29 = v30;
    ++v59;
    if (FunctionType)
    {
      mlir::Diagnostic::operator<<(&v57, 40);
      if (FunctionType)
      {
        v31 = &v54;
        mlir::DiagnosticArgument::DiagnosticArgument(&v54, v11);
        v32 = v58;
        if (v59 >= v60)
        {
          if (v58 <= &v54 && v58 + 24 * v59 > &v54)
          {
            v51 = &v54 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v32 = v58;
            v31 = (v58 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v31 = &v54;
            v32 = v58;
          }
        }

        v33 = &v32[24 * v59];
        v34 = *v31;
        *(v33 + 2) = *(v31 + 2);
        *v33 = v34;
        ++v59;
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&FunctionType, ") must match the type of the corresponding argument in ");
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v35, "function signature(");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v36, v26);
  if (*v37)
  {
    v38 = v37;
    mlir::Diagnostic::operator<<((v37 + 1), 41);
    v37 = v38;
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (FunctionType)
  {
    mlir::InFlightDiagnostic::report(&FunctionType);
  }

  if (v67)
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

    v47 = v58;
    if (v58 != v61)
    {
      goto LABEL_57;
    }
  }

  return v12;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getBodyBlock;
  {
    v5 = v2;
    mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 16);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::build;
  {
    v5 = v2;
    mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>(uint64_t a1)
{
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    a1 = v90;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v79 = v1;
    v91 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v79;
    a1 = v91;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v80 = v1;
    v92 = a1;
    v69 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v69;
    v1 = v80;
    a1 = v92;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v81 = v1;
    v93 = a1;
    v60 = v3;
    v70 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v3 = v60;
    v2 = v70;
    v1 = v81;
    a1 = v93;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v82 = v1;
    v94 = a1;
    v61 = v3;
    v71 = v2;
    v52 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v52;
    v3 = v61;
    v2 = v71;
    v1 = v82;
    a1 = v94;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v83 = v1;
    v95 = a1;
    v62 = v3;
    v72 = v2;
    v53 = v4;
    v45 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v5 = v45;
    v4 = v53;
    v3 = v62;
    v2 = v72;
    v1 = v83;
    a1 = v95;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v84 = v1;
    v96 = a1;
    v63 = v3;
    v73 = v2;
    v54 = v4;
    v39 = v6;
    v46 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v6 = v39;
    v5 = v46;
    v4 = v54;
    v3 = v63;
    v2 = v73;
    v1 = v84;
    a1 = v96;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v85 = v1;
    v97 = a1;
    v64 = v3;
    v74 = v2;
    v55 = v4;
    v40 = v6;
    v47 = v5;
    v34 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v7 = v34;
    v6 = v40;
    v5 = v47;
    v4 = v55;
    v3 = v64;
    v2 = v74;
    v1 = v85;
    a1 = v97;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v86 = v1;
    v98 = a1;
    v65 = v3;
    v75 = v2;
    v56 = v4;
    v41 = v6;
    v48 = v5;
    v30 = v8;
    v35 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v8 = v30;
    v7 = v35;
    v6 = v41;
    v5 = v48;
    v4 = v56;
    v3 = v65;
    v2 = v75;
    v1 = v86;
    a1 = v98;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v87 = v1;
    v99 = a1;
    v66 = v3;
    v76 = v2;
    v57 = v4;
    v42 = v6;
    v49 = v5;
    v31 = v8;
    v36 = v7;
    v27 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>();
    v9 = v27;
    v8 = v31;
    v7 = v36;
    v6 = v42;
    v5 = v49;
    v4 = v57;
    v3 = v66;
    v2 = v76;
    v1 = v87;
    a1 = v99;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v89 = v1;
    v101 = a1;
    v68 = v3;
    v78 = v2;
    v59 = v4;
    v44 = v6;
    v51 = v5;
    v33 = v8;
    v38 = v7;
    v26 = v10;
    v29 = v9;
    v24 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v11 = v24;
    v10 = v26;
    v9 = v29;
    v8 = v33;
    v7 = v38;
    v6 = v44;
    v5 = v51;
    v4 = v59;
    v3 = v68;
    v2 = v78;
    v1 = v89;
    a1 = v101;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TargetLegalizerInterface::Trait<Empty>]";
  v6 = 94;
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

const char *llvm::getTypeName<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FormableRegionOpInterface::Trait<Empty>]";
  v6 = 95;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 16);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, *(*(*(a2 + 48) + 96) + 8), *(*(*(a2 + 48) + 96) + 40));
}

BOOL mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroResults<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroOperands<mlir::mpsx::ANEOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::ANEOp>,mlir::SymbolOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::CallableOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::FunctionOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mpsx::ANEOp>,mlir::OpTrait::RegionOp<mlir::mpsx::ANEOp>,mlir::TargetLegalizerInterface::Trait<mlir::mpsx::ANEOp>,mlir::FormableRegionOpInterface::Trait<mlir::mpsx::ANEOp>>(a1, a2))
  {
    v5 = a1;
    return mlir::mpsx::ANEOp::verify(&v5);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroResults<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroOperands<mlir::mpsx::ANEOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::ANEOp>,mlir::SymbolOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::CallableOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::FunctionOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mpsx::ANEOp>,mlir::OpTrait::RegionOp<mlir::mpsx::ANEOp>,mlir::TargetLegalizerInterface::Trait<mlir::mpsx::ANEOp>,mlir::FormableRegionOpInterface::Trait<mlir::mpsx::ANEOp>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && (v9 = a1, mlir::mpsx::ANEOp::verifyInvariantsImpl(&v9)) && mlir::detail::SymbolOpInterfaceTrait<mlir::memref::GlobalOp>::verifyTrait(a1, v6))
  {
    v7 = mlir::function_interface_impl::verifyTrait<mlir::mpsx::ANEOp>(a1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::function_interface_impl::verifyTrait<mlir::mpsx::ANEOp>(mlir::Operation *a1)
{
  v152 = *MEMORY[0x1E69E9840];
  v141 = a1;
  ArgAttrsAttr = mlir::mpsx::ANEOp::getArgAttrsAttr(&v141);
  if (ArgAttrsAttr)
  {
    v143[0] = mlir::mpsx::ANEOp::getFunctionType(&v141);
    mlir::FunctionType::getInputs(v143);
    v2 = v1;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v3 = v2;
    if (v4 != v2)
    {
      v139 = 257;
      mlir::OpState::emitOpError(&v141, v138, v143);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v143, "expects argument attribute array to have the same number of elements as the number of function arguments, got ");
      v31 = v30;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      if (*v31)
      {
        v33 = *(v31 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v32;
        v34 = *(v31 + 32);
        v35 = &v142;
        if (v34 >= *(v31 + 36))
        {
          if (v33 <= &v142 && v33 + 24 * v34 > &v142)
          {
            v128 = &v143[-1] - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, v31 + 40, v34 + 1, 24);
            v33 = *(v31 + 24);
            v35 = &v128[v33];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, v31 + 40, v34 + 1, 24);
            v33 = *(v31 + 24);
            v35 = &v142;
          }
        }

        v36 = v33 + 24 * *(v31 + 32);
        v37 = *v35;
        *(v36 + 16) = *(v35 + 2);
        *v36 = v37;
        ++*(v31 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v31, ", but expected ");
      if (*v38)
      {
        v39 = *(v38 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v3;
        v40 = *(v38 + 32);
        v41 = &v142;
        if (v40 >= *(v38 + 36))
        {
          if (v39 <= &v142 && v39 + 24 * v40 > &v142)
          {
            v129 = &v143[-1] - v39;
            v130 = v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, v38 + 40, v40 + 1, 24);
            v38 = v130;
            v39 = *(v130 + 24);
            v41 = &v129[v39];
          }

          else
          {
            v126 = v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, v38 + 40, v40 + 1, 24);
            v38 = v126;
            v39 = *(v126 + 24);
            v41 = &v142;
          }
        }

        v42 = v39 + 24 * *(v38 + 32);
        v43 = *v41;
        *(v42 + 16) = *(v41 + 2);
        *v42 = v43;
        ++*(v38 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 == 1)
      {
        if (v150 != &v151)
        {
          free(v150);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v149;
          v46 = __p;
          if (v149 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v149 = v44;
          operator delete(v46);
        }

        v47 = v146;
        if (!v146)
        {
          goto LABEL_174;
        }

        v48 = v147;
        v49 = v146;
        if (v147 == v146)
        {
          goto LABEL_173;
        }

        do
        {
          v51 = *--v48;
          v50 = v51;
          *v48 = 0;
          if (v51)
          {
            operator delete[](v50);
          }
        }

        while (v48 != v47);
        goto LABEL_172;
      }

      return v29;
    }

    if (v2)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v5);
        if (!v6)
        {
          v137 = 0;
LABEL_133:
          v139 = 257;
          mlir::OpState::emitOpError(&v141, v138, v143);
          v92 = v91;
          Value = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v92)
          {
            v94 = *(Value + 8 * v5);
            v95 = &v142;
            mlir::DiagnosticArgument::DiagnosticArgument(&v142, v94);
            v96 = v92 + 24;
            v97 = *(v92 + 24);
            v98 = *(v92 + 32);
            if (v98 >= *(v92 + 36))
            {
              if (v97 <= &v142 && v97 + 24 * v98 > &v142)
              {
                v135 = &v143[-1] - v97;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v96, v92 + 40, v98 + 1, 24);
                v97 = *(v92 + 24);
                v95 = &v135[v97];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v96, v92 + 40, v98 + 1, 24);
                v97 = *(v92 + 24);
                v95 = &v142;
              }
            }

            v99 = v97 + 24 * *(v92 + 32);
            v100 = *v95;
            *(v99 + 16) = *(v95 + 2);
            *v99 = v100;
            ++*(v92 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
          if (v143[0])
          {
            mlir::InFlightDiagnostic::report(v143);
          }

          if (v151 != 1)
          {
            return v29;
          }

          if (v150 != &v151)
          {
            free(v150);
          }

          v102 = __p;
          if (__p)
          {
            v103 = v149;
            v104 = __p;
            if (v149 != __p)
            {
              do
              {
                v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
              }

              while (v103 != v102);
              v104 = __p;
            }

            v149 = v102;
            operator delete(v104);
          }

          v47 = v146;
          if (!v146)
          {
            goto LABEL_174;
          }

          v105 = v147;
          v49 = v146;
          if (v147 == v146)
          {
            goto LABEL_173;
          }

          do
          {
            v107 = *--v105;
            v106 = v107;
            *v105 = 0;
            if (v107)
            {
              operator delete[](v106);
            }
          }

          while (v105 != v47);
          goto LABEL_172;
        }

        if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v6 = 0;
        }

        v137 = v6;
        if (!v6)
        {
          goto LABEL_133;
        }

        v7 = mlir::AffineMapAttr::getValue(&v137);
        v8 = mlir::DictionaryAttr::end(&v137);
        if (v7 != v8)
        {
          break;
        }

LABEL_18:
        if (++v5 == v2)
        {
          goto LABEL_19;
        }
      }

      v9 = v8;
      while (1)
      {
        v142 = *v7;
        v143[0] = mlir::CallGraphNode::getCallableRegion(&v142);
        AttrData = mlir::OpaqueAttr::getAttrData(v143);
        if (!v11)
        {
          break;
        }

        v12 = AttrData;
        v13 = memchr(AttrData, 46, v11);
        if (!v13 || v13 - v12 == -1)
        {
          break;
        }

        NameDialect = mlir::NamedAttribute::getNameDialect(&v142);
        if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v141, 0, v5, v142, *(&v142 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v7 == v9)
        {
          goto LABEL_18;
        }
      }

      v138[0] = "arguments may only have dialect attributes";
      v139 = 259;
      mlir::OpState::emitOpError(&v141, v138, v143);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 != 1)
      {
        return v29;
      }

      if (v150 != &v151)
      {
        free(v150);
      }

      v73 = __p;
      if (__p)
      {
        v74 = v149;
        v75 = __p;
        if (v149 != __p)
        {
          do
          {
            v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
          }

          while (v74 != v73);
          v75 = __p;
        }

        v149 = v73;
        operator delete(v75);
      }

      v47 = v146;
      if (!v146)
      {
        goto LABEL_174;
      }

      v76 = v147;
      v49 = v146;
      if (v147 == v146)
      {
        goto LABEL_173;
      }

      do
      {
        v78 = *--v76;
        v77 = v78;
        *v76 = 0;
        if (v78)
        {
          operator delete[](v77);
        }
      }

      while (v76 != v47);
      goto LABEL_172;
    }
  }

LABEL_19:
  ArgAttrsAttr = mlir::mpsx::ANEOp::getResAttrsAttr(&v141);
  if (ArgAttrsAttr)
  {
    v143[0] = mlir::mpsx::ANEOp::getFunctionType(&v141);
    mlir::FunctionType::getResults(v143);
    v16 = v15;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v17 = v16;
    if (v18 != v16)
    {
      v139 = 257;
      mlir::OpState::emitOpError(&v141, v138, v143);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v143, "expects result attribute array to have the same number of elements as the number of function results, got ");
      v53 = v52;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      v55 = v53;
      if (*v53)
      {
        v56 = *(v53 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v54;
        v57 = *(v53 + 32);
        v58 = &v142;
        if (v57 >= *(v53 + 36))
        {
          if (v56 <= &v142 && v56 + 24 * v57 > &v142)
          {
            v131 = &v143[-1] - v56;
            v132 = v55;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v55 + 24, v55 + 40, v57 + 1, 24);
            v55 = v132;
            v56 = *(v132 + 24);
            v58 = &v131[v56];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v53 + 24, v53 + 40, v57 + 1, 24);
            v55 = v53;
            v56 = *(v53 + 24);
            v58 = &v142;
          }
        }

        v59 = v56 + 24 * *(v55 + 32);
        v60 = *v58;
        *(v59 + 16) = *(v58 + 2);
        *v59 = v60;
        ++*(v55 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v55, ", but expected ");
      if (*v61)
      {
        v62 = *(v61 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v17;
        v63 = *(v61 + 32);
        v64 = &v142;
        if (v63 >= *(v61 + 36))
        {
          if (v62 <= &v142 && v62 + 24 * v63 > &v142)
          {
            v133 = &v143[-1] - v62;
            v134 = v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v61 + 24, v61 + 40, v63 + 1, 24);
            v61 = v134;
            v62 = *(v134 + 24);
            v64 = &v133[v62];
          }

          else
          {
            v127 = v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v61 + 24, v61 + 40, v63 + 1, 24);
            v61 = v127;
            v62 = *(v127 + 24);
            v64 = &v142;
          }
        }

        v65 = v62 + 24 * *(v61 + 32);
        v66 = *v64;
        *(v65 + 16) = *(v64 + 2);
        *v65 = v66;
        ++*(v61 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 == 1)
      {
        if (v150 != &v151)
        {
          free(v150);
        }

        v67 = __p;
        if (__p)
        {
          v68 = v149;
          v69 = __p;
          if (v149 != __p)
          {
            do
            {
              v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
            }

            while (v68 != v67);
            v69 = __p;
          }

          v149 = v67;
          operator delete(v69);
        }

        v47 = v146;
        if (!v146)
        {
          goto LABEL_174;
        }

        v70 = v147;
        v49 = v146;
        if (v147 == v146)
        {
          goto LABEL_173;
        }

        do
        {
          v72 = *--v70;
          v71 = v72;
          *v70 = 0;
          if (v72)
          {
            operator delete[](v71);
          }
        }

        while (v70 != v47);
        goto LABEL_172;
      }

      return v29;
    }

    if (v16)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v19);
        if (!v20)
        {
          v137 = 0;
LABEL_153:
          v139 = 257;
          mlir::OpState::emitOpError(&v141, v138, v143);
          v109 = v108;
          v110 = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v109)
          {
            v111 = *(v110 + 8 * v19);
            v112 = &v142;
            mlir::DiagnosticArgument::DiagnosticArgument(&v142, v111);
            v113 = v109 + 24;
            v114 = *(v109 + 24);
            v115 = *(v109 + 32);
            if (v115 >= *(v109 + 36))
            {
              if (v114 <= &v142 && v114 + 24 * v115 > &v142)
              {
                v136 = &v143[-1] - v114;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v113, v109 + 40, v115 + 1, 24);
                v114 = *(v109 + 24);
                v112 = &v136[v114];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v113, v109 + 40, v115 + 1, 24);
                v114 = *(v109 + 24);
                v112 = &v142;
              }
            }

            v116 = v114 + 24 * *(v109 + 32);
            v117 = *v112;
            *(v116 + 16) = *(v112 + 2);
            *v116 = v117;
            ++*(v109 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
          if (v143[0])
          {
            mlir::InFlightDiagnostic::report(v143);
          }

          if (v151 != 1)
          {
            return v29;
          }

          if (v150 != &v151)
          {
            free(v150);
          }

          v119 = __p;
          if (__p)
          {
            v120 = v149;
            v121 = __p;
            if (v149 != __p)
            {
              do
              {
                v120 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v120 - 1);
              }

              while (v120 != v119);
              v121 = __p;
            }

            v149 = v119;
            operator delete(v121);
          }

          v47 = v146;
          if (!v146)
          {
            goto LABEL_174;
          }

          v122 = v147;
          v49 = v146;
          if (v147 == v146)
          {
            goto LABEL_173;
          }

          do
          {
            v124 = *--v122;
            v123 = v124;
            *v122 = 0;
            if (v124)
            {
              operator delete[](v123);
            }
          }

          while (v122 != v47);
          goto LABEL_172;
        }

        if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v20 = 0;
        }

        v137 = v20;
        if (!v20)
        {
          goto LABEL_153;
        }

        v21 = mlir::AffineMapAttr::getValue(&v137);
        v22 = mlir::DictionaryAttr::end(&v137);
        if (v21 != v22)
        {
          break;
        }

LABEL_36:
        if (++v19 == v16)
        {
          goto LABEL_37;
        }
      }

      v23 = v22;
      while (1)
      {
        v142 = *v21;
        v143[0] = mlir::CallGraphNode::getCallableRegion(&v142);
        v24 = mlir::OpaqueAttr::getAttrData(v143);
        if (!v25)
        {
          break;
        }

        v26 = v24;
        v27 = memchr(v24, 46, v25);
        if (!v27 || v27 - v26 == -1)
        {
          break;
        }

        v28 = mlir::NamedAttribute::getNameDialect(&v142);
        if (v28 && ((*(*v28 + 88))(v28, v141, 0, v19, v142, *(&v142 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v21 == v23)
        {
          goto LABEL_36;
        }
      }

      v138[0] = "results may only have dialect attributes";
      v139 = 259;
      mlir::OpState::emitOpError(&v141, v138, v143);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 != 1)
      {
        return v29;
      }

      if (v150 != &v151)
      {
        free(v150);
      }

      v85 = __p;
      if (__p)
      {
        v86 = v149;
        v87 = __p;
        if (v149 != __p)
        {
          do
          {
            v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
          }

          while (v86 != v85);
          v87 = __p;
        }

        v149 = v85;
        operator delete(v87);
      }

      v47 = v146;
      if (!v146)
      {
        goto LABEL_174;
      }

      v88 = v147;
      v49 = v146;
      if (v147 == v146)
      {
        goto LABEL_173;
      }

      do
      {
        v90 = *--v88;
        v89 = v90;
        *v88 = 0;
        if (v90)
        {
          operator delete[](v89);
        }
      }

      while (v88 != v47);
      goto LABEL_172;
    }
  }

LABEL_37:
  if ((*(v141 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyBody(&v141);
  }

  v138[0] = "expects one region";
  v139 = 259;
  mlir::OpState::emitOpError(&v141, v138, v143);
  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
  if (v143[0])
  {
    mlir::InFlightDiagnostic::report(v143);
  }

  if (v151 == 1)
  {
    if (v150 != &v151)
    {
      free(v150);
    }

    v79 = __p;
    if (__p)
    {
      v80 = v149;
      v81 = __p;
      if (v149 != __p)
      {
        do
        {
          v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
        }

        while (v80 != v79);
        v81 = __p;
      }

      v149 = v79;
      operator delete(v81);
    }

    v47 = v146;
    if (!v146)
    {
      goto LABEL_174;
    }

    v82 = v147;
    v49 = v146;
    if (v147 == v146)
    {
LABEL_173:
      v147 = v47;
      operator delete(v49);
LABEL_174:
      if (v144 != &v145)
      {
        free(v144);
      }

      return v29;
    }

    do
    {
      v84 = *--v82;
      v83 = v84;
      *v82 = 0;
      if (v84)
      {
        operator delete[](v83);
      }
    }

    while (v82 != v47);
LABEL_172:
    v49 = v146;
    goto LABEL_173;
  }

  return v29;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.buffer_to_tensor", 21, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B15F48;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B170A8;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::BufferToTensorOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::mpsx::BufferToTensorOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(v18, v19, v20);
    mlir::ValueRange::ValueRange(v17, *a11, *(a11 + 8));
    v22[0] = &unk_1F5B170A8;
    v23 = v22;
    if (v23 == v22)
    {
      (*(*v23 + 32))(v23);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v23)
      {
        (*(*v23 + 40))(v23);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v22[0] = "mpsx.buffer_to_tensor";
    v22[1] = 21;
    v15.var0.var0 = a3;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v15, "'", v22, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v19 != v21)
  {
    free(v19);
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B170A8;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::foldSingleResultHook<mlir::mpsx::BufferToTensorOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17[0] = a1;
  v17[1] = v8;
  v17[2] = v9;
  v18 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(v19, v12, v11);
  v19[2] = a2;
  v19[3] = a3;
  v13 = mlir::mpsx::BufferToTensorOp::fold(v17);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    v16 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
    v13 = v16;
    LODWORD(v14) = *(a4 + 8);
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, (mlir::mpsx::BufferToTensorOp::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    v8 = a1;
    v6 = mlir::mpsx::TensorToBufferOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.cpu", 8, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::CPUOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B16010;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc(0x80uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc(0x48uLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getArgumentTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v3);
  return mlir::FunctionType::getInputs(&FunctionType);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getResultTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v3);
  return mlir::FunctionType::getResults(&FunctionType);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc(0x38uLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::verifyBody;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::cloneTypeWith(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v11);
  return mlir::FunctionType::clone(&FunctionType, a3, a4, a5, a6);
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::CPUOp>::verifyBody(mlir::Operation **a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = (((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10));
  if (*v1 == v1)
  {
    return 1;
  }

  FunctionType = mlir::mpsx::CPUOp::getFunctionType(a1);
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  v5 = v4;
  v6 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7 + 48;
  v8 = *(v7 + 48);
  if (((*(v9 + 8) - v8) >> 3) != v4)
  {
    v52[0] = "entry block must have ";
    v53 = 259;
    mlir::OpState::emitOpError(a1, v52, &FunctionType);
    if (FunctionType)
    {
      v54 = 5;
      v55 = v5;
      v13 = &v54;
      v14 = v58;
      if (v59 >= v60)
      {
        if (v58 <= &v54 && v58 + 24 * v59 > &v54)
        {
          v49 = &v54 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v14 = v58;
          v13 = (v58 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v13 = &v54;
          v14 = v58;
        }
      }

      v15 = &v14[24 * v59];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v59;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&FunctionType, " arguments to match function signature");
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (FunctionType)
    {
      mlir::InFlightDiagnostic::report(&FunctionType);
    }

    if (v67 != 1)
    {
      return v12;
    }

    if (v66 != &v67)
    {
      free(v66);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v65;
      v20 = __p;
      if (v65 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v65 = v18;
      operator delete(v20);
    }

    v21 = v62;
    if (v62)
    {
      v22 = v63;
      v23 = v62;
      if (v63 != v62)
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
        v23 = v62;
      }

      v63 = v21;
      operator delete(v23);
    }

    v47 = v58;
    if (v58 == v61)
    {
      return v12;
    }

LABEL_57:
    free(v47);
    return v12;
  }

  if (!v4)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = *(*(v8 + 8 * v10) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*Inputs != v11)
    {
      break;
    }

    ++v10;
    ++Inputs;
    if (v4 == v10)
    {
      return 1;
    }
  }

  v26 = Inputs;
  v52[0] = "type of entry block argument #";
  v53 = 259;
  mlir::OpState::emitOpError(a1, v52, &FunctionType);
  if (FunctionType)
  {
    v54 = 5;
    v55 = v10;
    v27 = &v54;
    v28 = v58;
    if (v59 >= v60)
    {
      if (v58 <= &v54 && v58 + 24 * v59 > &v54)
      {
        v50 = &v54 - v58;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v28 = v58;
        v27 = (v58 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v27 = &v54;
        v28 = v58;
      }
    }

    v29 = &v28[24 * v59];
    v30 = *v27;
    *(v29 + 2) = *(v27 + 2);
    *v29 = v30;
    ++v59;
    if (FunctionType)
    {
      mlir::Diagnostic::operator<<(&v57, 40);
      if (FunctionType)
      {
        v31 = &v54;
        mlir::DiagnosticArgument::DiagnosticArgument(&v54, v11);
        v32 = v58;
        if (v59 >= v60)
        {
          if (v58 <= &v54 && v58 + 24 * v59 > &v54)
          {
            v51 = &v54 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v32 = v58;
            v31 = (v58 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v31 = &v54;
            v32 = v58;
          }
        }

        v33 = &v32[24 * v59];
        v34 = *v31;
        *(v33 + 2) = *(v31 + 2);
        *v33 = v34;
        ++v59;
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&FunctionType, ") must match the type of the corresponding argument in ");
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v35, "function signature(");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v36, v26);
  if (*v37)
  {
    v38 = v37;
    mlir::Diagnostic::operator<<((v37 + 1), 41);
    v37 = v38;
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (FunctionType)
  {
    mlir::InFlightDiagnostic::report(&FunctionType);
  }

  if (v67)
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

    v47 = v58;
    if (v58 != v61)
    {
      goto LABEL_57;
    }
  }

  return v12;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc(0x30uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getBodyBlock;
  {
    v5 = v2;
    mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 8);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::build;
  {
    v5 = v2;
    mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mpsx::CPUOp>,mlir::OpTrait::ZeroResults<mlir::mpsx::CPUOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::CPUOp>,mlir::OpTrait::ZeroOperands<mlir::mpsx::CPUOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::CPUOp>,mlir::SymbolOpInterface::Trait<mlir::mpsx::CPUOp>,mlir::CallableOpInterface::Trait<mlir::mpsx::CPUOp>,mlir::FunctionOpInterface::Trait<mlir::mpsx::CPUOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mpsx::CPUOp>,mlir::OpTrait::RegionOp<mlir::mpsx::CPUOp>,mlir::TargetLegalizerInterface::Trait<mlir::mpsx::CPUOp>,mlir::FormableRegionOpInterface::Trait<mlir::mpsx::CPUOp>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && (v9 = a1, mlir::mpsx::CPUOp::verifyInvariantsImpl(&v9)) && mlir::detail::SymbolOpInterfaceTrait<mlir::memref::GlobalOp>::verifyTrait(a1, v6))
  {
    v7 = mlir::function_interface_impl::verifyTrait<mlir::mpsx::CPUOp>(a1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::function_interface_impl::verifyTrait<mlir::mpsx::CPUOp>(mlir::Operation *a1)
{
  v152 = *MEMORY[0x1E69E9840];
  v141 = a1;
  ArgAttrsAttr = mlir::mpsx::CPUOp::getArgAttrsAttr(&v141);
  if (ArgAttrsAttr)
  {
    v143[0] = mlir::mpsx::CPUOp::getFunctionType(&v141);
    mlir::FunctionType::getInputs(v143);
    v2 = v1;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v3 = v2;
    if (v4 != v2)
    {
      v139 = 257;
      mlir::OpState::emitOpError(&v141, v138, v143);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v143, "expects argument attribute array to have the same number of elements as the number of function arguments, got ");
      v31 = v30;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      if (*v31)
      {
        v33 = *(v31 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v32;
        v34 = *(v31 + 32);
        v35 = &v142;
        if (v34 >= *(v31 + 36))
        {
          if (v33 <= &v142 && v33 + 24 * v34 > &v142)
          {
            v128 = &v143[-1] - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, v31 + 40, v34 + 1, 24);
            v33 = *(v31 + 24);
            v35 = &v128[v33];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, v31 + 40, v34 + 1, 24);
            v33 = *(v31 + 24);
            v35 = &v142;
          }
        }

        v36 = v33 + 24 * *(v31 + 32);
        v37 = *v35;
        *(v36 + 16) = *(v35 + 2);
        *v36 = v37;
        ++*(v31 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v31, ", but expected ");
      if (*v38)
      {
        v39 = *(v38 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v3;
        v40 = *(v38 + 32);
        v41 = &v142;
        if (v40 >= *(v38 + 36))
        {
          if (v39 <= &v142 && v39 + 24 * v40 > &v142)
          {
            v129 = &v143[-1] - v39;
            v130 = v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, v38 + 40, v40 + 1, 24);
            v38 = v130;
            v39 = *(v130 + 24);
            v41 = &v129[v39];
          }

          else
          {
            v126 = v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, v38 + 40, v40 + 1, 24);
            v38 = v126;
            v39 = *(v126 + 24);
            v41 = &v142;
          }
        }

        v42 = v39 + 24 * *(v38 + 32);
        v43 = *v41;
        *(v42 + 16) = *(v41 + 2);
        *v42 = v43;
        ++*(v38 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 == 1)
      {
        if (v150 != &v151)
        {
          free(v150);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v149;
          v46 = __p;
          if (v149 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v149 = v44;
          operator delete(v46);
        }

        v47 = v146;
        if (!v146)
        {
          goto LABEL_174;
        }

        v48 = v147;
        v49 = v146;
        if (v147 == v146)
        {
          goto LABEL_173;
        }

        do
        {
          v51 = *--v48;
          v50 = v51;
          *v48 = 0;
          if (v51)
          {
            operator delete[](v50);
          }
        }

        while (v48 != v47);
        goto LABEL_172;
      }

      return v29;
    }

    if (v2)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v5);
        if (!v6)
        {
          v137 = 0;
LABEL_133:
          v139 = 257;
          mlir::OpState::emitOpError(&v141, v138, v143);
          v92 = v91;
          Value = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v92)
          {
            v94 = *(Value + 8 * v5);
            v95 = &v142;
            mlir::DiagnosticArgument::DiagnosticArgument(&v142, v94);
            v96 = v92 + 24;
            v97 = *(v92 + 24);
            v98 = *(v92 + 32);
            if (v98 >= *(v92 + 36))
            {
              if (v97 <= &v142 && v97 + 24 * v98 > &v142)
              {
                v135 = &v143[-1] - v97;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v96, v92 + 40, v98 + 1, 24);
                v97 = *(v92 + 24);
                v95 = &v135[v97];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v96, v92 + 40, v98 + 1, 24);
                v97 = *(v92 + 24);
                v95 = &v142;
              }
            }

            v99 = v97 + 24 * *(v92 + 32);
            v100 = *v95;
            *(v99 + 16) = *(v95 + 2);
            *v99 = v100;
            ++*(v92 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
          if (v143[0])
          {
            mlir::InFlightDiagnostic::report(v143);
          }

          if (v151 != 1)
          {
            return v29;
          }

          if (v150 != &v151)
          {
            free(v150);
          }

          v102 = __p;
          if (__p)
          {
            v103 = v149;
            v104 = __p;
            if (v149 != __p)
            {
              do
              {
                v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
              }

              while (v103 != v102);
              v104 = __p;
            }

            v149 = v102;
            operator delete(v104);
          }

          v47 = v146;
          if (!v146)
          {
            goto LABEL_174;
          }

          v105 = v147;
          v49 = v146;
          if (v147 == v146)
          {
            goto LABEL_173;
          }

          do
          {
            v107 = *--v105;
            v106 = v107;
            *v105 = 0;
            if (v107)
            {
              operator delete[](v106);
            }
          }

          while (v105 != v47);
          goto LABEL_172;
        }

        if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v6 = 0;
        }

        v137 = v6;
        if (!v6)
        {
          goto LABEL_133;
        }

        v7 = mlir::AffineMapAttr::getValue(&v137);
        v8 = mlir::DictionaryAttr::end(&v137);
        if (v7 != v8)
        {
          break;
        }

LABEL_18:
        if (++v5 == v2)
        {
          goto LABEL_19;
        }
      }

      v9 = v8;
      while (1)
      {
        v142 = *v7;
        v143[0] = mlir::CallGraphNode::getCallableRegion(&v142);
        AttrData = mlir::OpaqueAttr::getAttrData(v143);
        if (!v11)
        {
          break;
        }

        v12 = AttrData;
        v13 = memchr(AttrData, 46, v11);
        if (!v13 || v13 - v12 == -1)
        {
          break;
        }

        NameDialect = mlir::NamedAttribute::getNameDialect(&v142);
        if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v141, 0, v5, v142, *(&v142 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v7 == v9)
        {
          goto LABEL_18;
        }
      }

      v138[0] = "arguments may only have dialect attributes";
      v139 = 259;
      mlir::OpState::emitOpError(&v141, v138, v143);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 != 1)
      {
        return v29;
      }

      if (v150 != &v151)
      {
        free(v150);
      }

      v73 = __p;
      if (__p)
      {
        v74 = v149;
        v75 = __p;
        if (v149 != __p)
        {
          do
          {
            v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
          }

          while (v74 != v73);
          v75 = __p;
        }

        v149 = v73;
        operator delete(v75);
      }

      v47 = v146;
      if (!v146)
      {
        goto LABEL_174;
      }

      v76 = v147;
      v49 = v146;
      if (v147 == v146)
      {
        goto LABEL_173;
      }

      do
      {
        v78 = *--v76;
        v77 = v78;
        *v76 = 0;
        if (v78)
        {
          operator delete[](v77);
        }
      }

      while (v76 != v47);
      goto LABEL_172;
    }
  }

LABEL_19:
  ArgAttrsAttr = mlir::mpsx::CPUOp::getResAttrsAttr(&v141);
  if (ArgAttrsAttr)
  {
    v143[0] = mlir::mpsx::CPUOp::getFunctionType(&v141);
    mlir::FunctionType::getResults(v143);
    v16 = v15;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v17 = v16;
    if (v18 != v16)
    {
      v139 = 257;
      mlir::OpState::emitOpError(&v141, v138, v143);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v143, "expects result attribute array to have the same number of elements as the number of function results, got ");
      v53 = v52;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      v55 = v53;
      if (*v53)
      {
        v56 = *(v53 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v54;
        v57 = *(v53 + 32);
        v58 = &v142;
        if (v57 >= *(v53 + 36))
        {
          if (v56 <= &v142 && v56 + 24 * v57 > &v142)
          {
            v131 = &v143[-1] - v56;
            v132 = v55;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v55 + 24, v55 + 40, v57 + 1, 24);
            v55 = v132;
            v56 = *(v132 + 24);
            v58 = &v131[v56];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v53 + 24, v53 + 40, v57 + 1, 24);
            v55 = v53;
            v56 = *(v53 + 24);
            v58 = &v142;
          }
        }

        v59 = v56 + 24 * *(v55 + 32);
        v60 = *v58;
        *(v59 + 16) = *(v58 + 2);
        *v59 = v60;
        ++*(v55 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v55, ", but expected ");
      if (*v61)
      {
        v62 = *(v61 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v17;
        v63 = *(v61 + 32);
        v64 = &v142;
        if (v63 >= *(v61 + 36))
        {
          if (v62 <= &v142 && v62 + 24 * v63 > &v142)
          {
            v133 = &v143[-1] - v62;
            v134 = v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v61 + 24, v61 + 40, v63 + 1, 24);
            v61 = v134;
            v62 = *(v134 + 24);
            v64 = &v133[v62];
          }

          else
          {
            v127 = v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v61 + 24, v61 + 40, v63 + 1, 24);
            v61 = v127;
            v62 = *(v127 + 24);
            v64 = &v142;
          }
        }

        v65 = v62 + 24 * *(v61 + 32);
        v66 = *v64;
        *(v65 + 16) = *(v64 + 2);
        *v65 = v66;
        ++*(v61 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 == 1)
      {
        if (v150 != &v151)
        {
          free(v150);
        }

        v67 = __p;
        if (__p)
        {
          v68 = v149;
          v69 = __p;
          if (v149 != __p)
          {
            do
            {
              v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
            }

            while (v68 != v67);
            v69 = __p;
          }

          v149 = v67;
          operator delete(v69);
        }

        v47 = v146;
        if (!v146)
        {
          goto LABEL_174;
        }

        v70 = v147;
        v49 = v146;
        if (v147 == v146)
        {
          goto LABEL_173;
        }

        do
        {
          v72 = *--v70;
          v71 = v72;
          *v70 = 0;
          if (v72)
          {
            operator delete[](v71);
          }
        }

        while (v70 != v47);
        goto LABEL_172;
      }

      return v29;
    }

    if (v16)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v19);
        if (!v20)
        {
          v137 = 0;
LABEL_153:
          v139 = 257;
          mlir::OpState::emitOpError(&v141, v138, v143);
          v109 = v108;
          v110 = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v109)
          {
            v111 = *(v110 + 8 * v19);
            v112 = &v142;
            mlir::DiagnosticArgument::DiagnosticArgument(&v142, v111);
            v113 = v109 + 24;
            v114 = *(v109 + 24);
            v115 = *(v109 + 32);
            if (v115 >= *(v109 + 36))
            {
              if (v114 <= &v142 && v114 + 24 * v115 > &v142)
              {
                v136 = &v143[-1] - v114;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v113, v109 + 40, v115 + 1, 24);
                v114 = *(v109 + 24);
                v112 = &v136[v114];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v113, v109 + 40, v115 + 1, 24);
                v114 = *(v109 + 24);
                v112 = &v142;
              }
            }

            v116 = v114 + 24 * *(v109 + 32);
            v117 = *v112;
            *(v116 + 16) = *(v112 + 2);
            *v116 = v117;
            ++*(v109 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
          if (v143[0])
          {
            mlir::InFlightDiagnostic::report(v143);
          }

          if (v151 != 1)
          {
            return v29;
          }

          if (v150 != &v151)
          {
            free(v150);
          }

          v119 = __p;
          if (__p)
          {
            v120 = v149;
            v121 = __p;
            if (v149 != __p)
            {
              do
              {
                v120 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v120 - 1);
              }

              while (v120 != v119);
              v121 = __p;
            }

            v149 = v119;
            operator delete(v121);
          }

          v47 = v146;
          if (!v146)
          {
            goto LABEL_174;
          }

          v122 = v147;
          v49 = v146;
          if (v147 == v146)
          {
            goto LABEL_173;
          }

          do
          {
            v124 = *--v122;
            v123 = v124;
            *v122 = 0;
            if (v124)
            {
              operator delete[](v123);
            }
          }

          while (v122 != v47);
          goto LABEL_172;
        }

        if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v20 = 0;
        }

        v137 = v20;
        if (!v20)
        {
          goto LABEL_153;
        }

        v21 = mlir::AffineMapAttr::getValue(&v137);
        v22 = mlir::DictionaryAttr::end(&v137);
        if (v21 != v22)
        {
          break;
        }

LABEL_36:
        if (++v19 == v16)
        {
          goto LABEL_37;
        }
      }

      v23 = v22;
      while (1)
      {
        v142 = *v21;
        v143[0] = mlir::CallGraphNode::getCallableRegion(&v142);
        v24 = mlir::OpaqueAttr::getAttrData(v143);
        if (!v25)
        {
          break;
        }

        v26 = v24;
        v27 = memchr(v24, 46, v25);
        if (!v27 || v27 - v26 == -1)
        {
          break;
        }

        v28 = mlir::NamedAttribute::getNameDialect(&v142);
        if (v28 && ((*(*v28 + 88))(v28, v141, 0, v19, v142, *(&v142 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v21 == v23)
        {
          goto LABEL_36;
        }
      }

      v138[0] = "results may only have dialect attributes";
      v139 = 259;
      mlir::OpState::emitOpError(&v141, v138, v143);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 != 1)
      {
        return v29;
      }

      if (v150 != &v151)
      {
        free(v150);
      }

      v85 = __p;
      if (__p)
      {
        v86 = v149;
        v87 = __p;
        if (v149 != __p)
        {
          do
          {
            v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
          }

          while (v86 != v85);
          v87 = __p;
        }

        v149 = v85;
        operator delete(v87);
      }

      v47 = v146;
      if (!v146)
      {
        goto LABEL_174;
      }

      v88 = v147;
      v49 = v146;
      if (v147 == v146)
      {
        goto LABEL_173;
      }

      do
      {
        v90 = *--v88;
        v89 = v90;
        *v88 = 0;
        if (v90)
        {
          operator delete[](v89);
        }
      }

      while (v88 != v47);
      goto LABEL_172;
    }
  }

LABEL_37:
  if ((*(v141 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::CPUOp>::verifyBody(&v141);
  }

  v138[0] = "expects one region";
  v139 = 259;
  mlir::OpState::emitOpError(&v141, v138, v143);
  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
  if (v143[0])
  {
    mlir::InFlightDiagnostic::report(v143);
  }

  if (v151 == 1)
  {
    if (v150 != &v151)
    {
      free(v150);
    }

    v79 = __p;
    if (__p)
    {
      v80 = v149;
      v81 = __p;
      if (v149 != __p)
      {
        do
        {
          v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
        }

        while (v80 != v79);
        v81 = __p;
      }

      v149 = v79;
      operator delete(v81);
    }

    v47 = v146;
    if (!v146)
    {
      goto LABEL_174;
    }

    v82 = v147;
    v49 = v146;
    if (v147 == v146)
    {
LABEL_173:
      v147 = v47;
      operator delete(v49);
LABEL_174:
      if (v144 != &v145)
      {
        free(v144);
      }

      return v29;
    }

    do
    {
      v84 = *--v82;
      v83 = v84;
      *v82 = 0;
      if (v84)
      {
        operator delete[](v83);
      }
    }

    while (v82 != v47);
LABEL_172:
    v49 = v146;
    goto LABEL_173;
  }

  return v29;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.deinterleave", 17, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::DeinterleaveOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B160D8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B170A8;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B170A8;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::DeinterleaveOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = v21;
  v20 = 0x400000000;
  if (mlir::mpsx::DeinterleaveOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v19))
  {
    mlir::ValueRange::ValueRange(v18, v19, v20);
    mlir::ValueRange::ValueRange(v17, *a11, *(a11 + 8));
    v22[0] = &unk_1F5B170A8;
    v23 = v22;
    if (v23 == v22)
    {
      (*(*v23 + 32))(v23);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v23)
      {
        (*(*v23 + 40))(v23);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v22[0] = "mpsx.deinterleave";
    v22[1] = 17;
    v15.var0.var0 = a3;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v15, "'", v22, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v19 != v21)
  {
    free(v19);
  }

  return v14;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}