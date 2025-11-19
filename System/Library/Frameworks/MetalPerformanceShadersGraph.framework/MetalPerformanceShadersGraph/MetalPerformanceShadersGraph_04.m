unint64_t mlir::arith::SelectOp::fold(uint64_t a1, uint64_t a2)
{
  v80[6] = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = v2[7];
  v4 = v2[11];
  if (v3 == v4)
  {
    return v3 | 4;
  }

  v7 = v2[3];
  v72 = v7;
  v8 = *(a2 + 40);
  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_25;
  }

  LODWORD(v79) = 1;
  __p = 0;
  v73.n128_u64[0] = &__p;
  v10 = mlir::detail::constant_int_value_binder::match(&v73, v9);
  v11 = v79;
  if (!v10)
  {
    v12 = 0;
    if (v79 < 0x41)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v79 < 0x41)
  {
    v12 = __p == 1;
    goto LABEL_12;
  }

  if (v11 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    v12 = *__p == 1;
LABEL_7:
    if (__p)
    {
      operator delete[](__p);
      if (!v12)
      {
        goto LABEL_16;
      }

      return v3 | 4;
    }

LABEL_12:
    if (!v12)
    {
      goto LABEL_16;
    }

    return v3 | 4;
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_16:
  v8 = *(a2 + 40);
  v13 = *v8;
  if (*v8)
  {
    LODWORD(v79) = 1;
    __p = 0;
    v73.n128_u64[0] = &__p;
    v14 = mlir::detail::constant_int_value_binder::match(&v73, v13);
    v15 = v79;
    if (v14)
    {
      if (v79 < 0x41)
      {
        v16 = __p == 0;
        goto LABEL_23;
      }

      if (v15 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

LABEL_24:
        v8 = *(a2 + 40);
        goto LABEL_25;
      }

      v16 = *__p == 0;
    }

    else
    {
      v16 = 0;
      if (v79 < 0x41)
      {
        goto LABEL_23;
      }
    }

    if (__p)
    {
      operator delete[](__p);
    }

LABEL_23:
    if (v16)
    {
      return v4 | 4;
    }

    goto LABEL_24;
  }

LABEL_25:
  v17 = v8[1];
  if (v17 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v4 | 4;
  }

  v18 = v8[2];
  if (v18 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v3 | 4;
  }

  v66 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::Type::isInteger(&v66, 1))
  {
    goto LABEL_60;
  }

  v19 = *(*(a2 + 40) + 8);
  if (!v19)
  {
    goto LABEL_60;
  }

  LODWORD(v79) = 1;
  __p = 0;
  v73.n128_u64[0] = &__p;
  v20 = mlir::detail::constant_int_value_binder::match(&v73, v19);
  v21 = v79;
  if (v20)
  {
    if (v79 >= 0x41)
    {
      if (v21 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_60;
      }

      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v24 = *p_p == 1;
    if (v21 < 0x41)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v24 = 0;
    if (v79 < 0x41)
    {
      goto LABEL_46;
    }
  }

  if (__p)
  {
    operator delete[](__p);
    if (!v24)
    {
      goto LABEL_60;
    }

    goto LABEL_47;
  }

LABEL_46:
  if (!v24)
  {
    goto LABEL_60;
  }

LABEL_47:
  v25 = *(*(a2 + 40) + 16);
  if (v25)
  {
    LODWORD(v79) = 1;
    __p = 0;
    v73.n128_u64[0] = &__p;
    if (mlir::detail::constant_int_value_binder::match(&v73, v25))
    {
      v26 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(&__p);
    }

    else
    {
      v26 = 0;
    }

    if (v79 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v26)
    {
      return v7 | 4;
    }
  }

LABEL_60:
  DefiningOp = mlir::Value::getDefiningOp(&v72);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id && (__p = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64), v28 = DefiningOp, Int = mlir::IntegerAttr::getInt(&__p), Int <= 1) && ((v30 = *(v28 + 72), v31 = *(v30 + 24), v32 = *(v30 + 56), v31 == v3) ? (v33 = v32 == v4) : (v33 = 0), v33 || (v31 == v4 ? (v34 = v32 == v3) : (v34 = 0), v34)))
  {
    if (Int == 1)
    {
      v59 = v3;
    }

    else
    {
      v59 = v4;
    }

    return v59 | 4;
  }

  else
  {
    v35 = *(a2 + 40);
    v36 = *v35;
    if (*v35 && (!(v37 = mlir::DenseElementsAttr::classof(*v35)) ? (v38 = 0) : (v38 = v36), (v71 = v38, v37) && (v39 = *(a2 + 40), (v40 = *(v39 + 8)) != 0) && (!(v41 = mlir::DenseElementsAttr::classof(*(v39 + 8))) ? (v42 = 0) : (v42 = v40), (v70 = v42, v41) && (v43 = *(a2 + 40), (v44 = *(v43 + 16)) != 0) && (!(v45 = mlir::DenseElementsAttr::classof(*(v43 + 16))) ? (v46 = 0) : (v46 = v44), v69 = v46, v45))))
    {
      __p = v80;
      v79 = 0x600000000;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v71);
      if (NumElements > HIDWORD(v79))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v80, NumElements, 8);
      }

      mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&v71, &v73);
      v48 = v73;
      mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&v71, &v73);
      v49 = v75;
      v50 = mlir::DenseElementsAttr::value_begin<mlir::Attribute>(&v70);
      v52 = v51;
      mlir::DenseElementsAttr::value_end<mlir::Attribute>(&v70);
      v53 = mlir::DenseElementsAttr::value_begin<mlir::Attribute>(&v69);
      v55 = v54;
      mlir::DenseElementsAttr::value_end<mlir::Attribute>(&v69);
      v73 = v48;
      v74 = v50;
      v75 = v52;
      v76 = v53;
      for (i = v55; v73.n128_u64[1] != v49; ++i)
      {
        v60 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v73);
        v61 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v74);
        v62 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v76);
        v66 = v60;
        v67 = v61;
        v68 = v62;
        if (mlir::BoolAttr::getValue(&v66))
        {
          v63 = &v67;
        }

        else
        {
          v63 = &v68;
        }

        v64 = *v63;
        v65 = v79;
        if (v79 >= HIDWORD(v79))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v80, v79 + 1, 8);
          v65 = v79;
        }

        *(__p + v65) = v64;
        LODWORD(v79) = v79 + 1;
        ++v73.n128_u64[1];
        ++v75;
      }

      Value = mlir::ArrayAttr::getValue(&v70);
      result = mlir::DenseElementsAttr::get(Value, v57, __p, v79) & 0xFFFFFFFFFFFFFFFBLL;
      if (__p != v80)
      {
        v58 = result;
        free(__p);
        return v58;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::value_begin<mlir::Attribute>(mlir::ArrayAttr *a1)
{
  mlir::ArrayAttr::getValue(a1);
  mlir::NamedAttribute::NamedAttribute(&v6, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::NamedAttribute::NamedAttribute(&v5, v2, NumElements);
  return v6;
}

uint64_t mlir::DenseElementsAttr::value_end<mlir::Attribute>(mlir::ArrayAttr *a1)
{
  mlir::ArrayAttr::getValue(a1);
  mlir::NamedAttribute::NamedAttribute(&v6, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::NamedAttribute::NamedAttribute(&v5, v2, NumElements);
  return v5;
}

uint64_t mlir::arith::SelectOp::parse(uint64_t a1, uint64_t a2)
{
  v15[12] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v14[0] = v15;
  v14[1] = 0x300000000;
  if ((*(*a1 + 720))(a1, v14, 0, 1, 3) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 576))(a1, &v12))
  {
    if ((*(*a1 + 128))(a1))
    {
      I1Type = v12;
      if (((*(*a1 + 536))(a1, &v12) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = (*(*a1 + 32))(a1);
      I1Type = mlir::Builder::getI1Type(v8);
    }

    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v9 + 1, 8);
      LODWORD(v9) = *(a2 + 72);
    }

    *(*(a2 + 64) + 8 * v9) = v12;
    ++*(a2 + 72);
    v13[0] = I1Type;
    v13[1] = v12;
    v13[2] = v12;
    v11[0] = v13;
    v11[1] = 3;
    v10 = (*(*a1 + 16))(a1);
    v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v14, v11, v10, a2 + 16);
    v6 = v14[0];
    if (v14[0] != v15)
    {
      goto LABEL_7;
    }

    return v5;
  }

LABEL_6:
  v5 = 0;
  v6 = v14[0];
  if (v14[0] != v15)
  {
LABEL_7:
    free(v6);
  }

  return v5;
}

void mlir::OperationState::addTypes(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = 8 * a3;
  v6 = *(a1 + 72);
  v7 = v6 + ((8 * a3) >> 3);
  if (v7 > *(a1 + 76))
  {
    v8 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, a1 + 80, v7, 8);
    a2 = v8;
    LODWORD(v6) = *(a1 + 72);
  }

  if (a3)
  {
    memcpy((*(a1 + 64) + 8 * v6), a2, v5);
    LODWORD(v6) = *(a1 + 72);
  }

  *(a1 + 72) = v6 + (v5 >> 3);
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  v7 = a3[1];
  if (v7 == v6)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v40 = 257;
    (*(*a1 + 24))(v44, a1, a4, v39);
    if (v44[0])
    {
      v41 = 5;
      v42 = v6;
      v13 = &v41;
      v14 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = v45;
          v13 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v13 = &v41;
          v14 = v45;
        }
      }

      v15 = &v14[24 * v46];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v42 = " operands present, but expected ";
        v43 = 32;
        v18 = &v41;
        v19 = v45;
        if (v17 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v17 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v17 + 1, 24);
            v19 = v45;
            v18 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v17 + 1, 24);
            v18 = &v41;
            v19 = v45;
          }
        }

        v20 = &v19[24 * v46];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v22 = ++v46;
        if (v44[0])
        {
          v41 = 5;
          v42 = v7;
          v23 = &v41;
          v24 = v45;
          if (v22 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v22 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v22 + 1, 24);
              v24 = v45;
              v23 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v22 + 1, 24);
              v23 = &v41;
              v24 = v45;
            }
          }

          v25 = &v24[24 * v46];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          ++v46;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
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

      v27 = __p;
      if (__p)
      {
        v28 = v52;
        v29 = __p;
        if (v52 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v52 = v27;
        operator delete(v29);
      }

      v30 = v49;
      if (v49)
      {
        v31 = v50;
        v32 = v49;
        if (v50 != v49)
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
          v32 = v49;
        }

        v50 = v30;
        operator delete(v32);
      }

      if (v45 != v48)
      {
        free(v45);
      }
    }
  }

  return v12;
}

BOOL mlir::arith::SelectOp::verify(mlir::arith::SelectOp *this)
{
  v74 = *MEMORY[0x1E69E9840];
  v58 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v2 = 1;
  if (mlir::Type::isSignlessInteger(&v58, 1))
  {
    return v2;
  }

  v3 = *(*(*(*this - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v57 = 257;
    mlir::OpState::emitOpError(this, v56, &v62);
    if (v62)
    {
      LODWORD(v59) = 3;
      v60 = "expected condition to be a signless i1, but got ";
      v61 = 48;
      v10 = &v59;
      v11 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v59 && v64 + 24 * v65 > &v59)
        {
          v50 = &v59 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v11 = v64;
          v10 = v64 + v50;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v10 = &v59;
          v11 = v64;
        }
      }

      v12 = &v11[24 * v65];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v65;
      if (v62)
      {
        v14 = &v59;
        mlir::DiagnosticArgument::DiagnosticArgument(&v59, v58);
        v15 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v59 && v64 + 24 * v65 > &v59)
          {
            v51 = &v59 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v15 = v64;
            v14 = v64 + v51;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v14 = &v59;
            v15 = v64;
          }
        }

        v16 = &v15[24 * v65];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v65;
      }
    }

    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
    if (v62)
    {
      mlir::InFlightDiagnostic::report(&v62);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v71;
        v20 = __p;
        if (v71 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v71 = v18;
        operator delete(v20);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_64;
      }

      v22 = v69;
      v23 = v68;
      if (v69 == v68)
      {
LABEL_63:
        v69 = v21;
        operator delete(v23);
LABEL_64:
        if (v64 != v67)
        {
          free(v64);
        }

        return v2;
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
LABEL_62:
      v23 = v68;
      goto LABEL_63;
    }

    return v2;
  }

  v59 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext(&v59);
  v7 = mlir::IntegerType::get(Context, 1, 0);
  v56[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v59);
  v56[1] = v8;
  if (v56[0])
  {
    LOBYTE(v62) = 0;
    v63 = 0;
    v9 = mlir::ShapedType::cloneWith(v56, &v62, v7);
LABEL_12:
    v7 = v9;
    goto LABEL_35;
  }

  if (*(*v59 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::UnrankedTensorType::get(v7);
    goto LABEL_12;
  }

LABEL_35:
  if (v58 == v7)
  {
    return 1;
  }

  v57 = 257;
  mlir::OpState::emitOpError(this, v56, &v62);
  if (v62)
  {
    LODWORD(v59) = 3;
    v60 = "expected condition type to have the same shape as the result type, expected ";
    v61 = 76;
    v26 = &v59;
    v27 = v64;
    if (v65 >= v66)
    {
      if (v64 <= &v59 && v64 + 24 * v65 > &v59)
      {
        v52 = &v59 - v64;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        v27 = v64;
        v26 = v64 + v52;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        v26 = &v59;
        v27 = v64;
      }
    }

    v28 = &v27[24 * v65];
    v29 = *v26;
    *(v28 + 2) = *(v26 + 2);
    *v28 = v29;
    ++v65;
    if (v62)
    {
      v30 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v7);
      v31 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v59 && v64 + 24 * v65 > &v59)
        {
          v53 = &v59 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v31 = v64;
          v30 = v64 + v53;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v30 = &v59;
          v31 = v64;
        }
      }

      v32 = &v31[24 * v65];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v65;
      if (v62)
      {
        LODWORD(v59) = 3;
        v60 = ", but got ";
        v61 = 10;
        v35 = &v59;
        v36 = v64;
        if (v34 >= v66)
        {
          if (v64 <= &v59 && v64 + 24 * v34 > &v59)
          {
            v54 = &v59 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v34 + 1, 24);
            v36 = v64;
            v35 = v64 + v54;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v34 + 1, 24);
            v35 = &v59;
            v36 = v64;
          }
        }

        v37 = &v36[24 * v65];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v65;
        if (v62)
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v58);
          v40 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v59 && v64 + 24 * v65 > &v59)
            {
              v55 = &v59 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v40 = v64;
              v39 = v64 + v55;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v39 = &v59;
              v40 = v64;
            }
          }

          v41 = &v40[24 * v65];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v65;
        }
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
  if (v62)
  {
    mlir::InFlightDiagnostic::report(&v62);
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v71;
      v45 = __p;
      if (v71 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v71 = v43;
      operator delete(v45);
    }

    v21 = v68;
    if (!v68)
    {
      goto LABEL_64;
    }

    v46 = v69;
    v23 = v68;
    if (v69 == v68)
    {
      goto LABEL_63;
    }

    do
    {
      v48 = *--v46;
      v47 = v48;
      *v46 = 0;
      if (v48)
      {
        operator delete[](v47);
      }
    }

    while (v46 != v21);
    goto LABEL_62;
  }

  return v2;
}

unint64_t mlir::arith::ShLIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    v67 = 0;
    v59 = &v67;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = v67 == 0;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v67) > 0x40)
      {
        if (v67)
        {
          operator delete[](v67);
        }

LABEL_14:
        v3 = *(a2 + 48);
        goto LABEL_15;
      }

      v8 = *v67 == 0;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v67)
    {
      operator delete[](v67);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (v67)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v67);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  v67 = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&v67);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && v67)
    {
      operator delete[](v67);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&v67) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          v67 = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v67, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v67, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, v67, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v67);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &v67, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

unint64_t mlir::arith::ShRUIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    v67 = 0;
    v59 = &v67;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = v67 == 0;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v67) > 0x40)
      {
        if (v67)
        {
          operator delete[](v67);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v67 == 0;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v67)
    {
      operator delete[](v67);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (v67)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v67);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  v67 = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&v67);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && v67)
    {
      operator delete[](v67);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&v67) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          v67 = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v67, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v67, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, v67, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v67);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &v67, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

unint64_t mlir::arith::ShRSIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    v67 = 0;
    v59 = &v67;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = v67 == 0;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v67) > 0x40)
      {
        if (v67)
        {
          operator delete[](v67);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v67 == 0;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v67)
    {
      operator delete[](v67);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (v67)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v67);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  v67 = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&v67);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && v67)
    {
      operator delete[](v67);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&v67) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          v67 = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v67, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v67, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, v67, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v67);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &v67, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

void llvm::APFloat::getLargest(llvm::APFloatBase *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == a1)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), a1);
    v7 = (a3 + 8);
    v8 = a2;
    if (v6 != *(a3 + 8))
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(a3 + 8, a1);
    v7 = (a3 + 8);
    v8 = a2;
    if (v6 != *(a3 + 8))
    {
LABEL_3:

      llvm::detail::IEEEFloat::makeLargest(v7, v8);
      return;
    }
  }

  llvm::detail::DoubleAPFloat::makeLargest(v7, v8);
}

void llvm::APInt::getSignedMinValue(llvm::APInt *this@<X0>, llvm::APInt *a2@<X8>)
{
  v2 = this;
  v3 = a2;
  *(a2 + 2) = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(a2, 0, 0);
    LODWORD(a2) = v2 - 1;
    if (*(v3 + 8) > 0x40u)
    {
      v3 = *v3 + 8 * (a2 >> 6);
    }
  }

  else
  {
    *a2 = 0;
    LOBYTE(a2) = this - 1;
  }

  *v3 |= 1 << a2;
}

void llvm::APInt::getSignedMaxValue(llvm::APInt *this@<X0>, llvm::APInt *a2@<X8>)
{
  v2 = this;
  v3 = a2;
  *(a2 + 2) = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(a2, -1, 1);
    LODWORD(v4) = v2 - 1;
    if (*(v3 + 8) > 0x40u)
    {
      v3 = *v3 + 8 * (v4 >> 6);
    }
  }

  else
  {
    v4 = 0xFFFFFFFFFFFFFFFFLL >> -this;
    if (!this)
    {
      v4 = 0;
    }

    *v3 = v4;
    LOBYTE(v4) = this - 1;
  }

  *v3 &= ~(1 << v4);
}

void llvm::APInt::getMaxValue(llvm::APInt *this@<X0>, llvm::APInt *a2@<X8>)
{
  *(a2 + 2) = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(a2, -1, 1);
  }

  else
  {
    v2 = 0xFFFFFFFFFFFFFFFFLL >> -this;
    if (!this)
    {
      v2 = 0;
    }

    *a2 = v2;
  }
}

uint64_t mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 32), 0, 0);
  }

  return a1;
}

uint64_t mlir::arith::AddFOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "fastmath";
  v56.var1 = 8;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

uint64_t mlir::arith::AddFOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "fastmath", 8, *a2);
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

unint64_t mlir::arith::AddFOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::AddFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::arith::AddFOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }

      *result = v4;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::arith::AddFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "fastmath", 8, *a2);
  }
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: Floating point fast math flags";
        v29 = 62;
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

BOOL mlir::arith::AddFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::AddFOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::AddFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::FastMathFlagsAttr]";
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

uint64_t mlir::arith::AddFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

mlir::MLIRContext *mlir::arith::AddFOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::arith::FastMathFlagsAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

BOOL mlir::arith::AddFOp::verifyInvariantsImpl(mlir::arith::AddFOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
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

BOOL mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v108 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *(*a2 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v20 = v7 || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (v20 || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 1;
  }

  {
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps1();
  }

  v22 = (v5 + 72);
  v23 = *(v5 + 96);
  if ((v23 & 2) == 0)
  {
    v22 = *v22;
  }

  if ((*(v23 & 0xFFFFFFFFFFFFFFF8))(v22, mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v24 = a2;
    v25 = *a2;
    {
      v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if (v28)
      {
        goto LABEL_56;
      }
    }

    else
    {
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v24 = a2;
      v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if (v28)
      {
LABEL_56:
        v29 = v27;
        v30 = v28;
        do
        {
          v31 = v30 >> 1;
          v32 = &v29[2 * (v30 >> 1)];
          v34 = *v32;
          v33 = v32 + 2;
          v30 += ~(v30 >> 1);
          if (v34 < v26)
          {
            v29 = v33;
          }

          else
          {
            v30 = v31;
          }
        }

        while (v30);
LABEL_109:
        if (v29 != &v27[2 * v28] && *v29 == v26)
        {
          v67 = v29[1];
        }

        else
        {
          v67 = 0;
        }

        v97[0] = v24;
        v97[1] = v67;
        v68 = *(*mlir::ElementsAttr::isSplat(v97) + 136);
        v82 = v68 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v68 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
        if (!v82 && v68 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
        {
          v7 = v68 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
          v36 = a1;
          v35 = a4;
          v37 = a3;
          result = 1;
          if (v7)
          {
            return result;
          }

          goto LABEL_63;
        }

        return 1;
      }
    }

    v28 = 0;
    v29 = v27;
    goto LABEL_109;
  }

  v36 = a1;
  v35 = a4;
  v37 = a3;
LABEL_63:
  v93 = 261;
  v92[0] = v37;
  v92[1] = v35;
  mlir::Operation::emitOpError(v36, v92, v97);
  v38 = a2;
  v39 = a5;
  if (v97[0])
  {
    v94 = 3;
    v95 = " #";
    v96 = 2;
    v40 = &v94;
    v41 = v98;
    if (v99 >= v100)
    {
      if (v98 <= &v94 && v98 + 24 * v99 > &v94)
      {
        v83 = &v94 - v98;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
        v41 = v98;
        v40 = (v98 + v83);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
        v40 = &v94;
        v41 = v98;
      }

      v38 = a2;
      v39 = a5;
    }

    v42 = &v41[24 * v99];
    v43 = *v40;
    *(v42 + 2) = *(v40 + 2);
    *v42 = v43;
    v44 = ++v99;
    if (v97[0])
    {
      v94 = 5;
      v95 = v39;
      v45 = &v94;
      v46 = v98;
      if (v44 >= v100)
      {
        if (v98 <= &v94 && v98 + 24 * v44 > &v94)
        {
          v84 = &v94 - v98;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v44 + 1, 24);
          v46 = v98;
          v45 = (v98 + v84);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v44 + 1, 24);
          v45 = &v94;
          v46 = v98;
        }

        v38 = a2;
      }

      v47 = &v46[24 * v99];
      v48 = *v45;
      *(v47 + 2) = *(v45 + 2);
      *v47 = v48;
      v49 = ++v99;
      if (v97[0])
      {
        v94 = 3;
        v95 = " must be floating-point-like, but got ";
        v96 = 38;
        v50 = &v94;
        v51 = v98;
        if (v49 >= v100)
        {
          if (v98 <= &v94 && v98 + 24 * v49 > &v94)
          {
            v85 = &v94 - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v49 + 1, 24);
            v51 = v98;
            v50 = (v98 + v85);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v49 + 1, 24);
            v50 = &v94;
            v51 = v98;
          }

          v38 = a2;
        }

        v52 = &v51[24 * v99];
        v53 = *v50;
        *(v52 + 2) = *(v50 + 2);
        *v52 = v53;
        ++v99;
        if (v97[0])
        {
          v54 = &v94;
          mlir::DiagnosticArgument::DiagnosticArgument(&v94, v38);
          v55 = v98;
          if (v99 >= v100)
          {
            if (v98 <= &v94 && v98 + 24 * v99 > &v94)
            {
              v86 = &v94 - v98;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
              v55 = v98;
              v54 = (v98 + v86);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
              v54 = &v94;
              v55 = v98;
            }
          }

          v56 = &v55[24 * v99];
          v57 = *v54;
          *(v56 + 2) = *(v54 + 2);
          *v56 = v57;
          ++v99;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
  v58 = result;
  if (v97[0])
  {
    mlir::InFlightDiagnostic::report(v97);
    result = v58;
  }

  if (v107 == 1)
  {
    if (v106 != &v107)
    {
      free(v106);
      result = v58;
    }

    v59 = __p;
    if (__p)
    {
      v60 = v105;
      v61 = __p;
      if (v105 != __p)
      {
        do
        {
          v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
        }

        while (v60 != v59);
        v61 = __p;
      }

      v105 = v59;
      operator delete(v61);
      result = v58;
    }

    v62 = v102;
    if (v102)
    {
      v63 = v103;
      v64 = v102;
      if (v103 != v102)
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
        v64 = v102;
      }

      v103 = v62;
      operator delete(v64);
      result = v58;
    }

    if (v98 != v101)
    {
      free(v98);
      return v58;
    }
  }

  return result;
}

uint64_t mlir::arith::AddFOp::parse(uint64_t a1, void *a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(a2);
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
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
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

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith17FastMathFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

void mlir::arith::AddFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v10 != mlir::arith::FastMathFlagsAttr::get(Context, 0))
  {
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
    if (v14[3] - v15 > 7uLL)
    {
      *v15 = 0x6874616D74736166;
      v14[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v14, "fastmath", 8uLL);
    }

    v33 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v16 = (*(*a2 + 16))(a2);
      v17 = (*(*v16 + 80))(v16) + v16[4] - v16[2];
      mlir::arith::FastMathFlagsAttr::print(&v33, a2);
      if (v17 == (*(*v16 + 80))(v16) + v16[4] - v16[2])
      {
        (*(*a2 + 40))(a2, v33);
      }
    }
  }

  v33 = v35;
  v35[0] = "fastmath";
  v35[1] = 8;
  v34 = 0x200000001;
  v18 = mlir::Attribute::getContext((*this + 24));
  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v19 && v19 == mlir::arith::FastMathFlagsAttr::get(v18, 0))
  {
    v20 = v34;
    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v34 + 1, 16);
      v20 = v34;
    }

    v21 = v33 + 16 * v20;
    *v21 = "fastmath";
    v21[1] = 8;
    LODWORD(v34) = v34 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v23, v33, v34);
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
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, ":", 1uLL);
  }

  else
  {
    *v27 = 58;
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
  if (v33 != v35)
  {
    free(v33);
  }
}

uint64_t mlir::arith::AddIOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "overflowFlags";
  v56.var1 = 13;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 58;
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

uint64_t mlir::arith::AddIOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "overflowFlags", 13, *a2);
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

unint64_t mlir::arith::AddIOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x776F6C667265766FLL ? (v4 = *(a3 + 5) == 0x7367616C46776F6CLL) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::arith::AddIOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x776F6C667265766FLL && *(a2 + 5) == 0x7367616C46776F6CLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

void mlir::arith::AddIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "overflowFlags", 13, *a2);
  }
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: Integer overflow arith flags";
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

BOOL mlir::arith::AddIOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::arith::AddIOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::AddIOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::IntegerOverflowFlagsAttr]";
  v38 = 87;
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

void mlir::arith::AddIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::arith::AddIOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

mlir::MLIRContext *mlir::arith::AddIOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::arith::IntegerOverflowFlagsAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

uint64_t mlir::arith::AddIOp::verifyInvariantsImpl(mlir::arith::AddIOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v3, "overflowFlags", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v76 = *MEMORY[0x1E69E9840];
  v61 = a2;
  if (mlir::Type::isSignlessIntOrIndex(&v61))
  {
    return 1;
  }

  v10 = *v61;
  {
    v57 = v10;
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps2();
    v10 = v57;
  }

  v11 = (v10 + 72);
  v12 = *(v10 + 96);
  if ((v12 & 2) == 0)
  {
    v11 = *v11;
  }

  if ((*(v12 & 0xFFFFFFFFFFFFFFF8))(v11, mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v13 = v61;
    if (v61)
    {
      v14 = *v61;
      {
        v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v56 = v14;
        v58 = v13;
        mlir::arith::ExtUIOp::fold();
        v13 = v58;
        v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v16 = *(v56 + 8);
        v17 = *(v56 + 16);
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      v18 = v16;
      v19 = v17;
      do
      {
        v20 = v19 >> 1;
        v21 = &v18[2 * (v19 >> 1)];
        v23 = *v21;
        v22 = v21 + 2;
        v19 += ~(v19 >> 1);
        if (v23 < v15)
        {
          v18 = v22;
        }

        else
        {
          v19 = v20;
        }
      }

      while (v19);
      if (v18 != &v16[2 * v17] && *v18 == v15)
      {
        v24 = v18[1];
LABEL_22:
        v65[0] = v13;
        v65[1] = v24;
        v59[0] = mlir::ElementsAttr::isSplat(v65);
        if (mlir::Type::isSignlessIntOrIndex(v59))
        {
          return 1;
        }

        goto LABEL_23;
      }
    }

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

LABEL_23:
  v60 = 261;
  v59[0] = a3;
  v59[1] = a4;
  mlir::Operation::emitOpError(a1, v59, v65);
  if (v65[0])
  {
    v62 = 3;
    v63 = " #";
    v64 = 2;
    v25 = &v62;
    v26 = v66;
    if (v67 >= v68)
    {
      if (v66 <= &v62 && v66 + 24 * v67 > &v62)
      {
        v52 = &v62 - v66;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
        v26 = v66;
        v25 = (v66 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
        v25 = &v62;
        v26 = v66;
      }
    }

    v27 = &v26[24 * v67];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v67;
    if (v65[0])
    {
      v62 = 5;
      v63 = a5;
      v30 = &v62;
      v31 = v66;
      if (v29 >= v68)
      {
        if (v66 <= &v62 && v66 + 24 * v29 > &v62)
        {
          v53 = &v62 - v66;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v29 + 1, 24);
          v31 = v66;
          v30 = (v66 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v29 + 1, 24);
          v30 = &v62;
          v31 = v66;
        }
      }

      v32 = &v31[24 * v67];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v67;
      if (v65[0])
      {
        v62 = 3;
        v63 = " must be signless-integer-like, but got ";
        v64 = 40;
        v35 = &v62;
        v36 = v66;
        if (v34 >= v68)
        {
          if (v66 <= &v62 && v66 + 24 * v34 > &v62)
          {
            v54 = &v62 - v66;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v34 + 1, 24);
            v36 = v66;
            v35 = (v66 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v34 + 1, 24);
            v35 = &v62;
            v36 = v66;
          }
        }

        v37 = &v36[24 * v67];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v67;
        if (v65[0])
        {
          v39 = &v62;
          mlir::DiagnosticArgument::DiagnosticArgument(&v62, v61);
          v40 = v66;
          if (v67 >= v68)
          {
            if (v66 <= &v62 && v66 + 24 * v67 > &v62)
            {
              v55 = &v62 - v66;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
              v40 = v66;
              v39 = (v66 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
              v39 = &v62;
              v40 = v66;
            }
          }

          v41 = &v40[24 * v67];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v67;
        }
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v65);
  if (v65[0])
  {
    mlir::InFlightDiagnostic::report(v65);
  }

  if (v75 == 1)
  {
    if (v74 != &v75)
    {
      free(v74);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v73;
      v45 = __p;
      if (v73 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v73 = v43;
      operator delete(v45);
    }

    v46 = v70;
    if (v70)
    {
      v47 = v71;
      v48 = v70;
      if (v71 != v70)
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
        v48 = v70;
      }

      v71 = v46;
      operator delete(v48);
    }

    if (v66 != v69)
    {
      free(v66);
    }
  }

  return v9;
}

uint64_t mlir::arith::AddIOp::parse(uint64_t a1, void *a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(a2);
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
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v6, "overflowFlags", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
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

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith24IntegerOverflowFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

void mlir::arith::AddIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v10 != mlir::arith::IntegerOverflowFlagsAttr::get(Context, 0))
  {
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
    if (v14[3] - v15 > 7uLL)
    {
      *v15 = 0x776F6C667265766FLL;
      v14[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v14, "overflow", 8uLL);
    }

    v33 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v16 = (*(*a2 + 16))(a2);
      v17 = (*(*v16 + 80))(v16) + v16[4] - v16[2];
      mlir::arith::IntegerOverflowFlagsAttr::print(&v33, a2);
      if (v17 == (*(*v16 + 80))(v16) + v16[4] - v16[2])
      {
        (*(*a2 + 40))(a2, v33);
      }
    }
  }

  v33 = v35;
  v35[0] = "overflowFlags";
  v35[1] = 13;
  v34 = 0x200000001;
  v18 = mlir::Attribute::getContext((*this + 24));
  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v19 && v19 == mlir::arith::IntegerOverflowFlagsAttr::get(v18, 0))
  {
    v20 = v34;
    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v34 + 1, 16);
      v20 = v34;
    }

    v21 = v33 + 16 * v20;
    *v21 = "overflowFlags";
    v21[1] = 13;
    LODWORD(v34) = v34 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v23, v33, v34);
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
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, ":", 1uLL);
  }

  else
  {
    *v27 = 58;
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
  if (v33 != v35)
  {
    free(v33);
  }
}

uint64_t mlir::arith::AddUIExtendedOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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
  a2(a3, NextResultAtOffset, "sum", 3);
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

  return (a2)(a3, v9, "overflow", 8);
}

BOOL mlir::arith::AddUIExtendedOp::verifyInvariantsImpl(mlir::arith::AddUIExtendedOp *this)
{
  v35 = *MEMORY[0x1E69E9840];
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
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u) & 1) == 0)
  {
    return 0;
  }

  v7 = *this;
  v8 = *(*this + 72);
  v9 = *(*(v8 + 56) + 8);
  if ((v9 ^ *(*(v8 + 24) + 8)) <= 7)
  {
    v10 = *(v7 + 36);
    v11 = v7 - 16;
    v12 = v10 ? v11 : 0;
    if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) ^ v9) <= 7)
    {
      v13 = *(*this + 36) ? *this - 16 : 0;
      if ((*(*(*(*this + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8)) < 8)
      {
        return 1;
      }
    }
  }

  v24 = "failed to verify that all of {lhs, rhs, sum} have same type";
  v25 = 259;
  mlir::OpState::emitOpError(this, &v24, v26);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  v15 = result;
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
    result = v15;
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
      result = v15;
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
      result = v15;
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
      result = v15;
    }

    if (v27 != &v28)
    {
      free(v27);
      return v15;
    }
  }

  return result;
}

uint64_t mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v59 = a2;
  if (mlir::Type::isSignlessInteger(&v59, 1))
  {
    return 1;
  }

  v10 = *v59;
  {
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps2();
  }

  v11 = (v10 + 72);
  v12 = *(v10 + 96);
  if ((v12 & 2) == 0)
  {
    v11 = *v11;
  }

  if ((*(v12 & 0xFFFFFFFFFFFFFFF8))(v11, mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v13 = v59;
    if (v59)
    {
      v14 = *v59;
      {
        v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v56 = v14;
        mlir::arith::ExtUIOp::fold();
        v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v16 = *(v56 + 8);
        v17 = *(v56 + 16);
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      v18 = v16;
      v19 = v17;
      do
      {
        v20 = v19 >> 1;
        v21 = &v18[2 * (v19 >> 1)];
        v23 = *v21;
        v22 = v21 + 2;
        v19 += ~(v19 >> 1);
        if (v23 < v15)
        {
          v18 = v22;
        }

        else
        {
          v19 = v20;
        }
      }

      while (v19);
      if (v18 != &v16[2 * v17] && *v18 == v15)
      {
        v24 = v18[1];
LABEL_22:
        v63[0] = v13;
        v63[1] = v24;
        v57[0] = mlir::ElementsAttr::isSplat(v63);
        v9 = 1;
        if (mlir::Type::isSignlessInteger(v57, 1))
        {
          return v9;
        }

        goto LABEL_23;
      }
    }

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

LABEL_23:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v63);
  if (v63[0])
  {
    v60 = 3;
    v61 = " #";
    v62 = 2;
    v25 = &v60;
    v26 = v64;
    if (v65 >= v66)
    {
      if (v64 <= &v60 && v64 + 24 * v65 > &v60)
      {
        v52 = &v60 - v64;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        v26 = v64;
        v25 = (v64 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
        v25 = &v60;
        v26 = v64;
      }
    }

    v27 = &v26[24 * v65];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v65;
    if (v63[0])
    {
      v60 = 5;
      v61 = a5;
      v30 = &v60;
      v31 = v64;
      if (v29 >= v66)
      {
        if (v64 <= &v60 && v64 + 24 * v29 > &v60)
        {
          v53 = &v60 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v29 + 1, 24);
          v31 = v64;
          v30 = (v64 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v29 + 1, 24);
          v30 = &v60;
          v31 = v64;
        }
      }

      v32 = &v31[24 * v65];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v65;
      if (v63[0])
      {
        v60 = 3;
        v61 = " must be BOOL-like, but got ";
        v62 = 28;
        v35 = &v60;
        v36 = v64;
        if (v34 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v34 > &v60)
          {
            v54 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v34 + 1, 24);
            v36 = v64;
            v35 = (v64 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v34 + 1, 24);
            v35 = &v60;
            v36 = v64;
          }
        }

        v37 = &v36[24 * v65];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v65;
        if (v63[0])
        {
          v39 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v59);
          v40 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v55 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v40 = v64;
              v39 = (v64 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v39 = &v60;
              v40 = v64;
            }
          }

          v41 = &v40[24 * v65];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v65;
        }
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v63);
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

    v43 = __p;
    if (__p)
    {
      v44 = v71;
      v45 = __p;
      if (v71 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v71 = v43;
      operator delete(v45);
    }

    v46 = v68;
    if (v68)
    {
      v47 = v69;
      v48 = v68;
      if (v69 != v68)
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
        v48 = v68;
      }

      v69 = v46;
      operator delete(v48);
    }

    if (v64 != v67)
    {
      free(v64);
    }
  }

  return v9;
}

uint64_t mlir::arith::AddUIExtendedOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (v7 = v6, ((*(*a1 + 120))(a1)) && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v7, 1), mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v10, v7, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::AddUIExtendedOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  v28 = v30;
  v29 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v28, v29);
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

  if (*(*this + 9))
  {
    v24 = *this - 16;
  }

  else
  {
    v24 = 0;
  }

  v25 = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 1);
  v26 = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  (*(*a2 + 32))(a2, *(v26 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v28 != v30)
  {
    free(v28);
  }
}

void mlir::arith::AndIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a3;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  __src = v18;
  v17 = 0x200000000;
  mlir::ValueRange::ValueRange(&v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v14, *(a2 + 224), *(a2 + 232));
  v19 = v15;
  if (v17 != 1)
  {
    if (!v17)
    {
      if (HIDWORD(v17))
      {
        v6 = 0;
LABEL_6:
        bzero(__src + 8 * v6, 8 - 8 * v6);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v18, 1uLL, 8);
      v6 = v17;
      if (v17 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    LODWORD(v17) = 1;
  }

  v7 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v8 = __src;
  *__src = *(v7 + 8) & 0xFFFFFFFFFFFFFFF8;
  v9 = v17;
  v10 = *(a2 + 72);
  v11 = v10 + v17;
  if (v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  if (v9)
  {
    memcpy((*(a2 + 64) + 8 * v10), v8, 8 * v9);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + v9;
  if (__src != v18)
  {
    free(__src);
  }
}

void mlir::arith::AndIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v23[2] = *MEMORY[0x1E69E9840];
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
  __src = v22;
  v21 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v19, *(a2 + 224), *(a2 + 232));
  v23[0] = a3;
  v23[1] = a4;
  if (v21 != 1)
  {
    if (!v21)
    {
      if (HIDWORD(v21))
      {
        v13 = 0;
LABEL_10:
        bzero(__src + 8 * v13, 8 - 8 * v13);
        goto LABEL_11;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v22, 1uLL, 8);
      v13 = v21;
      if (v21 != 1)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    LODWORD(v21) = 1;
  }

  v14 = mlir::ValueRange::dereference_iterator(v23, 0);
  v15 = __src;
  *__src = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = v21;
  v17 = *(a2 + 72);
  v18 = v17 + v21;
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
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::arith::AndIOp::verifyInvariantsImpl(mlir::arith::AndIOp *this)
{
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::AndIOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::arith::AndIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x1E69E9840];
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
  v21 = v23;
  v22 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v21, v22);
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
  if (v21 != v23)
  {
    free(v21);
  }
}

void mlir::arith::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

BOOL mlir::arith::BitcastOp::verifyInvariantsImpl(mlir::arith::BitcastOp *this)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps4(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
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

BOOL mlir::arith::__mlir_ods_local_type_constraint_ArithOps4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v156 = *MEMORY[0x1E69E9840];
  v140 = a2;
  if (mlir::Type::isSignlessIntOrIndex(&v140))
  {
    return 1;
  }

  v9 = *v140;
  {
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps2();
  }

  v10 = (v9 + 72);
  v11 = *(v9 + 96);
  if ((v11 & 2) == 0)
  {
    v10 = *v10;
  }

  if (!(*(v11 & 0xFFFFFFFFFFFFFFF8))(v10, mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    goto LABEL_22;
  }

  v12 = v140;
  if (!v140)
  {
    goto LABEL_20;
  }

  v13 = *v140;
  {
    mlir::arith::ExtUIOp::fold();
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_10:
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
  if (v17 == &v15[2 * v16] || *v17 != v14)
  {
    goto LABEL_20;
  }

  v23 = v17[1];
LABEL_21:
  v145[0] = v12;
  v145[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v145);
  if (mlir::Type::isSignlessIntOrIndex(&isSplat))
  {
    return 1;
  }

LABEL_22:
  v24 = *v140;
  v25 = *(*v140 + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 1;
  }

  {
    v43 = (v24 + 72);
    v44 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id;
    v45 = *(v24 + 96);
    v46 = *(v45 & 0xFFFFFFFFFFFFFFF8);
    if ((v45 & 2) == 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps2();
    v43 = (v24 + 72);
    v44 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id;
    v47 = *(v24 + 96);
    v46 = *(v47 & 0xFFFFFFFFFFFFFFF8);
    if ((v47 & 2) == 0)
    {
LABEL_77:
      if (!v46(*v43, v44))
      {
        goto LABEL_144;
      }

      goto LABEL_81;
    }
  }

  if (!v46(v43, v44))
  {
    goto LABEL_144;
  }

LABEL_81:
  v48 = v140;
  if (!v140)
  {
LABEL_94:
    v59 = 0;
    goto LABEL_95;
  }

  v49 = *v140;
  {
    v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v51 = *(v49 + 8);
    v52 = *(v49 + 16);
    if (v52)
    {
      goto LABEL_84;
    }

LABEL_91:
    v52 = 0;
    v53 = v51;
    goto LABEL_92;
  }

  mlir::arith::ExtUIOp::fold();
  v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v51 = *(v49 + 8);
  v52 = *(v49 + 16);
  if (!v52)
  {
    goto LABEL_91;
  }

LABEL_84:
  v53 = v51;
  v54 = v52;
  do
  {
    v55 = v54 >> 1;
    v56 = &v53[2 * (v54 >> 1)];
    v58 = *v56;
    v57 = v56 + 2;
    v54 += ~(v54 >> 1);
    if (v58 < v50)
    {
      v53 = v57;
    }

    else
    {
      v54 = v55;
    }
  }

  while (v54);
LABEL_92:
  if (v53 == &v51[2 * v52] || *v53 != v50)
  {
    goto LABEL_94;
  }

  v59 = v53[1];
LABEL_95:
  v137 = v48;
  v138 = v59;
  v60 = *(*mlir::ElementsAttr::isSplat(&v137) + 136);
  if (v60 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 1;
  }

LABEL_144:
  v77 = v140;
  v78 = *v140;
  if (*(*v140 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v107 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v108 = *(v78 + 8);
      v109 = *(v78 + 16);
      if (v109)
      {
        goto LABEL_172;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v107 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v108 = *(v78 + 8);
      v109 = *(v78 + 16);
      if (v109)
      {
LABEL_172:
        v110 = v108;
        v111 = v109;
        do
        {
          v112 = v111 >> 1;
          v113 = &v110[2 * (v111 >> 1)];
          v115 = *v113;
          v114 = v113 + 2;
          v111 += ~(v111 >> 1);
          if (v115 < v107)
          {
            v110 = v114;
          }

          else
          {
            v111 = v112;
          }
        }

        while (v111);
LABEL_197:
        if (v110 != &v108[2 * v109] && *v110 == v107)
        {
          v116 = v110[1];
        }

        else
        {
          v116 = 0;
        }

        v142 = v77;
        v143 = v116;
        isSplat = mlir::ElementsAttr::isSplat(&v142);
        if (!mlir::Type::isSignlessInteger(&isSplat))
        {
          v117 = *(*isSplat + 136);
          v118 = v117 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v117 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
          v119 = v118 || v117 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
          v120 = v119 || v117 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
          v121 = v120 || v117 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
          v122 = v121 || v117 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
          v123 = v122 || v117 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
          v124 = v123 || v117 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
          v125 = v124 || v117 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
          v126 = v125 || v117 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
          v127 = v126 || v117 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
          v128 = v127 || v117 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
          v129 = v128 || v117 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
          v130 = v129 || v117 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
          v131 = v130 || v117 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
          v132 = v131 || v117 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
          if (!v132 && v117 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
          {
            result = 1;
            if (v117 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
            {
              return result;
            }

            goto LABEL_145;
          }
        }

        return 1;
      }
    }

    v109 = 0;
    v110 = v108;
    goto LABEL_197;
  }

LABEL_145:
  v139 = 261;
  v137 = a3;
  v138 = a4;
  mlir::Operation::emitOpError(a1, &v137, v145);
  if (v145[0])
  {
    LODWORD(v142) = 3;
    v143 = " #";
    v144 = 2;
    v79 = &v142;
    v80 = v146;
    if (v147 >= v148)
    {
      if (v146 <= &v142 && v146 + 24 * v147 > &v142)
      {
        v133 = &v142 - v146;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
        v80 = v146;
        v79 = (v146 + v133);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
        v79 = &v142;
        v80 = v146;
      }
    }

    v81 = &v80[24 * v147];
    v82 = *v79;
    *(v81 + 2) = v79[2];
    *v81 = v82;
    v83 = ++v147;
    if (v145[0])
    {
      LODWORD(v142) = 5;
      v143 = a5;
      v84 = &v142;
      v85 = v146;
      if (v83 >= v148)
      {
        if (v146 <= &v142 && v146 + 24 * v83 > &v142)
        {
          v134 = &v142 - v146;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v83 + 1, 24);
          v85 = v146;
          v84 = (v146 + v134);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v83 + 1, 24);
          v84 = &v142;
          v85 = v146;
        }
      }

      v86 = &v85[24 * v147];
      v87 = *v84;
      *(v86 + 2) = v84[2];
      *v86 = v87;
      v88 = ++v147;
      if (v145[0])
      {
        LODWORD(v142) = 3;
        v143 = " must be signless-integer-or-float-like or memref of signless-integer or float, but got ";
        v144 = 88;
        v89 = &v142;
        v90 = v146;
        if (v88 >= v148)
        {
          if (v146 <= &v142 && v146 + 24 * v88 > &v142)
          {
            v135 = &v142 - v146;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v88 + 1, 24);
            v90 = v146;
            v89 = (v146 + v135);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v88 + 1, 24);
            v89 = &v142;
            v90 = v146;
          }
        }

        v91 = &v90[24 * v147];
        v92 = *v89;
        *(v91 + 2) = v89[2];
        *v91 = v92;
        ++v147;
        if (v145[0])
        {
          v93 = &v142;
          mlir::DiagnosticArgument::DiagnosticArgument(&v142, v140);
          v94 = v146;
          if (v147 >= v148)
          {
            if (v146 <= &v142 && v146 + 24 * v147 > &v142)
            {
              v136 = &v142 - v146;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
              v94 = v146;
              v93 = (v146 + v136);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v149, v147 + 1, 24);
              v93 = &v142;
              v94 = v146;
            }
          }

          v95 = &v94[24 * v147];
          v96 = *v93;
          *(v95 + 2) = v93[2];
          *v95 = v96;
          ++v147;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v145);
  if (v145[0])
  {
    v97 = result;
    mlir::InFlightDiagnostic::report(v145);
    result = v97;
  }

  if (v155 == 1)
  {
    v98 = result;
    if (v154 != &v155)
    {
      free(v154);
    }

    v99 = __p;
    if (__p)
    {
      v100 = v153;
      v101 = __p;
      if (v153 != __p)
      {
        do
        {
          v100 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v100 - 1);
        }

        while (v100 != v99);
        v101 = __p;
      }

      v153 = v99;
      operator delete(v101);
    }

    v102 = v150;
    if (v150)
    {
      v103 = v151;
      v104 = v150;
      if (v151 != v150)
      {
        do
        {
          v106 = *--v103;
          v105 = v106;
          *v103 = 0;
          if (v106)
          {
            operator delete[](v105);
          }
        }

        while (v103 != v102);
        v104 = v150;
      }

      v151 = v102;
      operator delete(v104);
    }

    result = v98;
    if (v146 != v149)
    {
      free(v146);
      return v98;
    }
  }

  return result;
}

uint64_t mlir::arith::BitcastOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v7 = a3[1];
  if (v6 == v7)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v40 = 257;
    (*(*a1 + 24))(v44, a1, a4, v39);
    if (v44[0])
    {
      v41 = 5;
      v42 = v6;
      v13 = &v41;
      v14 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = v45;
          v13 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v13 = &v41;
          v14 = v45;
        }
      }

      v15 = &v14[24 * v46];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v42 = " operands present, but expected ";
        v43 = 32;
        v18 = &v41;
        v19 = v45;
        if (v17 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v17 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v17 + 1, 24);
            v19 = v45;
            v18 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v17 + 1, 24);
            v18 = &v41;
            v19 = v45;
          }
        }

        v20 = &v19[24 * v46];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v22 = ++v46;
        if (v44[0])
        {
          v41 = 5;
          v42 = v7;
          v23 = &v41;
          v24 = v45;
          if (v22 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v22 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v22 + 1, 24);
              v24 = v45;
              v23 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v22 + 1, 24);
              v23 = &v41;
              v24 = v45;
            }
          }

          v25 = &v24[24 * v46];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          ++v46;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
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

      v27 = __p;
      if (__p)
      {
        v28 = v52;
        v29 = __p;
        if (v52 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v52 = v27;
        operator delete(v29);
      }

      v30 = v49;
      if (v49)
      {
        v31 = v50;
        v32 = v49;
        if (v50 != v49)
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
          v32 = v49;
        }

        v50 = v30;
        operator delete(v32);
      }

      if (v45 != v48)
      {
        free(v45);
      }
    }
  }

  return v12;
}

void mlir::arith::BitcastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  v23 = v25;
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v23, v24);
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
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++v10[4];
  }

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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
    *v17 = 28532;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "to", 2uLL);
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

  if (*(*this + 9))
  {
    v20 = *this - 16;
  }

  else
  {
    v20 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::arith::CeilDivSIOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::CeilDivUIOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 40), 0, 0);
  }

  return a1;
}

uint64_t mlir::arith::CmpFOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
    v75.var0 = "predicate";
    v75.var1 = 9;
    v36 = mlir::DictionaryAttr::get(&v58, v75);
    if (v36)
    {
      v37 = v36;
      if (!mlir::arith::CmpFPredicateAttr::classof(v36))
      {
        a3(v62, a4);
        if (v62[0])
        {
          v59 = 3;
          v61 = 54;
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

uint64_t mlir::arith::CmpFOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  v12 = mlir::Builder::getNamedAttr(&v20, "predicate", 9, v8);
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

unint64_t mlir::arith::CmpFOp::computePropertiesHash(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

unint64_t mlir::arith::CmpFOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 9)
  {
    if (a4 == 8 && *a3 == 0x6874616D74736166)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x7461636964657270 || *(a3 + 8) != 101)
  {
    return 0;
  }

  return a2[1];
}

uint64_t *mlir::arith::CmpFOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 9)
  {
    if (*a2 == 0x7461636964657270 && *(a2 + 8) == 101)
    {
      if (a4)
      {
        v5 = result;
        v7 = mlir::arith::CmpFPredicateAttr::classof(a4);
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

void mlir::arith::CmpFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "fastmath", 8, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "predicate", 9, v5);
  }
}

BOOL mlir::arith::CmpFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(v9, "predicate", 9, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1 || (mlir::arith::CmpFPredicateAttr::classof(a1) & 1) != 0)
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
        v30 = "' failed to satisfy constraint: allowed 64-bit signless integer cases: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15";
        v31 = 123;
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

BOOL mlir::arith::CmpFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpFPredicateAttr>(a1, v3 + 1);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::arith::CmpFOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpFPredicateAttr>(a1, v3 + 1);
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x10uLL);
    *v3 = 0;
    v3[1] = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::arith::CmpFOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpFPredicateAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::arith::CmpFPredicateAttr::classof(v36))
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::CmpFPredicateAttr]";
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

uint64_t mlir::arith::CmpFOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::arith::CmpFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v22[0] = a4;
  v22[1] = a5;
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

  v21 = (*(mlir::ValueRange::dereference_iterator(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext(&v21);
  v14 = mlir::IntegerType::get(Context, 1, 0);
  v20[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v21);
  v20[1] = v15;
  if (v20[0])
  {
    LOBYTE(v18) = 0;
    v19 = 0;
    v16 = mlir::ShapedType::cloneWith(v20, &v18, v14);
  }

  else
  {
    if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_12;
    }

    v16 = mlir::UnrankedTensorType::get(v14);
  }

  v14 = v16;
LABEL_12:
  **a11 = v14;
  return 1;
}

BOOL mlir::arith::CmpFOp::verifyInvariantsImpl(mlir::arith::CmpFOp *this)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    *&v26 = v2;
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(v4, "predicate", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v26) & 1) == 0)
    {
      return 0;
    }

    *&v26 = *this;
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v5, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v26) & 1) == 0 || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      return 0;
    }

    v6 = *(*this + 36) ? *this - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
    {
      return 0;
    }

    v25 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    Context = mlir::Attribute::getContext(&v25);
    v9 = mlir::IntegerType::get(Context, 1, 0);
    v23[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v25);
    v23[1] = v10;
    if (v23[0])
    {
      LOBYTE(v26) = 0;
      v27 = 0;
      v11 = mlir::ShapedType::cloneWith(v23, &v26, v9);
    }

    else
    {
      if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        goto LABEL_36;
      }

      v11 = mlir::UnrankedTensorType::get(v9);
    }

    v9 = v11;
LABEL_36:
    if (*(*this + 36))
    {
      v22 = *this - 16;
    }

    else
    {
      v22 = 0;
    }

    if (v9 == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v23[0] = "failed to verify that result type has i1 element type and same shape as operands";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, &v26);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
    return v12;
  }

  v23[0] = "requires attribute 'predicate'";
  v24 = 259;
  mlir::OpState::emitOpError(this, v23, &v26);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
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

    v13 = __p;
    if (__p)
    {
      v14 = v33;
      v15 = __p;
      if (v33 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v33 = v13;
      operator delete(v15);
    }

    v16 = v30;
    if (v30)
    {
      v17 = v31;
      v18 = v30;
      if (v31 != v30)
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
        v18 = v30;
      }

      v31 = v16;
      operator delete(v18);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v12;
}

uint64_t mlir::arith::CmpFOp::parse(uint64_t a1, void *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  memset(v85, 0, sizeof(v85));
  v86 = 0;
  v84[0] = v85;
  v84[1] = 1;
  memset(v82, 0, sizeof(v82));
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78.var1 = &v80;
  v79 = 1;
  AttrData = 0;
  v78.var0 = 0;
  v99[0] = v100;
  v99[1] = 0x400000000;
  v101 = 4;
  v4 = (*(*a1 + 40))(a1);
  v98[0] = xmmword_1E86D26B0;
  v98[1] = *&off_1E86D26C0;
  v98[2] = xmmword_1E86D26D0;
  v98[3] = *&off_1E86D26E0;
  *v94 = xmmword_1E86D2670;
  v95 = *&off_1E86D2680;
  *__p = xmmword_1E86D2690;
  *v97 = *&off_1E86D26A0;
  v93[2] = xmmword_1E86D2630;
  v93[3] = *&off_1E86D2640;
  v93[4] = xmmword_1E86D2650;
  v93[5] = *&off_1E86D2660;
  v91 = xmmword_1E86D25F0;
  *v92 = *&off_1E86D2600;
  v93[0] = xmmword_1E86D2610;
  v93[1] = *&off_1E86D2620;
  if ((*(*a1 + 424))(a1, &AttrData, &v91, 16))
  {
    v5.var0 = v78.var0;
    if (!v78.var0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v75[0] = 0;
    v49 = (*(*a1 + 32))(a1);
    NoneType = mlir::Builder::getNoneType(v49, v50);
    v52 = (*(*a1 + 472))(a1, v75, NoneType);
    if ((v52 & 0x100) == 0)
    {
      v87 = "expected string or keyword containing one of the following enum values for attribute 'predicate' [false, oeq, ogt, oge, olt, ole, one, ord, ueq, ugt, uge, ult, ule, une, uno, true]";
      v90 = 259;
      (*(*a1 + 24))(&v91, a1, v4, &v87);
      v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v91);
      if (v91)
      {
        mlir::InFlightDiagnostic::report(&v91);
      }

      if (BYTE8(v98[0]) != 1)
      {
        goto LABEL_124;
      }

      if (v97[1] != v98 + 8)
      {
        free(v97[1]);
      }

      v53 = __p[0];
      if (__p[0])
      {
        v54 = __p[1];
        v55 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p[0];
        }

        __p[1] = v53;
        operator delete(v55);
      }

      v56 = v94[1];
      if (!v94[1])
      {
        goto LABEL_122;
      }

      v57 = v95;
      v58 = v94[1];
      if (v95 == v94[1])
      {
LABEL_121:
        *&v95 = v56;
        operator delete(v58);
LABEL_122:
        if (v92[1] != v93 + 8)
        {
          free(v92[1]);
        }

        goto LABEL_124;
      }

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
LABEL_120:
      v58 = v94[1];
      goto LABEL_121;
    }

    if ((v52 & 1) == 0)
    {
      v48 = 0;
LABEL_124:
      if (v99[0] != v100)
      {
        free(v99[0]);
      }

      return v48;
    }

    mlir::NamedAttrList::append(v99, "predicate", 9, v75[0]);
    AttrData = mlir::OpaqueAttr::getAttrData(v75);
    v78.var0 = v5.var0;
    if (!v5.var0)
    {
      goto LABEL_9;
    }
  }

  v6 = mlir::arith::symbolizeCmpFPredicate(AttrData, v5);
  if ((v7 & 1) == 0)
  {
    v75[0] = "invalid ";
    v76 = 259;
    (*(*a1 + 24))(&v91, a1, v4, v75);
    if (v91)
    {
      LODWORD(v87) = 3;
      var0 = "predicate attribute specification: ";
      v89 = 36;
      v61 = &v87;
      v62 = v92[1];
      if (LODWORD(v93[0]) >= DWORD1(v93[0]))
      {
        if (v92[1] <= &v87 && v92[1] + 24 * LODWORD(v93[0]) > &v87)
        {
          v72 = &v87 - v92[1];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92[1], v93 + 8, LODWORD(v93[0]) + 1, 24);
          v62 = v92[1];
          v61 = (v92[1] + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92[1], v93 + 8, LODWORD(v93[0]) + 1, 24);
          v61 = &v87;
          v62 = v92[1];
        }
      }

      v63 = &v62[24 * LODWORD(v93[0])];
      v64 = *v61;
      *(v63 + 2) = v61[2];
      *v63 = v64;
      ++LODWORD(v93[0]);
      if (v91)
      {
        v90 = 261;
        v87 = AttrData;
        var0 = v78.var0;
        mlir::Diagnostic::operator<<(&v91 + 8, &v87);
        if (v91)
        {
          mlir::Diagnostic::operator<<(&v91 + 8, 34);
        }
      }
    }

    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v91);
    if (v91)
    {
      mlir::InFlightDiagnostic::report(&v91);
    }

    if ((BYTE8(v98[0]) & 1) == 0)
    {
      goto LABEL_124;
    }

    if (v97[1] != v98 + 8)
    {
      free(v97[1]);
    }

    v65 = __p[0];
    if (__p[0])
    {
      v66 = __p[1];
      v67 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
        }

        while (v66 != v65);
        v67 = __p[0];
      }

      __p[1] = v65;
      operator delete(v67);
    }

    v56 = v94[1];
    if (!v94[1])
    {
      goto LABEL_122;
    }

    v68 = v95;
    v58 = v94[1];
    if (v95 == v94[1])
    {
      goto LABEL_121;
    }

    do
    {
      v70 = *--v68;
      v69 = v70;
      *v68 = 0;
      if (v70)
      {
        operator delete[](v69);
      }
    }

    while (v68 != v56);
    goto LABEL_120;
  }

  v8 = v6;
  v9 = (*(*a1 + 32))(a1);
  v10 = mlir::IntegerType::get(*v9, 64, 0);
  v11 = mlir::IntegerAttr::get(v10, v8);
  v12 = a2[32];
  if (!v12)
  {
    v13 = operator new(0x10uLL);
    *v13 = 0;
    v13[1] = 0;
    a2[32] = v13;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = &v91;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = &v91;
    {
      mlir::arith::CmpFOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v12 = a2[32];
  }

  *(v12 + 8) = v11;
LABEL_9:
  if (v99[0] != v100)
  {
    free(v99[0]);
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v85, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v82, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v81, 0))
    {
      return 0;
    }

    if (v81)
    {
      v15 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(a2);
      *v15 = v81;
    }
  }

  v99[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v16 = a2[1];
  *&v91 = a1;
  *(&v91 + 1) = v99;
  v92[0] = a2;
  if (!mlir::arith::CmpFOp::verifyInherentAttrs(v16, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v91))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  *&v91 = 0;
  if (((*(*a1 + 536))(a1, &v91) & 1) == 0)
  {
    return 0;
  }

  v80 = v91;
  var1 = v78.var1;
  if (!v79)
  {
LABEL_126:
    *&v91 = getI1SameShape(*var1);
    mlir::OperationState::addTypes(a2, &v91, 1);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v84, &v78.var1, v14, (a2 + 2)))
    {
      return (*(*a1 + 728))(a1, v82, *v78.var1, a2 + 2) & 1;
    }

    return 0;
  }

  v18 = 8 * v79;
  v19 = v78.var1;
  while (1)
  {
    v87 = *v19;
    v20 = *(*v87 + 136);
    v21 = v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v22 = v21 || v20 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v23 = v22 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v24 = v23 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v25 = v24 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v26 = v25 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v27 = v26 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v28 = v27 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v29 = v28 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v30 = v29 || v20 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v31 = v30 || v20 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v32 = v31 || v20 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v33 = v32 || v20 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    if (!v33 && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v73 = v18;
      v74 = v19;
      if (!mlir::Type::hasTrait<mlir::ValueSemantics>(&v87))
      {
        break;
      }

      *&v91 = llvm::cast<mlir::ShapedType,mlir::Type>(&v87);
      *(&v91 + 1) = v42;
      isSplat = mlir::ElementsAttr::isSplat(&v91);
      v44 = mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_1::operator()(isSplat);
      v36 = &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
      v37 = &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
      v38 = &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
      v39 = &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
      v40 = &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
      v18 = v73;
      v19 = v74;
      v41 = &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
      if (!v44)
      {
        break;
      }
    }

    ++v19;
    v18 -= 8;
    if (!v18)
    {
      goto LABEL_126;
    }
  }

  v45 = (*(*a1 + 16))(a1, v36, v37, v38, v39, v40, v18, v41);
  v100[8] = 257;
  (*(*a1 + 24))(&v91, a1, v45, v99);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v91, "'lhs' must be floating-point-like, but got ");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v46, &v87);
  v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v91);
  return v48;
}

uint64_t mlir::arith::symbolizeCmpFPredicate(mlir::arith *this, StringRef a2)
{
  switch(a2.var0)
  {
    case 3uLL:
      if (*this == 25967 && *(this + 2) == 113)
      {
        return 1;
      }

      else if (*this == 26479 && *(this + 2) == 116)
      {
        return 2;
      }

      else if (*this == 26479 && *(this + 2) == 101)
      {
        return 3;
      }

      else if (*this == 27759 && *(this + 2) == 116)
      {
        return 4;
      }

      else if (*this == 27759 && *(this + 2) == 101)
      {
        return 5;
      }

      else if (*this == 28271 && *(this + 2) == 101)
      {
        return 6;
      }

      else if (*this == 29295 && *(this + 2) == 100)
      {
        return 7;
      }

      else if (*this == 25973 && *(this + 2) == 113)
      {
        return 8;
      }

      else if (*this == 26485 && *(this + 2) == 116)
      {
        return 9;
      }

      else if (*this == 26485 && *(this + 2) == 101)
      {
        return 10;
      }

      else if (*this == 27765 && *(this + 2) == 116)
      {
        return 11;
      }

      else if (*this == 27765 && *(this + 2) == 101)
      {
        return 12;
      }

      else if (*this == 28277 && *(this + 2) == 101)
      {
        return 13;
      }

      else
      {
        if (*this != 28277 || *(this + 2) != 111)
        {
          return 0;
        }

        return 14;
      }

    case 4uLL:
      if (*this == 1702195828)
      {
        return 15;
      }

      else
      {
        return 0;
      }

    case 5uLL:
      if (*this != 1936482662 || *(this + 4) != 101)
      {
        return 0;
      }

      return 0;
    default:
      return 0;
  }
}

uint64_t mlir::Type::hasTrait<mlir::ValueSemantics>(uint64_t **a1)
{
  v1 = **a1;
  {
    v7 = v1;
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps1();
    v1 = v7;
  }

  v2 = (v1 + 72);
  v3 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id;
  v4 = *(v1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

BOOL mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_1::operator()(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

__n128 mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(uint64_t a1, char *__s)
{
  if (*a1)
  {
    v4 = strlen(__s);
    v5 = a1;
    v6 = *(a1 + 24);
    v12 = 3;
    v13 = __s;
    v14 = v4;
    v7 = *(a1 + 32);
    v8 = &v12;
    if (v7 >= *(a1 + 36))
    {
      if (v6 <= &v12 && v6 + 24 * v7 > &v12)
      {
        v11 = &v12 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v7 + 1, 24);
        v5 = a1;
        v6 = *(a1 + 24);
        v8 = &v11[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v7 + 1, 24);
        v5 = a1;
        v6 = *(a1 + 24);
        v8 = &v12;
      }
    }

    v9 = (v6 + 24 * *(v5 + 32));
    result = *v8;
    v9[1].n128_u64[0] = v8[1].n128_u64[0];
    *v9 = result;
    ++*(v5 + 32);
  }

  return result;
}

void mlir::arith::CmpFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v42[4] = *MEMORY[0x1E69E9840];
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

  v40 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  v6 = 0;
  v7 = "false";
  v8 = 5;
  switch(mlir::IntegerAttr::getInt(&v40))
  {
    case 0:
      break;
    case 1:
      v6 = 0;
      v7 = "oeq";
      v8 = 3;
      break;
    case 2:
      v6 = 0;
      v7 = "ogt";
      v8 = 3;
      break;
    case 3:
      v6 = 0;
      v7 = "oge";
      v8 = 3;
      break;
    case 4:
      v6 = 0;
      v7 = "olt";
      v8 = 3;
      break;
    case 5:
      v6 = 0;
      v7 = "ole";
      v8 = 3;
      break;
    case 6:
      v6 = 0;
      v7 = "one";
      v8 = 3;
      break;
    case 7:
      v6 = 0;
      v7 = "ord";
      v8 = 3;
      break;
    case 8:
      v6 = 0;
      v7 = "ueq";
      v8 = 3;
      break;
    case 9:
      v6 = 0;
      v7 = "ugt";
      v8 = 3;
      break;
    case 10:
      v6 = 0;
      v7 = "uge";
      v8 = 3;
      break;
    case 11:
      v6 = 0;
      v7 = "ult";
      v8 = 3;
      break;
    case 12:
      v6 = 0;
      v7 = "ule";
      v8 = 3;
      break;
    case 13:
      v6 = 0;
      v7 = "une";
      v8 = 3;
      break;
    case 14:
      v6 = 0;
      v7 = "uno";
      v8 = 3;
      break;
    case 15:
      v6 = 0;
      v7 = "true";
      v8 = 4;
      break;
    default:
      v8 = 0;
      v7 = "";
      v6 = 1;
      break;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8 <= *(v9 + 24) - *(v9 + 32))
  {
    if ((v6 & 1) == 0)
    {
      v10 = v9;
      memcpy(*(v9 + 32), v7, v8);
      *(v10 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v9, v7, v8);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] == v12)
  {
    llvm::raw_ostream::write(v11, ",", 1uLL);
  }

  else
  {
    *v12 = 44;
    ++v11[4];
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v15 = (*(*a2 + 16))(a2);
  v16 = v15[4];
  if (v15[3] == v16)
  {
    llvm::raw_ostream::write(v15, ",", 1uLL);
  }

  else
  {
    *v16 = 44;
    ++v15[4];
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v19 != mlir::arith::FastMathFlagsAttr::get(Context, 0))
  {
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
    if (v23[3] - v24 > 7uLL)
    {
      *v24 = 0x6874616D74736166;
      v23[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v23, "fastmath", 8uLL);
    }

    v40 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = (*(*v25 + 80))(v25) + v25[4] - v25[2];
      mlir::arith::FastMathFlagsAttr::print(&v40, a2);
      if (v26 == (*(*v25 + 80))(v25) + v25[4] - v25[2])
      {
        (*(*a2 + 40))(a2, v40);
      }
    }
  }

  v40 = v42;
  v42[0] = "predicate";
  v42[1] = 9;
  v42[2] = "fastmath";
  v42[3] = 8;
  v41 = 0x200000002;
  v27 = mlir::Attribute::getContext((*this + 24));
  v28 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v28 && v28 == mlir::arith::FastMathFlagsAttr::get(v27, 0))
  {
    v29 = v41;
    if (v41 >= HIDWORD(v41))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v41 + 1, 16);
      v29 = v41;
    }

    v30 = v40 + 16 * v29;
    *v30 = "fastmath";
    v30[1] = 8;
    LODWORD(v41) = v41 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v32, v40, v41);
  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 32);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 32;
  }

  v35 = (*(*a2 + 16))(a2);
  v36 = v35[4];
  if (v35[3] == v36)
  {
    llvm::raw_ostream::write(v35, ":", 1uLL);
  }

  else
  {
    *v36 = 58;
    ++v35[4];
  }

  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (v38 >= *(v37 + 3))
  {
    llvm::raw_ostream::write(v37, 32);
  }

  else
  {
    *(v37 + 4) = v38 + 1;
    *v38 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v40 != v42)
  {
    free(v40);
  }
}

uint64_t mlir::arith::CmpIOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      v11 = &v41;
      v12 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v12 = v45;
          v11 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v11 = &v41;
          v12 = v45;
        }
      }

      v13 = &v12[24 * v46];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
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

    v15 = __p;
    if (__p)
    {
      v16 = v52;
      v17 = __p;
      if (v52 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v52 = v15;
      operator delete(v17);
    }

    v18 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v19 = v50;
    v20 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

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
    goto LABEL_47;
  }

  v56.var0 = "predicate";
  v56.var1 = 9;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (mlir::arith::CmpIPredicateAttr::classof(v8))
  {
    *a1 = v9;
    return 1;
  }

  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 54;
    v23 = &v41;
    v24 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v24 = v45;
        v23 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v23 = &v41;
        v24 = v45;
      }
    }

    v25 = &v24[24 * v46];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    ++v46;
    if (v44[0])
    {
      v27 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v28 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v28 = v45;
          v27 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = &v41;
          v28 = v45;
        }
      }

      v29 = &v28[24 * v46];
      v30 = *v27;
      *(v29 + 2) = *(v27 + 2);
      *v29 = v30;
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

    v31 = __p;
    if (__p)
    {
      v32 = v52;
      v33 = __p;
      if (v52 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v52 = v31;
      operator delete(v33);
    }

    v18 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v34 = v50;
    v20 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v18;
      operator delete(v20);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v36 = *--v34;
      v35 = v36;
      *v34 = 0;
      if (v36)
      {
        operator delete[](v35);
      }
    }

    while (v34 != v18);
LABEL_47:
    v20 = v49;
    goto LABEL_48;
  }

  return 0;
}