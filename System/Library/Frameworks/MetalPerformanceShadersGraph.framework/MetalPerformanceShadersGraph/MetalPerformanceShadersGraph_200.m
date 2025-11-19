BOOL mlir::anec::anonymous namespace::utils::isVectorConst(uint64_t a1, int a2)
{
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v14[0] = v4;
  v14[1] = v5;
  mlir::CallableOpInterface::getArgAttrsAttr(v14);
  IndexFromDim = mlir::anec::getIndexFromDim(a2, v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = IndexFromDim;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v14);
  NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v11);
  return NumElements == *(mlir::CallableOpInterface::getArgAttrsAttr(v14) + 8 * v9);
}

uint64_t mlir::anec::anonymous namespace::utils::createScalarConst(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v22[0] = a3;
  v22[1] = a4;
  mlir::CallableOpInterface::getArgAttrsAttr(v22);
  v9 = v8;
  __b = v26;
  v25 = 6;
  if (v8 < 7)
  {
    if (v8)
    {
      memset_pattern16(v26, &unk_1E096FAE0, 8 * v8);
    }

    v10 = v26;
  }

  else
  {
    v24 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v26, v8, 8);
    v10 = __b;
    memset_pattern16(__b, &unk_1E096FAE0, 8 * v9);
  }

  v24 = v9;
  F16Type = mlir::Builder::getF16Type((a2 + 8), v8);
  v12 = mlir::RankedTensorType::get(v10, v9, F16Type, 0);
  v13 = __b;
  v14 = v24;
  v16 = mlir::Builder::getF16Type((a2 + 8), v15);
  v21 = mlir::MemRefType::get(v13, v14, v16, 0, 0, 0);
  v20[0] = mlir::createSplatF16ElementsAttr(v12, a5);
  v20[1] = v17;
  result = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 8), a1, &v21, v20);
  if (__b != v26)
  {
    v19 = result;
    free(__b);
    return v19;
  }

  return result;
}

uint64_t mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::anec::ScaledElementWise,mlir::detail::RecursivePatternMatcherBinder<mlir::anec::Transpose,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(uint64_t ****a1, uint64_t ***a2)
{
  if (a2[6][2] != &mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id)
  {
    return 0;
  }

  v7 = *a1;
  v6 = a1[1];
  v21 = a2[9][3];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (DefiningOp)
  {
    v24 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 1)
    {
      v20 = DefiningOp;
      v23 = 1;
      v21 = &v23;
      v22 = &v24;
      mlir::detail::RecursivePatternMatcherBinder<mlir::anec::Transpose,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::anec::Transpose *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>(&v21, 0, *v7);
      v2 = v23;
      if (v23 == 1)
      {
        v7[1] = v24;
      }

      DefiningOp = v20;
    }

    else
    {
      v2 = 0;
    }
  }

  v9 = DefiningOp != 0;
  v21 = a2[9][7];
  v10 = mlir::Value::getDefiningOp(&v21);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
  if (v10 && *(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v6 || *v6 == v10))
  {
    *v6 = v10;
    if (v9 & v2)
    {
      goto LABEL_17;
    }
  }

  *a1[1] = 0;
  v13 = *a1;
  v14 = **a1;
  v15 = *(v14 + 16);
  **v14 = 0;
  if (v15 == 1 && *(v14 + 16) == 1)
  {
    *(v14 + 16) = 0;
  }

  v13[1] = 0;
  v16 = *a1;
  v17 = a1[1];
  v21 = a2[9][3];
  v18 = mlir::Value::getDefiningOp(&v21);
  if (v18)
  {
    if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v17 || *v17 == v18))
    {
      *v17 = v18;
      LODWORD(v11) = 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }
  }

  v19 = v18 != 0;
  v21 = a2[9][7];
  result = mlir::Value::getDefiningOp(&v21);
  if (result)
  {
    v24 = result;
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
    {
      return 0;
    }

    if ((*(result + 46) & 0x80) == 0)
    {
      return 0;
    }

    if (*(result + 68) != 1)
    {
      return 0;
    }

    v23 = 1;
    v21 = &v23;
    v22 = &v24;
    mlir::detail::RecursivePatternMatcherBinder<mlir::anec::Transpose,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::anec::Transpose *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>(&v21, 0, *v16);
    if ((v23 & 1) == 0)
    {
      return 0;
    }

    v16[1] = v24;
    if ((v19 & v11) == 0)
    {
      return 0;
    }

LABEL_17:
    if ((a1[3] & 1) == 0)
    {
      *(a1 + 24) = 1;
    }

    a1[2] = a2;
    return 1;
  }

  return result;
}

uint64_t mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::anec::ScaledElementWise,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(uint64_t **a1, uint64_t *a2)
{
  if (*(a2[6] + 16) != &mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a2[9];
  v7 = *(v6 + 24);
  v8 = **a1;
  if (v8)
  {
    v9 = v8 == v7;
  }

  else
  {
    **a1 = v7;
    v6 = a2[9];
    v9 = 1;
  }

  v18 = *(v6 + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id || (*v5 ? (v11 = *v5 == DefiningOp) : (v11 = 1), !v11 || (*v5 = DefiningOp, !v9)))
  {
    *a1[1] = 0;
    **a1 = 0;
    v12 = *a1;
    v13 = a1[1];
    v18 = *(a2[9] + 24);
    v14 = mlir::Value::getDefiningOp(&v18);
    if (v14)
    {
      if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v13 || *v13 == v14))
      {
        *v13 = v14;
        v15 = 1;
      }

      else
      {
        v15 = 0;
      }
    }

    v16 = *(a2[9] + 56);
    if (*v12)
    {
      v17 = *v12 == v16;
      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v12 = v16;
      v17 = 1;
      if (v14)
      {
LABEL_23:
        result = 0;
        if ((v15 & v17) == 0)
        {
          return result;
        }

        goto LABEL_24;
      }
    }

    return 0;
  }

LABEL_24:
  if ((a1[3] & 1) == 0)
  {
    *(a1 + 24) = 1;
  }

  a1[2] = a2;
  return 1;
}

void mlir::anec::anonymous namespace::ConvertScaledEWToGOCForScalarConst::~ConvertScaledEWToGOCForScalarConst(mlir::anec::_anonymous_namespace_::ConvertScaledEWToGOCForScalarConst *this)
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

uint64_t mlir::anec::anonymous namespace::ConvertScaledEWToGOCForScalarConst::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v56 = a2;
  Mode = mlir::anec::ScaledElementWise::getMode(&v56);
  v8 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v5 >= 3 ? 3 : v5;
    if (!memcmp(Mode, "mul", v7) && v6 == 3)
    {
      v8 = 1;
    }
  }

  v9 = mlir::anec::ScaledElementWise::getMode(&v56);
  if (v10 && ((v11 = v10, v10 >= 3) ? (v12 = 3) : (v12 = v10), !memcmp(v9, "add", v12)))
  {
    v13 = v11 == 3;
    v14 = v11 == 3 || v8;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v13 = 0;
    if (!v8)
    {
      return 0;
    }
  }

  v54 = 0;
  v55 = 0;
  v51[0] = &v54;
  v51[1] = &v55;
  v52 = 0;
  v53 = 0;
  if (*(v56 + 9))
  {
    v15 = v56 - 16;
  }

  else
  {
    v15 = 0;
  }

  v50[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  result = mlir::Value::getDefiningOp(v50);
  if (result)
  {
    result = mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::anec::ScaledElementWise,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(v51, result);
    if (result)
    {
      v17 = v55;
      if (*(v55 + 36))
      {
        v18 = v55 - 16;
      }

      else
      {
        v18 = 0;
      }

      v19 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v19)
      {
        return 0;
      }

      v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
      v50[0] = v19;
      v50[1] = v20;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v50);
      {
        return 0;
      }

      v49 = v54;
      v23 = (*(v54 + 8) & 0xFFFFFFFFFFFFFFF8);
      v24 = v23 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8) : 0;
      v48[0] = v23;
      v48[1] = v24;
      v25 = mlir::CallableOpInterface::getArgAttrsAttr(v48);
      if (mlir::ShapedType::getNumElements(v25, v26) == 1)
      {
        return 0;
      }

      if ((FPValue & 0x100000000) == 0)
      {
        return 0;
      }

      if (v8)
      {
        v28 = *&FPValue;
      }

      else
      {
        v28 = 1.0;
      }

      if (v13)
      {
        v29 = *&FPValue;
      }

      else
      {
        v29 = 0.0;
      }

      if (*(v56 + 9))
      {
        v30 = v56 - 16;
      }

      else
      {
        v30 = 0;
      }

      v47 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::ArrayAttr::getValue(&v47);
      v31 = *(v56 + 3);
      if (*(v56 + 9))
      {
        v32 = v56 - 16;
      }

      else
      {
        v32 = 0;
      }

      v33 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v32, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v33)
      {
        v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
      }

      else
      {
        v34 = 0;
      }

      v36 = *(v56 + 3);
      if (*(v56 + 9))
      {
        v37 = v56 - 16;
      }

      else
      {
        v37 = 0;
      }

      v38 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v37, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v38)
      {
        v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
      }

      else
      {
        v39 = 0;
      }

      v41 = v56;
      if (*(v56 + 9))
      {
        v42 = v56 - 16;
      }

      else
      {
        v42 = 0;
      }

      v47 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(ScalarConst + 36))
      {
        v43 = ScalarConst - 16;
      }

      else
      {
        v43 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0);
      if (*(v40 + 36))
      {
        v44 = v40 - 16;
      }

      else
      {
        v44 = 0;
      }

      v45 = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value,mlir::Value>(a3, v41, &v47, &v49, &NextResultAtOffset, &v45);
      return 1;
    }
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::utils::isSplatConstAndGetFPValue(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v2 = a1 - 16;
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v22 = &v23;
  v25[0].n128_u64[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  DefiningOp = mlir::Value::getDefiningOp(v25);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::mps::MPSBufferTensorAttr>::match(&v22, DefiningOp))
  {
    v5 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v5)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    mlir::mps::MPSBufferTensorAttr::getHandle(&v23, v25);
    if (*(v25[0].n128_u64[0] + 80))
    {
      v13 = (v25[0].n128_u64[0] + 16);
    }

    else
    {
      v13 = 0;
    }

    v14 = mlir::DenseElementsAttr::getFromRawBuffer(v5, v6, *v13, v13[1], v10, v11, v12);
    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = v14;
    if (mlir::DenseFPElementsAttr::classof(v14))
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v24 = v16;
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*(a1 + 36))
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
    v22 = &v24;
    v25[0].n128_u64[0] = NextResultAtOffset;
    v9 = mlir::Value::getDefiningOp(v25);
    if (!v9 || !mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v22, v9))
    {
      goto LABEL_26;
    }
  }

  if (!mlir::DenseElementsAttr::isSplat(&v24))
  {
LABEL_26:
    v16 = 0;
LABEL_27:
    v20 = 0;
    return v20 | v16;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v24, v25);
  v17 = llvm::APFloat::convertToFloat(v25);
  v18 = v25[0].n128_u64[1];
  if (llvm::APFloatBase::PPCDoubleDouble(v19) == v18)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v25[0].n128_i8[8]);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v25[0].n128_i8[8]);
  }

  v20 = LODWORD(v17);
  v16 = 0x100000000;
  return v20 | v16;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value,mlir::Value>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>((a1 + 8), *(a2 + 24), a3, a4, a5, a6);
  (*(*a1 + 8))(a1, a2, v8);
  return v8;
}

uint64_t mlir::detail::constant_op_binder<mlir::mps::MPSBufferTensorAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

void mlir::anec::anonymous namespace::InsertDummyMulForScaledEWSquare::~InsertDummyMulForScaledEWSquare(mlir::anec::_anonymous_namespace_::InsertDummyMulForScaledEWSquare *this)
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

unint64_t mlir::RewritePattern::create<mlir::anec::ConvertPow2ToMul,mlir::MLIRContext *&>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x60uLL);
  v5 = *a1;
  mlir::PatternBenefit::PatternBenefit(&v13, 1);
  result = mlir::Pattern::Pattern((v4 + 1), "anec.power", 10, v13, v5, 0, 0);
  *v4 = &unk_1F5B34E30;
  *a2 = v4;
  if (!v4[9])
  {
    v13 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::ConvertPow2ToMul]";
    v14 = 78;
    result = llvm::StringRef::find(&v13, "DesiredTypeName = ", 0x12uLL, 0);
    if (v14 >= result)
    {
      v7 = result;
    }

    else
    {
      v7 = v14;
    }

    v8 = &v13[v7];
    v9 = v14 - v7;
    if (v14 - v7 >= 0x12)
    {
      v10 = 18;
    }

    else
    {
      v10 = v14 - v7;
    }

    v11 = &v8[v10];
    v12 = v9 - v10;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v4[8] = v11;
    v4[9] = v12;
  }

  return result;
}

void mlir::anec::ConvertPow2ToMul::~ConvertPow2ToMul(mlir::anec::ConvertPow2ToMul *this)
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

uint64_t mlir::anec::ConvertPow2ToMul::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::StringAttr **a3)
{
  v5 = *(a2 + 72);
  v24 = *(v5 + 24);
  v20[0] = *(v5 + 56);
  result = mlir::Value::getDefiningOp(v20);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
    {
      result = 0;
      if ((FPValue & 0x100000000) != 0 && *&FPValue == 2.0)
      {
        if (*(a2 + 36))
        {
          v8 = a2 - 16;
        }

        else
        {
          v8 = 0;
        }

        v23 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v21 = 261;
        v20[0] = "mul";
        v20[1] = 3;
        StringAttr = mlir::Builder::getStringAttr(a3 + 1, v20);
        F32FloatAttr = mlir::Builder::getF32FloatAttr(a3 + 1, 1.0, v9);
        v18 = mlir::Builder::getF32FloatAttr(a3 + 1, 1.0, v10);
        v17 = mlir::Builder::getF32FloatAttr(a3 + 1, 0.0, v11);
        BoolAttr = mlir::Builder::getBoolAttr(a3 + 1, 0);
        v12 = mlir::Builder::getBoolAttr(a3 + 1, 0);
        v13 = *(a2 + 24);
        v15 = v12;
        v14 = mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>((a3 + 1), v13, &v23, &v24, &v24, &StringAttr, &F32FloatAttr, &v18, &v17, &BoolAttr, &v15);
        (*(*a3 + 1))(a3, a2, v14);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_22()
{
  if (*(v1 + 36))
  {
    v3 = v0;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

void mlir::anec::createANECRegionCallCanonicalizationPass(mlir::anec *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v4 = operator new(0x228uLL);
  v7 = v2;
  v4[2] = "builtin.module";
  v4[3] = 14;
  *(v4 + 32) = 1;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  v4[22] = 0;
  v4[23] = v4 + 25;
  v4[24] = 0x400000000;
  v4[29] = v4 + 31;
  v4[30] = 0x400000000;
  v4[35] = 0;
  v4[36] = 0;
  v4[37] = 0x1000000000;
  v4[42] = 0;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *v4 = &unk_1F5B34EF8;
  *&v10 = "Update the ANECRegions with the new types, and get rid of incompatible MemrefToTensor ops.";
  *(&v10 + 1) = 90;
  v8 = 0;
  v9 = &v8;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 43), v4 + 19, "finalize-transforms", 19, &v10, &v9);
  v4[43] = &unk_1F5AFB130;
  v4[67] = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B34E88;
  *(v4 + 472) = v2;
  v5 = v4[66];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v7);
    *a2 = v4;
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
  }
}

void mlir::anec::anonymous namespace::ANECRegionCallCanonicalizationPass::~ANECRegionCallCanonicalizationPass(mlir::anec::_anonymous_namespace_::ANECRegionCallCanonicalizationPass *this)
{
  *this = &unk_1F5B34EF8;
  *(this + 43) = &unk_1F5B3E720;
  v2 = this + 504;
  v3 = *(this + 66);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 43) = &unk_1F5B3E1D8;
  v4 = *(this + 55);
  if (v4 != *(this + 54))
  {
    free(v4);
  }

  v5 = *(this + 51);
  if (v5 != this + 424)
  {
    free(v5);
  }

  *this = &unk_1F5B01A70;
  v6 = *(this + 39);
  if (v6)
  {
    *(this + 40) = v6;
    operator delete(v6);
  }

  if (*(this + 73))
  {
    v7 = *(this + 72);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = *(*(this + 35) + v8);
        if (v9 != -8 && v9 != 0)
        {
          llvm::deallocate_buffer(v9, (*v9 + 17));
        }

        v8 += 8;
      }

      while (8 * v7 != v8);
    }
  }

  free(*(this + 35));
  v11 = *(this + 29);
  if (v11 != this + 248)
  {
    free(v11);
  }

  v12 = *(this + 23);
  if (v12 != this + 200)
  {
    free(v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    *(this + 17) = v13;
    operator delete(v13);
  }

  if (*(this + 120) == 1)
  {
    v14 = *(this + 8);
    if (v14 != *(this + 7))
    {
      free(v14);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::anec::ANECRegionCallCanonicalizationBase<mlir::anec::anonymous namespace::ANECRegionCallCanonicalizationPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void mlir::anec::anonymous namespace::ANECRegionCallCanonicalizationPass::runOnOperation(mlir::anec::_anonymous_namespace_::ANECRegionCallCanonicalizationPass *this)
{
  v237 = *MEMORY[0x1E69E9840];
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext((v2 + 6));
  v223 = 0u;
  v224 = 0u;
  v222 = Context;
  v225 = &v227;
  v226 = 0x600000000;
  v228 = 0;
  v229 = 0;
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v233 = 0x2800000000;
  v234 = 0;
  v235 = 0;
  v236 = 0x2800000000;
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v207, 1);
  mlir::Pattern::Pattern((v4 + 1), "mps.reshape", 11, v207, Context, 0, 0);
  *v4 = &unk_1F5B34F68;
  if (!v4[9])
  {
    v207 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::CanonicalizeANEIOWithReshape<mlir::mps::ReshapeOp, mlir::placement::MemrefToTensor>]";
    __p[0] = 168;
    v5 = llvm::StringRef::find(&v207, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[0] >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = &v6[v207];
    v8 = (__p[0] - v6);
    if ((__p[0] - v6) >= 0x12)
    {
      v9 = 18;
    }

    else
    {
      v9 = __p[0] - v6;
    }

    v10 = &v7[v9];
    v11 = &v8[-v9];
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v4[8] = v10;
    v4[9] = v11;
  }

  v12 = *(v4 + 22);
  if (v12 > *(v4 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 10), (v4 + 12), v12, 16);
    LODWORD(v12) = *(v4 + 22);
  }

  *(v4 + 22) = v12;
  v13 = *(&v223 + 1);
  if (*(&v223 + 1) >= v224)
  {
    v15 = v223;
    v16 = *(&v223 + 1) - v223;
    v17 = (*(&v223 + 1) - v223) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      goto LABEL_294;
    }

    v19 = v224 - v223;
    if ((v224 - v223) >> 2 > v18)
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
        goto LABEL_295;
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v4;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    *&v223 = v21;
    *(&v223 + 1) = v14;
    *&v224 = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    **(&v223 + 1) = v4;
    v14 = (v13 + 8);
  }

  *(&v223 + 1) = v14;
  v23 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v207, 1);
  mlir::Pattern::Pattern((v23 + 1), "placement.tensor_to_memref", 26, v207, Context, 0, 0);
  *v23 = &unk_1F5B34FC8;
  if (!v23[9])
  {
    v207 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::CanonicalizeANEIOWithReshape<mlir::placement::TensorToMemref, mlir::mps::ReshapeOp>]";
    __p[0] = 168;
    v24 = llvm::StringRef::find(&v207, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[0] >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = __p[0];
    }

    v26 = &v25[v207];
    v27 = (__p[0] - v25);
    if ((__p[0] - v25) >= 0x12)
    {
      v28 = 18;
    }

    else
    {
      v28 = __p[0] - v25;
    }

    v29 = &v26[v28];
    v30 = &v27[-v28];
    if (v30 >= v30 - 1)
    {
      --v30;
    }

    v23[8] = v29;
    v23[9] = v30;
  }

  v31 = *(v23 + 22);
  if (v31 > *(v23 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v23 + 10), (v23 + 12), v31, 16);
    LODWORD(v31) = *(v23 + 22);
  }

  *(v23 + 22) = v31;
  v32 = *(&v223 + 1);
  if (*(&v223 + 1) >= v224)
  {
    v34 = v223;
    v35 = *(&v223 + 1) - v223;
    v36 = (*(&v223 + 1) - v223) >> 3;
    v37 = v36 + 1;
    if ((v36 + 1) >> 61)
    {
      goto LABEL_294;
    }

    v38 = v224 - v223;
    if ((v224 - v223) >> 2 > v37)
    {
      v37 = v38 >> 2;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      v39 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      if (v39 >> 61)
      {
        goto LABEL_295;
      }

      v40 = operator new(8 * v39);
    }

    else
    {
      v40 = 0;
    }

    v41 = &v40[8 * v36];
    *v41 = v23;
    v33 = v41 + 8;
    memcpy(v40, v34, v35);
    *&v223 = v40;
    *(&v223 + 1) = v33;
    *&v224 = &v40[8 * v39];
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    **(&v223 + 1) = v23;
    v33 = (v32 + 8);
  }

  *(&v223 + 1) = v33;
  v42 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v207, 1);
  mlir::Pattern::Pattern((v42 + 1), "mps.cast", 8, v207, Context, 0, 0);
  *v42 = &unk_1F5B35028;
  if (!v42[9])
  {
    v207 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::CanonicalizeANEIOWithCast<mlir::mps::CastOp, mlir::placement::MemrefToTensor>]";
    __p[0] = 162;
    v43 = llvm::StringRef::find(&v207, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[0] >= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = __p[0];
    }

    v45 = &v44[v207];
    v46 = (__p[0] - v44);
    if ((__p[0] - v44) >= 0x12)
    {
      v47 = 18;
    }

    else
    {
      v47 = __p[0] - v44;
    }

    v48 = &v45[v47];
    v49 = &v46[-v47];
    if (v49 >= v49 - 1)
    {
      --v49;
    }

    v42[8] = v48;
    v42[9] = v49;
  }

  v50 = *(v42 + 22);
  if (v50 > *(v42 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v42 + 10), (v42 + 12), v50, 16);
    LODWORD(v50) = *(v42 + 22);
  }

  *(v42 + 22) = v50;
  v51 = *(&v223 + 1);
  if (*(&v223 + 1) >= v224)
  {
    v53 = v223;
    v54 = *(&v223 + 1) - v223;
    v55 = (*(&v223 + 1) - v223) >> 3;
    v56 = v55 + 1;
    if ((v55 + 1) >> 61)
    {
      goto LABEL_294;
    }

    v57 = v224 - v223;
    if ((v224 - v223) >> 2 > v56)
    {
      v56 = v57 >> 2;
    }

    if (v57 >= 0x7FFFFFFFFFFFFFF8)
    {
      v58 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v58 = v56;
    }

    if (v58)
    {
      if (v58 >> 61)
      {
        goto LABEL_295;
      }

      v59 = operator new(8 * v58);
    }

    else
    {
      v59 = 0;
    }

    v60 = &v59[8 * v55];
    *v60 = v42;
    v52 = v60 + 8;
    memcpy(v59, v53, v54);
    *&v223 = v59;
    *(&v223 + 1) = v52;
    *&v224 = &v59[8 * v58];
    if (v53)
    {
      operator delete(v53);
    }
  }

  else
  {
    **(&v223 + 1) = v42;
    v52 = (v51 + 8);
  }

  *(&v223 + 1) = v52;
  v61 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v207, 1);
  mlir::Pattern::Pattern((v61 + 1), "placement.tensor_to_memref", 26, v207, Context, 0, 0);
  *v61 = &unk_1F5B35088;
  if (!v61[9])
  {
    v207 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::CanonicalizeANEIOWithCast<mlir::placement::TensorToMemref, mlir::mps::CastOp>]";
    __p[0] = 162;
    v62 = llvm::StringRef::find(&v207, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[0] >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = __p[0];
    }

    v64 = &v63[v207];
    v65 = (__p[0] - v63);
    if ((__p[0] - v63) >= 0x12)
    {
      v66 = 18;
    }

    else
    {
      v66 = __p[0] - v63;
    }

    v67 = &v64[v66];
    v68 = &v65[-v66];
    if (v68 >= v68 - 1)
    {
      --v68;
    }

    v61[8] = v67;
    v61[9] = v68;
  }

  v69 = *(v61 + 22);
  if (v69 > *(v61 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v61 + 10), (v61 + 12), v69, 16);
    LODWORD(v69) = *(v61 + 22);
  }

  *(v61 + 22) = v69;
  v70 = *(&v223 + 1);
  if (*(&v223 + 1) >= v224)
  {
    v72 = v223;
    v73 = *(&v223 + 1) - v223;
    v74 = (*(&v223 + 1) - v223) >> 3;
    v75 = v74 + 1;
    if ((v74 + 1) >> 61)
    {
      goto LABEL_294;
    }

    v76 = v224 - v223;
    if ((v224 - v223) >> 2 > v75)
    {
      v75 = v76 >> 2;
    }

    if (v76 >= 0x7FFFFFFFFFFFFFF8)
    {
      v77 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v77 = v75;
    }

    if (v77)
    {
      if (v77 >> 61)
      {
        goto LABEL_295;
      }

      v78 = operator new(8 * v77);
    }

    else
    {
      v78 = 0;
    }

    v79 = &v78[8 * v74];
    *v79 = v61;
    v71 = v79 + 8;
    memcpy(v78, v72, v73);
    *&v223 = v78;
    *(&v223 + 1) = v71;
    *&v224 = &v78[8 * v77];
    if (v72)
    {
      operator delete(v72);
    }
  }

  else
  {
    **(&v223 + 1) = v61;
    v71 = (v70 + 8);
  }

  *(&v223 + 1) = v71;
  v80 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v207, 1);
  mlir::Pattern::Pattern((v80 + 1), "mpsx.interleave", 15, v207, Context, 0, 0);
  *v80 = &unk_1F5B350E8;
  if (!v80[9])
  {
    v207 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::CanonicalizeANEIOWithInterleave<mlir::mpsx::InterleaveOp, mlir::placement::MemrefToTensor>]";
    __p[0] = 175;
    v81 = llvm::StringRef::find(&v207, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[0] >= v81)
    {
      v82 = v81;
    }

    else
    {
      v82 = __p[0];
    }

    v83 = &v82[v207];
    v84 = (__p[0] - v82);
    if ((__p[0] - v82) >= 0x12)
    {
      v85 = 18;
    }

    else
    {
      v85 = __p[0] - v82;
    }

    v86 = &v83[v85];
    v87 = &v84[-v85];
    if (v87 >= v87 - 1)
    {
      --v87;
    }

    v80[8] = v86;
    v80[9] = v87;
  }

  v88 = *(v80 + 22);
  if (v88 > *(v80 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v80 + 10), (v80 + 12), v88, 16);
    LODWORD(v88) = *(v80 + 22);
  }

  *(v80 + 22) = v88;
  v89 = *(&v223 + 1);
  if (*(&v223 + 1) >= v224)
  {
    v91 = v223;
    v92 = *(&v223 + 1) - v223;
    v93 = (*(&v223 + 1) - v223) >> 3;
    v94 = v93 + 1;
    if ((v93 + 1) >> 61)
    {
      goto LABEL_294;
    }

    v95 = v224 - v223;
    if ((v224 - v223) >> 2 > v94)
    {
      v94 = v95 >> 2;
    }

    if (v95 >= 0x7FFFFFFFFFFFFFF8)
    {
      v96 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v96 = v94;
    }

    if (v96)
    {
      if (v96 >> 61)
      {
        goto LABEL_295;
      }

      v97 = operator new(8 * v96);
    }

    else
    {
      v97 = 0;
    }

    v98 = &v97[8 * v93];
    *v98 = v80;
    v90 = v98 + 8;
    memcpy(v97, v91, v92);
    *&v223 = v97;
    *(&v223 + 1) = v90;
    *&v224 = &v97[8 * v96];
    if (v91)
    {
      operator delete(v91);
    }
  }

  else
  {
    **(&v223 + 1) = v80;
    v90 = (v89 + 8);
  }

  *(&v223 + 1) = v90;
  v99 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v207, 1);
  mlir::Pattern::Pattern((v99 + 1), "placement.tensor_to_memref", 26, v207, Context, 0, 0);
  *v99 = &unk_1F5B35148;
  if (!v99[9])
  {
    v207 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::CanonicalizeANEIOWithInterleave<mlir::placement::TensorToMemref, mlir::mpsx::DeinterleaveOp>]";
    __p[0] = 177;
    v100 = llvm::StringRef::find(&v207, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[0] >= v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = __p[0];
    }

    v102 = &v101[v207];
    v103 = (__p[0] - v101);
    if ((__p[0] - v101) >= 0x12)
    {
      v104 = 18;
    }

    else
    {
      v104 = __p[0] - v101;
    }

    v105 = &v102[v104];
    v106 = &v103[-v104];
    if (v106 >= v106 - 1)
    {
      --v106;
    }

    v99[8] = v105;
    v99[9] = v106;
  }

  v107 = *(v99 + 22);
  if (v107 > *(v99 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v99 + 10), (v99 + 12), v107, 16);
    LODWORD(v107) = *(v99 + 22);
  }

  *(v99 + 22) = v107;
  v108 = *(&v223 + 1);
  if (*(&v223 + 1) >= v224)
  {
    v110 = v223;
    v111 = *(&v223 + 1) - v223;
    v112 = (*(&v223 + 1) - v223) >> 3;
    v113 = v112 + 1;
    if ((v112 + 1) >> 61)
    {
      goto LABEL_294;
    }

    v114 = v224 - v223;
    if ((v224 - v223) >> 2 > v113)
    {
      v113 = v114 >> 2;
    }

    if (v114 >= 0x7FFFFFFFFFFFFFF8)
    {
      v115 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v115 = v113;
    }

    if (v115)
    {
      if (v115 >> 61)
      {
        goto LABEL_295;
      }

      v116 = operator new(8 * v115);
    }

    else
    {
      v116 = 0;
    }

    v117 = &v116[8 * v112];
    *v117 = v99;
    v109 = v117 + 8;
    memcpy(v116, v110, v111);
    *&v223 = v116;
    *(&v223 + 1) = v109;
    *&v224 = &v116[8 * v115];
    if (v110)
    {
      operator delete(v110);
    }
  }

  else
  {
    **(&v223 + 1) = v99;
    v109 = (v108 + 8);
  }

  *(&v223 + 1) = v109;
  v118 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v207, 1);
  mlir::Pattern::Pattern((v118 + 1), "placement.tensor_to_memref", 26, v207, Context, 0, 0);
  *v118 = &unk_1F5B351A8;
  if (!v118[9])
  {
    v207 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::CanonicalizePlacementRegionEnter]";
    __p[0] = 117;
    v119 = llvm::StringRef::find(&v207, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[0] >= v119)
    {
      v120 = v119;
    }

    else
    {
      v120 = __p[0];
    }

    v121 = &v120[v207];
    v122 = (__p[0] - v120);
    if ((__p[0] - v120) >= 0x12)
    {
      v123 = 18;
    }

    else
    {
      v123 = __p[0] - v120;
    }

    v124 = &v121[v123];
    v125 = &v122[-v123];
    if (v125 >= v125 - 1)
    {
      --v125;
    }

    v118[8] = v124;
    v118[9] = v125;
  }

  v126 = *(v118 + 22);
  if (v126 > *(v118 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v118 + 10), (v118 + 12), v126, 16);
    LODWORD(v126) = *(v118 + 22);
  }

  *(v118 + 22) = v126;
  v127 = *(&v223 + 1);
  if (*(&v223 + 1) >= v224)
  {
    v129 = v223;
    v130 = *(&v223 + 1) - v223;
    v131 = (*(&v223 + 1) - v223) >> 3;
    v132 = v131 + 1;
    if ((v131 + 1) >> 61)
    {
      goto LABEL_294;
    }

    v133 = v224 - v223;
    if ((v224 - v223) >> 2 > v132)
    {
      v132 = v133 >> 2;
    }

    if (v133 >= 0x7FFFFFFFFFFFFFF8)
    {
      v134 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v134 = v132;
    }

    if (v134)
    {
      if (v134 >> 61)
      {
        goto LABEL_295;
      }

      v135 = operator new(8 * v134);
    }

    else
    {
      v135 = 0;
    }

    v136 = &v135[8 * v131];
    *v136 = v118;
    v128 = v136 + 8;
    memcpy(v135, v129, v130);
    *&v223 = v135;
    *(&v223 + 1) = v128;
    *&v224 = &v135[8 * v134];
    if (v129)
    {
      operator delete(v129);
    }
  }

  else
  {
    **(&v223 + 1) = v118;
    v128 = (v127 + 8);
  }

  *(&v223 + 1) = v128;
  v137 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v207, 1);
  mlir::Pattern::Pattern((v137 + 1), "mpsx.buffer_to_tensor", 21, v207, Context, 0, 0);
  *v137 = &unk_1F5B35200;
  if (!v137[9])
  {
    v207 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::CanonicalizePlacementRegionExit]";
    __p[0] = 116;
    v138 = llvm::StringRef::find(&v207, "DesiredTypeName = ", 0x12uLL, 0);
    if (__p[0] >= v138)
    {
      v139 = v138;
    }

    else
    {
      v139 = __p[0];
    }

    v140 = &v139[v207];
    v141 = (__p[0] - v139);
    if ((__p[0] - v139) >= 0x12)
    {
      v142 = 18;
    }

    else
    {
      v142 = __p[0] - v139;
    }

    v143 = &v140[v142];
    v144 = &v141[-v142];
    if (v144 >= v144 - 1)
    {
      --v144;
    }

    v137[8] = v143;
    v137[9] = v144;
  }

  v145 = *(v137 + 22);
  if (v145 > *(v137 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v137 + 10), (v137 + 12), v145, 16);
    LODWORD(v145) = *(v137 + 22);
  }

  *(v137 + 22) = v145;
  v146 = *(&v223 + 1);
  if (*(&v223 + 1) >= v224)
  {
    v148 = v223;
    v149 = *(&v223 + 1) - v223;
    v150 = (*(&v223 + 1) - v223) >> 3;
    v151 = v150 + 1;
    if ((v150 + 1) >> 61)
    {
      goto LABEL_294;
    }

    v152 = v224 - v223;
    if ((v224 - v223) >> 2 > v151)
    {
      v151 = v152 >> 2;
    }

    if (v152 >= 0x7FFFFFFFFFFFFFF8)
    {
      v153 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v153 = v151;
    }

    if (v153)
    {
      if (v153 >> 61)
      {
        goto LABEL_295;
      }

      v154 = operator new(8 * v153);
    }

    else
    {
      v154 = 0;
    }

    v155 = &v154[8 * v150];
    *v155 = v137;
    v147 = v155 + 8;
    memcpy(v154, v148, v149);
    *&v223 = v154;
    *(&v223 + 1) = v147;
    *&v224 = &v154[8 * v153];
    if (v148)
    {
      operator delete(v148);
    }
  }

  else
  {
    **(&v223 + 1) = v137;
    v147 = (v146 + 8);
  }

  *(&v223 + 1) = v147;
  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(&v201, &v222, 0, 0, 0, 0);
  v156 = v2[11];
  if ((v156 & 0x7FFFFF) != 0)
  {
    v157 = (((&v2[4 * ((v156 >> 23) & 1) + 16] + ((v156 >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
    v200[0] = 0;
    v207 = 0x200000000;
    *__p = xmmword_1E097BBC0;
    v209[1] = 0;
    v210 = 0;
    v209[0] = 0;
    mlir::applyPatternsAndFoldGreedily(v157, &v201, &v207, v200);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v201);
  if (*(this + 472) != 1)
  {
    if (HIDWORD(v235) && v235)
    {
      v190 = 0;
      do
      {
        v191 = *(v234 + v190);
        if (v191 != -8 && v191 != 0)
        {
          v193 = *v191;
          v194 = *(v191 + 4);
          if (v194 == (v191 + 8))
          {
            (*(*v194 + 32))(v194);
          }

          else if (v194)
          {
            (*(*v194 + 40))(v194);
          }

          llvm::deallocate_buffer(v191, (v193 + 41));
        }

        v190 += 8;
      }

      while (8 * v235 != v190);
    }

    free(v234);
    if (HIDWORD(v232) && v232)
    {
      v195 = 0;
      do
      {
        v196 = *(v231 + v195);
        if (v196 != -8 && v196 != 0)
        {
          v198 = *v196;
          v199 = *(v196 + 4);
          if (v199 == (v196 + 8))
          {
            (*(*v199 + 32))(v199);
          }

          else if (v199)
          {
            (*(*v199 + 40))(v199);
          }

          llvm::deallocate_buffer(v196, (v198 + 41));
        }

        v195 += 8;
      }

      while (8 * v232 != v195);
    }

    free(v231);
    llvm::deallocate_buffer(v228, (16 * v230));
  }

  v158 = mlir::Attribute::getContext((v2 + 6));
  v207 = v158;
  *__p = 0u;
  *v209 = 0u;
  v210 = &v212;
  v211 = 0x600000000;
  v213 = 0;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  v217 = 0;
  v218 = 0x2800000000;
  v219 = 0;
  v220 = 0;
  v221 = 0x2800000000;
  v159 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v201, 1);
  mlir::Pattern::Pattern((v159 + 1), "placement.memref_to_tensor", 26, v201, v158, 0, 0);
  *v159 = &unk_1F5B35258;
  if (!v159[9])
  {
    v201 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::(anonymous namespace)::LowerDuplicateMemrefToTensor]";
    *&v202 = 113;
    v160 = llvm::StringRef::find(&v201, "DesiredTypeName = ", 0x12uLL, 0);
    if (v202 >= v160)
    {
      v161 = v160;
    }

    else
    {
      v161 = v202;
    }

    v162 = v201 + v161;
    v163 = v202 - v161;
    if ((v202 - v161) >= 0x12)
    {
      v164 = 18;
    }

    else
    {
      v164 = v202 - v161;
    }

    v165 = v162 + v164;
    v166 = v163 - v164;
    if (v166 >= v166 - 1)
    {
      --v166;
    }

    v159[8] = v165;
    v159[9] = v166;
  }

  v167 = *(v159 + 22);
  if (v167 > *(v159 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v159 + 10), (v159 + 12), v167, 16);
    LODWORD(v167) = *(v159 + 22);
  }

  *(v159 + 22) = v167;
  v168 = __p[1];
  if (__p[1] < v209[0])
  {
    *__p[1] = v159;
    v169 = v168 + 8;
    goto LABEL_238;
  }

  v170 = __p[0];
  v171 = __p[1] - __p[0];
  v172 = (__p[1] - __p[0]) >> 3;
  v173 = v172 + 1;
  if (!((v172 + 1) >> 61))
  {
    v174 = v209[0] - __p[0];
    if ((v209[0] - __p[0]) >> 2 > v173)
    {
      v173 = v174 >> 2;
    }

    if (v174 >= 0x7FFFFFFFFFFFFFF8)
    {
      v175 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v175 = v173;
    }

    if (!v175)
    {
      v176 = 0;
LABEL_236:
      v177 = &v176[8 * v172];
      *v177 = v159;
      v169 = v177 + 8;
      memcpy(v176, v170, v171);
      __p[0] = v176;
      __p[1] = v169;
      v209[0] = &v176[8 * v175];
      if (v170)
      {
        operator delete(v170);
      }

LABEL_238:
      __p[1] = v169;
      mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v200, &v207, 0, 0, 0, 0);
      v178 = v2[11];
      if ((v178 & 0x7FFFFF) != 0)
      {
        v179 = (((&v2[4 * ((v178 >> 23) & 1) + 16] + ((v178 >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
        v206 = 0;
        v201 = 0x200000000;
        v202 = xmmword_1E097BBC0;
        v204 = 0;
        v205 = 0;
        v203 = 0;
        mlir::applyPatternsAndFoldGreedily(v179, v200, &v201, &v206);
      }

      std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v200);
      v201 = v200;
      mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4anec12_GLOBAL__N_134ANECRegionCallCanonicalizationPass12canonicalizeES3_E3__0NS1_9placement10RegionCallEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v201, 1);
      if (HIDWORD(v220) && v220)
      {
        v180 = 0;
        do
        {
          v181 = *(v219 + v180);
          if (v181 != -8 && v181 != 0)
          {
            v183 = *v181;
            v184 = *(v181 + 4);
            if (v184 == (v181 + 8))
            {
              (*(*v184 + 32))(v184);
            }

            else if (v184)
            {
              (*(*v184 + 40))(v184);
            }

            llvm::deallocate_buffer(v181, (v183 + 41));
          }

          v180 += 8;
        }

        while (8 * v220 != v180);
      }

      free(v219);
      if (HIDWORD(v217) && v217)
      {
        v185 = 0;
        do
        {
          v186 = *(v216 + v185);
          if (v186 != -8 && v186 != 0)
          {
            v188 = *v186;
            v189 = *(v186 + 4);
            if (v189 == (v186 + 8))
            {
              (*(*v189 + 32))(v189);
            }

            else if (v189)
            {
              (*(*v189 + 40))(v189);
            }

            llvm::deallocate_buffer(v186, (v188 + 41));
          }

          v185 += 8;
        }

        while (8 * v217 != v185);
      }

      free(v216);
      llvm::deallocate_buffer(v213, (16 * v215));
    }

    if (!(v175 >> 61))
    {
      v176 = operator new(8 * v175);
      goto LABEL_236;
    }

LABEL_295:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_294:
  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
}

uint64_t mlir::anec::ANECRegionCallCanonicalizationBase<mlir::anec::anonymous namespace::ANECRegionCallCanonicalizationPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x228uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B34EF8;
  *&v9 = "Update the ANECRegions with the new types, and get rid of incompatible MemrefToTensor ops.";
  *(&v9 + 1) = 90;
  v7 = 0;
  v8 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 344, v4 + 19, "finalize-transforms", 19, &v9, &v8);
  *(v4 + 43) = &unk_1F5AFB130;
  *(v4 + 67) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5B34E88;
  *a2 = v4;
  return result;
}

void *mlir::anec::anonymous namespace::CanonicalizeANEIOWithReshape<mlir::mps::ReshapeOp,mlir::placement::MemrefToTensor>::~CanonicalizeANEIOWithReshape(void *a1)
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

void mlir::anec::anonymous namespace::CanonicalizeANEIOWithReshape<mlir::mps::ReshapeOp,mlir::placement::MemrefToTensor>::~CanonicalizeANEIOWithReshape(void *__p)
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

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithTypeChangerBase<mlir::mps::ReshapeOp,mlir::placement::MemrefToTensor>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&__p);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      return 0;
    }

    if (*(*(mlir::Block::getParentOp(*(v7 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id || *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
    {
      __p = operator new(0x38uLL);
      v22 = xmmword_1E0982900;
      strcpy(__p, "failed: Cannot optimize through stitched regions");
LABEL_15:
      result = mlir::logMatchFailure(&__p, *(a2 + 24), a3);
      if (SHIBYTE(v22) < 0)
      {
        v12 = result;
        operator delete(__p);
        return v12;
      }

      return result;
    }

    __p = *(*(v7 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&__p);
    if (!DefiningOp || ((v9 = *(*(DefiningOp + 6) + 16), v10 = v9 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, v9 != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id) ? (v11 = 0) : (v11 = DefiningOp), v20 = v11, !v10))
    {
      __p = operator new(0x28uLL);
      v22 = xmmword_1E0982810;
      strcpy(__p, "failed: ANE regionCall op not found");
      goto LABEL_15;
    }

    do
    {
      DefiningOp = *(DefiningOp + 2);
      if (!DefiningOp)
      {
        break;
      }

      DefiningOp = mlir::Block::getParentOp(DefiningOp);
      if (!DefiningOp)
      {
        break;
      }
    }

    while (*(*(DefiningOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v13 = DefiningOp;
    Callee = mlir::placement::RegionCall::getCallee(&v20);
    v16 = v15;
    Context = mlir::Attribute::getContext((v13 + 6));
    v23 = 261;
    __p = Callee;
    *&v22 = v16;
    v18 = mlir::StringAttr::get(Context, &__p);
    v19 = mlir::SymbolTable::lookupSymbolIn(v13, v18);
    return (*(*a1 + 72))(a1, a2, v7, v19, a3);
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithReshape<mlir::mps::ReshapeOp,mlir::placement::MemrefToTensor>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::Operation *a3, uint64_t a4, uint64_t **a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v75 = *(*(a3 + 9) + 24);
  v76 = a3;
  v7 = (*(v75 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v74[0] = v7;
  v74[1] = v8;
  v9 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v73[0] = v9;
  v73[1] = v10;
  v11 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v72[0] = v11;
  v72[1] = v12;
  if (!mlir::CallOpInterface::getArgOperands(v74))
  {
    goto LABEL_27;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v74);
  if (v14)
  {
    v15 = 8 * v14;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_27;
  }

LABEL_15:
  if (!mlir::CallOpInterface::getArgOperands(v73))
  {
    goto LABEL_27;
  }

  v16 = mlir::CallableOpInterface::getArgAttrsAttr(v73);
  if (v17)
  {
    v18 = 8 * v17;
    while (*v16 != 0x8000000000000000)
    {
      ++v16;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

LABEL_20:
  if (!mlir::CallOpInterface::getArgOperands(v72))
  {
LABEL_27:
    v85 = operator new(0x38uLL);
    v86[0] = xmmword_1E0982900;
    strcpy(v85, "failed: input and output must have static shapes");
    result = mlir::logMatchFailure(&v85, *(a2 + 24), a5);
    if ((SHIBYTE(v86[0]) & 0x80000000) == 0)
    {
      return result;
    }

    v28 = result;
    operator delete(v85);
    return v28;
  }

  v19 = mlir::CallableOpInterface::getArgAttrsAttr(v72);
  if (v20)
  {
    v21 = 8 * v20;
    while (*v19 != 0x8000000000000000)
    {
      ++v19;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

LABEL_25:
  v85 = v86 + 8;
  *&v86[0] = 0x500000000;
  v82 = v84;
  v83 = 0x500000000;
  v79 = v81;
  v80 = 0x500000000;
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v72);
  v24 = v23;
  __p = v78 + 8;
  *&v78[0] = 0x500000000;
  v25 = (8 * v23) >> 3;
  if (v25 < 6)
  {
    v26 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v78 + 8, v25, 8);
    v26 = v78[0];
  }

  if (v24)
  {
    memcpy(__p + 8 * v26, v22, 8 * v24);
    v26 = v78[0];
  }

  LODWORD(v78[0]) = v26 + v24;
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v85, &__p);
  if (__p != v78 + 8)
  {
    free(__p);
  }

  mlir::placement::MemrefToTensor::getInputShapeAfterInterleave(&v76, &__p);
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v82, &__p);
  if (__p != v78 + 8)
  {
    free(__p);
  }

  v29 = v85;
  v30 = LODWORD(v86[0]);
  LODWORD(v80) = 0;
  if (LODWORD(v86[0]) <= HIDWORD(v80))
  {
    v31 = 0;
    if (!LODWORD(v86[0]))
    {
      goto LABEL_49;
    }

    v32 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v81, LODWORD(v86[0]), 8);
    v31 = v80;
    v32 = v80;
  }

  v33 = v79 + 8 * v32;
  v34 = (v30 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v34 < 7)
  {
    v35 = v29;
    do
    {
LABEL_48:
      v43 = *v35;
      v35 += 8;
      *v33++ = v43;
    }

    while (v35 != &v29[8 * v30]);
    goto LABEL_49;
  }

  v36 = v79 + 8 * v32;
  v35 = v29;
  if ((v36 - v29) < 0x20)
  {
    goto LABEL_48;
  }

  v37 = v34 + 1;
  v38 = 8 * (v37 & 0x3FFFFFFFFFFFFFFCLL);
  v33 = (v33 + v38);
  v35 = &v29[v38];
  v39 = (v29 + 16);
  v40 = v36 + 16;
  v41 = v37 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v42 = *v39;
    *(v40 - 1) = *(v39 - 1);
    *v40 = v42;
    v39 += 2;
    v40 += 2;
    v41 -= 4;
  }

  while (v41);
  if (v37 != (v37 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_48;
  }

LABEL_49:
  v44 = (v31 + v30);
  LODWORD(v80) = v44;
  v45 = v83;
  if (LODWORD(v86[0]) >= v83)
  {
LABEL_58:
    __p = operator new(0x30uLL);
    v78[0] = xmmword_1E09828C0;
    strcpy(__p, "failed: ANE I/O op isn't a squeeze / expandDims");
    result = mlir::logMatchFailure(&__p, *(a2 + 24), a5);
    if (SHIBYTE(v78[0]) < 0)
    {
      v54 = result;
      operator delete(__p);
      result = v54;
    }
  }

  else
  {
    v46 = v82;
    v47 = v85;
    v48 = &v85[8 * LODWORD(v86[0])];
    do
    {
      v51 = *v46++;
      v50 = v51;
      if (v51 == 1)
      {
        v49 = &v85[8 * LODWORD(v86[0])];
        if (v47 != v48)
        {
          v49 = &v47[8 * (*v47 == 1)];
        }
      }

      else
      {
        if (v47 == v48)
        {
          goto LABEL_58;
        }

        v53 = *v47;
        v52 = v47 + 8;
        if (v50 != v53)
        {
          goto LABEL_58;
        }

        v49 = v52;
      }

      v47 = v49;
      --v45;
    }

    while (v45);
    __p = v44;
    IntegerType = mlir::Builder::getIntegerType(a5 + 1, 64, 0);
    v56 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
    if (v56)
    {
      v57 = v56;
      v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v56 + 8);
      v56 = v57;
    }

    else
    {
      v58 = 0;
    }

    v71 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v58, v79, 8 * v80, 8, 1, 0);
    __p = mlir::Operation::getAttrDictionary(v76);
    Value = mlir::ArrayAttr::getValue(&__p);
    __p = mlir::Operation::getAttrDictionary(v76);
    v60 = mlir::ArrayAttr::getValue(&__p);
    v62 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v60 + 16 * v61), *(*(*(v76 + 6) + 96) + 8));
    if (v62)
    {
      if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v63 = v62;
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v63 = 0;
    }

    v70 = v63;
    __p = mlir::Operation::getAttrDictionary(v76);
    v64 = mlir::ArrayAttr::getValue(&__p);
    __p = mlir::Operation::getAttrDictionary(v76);
    v65 = mlir::ArrayAttr::getValue(&__p);
    v67 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v64, (v65 + 16 * v66), **(*(v76 + 6) + 96));
    if (v67)
    {
      if (*(*v67 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v68 = v67;
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      v68 = 0;
    }

    __p = v68;
    v69 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::TypeAttr,mlir::IntegerAttr>((a5 + 1), *(a2 + 24), v72, &v75, &v71, &v70, &__p);
    ((*a5)[1])(a5, a2, v69);
    result = 1;
  }

  v28 = result;
  if (v79 != v81)
  {
    free(v79);
    result = v28;
  }

  if (v82 != v84)
  {
    free(v82);
    result = v28;
  }

  if (v85 != v86 + 8)
  {
    free(v85);
    return v28;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::TypeAttr,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::placement::MemrefToTensor::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void *mlir::anec::anonymous namespace::CanonicalizeANEIOWithReshape<mlir::placement::TensorToMemref,mlir::mps::ReshapeOp>::~CanonicalizeANEIOWithReshape(void *a1)
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

void mlir::anec::anonymous namespace::CanonicalizeANEIOWithReshape<mlir::placement::TensorToMemref,mlir::mps::ReshapeOp>::~CanonicalizeANEIOWithReshape(void *__p)
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

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithTypeChangerBase<mlir::placement::TensorToMemref,mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *__p = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(__p);
  if (!result)
  {
    return result;
  }

  if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    return 0;
  }

  v7 = result;
  if (*(*(mlir::Block::getParentOp(*(result + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id || *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: Cannot optimize through stitched regions");
    goto LABEL_31;
  }

  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  v32.n128_u64[0] = v9;
  v32.n128_u64[1] = v8;
  mlir::ResultRange::use_begin(&v32, v30);
  v10 = *(a2 + 36);
  if (v10)
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v10;
  mlir::ResultRange::use_end(&v32, v28);
  v12 = v31;
  v27 = v31;
  *__p = v30[0];
  *&__p[16] = v30[1];
  v13 = v29;
  if (v31 == v29)
  {
    goto LABEL_30;
  }

  v14 = 0;
  do
  {
    v15 = *(v12 + 16);
    if (v15)
    {
      v16 = *(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      if (v14)
      {
        v16 = v14 == v15;
        v14 = v15;
        if (!v16)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = v15;
      }
    }

    mlir::ResultRange::UseIterator::operator++(v30);
    v12 = v31;
  }

  while (v31 != v13);
  *&v30[0] = v14;
  if (!v14)
  {
LABEL_30:
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982810;
    strcpy(*__p, "failed: ANE regionCall op not found");
LABEL_31:
    result = mlir::logMatchFailure(__p, *(a2 + 24), a3);
    if ((__p[23] & 0x80000000) != 0)
    {
      v19 = result;
      operator delete(*__p);
      return v19;
    }

    return result;
  }

  while (1)
  {
    v17 = *(v14 + 16);
    if (!v17)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v17);
    v14 = ParentOp;
    if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_34;
    }
  }

  v14 = 0;
LABEL_34:
  Callee = mlir::placement::RegionCall::getCallee(v30);
  v22 = v21;
  Context = mlir::Attribute::getContext((v14 + 24));
  LOWORD(v27) = 261;
  *__p = Callee;
  *&__p[8] = v22;
  v24 = mlir::StringAttr::get(Context, __p);
  v25 = mlir::SymbolTable::lookupSymbolIn(v14, v24);
  return (*(*a1 + 72))(a1, a2, v7, v25, a3);
}

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithReshape<mlir::placement::TensorToMemref,mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v76 = *(*(a3 + 72) + 24);
  v77 = a2;
  v7 = (*(v76 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v75[0] = v7;
  v75[1] = v8;
  v9 = (*(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v74[0] = v9;
  v74[1] = v10;
  v11 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v73[0] = v11;
  v73[1] = v12;
  if (!mlir::CallOpInterface::getArgOperands(v75))
  {
    goto LABEL_27;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v75);
  if (v14)
  {
    v15 = 8 * v14;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_27;
  }

LABEL_15:
  if (!mlir::CallOpInterface::getArgOperands(v74))
  {
    goto LABEL_27;
  }

  v16 = mlir::CallableOpInterface::getArgAttrsAttr(v74);
  if (v17)
  {
    v18 = 8 * v17;
    while (*v16 != 0x8000000000000000)
    {
      ++v16;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

LABEL_20:
  if (!mlir::CallOpInterface::getArgOperands(v73))
  {
LABEL_27:
    v86 = operator new(0x38uLL);
    v87[0] = xmmword_1E0982900;
    strcpy(v86, "failed: input and output must have static shapes");
    result = mlir::logMatchFailure(&v86, *(v77 + 3), a5);
    if ((SHIBYTE(v87[0]) & 0x80000000) == 0)
    {
      return result;
    }

    v28 = result;
    operator delete(v86);
    return v28;
  }

  v19 = mlir::CallableOpInterface::getArgAttrsAttr(v73);
  if (v20)
  {
    v21 = 8 * v20;
    while (*v19 != 0x8000000000000000)
    {
      ++v19;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

LABEL_25:
  v86 = v87 + 8;
  *&v87[0] = 0x500000000;
  v83 = v85;
  v84 = 0x500000000;
  v80 = v82;
  v81 = 0x500000000;
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v75);
  v24 = v23;
  __p = v79 + 8;
  *&v79[0] = 0x500000000;
  v25 = (8 * v23) >> 3;
  if (v25 < 6)
  {
    v26 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v79 + 8, v25, 8);
    v26 = v79[0];
  }

  if (v24)
  {
    memcpy(__p + 8 * v26, v22, 8 * v24);
    v26 = v79[0];
  }

  LODWORD(v79[0]) = v26 + v24;
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v86, &__p);
  if (__p != v79 + 8)
  {
    free(__p);
  }

  mlir::placement::TensorToMemref::getOutputShapeBeforeInterleave(&v77, &__p);
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v83, &__p);
  if (__p != v79 + 8)
  {
    free(__p);
  }

  v29 = v83;
  v30 = v84;
  LODWORD(v81) = 0;
  if (v84 <= HIDWORD(v81))
  {
    v31 = 0;
    if (!v84)
    {
      goto LABEL_49;
    }

    v32 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v84, 8);
    v31 = v81;
    v32 = v81;
  }

  v33 = v80 + 8 * v32;
  v34 = (v30 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v34 < 7)
  {
    v35 = v29;
    do
    {
LABEL_48:
      v43 = *v35;
      v35 += 8;
      *v33++ = v43;
    }

    while (v35 != &v29[8 * v30]);
    goto LABEL_49;
  }

  v36 = v80 + 8 * v32;
  v35 = v29;
  if ((v36 - v29) < 0x20)
  {
    goto LABEL_48;
  }

  v37 = v34 + 1;
  v38 = 8 * (v37 & 0x3FFFFFFFFFFFFFFCLL);
  v33 = (v33 + v38);
  v35 = &v29[v38];
  v39 = (v29 + 16);
  v40 = v36 + 16;
  v41 = v37 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v42 = *v39;
    *(v40 - 1) = *(v39 - 1);
    *v40 = v42;
    v39 += 2;
    v40 += 2;
    v41 -= 4;
  }

  while (v41);
  if (v37 != (v37 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_48;
  }

LABEL_49:
  v44 = (v31 + v30);
  LODWORD(v81) = v44;
  v45 = v84;
  if (LODWORD(v87[0]) >= v84)
  {
LABEL_58:
    __p = operator new(0x30uLL);
    v79[0] = xmmword_1E09828C0;
    strcpy(__p, "failed: ANE I/O op isn't a squeeze / expandDims");
    result = mlir::logMatchFailure(&__p, *(v77 + 3), a5);
    if (SHIBYTE(v79[0]) < 0)
    {
      v54 = result;
      operator delete(__p);
      result = v54;
    }
  }

  else
  {
    v46 = v83;
    v47 = v86;
    v48 = &v86[8 * LODWORD(v87[0])];
    do
    {
      v51 = *v46++;
      v50 = v51;
      if (v51 == 1)
      {
        v49 = &v86[8 * LODWORD(v87[0])];
        if (v47 != v48)
        {
          v49 = &v47[8 * (*v47 == 1)];
        }
      }

      else
      {
        if (v47 == v48)
        {
          goto LABEL_58;
        }

        v53 = *v47;
        v52 = v47 + 8;
        if (v50 != v53)
        {
          goto LABEL_58;
        }

        v49 = v52;
      }

      v47 = v49;
      --v45;
    }

    while (v45);
    __p = v44;
    IntegerType = mlir::Builder::getIntegerType(a5 + 1, 64, 0);
    v56 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
    if (v56)
    {
      v57 = v56;
      v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v56 + 8);
      v56 = v57;
    }

    else
    {
      v58 = 0;
    }

    v72 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v58, v80, 8 * v81, 8, 1, 0);
    v59 = v77;
    __p = mlir::Operation::getAttrDictionary(v77);
    Value = mlir::ArrayAttr::getValue(&__p);
    __p = mlir::Operation::getAttrDictionary(v77);
    v61 = mlir::ArrayAttr::getValue(&__p);
    v63 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v61 + 16 * v62), *(*(*(v77 + 6) + 96) + 8));
    if (v63)
    {
      if (*(*v63 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0;
      }
    }

    else
    {
      v64 = 0;
    }

    v71 = v64;
    __p = mlir::Operation::getAttrDictionary(v77);
    v65 = mlir::ArrayAttr::getValue(&__p);
    __p = mlir::Operation::getAttrDictionary(v77);
    v66 = mlir::ArrayAttr::getValue(&__p);
    v68 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v65, (v66 + 16 * v67), **(*(v77 + 6) + 96));
    if (v68)
    {
      if (*(*v68 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v69 = v68;
      }

      else
      {
        v69 = 0;
      }
    }

    else
    {
      v69 = 0;
    }

    __p = v69;
    v70 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::TypeAttr,mlir::IntegerAttr>((a5 + 1), *(v59 + 3), v73, &v76, &v72, &v71, &__p);
    ((*a5)[1])(a5, v59, v70);
    result = 1;
  }

  v28 = result;
  if (v80 != v82)
  {
    free(v80);
    result = v28;
  }

  if (v83 != v85)
  {
    free(v83);
    result = v28;
  }

  if (v86 != v87 + 8)
  {
    free(v86);
    return v28;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::TypeAttr,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::placement::MemrefToTensor::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void *mlir::anec::anonymous namespace::CanonicalizeANEIOWithCast<mlir::mps::CastOp,mlir::placement::MemrefToTensor>::~CanonicalizeANEIOWithCast(void *a1)
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

void mlir::anec::anonymous namespace::CanonicalizeANEIOWithCast<mlir::mps::CastOp,mlir::placement::MemrefToTensor>::~CanonicalizeANEIOWithCast(void *__p)
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

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithTypeChangerBase<mlir::mps::CastOp,mlir::placement::MemrefToTensor>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&__p);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      return 0;
    }

    if (*(*(mlir::Block::getParentOp(*(v7 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id || *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
    {
      __p = operator new(0x38uLL);
      v22 = xmmword_1E0982900;
      strcpy(__p, "failed: Cannot optimize through stitched regions");
LABEL_15:
      result = mlir::logMatchFailure(&__p, *(a2 + 24), a3);
      if (SHIBYTE(v22) < 0)
      {
        v12 = result;
        operator delete(__p);
        return v12;
      }

      return result;
    }

    __p = *(*(v7 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&__p);
    if (!DefiningOp || ((v9 = *(*(DefiningOp + 6) + 16), v10 = v9 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, v9 != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id) ? (v11 = 0) : (v11 = DefiningOp), v20 = v11, !v10))
    {
      __p = operator new(0x28uLL);
      v22 = xmmword_1E0982810;
      strcpy(__p, "failed: ANE regionCall op not found");
      goto LABEL_15;
    }

    do
    {
      DefiningOp = *(DefiningOp + 2);
      if (!DefiningOp)
      {
        break;
      }

      DefiningOp = mlir::Block::getParentOp(DefiningOp);
      if (!DefiningOp)
      {
        break;
      }
    }

    while (*(*(DefiningOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v13 = DefiningOp;
    Callee = mlir::placement::RegionCall::getCallee(&v20);
    v16 = v15;
    Context = mlir::Attribute::getContext((v13 + 6));
    v23 = 261;
    __p = Callee;
    *&v22 = v16;
    v18 = mlir::StringAttr::get(Context, &__p);
    v19 = mlir::SymbolTable::lookupSymbolIn(v13, v18);
    return (*(*a1 + 72))(a1, a2, v7, v19, a3);
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithCast<mlir::mps::CastOp,mlir::placement::MemrefToTensor>::matchAndRewrite(int a1, uint64_t *a2, mlir::Operation *a3, mlir::anec *this, uint64_t a5)
{
  v31 = a3;
  if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
  {
    v8 = this;
  }

  else
  {
    v8 = 0;
  }

  __p = v8;
  if (v8)
  {
    AneFamily = mlir::mpsx::ANEOp::getAneFamily(&__p);
    if (mlir::anec::getFamily(AneFamily, v10) <= 2)
    {
LABEL_6:
      __p = operator new(0x40uLL);
      v30 = xmmword_1E0982990;
      strcpy(__p, "failed: F32 I/Os not supported for this ANE architecture");
      goto LABEL_21;
    }
  }

  else if (mlir::anec::getRegionOpFamily(this, a2) <= 2)
  {
    goto LABEL_6;
  }

  v28 = *(*(a3 + 9) + 24);
  v11 = (*(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v27[0] = v11;
  v27[1] = v12;
  v13 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v26[0] = v13;
  v26[1] = v14;
  __p = mlir::ElementsAttr::isSplat(v27);
  if (!mlir::Type::isF16(&__p) || (isSplat = mlir::ElementsAttr::isSplat(v26), !mlir::Type::isF32(&isSplat)))
  {
    __p = operator new(0x40uLL);
    v30 = xmmword_1E09829B0;
    strcpy(__p, "failed: ANE I/O op can only do F16 MemRef <-> F32 Tensor cast");
LABEL_21:
    result = mlir::logMatchFailure(&__p, a2[3], a5);
    if (SHIBYTE(v30) < 0)
    {
      v22 = result;
      operator delete(__p);
      return v22;
    }

    return result;
  }

  isSplat = mlir::placement::MemrefToTensor::getShapeAttr(&v31);
  v15 = mlir::ElementsAttr::isSplat(v26);
  v24 = mlir::TypeAttr::get(v15);
  __p = mlir::Operation::getAttrDictionary(v31);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(v31);
  v17 = mlir::ArrayAttr::getValue(&__p);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v17 + 16 * v18), **(*(v31 + 6) + 96));
  if (v19)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  __p = v20;
  v23 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::TypeAttr,mlir::IntegerAttr>((a5 + 8), a2[3], v26, &v28, &isSplat, &v24, &__p);
  (*(*a5 + 8))(a5, a2, v23);
  return 1;
}

void *mlir::anec::anonymous namespace::CanonicalizeANEIOWithCast<mlir::placement::TensorToMemref,mlir::mps::CastOp>::~CanonicalizeANEIOWithCast(void *a1)
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

void mlir::anec::anonymous namespace::CanonicalizeANEIOWithCast<mlir::placement::TensorToMemref,mlir::mps::CastOp>::~CanonicalizeANEIOWithCast(void *__p)
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

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithTypeChangerBase<mlir::placement::TensorToMemref,mlir::mps::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *__p = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(__p);
  if (!result)
  {
    return result;
  }

  if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    return 0;
  }

  v7 = result;
  if (*(*(mlir::Block::getParentOp(*(result + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id || *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: Cannot optimize through stitched regions");
    goto LABEL_31;
  }

  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  v32.n128_u64[0] = v9;
  v32.n128_u64[1] = v8;
  mlir::ResultRange::use_begin(&v32, v30);
  v10 = *(a2 + 36);
  if (v10)
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v10;
  mlir::ResultRange::use_end(&v32, v28);
  v12 = v31;
  v27 = v31;
  *__p = v30[0];
  *&__p[16] = v30[1];
  v13 = v29;
  if (v31 == v29)
  {
    goto LABEL_30;
  }

  v14 = 0;
  do
  {
    v15 = *(v12 + 16);
    if (v15)
    {
      v16 = *(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      if (v14)
      {
        v16 = v14 == v15;
        v14 = v15;
        if (!v16)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = v15;
      }
    }

    mlir::ResultRange::UseIterator::operator++(v30);
    v12 = v31;
  }

  while (v31 != v13);
  *&v30[0] = v14;
  if (!v14)
  {
LABEL_30:
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982810;
    strcpy(*__p, "failed: ANE regionCall op not found");
LABEL_31:
    result = mlir::logMatchFailure(__p, *(a2 + 24), a3);
    if ((__p[23] & 0x80000000) != 0)
    {
      v19 = result;
      operator delete(*__p);
      return v19;
    }

    return result;
  }

  while (1)
  {
    v17 = *(v14 + 16);
    if (!v17)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v17);
    v14 = ParentOp;
    if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_34;
    }
  }

  v14 = 0;
LABEL_34:
  Callee = mlir::placement::RegionCall::getCallee(v30);
  v22 = v21;
  Context = mlir::Attribute::getContext((v14 + 24));
  LOWORD(v27) = 261;
  *__p = Callee;
  *&__p[8] = v22;
  v24 = mlir::StringAttr::get(Context, __p);
  v25 = mlir::SymbolTable::lookupSymbolIn(v14, v24);
  return (*(*a1 + 72))(a1, a2, v7, v25, a3);
}

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithCast<mlir::placement::TensorToMemref,mlir::mps::CastOp>::matchAndRewrite(int a1, uint64_t *a2, uint64_t a3, mlir::anec *this, uint64_t a5)
{
  v31 = a2;
  if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
  {
    v8 = this;
  }

  else
  {
    v8 = 0;
  }

  __p = v8;
  if (v8)
  {
    AneFamily = mlir::mpsx::ANEOp::getAneFamily(&__p);
    if (mlir::anec::getFamily(AneFamily, v10) <= 2)
    {
LABEL_6:
      __p = operator new(0x40uLL);
      v30 = xmmword_1E0982990;
      strcpy(__p, "failed: F32 I/Os not supported for this ANE architecture");
      goto LABEL_21;
    }
  }

  else if (mlir::anec::getRegionOpFamily(this, a2) <= 2)
  {
    goto LABEL_6;
  }

  v28 = *(*(a3 + 72) + 24);
  v11 = (*(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v27[0] = v11;
  v27[1] = v12;
  v13 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v26[0] = v13;
  v26[1] = v14;
  __p = mlir::ElementsAttr::isSplat(v27);
  if (!mlir::Type::isF32(&__p) || (isSplat = mlir::ElementsAttr::isSplat(v26), !mlir::Type::isF16(&isSplat)))
  {
    __p = operator new(0x40uLL);
    v30 = xmmword_1E09829B0;
    strcpy(__p, "failed: ANE I/O op can only do F16 MemRef <-> F32 Tensor cast");
LABEL_21:
    result = mlir::logMatchFailure(&__p, a2[3], a5);
    if (SHIBYTE(v30) < 0)
    {
      v22 = result;
      operator delete(__p);
      return v22;
    }

    return result;
  }

  isSplat = mlir::placement::MemrefToTensor::getShapeAttr(&v31);
  v15 = mlir::ElementsAttr::isSplat(v26);
  v24 = mlir::TypeAttr::get(v15);
  __p = mlir::Operation::getAttrDictionary(v31);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(v31);
  v17 = mlir::ArrayAttr::getValue(&__p);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v17 + 16 * v18), **(*(v31 + 6) + 96));
  if (v19)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  __p = v20;
  v23 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::TypeAttr,mlir::IntegerAttr>((a5 + 8), a2[3], v26, &v28, &isSplat, &v24, &__p);
  (*(*a5 + 8))(a5, a2, v23);
  return 1;
}

void *mlir::anec::anonymous namespace::CanonicalizeANEIOWithInterleave<mlir::mpsx::InterleaveOp,mlir::placement::MemrefToTensor>::~CanonicalizeANEIOWithInterleave(void *a1)
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

void mlir::anec::anonymous namespace::CanonicalizeANEIOWithInterleave<mlir::mpsx::InterleaveOp,mlir::placement::MemrefToTensor>::~CanonicalizeANEIOWithInterleave(void *__p)
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

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithTypeChangerBase<mlir::mpsx::InterleaveOp,mlir::placement::MemrefToTensor>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&__p);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      return 0;
    }

    if (*(*(mlir::Block::getParentOp(*(v7 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id || *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
    {
      __p = operator new(0x38uLL);
      v22 = xmmword_1E0982900;
      strcpy(__p, "failed: Cannot optimize through stitched regions");
LABEL_15:
      result = mlir::logMatchFailure(&__p, *(a2 + 24), a3);
      if (SHIBYTE(v22) < 0)
      {
        v12 = result;
        operator delete(__p);
        return v12;
      }

      return result;
    }

    __p = *(*(v7 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&__p);
    if (!DefiningOp || ((v9 = *(*(DefiningOp + 6) + 16), v10 = v9 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, v9 != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id) ? (v11 = 0) : (v11 = DefiningOp), v20 = v11, !v10))
    {
      __p = operator new(0x28uLL);
      v22 = xmmword_1E0982810;
      strcpy(__p, "failed: ANE regionCall op not found");
      goto LABEL_15;
    }

    do
    {
      DefiningOp = *(DefiningOp + 2);
      if (!DefiningOp)
      {
        break;
      }

      DefiningOp = mlir::Block::getParentOp(DefiningOp);
      if (!DefiningOp)
      {
        break;
      }
    }

    while (*(*(DefiningOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v13 = DefiningOp;
    Callee = mlir::placement::RegionCall::getCallee(&v20);
    v16 = v15;
    Context = mlir::Attribute::getContext((v13 + 6));
    v23 = 261;
    __p = Callee;
    *&v22 = v16;
    v18 = mlir::StringAttr::get(Context, &__p);
    v19 = mlir::SymbolTable::lookupSymbolIn(v13, v18);
    return (*(*a1 + 72))(a1, a2, v7, v19, a3);
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithInterleave<mlir::mpsx::InterleaveOp,mlir::placement::MemrefToTensor>::matchAndRewrite(int a1, mlir::Operation *this, mlir::Operation *a3, uint64_t a4, uint64_t a5)
{
  v29 = *(*(a3 + 9) + 24);
  v30 = a3;
  __p = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(this);
  v9 = mlir::ArrayAttr::getValue(&__p);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v9 + 16 * v10), **(*(this + 6) + 96));
  __p = mlir::Operation::getAttrDictionary(a3);
  v11 = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(a3);
  v12 = mlir::ArrayAttr::getValue(&__p);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v11, (v12 + 16 * v13), **(*(a3 + 6) + 96));
  if (v14 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    __p = operator new(0x58uLL);
    v27 = xmmword_1E0999AA0;
    strcpy(__p, "failed to fold interleave: interTensorMemref op already has an interleave attribute");
    result = mlir::logMatchFailure(&__p, *(this + 3), a5);
    if (SHIBYTE(v27) < 0)
    {
      v24 = result;
      operator delete(__p);
      return v24;
    }
  }

  else
  {
    v15 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v15)
    {
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    __p = v15;
    *&v27 = v16;
    ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(&v30);
    AttrDictionary = mlir::Operation::getAttrDictionary(v30);
    v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
    AttrDictionary = mlir::Operation::getAttrDictionary(v30);
    v18 = mlir::ArrayAttr::getValue(&AttrDictionary);
    v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v17, (v18 + 16 * v19), *(*(*(v30 + 6) + 96) + 8));
    if (v20)
    {
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    AttrDictionary = v21;
    v22 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::TypeAttr,mlir::IntegerAttr>((a5 + 8), *(this + 3), &__p, &v29, &ShapeAttr, &AttrDictionary, &v28);
    (*(*a5 + 8))(a5, this, v22);
    return 1;
  }

  return result;
}

void *mlir::anec::anonymous namespace::CanonicalizeANEIOWithInterleave<mlir::placement::TensorToMemref,mlir::mpsx::DeinterleaveOp>::~CanonicalizeANEIOWithInterleave(void *a1)
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

void mlir::anec::anonymous namespace::CanonicalizeANEIOWithInterleave<mlir::placement::TensorToMemref,mlir::mpsx::DeinterleaveOp>::~CanonicalizeANEIOWithInterleave(void *__p)
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

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithTypeChangerBase<mlir::placement::TensorToMemref,mlir::mpsx::DeinterleaveOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *__p = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(__p);
  if (!result)
  {
    return result;
  }

  if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::DeinterleaveOp,void>::id)
  {
    return 0;
  }

  v7 = result;
  if (*(*(mlir::Block::getParentOp(*(result + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id || *(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: Cannot optimize through stitched regions");
    goto LABEL_31;
  }

  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  v32.n128_u64[0] = v9;
  v32.n128_u64[1] = v8;
  mlir::ResultRange::use_begin(&v32, v30);
  v10 = *(a2 + 36);
  if (v10)
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v10;
  mlir::ResultRange::use_end(&v32, v28);
  v12 = v31;
  v27 = v31;
  *__p = v30[0];
  *&__p[16] = v30[1];
  v13 = v29;
  if (v31 == v29)
  {
    goto LABEL_30;
  }

  v14 = 0;
  do
  {
    v15 = *(v12 + 16);
    if (v15)
    {
      v16 = *(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      if (v14)
      {
        v16 = v14 == v15;
        v14 = v15;
        if (!v16)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = v15;
      }
    }

    mlir::ResultRange::UseIterator::operator++(v30);
    v12 = v31;
  }

  while (v31 != v13);
  *&v30[0] = v14;
  if (!v14)
  {
LABEL_30:
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982810;
    strcpy(*__p, "failed: ANE regionCall op not found");
LABEL_31:
    result = mlir::logMatchFailure(__p, *(a2 + 24), a3);
    if ((__p[23] & 0x80000000) != 0)
    {
      v19 = result;
      operator delete(*__p);
      return v19;
    }

    return result;
  }

  while (1)
  {
    v17 = *(v14 + 16);
    if (!v17)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v17);
    v14 = ParentOp;
    if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_34;
    }
  }

  v14 = 0;
LABEL_34:
  Callee = mlir::placement::RegionCall::getCallee(v30);
  v22 = v21;
  Context = mlir::Attribute::getContext((v14 + 24));
  LOWORD(v27) = 261;
  *__p = Callee;
  *&__p[8] = v22;
  v24 = mlir::StringAttr::get(Context, __p);
  v25 = mlir::SymbolTable::lookupSymbolIn(v14, v24);
  return (*(*a1 + 72))(a1, a2, v7, v25, a3);
}

uint64_t mlir::anec::anonymous namespace::CanonicalizeANEIOWithInterleave<mlir::placement::TensorToMemref,mlir::mpsx::DeinterleaveOp>::matchAndRewrite(int a1, uint64_t *a2, mlir::Operation *this, uint64_t a4, uint64_t a5)
{
  v29 = *(*(this + 9) + 24);
  v30 = a2;
  __p = mlir::Operation::getAttrDictionary(this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(this);
  v9 = mlir::ArrayAttr::getValue(&__p);
  v28 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v9 + 16 * v10), **(*(this + 6) + 96));
  __p = mlir::Operation::getAttrDictionary(a2);
  v11 = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(a2);
  v12 = mlir::ArrayAttr::getValue(&__p);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v11, (v12 + 16 * v13), **(a2[6] + 96));
  if (v14 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    __p = operator new(0x58uLL);
    v27 = xmmword_1E0999AA0;
    strcpy(__p, "failed to fold interleave: interTensorMemref op already has an interleave attribute");
    result = mlir::logMatchFailure(&__p, a2[3], a5);
    if (SHIBYTE(v27) < 0)
    {
      v24 = result;
      operator delete(__p);
      return v24;
    }
  }

  else
  {
    v15 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v15)
    {
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    __p = v15;
    *&v27 = v16;
    ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(&v30);
    AttrDictionary = mlir::Operation::getAttrDictionary(v30);
    v17 = mlir::ArrayAttr::getValue(&AttrDictionary);
    AttrDictionary = mlir::Operation::getAttrDictionary(v30);
    v18 = mlir::ArrayAttr::getValue(&AttrDictionary);
    v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v17, (v18 + 16 * v19), *(*(*(v30 + 6) + 96) + 8));
    if (v20)
    {
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    AttrDictionary = v21;
    v22 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::TypeAttr,mlir::IntegerAttr>((a5 + 8), a2[3], &__p, &v29, &ShapeAttr, &AttrDictionary, &v28);
    (*(*a5 + 8))(a5, a2, v22);
    return 1;
  }

  return result;
}

void mlir::anec::anonymous namespace::CanonicalizePlacementRegionEnter::~CanonicalizePlacementRegionEnter(mlir::anec::_anonymous_namespace_::CanonicalizePlacementRegionEnter *this)
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

uint64_t mlir::anec::anonymous namespace::CanonicalizePlacementRegionEnter::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84[5] = *MEMORY[0x1E69E9840];
  v7 = a2 - 16;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v75[0] = v9;
  v75[1] = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(v75);
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = &v74;
  v70 = &v72;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 1)
  {
    return 0;
  }

  v13 = v11;
  result = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::BufferToTensorOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::any_value_binder>>>(a2, 0, &v70);
  if (result)
  {
    v82 = v71;
    mlir::mpsx::BufferToTensorOp::getShape(&v82);
    if (v14 & 1) == 0 || (__src = v73, mlir::mpsx::BufferToTensorOp::getShape(&__src), (v15))
    {
      return v82;
    }

    v69 = v71;
    mlir::mpsx::BufferToTensorOp::getInterleave(&v69);
    if ((v16 & 1) == 0)
    {
      goto LABEL_79;
    }

    v82 = v84;
    v83 = 0x500000000;
    if (v13)
    {
      v17 = v13;
      if (v13 < 6)
      {
        v18 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, v13, 8);
        v17 = v13;
        v18 = v83;
      }

      if (v17 != v18)
      {
        bzero(v82 + 8 * v18, 8 * (v17 - v18));
        LODWORD(v17) = v13;
      }

      LODWORD(v83) = v17;
    }

    __src = mlir::mpsx::BufferToTensorOp::getInterleave(&v69);
    LOBYTE(v80) = v19;
    if ((v19 & 1) == 0)
    {
LABEL_40:
      v27 = (*(*(*(v69 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
      if (v28)
      {
        v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
      }

      else
      {
        v27 = 0;
      }

      __src = v27;
      v80 = v28;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__src);
      __src = v81;
      v80 = 0x500000000;
      if (v13 == 4 && v30 == 3)
      {
        v31 = 1;
        v81[0] = 1;
        LODWORD(v80) = 1;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        if (!v30)
        {
          goto LABEL_51;
        }
      }

      v32 = v31;
      do
      {
        v34 = *ArgAttrsAttr;
        ArgAttrsAttr += 2;
        v33 = v34;
        if (v32 >= HIDWORD(v80))
        {
          v35 = ArgAttrsAttr;
          v36 = v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v81, v32 + 1, 4);
          v30 = v36;
          ArgAttrsAttr = v35;
          v32 = v80;
        }

        *(__src + v32) = v33;
        v32 = v80 + 1;
        LODWORD(v80) = v80 + 1;
        --v30;
      }

      while (v30);
LABEL_51:
      v37 = v83;
      if (v83)
      {
        v38 = v82;
        v39 = 1;
        do
        {
          v41 = *v38;
          v38 = (v38 + 8);
          v40 = v41;
          if (v41 > 1)
          {
            v39 = v40;
          }

          --v37;
        }

        while (v37);
      }

      else
      {
        v39 = 1;
      }

      v42 = *(a2 + 24);
      v64[0] = v74;
      v76 = v78;
      v77 = 0x500000000;
      if (!v32)
      {
LABEL_65:
        ResultElementType = mlir::mpsx::BufferToTensorOp::getResultElementType(&v69);
        if (v46)
        {
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(ResultElementType);
          v66 = mlir::TypeAttr::get(ElementTypeOrSelf);
          IntegerType = mlir::Builder::getIntegerType((a3 + 8), 32, 0);
          v65 = mlir::IntegerAttr::get(IntegerType, v39);
          v49 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::IntegerAttr>((a3 + 8), v42, v64, &v67, &v66, &v65);
          v68 = v49 - 16;
          if (v76 != v78)
          {
            free(v76);
          }

          if (*(a2 + 36))
          {
            v50 = v7;
          }

          else
          {
            v50 = 0;
          }

          v67 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          v64[0] = mlir::DenseElementsAttr::getRawStringData(&v67);
          v64[1] = v51;
          CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v64);
          if (*(a2 + 36))
          {
            v53 = v7;
          }

          else
          {
            v53 = 0;
          }

          v64[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v53, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          Value = mlir::ArrayAttr::getValue(v64);
          v56 = v55;
          RHS = mlir::AffineBinaryOpExpr::getRHS(v64);
          *(v49 - 8) = *(v49 - 8) & 7 | mlir::MemRefType::get(Value, v56, RHS, CallableForCallee, 0);
          (**a3)(a3, a2, &v68, 1);
          if (__src != v81)
          {
            free(__src);
          }

          if (v82 != v84)
          {
            free(v82);
          }

          return 1;
        }

LABEL_79:
        v58 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::IntegerAttr>(v58, v59, v60, v61, v62, v63);
      }

      if (v32 < 6)
      {
        v44 = v78;
        v43 = v32;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v32, 4);
        v43 = v80;
        if (!v80)
        {
LABEL_64:
          LODWORD(v77) = v32;
          goto LABEL_65;
        }

        v44 = v76;
      }

      memcpy(v44, __src, 4 * v43);
      goto LABEL_64;
    }

    if (mlir::DenseElementsAttr::isValidIntOrFloat(&__src, 8, 1, 0))
    {
      RawStringData = mlir::DenseElementsAttr::getRawStringData(&__src);
      isSplat = mlir::DenseElementsAttr::isSplat(&__src);
      mlir::ArrayAttr::getValue(&__src);
      mlir::DenseElementsAttr::getNumElements(&__src);
    }

    else
    {
      RawStringData = 0;
    }

    if (mlir::DenseElementsAttr::isValidIntOrFloat(&__src, 8, 1, 0))
    {
      mlir::DenseElementsAttr::getRawStringData(&__src);
      mlir::DenseElementsAttr::isSplat(&__src);
      mlir::ArrayAttr::getValue(&__src);
      NumElements = mlir::DenseElementsAttr::getNumElements(&__src);
      v4 = NumElements;
      LODWORD(v83) = 0;
      if (NumElements <= HIDWORD(v83))
      {
        v22 = 0;
        v23 = 0;
        if (!NumElements)
        {
LABEL_39:
          LODWORD(v83) = v23;
          goto LABEL_40;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v84, NumElements, 8);
        v22 = v83;
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = 0;
    v25 = v82 + 8 * v22;
    do
    {
      if (isSplat)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      *&v25[8 * v24++] = *(RawStringData + 8 * v26);
    }

    while (v4 != v24);
    v23 = v22 + v4;
    goto LABEL_39;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::IntegerAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::placement::TensorToMemref::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::anec::anonymous namespace::arrayToU64Attr(uint64_t a1, void *a2, uint64_t a3)
{
  v18[6] = *MEMORY[0x1E69E9840];
  IntegerType = mlir::Builder::getIntegerType((a1 + 8), 64, 0);
  v6 = operator new(8uLL);
  *v6 = a3;
  v7 = mlir::RankedTensorType::get(v6, 1, IntegerType, 0);
  v16 = v18;
  v17 = 0x600000000;
  v8 = 0;
  if (a3)
  {
    v9 = 0;
    do
    {
      v10 = *(*a2 + 4 * v9);
      if (v8 >= HIDWORD(v17))
      {
        v11 = v7;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v8 + 1, 8);
        v7 = v11;
        v8 = v17;
      }

      *(v16 + v8) = v10;
      v8 = v17 + 1;
      LODWORD(v17) = v17 + 1;
      ++v9;
    }

    while (a3 != v9);
  }

  if (v7)
  {
    v12 = v7;
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v7 = v12;
    v8 = v17;
  }

  else
  {
    v13 = 0;
  }

  v14 = mlir::DenseElementsAttr::getFromRawBuffer(v7, v13, v16, 8 * v8, 8, 1, 0);
  if (v16 != v18)
  {
    free(v16);
  }

  operator delete(v6);
  return v14;
}

void mlir::anec::anonymous namespace::CanonicalizePlacementRegionExit::~CanonicalizePlacementRegionExit(mlir::anec::_anonymous_namespace_::CanonicalizePlacementRegionExit *this)
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

uint64_t mlir::anec::anonymous namespace::CanonicalizePlacementRegionExit::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72[5] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v63[0] = v8;
  v63[1] = v9;
  mlir::CallableOpInterface::getArgAttrsAttr(v63);
  v61[1] = 0;
  v62 = 0;
  v60 = 0;
  v61[0] = &v62;
  v59 = v61;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 1)
  {
    return 0;
  }

  v12 = v10;
  result = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mpsx::TensorToBufferOp,mlir::detail::RecursivePatternMatcherBinder<mlir::placement::MemrefToTensor,mlir::detail::any_value_binder>>>(a2, 0, &v59);
  if (result)
  {
    v70 = a2;
    mlir::mpsx::BufferToTensorOp::getShape(&v70);
    if ((v13 & 1) != 0 || (__src = v60, mlir::mpsx::BufferToTensorOp::getShape(&__src), (v14 & 1) == 0))
    {
      return v70;
    }

    v58 = v60;
    mlir::mpsx::BufferToTensorOp::getInterleave(&v58);
    if ((v15 & 1) == 0)
    {
      goto LABEL_72;
    }

    v70 = v72;
    v71 = 0x500000000;
    if (v12)
    {
      v16 = v12;
      if (v12 < 6)
      {
        v17 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v12, 8);
        v16 = v12;
        v17 = v71;
      }

      if (v16 != v17)
      {
        bzero(v70 + 8 * v17, 8 * (v16 - v17));
        LODWORD(v16) = v12;
      }

      LODWORD(v71) = v16;
    }

    __src = mlir::mpsx::BufferToTensorOp::getInterleave(&v58);
    LOBYTE(v68) = v18;
    if ((v18 & 1) == 0)
    {
LABEL_40:
      if (v12 < 1)
      {
        v28 = 1;
      }

      else
      {
        v26 = v12;
        v27 = v70;
        v28 = 1;
        do
        {
          v30 = *v27;
          v27 = (v27 + 8);
          v29 = v30;
          if (v30 > 1)
          {
            v28 = v29;
          }

          --v26;
        }

        while (v26);
      }

      v31 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
      if (v32)
      {
        v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
      }

      else
      {
        v31 = 0;
      }

      __src = v31;
      v68 = v32;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__src);
      __src = v69;
      v68 = 0x500000000;
      if (v12 < 1)
      {
        v35 = 0;
      }

      else
      {
        v34 = v12;
        v35 = 0;
        do
        {
          v37 = *ArgAttrsAttr;
          ArgAttrsAttr += 2;
          v36 = v37;
          if (v35 >= HIDWORD(v68))
          {
            v38 = v35;
            v39 = ArgAttrsAttr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v69, v38 + 1, 4);
            ArgAttrsAttr = v39;
            v35 = v68;
          }

          *(__src + v35) = v36;
          v35 = v68 + 1;
          LODWORD(v68) = v68 + 1;
          --v34;
        }

        while (v34);
      }

      v40 = *(a2 + 24);
      v56 = v62;
      v64 = v66;
      v65 = 0x500000000;
      if (!v35)
      {
LABEL_64:
        ResultElementType = mlir::mpsx::BufferToTensorOp::getResultElementType(&v58);
        if (v44)
        {
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(ResultElementType);
          v54 = mlir::TypeAttr::get(ElementTypeOrSelf);
          IntegerType = mlir::Builder::getIntegerType((a3 + 8), 32, 0);
          v53 = mlir::IntegerAttr::get(IntegerType, v28);
          v57 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::IntegerAttr>((a3 + 8), v40, &v56, &v55, &v54, &v53) - 16;
          if (v64 != v66)
          {
            free(v64);
          }

          (**a3)(a3, a2, &v57, 1);
          if (__src != v69)
          {
            free(__src);
          }

          if (v70 != v72)
          {
            free(v70);
          }

          return 1;
        }

LABEL_72:
        v47 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::IntegerAttr>(v47, v48, v49, v50, v51, v52);
      }

      if (v35 < 6)
      {
        v42 = v66;
        v41 = v35;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v35, 4);
        v41 = v68;
        if (!v68)
        {
LABEL_63:
          LODWORD(v65) = v35;
          goto LABEL_64;
        }

        v42 = v64;
      }

      memcpy(v42, __src, 4 * v41);
      goto LABEL_63;
    }

    if (mlir::DenseElementsAttr::isValidIntOrFloat(&__src, 8, 1, 0))
    {
      RawStringData = mlir::DenseElementsAttr::getRawStringData(&__src);
      isSplat = mlir::DenseElementsAttr::isSplat(&__src);
      mlir::ArrayAttr::getValue(&__src);
      mlir::DenseElementsAttr::getNumElements(&__src);
    }

    else
    {
      RawStringData = 0;
    }

    if (mlir::DenseElementsAttr::isValidIntOrFloat(&__src, 8, 1, 0))
    {
      mlir::DenseElementsAttr::getRawStringData(&__src);
      mlir::DenseElementsAttr::isSplat(&__src);
      mlir::ArrayAttr::getValue(&__src);
      NumElements = mlir::DenseElementsAttr::getNumElements(&__src);
      v4 = NumElements;
      LODWORD(v71) = 0;
      if (NumElements <= HIDWORD(v71))
      {
        v21 = 0;
        v22 = 0;
        if (!NumElements)
        {
LABEL_39:
          LODWORD(v71) = v22;
          goto LABEL_40;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, NumElements, 8);
        v21 = v71;
      }
    }

    else
    {
      v21 = 0;
    }

    v23 = 0;
    v24 = v70 + 8 * v21;
    do
    {
      if (isSplat)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      *&v24[8 * v23++] = *(RawStringData + 8 * v25);
    }

    while (v4 != v23);
    v22 = v21 + v4;
    goto LABEL_39;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::IntegerAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::placement::MemrefToTensor::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anec::anonymous namespace::LowerDuplicateMemrefToTensor::~LowerDuplicateMemrefToTensor(mlir::anec::_anonymous_namespace_::LowerDuplicateMemrefToTensor *this)
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

uint64_t mlir::anec::anonymous namespace::LowerDuplicateMemrefToTensor::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 9) + 24);
  v49 = v4;
  v50 = a2;
  ShapeAttr = mlir::placement::MemrefToTensor::getShapeAttr(&v50);
  AttrDictionary = mlir::Operation::getAttrDictionary(v50);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v50);
  v7 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v9 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v7 + 16 * v8), *(*(*(v50 + 6) + 96) + 8));
  if (v9)
  {
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v48 = v10;
  AttrDictionary = mlir::Operation::getAttrDictionary(v50);
  v11 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(v50);
  v12 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v11, (v12 + 16 * v13), **(*(v50 + 6) + 96));
  if (v14)
  {
    if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v47 = v15;
    if (ShapeAttr)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v47 = 0;
    if (ShapeAttr)
    {
      goto LABEL_15;
    }
  }

  if (!v10 && !v15)
  {
    return 0;
  }

LABEL_15:
  v16 = *v4;
  if (!v16)
  {
    return 0;
  }

  while (1)
  {
    v17 = v16[2];
    if (*(*(v17 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
    {
      v17 = 0;
    }

    v46 = v17;
    if (v17)
    {
      v18 = v17 == v50;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_18;
    }

    Shape = mlir::placement::MemrefToTensor::getShape(&v46);
    if ((v20 & 1) == 0 || ShapeAttr != Shape)
    {
      goto LABEL_39;
    }

    AttrDictionary = mlir::Operation::getAttrDictionary(v46);
    v21 = mlir::ArrayAttr::getValue(&AttrDictionary);
    AttrDictionary = mlir::Operation::getAttrDictionary(v46);
    v22 = mlir::ArrayAttr::getValue(&AttrDictionary);
    v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v21, (v22 + 16 * v23), *(*(*(v46 + 6) + 96) + 8));
    if (v24)
    {
      break;
    }

    if (v10)
    {
      goto LABEL_39;
    }

LABEL_34:
    AttrDictionary = mlir::Operation::getAttrDictionary(v46);
    v26 = mlir::ArrayAttr::getValue(&AttrDictionary);
    AttrDictionary = mlir::Operation::getAttrDictionary(v46);
    v27 = mlir::ArrayAttr::getValue(&AttrDictionary);
    v29 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v26, (v27 + 16 * v28), **(*(v46 + 6) + 96));
    if (v29)
    {
      if (*(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v15 != v30)
      {
        goto LABEL_39;
      }
    }

    else if (v15)
    {
      goto LABEL_39;
    }

LABEL_18:
    v16 = *v16;
    if (!v16)
    {
      return 0;
    }
  }

  if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v10 == v25)
  {
    goto LABEL_34;
  }

LABEL_39:
  v31 = (mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>((a3 + 8), *(v50 + 3), &v49) - 16);
  v46 = v31;
  if (v15)
  {
    v31 = (mlir::OpBuilder::create<mlir::mpsx::InterleaveOp,mlir::Value &,mlir::IntegerAttr &>((a3 + 8), *(v50 + 3), &v46, &v47) - 16);
    v46 = v31;
  }

  if (ShapeAttr)
  {
    if (*(v50 + 9))
    {
      v32 = v50 - 16;
    }

    else
    {
      v32 = 0;
    }

    v33 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v32, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v33)
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
    }

    else
    {
      v34 = 0;
    }

    AttrDictionary = v33;
    v54 = v34;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary);
    v39 = v38;
    v40 = *(v50 + 3);
    v51 = v38;
    IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
    v42 = mlir::RankedTensorType::get(&v51, 1, IntegerType, 0);
    if (v42)
    {
      v43 = v42;
      v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
      v42 = v43;
    }

    else
    {
      v44 = 0;
    }

    v52 = mlir::DenseElementsAttr::getFromRawBuffer(v42, v44, ArgAttrsAttr, 8 * v39, 8, 1, 1);
    AttrDictionary = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v40, &v52);
    v31 = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), *(v50 + 3), &v46, &AttrDictionary) - 16);
    v46 = v31;
  }

  if (v10)
  {
    v31 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>((a3 + 8), *(v50 + 3), &v46, &v48) - 16);
    v46 = v31;
  }

  v45 = v50;
  v52 = v31;
  v35 = 1;
  mlir::ValueRange::ValueRange(&AttrDictionary, &v52, 1uLL);
  (**a3)(a3, v45, AttrDictionary, v54);
  return v35;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::InterleaveOp,mlir::Value &,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::InterleaveOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::InterleaveOp,mlir::Value &,mlir::IntegerAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mpsx::InterleaveOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::InterleaveOp,void>::id)
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

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4anec12_GLOBAL__N_134ANECRegionCallCanonicalizationPass12canonicalizeES3_E3__0NS1_9placement10RegionCallEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t a1, mlir::Operation *a2)
{
  v142 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (*(*(a2 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
  {
    return;
  }

  v123 = a2;
  if (mlir::placement::RegionCall::getRegionType(&v123) != 1)
  {
    return;
  }

  v125 = v123;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v125, 0);
  if ((*(v125 + 46) & 0x80) != 0)
  {
    v3 = *(v125 + 9);
  }

  else
  {
    v3 = 0;
  }

  v4 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
  v5 = v4 - ODSOperandIndexAndLength;
  if (v4 != ODSOperandIndexAndLength)
  {
    v40 = 0;
    v41 = v3 + 32 * ODSOperandIndexAndLength;
    while (1)
    {
      v124 = *(v41 + 32 * v40 + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v124);
      v131[0] = DefiningOp;
      AttrDictionary = mlir::Operation::getAttrDictionary(DefiningOp);
      Value = mlir::ArrayAttr::getValue(&AttrDictionary);
      AttrDictionary = mlir::Operation::getAttrDictionary(DefiningOp);
      v44 = mlir::ArrayAttr::getValue(&AttrDictionary);
      v46 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v44 + 16 * v45), *(*(*(DefiningOp + 6) + 96) + 8));
      if (v46 && *(*v46 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        goto LABEL_43;
      }

      AttrDictionary = mlir::Operation::getAttrDictionary(DefiningOp);
      v47 = mlir::ArrayAttr::getValue(&AttrDictionary);
      AttrDictionary = mlir::Operation::getAttrDictionary(v131[0]);
      v48 = mlir::ArrayAttr::getValue(&AttrDictionary);
      v50 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v47, (v48 + 16 * v49), **(*(v131[0] + 6) + 96));
      if (v50)
      {
        if (*(*v50 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          break;
        }
      }

LABEL_37:
      if (++v40 == v5)
      {
        goto LABEL_7;
      }
    }

    DefiningOp = v131[0];
LABEL_43:
    if (*(DefiningOp + 9))
    {
      v51 = DefiningOp - 16;
    }

    else
    {
      v51 = 0;
    }

    v130 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v51, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v52 = (*(*(*(v131[0] + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v52)
    {
      v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
    }

    else
    {
      v53 = 0;
    }

    v128 = v52;
    v129 = v53;
    AttrDictionary = mlir::AffineBinaryOpExpr::getRHS(&v130);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    AttrDictionary = mlir::ElementsAttr::isSplat(&v128);
    v55 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    AttrDictionary = &v139;
    v138 = 0x500000000;
    mlir::placement::TensorToMemref::getOutputShapeBeforeInterleave(v131, &v134);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&AttrDictionary, &v134);
    if (v134 != v136)
    {
      free(v134);
    }

    v134 = v136;
    v135 = 0x500000000;
    RawStringData = mlir::Operation::getAttrDictionary(v131[0]);
    v56 = mlir::ArrayAttr::getValue(&RawStringData);
    RawStringData = mlir::Operation::getAttrDictionary(v131[0]);
    v57 = mlir::ArrayAttr::getValue(&RawStringData);
    v59 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v56, (v57 + 16 * v58), **(*(v131[0] + 6) + 96));
    if (v59 && *(*v59 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      RawStringData = mlir::DenseElementsAttr::getRawStringData(&v130);
      v133 = v61;
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&RawStringData);
      Results = mlir::AffineMap::getResults(&CallableForCallee);
      v63 = *Results;
      if (*Results && (RawStringData = *Results, mlir::arith::FastMathFlagsAttr::getValue(&RawStringData) < 5))
      {
        v64 = v63;
      }

      else
      {
        v64 = 0;
      }

      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&RawStringData, v64);
      CallableForCallee = RawStringData;
      if (RawStringData && !mlir::arith::FastMathFlagsAttr::getValue(&CallableForCallee))
      {
        RHS = mlir::AffineBinaryOpExpr::getRHS(&CallableForCallee);
        if (RHS && (v81 = RHS, RawStringData = RHS, mlir::arith::FastMathFlagsAttr::getValue(&RawStringData) < 5))
        {
          v82 = v81;
        }

        else
        {
          v82 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&RawStringData, v82);
        v126 = RawStringData;
        if (RawStringData)
        {
          if (mlir::arith::FastMathFlagsAttr::getValue(&v126) == 2)
          {
            goto LABEL_71;
          }
        }
      }

      Interleave = mlir::placement::MemrefToTensor::getInterleave(v131);
      ANENextSupportedInterleaveValue = mlir::getANENextSupportedInterleaveValue(Interleave);
      v67 = AttrDictionary;
      v68 = v138;
      *(AttrDictionary + v138 - 1) = *(AttrDictionary + v138 - 1) / Interleave * ANENextSupportedInterleaveValue;
      mlir::getRowBytesAlignedStrideInBytes(v67, v68, IntOrFloatBitWidth >> 3, 0x40uLL, &v134);
      v60 = 1;
    }

    else
    {
      mlir::getStrideInBytes(v130, &v134, 0);
      v60 = 0;
    }

    v69 = AttrDictionary;
    v70 = *(AttrDictionary + v138 - 1) * (v55 >> 3);
    v71 = v135;
    v72 = v134;
    v73 = v134 + 8 * v135;
    if (v70 <= *(v73 - 2))
    {
      if (!v60)
      {
LABEL_71:
        if (v134 != v136)
        {
          free(v134);
        }

        if (AttrDictionary != &v139)
        {
          free(AttrDictionary);
        }

        goto LABEL_37;
      }
    }

    else
    {
      *(v73 - 2) = (v70 - (v70 != 0) + ((v70 != 0) << 6)) & 0xFFFFFFFFFFFFFFC0;
      if (v71 >= 3)
      {
        v74 = v69 - 16;
        v75 = v71;
        do
        {
          v72[v75 - 3] = *&v74[8 * v75] * v72[v75 - 2];
          v76 = v75 - 4;
          --v75;
        }

        while (v76 < v71);
      }
    }

    v77 = mlir::cloneTypeWithStrideInBytes(v130, v72, v71, 0);
    if (*(v131[0] + 9))
    {
      v78 = v131[0] - 16;
    }

    else
    {
      v78 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v78, 0);
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | v77;
    goto LABEL_71;
  }

LABEL_7:
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v125, 0);
  v7 = ODSResultIndexAndLength;
  if (*(v125 + 9))
  {
    v8 = v125 - 16;
  }

  else
  {
    v8 = 0;
  }

  if (ODSResultIndexAndLength)
  {
    v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, ODSResultIndexAndLength);
  }

  v9 = (HIDWORD(v7) + v7);
  v10 = v9 - v7;
  if (v9 != v7)
  {
    v83 = 0;
    while (1)
    {
      v84 = *(*mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v83) + 16);
      v131[0] = v84;
      AttrDictionary = mlir::Operation::getAttrDictionary(v84);
      v85 = mlir::ArrayAttr::getValue(&AttrDictionary);
      AttrDictionary = mlir::Operation::getAttrDictionary(v84);
      v86 = mlir::ArrayAttr::getValue(&AttrDictionary);
      v88 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v85, (v86 + 16 * v87), *(*(*(v84 + 6) + 96) + 8));
      if (v88 && *(*v88 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        goto LABEL_89;
      }

      AttrDictionary = mlir::Operation::getAttrDictionary(v84);
      v89 = mlir::ArrayAttr::getValue(&AttrDictionary);
      AttrDictionary = mlir::Operation::getAttrDictionary(v131[0]);
      v90 = mlir::ArrayAttr::getValue(&AttrDictionary);
      v92 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v89, (v90 + 16 * v91), **(*(v131[0] + 6) + 96));
      if (v92)
      {
        if (*(*v92 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          break;
        }
      }

LABEL_83:
      if (++v83 == v10)
      {
        goto LABEL_13;
      }
    }

    v84 = v131[0];
LABEL_89:
    v130 = (*(*(*(v84 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(v84 + 9))
    {
      v93 = v84 - 16;
    }

    else
    {
      v93 = 0;
    }

    v94 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v93, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v94)
    {
      v95 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v94 + 8);
    }

    else
    {
      v95 = 0;
    }

    v128 = v94;
    v129 = v95;
    AttrDictionary = mlir::AffineBinaryOpExpr::getRHS(&v130);
    v96 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    AttrDictionary = mlir::ElementsAttr::isSplat(&v128);
    v97 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    AttrDictionary = &v139;
    v138 = 0x500000000;
    mlir::placement::MemrefToTensor::getInputShapeAfterInterleave(v131, &v134);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&AttrDictionary, &v134);
    if (v134 != v136)
    {
      free(v134);
    }

    v134 = v136;
    v135 = 0x500000000;
    RawStringData = mlir::Operation::getAttrDictionary(v131[0]);
    v98 = mlir::ArrayAttr::getValue(&RawStringData);
    RawStringData = mlir::Operation::getAttrDictionary(v131[0]);
    v99 = mlir::ArrayAttr::getValue(&RawStringData);
    v101 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v98, (v99 + 16 * v100), **(*(v131[0] + 6) + 96));
    if (v101 && *(*v101 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      RawStringData = mlir::DenseElementsAttr::getRawStringData(&v130);
      v133 = v103;
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&RawStringData);
      v104 = mlir::AffineMap::getResults(&CallableForCallee);
      v105 = *v104;
      if (*v104 && (RawStringData = *v104, mlir::arith::FastMathFlagsAttr::getValue(&RawStringData) < 5))
      {
        v106 = v105;
      }

      else
      {
        v106 = 0;
      }

      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&RawStringData, v106);
      CallableForCallee = RawStringData;
      if (RawStringData && !mlir::arith::FastMathFlagsAttr::getValue(&CallableForCallee))
      {
        v120 = mlir::AffineBinaryOpExpr::getRHS(&CallableForCallee);
        if (v120 && (v121 = v120, RawStringData = v120, mlir::arith::FastMathFlagsAttr::getValue(&RawStringData) < 5))
        {
          v122 = v121;
        }

        else
        {
          v122 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&RawStringData, v122);
        v126 = RawStringData;
        if (RawStringData)
        {
          if (mlir::arith::FastMathFlagsAttr::getValue(&v126) == 2)
          {
            goto LABEL_114;
          }
        }
      }

      v107 = mlir::placement::MemrefToTensor::getInterleave(v131);
      v108 = mlir::getANENextSupportedInterleaveValue(v107);
      v109 = AttrDictionary;
      v110 = v138;
      *(AttrDictionary + v138 - 1) = *(AttrDictionary + v138 - 1) / v107 * v108;
      mlir::getRowBytesAlignedStrideInBytes(v109, v110, v96 >> 3, 0x40uLL, &v134);
      v102 = 1;
    }

    else
    {
      mlir::getStrideInBytes(v130, &v134, 0);
      v102 = 0;
    }

    v111 = AttrDictionary;
    v112 = *(AttrDictionary + v138 - 1) * (v97 >> 3);
    v113 = v135;
    v114 = v134;
    v115 = v134 + 8 * v135;
    if (v112 <= *(v115 - 2))
    {
      if (!v102)
      {
LABEL_114:
        if (v134 != v136)
        {
          free(v134);
        }

        if (AttrDictionary != &v139)
        {
          free(AttrDictionary);
        }

        goto LABEL_83;
      }
    }

    else
    {
      *(v115 - 2) = (v112 - (v112 != 0) + ((v112 != 0) << 6)) & 0xFFFFFFFFFFFFFFC0;
      if (v113 >= 3)
      {
        v116 = v111 - 16;
        v117 = v113;
        do
        {
          v114[v117 - 3] = *&v116[8 * v117] * v114[v117 - 2];
          v118 = v117 - 4;
          --v117;
        }

        while (v118 < v113);
      }
    }

    v119 = mlir::cloneTypeWithStrideInBytes(v130, v114, v113, 0);
    *(*(*(v131[0] + 9) + 24) + 8) = *(*(*(v131[0] + 9) + 24) + 8) & 7 | v119;
    goto LABEL_114;
  }

LABEL_13:
  ParentOp = v125;
  do
  {
    ParentOp = *(ParentOp + 2);
    if (!ParentOp)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(ParentOp);
    if (!ParentOp)
    {
      break;
    }
  }

  while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
  v12 = ParentOp;
  Callee = mlir::placement::RegionCall::getCallee(&v125);
  v15 = v14;
  Context = mlir::Attribute::getContext((v12 + 6));
  v141 = 261;
  AttrDictionary = Callee;
  v138 = v15;
  v17 = mlir::StringAttr::get(Context, &AttrDictionary);
  InterfaceFor = mlir::SymbolTable::lookupSymbolIn(v12, v17);
  v19 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v20 = v125;
  v128 = v19;
  v129 = InterfaceFor;
  v21 = mlir::Attribute::getContext((v125 + 24));
  if ((*(v20 + 46) & 0x80) != 0)
  {
    v22 = *(v20 + 9);
    v23 = *(v20 + 17);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v134 = v22;
  v135 = v23;
  mlir::OperandRange::getTypes(&v134, &AttrDictionary);
  mlir::ValueRange::ValueRange(&v134, AttrDictionary + 32 * v138, v140 - v138);
  mlir::TypeRange::TypeRange(&RawStringData, v134, v135);
  v24 = *(v20 + 9);
  v25 = v20 - 16;
  if (!v24)
  {
    v25 = 0;
  }

  v134 = v25;
  v135 = v24;
  mlir::OperandRange::getTypes(&v134, &AttrDictionary);
  v26 = AttrDictionary;
  v27 = v138;
  v28 = v140;
  if (v138)
  {
    v26 = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v138);
  }

  mlir::ValueRange::ValueRange(&v134, v26, v28 - v27);
  mlir::TypeRange::TypeRange(v131, v134, v135);
  v29 = mlir::FunctionType::get(v21, RawStringData, v133, v131[0], v131[1]);
  AttrDictionary = v29;
  if (v29 != mlir::CallOpInterface::getArgOperands(&v128))
  {
    mlir::TargetLegalizerInterface::setFunctionType(&v128, v29);
    if (mlir::arith::FastMathFlagsAttr::getValue(&AttrDictionary))
    {
      v30 = 0;
      do
      {
        v31 = *(((&v128[2 * ((*(v128 + 11) >> 23) & 1) + 8] + ((*(v128 + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v128 + 10) + 8);
        if (v31)
        {
          v32 = v31 - 8;
        }

        else
        {
          v32 = 0;
        }

        v33 = *(*(v32 + 48) + 8 * v30);
        *(v33 + 8) = *(v33 + 8) & 7 | *(mlir::FunctionType::getInputs(&AttrDictionary) + 8 * v30++);
      }

      while (v30 < mlir::arith::FastMathFlagsAttr::getValue(&AttrDictionary));
    }

    BodyBlock = mlir::TargetLegalizerInterface::getBodyBlock(&v128);
    Terminator = mlir::Block::getTerminator(BodyBlock, v35);
    if (mlir::FunctionType::getNumResults(&AttrDictionary))
    {
      v37 = 0;
      v38 = 24;
      do
      {
        v39 = *(*(Terminator + 72) + v38);
        *(v39 + 8) = *(v39 + 8) & 7 | *(mlir::FunctionType::getResults(&AttrDictionary) + 8 * v37++);
        v38 += 32;
      }

      while (v37 < mlir::FunctionType::getNumResults(&AttrDictionary));
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 55) = 0;
  v7 = *(v4 + 24);

  return mlir::logMatchFailure(va, v7, v3);
}

void *OUTLINED_FUNCTION_2_23()
{

  return operator new(0x38uLL);
}

BOOL mlir::anec::writeSingleRegionPlist(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v122[1] = *MEMORY[0x1E69E9840];
  v101 = a4;
  v7 = v99;
  if (v99)
  {
    v8 = *a2;
    v9 = v100;
    if (v100)
    {
      atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(v8 + 568) = v7;
    v10 = *(v8 + 576);
    *(v8 + 576) = v9;
    if (v10)
    {
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        if (a1)
        {
          goto LABEL_7;
        }

LABEL_9:
        InterfaceFor = 0;
        goto LABEL_10;
      }
    }
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_7:
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
LABEL_10:
  v12 = *(a1 + 44);
  v13 = (((a1 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  if (*v13 == v13 || ((v14 = v13[1]) != 0 ? (v15 = v14 - 8) : (v15 = 0), v16 = *(v15 + 48), v17 = *(v15 + 56), v17 == v16))
  {
LABEL_42:
    if (!BYTE3(v12) || (v124.var0 = "sym_name", v124.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(a1, v124), (v26 & 1) == 0))
    {
      v125.var0 = "sym_name";
      v125.var1 = 8;
      InherentAttr = mlir::DictionaryAttr::get((a1 + 56), v125);
    }

    if (InherentAttr)
    {
      if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v27 = InherentAttr;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v97 = v27;
    AttrData = mlir::OpaqueAttr::getAttrData(&v97);
    v30 = v29;
    if (!*(a1 + 47) || (v126.var0 = "procedure_name", v126.var1 = 14, v31 = mlir::Operation::getInherentAttr(a1, v126), (v32 & 1) == 0))
    {
      v127.var0 = "procedure_name";
      v127.var1 = 14;
      v31 = mlir::DictionaryAttr::get((a1 + 56), v127);
    }

    if (v31)
    {
      if (*(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0;
      }

      AttrDictionary = v33;
      v34 = mlir::OpaqueAttr::getAttrData(&AttrDictionary);
      if (v34)
      {
        v30 = v35;
        if (v35 <= 0x7FFFFFFFFFFFFFF7)
        {
          AttrData = v34;
          goto LABEL_62;
        }

        goto LABEL_156;
      }
    }

    else if (AttrData)
    {
      if (v30 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_62:
        if (v30 >= 0x17)
        {
          if ((v30 | 7) == 0x17)
          {
            v37 = 25;
          }

          else
          {
            v37 = (v30 | 7) + 1;
          }

          p_dst = operator new(v37);
          v95 = v30;
          v96 = v37 | 0x8000000000000000;
          __dst = p_dst;
        }

        else
        {
          HIBYTE(v96) = v30;
          p_dst = &__dst;
          if (!v30)
          {
            goto LABEL_71;
          }
        }

        memmove(p_dst, AttrData, v30);
LABEL_71:
        *(p_dst + v30) = 0;
LABEL_72:
        v38 = *a2;
        v39 = operator new(0x10uLL);
        *v39 = &unk_1F5B35488;
        v39[1] = v38;
        v93 = v39;
        AttrDictionary = a2;
        v107 = a3;
        v108 = &v101;
        v109 = &__dst;
        v110 = &v93;
        if (mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::anec::writeSingleRegionPlist(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&,mlir::anec::ANECIRWeightSerializer &,std::map<std::string,std::map<std::string,std::string>> *)::$_0>, &AttrDictionary, 1))
        {
          ParentOp = a1;
          do
          {
            ParentOp = *(ParentOp + 2);
            if (!ParentOp)
            {
              break;
            }

            ParentOp = mlir::Block::getParentOp(ParentOp);
            if (!ParentOp)
            {
              break;
            }
          }

          while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
          v41 = ParentOp;
          if (!*(a1 + 47) || (v128.var0 = "sym_name", v128.var1 = 8, v42 = mlir::Operation::getInherentAttr(a1, v128), (v43 & 1) == 0))
          {
            v129.var0 = "sym_name";
            v129.var1 = 8;
            v42 = mlir::DictionaryAttr::get((a1 + 56), v129);
          }

          v44 = v42;
          v45 = v41;
          if (v44 && *(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v44 = 0;
          }

          v105 = v44;
          v120 = v122;
          v121 = 0x100000000;
          AttrDictionary = &v105;
          v107 = &v120;
          v102 = &AttrDictionary;
          v46 = 1;
          mlir::detail::walk<mlir::ForwardIterator>(v45, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4anec12_GLOBAL__N_120updateNetworkIOTypesES3_RKNSt3__110shared_ptrINSB_13ANECIRNetworkEEEE3__0NS1_9placement10RegionCallEvEENSD_9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v102, 1);
          if (v121)
          {
            if (v121 == 1)
            {
              v47 = *v120;
              v48 = *(*a2 + 16);
              v49 = *(*a2 + 104);
              v50 = *(*a2 + 112);
              if (v48)
              {
                v51 = *(*a2 + 8);
                do
                {
                  v53 = *v51;
                  if ((*(*v51 + 96) & 1) == 0)
                  {
                    AttrDictionary = *(*(v47 + 72) + 32 * *(v53 + 192) + 24);
                    DefiningOp = mlir::Value::getDefiningOp(&AttrDictionary);
                    if (DefiningOp)
                    {
                      v55 = DefiningOp;
                      if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
                      {
                        v56 = *(*(DefiningOp + 72) + 24);
                        if (*(DefiningOp + 36))
                        {
                          v57 = DefiningOp - 16;
                        }

                        else
                        {
                          v57 = 0;
                        }

                        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v57, 0);
                        if ((v59 & 0x100000000) == 0)
                        {
LABEL_155:
                          v46 = 0;
                          goto LABEL_145;
                        }

                        *(v53 + 112) = v59;
                        AttrDictionary = mlir::Operation::getAttrDictionary(v55);
                        Value = mlir::ArrayAttr::getValue(&AttrDictionary);
                        AttrDictionary = mlir::Operation::getAttrDictionary(v55);
                        v61 = mlir::ArrayAttr::getValue(&AttrDictionary);
                        v63 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v61 + 16 * v62), **(*(v55 + 48) + 96));
                        if (v63 && *(*v63 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                        {
                          AttrDictionary = v63;
                          UInt = mlir::IntegerAttr::getUInt(&AttrDictionary);
                          ANENextSupportedInterleaveValue = mlir::getANENextSupportedInterleaveValue(UInt);
                        }

                        else
                        {
                          ANENextSupportedInterleaveValue = 1;
                        }

                        *(v53 + 104) = ANENextSupportedInterleaveValue;
                      }
                    }
                  }

                  v51 += 2;
                  --v48;
                }

                while (v48);
              }

              if (v50)
              {
                v73 = 0;
                v74 = v47 - 96;
                v75 = (v47 - 16);
                v76 = -5;
                do
                {
                  v78 = *v49;
                  if ((*(*v49 + 96) & 1) == 0)
                  {
                    if (v73 > 5)
                    {
                      v79 = *(v74 - 24 * v76);
                      if (!v79)
                      {
                        goto LABEL_122;
                      }
                    }

                    else
                    {
                      v79 = *v75;
                      if (!*v75)
                      {
                        goto LABEL_122;
                      }
                    }

                    v80 = *(v79 + 16);
                    if (v80)
                    {
                      v81 = *(*(v80 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id;
                    }

                    else
                    {
                      v81 = 0;
                    }

                    if (v81)
                    {
                      if (*(v80 + 36))
                      {
                        v82 = v80 - 16;
                      }

                      else
                      {
                        v82 = 0;
                      }

                      v83 = mlir::detail::OpResultImpl::getNextResultAtOffset(v82, 0);
                      if ((v84 & 0x100000000) == 0)
                      {
                        goto LABEL_155;
                      }

                      *(v78 + 136) = v84;
                      AttrDictionary = mlir::Operation::getAttrDictionary(v80);
                      v85 = mlir::ArrayAttr::getValue(&AttrDictionary);
                      AttrDictionary = mlir::Operation::getAttrDictionary(v80);
                      v86 = mlir::ArrayAttr::getValue(&AttrDictionary);
                      v88 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v85, (v86 + 16 * v87), **(*(v80 + 48) + 96));
                      if (v88 && *(*v88 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
                      {
                        AttrDictionary = v88;
                        v89 = mlir::IntegerAttr::getUInt(&AttrDictionary);
                        v77 = mlir::getANENextSupportedInterleaveValue(v89);
                      }

                      else
                      {
                        v77 = 1;
                      }

                      *(v78 + 104) = v77;
                    }
                  }

LABEL_122:
                  ++v73;
                  v75 -= 2;
                  ++v76;
                  v49 += 2;
                  --v50;
                }

                while (v50);
              }

              v46 = 1;
            }

            else
            {
              v102 = "Found more than one call to the same region";
              v104 = 259;
              mlir::Operation::emitError(a1, &v102, &AttrDictionary);
              v46 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
              if (AttrDictionary)
              {
                mlir::InFlightDiagnostic::report(&AttrDictionary);
              }

              if (v119 == 1)
              {
                if (v118 != &v119)
                {
                  free(v118);
                }

                v65 = v116;
                if (v116)
                {
                  v66 = v117;
                  v67 = v116;
                  if (v117 != v116)
                  {
                    do
                    {
                      v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
                    }

                    while (v66 != v65);
                    v67 = v116;
                  }

                  v117 = v65;
                  operator delete(v67);
                }

                v68 = v114;
                if (v114)
                {
                  v69 = v115;
                  v70 = v114;
                  if (v115 != v114)
                  {
                    do
                    {
                      v72 = *--v69;
                      v71 = v72;
                      *v69 = 0;
                      if (v72)
                      {
                        operator delete[](v71);
                      }
                    }

                    while (v69 != v68);
                    v70 = v114;
                  }

                  v115 = v68;
                  operator delete(v70);
                }

                if (v109 != &v111)
                {
                  free(v109);
                }
              }
            }
          }

LABEL_145:
          if (v120 != v122)
          {
            free(v120);
          }
        }

        else
        {
          v46 = 0;
        }

        v90 = v93;
        v93 = 0;
        if (v90)
        {
          (*(*v90 + 8))(v90);
        }

        if (SHIBYTE(v96) < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_151;
      }

LABEL_156:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    __dst = 0;
    v95 = 0;
    v96 = 0;
    goto LABEL_72;
  }

  while (1)
  {
    v18 = *v16;
    v120 = 0;
    __dst = 0;
    AttrDictionary = mlir::function_interface_impl::getArgAttrDict(a1, InterfaceFor, *(v18 + 24));
    if (AttrDictionary)
    {
      v123.var0 = "silc.sharding";
      v123.var1 = 13;
      v19 = mlir::DictionaryAttr::get(&AttrDictionary, v123);
      if (v19)
      {
        v120 = v19;
        v20 = *(a1 + 16);
        if (v20)
        {
          v21 = mlir::Block::getParentOp(v20);
        }

        else
        {
          v21 = 0;
        }

        __dst = mlir::silc::ShardingAttr::getMesh(&v120, v21);
      }
    }

    v22 = a2[1];
    v98[0] = *a2;
    v98[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    else
    {
    }

    v23 = v102;
    if (v102 && v120 && __dst)
    {
      mlir::silc::ShardingAttr::getMeshVector(&__dst, &AttrDictionary);
      mlir::silc::ShardingAttr::getMeshAxesVector(&v120, &__dst, &v109);
      mlir::silc::ShardingAttr::getTensorAxesVector(&v120, &__p);
      if (v23 + 25 != &AttrDictionary)
      {
        std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v23 + 25, AttrDictionary, v107, (v107 - AttrDictionary) >> 1);
        std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v23 + 28, v109, v110, (v110 - v109) >> 1);
        std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(v23 + 31, __p, v113, (v113 - __p) >> 1);
      }

      if (__p)
      {
        v113 = __p;
        operator delete(__p);
      }

      if (v109)
      {
        v110 = v109;
        operator delete(v109);
      }

      if (AttrDictionary)
      {
        v107 = AttrDictionary;
        operator delete(AttrDictionary);
      }
    }

    v24 = v103;
    if (v103 && !atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    if (!v23)
    {
      break;
    }

    if (++v16 == v17)
    {
      LODWORD(v12) = *(a1 + 44);
      goto LABEL_42;
    }
  }

  v46 = 0;
LABEL_151:
  v91 = v100;
  if (v100 && !atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v91->__on_zero_shared)(v91);
    std::__shared_weak_count::__release_weak(v91);
  }

  return v46;
}

void mlir::anec::anonymous namespace::ParseCustomIOInfoFromAttribute(mlir::anec::_anonymous_namespace_ *this@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = operator new(0x98uLL);
  *&v5->__shared_owners_ = 0u;
  v5->__vftable = &unk_1F5B352B0;
  *&v5[3].__shared_weak_owners_ = 0u;
  *&v5[2].__shared_owners_ = 0u;
  v5[3].std::__shared_count = 0u;
  v5[5].std::__shared_count = 0u;
  *&v5[5].__shared_weak_owners_ = 0u;
  *&v5[4].__shared_owners_ = 0u;
  *&v5[1].__shared_weak_owners_ = 0u;
  v5[1].__vftable = &v5[1].__shared_weak_owners_;
  v5[1].__shared_owners_ = 0x300000000;
  v5[3].__shared_weak_owners_ = &v5[4].__shared_owners_;
  HIDWORD(v5[4].__vftable) = 3;
  v13[0] = v5 + 1;
  v13[1] = v5;
  if (*(this + 47) && (v20.var0 = "io_info", v20.var1 = 7, v6 = mlir::Operation::getInherentAttr(this, v20), (v7 & 1) != 0))
  {
    if (v6)
    {
LABEL_4:
      if (!*(this + 47) || (v21.var0 = "io_info", v21.var1 = 7, InherentAttr = mlir::Operation::getInherentAttr(this, v21), (v9 & 1) == 0))
      {
        v22.var0 = "io_info";
        v22.var1 = 7;
        InherentAttr = mlir::DictionaryAttr::get((this + 56), v22);
      }

      v12 = InherentAttr;
      v23.var0 = "input";
      v23.var1 = 5;
      v10 = mlir::DictionaryAttr::get(&v12, v23);
      v24.var0 = "output";
      v24.var1 = 6;
      mlir::DictionaryAttr::get(&v12, v24);
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      v16[0] = &unk_1F5B352E8;
      v16[1] = v13;
      v16[2] = &v11;
      v17 = v16;
      *(&v14[0] + 1) = std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<mlir::WalkResult ()(mlir::Attribute)>>(v14, v16);
      if (v17 == v16)
      {
        (*(*v17 + 32))(v17);
      }

      else if (v17)
      {
        (*(*v17 + 40))(v17);
      }

      mlir::AttrTypeWalker::walkImpl(v14, v10, 1);
      mlir::AttrTypeWalker::~AttrTypeWalker(v14);
    }
  }

  else
  {
    v25.var0 = "io_info";
    v25.var1 = 7;
    if (mlir::DictionaryAttr::contains((this + 56), v25))
    {
      goto LABEL_4;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void mlir::anec::anonymous namespace::addInputToNetwork(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  ANECIRDataType = mlir::anec::getANECIRDataType(a2);
  if ((ANECIRDataType & 0x100000000) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v8 = ANECIRDataType;
  mlir::anec::getANECInputName(a2, &__p);
  *&v83 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v83);
  if (v10)
  {
    v11 = 8 * v10;
    while (*Value < 2)
    {
      ++Value;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v12 = mlir::anec::getANECIRDataType(a2);
    if ((v12 & 0x100000000) != 0 && (v12 - 7) < 4)
    {
      v13 = 2;
      goto LABEL_13;
    }
  }

  v14 = *a2;
  v13 = 0;
  if (*a2 && !*v14)
  {
    v55 = v14[2];
    v56 = *(*(v55 + 48) + 16);
    if (v56 == &mlir::detail::TypeIDResolver<mlir::anec::State,void>::id || v56 == &mlir::detail::TypeIDResolver<mlir::anec::TensorBufferToTensor,void>::id && ((v57 = *(v55 + 36), v57) ? (v58 = v55 - 16) : (v58 = 0), (*&v83 = v58, *(&v83 + 1) = v57, mlir::ResultRange::use_begin(&v83, __dst), v59 = *(v55 + 36), v59) ? (v60 = v55 - 16) : (v60 = 0), v76.n128_u64[0] = v60, v76.n128_u64[1] = v59, mlir::ResultRange::use_end(&v76, &v86), v85 = v79, v83 = *__dst, v84 = v78, *(*(*(v79 + 16) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::State,void>::id))
    {
      v13 = 1;
    }
  }

LABEL_13:
  v15 = *(a2 + 24);
  v16 = operator new(0x110uLL);
  v17 = v16;
  *v16 = &unk_1F5B2E868;
  v18 = (v16 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v16 + 8), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v18->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(v16 + 3) = *(&__p.__r_.__value_.__l + 2);
  }

  *(v17 + 8) = 0;
  v17[71] = 0;
  *(v17 + 9) = 0;
  *(v17 + 95) = 0;
  *v17 = &unk_1F5B353B0;
  *(v17 + 5) = &unk_1F5B353D8;
  *(v17 + 6) = 0;
  *(v17 + 13) = 1;
  *(v17 + 28) = v8;
  *(v17 + 29) = v13;
  *(v17 + 19) = 0;
  *(v17 + 22) = 0;
  *(v17 + 23) = 0;
  *(v17 + 24) = v15;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 248) = 0u;
  *(v17 + 33) = 0;
  v19 = operator new(0x20uLL);
  v19->__vftable = &unk_1F5B353F8;
  v19->__shared_owners_ = 0;
  v19->__shared_weak_owners_ = 0;
  v19[1].__vftable = v17;
  v20 = *(*a2 + 16);
  v21 = *(*a1 + 568);
  v22 = *(*a1 + 576);
  LOBYTE(v83) = 0;
  v89 = 0;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v21)
  {
    v23 = (*v21 + 16 * *(a2 + 24));
    v24 = *v23;
    v25 = v23[1];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v68 = a1;
    std::__optional_destruct_base<mlir::anec::ANEIOInfo,false>::__optional_destruct_base[abi:nn200100]<mlir::anec::ANEIOInfo const&>(__dst, v24 + 16);
    std::__optional_storage_base<mlir::anec::ANEIOInfo,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::anec::ANEIOInfo,false>>(&v83, __dst);
    if (v82 == 1)
    {
      if (v80 != v81)
      {
        free(v80);
      }

      if (__dst[0] != &v78)
      {
        free(__dst[0]);
      }
    }

    v66 = v13;
    v26 = *v24;
    v67 = a3;
    if (!*v24)
    {
      __dst[0] = 0;
      __dst[1] = 0;
      *&v78 = 0;
      a1 = v68;
      goto LABEL_46;
    }

    v27 = *(v24 + 8);
    if (v27 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_121;
    }

    if (v27 >= 0x17)
    {
      if ((v27 | 7) == 0x17)
      {
        v29 = 25;
      }

      else
      {
        v29 = (v27 | 7) + 1;
      }

      v28 = operator new(v29);
      __dst[1] = v27;
      *&v78 = v29 | 0x8000000000000000;
      __dst[0] = v28;
    }

    else
    {
      BYTE7(v78) = *(v24 + 8);
      v28 = __dst;
      if (!v27)
      {
        goto LABEL_45;
      }
    }

    memmove(v28, v26, v27);
LABEL_45:
    a1 = v68;
    *(v28 + v27) = 0;
LABEL_46:
    std::string::operator=(v18, __dst);
    if (SBYTE7(v78) < 0)
    {
      operator delete(__dst[0]);
    }

    *(v17 + 28) = *(v24 + 120);
    v17[96] = 1;
    v30 = *a1;
    v31 = *v24;
    if (!*v24)
    {
      __dst[0] = 0;
      __dst[1] = 0;
      *&v78 = 0;
      v13 = v66;
LABEL_60:
      v76.n128_u64[0] = &__p;
      v35 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v30 + 584, &__p, &std::piecewise_construct, &v76);
      std::string::operator=((v35 + 40), __dst);
      if (SBYTE7(v78) < 0)
      {
        operator delete(__dst[0]);
      }

      a3 = v67;
      if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }

      goto LABEL_70;
    }

    v32 = *(v24 + 8);
    if (v32 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v32 >= 0x17)
      {
        if ((v32 | 7) == 0x17)
        {
          v34 = 25;
        }

        else
        {
          v34 = (v32 | 7) + 1;
        }

        v33 = operator new(v34);
        __dst[1] = v32;
        *&v78 = v34 | 0x8000000000000000;
        __dst[0] = v33;
      }

      else
      {
        BYTE7(v78) = *(v24 + 8);
        v33 = __dst;
        if (!v32)
        {
          goto LABEL_59;
        }
      }

      memmove(v33, v31, v32);
LABEL_59:
      v13 = v66;
      *(v33 + v32) = 0;
      a1 = v68;
      goto LABEL_60;
    }

LABEL_121:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::TensorBufferToTensor,void>::id && v20)
  {
    mlir::anec::getANEIOInfoFromTensorBuffer<mlir::anec::TensorBufferToTensor,true>(v20, __dst);
    std::__optional_storage_base<mlir::anec::ANEIOInfo,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::anec::ANEIOInfo,false>>(&v83, __dst);
    if (v82 == 1)
    {
      if (v80 != v81)
      {
        free(v80);
      }

      if (__dst[0] != &v78)
      {
        free(__dst[0]);
      }
    }

    v17[96] = 1;
  }

  else
  {
    mlir::anec::calcANEIOInfo((v6 & 0xFFFFFFFFFFFFFFF8), 0, 0, __dst);
    std::__optional_storage_base<mlir::anec::ANEIOInfo,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::anec::ANEIOInfo,false>>(&v83, __dst);
    if (v82 == 1)
    {
      if (v80 != v81)
      {
        free(v80);
      }

      if (__dst[0] != &v78)
      {
        free(__dst[0]);
      }
    }
  }

LABEL_70:
  if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v89)
    {
      goto LABEL_73;
    }

LABEL_86:
    *a3 = 0;
    a3[1] = 0;
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    goto LABEL_101;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if ((v89 & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_73:
  v36 = v83;
  v37 = DWORD2(v83);
  if (DWORD2(v83) == 5)
  {
    *(v17 + 19) = *(v83 + 8);
  }

  v38 = &v36[v37];
  v39 = v38[-2].i64[1];
  v40 = *v36;
  *(v17 + 120) = vextq_s8(v38[-1], v38[-1], 8uLL);
  *(v17 + 17) = v39;
  *(v17 + 18) = v40;
  if (v87 == 5)
  {
    v41 = *(v86.n128_u64[1] + 16);
    *(v17 + 11) = vextq_s8(*v86.n128_u64[1], *v86.n128_u64[1], 8uLL);
  }

  else
  {
    v41 = *(v86.n128_u64[1] + 8 * v87 - 24);
  }

  *(v17 + 10) = vextq_s8(v41, v41, 8uLL);
  *(v17 + 13) = v88[4];
  v42 = *a1;
  if (v13 != 1)
  {
    if (v13 == 2)
    {
      v73 = v17;
      v74 = v19;
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v43 = *(v42 + 304);
      v44 = *(v42 + 296);
      v45 = &v73;
      if (v43 >= *(v42 + 308))
      {
        if (v44 <= &v73 && v44 + 16 * v43 > &v73)
        {
          v63 = &v73 - v44;
          v64 = v42;
          v42 = v64;
          v44 = *(v64 + 296);
          v45 = &v63[v44];
        }

        else
        {
          v61 = v42;
          v42 = v61;
          v44 = *(v61 + 296);
          v45 = &v73;
        }
      }

      v46 = *(v42 + 304);
      v47 = *v45;
      *(v44 + 16 * v46) = *v45;
      if (*(&v47 + 1))
      {
        atomic_fetch_add_explicit((*(&v47 + 1) + 8), 1uLL, memory_order_relaxed);
        LODWORD(v46) = *(v42 + 304);
      }

      *(v42 + 304) = v46 + 1;
      v48 = v74;
      if (!v74)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v69 = v17;
      v70 = v19;
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v50 = (v42 + 8);
      v49 = *(v42 + 8);
      v51 = *(v42 + 16);
      v52 = &v69;
      if (v51 >= *(v42 + 20))
      {
        v62 = v42;
        if (v49 <= &v69 && v49 + 16 * v51 > &v69)
        {
          v65 = &v69 - v49;
          v49 = *v50;
          v52 = &v65[*v50];
        }

        else
        {
          v49 = *v50;
          v52 = &v69;
        }

        v42 = v62;
      }

      v53 = *(v42 + 16);
      v54 = *v52;
      *(v49 + 16 * v53) = *v52;
      if (*(&v54 + 1))
      {
        atomic_fetch_add_explicit((*(&v54 + 1) + 8), 1uLL, memory_order_relaxed);
        LODWORD(v53) = *(v42 + 16);
      }

      *(v42 + 16) = v53 + 1;
      v48 = v70;
      if (!v70)
      {
        goto LABEL_96;
      }
    }

    goto LABEL_94;
  }

  v71 = v17;
  v72 = v19;
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  mlir::anec::ANECIRNetwork::AddLiveState(v42, &v71);
  v48 = v72;
  if (v72)
  {
LABEL_94:
    if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v48->__on_zero_shared)(v48);
      std::__shared_weak_count::__release_weak(v48);
    }
  }

LABEL_96:
  *a3 = v17;
  a3[1] = v19;
  if (v89)
  {
    if (v86.n128_u64[1] != v88)
    {
      free(v86.n128_u64[1]);
    }

    if (v83 != &v84)
    {
      free(v83);
    }
  }

LABEL_101:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void mlir::anec::createWritePlistPass(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, char a6@<W5>, void *a7@<X8>)
{
  v27 = a4;
  v26 = a6;
  if (a5 <= 3)
  {
    if (a5 <= 1)
    {
      if (a5 == 1)
      {
        v13 = operator new(0x6D8uLL);
        if (*(a1 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
          if ((*(a2 + 23) & 0x80000000) == 0)
          {
LABEL_6:
            v29 = *a2;
            if ((*(a3 + 23) & 0x80000000) == 0)
            {
LABEL_7:
              v28 = *a3;
LABEL_53:
              v32 = a4;
              v31 = a6;
              v14 = &unk_1F5B35678;
              goto LABEL_66;
            }

LABEL_52:
            std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
            goto LABEL_53;
          }
        }

        else
        {
          __str = *a1;
          if ((*(a2 + 23) & 0x80000000) == 0)
          {
            goto LABEL_6;
          }
        }

        std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
        if ((*(a3 + 23) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_52;
      }

LABEL_25:
      *a7 = __str.__r_.__value_.__r.__words[0];
      return;
    }

    if (a5 != 2)
    {
      v13 = operator new(0x6D8uLL);
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
LABEL_17:
          v29 = *a2;
          if ((*(a3 + 23) & 0x80000000) == 0)
          {
LABEL_18:
            v28 = *a3;
LABEL_61:
            v32 = a4;
            v31 = a6;
            v14 = &unk_1F5B35838;
            goto LABEL_66;
          }

LABEL_60:
          std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
          goto LABEL_61;
        }
      }

      else
      {
        __str = *a1;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }
      }

      std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
      if ((*(a3 + 23) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_60;
    }

    v13 = operator new(0x6D8uLL);
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_32:
        v29 = *a2;
        if ((*(a3 + 23) & 0x80000000) == 0)
        {
LABEL_33:
          v28 = *a3;
LABEL_45:
          v32 = a4;
          v31 = a6;
          v14 = &unk_1F5B35758;
          goto LABEL_66;
        }

LABEL_44:
        std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
        goto LABEL_45;
      }
    }

    else
    {
      __str = *a1;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }
    }

    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  if (a5 > 5)
  {
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        goto LABEL_25;
      }

      v13 = operator new(0x6D8uLL);
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
LABEL_23:
          v29 = *a2;
          if ((*(a3 + 23) & 0x80000000) == 0)
          {
LABEL_24:
            v28 = *a3;
LABEL_65:
            v32 = a4;
            v31 = a6;
            v14 = &unk_1F5B35BB8;
            goto LABEL_66;
          }

LABEL_64:
          std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
          goto LABEL_65;
        }
      }

      else
      {
        __str = *a1;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }
      }

      std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
      if ((*(a3 + 23) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_64;
    }

    v13 = operator new(0x6D8uLL);
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_36:
        v29 = *a2;
        if ((*(a3 + 23) & 0x80000000) == 0)
        {
LABEL_37:
          v28 = *a3;
LABEL_49:
          v32 = a4;
          v31 = a6;
          v14 = &unk_1F5B35AD8;
          goto LABEL_66;
        }

LABEL_48:
        std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
        goto LABEL_49;
      }
    }

    else
    {
      __str = *a1;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_48;
  }

  if (a5 != 4)
  {
    v13 = operator new(0x6D8uLL);
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_12:
        v29 = *a2;
        if ((*(a3 + 23) & 0x80000000) == 0)
        {
LABEL_13:
          v28 = *a3;
LABEL_57:
          v32 = a4;
          v31 = a6;
          v14 = &unk_1F5B359F8;
          goto LABEL_66;
        }

LABEL_56:
        std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
        goto LABEL_57;
      }
    }

    else
    {
      __str = *a1;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

  v13 = operator new(0x6D8uLL);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    __str = *a1;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_39:
    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 8));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_40:
    std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
    goto LABEL_41;
  }

  std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  if (*(a2 + 23) < 0)
  {
    goto LABEL_39;
  }

LABEL_28:
  v29 = *a2;
  if (*(a3 + 23) < 0)
  {
    goto LABEL_40;
  }

LABEL_29:
  v28 = *a3;
LABEL_41:
  v32 = a4;
  v31 = a6;
  v14 = &unk_1F5B35918;
LABEL_66:
  *v13 = v14;
  std::string::operator=((v13 + 472), &__str);
  v15 = *(v13 + 71);
  if (v15)
  {
    (*(*v15 + 48))(v15, &__str);
    std::string::operator=(v13 + 30, &v29);
    v16 = *(v13 + 102);
    if (v16)
    {
      (*(*v16 + 48))(v16, &v29);
      std::string::operator=((v13 + 968), &v28);
      v17 = *(v13 + 133);
      if (v17)
      {
        (*(*v17 + 48))(v17, &v28);
        v13[1216] = a4;
        v18 = *(v13 + 159);
        if (v18)
        {
          (*(*v18 + 48))(v18, &v32);
          v13[1672] = a6;
          v19 = *(v13 + 216);
          if (v19)
          {
            (*(*v19 + 48))(v19, &v31);
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_73:
                if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_74:
                  *a7 = v13;
                  return;
                }

LABEL_77:
                operator delete(__str.__r_.__value_.__l.__data_);
                goto LABEL_74;
              }
            }

            else if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

            operator delete(v29.__r_.__value_.__l.__data_);
            if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_77;
          }
        }
      }
    }
  }

  v20 = std::__throw_bad_function_call[abi:nn200100]();
}

void std::make_unique[abi:nn200100]<mlir::anec::anonymous namespace::WriteA12PlistPass,std::string &,std::string &,std::string &,BOOL &,BOOL &,0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v12 = operator new(0x6D8uLL);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    __str = *a1;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    goto LABEL_8;
  }

  std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  if (*(a2 + 23) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = *a2;
  if (*(a3 + 23) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  __p = *a3;
LABEL_8:
  v13 = *a4;
  v14 = *a5;
  v25 = v13;
  v24 = v14;
  *v12 = &unk_1F5B35560;
  std::string::operator=((v12 + 472), &__str);
  v15 = *(v12 + 71);
  if (!v15 || ((*(*v15 + 48))(v15, &__str), std::string::operator=(v12 + 30, &v22), (v16 = *(v12 + 102)) == 0) || ((*(*v16 + 48))(v16, &v22), std::string::operator=((v12 + 968), &__p), (v17 = *(v12 + 133)) == 0) || ((*(*v17 + 48))(v17, &__p), v12[1216] = v13, (v18 = *(v12 + 159)) == 0) || ((*(*v18 + 48))(v18, &v25), v12[1672] = v14, (v19 = *(v12 + 216)) == 0))
  {
    v20 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::anec::populateWritePlistPass(v20);
    return;
  }

  (*(*v19 + 48))(v19, &v24);
  *a6 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_19:
      operator delete(__str.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_19;
  }
}

void mlir::anec::populateWritePlistPass(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, char a7)
{
  v9 = "anec.A12";
  v10 = "anec.A18";
  v11 = 8;
  if (a6 != 6)
  {
    v10 = "anec.A11Legacy";
    v11 = 14;
  }

  v12 = "anec.A16";
  if (a6 != 4)
  {
    v12 = "anec.A17";
  }

  if (a6 <= 5)
  {
    v10 = v12;
    v11 = 8;
  }

  v13 = "anec.A14";
  if (a6 != 2)
  {
    v13 = "anec.A15";
  }

  if (a6)
  {
    v9 = "anec.A13";
  }

  if (a6 > 1)
  {
    v9 = v13;
  }

  if (a6 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v10;
  }

  if (a6 <= 3)
  {
    v15 = 8;
  }

  else
  {
    v15 = v11;
  }

  v20 = mlir::OpPassManager::nest(a1, v14, v15);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v24 = *a2;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    std::string::__init_copy_ctor_external(&v23, *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  if (*(a3 + 23) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v23 = *a3;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
LABEL_22:
    __p = *a4;
    goto LABEL_26;
  }

LABEL_25:
  std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
LABEL_26:
  mlir::anec::createWritePlistPass(&v24, &v23, &__p, a5, a6, a7, &v25);
  mlir::OpPassManager::addPass(v20, &v25);
  v21 = v25;
  v25 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_34:
      operator delete(v24.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }
}

void *mlir::anec::ANECIRNetwork::Create@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x270uLL);
  *v4 = &unk_1F5B35430;
  *(v4 + 1) = v4 + 24;
  *(v4 + 2) = 0x500000000;
  *(v4 + 13) = v4 + 120;
  *(v4 + 14) = 0x500000000;
  *(v4 + 25) = v4 + 216;
  *(v4 + 26) = 0x500000000;
  *(v4 + 37) = v4 + 312;
  *(v4 + 38) = 0x500000000;
  v5 = (v4 + 392);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a1, *(a1 + 8));
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *a1;
    *(v4 + 51) = *(a1 + 16);
  }

  *(v4 + 59) = 0;
  *(v4 + 60) = 0;
  *(v4 + 26) = 0u;
  *(v4 + 27) = 0u;
  *(v4 + 28) = 0u;
  *(v4 + 58) = v4 + 472;
  *(v4 + 488) = 0u;
  *(v4 + 504) = 0u;
  *(v4 + 130) = 1065353216;
  *(v4 + 33) = 0u;
  *(v4 + 34) = 0u;
  *(v4 + 35) = 0u;
  *(v4 + 36) = 0u;
  *(v4 + 37) = 0u;
  *(v4 + 76) = 0;
  *(v4 + 154) = 1065353216;
  *a2 = v4;
  result = operator new(0x20uLL);
  *result = &unk_1F5B35450;
  result[1] = 0;
  result[2] = 0;
  result[3] = v4;
  a2[1] = result;
  return result;
}

uint64_t mlir::anec::OpIDMap::addOpID(mlir::anec::OpIDMap *this, mlir::Block **a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a2;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](this, &v17);
  llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v4, &v16, v14);
  if (*(llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](this, &v17) + 2) == 1 || *(v17[6] + 2) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 1;
  }

  v14[0] = "non-fusion op should only have 1 op ID";
  v15 = 259;
  mlir::Operation::emitError(v17, v14, v18);
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

    v5 = __p;
    if (__p)
    {
      v6 = v24;
      v7 = __p;
      if (v24 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v24 = v5;
      operator delete(v7);
    }

    v8 = v21;
    if (v21)
    {
      v9 = v22;
      v10 = v21;
      if (v22 != v21)
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
        v10 = v21;
      }

      v22 = v8;
      operator delete(v10);
    }

    if (v19 != &v20)
    {
      free(v19);
    }
  }

  return 0;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v6 = 0;
    v7 = 1;
    while (v5 != -4096)
    {
      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = v5 == -8192;
      }

      if (v8)
      {
        v6 = v4;
      }

      v9 = v3 + v7++;
      v3 = v9 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v6)
    {
      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
LABEL_24:
    v13 = a1;
    llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v10 = *(v13 + 8);
    v4 = v14;
    goto LABEL_15;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v10 + 1;
  if (*v4 != -4096)
  {
    --*(a1 + 12);
  }

  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  return v4 + 1;
}

uint64_t mlir::anec::OpIDMap::lookUpTheFirstOpID(mlir::anec::OpIDMap *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(*this + 32 * v5);
  if (v6 != a2)
  {
    v13 = 1;
    while (v6 != -4096)
    {
      v14 = v5 + v13++;
      v5 = v14 & v4;
      v6 = *(*this + 32 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    v34[0] = *(*(a2 + 6) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v34);
    if (!AttrData)
    {
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_27;
    }

    v17 = v16;
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v18 = AttrData;
    if (v16 >= 0x17)
    {
      if ((v16 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v16 | 7) + 1;
      }

      p_dst = operator new(v20);
      __dst.__r_.__value_.__l.__size_ = v17;
      __dst.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v16;
      p_dst = &__dst;
      if (!v16)
      {
        goto LABEL_26;
      }
    }

    memmove(p_dst, v18, v17);
LABEL_26:
    p_dst->__r_.__value_.__s.__data_[v17] = 0;
LABEL_27:
    v21 = std::string::insert(&__dst, 0, "Unable to find the corresponding op id from ");
    v22 = v21->__r_.__value_.__r.__words[2];
    *v32 = *&v21->__r_.__value_.__l.__data_;
    v33 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v35 = 260;
    v34[0] = v32;
    mlir::Operation::emitError(a2, v34, v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v43;
        v25 = __p;
        if (v43 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v43 = v23;
        operator delete(v25);
      }

      v26 = v40;
      if (v40)
      {
        v27 = v41;
        v28 = v40;
        if (v41 != v40)
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
          v28 = v40;
        }

        v41 = v26;
        operator delete(v28);
      }

      if (v38 != &v39)
      {
        free(v38);
      }
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    return 0;
  }

LABEL_3:
  v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](this, &v36);
  v8 = *v7;
  v9 = *(v7 + 4);
  v10 = *v7 + 8 * v9;
  if (*(v7 + 2))
  {
    if (v9)
    {
      v11 = 8 * v9;
      while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v8;
        v11 -= 8;
        if (!v11)
        {
          return *v10;
        }
      }
    }

    v10 = v8;
  }

  return *v10;
}

void std::__shared_ptr_emplace<mlir::anec::ANECustomIOInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B352B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void mlir::anec::ANECustomIOInfo::~ANECustomIOInfo(mlir::anec::ANECustomIOInfo *this)
{
  v2 = *(this + 8);
  v3 = *(this + 18);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *(this + 8);
  }

  if (v2 != this + 80)
  {
    free(v2);
  }

  v7 = *this;
  v8 = *(this + 2);
  if (v8)
  {
    v9 = v7 - 8;
    v10 = 16 * v8;
    do
    {
      v11 = *&v9[v10];
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v10 -= 16;
    }

    while (v10);
    v7 = *this;
  }

  if (v7 != this + 16)
  {
    free(v7);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__0NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_1F5B352E8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__0NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B352E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__0NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EEclEOSB_(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  v15 = v2;
  v16 = v3;
  v7 = **(a1 + 8);
  v8 = &v13;
  v9 = *(v7 + 8);
  v10 = *v7;
  if (v9 >= *(v7 + 12))
  {
    if (v10 <= &v13 && v10 + 16 * v9 > &v13)
    {
      v12 = &v13 - v10;
      v10 = *v7;
      v8 = &v12[*v7];
    }

    else
    {
      v10 = *v7;
      v8 = &v13;
    }
  }

  *(v10 + 16 * *(v7 + 8)) = *v8;
  *v8 = 0;
  *(v8 + 1) = 0;
  ++*(v7 + 8);
  v11 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  return 1;
}

uint64_t mlir::anec::anonymous namespace::ParseCustomIOInfoFromAttribute(mlir::Operation *)::$_2::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = a1;
  v3 = operator new(0x98uLL);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_1F5B35330;
  *(v3 + 40) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 5) = v3 + 56;
  *(v3 + 13) = 4;
  *(v3 + 11) = v3 + 104;
  *(v3 + 25) = 4;
  *(v3 + 17) = 1;
  *a2 = v3 + 24;
  a2[1] = v3;
  v19.var0 = "name";
  v19.var1 = 4;
  v4 = mlir::DictionaryAttr::get(&v18, v19);
  if (v4)
  {
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = v5;
  *(v3 + 3) = mlir::OpaqueAttr::getAttrData(&v17);
  *(v3 + 4) = v6;
  v20.var0 = "interleave";
  v20.var1 = 10;
  v7 = mlir::DictionaryAttr::get(&v18, v20);
  if (v7)
  {
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = v8;
  *(v3 + 17) = mlir::IntegerAttr::getUInt(&v17);
  v21.var0 = "shape";
  v21.var1 = 5;
  v9 = mlir::DictionaryAttr::get(&v18, v21);
  if (v9)
  {
    v10 = v9;
    if (mlir::DenseIntElementsAttr::classof(v9))
    {
      v9 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  mlir::getValues<long long>(v9, (v3 + 40));
  v22.var0 = "strides";
  v22.var1 = 7;
  v11 = mlir::DictionaryAttr::get(&v18, v22);
  if (v11)
  {
    v12 = v11;
    if (mlir::DenseIntElementsAttr::classof(v11))
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  mlir::getValues<long long>(v11, (v3 + 88));
  v23.var0 = "elementType";
  v23.var1 = 11;
  v13 = mlir::DictionaryAttr::get(&v18, v23);
  if (v13)
  {
    if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = v14;
  Value = mlir::AffineMapAttr::getValue(&v17);
  result = mlir::anec::getANECIRDataType(Value);
  *(v3 + 36) = result;
  return result;
}

void std::__shared_ptr_emplace<mlir::anec::ANECustomIO>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B35330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<mlir::anec::ANECustomIO>::__on_zero_shared(void *a1)
{
  v2 = a1[11];
  if (v2 != a1 + 13)
  {
    free(v2);
  }

  v3 = a1[5];
  if (v3 != a1 + 7)
  {

    free(v3);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__1NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EE7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_1F5B35368;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__1NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5B35368;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__1NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EEclEOSB_(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  v15 = v2;
  v16 = v3;
  v7 = **(a1 + 8);
  v8 = &v13;
  v9 = *(v7 + 64);
  v10 = *(v7 + 72);
  if (v10 >= *(v7 + 76))
  {
    if (v9 <= &v13 && v9 + 16 * v10 > &v13)
    {
      v12 = &v13 - v9;
      v9 = *(v7 + 64);
      v8 = &v12[v9];
    }

    else
    {
      v9 = *(v7 + 64);
      v8 = &v13;
    }
  }

  *(v9 + 16 * *(v7 + 72)) = *v8;
  *v8 = 0;
  *(v8 + 1) = 0;
  ++*(v7 + 72);
  v11 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  return 1;
}

void mlir::anec::getANEIOInfoFromTensorBuffer<mlir::anec::TensorBufferToTensor,true>(mlir::Operation *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v23 = v25;
  v24 = 0x400000000;
  v26 = v28;
  v27 = 0x400000000;
  v29 = 1;
  v20 = v22;
  v21 = 0x600000000;
  DestinationSize = mlir::anec::Unflatten::getDestinationSize(&v16);
  mlir::getValues<long long>(DestinationSize, &v20);
  Offsets = mlir::anec::RingBufferWriter::getOffsets(&v16);
  mlir::getValues<long long>(Offsets, &v26);
  if (!v21 || !v27)
  {
    v8 = 0;
    *a2 = 0;
    goto LABEL_22;
  }

  v29 = *v20;
  if (*(v16 + 9))
  {
    v5 = v16 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v15[0] = v6;
  v15[1] = v7;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v15);
  v11 = v9;
  v17 = v19;
  v18 = 0x600000000;
  v12 = (8 * v9) >> 3;
  if (v12 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v12, 8);
    v13 = v18;
    v14 = 8 * v11;
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = 0;
  v14 = 8 * v9;
  if (v9)
  {
LABEL_14:
    memcpy(v17 + 8 * v13, ArgAttrsAttr, v14);
    v13 = v18;
  }

LABEL_15:
  LODWORD(v18) = v13 + (v14 >> 3);
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v23, &v17);
  if (v17 != v19)
  {
    free(v17);
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  if (v24)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a2, &v23);
  }

  *(a2 + 48) = a2 + 64;
  *(a2 + 56) = 0x400000000;
  if (v27)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a2 + 48, &v26);
  }

  *(a2 + 96) = v29;
  v8 = 1;
LABEL_22:
  *(a2 + 104) = v8;
  if (v20 != v22)
  {
    free(v20);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v23 != v25)
  {
    free(v23);
  }
}

void mlir::anec::ANECIRNetwork::AddLiveState(uint64_t a1, char *a2)
{
  v2 = a2;
  v4 = (*a2 + 8);
  v12 = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 488, v4, &std::piecewise_construct, &v12);
  std::string::operator=((v5 + 40), v4);
  v7 = (a1 + 200);
  v6 = *(a1 + 200);
  v8 = *(a1 + 208);
  if (v8 >= *(a1 + 212))
  {
    if (v6 <= v2 && v6 + 16 * v8 > v2)
    {
      v11 = &v2[-v6];
      v6 = *v7;
      v2 = &v11[*v7];
    }

    else
    {
      v6 = *v7;
    }
  }

  v9 = *(a1 + 208);
  v10 = *v2;
  *(v6 + 16 * v9) = *v2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    LODWORD(v9) = *(a1 + 208);
  }

  *(a1 + 208) = v9 + 1;
}

void mlir::anec::ANECIRInput::~ANECIRInput(mlir::anec::ANECIRInput *this)
{
  mlir::anec::ANECIRInput::~ANECIRInput(this);

  operator delete(v1);
}

{
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  *(this + 5) = &unk_1F5B2E9F8;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*(this + 6));
LABEL_9:
  *this = &unk_1F5B2E868;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void mlir::anec::ANECIRInput::UpdateNamesWithProcName(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v4;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  mlir::anec::PrependProcNameToName(v4);
  v7 = v4;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v4, &std::piecewise_construct, &v7);
  std::string::operator=((v5 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void non-virtual thunk tomlir::anec::ANECIRInput::~ANECIRInput(mlir::anec::ANECIRInput *this)
{
  mlir::anec::ANECIRInput::~ANECIRInput((this - 40));
}

{
  mlir::anec::ANECIRInput::~ANECIRInput((this - 40));

  operator delete(v1);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRInput *,std::shared_ptr<mlir::anec::ANECIRInput>::__shared_ptr_default_delete<mlir::anec::ANECIRInput,mlir::anec::ANECIRInput>,std::allocator<mlir::anec::ANECIRInput>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRInput *,std::shared_ptr<mlir::anec::ANECIRInput>::__shared_ptr_default_delete<mlir::anec::ANECIRInput,mlir::anec::ANECIRInput>,std::allocator<mlir::anec::ANECIRInput>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    mlir::anec::ANECIRInput::~ANECIRInput(v1);

    operator delete(v2);
  }
}

uint64_t std::__optional_destruct_base<mlir::anec::ANEIOInfo,false>::__optional_destruct_base[abi:nn200100]<mlir::anec::ANEIOInfo const&>(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  if (a1 != a2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      if (v5 < 5)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, *(a2 + 8), 8);
        v6 = *(a2 + 8);
        if (!v6)
        {
LABEL_8:
          *(a1 + 8) = v5;
          goto LABEL_9;
        }

        v4 = *a1;
      }

      memcpy(v4, *a2, 8 * v6);
      goto LABEL_8;
    }
  }

LABEL_9:
  v7 = (a1 + 64);
  *(a1 + 48) = a1 + 64;
  *(a1 + 56) = 0x400000000;
  if (a1 != a2)
  {
    v8 = *(a2 + 56);
    if (v8)
    {
      if (v8 < 5)
      {
        v9 = *(a2 + 56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, a1 + 64, *(a2 + 56), 8);
        v9 = *(a2 + 56);
        if (!v9)
        {
LABEL_16:
          *(a1 + 56) = v8;
          goto LABEL_17;
        }

        v7 = *(a1 + 48);
      }

      memcpy(v7, *(a2 + 48), 8 * v9);
      goto LABEL_16;
    }
  }

LABEL_17:
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 1;
  return a1;
}

void std::__optional_storage_base<mlir::anec::ANEIOInfo,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::anec::ANEIOInfo,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == *(a2 + 104))
  {
    if (*(a1 + 104))
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(a1, a2);
      llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 48, (a2 + 48));
      *(a1 + 96) = *(a2 + 96);
    }
  }

  else if (*(a1 + 104))
  {
    v4 = *(a1 + 48);
    if (v4 != (a1 + 64))
    {
      free(v4);
    }

    if (*a1 != a1 + 16)
    {
      free(*a1);
    }

    *(a1 + 104) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x400000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(a1, a2);
    }

    *(a1 + 48) = a1 + 64;
    *(a1 + 56) = 0x400000000;
    if (*(a2 + 56))
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(a1 + 48, (a2 + 48));
    }

    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = 1;
  }
}

char *std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v6 <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = v6;
    }

    v11 = v6 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v10;
    }

    if (v12 < 0)
    {
LABEL_23:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v13 = 2 * v12;
    result = operator new(2 * v12);
    v14 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v13];
    v15 = a3 - a2;
    if (v15)
    {
      result = memcpy(result, a2, v15);
    }

LABEL_18:
    v18 = &v14[v15];
    goto LABEL_22;
  }

  v14 = a1[1];
  v16 = v14 - result;
  if (a4 > (v14 - result) >> 1)
  {
    v17 = &a2[v16];
    if (v14 != result)
    {
      result = memmove(result, a2, v16);
      v14 = a1[1];
    }

    v15 = a3 - v17;
    if (v15)
    {
      result = memmove(v14, v17, v15);
    }

    goto LABEL_18;
  }

  v19 = a3 - a2;
  if (v19)
  {
    v20 = result;
    memmove(result, a2, v19);
    result = v20;
  }

  v18 = &result[v19];
LABEL_22:
  a1[1] = v18;
  return result;
}

uint64_t mlir::anec::anonymous namespace::updateNetworkIOTypes(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&)::$_1::operator()(mlir::Block **a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a2);
  v33 = ElementTypeOrSelf;
  v32 = mlir::getElementTypeOrSelf(a3);
  if (ElementTypeOrSelf != v32)
  {
    if (mlir::Type::isF32(&v33) && mlir::Type::isF16(&v32))
    {
      v10 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v10)
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      }

      else
      {
        v11 = 0;
      }

      v34[0] = v10;
      v34[1] = v11;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v34);
      v22 = *(ArgAttrsAttr + 8 * v21 - 8);
      if (v22 * (mlir::Type::getIntOrFloatBitWidth(&v33) >> 3) <= a4)
      {
        v8 = v33;
        goto LABEL_3;
      }

      v30[0] = "Invalid input strides: row stride must be large enough to represent the whole F32 row";
      v31 = 259;
      mlir::Operation::emitError(a1, v30, v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 != 1)
      {
LABEL_46:
        ANECIRDataType = 0;
        return ANECIRDataType & 0xFFFFFFFFFFLL;
      }

      if (v41 != &v42)
      {
        free(v41);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v40;
        v25 = __p;
        if (v40 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v40 = v23;
        operator delete(v25);
      }

      v15 = v37;
      if (!v37)
      {
LABEL_44:
        if (v35 != &v36)
        {
          free(v35);
        }

        goto LABEL_46;
      }

      v26 = v38;
      v17 = v37;
      if (v38 == v37)
      {
LABEL_43:
        v38 = v15;
        operator delete(v17);
        goto LABEL_44;
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

      while (v26 != v15);
    }

    else
    {
      v30[0] = "Only F16 <-> F32 ANE / host type conversion is supported";
      v31 = 259;
      mlir::Operation::emitError(a1, v30, v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 != 1)
      {
        goto LABEL_46;
      }

      if (v41 != &v42)
      {
        free(v41);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v40;
        v14 = __p;
        if (v40 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v40 = v12;
        operator delete(v14);
      }

      v15 = v37;
      if (!v37)
      {
        goto LABEL_44;
      }

      v16 = v38;
      v17 = v37;
      if (v38 == v37)
      {
        goto LABEL_43;
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
    }

    v17 = v37;
    goto LABEL_43;
  }

  v8 = ElementTypeOrSelf;
LABEL_3:
  ANECIRDataType = mlir::anec::getANECIRDataType(v8);
  return ANECIRDataType & 0xFFFFFFFFFFLL;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4anec12_GLOBAL__N_120updateNetworkIOTypesES3_RKNSt3__110shared_ptrINSB_13ANECIRNetworkEEEE3__0NS1_9placement10RegionCallEvEENSD_9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *a1, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
    {
      v13[5] = v2;
      v13[6] = v3;
      v4 = *a1;
      v13[0] = a2;
      AttrData = mlir::OpaqueAttr::getAttrData(*v4);
      v7 = v6;
      Callee = mlir::placement::RegionCall::getCallee(v13);
      if (v7 == v9 && (!v7 || !memcmp(AttrData, Callee, v7)))
      {
        v10 = *(v4 + 8);
        v11 = v13[0];
        v12 = *(v10 + 8);
        if (v12 >= *(v10 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(*(v4 + 8), v10 + 16, v12 + 1, 8);
          LODWORD(v12) = *(v10 + 8);
        }

        *(*v10 + 8 * v12) = v11;
        ++*(v10 + 8);
      }
    }
  }
}

void mlir::anec::ANECIRNetwork::~ANECIRNetwork(mlir::anec::ANECIRNetwork *this)
{
  mlir::anec::ANECIRNetwork::~ANECIRNetwork(this);

  operator delete(v1);
}

{
  *this = &unk_1F5B35430;
  v2 = *(this + 75);
  if (v2)
  {
    do
    {
      v10 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_19:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_19;
      }

      operator delete(v2);
      v2 = v10;
    }

    while (v10);
  }

  v3 = *(this + 73);
  *(this + 73) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 72);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 567) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 567) < 0)
  {
LABEL_7:
    operator delete(*(this + 68));
  }

LABEL_8:
  v5 = *(this + 63);
  if (v5)
  {
    do
    {
      v11 = *v5;
      if (*(v5 + 63) < 0)
      {
        operator delete(v5[5]);
        if (*(v5 + 39) < 0)
        {
LABEL_25:
          operator delete(v5[2]);
        }
      }

      else if (*(v5 + 39) < 0)
      {
        goto LABEL_25;
      }

      operator delete(v5);
      v5 = v11;
    }

    while (v11);
  }

  v6 = *(this + 61);
  *(this + 61) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::destroy(this + 464, *(this + 59));
  v7 = *(this + 55);
  if (v7)
  {
    v8 = *(this + 56);
    v9 = *(this + 55);
    if (v8 != v7)
    {
      do
      {
        v12 = *(v8 - 8);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v8 -= 16;
      }

      while (v8 != v7);
      v9 = *(this + 55);
    }

    *(this + 56) = v7;
    operator delete(v9);
  }

  v13 = *(this + 52);
  if (v13)
  {
    v14 = *(this + 53);
    v15 = *(this + 52);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = *(this + 52);
    }

    *(this + 53) = v13;
    operator delete(v15);
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  v17 = *(this + 37);
  v18 = *(this + 76);
  if (v18)
  {
    v19 = v17 - 8;
    v20 = 16 * v18;
    do
    {
      v21 = *&v19[v20];
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v20 -= 16;
    }

    while (v20);
    v17 = *(this + 37);
  }

  if (v17 != this + 312)
  {
    free(v17);
  }

  v22 = *(this + 25);
  v23 = *(this + 52);
  if (v23)
  {
    v24 = v22 - 8;
    v25 = 16 * v23;
    do
    {
      v26 = *&v24[v25];
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      v25 -= 16;
    }

    while (v25);
    v22 = *(this + 25);
  }

  if (v22 != this + 216)
  {
    free(v22);
  }

  v27 = *(this + 13);
  v28 = *(this + 28);
  if (v28)
  {
    v29 = v27 - 8;
    v30 = 16 * v28;
    do
    {
      v31 = *&v29[v30];
      if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      v30 -= 16;
    }

    while (v30);
    v27 = *(this + 13);
  }

  if (v27 != this + 120)
  {
    free(v27);
  }

  v32 = *(this + 1);
  v33 = *(this + 4);
  if (v33)
  {
    v34 = v32 - 8;
    v35 = 16 * v33;
    do
    {
      v36 = *&v34[v35];
      if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
      }

      v35 -= 16;
    }

    while (v35);
    v32 = *(this + 1);
  }

  if (v32 != this + 24)
  {
    free(v32);
  }
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRNetwork *,std::shared_ptr<mlir::anec::ANECIRNetwork>::__shared_ptr_default_delete<mlir::anec::ANECIRNetwork,mlir::anec::ANECIRNetwork>,std::allocator<mlir::anec::ANECIRNetwork>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<mlir::anec::ANECIRNetwork *,std::shared_ptr<mlir::anec::ANECIRNetwork>::__shared_ptr_default_delete<mlir::anec::ANECIRNetwork,mlir::anec::ANECIRNetwork>,std::allocator<mlir::anec::ANECIRNetwork>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t mlir::SilcPlistInterfaceImpl::invoke(uint64_t a1, uint64_t *a2)
{
  return mlir::SilcPlistInterfaceImpl::addCCOpToNetwork<mlir::silc::SilcAllSliceOp>(a1, 75, a2);
}

{
  return mlir::SilcPlistInterfaceImpl::addCCOpToNetwork<mlir::silc::SilcAllSliceOp>(a1, 76, a2);
}

uint64_t mlir::SilcPlistInterfaceImpl::invoke(mlir::SilcPlistInterfaceImpl *this, mlir::silc::SilcAllReduceOp *a2)
{
  v4 = operator new(0xA0uLL);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 9) = -1;
  *(v4 + 18) = 0;
  *v4 = &unk_1F5B354E0;
  *(v4 + 38) = 11;
  mlir::anec::fillZinIrCommonInfo(*a2, v4, 78, *(this + 1), 0, 0);
  v5 = *a2;
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(a2);
  MeshOrLookup = mlir::silc::getMeshOrLookup(v5, AttributeValueNames);
  mlir::silc::MeshAttr::getMeshVector(&MeshOrLookup, &v19);
  v7 = *(v4 + 10);
  if (v7)
  {
    *(v4 + 11) = v7;
    operator delete(v7);
  }

  *(v4 + 5) = v19;
  *(v4 + 12) = v20;
  MeshOrLookup = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(a2);
  v8 = *a2;
  v9 = mlir::pdl::OperationOp::getAttributeValueNames(a2);
  v21 = mlir::silc::getMeshOrLookup(v8, v9);
  mlir::silc::TensorAxisRefAttr::getMeshAxesVector(&MeshOrLookup, &v21, &v19);
  v10 = *(v4 + 13);
  if (v10)
  {
    *(v4 + 14) = v10;
    operator delete(v10);
  }

  *(v4 + 104) = v19;
  *(v4 + 15) = v20;
  std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short const*,unsigned short const*>(v4 + 16, 0, 0, 0);
  v11 = mlir::silc::SilcAllReduceOp::getReduceOp(a2) - 1;
  if (v11 <= 4)
  {
    *(v4 + 38) = dword_1E0999AB0[v11];
  }

  v12 = *(this + 1);
  v13 = operator new(0xC8uLL);
  v14 = v13;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *v13 = &unk_1F5B2E830;
  v15 = v13 + 24;
  *(v13 + 3) = &unk_1F5B2E868;
  if (v4[31] < 0)
  {
    std::string::__init_copy_ctor_external((v13 + 32), *(v4 + 1), *(v4 + 2));
  }

  else
  {
    *(v13 + 2) = *(v4 + 8);
    *(v13 + 6) = *(v4 + 3);
  }

  *(v14 + 14) = 17;
  *(v14 + 3) = &unk_1F5B34308;
  *(v14 + 8) = v4;
  v14[72] = 0;
  *(v14 + 10) = 0;
  *(v14 + 11) = v14 + 104;
  *(v14 + 12) = 0x100000000;
  *(v14 + 17) = v14 + 152;
  *(v14 + 18) = 0x300000000;
  *&v18 = v15;
  *(&v18 + 1) = v14;
  mlir::anec::ANECIRNetwork::AddUnit(v12, &v18);
  v16 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  return 1;
}

uint64_t mlir::SilcPlistInterfaceImpl::addCCOpToNetwork<mlir::silc::SilcAllSliceOp>(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = operator new(0x98uLL);
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 9) = -1;
  *v6 = &unk_1F5B354C0;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 18) = 0;
  mlir::anec::fillZinIrCommonInfo(*a3, v6, a2, *(a1 + 8), 0, 0);
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(a3);
  mlir::silc::ShardingAttr::getMeshVector(&AttributeValueNames, *a3, &v17);
  v7 = *(v6 + 10);
  if (v7)
  {
    *(v6 + 11) = v7;
    operator delete(v7);
  }

  *(v6 + 5) = v17;
  *(v6 + 12) = v18;
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(a3);
  mlir::silc::ShardingAttr::getMeshAxesVector(&AttributeValueNames, *a3, &v17);
  v8 = *(v6 + 13);
  if (v8)
  {
    *(v6 + 14) = v8;
    operator delete(v8);
  }

  *(v6 + 104) = v17;
  *(v6 + 15) = v18;
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(a3);
  mlir::silc::ShardingAttr::getTensorAxesVector(&AttributeValueNames, &v17);
  v9 = *(v6 + 16);
  if (v9)
  {
    *(v6 + 17) = v9;
    operator delete(v9);
  }

  *(v6 + 8) = v17;
  *(v6 + 18) = v18;
  v10 = *(a1 + 8);
  v11 = operator new(0xC8uLL);
  v12 = v11;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *v11 = &unk_1F5B2E830;
  v13 = v11 + 24;
  *(v11 + 3) = &unk_1F5B2E868;
  if (v6[31] < 0)
  {
    std::string::__init_copy_ctor_external((v11 + 32), *(v6 + 1), *(v6 + 2));
  }

  else
  {
    *(v11 + 2) = *(v6 + 8);
    *(v11 + 6) = *(v6 + 3);
  }

  *(v12 + 14) = 17;
  *(v12 + 3) = &unk_1F5B34308;
  *(v12 + 8) = v6;
  v12[72] = 0;
  *(v12 + 10) = 0;
  *(v12 + 11) = v12 + 104;
  *(v12 + 12) = 0x100000000;
  *(v12 + 17) = v12 + 152;
  *(v12 + 18) = 0x300000000;
  *&v16 = v13;
  *(&v16 + 1) = v12;
  mlir::anec::ANECIRNetwork::AddUnit(v10, &v16);
  v14 = *(&v16 + 1);
  if (*(&v16 + 1) && !atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  return 1;
}

void ZinIrCollectiveCommunicationUnitInfo::~ZinIrCollectiveCommunicationUnitInfo(ZinIrCollectiveCommunicationUnitInfo *this)
{
  ZinIrCollectiveCommunicationUnitInfo::~ZinIrCollectiveCommunicationUnitInfo(this);

  operator delete(v1);
}

{
  *this = &unk_1F5B354C0;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  *this = &unk_1F5AEDE70;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}