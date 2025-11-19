uint64_t mlir::complex::BitcastOp::fold(uint64_t a1)
{
  v1 = *(*(*a1 + 72) + 24);
  v2 = *(*a1 - 8) ^ *(v1 + 8);
  v3 = v1 | 4;
  if (v2 >= 8)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

BOOL mlir::complex::BitcastOp::verify(mlir::complex::BitcastOp *this)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v41 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (v41 == v40)
  {
    return 1;
  }

  if (!mlir::Type::isIntOrFloat(&v41) && *(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v38[0] = "operand must be int/float/complex";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v48;
        v7 = __p;
        if (v48 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v48 = v5;
        operator delete(v7);
      }

      v8 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v9 = v46;
      v10 = v45;
      if (v46 == v45)
      {
LABEL_82:
        v46 = v8;
        operator delete(v10);
LABEL_83:
        if (v43 != &v44)
        {
          free(v43);
        }

        return v2;
      }

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
LABEL_81:
      v10 = v45;
      goto LABEL_82;
    }

    return v2;
  }

  isIntOrFloat = mlir::Type::isIntOrFloat(&v40);
  v14 = v40;
  v15 = *(*v40 + 136);
  if (isIntOrFloat)
  {
    v16 = v41;
    v17 = *(*v41 + 136);
    if ((v17 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) != (v15 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
    {
      if (v15 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_65:
    v38[0] = "requires that either input or output has a complex type";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v48;
        v34 = __p;
        if (v48 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v48 = v32;
        operator delete(v34);
      }

      v8 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v35 = v46;
      v10 = v45;
      if (v46 == v45)
      {
        goto LABEL_82;
      }

      do
      {
        v37 = *--v35;
        v36 = v37;
        *v35 = 0;
        if (v37)
        {
          operator delete[](v36);
        }
      }

      while (v35 != v8);
      goto LABEL_81;
    }

    return v2;
  }

  if (v15 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v38[0] = "result must be int/float/complex";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, v42);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v48;
        v20 = __p;
        if (v48 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v48 = v18;
        operator delete(v20);
      }

      v8 = v45;
      if (!v45)
      {
        goto LABEL_83;
      }

      v21 = v46;
      v10 = v45;
      if (v46 == v45)
      {
        goto LABEL_82;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          operator delete[](v22);
        }
      }

      while (v21 != v8);
      goto LABEL_81;
    }

    return v2;
  }

  v16 = v41;
  if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    goto LABEL_65;
  }

LABEL_44:
  v40 = v16;
  v41 = v14;
  v16 = v14;
  v17 = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
LABEL_45:
  if (v17 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v24 = v16;
  }

  else
  {
    v24 = 0;
  }

  v38[0] = v24;
  v42[0] = mlir::AffineMapAttr::getValue(v38);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v42);
  if (mlir::Type::getIntOrFloatBitWidth(&v40) == 2 * IntOrFloatBitWidth)
  {
    return 1;
  }

  v38[0] = "casting bitwidths do not match";
  v39 = 259;
  mlir::OpState::emitOpError(this, v38, v42);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v48;
      v28 = __p;
      if (v48 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v48 = v26;
      operator delete(v28);
    }

    v8 = v45;
    if (!v45)
    {
      goto LABEL_83;
    }

    v29 = v46;
    v10 = v45;
    if (v46 == v45)
    {
      goto LABEL_82;
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

    while (v29 != v8);
    goto LABEL_81;
  }

  return v2;
}

void mlir::complex::BitcastOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v3 = a2;
  mlir::RewritePatternSet::addImpl<MergeComplexBitcast,mlir::MLIRContext *&>(a1, 0, 0, &v3);
  mlir::RewritePatternSet::addImpl<MergeArithBitcast,mlir::MLIRContext *&>(a1, 0, 0, &v3);
}

uint64_t mlir::complex::CreateOp::fold(uint64_t a1)
{
  v5 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v5);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ReOp,void>::id)
    {
      v3 = result;
      v5 = *(*(*a1 + 72) + 56);
      result = mlir::Value::getDefiningOp(&v5);
      if (result)
      {
        if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ImOp,void>::id)
        {
          v4 = *(*(v3 + 72) + 24);
          if (v4 == *(*(result + 72) + 24))
          {
            return v4 | 4;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t mlir::complex::ImOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v2 = 0;
    }

    v8 = v2;
    if (v3 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v4 = a1;
      mlir::ArrayAttr::getValue(&v8);
      a1 = v4;
      if (v5 == 2)
      {
        return *(mlir::ArrayAttr::getValue(&v8) + 8) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v7);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
    {
      return *(*(result + 72) + 56) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::complex::ImOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "complex.im", 10, v24, a2, 0, 0);
  *v4 = &unk_1F5AF2A38;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldComponentNeg<mlir::complex::ImOp, 1>]";
  v25 = 113;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
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

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

unint64_t mlir::complex::ReOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 48);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v2 = 0;
    }

    v8 = v2;
    if (v3 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v4 = a1;
      mlir::ArrayAttr::getValue(&v8);
      a1 = v4;
      if (v5 == 2)
      {
        return *mlir::ArrayAttr::getValue(&v8) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v7);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::complex::ReOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "complex.re", 10, v24, a2, 0, 0);
  *v4 = &unk_1F5AF2AD8;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldComponentNeg<mlir::complex::ReOp, 0>]";
  v25 = 113;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
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

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

uint64_t mlir::complex::AddOp::fold(uint64_t *a1)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v20);
  if (!DefiningOp)
  {
    v20 = *(*(*a1 + 72) + 56);
    v5 = mlir::Value::getDefiningOp(&v20);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_9:
    v6 = *a1;
    goto LABEL_10;
  }

  v3 = *a1;
  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::SubOp,void>::id)
  {
    v4 = *(DefiningOp + 72);
    if (*(*(v3 + 72) + 56) == *(v4 + 56))
    {
      goto LABEL_7;
    }
  }

  v20 = *(*(v3 + 72) + 56);
  v5 = mlir::Value::getDefiningOp(&v20);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = *a1;
  if (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::SubOp,void>::id || (v4 = *(v5 + 72), *(*(v6 + 72) + 24) != *(v4 + 56)))
  {
LABEL_10:
    v20 = *(*(v6 + 72) + 56);
    result = mlir::Value::getDefiningOp(&v20);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
    {
      return 0;
    }

    v17 = *(result + 16 * ((*(result + 44) >> 23) & 1) + 64);
    v16 = *mlir::ArrayAttr::getValue(&v17);
    Value = mlir::FloatAttr::getValue(&v16, &v20);
    v10 = v21[0];
    v11 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v12 = v21[1];
    if (v11 != v10)
    {
      v12 = &v20;
    }

    if ((*(v12 + 28) & 7) == 3)
    {
      v15 = *(mlir::ArrayAttr::getValue(&v17) + 8);
      mlir::FloatAttr::getValue(&v15, v18);
      v13 = v19[1];
      if (v11 != v19[0])
      {
        v13 = v18;
      }

      v14 = (v13[28] & 7) == 3;
      if (v11 != v19[0])
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v19);
        if (v11 == v21[0])
        {
          goto LABEL_20;
        }

LABEL_23:
        llvm::detail::IEEEFloat::~IEEEFloat(v21);
        if (!v14)
        {
          return 0;
        }

        goto LABEL_24;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
      if (v11 != v21[0])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
      if (v11 != v10)
      {
        goto LABEL_23;
      }
    }

LABEL_20:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    if (!v14)
    {
      return 0;
    }

LABEL_24:
    v7 = *(*(*a1 + 72) + 24);
    return v7 | 4;
  }

LABEL_7:
  v7 = *(v4 + 24);
  return v7 | 4;
}

uint64_t mlir::complex::SubOp::fold(uint64_t *a1)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (!DefiningOp)
  {
    v3 = *a1;
    goto LABEL_6;
  }

  v3 = *a1;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::AddOp,void>::id || (v4 = *(DefiningOp + 72), *(*(v3 + 72) + 56) != *(v4 + 56)))
  {
LABEL_6:
    v18 = *(*(v3 + 72) + 56);
    result = mlir::Value::getDefiningOp(&v18);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
    {
      return 0;
    }

    v15 = *(result + 16 * ((*(result + 44) >> 23) & 1) + 64);
    v14 = *mlir::ArrayAttr::getValue(&v15);
    Value = mlir::FloatAttr::getValue(&v14, &v18);
    v8 = v19[0];
    v9 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v10 = v19[1];
    if (v9 != v8)
    {
      v10 = &v18;
    }

    if ((*(v10 + 28) & 7) == 3)
    {
      v13 = *(mlir::ArrayAttr::getValue(&v15) + 8);
      mlir::FloatAttr::getValue(&v13, v16);
      v11 = v17[1];
      if (v9 != v17[0])
      {
        v11 = v16;
      }

      v12 = (v11[28] & 7) == 3;
      if (v9 != v17[0])
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v17);
        if (v9 == v19[0])
        {
          goto LABEL_16;
        }

LABEL_19:
        llvm::detail::IEEEFloat::~IEEEFloat(v19);
        if (!v12)
        {
          return 0;
        }

        goto LABEL_20;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
      if (v9 != v19[0])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = 0;
      if (v9 != v8)
      {
        goto LABEL_19;
      }
    }

LABEL_16:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v19);
    if (!v12)
    {
      return 0;
    }

LABEL_20:
    v5 = *(*(*a1 + 72) + 24);
    return v5 | 4;
  }

  v5 = *(v4 + 24);
  return v5 | 4;
}

uint64_t mlir::complex::NegOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::NegOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::LogOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ExpOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::ExpOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::LogOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::ConjOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v2);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ConjOp,void>::id)
    {
      return *(*(result + 72) + 24) | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::complex::MulOp::fold(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14 = *(*(*a1 + 72) + 56);
  result = mlir::Value::getDefiningOp(&v14);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
    {
      return 0;
    }

    v9 = *(result + 16 * ((*(result + 44) >> 23) & 1) + 64);
    v12 = *mlir::ArrayAttr::getValue(&v9);
    mlir::FloatAttr::getValue(&v12, &v14);
    v10 = *(mlir::ArrayAttr::getValue(&v9) + 8);
    Value = mlir::FloatAttr::getValue(&v10, &v12);
    v4 = v13[0];
    v5 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v6 = v13[1];
    if (v5 != v4)
    {
      v6 = &v12;
    }

    if ((*(v6 + 28) & 7) != 3)
    {
      goto LABEL_18;
    }

    if (v5 == v15[0])
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v15[0], 1);
      if (v5 != v15[0])
      {
LABEL_10:
        v7 = llvm::detail::IEEEFloat::compare(v15, v11);
        if (v5 != v11[0])
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v11, v15[0], 1);
      if (v5 != v15[0])
      {
        goto LABEL_10;
      }
    }

    v7 = llvm::detail::DoubleAPFloat::compare(v15, v11);
    if (v5 != v11[0])
    {
LABEL_11:
      llvm::detail::IEEEFloat::~IEEEFloat(v11);
      if (v7 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v11);
    if (v7 == 1)
    {
LABEL_12:
      v8 = *(*(*a1 + 72) + 24) | 4;
      if (v5 == v13[0])
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_18:
    v8 = 0;
    if (v5 == v13[0])
    {
LABEL_13:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v13);
      if (v5 == v15[0])
      {
LABEL_14:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
        return v8;
      }

LABEL_20:
      llvm::detail::IEEEFloat::~IEEEFloat(v15);
      return v8;
    }

LABEL_19:
    llvm::detail::IEEEFloat::~IEEEFloat(v13);
    if (v5 == v15[0])
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t mlir::complex::DivOp::fold(uint64_t a1, uint64_t a2)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v2 = *(*(a2 + 48) + 8);
  if (!v2)
  {
    return 0;
  }

  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v2 = 0;
  }

  v12 = v2;
  if (!v2)
  {
    return 0;
  }

  mlir::ArrayAttr::getValue(&v12);
  if (v4 != 2)
  {
    return 0;
  }

  v15 = *mlir::ArrayAttr::getValue(&v12);
  mlir::FloatAttr::getValue(&v15, v17);
  v13 = *(mlir::ArrayAttr::getValue(&v12) + 8);
  Value = mlir::FloatAttr::getValue(&v13, &v15);
  v6 = v16[0];
  v7 = llvm::APFloatBase::PPCDoubleDouble(Value);
  v8 = v16[1];
  if (v7 != v6)
  {
    v8 = &v15;
  }

  if ((*(v8 + 28) & 7) != 3)
  {
    goto LABEL_20;
  }

  if (v7 == v18[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v18[0], 1);
    if (v7 != v18[0])
    {
LABEL_11:
      v9 = llvm::detail::IEEEFloat::compare(v18, v14);
      if (v7 != v14[0])
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v14, v18[0], 1);
    if (v7 != v18[0])
    {
      goto LABEL_11;
    }
  }

  v9 = llvm::detail::DoubleAPFloat::compare(v18, v14);
  if (v7 != v14[0])
  {
LABEL_12:
    llvm::detail::IEEEFloat::~IEEEFloat(v14);
    if (v9 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v14);
  if (v9 == 1)
  {
LABEL_13:
    v10 = *(*(*a1 + 72) + 24) | 4;
    if (v7 == v16[0])
    {
      goto LABEL_14;
    }

LABEL_21:
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
    if (v7 == v18[0])
    {
      goto LABEL_15;
    }

LABEL_22:
    llvm::detail::IEEEFloat::~IEEEFloat(v18);
    return v10;
  }

LABEL_20:
  v10 = 0;
  if (v7 != v16[0])
  {
    goto LABEL_21;
  }

LABEL_14:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  if (v7 != v18[0])
  {
    goto LABEL_22;
  }

LABEL_15:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
  return v10;
}

BOOL mlir::complex::AbsOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::AbsOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::AbsOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = a4;
  v15[1] = a5;
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

  v14 = *(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = mlir::AffineMapAttr::getValue(&v14);
  return 1;
}

BOOL mlir::complex::AbsOp::verifyInvariantsImpl(mlir::complex::AbsOp *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v20[0] = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0 || (mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v20[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::AffineMapAttr::getValue(v20);
  if (*(*this + 36))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  if (Value == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v18 = "failed to verify that complex element type matches result type";
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

uint64_t mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    goto LABEL_2;
  }

  v34 = a3;
  v35 = a4;
  v36 = a1;
  v62[0] = a2;
  v37 = *(*mlir::AffineMapAttr::getValue(v62) + 136);
  if (v37 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return 1;
  }

  v25 = 1;
  if (v37 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    a1 = v36;
    a4 = v35;
    a3 = v34;
    if (v37 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
LABEL_2:
      v58 = 261;
      v57[0] = a3;
      v57[1] = a4;
      mlir::Operation::emitOpError(a1, v57, v62);
      if (v62[0])
      {
        v59 = 3;
        v60 = " #";
        v61 = 2;
        v7 = &v59;
        v8 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v53 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v8 = v63;
            v7 = (v63 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v7 = &v59;
            v8 = v63;
          }
        }

        v9 = &v8[24 * v64];
        v10 = *v7;
        *(v9 + 2) = *(v7 + 2);
        *v9 = v10;
        v11 = ++v64;
        if (v62[0])
        {
          v59 = 5;
          v60 = a5;
          v12 = &v59;
          v13 = v63;
          if (v11 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v11 > &v59)
            {
              v54 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v11 + 1, 24);
              v13 = v63;
              v12 = (v63 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v11 + 1, 24);
              v12 = &v59;
              v13 = v63;
            }
          }

          v14 = &v13[24 * v64];
          v15 = *v12;
          *(v14 + 2) = *(v12 + 2);
          *v14 = v15;
          v16 = ++v64;
          if (v62[0])
          {
            v59 = 3;
            v60 = " must be complex type with floating-point elements, but got ";
            v61 = 60;
            v17 = &v59;
            v18 = v63;
            if (v16 >= v65)
            {
              if (v63 <= &v59 && v63 + 24 * v16 > &v59)
              {
                v55 = &v59 - v63;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v16 + 1, 24);
                v18 = v63;
                v17 = (v63 + v55);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v16 + 1, 24);
                v17 = &v59;
                v18 = v63;
              }
            }

            v19 = &v18[24 * v64];
            v20 = *v17;
            *(v19 + 2) = *(v17 + 2);
            *v19 = v20;
            ++v64;
            if (v62[0])
            {
              v21 = &v59;
              mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
              v22 = v63;
              if (v64 >= v65)
              {
                if (v63 <= &v59 && v63 + 24 * v64 > &v59)
                {
                  v56 = &v59 - v63;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
                  v22 = v63;
                  v21 = (v63 + v56);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
                  v21 = &v59;
                  v22 = v63;
                }
              }

              v23 = &v22[24 * v64];
              v24 = *v21;
              *(v23 + 2) = *(v21 + 2);
              *v23 = v24;
              ++v64;
            }
          }
        }
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
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

        v26 = __p;
        if (__p)
        {
          v27 = v70;
          v28 = __p;
          if (v70 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v70 = v26;
          operator delete(v28);
        }

        v29 = v67;
        if (v67)
        {
          v30 = v68;
          v31 = v67;
          if (v68 != v67)
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
            v31 = v67;
          }

          v68 = v29;
          operator delete(v31);
        }

        if (v63 != v66)
        {
          free(v63);
        }
      }
    }
  }

  return v25;
}

BOOL mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v48 = 261;
    v47[0] = a3;
    v47[1] = a4;
    mlir::Operation::emitOpError(a1, v47, v52);
    if (v52[0])
    {
      v49 = 3;
      v50 = " #";
      v51 = 2;
      v14 = &v49;
      v15 = v53;
      if (v54 >= v55)
      {
        if (v53 <= &v49 && v53 + 24 * v54 > &v49)
        {
          v43 = &v49 - v53;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
          v15 = v53;
          v14 = (v53 + v43);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
          v14 = &v49;
          v15 = v53;
        }

        v17 = a2;
        v16 = a5;
      }

      else
      {
        v16 = a5;
        v17 = a2;
      }

      v18 = &v15[24 * v54];
      v19 = *v14;
      *(v18 + 2) = *(v14 + 2);
      *v18 = v19;
      v20 = ++v54;
      if (v52[0])
      {
        v49 = 5;
        v50 = v16;
        v21 = &v49;
        v22 = v53;
        if (v20 >= v55)
        {
          if (v53 <= &v49 && v53 + 24 * v20 > &v49)
          {
            v44 = &v49 - v53;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v20 + 1, 24);
            v22 = v53;
            v21 = (v53 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v20 + 1, 24);
            v21 = &v49;
            v22 = v53;
          }

          v17 = a2;
        }

        v23 = &v22[24 * v54];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        v25 = ++v54;
        if (v52[0])
        {
          v49 = 3;
          v50 = " must be floating-point, but got ";
          v51 = 33;
          v26 = &v49;
          v27 = v53;
          if (v25 >= v55)
          {
            if (v53 <= &v49 && v53 + 24 * v25 > &v49)
            {
              v45 = &v49 - v53;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v25 + 1, 24);
              v27 = v53;
              v26 = (v53 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v25 + 1, 24);
              v26 = &v49;
              v27 = v53;
            }

            v17 = a2;
          }

          v28 = &v27[24 * v54];
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          ++v54;
          if (v52[0])
          {
            v30 = &v49;
            mlir::DiagnosticArgument::DiagnosticArgument(&v49, v17);
            v31 = v53;
            if (v54 >= v55)
            {
              if (v53 <= &v49 && v53 + 24 * v54 > &v49)
              {
                v46 = &v49 - v53;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
                v31 = v53;
                v30 = (v53 + v46);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
                v30 = &v49;
                v31 = v53;
              }
            }

            v32 = &v31[24 * v54];
            v33 = *v30;
            *(v32 + 2) = *(v30 + 2);
            *v32 = v33;
            ++v54;
          }
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
    v34 = result;
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
      result = v34;
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
        result = v34;
      }

      v35 = __p;
      if (__p)
      {
        v36 = v60;
        v37 = __p;
        if (v60 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v60 = v35;
        operator delete(v37);
        result = v34;
      }

      v38 = v57;
      if (v57)
      {
        v39 = v58;
        v40 = v57;
        if (v58 != v57)
        {
          do
          {
            v42 = *--v39;
            v41 = v42;
            *v39 = 0;
            if (v42)
            {
              operator delete[](v41);
            }
          }

          while (v39 != v38);
          v40 = v57;
        }

        v58 = v38;
        operator delete(v40);
        result = v34;
      }

      if (v53 != v56)
      {
        free(v53);
        return v34;
      }
    }
  }

  return result;
}

uint64_t mlir::complex::AbsOp::parse(uint64_t a1, void *a2)
{
  v44[26] = *MEMORY[0x1E69E9840];
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v41[0] = v42;
  v41[1] = 1;
  v39 = 0;
  v40 = 0;
  v37 = &v39;
  v38 = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v42, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v40, 0))
  {
    return 0;
  }

  v5 = v40;
  if (v40)
  {
    v6 = a2[32];
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      a2[32] = v7;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v44;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v44;
      {
        mlir::complex::AbsOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = a2[32];
      v5 = v40;
    }

    *v6 = v5;
  }

LABEL_10:
  v34[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  v44[0] = a1;
  v44[1] = v34;
  v44[2] = a2;
  v9 = mlir::NamedAttrList::get((a2 + 14), **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AbsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v44) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v44[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v44))
  {
    return 0;
  }

  v39 = v44[0];
  v33 = v37;
  if (v38)
  {
    v10 = 8 * v38;
    v11 = v37;
    while (1)
    {
      v12 = *v11;
      v36 = v12;
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        break;
      }

      v44[0] = v12;
      v13 = *(*mlir::AffineMapAttr::getValue(v44) + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
      v15 = v14 || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
      v16 = v15 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
      v17 = v16 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
      v18 = v17 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      v19 = v18 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
      v20 = v19 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
      v21 = v20 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
      v22 = v21 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
      v23 = v22 || v13 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
      v24 = v23 || v13 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
      v25 = v24 || v13 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
      v26 = v25 || v13 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
      v27 = v26 || v13 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
      if (!v27 && v13 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        break;
      }

      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_68;
      }
    }

    v28 = (*(*a1 + 16))(a1);
    v35 = 257;
    (*(*a1 + 24))(v44, a1, v28, v34);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, "'complex' must be complex type with floating-point elements, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v29, &v36);
    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v44);
    return v31;
  }

  else
  {
LABEL_68:
    v34[0] = *v33;
    v44[0] = mlir::AffineMapAttr::getValue(v34);
    mlir::OperationState::addTypes(a2, v44, 1);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v41, &v37, v4, (a2 + 2)) & 1;
  }
}

void mlir::complex::AbsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v29[4] = *MEMORY[0x1E69E9840];
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

    v27 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v12 = (*(*a2 + 16))(a2);
      v13 = (*(*v12 + 80))(v12) + v12[4] - v12[2];
      mlir::arith::FastMathFlagsAttr::print(&v27, a2);
      if (v13 == (*(*v12 + 80))(v12) + v12[4] - v12[2])
      {
        (*(*a2 + 40))(a2, v27);
      }
    }
  }

  v27 = v29;
  v29[0] = "fastmath";
  v29[1] = 8;
  v28 = 0x200000001;
  v14 = mlir::Attribute::getContext((*this + 24));
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(v14, 0))
  {
    v16 = v28;
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 16);
      v16 = v28;
    }

    v17 = v27 + 16 * v16;
    *v17 = "fastmath";
    v17[1] = 8;
    LODWORD(v28) = v28 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v19, v27, v28);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v27 != v29)
  {
    free(v27);
  }
}

BOOL mlir::complex::AddOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::AddOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::AddOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::complex::AddOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::AddOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::complex::AddOp::verifyInvariantsImpl(mlir::complex::AddOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
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
  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::complex::AddOp::parse(uint64_t a1, void *a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(a2);
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
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

BOOL mlir::complex::AngleOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::AngleOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::AngleOp::parse(uint64_t a1, void *a2)
{
  v44[26] = *MEMORY[0x1E69E9840];
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v41[0] = v42;
  v41[1] = 1;
  v39 = 0;
  v40 = 0;
  v37 = &v39;
  v38 = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v42, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v40, 0))
  {
    return 0;
  }

  v5 = v40;
  if (v40)
  {
    v6 = a2[32];
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      a2[32] = v7;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v44;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v44;
      {
        mlir::complex::AngleOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = a2[32];
      v5 = v40;
    }

    *v6 = v5;
  }

LABEL_10:
  v34[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  v44[0] = a1;
  v44[1] = v34;
  v44[2] = a2;
  v9 = mlir::NamedAttrList::get((a2 + 14), **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AngleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v44) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v44[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v44))
  {
    return 0;
  }

  v39 = v44[0];
  v33 = v37;
  if (v38)
  {
    v10 = 8 * v38;
    v11 = v37;
    while (1)
    {
      v12 = *v11;
      v36 = v12;
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        break;
      }

      v44[0] = v12;
      v13 = *(*mlir::AffineMapAttr::getValue(v44) + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
      v15 = v14 || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
      v16 = v15 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
      v17 = v16 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
      v18 = v17 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      v19 = v18 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
      v20 = v19 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
      v21 = v20 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
      v22 = v21 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
      v23 = v22 || v13 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
      v24 = v23 || v13 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
      v25 = v24 || v13 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
      v26 = v25 || v13 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
      v27 = v26 || v13 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
      if (!v27 && v13 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        break;
      }

      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_68;
      }
    }

    v28 = (*(*a1 + 16))(a1);
    v35 = 257;
    (*(*a1 + 24))(v44, a1, v28, v34);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, "'complex' must be complex type with floating-point elements, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v29, &v36);
    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v44);
    return v31;
  }

  else
  {
LABEL_68:
    v34[0] = *v33;
    v44[0] = mlir::AffineMapAttr::getValue(v34);
    mlir::OperationState::addTypes(a2, v44, 1);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v41, &v37, v4, (a2 + 2)) & 1;
  }
}

BOOL mlir::complex::Atan2Op::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::Atan2Op::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::complex::Atan2Op::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::complex::Atan2Op::parse(uint64_t a1, void *a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>(a2);
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
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::Atan2Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

uint64_t mlir::complex::BitcastOp::verifyInvariantsImpl(mlir::complex::BitcastOp *this)
{
  if (*(*this + 36))
  {
    v1 = *this - 16;
  }

  else
  {
    v1 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v1, 0);
  return 1;
}

uint64_t mlir::complex::BitcastOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::complex::ConjOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::ConjOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::ConjOp::verifyInvariantsImpl(mlir::complex::ConjOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
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
  return mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::complex::ConjOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::ConjOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ConjOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

uint64_t mlir::complex::ConstantOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

void *mlir::complex::ConstantOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

uint64_t mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: array attribute";
        v29 = 47;
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

uint64_t mlir::complex::ConstantOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::ConstantOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ArrayAttr]";
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

void mlir::complex::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v11;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v10;
    {
      mlir::complex::ConstantOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

BOOL mlir::complex::ConstantOp::verifyInvariantsImpl(mlir::complex::ConstantOp *this)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v53[0] = v2;
    if ((mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v53) & 1) == 0)
    {
      return 0;
    }

    v4 = *(*this + 36) ? *this - 16 : 0;
    v5 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      return 1;
    }

    v6 = *this;
    v49 = 261;
    v48[0] = "result";
    v48[1] = 6;
    mlir::Operation::emitOpError(v6, v48, v53);
    if (v53[0])
    {
      v50 = 3;
      v51 = " #";
      v52 = 2;
      v7 = &v50;
      v8 = v54;
      if (v55 >= v56)
      {
        if (v54 <= &v50 && v54 + 24 * v55 > &v50)
        {
          v44 = &v50 - v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
          v8 = v54;
          v7 = (v54 + v44);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
          v7 = &v50;
          v8 = v54;
        }
      }

      v9 = &v8[24 * v55];
      v10 = *v7;
      *(v9 + 2) = *(v7 + 2);
      *v9 = v10;
      v11 = ++v55;
      if (v53[0])
      {
        v50 = 5;
        v51 = 0;
        v12 = &v50;
        v13 = v54;
        if (v11 >= v56)
        {
          if (v54 <= &v50 && v54 + 24 * v11 > &v50)
          {
            v45 = &v50 - v54;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v11 + 1, 24);
            v13 = v54;
            v12 = (v54 + v45);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v11 + 1, 24);
            v12 = &v50;
            v13 = v54;
          }
        }

        v14 = &v13[24 * v55];
        v15 = *v12;
        *(v14 + 2) = *(v12 + 2);
        *v14 = v15;
        v16 = ++v55;
        if (v53[0])
        {
          v50 = 3;
          v51 = " must be complex-type, but got ";
          v52 = 31;
          v17 = &v50;
          v18 = v54;
          if (v16 >= v56)
          {
            if (v54 <= &v50 && v54 + 24 * v16 > &v50)
            {
              v46 = &v50 - v54;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v16 + 1, 24);
              v18 = v54;
              v17 = (v54 + v46);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v16 + 1, 24);
              v17 = &v50;
              v18 = v54;
            }
          }

          v19 = &v18[24 * v55];
          v20 = *v17;
          *(v19 + 2) = *(v17 + 2);
          *v19 = v20;
          ++v55;
          if (v53[0])
          {
            v21 = &v50;
            mlir::DiagnosticArgument::DiagnosticArgument(&v50, v5);
            v22 = v54;
            if (v55 >= v56)
            {
              if (v54 <= &v50 && v54 + 24 * v55 > &v50)
              {
                v47 = &v50 - v54;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
                v22 = v54;
                v21 = (v54 + v47);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
                v21 = &v50;
                v22 = v54;
              }
            }

            v23 = &v22[24 * v55];
            v24 = *v21;
            *(v23 + 2) = *(v21 + 2);
            *v23 = v24;
            ++v55;
          }
        }
      }
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v61;
        v28 = __p;
        if (v61 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v61 = v26;
        operator delete(v28);
      }

      v29 = v58;
      if (v58)
      {
        v30 = v59;
        v31 = v58;
        if (v59 != v58)
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
          v31 = v58;
        }

        v59 = v29;
        operator delete(v31);
      }

      if (v54 != v57)
      {
        free(v54);
      }
    }

    return v25;
  }

  else
  {
    v48[0] = "requires attribute 'value'";
    v49 = 259;
    mlir::OpState::emitOpError(this, v48, v53);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v61;
        v37 = __p;
        if (v61 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v61 = v35;
        operator delete(v37);
      }

      v38 = v58;
      if (v58)
      {
        v39 = v59;
        v40 = v58;
        if (v59 != v58)
        {
          do
          {
            v42 = *--v39;
            v41 = v42;
            *v39 = 0;
            if (v42)
            {
              operator delete[](v41);
            }
          }

          while (v39 != v38);
          v40 = v58;
        }

        v59 = v38;
        operator delete(v40);
      }

      if (v54 != v57)
      {
        free(v54);
      }
    }
  }

  return v34;
}

uint64_t mlir::complex::ConstantOp::parse(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v17, v6))
  {
    return 0;
  }

  v7 = v17;
  if (v17)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      v9 = operator new(8uLL);
      *v9 = 0;
      *(a2 + 256) = v9;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v15;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v15;
      {
        mlir::complex::ConstantOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = *(a2 + 256);
      v7 = v17;
    }

    *v8 = v7;
  }

  v16 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v15[0] = a1;
  v15[1] = &v16;
  v15[2] = a2;
  v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
  if (v11)
  {
    if ((mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(v11, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v15[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v15))
  {
    return 0;
  }

  v12 = v15[0];
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v13 + 1, 8);
    LODWORD(v13) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v13) = v12;
  ++*(a2 + 72);
  return 1;
}

void mlir::complex::ConstantOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
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
  v17 = v19;
  v19[0] = "value";
  v19[1] = 5;
  v18 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v17, v18);
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

  if (*(*this + 9))
  {
    v14 = *this - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17 != v19)
  {
    free(v17);
  }
}

BOOL mlir::complex::CosOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::CosOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::CosOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::CosOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::CosOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::CosOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::CosOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::CosOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::CosOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::CosOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::CosOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::CosOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::CosOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::CosOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::CosOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::CreateOp::verifyInvariantsImpl(mlir::complex::CreateOp *this)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::complex::__mlir_ods_local_type_constraint_ComplexOps2(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*(*(*this + 72) + 56) + 8) ^ *(*(*(*this + 72) + 24) + 8)) >= 8)
  {
    v30[0] = "failed to verify that all of {real, imaginary} have same type";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, &v32);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
    v14 = result;
    if (v32)
    {
      mlir::InFlightDiagnostic::report(&v32);
      result = v14;
    }

    if (v41 != 1)
    {
      return result;
    }

    if (v40 != &v41)
    {
      free(v40);
      result = v14;
    }

    v15 = __p;
    if (__p)
    {
      v16 = v39;
      v17 = __p;
      if (v39 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v39 = v15;
      operator delete(v17);
      result = v14;
    }

    v18 = v36;
    if (!v36)
    {
      goto LABEL_53;
    }

    v19 = v37;
    v20 = v36;
    if (v37 == v36)
    {
      goto LABEL_52;
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
    goto LABEL_51;
  }

  v5 = *(v4 + 36);
  v6 = v4 - 16;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v32 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::AffineMapAttr::getValue(&v32);
  v9 = *this;
  if (Value == (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v10 = *(v9 + 36);
    v11 = v9 - 16;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v32 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (mlir::AffineMapAttr::getValue(&v32) == (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v30[0] = "failed to verify that complex element type matches imaginary operand type";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, &v32);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
    if (v32)
    {
      v29 = result;
      mlir::InFlightDiagnostic::report(&v32);
      result = v29;
    }

    if (v41 == 1)
    {
      v14 = result;
      mlir::Diagnostic::~Diagnostic(&v33);
      return v14;
    }

    return result;
  }

  v30[0] = "failed to verify that complex element type matches real operand type";
  v31 = 259;
  mlir::OpState::emitOpError(this, v30, &v32);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  v14 = result;
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
    result = v14;
  }

  if (v41 != 1)
  {
    return result;
  }

  if (v40 != &v41)
  {
    free(v40);
    result = v14;
  }

  v23 = __p;
  if (__p)
  {
    v24 = v39;
    v25 = __p;
    if (v39 != __p)
    {
      do
      {
        v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
      }

      while (v24 != v23);
      v25 = __p;
    }

    v39 = v23;
    operator delete(v25);
    result = v14;
  }

  v18 = v36;
  if (v36)
  {
    v26 = v37;
    v20 = v36;
    if (v37 == v36)
    {
      goto LABEL_52;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        operator delete[](v27);
      }
    }

    while (v26 != v18);
LABEL_51:
    v20 = v36;
LABEL_52:
    v37 = v18;
    operator delete(v20);
    result = v14;
  }

LABEL_53:
  if (v34 != &v35)
  {
    free(v34);
    return v14;
  }

  return result;
}

uint64_t mlir::complex::CreateOp::parse(uint64_t a1, uint64_t a2)
{
  v19[26] = *MEMORY[0x1E69E9840];
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
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

  v19[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v19))
  {
    return 0;
  }

  v13 = v19[0];
  v14 = v19[0];
  if (*(*v19[0] + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v9 = *(*mlir::AffineMapAttr::getValue(v19) + 136), v9 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) && v9 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v4 = (*(*a1 + 16))(a1);
    v12[16] = 257;
    (*(*a1 + 24))(v19, a1, v4, v12);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v19, "'complex' must be complex type with floating-point elements, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v5, &v13);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return v7;
  }

  mlir::OperationState::addTypes(a2, &v14, 1);
  v19[0] = v14;
  Value = mlir::AffineMapAttr::getValue(v19);
  if (((*(*a1 + 728))(a1, v17, Value, a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v19[0] = v14;
  v11 = mlir::AffineMapAttr::getValue(v19);
  return (*(*a1 + 728))(a1, v15, v11, a2 + 16) & 1;
}

BOOL mlir::complex::DivOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::DivOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::DivOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::DivOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::DivOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::DivOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::DivOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::complex::DivOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::DivOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::complex::DivOp::parse(uint64_t a1, void *a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>(a2);
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
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::DivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

uint64_t mlir::complex::EqualOp::inferReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
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

  v15 = a1;
  **a11 = mlir::Builder::getIntegerType(&v15, 1);
  return 1;
}

BOOL mlir::complex::EqualOp::verifyInvariantsImpl(mlir::complex::EqualOp *this)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::complex::__mlir_ods_local_type_constraint_ComplexOps1(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!mlir::complex::__mlir_ods_local_type_constraint_ComplexOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  if ((*(*(*(*this + 72) + 56) + 8) ^ *(*(*(*this + 72) + 24) + 8)) < 8)
  {
    return 1;
  }

  v14 = "failed to verify that all of {lhs, rhs} have same type";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v5 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v5;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v5;
    }

    v6 = __p;
    if (__p)
    {
      v7 = v22;
      v8 = __p;
      if (v22 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v22 = v6;
      operator delete(v8);
      result = v5;
    }

    v9 = v19;
    if (v19)
    {
      v10 = v20;
      v11 = v19;
      if (v20 != v19)
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
        v11 = v19;
      }

      v20 = v9;
      operator delete(v11);
      result = v5;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v5;
    }
  }

  return result;
}

BOOL mlir::complex::__mlir_ods_local_type_constraint_ComplexOps5(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v9 = 1;
  if (!mlir::Type::isSignlessInteger(&v43, 1))
  {
    v42 = 261;
    v41[0] = a3;
    v41[1] = a4;
    mlir::Operation::emitOpError(a1, v41, v47);
    if (v47[0])
    {
      v44 = 3;
      v45 = " #";
      v46 = 2;
      v10 = &v44;
      v11 = v48;
      if (v49 >= v50)
      {
        if (v48 <= &v44 && v48 + 24 * v49 > &v44)
        {
          v37 = &v44 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v11 = v48;
          v10 = (v48 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
          v10 = &v44;
          v11 = v48;
        }
      }

      v12 = &v11[24 * v49];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v49;
      if (v47[0])
      {
        v44 = 5;
        v45 = a5;
        v15 = &v44;
        v16 = v48;
        if (v14 >= v50)
        {
          if (v48 <= &v44 && v48 + 24 * v14 > &v44)
          {
            v38 = &v44 - v48;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v14 + 1, 24);
            v16 = v48;
            v15 = (v48 + v38);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v14 + 1, 24);
            v15 = &v44;
            v16 = v48;
          }
        }

        v17 = &v16[24 * v49];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        v19 = ++v49;
        if (v47[0])
        {
          v44 = 3;
          v45 = " must be 1-bit signless integer, but got ";
          v46 = 41;
          v20 = &v44;
          v21 = v48;
          if (v19 >= v50)
          {
            if (v48 <= &v44 && v48 + 24 * v19 > &v44)
            {
              v39 = &v44 - v48;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v19 + 1, 24);
              v21 = v48;
              v20 = (v48 + v39);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v19 + 1, 24);
              v20 = &v44;
              v21 = v48;
            }
          }

          v22 = &v21[24 * v49];
          v23 = *v20;
          *(v22 + 2) = *(v20 + 2);
          *v22 = v23;
          ++v49;
          if (v47[0])
          {
            v24 = &v44;
            mlir::DiagnosticArgument::DiagnosticArgument(&v44, v43);
            v25 = v48;
            if (v49 >= v50)
            {
              if (v48 <= &v44 && v48 + 24 * v49 > &v44)
              {
                v40 = &v44 - v48;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
                v25 = v48;
                v24 = (v48 + v40);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
                v24 = &v44;
                v25 = v48;
              }
            }

            v26 = &v25[24 * v49];
            v27 = *v24;
            *(v26 + 2) = *(v24 + 2);
            *v26 = v27;
            ++v49;
          }
        }
      }
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
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

      v28 = __p;
      if (__p)
      {
        v29 = v55;
        v30 = __p;
        if (v55 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v55 = v28;
        operator delete(v30);
      }

      v31 = v52;
      if (v52)
      {
        v32 = v53;
        v33 = v52;
        if (v53 != v52)
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
          v33 = v52;
        }

        v53 = v31;
        operator delete(v33);
      }

      if (v48 != v51)
      {
        free(v48);
      }
    }
  }

  return v9;
}

uint64_t mlir::complex::EqualOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v13, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v10, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (IntegerType = 0, mlir::AsmParser::parseType<mlir::ComplexType>(a1, &IntegerType)) && (v9 = IntegerType, v5 = (*(*a1 + 32))(a1), IntegerType = mlir::Builder::getIntegerType(v5, 1), mlir::OperationState::addTypes(a2, &IntegerType, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v8, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v10, *v8[0], a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::complex::ExpOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::ExpOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::ExpOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::ExpOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ExpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::Expm1Op::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::Expm1Op::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::Expm1Op::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::Expm1Op::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::Expm1Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::ImOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::ImOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::ImOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::ImOp::parse(uint64_t a1, void *a2)
{
  v44[26] = *MEMORY[0x1E69E9840];
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v41[0] = v42;
  v41[1] = 1;
  v39 = 0;
  v40 = 0;
  v37 = &v39;
  v38 = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v42, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v40, 0))
  {
    return 0;
  }

  v5 = v40;
  if (v40)
  {
    v6 = a2[32];
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      a2[32] = v7;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v44;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v44;
      {
        mlir::complex::ImOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::ImOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = a2[32];
      v5 = v40;
    }

    *v6 = v5;
  }

LABEL_10:
  v34[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  v44[0] = a1;
  v44[1] = v34;
  v44[2] = a2;
  v9 = mlir::NamedAttrList::get((a2 + 14), **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ImOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v44) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v44[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v44))
  {
    return 0;
  }

  v39 = v44[0];
  v33 = v37;
  if (v38)
  {
    v10 = 8 * v38;
    v11 = v37;
    while (1)
    {
      v12 = *v11;
      v36 = v12;
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        break;
      }

      v44[0] = v12;
      v13 = *(*mlir::AffineMapAttr::getValue(v44) + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
      v15 = v14 || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
      v16 = v15 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
      v17 = v16 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
      v18 = v17 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      v19 = v18 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
      v20 = v19 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
      v21 = v20 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
      v22 = v21 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
      v23 = v22 || v13 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
      v24 = v23 || v13 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
      v25 = v24 || v13 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
      v26 = v25 || v13 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
      v27 = v26 || v13 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
      if (!v27 && v13 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        break;
      }

      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_68;
      }
    }

    v28 = (*(*a1 + 16))(a1);
    v35 = 257;
    (*(*a1 + 24))(v44, a1, v28, v34);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, "'complex' must be complex type with floating-point elements, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v29, &v36);
    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v44);
    return v31;
  }

  else
  {
LABEL_68:
    v34[0] = *v33;
    v44[0] = mlir::AffineMapAttr::getValue(v34);
    mlir::OperationState::addTypes(a2, v44, 1);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v41, &v37, v4, (a2 + 2)) & 1;
  }
}

BOOL mlir::complex::Log1pOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::Log1pOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::Log1pOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::Log1pOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::Log1pOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::Log1pOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::LogOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::LogOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::LogOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::LogOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::LogOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::LogOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::LogOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::LogOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::LogOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::LogOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::LogOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::LogOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::LogOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::LogOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::LogOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::MulOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::MulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::MulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::MulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::MulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::MulOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::MulOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::MulOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::MulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::MulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::MulOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::MulOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::complex::MulOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::MulOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::complex::MulOp::parse(uint64_t a1, void *a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::MulOpGenericAdaptorBase::Properties>(a2);
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
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::MulOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

BOOL mlir::complex::NegOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::NegOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::NegOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::NegOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::NegOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::NegOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::NegOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::NegOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::NegOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::NegOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::NegOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::NegOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::NegOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::NegOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::NegOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

uint64_t mlir::complex::NotEqualOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v13, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v10, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (IntegerType = 0, mlir::AsmParser::parseType<mlir::ComplexType>(a1, &IntegerType)) && (v9 = IntegerType, v5 = (*(*a1 + 32))(a1), IntegerType = mlir::Builder::getIntegerType(v5, 1), mlir::OperationState::addTypes(a2, &IntegerType, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v8, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v10, *v8[0], a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::complex::PowOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::PowOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::PowOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::PowOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::PowOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::PowOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::PowOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::PowOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::PowOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::PowOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::PowOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::PowOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::complex::PowOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::PowOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::complex::PowOp::parse(uint64_t a1, void *a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::PowOpGenericAdaptorBase::Properties>(a2);
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
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::PowOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

BOOL mlir::complex::ReOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ReOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ReOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ReOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ReOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::ReOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::ReOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::ReOp::parse(uint64_t a1, void *a2)
{
  v44[26] = *MEMORY[0x1E69E9840];
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v41[0] = v42;
  v41[1] = 1;
  v39 = 0;
  v40 = 0;
  v37 = &v39;
  v38 = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v42, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v40, 0))
  {
    return 0;
  }

  v5 = v40;
  if (v40)
  {
    v6 = a2[32];
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      a2[32] = v7;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ReOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ReOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v44;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ReOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ReOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v44;
      {
        mlir::complex::ReOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::ReOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = a2[32];
      v5 = v40;
    }

    *v6 = v5;
  }

LABEL_10:
  v34[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  v44[0] = a1;
  v44[1] = v34;
  v44[2] = a2;
  v9 = mlir::NamedAttrList::get((a2 + 14), **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ReOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v44) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v44[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v44))
  {
    return 0;
  }

  v39 = v44[0];
  v33 = v37;
  if (v38)
  {
    v10 = 8 * v38;
    v11 = v37;
    while (1)
    {
      v12 = *v11;
      v36 = v12;
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        break;
      }

      v44[0] = v12;
      v13 = *(*mlir::AffineMapAttr::getValue(v44) + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
      v15 = v14 || v13 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
      v16 = v15 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
      v17 = v16 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
      v18 = v17 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      v19 = v18 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
      v20 = v19 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
      v21 = v20 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
      v22 = v21 || v13 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
      v23 = v22 || v13 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
      v24 = v23 || v13 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
      v25 = v24 || v13 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
      v26 = v25 || v13 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
      v27 = v26 || v13 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
      if (!v27 && v13 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v13 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        break;
      }

      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_68;
      }
    }

    v28 = (*(*a1 + 16))(a1);
    v35 = 257;
    (*(*a1 + 24))(v44, a1, v28, v34);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, "'complex' must be complex type with floating-point elements, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v29, &v36);
    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v44);
    return v31;
  }

  else
  {
LABEL_68:
    v34[0] = *v33;
    v44[0] = mlir::AffineMapAttr::getValue(v34);
    mlir::OperationState::addTypes(a2, v44, 1);
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v41, &v37, v4, (a2 + 2)) & 1;
  }
}

BOOL mlir::complex::RsqrtOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::RsqrtOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::RsqrtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::RsqrtOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::RsqrtOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::RsqrtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::SignOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SignOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SignOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SignOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SignOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::SignOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::SignOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::SignOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SignOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SignOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SignOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SignOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::SignOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::SignOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::SignOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::SinOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::SinOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::SinOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::SinOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::SinOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::SinOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::SinOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::SqrtOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::SqrtOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::SqrtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::SqrtOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::SqrtOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::SqrtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::SubOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SubOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SubOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SubOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SubOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::SubOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::SubOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::complex::detail::SubOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(8uLL);
    *v3 = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SubOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SubOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::SubOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::SubOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::complex::SubOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::complex::detail::SubOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

uint64_t mlir::complex::SubOp::parse(uint64_t a1, void *a2)
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
      v4 = mlir::OperationState::getOrAddProperties<mlir::complex::detail::SubOpGenericAdaptorBase::Properties>(a2);
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
    if (!v6 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v6, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::SubOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)) && ((*(*a1 + 104))(a1))
    {
      v9 = 0;
      if (mlir::AsmParser::parseType<mlir::ComplexType>(a1, &v9))
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

BOOL mlir::complex::TanOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::TanOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::TanOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::TanOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::TanOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::TanOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::TanOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::TanOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::TanOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::TanOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::TanOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

BOOL mlir::complex::TanhOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::complex::TanhOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256));
}

uint64_t mlir::complex::TanhOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 408))(a1, "fastmath", 8) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v17, 0))
  {
    return 0;
  }

  v5 = v17;
  if (v17)
  {
    v6 = *(a2 + 256);
    if (!v6)
    {
      v7 = operator new(8uLL);
      *v7 = 0;
      *(a2 + 256) = v7;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = v13;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = v13;
      {
        mlir::complex::TanhOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::complex::detail::TanhOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v6 = *(a2 + 256);
      v5 = v17;
    }

    *v6 = v5;
  }

LABEL_10:
  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v9 = mlir::NamedAttrList::get(a2 + 112, **(v8 + 96));
  if (v9)
  {
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v9, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::TanhOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::ComplexType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  v10 = v15[0];
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = *v10;
  ++*(a2 + 72);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, a2 + 16) & 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void mlir::RewritePatternSet::addImpl<MergeComplexBitcast,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "complex.bitcast", 15, v31, v9, 0, 0);
  *v8 = &unk_1F5AF28F8;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = MergeComplexBitcast]";
    v32 = 69;
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

void mlir::RewritePatternSet::addImpl<MergeArithBitcast,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "arith.bitcast", 13, v31, v9, 0, 0);
  *v8 = &unk_1F5AF2998;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = MergeArithBitcast]";
    v32 = 67;
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

void MergeComplexBitcast::~MergeComplexBitcast(MergeComplexBitcast *this)
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

uint64_t MergeComplexBitcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v12);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::BitcastOp,void>::id)
  {
    v7 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v8 = *(*(DefiningOp + 72) + 24);
    }

    else
    {
      v8 = *(*(DefiningOp + 72) + 24);
      if (*(*(*(v8 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v11 = *(*(DefiningOp + 72) + 24);
        v12 = v7;
        v9 = mlir::OpBuilder::create<mlir::arith::BitcastOp,mlir::Type,mlir::Value>((a3 + 8), *(a2 + 24), &v12, &v11);
LABEL_14:
        (*(*a3 + 8))(a3, a2, v9);
        return 1;
      }
    }

    v11 = v8;
    v12 = v7;
LABEL_13:
    v9 = mlir::OpBuilder::create<mlir::complex::BitcastOp,mlir::Type,mlir::Value>((a3 + 8), *(a2 + 24), &v12, &v11);
    goto LABEL_14;
  }

  v12 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v12);
  if (!result)
  {
    return result;
  }

  if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
  {
    v10 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(*(result + 72) + 24);
    v12 = v10;
    goto LABEL_13;
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::complex::BitcastOp,mlir::Type,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::complex::BitcastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::complex::BitcastOp,mlir::Type,mlir::Value>(v19, v18, v17);
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
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::BitcastOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::BitcastOp,mlir::Type,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::BitcastOp,mlir::Type,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void MergeArithBitcast::~MergeArithBitcast(MergeArithBitcast *this)
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

uint64_t MergeArithBitcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::BitcastOp,void>::id)
    {
      v6 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v8 = *(*(result + 72) + 24);
      v9 = v6;
      v7 = mlir::OpBuilder::create<mlir::complex::BitcastOp,mlir::Type,mlir::Value>((a3 + 8), *(a2 + 24), &v9, &v8);
      (*(*a3 + 8))(a3, a2, v7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *anonymous namespace::FoldComponentNeg<mlir::complex::ImOp,1>::~FoldComponentNeg(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::FoldComponentNeg<mlir::complex::ImOp,1>::~FoldComponentNeg(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t anonymous namespace::FoldComponentNeg<mlir::complex::ImOp,1>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3)
{
  v10 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v10);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::NegOp,void>::id)
    {
      v10 = *(*(result + 72) + 24);
      result = mlir::Value::getDefiningOp(&v10);
      if (result)
      {
        if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
        {
          v9 = *(result - 8) & 0xFFFFFFFFFFFFFFF8;
          v6 = result;
          Value = mlir::AffineMapAttr::getValue(&v9);
          v9 = *(*(v6 + 72) + 56);
          v10 = Value;
          v8 = mlir::OpBuilder::create<mlir::arith::NegFOp,mlir::Type &,mlir::Value>(a3 + 1, *(a2 + 24), &v10, &v9);
          (*(*a3 + 1))(a3, a2, v8);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::NegFOp,mlir::Type &,mlir::Value>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::NegFOp,mlir::Type &,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::NegFOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void *anonymous namespace::FoldComponentNeg<mlir::complex::ReOp,0>::~FoldComponentNeg(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::FoldComponentNeg<mlir::complex::ReOp,0>::~FoldComponentNeg(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t anonymous namespace::FoldComponentNeg<mlir::complex::ReOp,0>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3)
{
  v10 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v10);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::NegOp,void>::id)
    {
      v10 = *(*(result + 72) + 24);
      result = mlir::Value::getDefiningOp(&v10);
      if (result)
      {
        if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
        {
          v9 = *(result - 8) & 0xFFFFFFFFFFFFFFF8;
          v6 = result;
          Value = mlir::AffineMapAttr::getValue(&v9);
          v9 = *(*(v6 + 72) + 24);
          v10 = Value;
          v8 = mlir::OpBuilder::create<mlir::arith::NegFOp,mlir::Type &,mlir::Value>(a3 + 1, *(a2 + 24), &v10, &v9);
          (*(*a3 + 1))(a3, a2, v8);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::AbsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::AbsOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AbsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseType<mlir::ComplexType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
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
      result = v7;
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
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::AddOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::AddOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::AngleOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::AngleOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::AngleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::Atan2OpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::Atan2Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::ConjOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::ConjOpGenericAdaptorBase::Properties]";
  v6 = 109;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ConjOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

BOOL mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::CosOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::CosOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::CosOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::CosOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::CosOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::DivOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::DivOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::DivOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::DivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::ExpOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::ExpOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ExpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::Expm1OpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::Expm1Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::complex::detail::ImOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::complex::detail::ImOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::complex::detail::ImOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::complex::detail::ImOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::complex::ImOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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