uint64_t mlir::OpBuilder::create<mlir::anec::DeQuant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int *a6)
{
  v29[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::DeQuant,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::DeQuant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>(v29, v26, v25);
  }

  mlir::OperationState::OperationState(v29, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v18 = *(a5 + 8);
  v17 = (a5 + 8);
  v20 = llvm::APFloatBase::PPCDoubleDouble(v19);
  if (v20 == v18)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v28, v17);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v28, v17);
  }

  mlir::anec::DeQuant::build(a1, v29, v15, v16, v27, *a6);
  if (v20 == v28.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v28);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v28);
  }

  v21 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::DeQuant,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v22;
}

uint64_t mlir::getSplatIntValue<int>(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  if (mlir::ElementsAttr::isSplat(&v8) && (v7[0] = mlir::CallOpInterface::getArgOperands(&v8), v7[1] = v2, *(*mlir::ElementsAttr::isSplat(v7) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    LODWORD(v7[0]) = 0;
    mlir::copyElementsAttrData<int>(v8, v9, v7, 0);
    v5 = v7[0] & 0xFFFFFF00;
    v3 = LOBYTE(v7[0]);
    v4 = 0x100000000;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  return v4 | v5 | v3;
}

BOOL mlir::anonymous namespace::anonymous namespace::isZeroConstant(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  __p = &v14;
  v18 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseIntOrFPElementsAttr>::match(&__p, DefiningOp) || (mlir::DenseElementsAttr::isSplat(&v14) & 1) == 0)
  {
    return 0;
  }

  v2 = v14;
  if (mlir::DenseIntElementsAttr::classof(v14))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v13 = v3;
  if (!v3)
  {
    v6 = v14;
    if (mlir::DenseFPElementsAttr::classof(v14))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    __p = v7;
    if (v7)
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&__p, &v18);
      v8 = v19;
      if (llvm::APFloatBase::PPCDoubleDouble(v9) == v8)
      {
        v10 = *(v20 + 28);
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v19);
      }

      else
      {
        v10 = BYTE12(v20);
        llvm::detail::IEEEFloat::~IEEEFloat(&v19);
      }

      return (v10 & 7) == 3;
    }

    return 0;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v13, &v18);
  v17 = v20;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v18, &__p);
  v4 = v16;
  if (v16 <= 0x40)
  {
    return __p == 0;
  }

  result = llvm::APInt::countLeadingZerosSlowCase(&__p) == v4;
  if (__p)
  {
    v12 = result;
    operator delete[](__p);
    return v12;
  }

  return result;
}

uint64_t llvm::SmallVector<long long,6u>::SmallVector(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v4 = (result + 16);
  *result = result + 16;
  *(result + 12) = 6;
  v5 = *a3;
  if (a2 >= 7)
  {
    *(result + 8) = 0;
    v6 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, v4, a2, 8);
    result = v6;
    v7 = *v6 + (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v8 = a2 & 3;
    v9 = vdupq_n_s64(v5);
    v10 = *v6 + 1;
    v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v10[-1] = v9;
      *v10 = v9;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != a2)
    {
      do
      {
        *v7++ = v5;
        --v8;
      }

      while (v8);
    }

    goto LABEL_23;
  }

  if (a2)
  {
    v12 = vdupq_n_s64(a2 - 1);
    v13 = vmovn_s64(vcgeq_u64(v12, xmmword_1E09700F0));
    if (v13.i8[0])
    {
      *v4 = v5;
    }

    v14 = (a2 + 1) & 0xE;
    if (v13.i8[4])
    {
      *(result + 24) = v5;
    }

    if (v14 != 2)
    {
      v15 = vmovn_s64(vcgtq_u64(v12, xmmword_1E0970220));
      if (v15.i8[0])
      {
        *(result + 32) = v5;
        if ((v15.i8[4] & 1) == 0)
        {
LABEL_15:
          if (v14 == 4)
          {
            goto LABEL_23;
          }

LABEL_19:
          v16 = vmovn_s64(vcgtq_u64(v12, xmmword_1E0970230));
          if (v16.i8[0])
          {
            *(result + 48) = v5;
          }

          if (v16.i8[4])
          {
            *(result + 56) = v5;
          }

          goto LABEL_23;
        }
      }

      else if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_15;
      }

      *(result + 40) = v5;
      if (v14 == 4)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

LABEL_23:
  *(result + 8) = a2;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::MemRefType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::MemRefType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
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

uint64_t mlir::detail::constant_op_binder<mlir::DenseIntOrFPElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
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

void *mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::QuantizeOp>::~ConvertQuantizationOp(void *a1)
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

void mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::QuantizeOp>::~ConvertQuantizationOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::QuantizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::QuantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::QuantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 64);
  v33 = *(a3 + 56);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v27) || !mlir::CallOpInterface::getArgOperands(&v27))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

LABEL_3:
      i = v34 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v25;
    v32 = *(a3 + 64);
    v26 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v33 = 0;
      v34 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v33 = v18;
    v34 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v33) || !mlir::CallOpInterface::getArgOperands(&v33))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::QuantizeOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v53[3] = *MEMORY[0x1E69E9840];
  v50 = *(a3 + 56);
  v8 = mlir::ValueRange::dereference_iterator(&v50, 0);
  v45 = v8;
  v9 = mlir::ValueRange::dereference_iterator(&v50, 1);
  v10 = mlir::ValueRange::dereference_iterator(&v50, 2);
  if (*(a1 + 104))
  {
    goto LABEL_14;
  }

  v11 = *(a3 + 56);
  v12 = *(a1 + 96);
  if (*(a2 + 36))
  {
    v13 = a2 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = mlir::TypeConverter::convertType(v12, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v16 = v15;
  if (v15)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  v48[0] = v16;
  v48[1] = v15;
  __p = v11;
  *&v52 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v52 = 0;
  v17 = mlir::ValueRange::dereference_iterator(&__p, 0);
  __p = 0;
  *&v52 = 0;
  p_p = &__p;
  v53[0] = v17;
  DefiningOp = mlir::Value::getDefiningOp(v53);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, DefiningOp) & 1) == 0 || (SplatFloat = mlir::getSplatFloatValue<float>(__p, v52), (SplatFloat & 0x100000000) == 0))
  {
    __p = operator new(0x38uLL);
    v52 = xmmword_1E0982710;
    strcpy(__p, "failed: ANEC only support scalar constant scale value");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    operator delete(__p);
    if (matched)
    {
      return 1;
    }

LABEL_14:
    v22 = *(a2 + 24);
    v23 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v23)
    {
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    __p = mlir::getRankPromotionTypeForANE(v23, v24);
    *&v52 = v25;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
    v28 = v27;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v8);
    v53[0] = mlir::MemRefType::get(ArgAttrsAttr, v28, ElementTypeOrSelf, 0, 0, 0);
    v45 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v22, v53, &v45) - 16;
    if ((v31 & 1) == 0)
    {
      return 0;
    }

    if ((v33 & 1) == 0)
    {
      return 0;
    }

    v53[0] = v32;
    v21 = 1;
    mlir::ValueRange::ValueRange(&__p, v53, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, v52);
    return v21;
  }

  v35 = *&SplatFloat;
  __p = v11;
  *&v52 = 2;
  __p = mlir::ValueRange::offset_base(&__p, 2);
  *&v52 = 0;
  v36 = mlir::ValueRange::dereference_iterator(&__p, 0);
  __p = 0;
  *&v52 = 0;
  p_p = &__p;
  v53[0] = v36;
  v37 = mlir::Value::getDefiningOp(v53);
  if (!v37 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v37) & 1) == 0 || (SplatInt = mlir::getSplatIntValue<int>(__p, v52), v46 = SplatInt, v47 = BYTE4(SplatInt), (SplatInt & 0x100000000) == 0))
  {
    __p = operator new(0x40uLL);
    v52 = xmmword_1E0982990;
    strcpy(__p, "failed: ANEC only support zeroPoint constant scale value");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p);
    }

LABEL_11:
    if (matched)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v39 = *(a2 + 24);
  __p = v11;
  *&v52 = 0;
  p_p = mlir::ValueRange::dereference_iterator(&__p, 0);
  v40 = llvm::detail::IEEEFloat::IEEEFloat(v53, v35);
  v41 = llvm::APFloatBase::IEEEsingle(v40);
  llvm::APFloat::Storage::Storage(&v52, v53, v41);
  llvm::detail::IEEEFloat::~IEEEFloat(v53);
  v42 = mlir::OpBuilder::create<mlir::anec::Quant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>((a4 + 8), v39, v48, &p_p, &__p, &v46);
  v43 = v42 - 16;
  v44 = v52;
  if (llvm::APFloatBase::PPCDoubleDouble(v42) == v44)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v52);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v52);
  }

  v53[0] = v43;
  v21 = 1;
  mlir::ValueRange::ValueRange(&__p, v53, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, v52);
  return v21;
}

unint64_t mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::QuantizeOp>::createBiasScaleOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v75[1] = *MEMORY[0x1E69E9840];
  v69 = a3;
  v70 = a2;
  v68 = a4;
  v12 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v67[0] = v12;
  v67[1] = v13;
  v14 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
    v65 = v14;
    v66 = v15;
    if (v12)
    {
      v16 = mlir::TypeConverter::convertType(*(a1 + 96), v12);
      v17 = v16;
      if (v16)
      {
        v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      }

      v64[0] = v17;
      v64[1] = v16;
      v73 = v75;
      v74 = 0x100000000;
      if ((mlir::mps::DequantizeLUTOp::getAxis(&v70) & 0x100000000) != 0)
      {
        Axis = mlir::mps::DequantizeLUTOp::getAxis(&v70);
      }

      else
      {
        Axis = 0;
      }

      *__p = Axis;
      mlir::CallableOpInterface::getArgAttrsAttr(v67);
      if ((mlir::getPositivePromotedAxes(__p, 1, v20, &v73, 0, 0) & 1) == 0)
      {
        *__p = operator new(0x38uLL);
        *&__p[8] = xmmword_1E0982900;
        strcpy(*__p, "failed: could not extract positive promoted axes");
        mlir::logMatchFailure(__p, *(v70 + 24), a6);
        if ((__p[23] & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = *__p;
LABEL_45:
        operator delete(v27);
        goto LABEL_46;
      }

      if (v74 == 1)
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v65);
        NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v22);
        FunctionType = mlir::func::FuncOp::getFunctionType(&v70);
        v25 = *(v70 + 24);
        {
          v26 = v9 & 0xFFFFFFFFFFFFFF00;
LABEL_67:
          if (v73 != v75)
          {
            free(v73);
          }

          return v26 | v9;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(v64);
        IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
        if (NumElements == 1 || *v73 == IndexFromDim)
        {
          *__p = v8;
          DefiningOp = mlir::Value::getDefiningOp(__p);
          if (DefiningOp)
          {
            {
              v60 = DefiningOp;
              DefiningOp = v60;
            }

            if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              if (a5)
              {
                v36 = v68;
              }

              else
              {
                v36 = 0;
              }

              if (a5)
              {
                v37 = 0;
              }

              else
              {
                v37 = v68;
              }

              goto LABEL_63;
            }
          }

          if (NumElements == 1)
          {
            if ((a5 & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_60;
          }

          v8 = v68;
        }

        *__p = &__p[16];
        *&__p[8] = 0xC00000000;
        v63.__r_.__value_.__r.__words[0] = 0;
        if (GOCConstantValue)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v64);
          if ((v35 & 1) == 0)
          {
            v53 = 0;
LABEL_55:
            if (*__p != &__p[16])
            {
              free(*__p);
            }

            if (v53)
            {
              if ((a5 & 1) == 0)
              {
LABEL_62:
                v56 = mlir::CallableOpInterface::getArgAttrsAttr(v64);
                *__p = mlir::MemRefType::get(v56, v57, FunctionType, 0, 0, 0);
                GOC = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::MemRefType,mlir::Value &,mlir::Value &>((a6 + 8), v25, __p, &v69, &v68);
                goto LABEL_63;
              }

              if (GOCConstantValue)
              {
LABEL_61:
                v54 = mlir::CallableOpInterface::getArgAttrsAttr(v64);
                *__p = mlir::MemRefType::get(v54, v55, FunctionType, 0, 0, 0);
                GOC = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::MemRefType,mlir::Value &,mlir::Value &>((a6 + 8), v25, __p, &v69, &v68);
LABEL_63:
                if (*(GOC + 36))
                {
                  v58 = GOC - 16;
                }

                else
                {
                  v58 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v58, 0);
                LOBYTE(v9) = NextResultAtOffset;
                v26 = NextResultAtOffset & 0xFFFFFFFFFFFFFF00;
                goto LABEL_67;
              }

LABEL_60:
              *__p = mlir::Builder::getF16FloatAttr((a6 + 8), 0.0, v35);
              v68 = (mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a6 + 8), v25, &v68, __p) - 16);
              goto LABEL_61;
            }

LABEL_46:
            LOBYTE(v9) = 0;
            v26 = 0;
            goto LABEL_67;
          }

          v68 = (GOCConstant - 16);
        }

        else
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v64);
          v62 = 1;
          llvm::SmallVector<long long,6u>::SmallVector(&v71, v42, &v62);
          v43 = mlir::CallableOpInterface::getArgAttrsAttr(&v65);
          v45 = mlir::ShapedType::getNumElements(v43, v44);
          v46 = v71.__r_.__value_.__r.__words[0];
          *(v71.__r_.__value_.__r.__words[0] + 8 * *v73) = v45;
          v47 = LODWORD(v71.__r_.__value_.__r.__words[1]);
          isSplat = mlir::ElementsAttr::isSplat(&v65);
          v62 = mlir::MemRefType::get(v46, v47, isSplat, 0, 0, 0);
          v49 = mlir::CallableOpInterface::getArgAttrsAttr(v64);
          v51 = v50;
          v52 = mlir::ElementsAttr::isSplat(&v65);
          v61 = mlir::MemRefType::get(v49, v51, v52, 0, 0, 0);
          v68 = (mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 8), v25, &v62, &v68) - 16);
          v68 = (mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a6 + 8), v25, &v61, &v68) - 16);
          if (v71.__r_.__value_.__l.__data_ != &v71.__r_.__value_.__r.__words[2])
          {
            free(v71.__r_.__value_.__l.__data_);
          }
        }

        v53 = 1;
        goto LABEL_55;
      }

      std::to_string(&v63, v74);
      v28 = std::string::insert(&v63, 0, "Operation requires exactly one axis for quantization, but got ");
      v29 = v28->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v71, " axes.");
      v31 = v30->__r_.__value_.__r.__words[2];
      *__p = *&v30->__r_.__value_.__l.__data_;
      *&__p[16] = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      mlir::logMatchFailure(__p, *(v70 + 24), a6);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_24:
          if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_44;
        }
      }

      else if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      operator delete(v71.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_44:
      v27 = v63.__r_.__value_.__r.__words[0];
      goto LABEL_45;
    }
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  *__p = operator new(0x30uLL);
  *&__p[8] = xmmword_1E0982A20;
  strcpy(*__p, "failed: quantization inputs must be static");
  mlir::logMatchFailure(__p, *(a2 + 24), a6);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Quant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int *a6)
{
  v29[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Quant,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Quant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>(v29, v26, v25);
  }

  mlir::OperationState::OperationState(v29, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v18 = *(a5 + 8);
  v17 = (a5 + 8);
  v20 = llvm::APFloatBase::PPCDoubleDouble(v19);
  if (v20 == v18)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v28, v17);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v28, v17);
  }

  mlir::anec::DeQuant::build(a1, v29, v15, v16, v27, *a6);
  if (v20 == v28.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v28);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v28);
  }

  v21 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Quant,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v22;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::MemRefType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
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

void *mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DDataGradientOp,mlir::anec::Deconvolution>::~ConvertConv(void *a1)
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DDataGradientOp,mlir::anec::Deconvolution>::~ConvertConv(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv2DDataGradientOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::Conv2DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Conv2DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 104);
  v37 = *(a3 + 96);
  v38 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v38 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v37, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v29 = v10;
        v30 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v29) || !mlir::CallOpInterface::getArgOperands(&v29))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v29);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

LABEL_3:
      i = v38 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 96);
    v35 = *(a3 + 80);
    v36 = v25;
    v26 = *(a3 + 64);
    v27 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v27;
    v28 = *(a3 + 32);
    v33 = *(a3 + 48);
    v34 = v26;
    v32 = v28;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v37 = v18;
    v38 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v37) || !mlir::CallOpInterface::getArgOperands(&v37))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v37);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DDataGradientOp,mlir::anec::Deconvolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v277 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 104);
  v235 = a2;
  v273 = *(a3 + 96);
  v234 = 0;
  v217 = *(a2 + 24);
  v7 = mlir::ValueRange::dereference_iterator(&v273, 0);
  v233 = v7;
  v232 = mlir::ValueRange::dereference_iterator(&v273, 1);
  v218 = a2;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v231[0] = v10;
  v231[1] = v11;
  v12 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v230[0] = v12;
  v230[1] = v13;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v230);
  v16 = v15;
  v17 = (*(v232 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v228 = v17;
  v229 = v18;
  *v253 = v235;
  Groups = mlir::mps::Conv3DOp::getGroups(v253);
  v19 = mlir::CallableOpInterface::getArgAttrsAttr(&v228);
  v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v228);
  v22 = (v20 + 8 * v21);
  v270 = v272;
  v271 = 0x400000000;
  v23 = (v22 - v19) >> 3;
  if (v23 < 5)
  {
    v24 = 0;
    if (v22 == v19)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v270, v272, v23, 8);
  v24 = v271;
  if (v22 != v19)
  {
LABEL_17:
    memcpy(&v270[8 * v24], v19, v22 - v19);
    v24 = v271;
  }

LABEL_18:
  LODWORD(v271) = v24 + ((v22 - v19) >> 3);
  v267 = v269;
  v268 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v235);
  if (InputAttributeNames)
  {
    v26 = InputAttributeNames;
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v26;
  }

  else
  {
    v27 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v27, &v267, 1);
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v235))
  {
    *v253 = operator new(0x30uLL);
    *&v253[8] = xmmword_1E09829C0;
    strcpy(*v253, "Only dataLayout NCHW is supported for Conv2D");
LABEL_23:
    v28 = a4;
    mlir::logMatchFailure(v253, *(v235 + 24), a4);
    if ((v253[23] & 0x80000000) == 0)
    {
LABEL_26:
      v30 = 0;
      v31 = 0;
      goto LABEL_27;
    }

    v29 = *v253;
LABEL_25:
    operator delete(v29);
    goto LABEL_26;
  }

  if (mlir::mps::Conv3DOp::getWeightsLayout(&v235) != 2 && mlir::mps::Conv3DOp::getWeightsLayout(&v235) != 3)
  {
    *v253 = operator new(0x28uLL);
    *&v253[8] = xmmword_1E09826C0;
    strcpy(*v253, "Unsupported weightsLayout for Conv2D");
    goto LABEL_23;
  }

  v226 = 0uLL;
  v224 = 0;
  v225 = 0;
  v222 = 0;
  v223 = 0;
  v220 = 0;
  v221 = 0;
  v34 = *(*(v235 + 72) + 56);
  *v253 = &v226;
  *&v253[8] = &v224;
  *&v253[16] = &v222;
  *&v253[24] = &v220;
  v249 = v34;
  DefiningOp = mlir::Value::getDefiningOp(&v249);
  v216 = (DefiningOp && (v258 = DefiningOp, *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 4 && (LOBYTE(v264) = 1, __dst = &v264, v262 = &v258, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(v253, &__dst), (v264 & 1) != 0) || (v36 = *(*(v235 + 72) + 56), v262 = &v224, v263[0] = &v222, v263[1] = &v220, v264 = v36, (v37 = mlir::Value::getDefiningOp(&v264)) != 0) && (v249 = v37, *(*(v37 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(v37 + 46) & 0x80) != 0 && *(v37 + 68) == 4 && (LOBYTE(v239) = 1, v258 = &v239, v259 = &v249, mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&__dst, &v258), v239 == 1)) && mlir::ElementsAttr::getNumElements(v220, v221) == 1 && (mlir::getSingleFloatValue<float>(v220, v221) & 0x7FFFFFFF) == 0;
  if (!v226)
  {
    v6 = 1;
  }

  if (v6)
  {
    v212 = 0;
    v213 = 0;
  }

  else
  {
    v213 = mlir::convertElementsAttr(v224, v225, 1);
    *v253 = mlir::getElementTypeOrSelf(v222);
    isSignedInteger = mlir::Type::isSignedInteger(v253);
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 8, isSignedInteger);
    __dst = mlir::CallOpInterface::getArgOperands(&v222);
    v262 = v40;
    v253[0] = 0;
    v253[16] = 0;
    v41 = mlir::ShapedType::cloneWith(&__dst, v253, IntegerType);
    v212 = mlir::rewriteElementsAttr(v222, v223, v41, v42, 1);
  }

  v247 = 0;
  v248 = 0;
  v245 = 0;
  v246 = 0;
  v249 = &v246;
  v250 = &v245;
  v251[0] = 0;
  __dst = &v249;
  v262 = &v247;
  LOBYTE(v263[0]) = 0;
  LOBYTE(v263[1]) = 0;
  v264 = &v248;
  p_dst = &__dst;
  v266[0] = 0;
  if (*(v235 + 36))
  {
    v43 = v235 - 16;
  }

  else
  {
    v43 = 0;
  }

  *v253 = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0);
  v44 = mlir::Value::getDefiningOp(v253);
  if (v44 && mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(&v264, v44))
  {
    v94 = v246;
    *&v275 = v246;
    v238[0] = v245;
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(v238);
    v211 = mlir::convertElementsAttr(AsAttribute, v96, 1);
    if (*(v94 + 36))
    {
      v97 = v94 - 16;
    }

    else
    {
      v97 = 0;
    }

    v98 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v97, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v207 = a4;
    if (v98)
    {
      v99 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v98 + 8);
    }

    else
    {
      v99 = 0;
    }

    v228 = v98;
    v229 = v99;
    v154 = mlir::CallableOpInterface::getArgAttrsAttr(&v228);
    v155 = mlir::CallableOpInterface::getArgAttrsAttr(&v228);
    v157 = (v155 + 8 * v156);
    *v253 = &v253[16];
    *&v253[8] = 0x400000000;
    v158 = (v157 - v154) >> 3;
    if (v158 < 5)
    {
      v159 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v253, &v253[16], v158, 8);
      v159 = *&v253[8];
    }

    if (v157 != v154)
    {
      memcpy((*v253 + 8 * v159), v154, v157 - v154);
      v159 = *&v253[8];
    }

    *&v253[8] = v159 + ((v157 - v154) >> 3);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v270, v253);
    if (*v253 != &v253[16])
    {
      free(*v253);
    }

    v160 = (*(v238[0] - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v160)
    {
      v161 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v160 + 8);
    }

    else
    {
      v161 = 0;
    }

    *v253 = v160;
    *&v253[8] = v161;
    v215 = mlir::CallableOpInterface::getArgAttrsAttr(v253);
    v109 = v162;
    v163 = *(v235 + 24);
    v164 = v270;
    v165 = v271;
    v258 = mlir::mps::ConstantOp::getAsAttribute(&v275);
    v259 = v166;
    *v253 = mlir::CallOpInterface::getArgOperands(&v258);
    *&v253[8] = v167;
    isSplat = mlir::ElementsAttr::isSplat(v253);
    *&v237 = mlir::MemRefType::get(v164, v165, isSplat, 0, 0, 0);
    *&v239 = mlir::mps::ConstantOp::getAsAttribute(&v275);
    *(&v239 + 1) = v169;
    a4 = v207;
    v170 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((v207 + 1), v163, &v237, &v239);
    if (*(v170 + 36))
    {
      v171 = v170 - 16;
    }

    else
    {
      v171 = 0;
    }

    DictionaryAttr = 0;
    v232 = mlir::detail::OpResultImpl::getNextResultAtOffset(v171, 0);
  }

  else
  {
    v243 = 0;
    v244 = 0;
    v241 = 0;
    v242 = 0;
    *&v239 = &v242;
    *(&v239 + 1) = &v241;
    v240 = 0;
    *&v275 = &v243;
    *(&v275 + 1) = &v239;
    v276 = 0;
    v258 = &v275;
    v259 = &v244;
    v260[0] = 0;
    v260[8] = 0;
    if (*(v235 + 36))
    {
      v45 = v235 - 16;
    }

    else
    {
      v45 = 0;
    }

    *&v237 = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, 0);
    v46 = mlir::Value::getDefiningOp(&v237);
    if (!v46 || (v238[0] = v46, *(*(v46 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id) || (*(v46 + 46) & 0x80) == 0 || *(v46 + 68) != 2 || (*v253 = &v236, *&v253[8] = v238, LOBYTE(v236) = 1, mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::Conv2DOp *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(v253, 1u, &v258), (v236 & 1) == 0))
    {
      DictionaryAttr = 0;
      v211 = 0;
      v214 = 0;
      goto LABEL_73;
    }

    v208 = v243;
    v210 = v242;
    if (*(v243 + 36))
    {
      v47 = v243 - 16;
    }

    else
    {
      v47 = 0;
    }

    v48 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v206 = a4;
    if (v48)
    {
      v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
    }

    else
    {
      v49 = 0;
    }

    v228 = v48;
    v229 = v49;
    v100 = mlir::CallableOpInterface::getArgAttrsAttr(&v228);
    v101 = mlir::CallableOpInterface::getArgAttrsAttr(&v228);
    v103 = (v101 + 8 * v102);
    *v253 = &v253[16];
    *&v253[8] = 0x400000000;
    v104 = (v103 - v100) >> 3;
    if (v104 < 5)
    {
      v105 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v253, &v253[16], v104, 8);
      v105 = *&v253[8];
    }

    if (v103 != v100)
    {
      memcpy((*v253 + 8 * v105), v100, v103 - v100);
      v105 = *&v253[8];
    }

    *&v253[8] = v105 + ((v103 - v100) >> 3);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v270, v253);
    if (*v253 != &v253[16])
    {
      free(*v253);
    }

    v106 = (*(v240 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v106)
    {
      v107 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v106 + 8);
    }

    else
    {
      v107 = 0;
    }

    v238[0] = v106;
    v238[1] = v107;
    v215 = mlir::CallableOpInterface::getArgAttrsAttr(v238);
    v109 = v108;
    v110 = *(v235 + 24);
    v111 = v270;
    v112 = v271;
    v113 = mlir::ElementsAttr::isSplat(&v228);
    *v253 = mlir::MemRefType::get(v111, v112, v113, 0, 0, 0);
    a4 = v206;
    v114 = (v208 + 16 * ((*(v208 + 44) >> 23) & 1));
    *&v237 = v114[8];
    *&v236 = v114[10];
    F16FloatAttr = v114[9];
    v115 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>((v206 + 1), v110, v253, &v237, &v236, &F16FloatAttr);
    if (*(v115 + 36))
    {
      v116 = v115 - 16;
    }

    else
    {
      v116 = 0;
    }

    v232 = mlir::detail::OpResultImpl::getNextResultAtOffset(v116, 0);
    *v253 = "offset";
    LOWORD(v254) = 259;
    StringAttr = mlir::Builder::getStringAttr(v206 + 1, v253);
    mlir::NamedAttribute::NamedAttribute(&v237, StringAttr, *(v210 + 16 * ((*(v210 + 44) >> 23) & 1) + 80));
    *v253 = "type";
    LOWORD(v254) = 259;
    v118 = mlir::Builder::getStringAttr(v206 + 1, v253);
    v119 = mlir::TypeAttr::get(v238[0]);
    mlir::NamedAttribute::NamedAttribute(&v236, v118, v119);
    *v253 = v237;
    *&v253[16] = v236;
    DictionaryAttr = mlir::Builder::getDictionaryAttr(v206 + 1, v253, 2);
    v211 = 0;
  }

  if (v109 < 2)
  {
    v172 = 1;
  }

  else
  {
    v172 = *v215;
  }

  v173 = v109 - 1;
  if (v109 == 6)
  {
    v173 = 4;
  }

  if (v173 >= 2)
  {
    v174 = v173 - 1;
    v175 = v215 + 1;
    while (1)
    {
      v176 = *v175++;
      if (v176 >= 2)
      {
        break;
      }

      if (!--v174)
      {
        goto LABEL_228;
      }
    }

    *v253 = operator new(0x20uLL);
    *&v253[8] = xmmword_1E09828D0;
    strcpy(*v253, "Only per-cout LUT is supported!");
    goto LABEL_235;
  }

LABEL_228:
  if (v172 >= 2 && *v270 % v172)
  {
    *v253 = operator new(0x38uLL);
    *&v253[8] = xmmword_1E0982760;
    strcpy(*v253, "Per-cout LUT dim must be divisible by cout LUT dim!");
LABEL_235:
    mlir::logMatchFailure(v253, *(v235 + 24), a4);
    if ((v253[23] & 0x80000000) != 0)
    {
      operator delete(*v253);
    }

    v28 = a4;
    goto LABEL_26;
  }

  *v253 = mlir::ElementsAttr::isSplat(&v228);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v253);
  if (IntOrFloatBitWidth > 8 || (v214 = 1, ((1 << IntOrFloatBitWidth) & 0x154) == 0))
  {
    *v253 = operator new(0x50uLL);
    *&v253[8] = xmmword_1E09829D0;
    strcpy(*v253, "Only 2-bit, 4-bit, 6-bit and 8-bit palettization for conv are supported!");
    goto LABEL_235;
  }

LABEL_73:
  v239 = 0uLL;
  __dst = &v239;
  *v253 = v232;
  v51 = mlir::Value::getDefiningOp(v253);
  v209 = DictionaryAttr;
  if (v51)
  {
    v52 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__dst, v51);
  }

  else
  {
    v52 = 0;
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v235);
  v219 = 0;
  v238[0] = 0;
  if ((v52 & 1) == 0)
  {
    v54 = v216;
    if (v238[0])
    {
      v54 = 1;
    }

    if ((v54 & 1) == 0)
    {
      *v253 = *(*(v235 + 48) + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v253);
      if (!AttrData)
      {
        __dst = 0;
        v262 = 0;
        v263[0] = 0;
LABEL_132:
        v90 = std::string::insert(&__dst, 0, "Invalid weight operand type of ");
        v91 = v90->__r_.__value_.__r.__words[2];
        *v253 = *&v90->__r_.__value_.__l.__data_;
        *&v253[16] = v91;
        v90->__r_.__value_.__l.__size_ = 0;
        v90->__r_.__value_.__r.__words[2] = 0;
        v90->__r_.__value_.__r.__words[0] = 0;
        mlir::logMatchFailure(v253, *(v235 + 24), a4);
        if ((v253[23] & 0x80000000) != 0)
        {
          operator delete(*v253);
        }

        v28 = a4;
        if ((SHIBYTE(v263[0]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        v29 = __dst;
        goto LABEL_25;
      }

      v63 = v62;
      if (v62 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v64 = AttrData;
      if (v62 >= 0x17)
      {
        if ((v62 | 7) == 0x17)
        {
          v89 = 25;
        }

        else
        {
          v89 = (v62 | 7) + 1;
        }

        v65 = operator new(v89);
        v262 = v63;
        v263[0] = v89 | 0x8000000000000000;
        __dst = v65;
      }

      else
      {
        HIBYTE(v263[0]) = v62;
        v65 = &__dst;
        if (!v62)
        {
          goto LABEL_131;
        }
      }

      memmove(v65, v64, v63);
LABEL_131:
      *(v65 + v63) = 0;
      goto LABEL_132;
    }
  }

  if ((v6 & 1) == 0)
  {
    v239 = v226;
    v55 = v270;
    v56 = v271;
    *v253 = mlir::CallOpInterface::getArgOperands(&v239);
    *&v253[8] = v57;
    v58 = mlir::ElementsAttr::isSplat(v253);
    __dst = mlir::MemRefType::get(v55, v56, v58, 0, 0, 0);
    v232 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v217, &__dst, &v239) - 16;
  }

  if (WeightsLayout == 3)
  {
    if (v219 == 1)
    {
      v59 = v238[0];
      if (!v238[0])
      {
        std::string::basic_string[abi:nn200100]<0>(v253, "Cannot get the filter definition op");
        goto LABEL_23;
      }

      if (*(*(mlir::Value::getDefiningOp(&v232) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
      {
        v60 = mlir::Value::getDefiningOp(&v232);
        mlir::ConversionPatternRewriter::eraseOp(a4, v60);
      }

      v232 = v59 - 16;
    }

    else if ((v214 & 1) == 0)
    {
      Loc = mlir::Value::getLoc(&v232);
      v67 = operator new(0x40uLL);
      v262 = (v67 + 4);
      v263[0] = v67 + 4;
      *v67 = xmmword_1E09829E0;
      v67[1] = xmmword_1E09829F0;
      v67[2] = xmmword_1E0982A00;
      v67[3] = xmmword_1E0982A10;
      __dst = v67;
      *v253 = &v253[16];
      *&v253[8] = 0x100000000;
      mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>((a4 + 1), v253, Loc, &v232, &__dst);
      v68 = **v253;
      if (*v253 != &v253[16])
      {
        free(*v253);
      }

      v232 = v68;
      if (__dst)
      {
        v262 = __dst;
        operator delete(__dst);
      }
    }

    v69 = (*(v232 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v69)
    {
      v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
    }

    else
    {
      v70 = 0;
    }

    v228 = v69;
    v229 = v70;
    v71 = mlir::CallableOpInterface::getArgAttrsAttr(&v228);
    v72 = mlir::CallableOpInterface::getArgAttrsAttr(&v228);
    v74 = (v72 + 8 * v73);
    *v253 = &v253[16];
    *&v253[8] = 0x400000000;
    v75 = (v74 - v71) >> 3;
    if (v75 < 5)
    {
      v76 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v253, &v253[16], v75, 8);
      v76 = *&v253[8];
    }

    if (v74 != v71)
    {
      memcpy((*v253 + 8 * v76), v71, v74 - v71);
      v76 = *&v253[8];
    }

    *&v253[8] = v76 + ((v74 - v71) >> 3);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v270, v253);
    if (*v253 != &v253[16])
    {
      free(*v253);
    }
  }

  *v253 = 3;
  v77 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v78 = mlir::RankedTensorType::get(v253, 1, v77, 0);
  *v253 = 6;
  v79 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v80 = mlir::RankedTensorType::get(v253, 1, v79, 0);
  v264 = v266;
  p_dst = 0x200000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v235);
  if (Strides)
  {
    v82 = Strides;
    v83 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v82;
  }

  else
  {
    v83 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v83, &v264, 1);
  v84 = v264;
  if (*v264 == 1 && v264[1] == 1)
  {
    v205 = v80;
    v28 = a4;
    v85 = 8 * p_dst - 16;
    if (p_dst != 2)
    {
      memmove(v264, v264 + 2, 8 * p_dst - 16);
    }

    LODWORD(p_dst) = (v84 + v85 - v264) >> 3;
    *v253 = 1;
    llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v264, v264, v253);
    if (v78)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v78 + 8);
    }

    else
    {
      v88 = 0;
    }

    *&v237 = mlir::DenseElementsAttr::getFromRawBuffer(v78, v88, v264, 8 * p_dst, 8, 1, 0);
    v92 = v267;
    if (*v267 == 1 && v267[1] == 1)
    {
      v93 = 8 * v268 - 16;
      if (v268 != 2)
      {
        memmove(v267, v267 + 2, 8 * v268 - 16);
      }

      LODWORD(v268) = (v92 + v93 - v267) >> 3;
      *v253 = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v267, v267, v253);
      if (v78)
      {
        v120 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v78 + 8);
      }

      else
      {
        v120 = 0;
      }

      *&v236 = mlir::DenseElementsAttr::getFromRawBuffer(v78, v120, v267, 8 * v268, 8, 1, 0);
      v122 = v267[1];
      v121 = v267[2];
      v31 = v122 < 2 && v121 < 2;
      v204 = (*(v270 + 2) - 1) * v122;
      v203 = (*(v270 + 3) - 1) * v121;
      v247 = 0;
      v248 = 0;
      v245 = 0;
      v246 = 0;
      Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v235);
      v125 = Rewriter;
      if (Rewriter)
      {
        v126 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
      }

      else
      {
        v126 = 0;
      }

      PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v235);
      {
        __dst = v263;
        memset(v263, 0, sizeof(v263));
        v262 = 0x600000006;
        v258 = v260;
        memset(v260, 0, sizeof(v260));
        v259 = 0x600000006;
        if (v31)
        {
          v128 = *(ArgAttrsAttr + 16);
          v129 = *(mlir::CallableOpInterface::getArgAttrsAttr(v231) + 16);
          v130 = v264[1];
          v131 = v248;
          v132 = *(ArgAttrsAttr + 24);
          v133 = *(mlir::CallableOpInterface::getArgAttrsAttr(v231) + 24);
          v134 = v264;
          v135 = v264[2];
          *v253 = &v253[16];
          v254 = 0u;
          *&v253[16] = 0u;
          v255 = 0u;
          v136 = v135 - v135 * v133;
          *&v253[8] = 0x600000006;
          *&v254 = v204 - v131;
          v137 = v131 + v128 + v130 - v130 * v129 - v264[1];
          *(&v254 + 1) = v137;
          *&v255 = v203 - v246;
          *(&v255 + 1) = v246 + v132 + v136 - v264[2];
          v138 = v258;
          if ((v204 - v131) > v204)
          {
            *(v258 + 2) = -v131;
            *&v254 = v204;
            v137 = *(&v254 + 1);
          }

          v139 = v137 <= v204;
          v140 = v137 - v204;
          if (!v139)
          {
            *(v138 + 3) = v140;
            *(&v254 + 1) = v204;
          }

          if (v255 > v203)
          {
            *(v138 + 4) = v255 - v203;
            *&v255 = v203;
          }

          if (*(&v255 + 1) > v203)
          {
            *(v138 + 5) = *(&v255 + 1) - v203;
            *(&v255 + 1) = v203;
          }

          v141 = *v134 + *&v253[16] - 2 + *&v253[24];
          if (v141 >= 1)
          {
            *&v253[24] = 2 - (*v134 + *&v253[16]);
            *(v138 + 1) += v141;
          }

          if (v204 + 2 >= 0)
          {
            v142 = (v204 + 2) & 1;
          }

          else
          {
            v142 = -((v204 + 2) & 1);
          }

          v143 = v142 + 2 * ~v204 + v134[1] + v254;
          v144 = v143 + *(&v254 + 1);
          if (v143 + *(&v254 + 1) >= 1)
          {
            *(&v254 + 1) = -v143;
            *(v138 + 3) += v144;
          }

          v145 = v134[2];
          if (v203 + 2 >= 0)
          {
            v146 = (v203 + 2) & 1;
          }

          else
          {
            v146 = -((v203 + 2) & 1);
          }

          v147 = v146 + 2 * ~v203 + v145 + v255;
          v148 = v147 + *(&v255 + 1);
          if (v147 + *(&v255 + 1) >= 1)
          {
            *(&v255 + 1) = -v147;
            *(v138 + 5) += v148;
          }

          v149 = __dst;
          *__dst = -(*&v253[16] & (*&v253[16] >> 63));
          *&v253[16] &= ~(*&v253[16] >> 63);
          *(v149 + 1) = -(*&v253[24] & (*&v253[24] >> 63));
          *&v253[24] &= ~(*&v253[24] >> 63);
          *(v149 + 2) = -(v254 & (v254 >> 63));
          *&v254 = v254 & ~(v254 >> 63);
          *(v149 + 3) = -(*(&v254 + 1) & (*(&v254 + 1) >> 63));
          *(&v254 + 1) &= ~(*(&v254 + 1) >> 63);
          *(v149 + 4) = -(v255 & (v255 >> 63));
          *&v255 = v255 & ~(v255 >> 63);
          *(v149 + 5) = -(*(&v255 + 1) & (*(&v255 + 1) >> 63));
          v150 = v255;
          v151 = (*(&v255 + 1) & ~(*(&v255 + 1) >> 63));
          *(&v255 + 1) = v151;
          v152 = v254;
          v247 = *(&v254 + 1);
          v248 = v254;
          v245 = v151;
          v246 = v255;
          if (v205)
          {
            v153 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v205 + 8);
          }

          else
          {
            v153 = 0;
          }

          v249 = v205;
          v250 = v153;
          *v253 = 0;
          *&v253[8] = 0;
          *&v253[16] = v152;
          *&v254 = v150;
          *(&v254 + 1) = v151;
          *&v275 = v253;
          *(&v275 + 1) = 6;
          v178 = mlir::DenseIntElementsAttr::get<unsigned long long>(&v249, &v275);
          v243 = 0;
          v244 = v178;
          v179 = *(v235 + 24);
          *v253 = v213;
          v249 = v212;
          v181 = v209;
          v180 = v211;
          if (!v214)
          {
            v180 = 0;
            v181 = 0;
          }

          *&v275 = v180;
          v241 = v181;
          v242 = mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>((v28 + 8), v179, &v233, &v232, &v237, &v236, &v244, &v243, &Groups, &v234, v253, &v249, &v275, &v241) - 16;
          if (v259)
          {
            v182 = v258;
            v183 = 8 * v259;
            v184 = v258;
            while (*v184 < 1)
            {
              ++v184;
              v183 -= 8;
              if (!v183)
              {
                goto LABEL_259;
              }
            }

            *v253 = &v253[16];
            *&v253[16] = 0u;
            v254 = 0u;
            v255 = 0u;
            v256 = 0u;
            v257 = 0u;
            *&v253[8] = 0xA0000000ALL;
            v249 = v251;
            memset_pattern16(v251, &unk_1E0982A60, 0x28uLL);
            v250 = 0x500000005;
            v252 = vdupq_n_s64(6uLL);
            v256 = v182[1];
            v257 = v182[2];
            v275 = xmmword_1E0982930;
            v185 = mlir::Builder::getIntegerType((v28 + 8), 64, 0);
            v186 = mlir::RankedTensorType::get(&v275, 2, v185, 0);
            if (v186)
            {
              v187 = v186;
              v188 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v186 + 8);
              v186 = v187;
            }

            else
            {
              v188 = 0;
            }

            v241 = mlir::DenseElementsAttr::getFromRawBuffer(v186, v188, *v253, 8 * *&v253[8], 8, 1, 0);
            F16FloatAttr = 5;
            v189 = mlir::Builder::getIntegerType((v28 + 8), 64, 0);
            v190 = mlir::RankedTensorType::get(&F16FloatAttr, 1, v189, 0);
            if (v190)
            {
              v191 = v190;
              v192 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v190 + 8);
              v190 = v191;
            }

            else
            {
              v192 = 0;
            }

            *&v275 = mlir::DenseElementsAttr::getFromRawBuffer(v190, v192, v249, 8 * v250, 8, 1, 0);
            F16FloatAttr = mlir::Builder::getF16FloatAttr((v28 + 8), 0.0, v193);
            v242 = mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>((v28 + 8), v217, &v242, &v275, &v241, &F16FloatAttr) - 16;
            if (v249 != v251)
            {
              free(v249);
            }

            if (*v253 != &v253[16])
            {
              free(*v253);
            }
          }

LABEL_259:
          v194 = __dst;
          if (*(__dst + 2) || *(__dst + 3))
          {
            v195 = (*(v242 + 8) & 0xFFFFFFFFFFFFFFF8);
            if (v195)
            {
              v196 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v195 + 8);
            }

            else
            {
              v196 = 0;
            }

            *v253 = v195;
            *&v253[8] = v196;
            v197 = *(mlir::CallableOpInterface::getArgAttrsAttr(v253) + 16);
            LODWORD(v275) = 2;
            v198 = *(__dst + 3);
            *v253 = *(__dst + 2);
            v249 = (v197 - (*v253 + v198));
            v242 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>((v28 + 8), v217, &v242, &v275, v253, &v249) - 16;
            v194 = __dst;
          }

          if (*(v194 + 4) || *(v194 + 5))
          {
            v199 = (*(v242 + 8) & 0xFFFFFFFFFFFFFFF8);
            if (v199)
            {
              v200 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v199 + 8);
            }

            else
            {
              v200 = 0;
            }

            *v253 = v199;
            *&v253[8] = v200;
            v201 = *(mlir::CallableOpInterface::getArgAttrsAttr(v253) + 24);
            LODWORD(v275) = 3;
            v202 = *(__dst + 5);
            *v253 = *(__dst + 4);
            v249 = (v201 - (*v253 + v202));
            v242 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>((v28 + 8), v217, &v242, &v275, v253, &v249) - 16;
          }

          v30 = mlir::Value::getDefiningOp(&v242);
        }

        else
        {
          std::string::basic_string[abi:nn200100]<0>(v253, "Dilation not supported for deconvolution");
          mlir::logMatchFailure(v253, *(v235 + 24), v28);
          if ((v253[23] & 0x80000000) != 0)
          {
            operator delete(*v253);
          }

          v30 = 0;
        }

        if (v258 != v260)
        {
          free(v258);
        }

        if (__dst != v263)
        {
          free(__dst);
        }
      }

      else
      {
        std::string::basic_string[abi:nn200100]<0>(v253, "Unsupported padding values for Conv2D");
        mlir::logMatchFailure(v253, *(v235 + 24), v28);
        if ((v253[23] & 0x80000000) != 0)
        {
          operator delete(*v253);
        }

        v30 = 0;
        v31 = 0;
      }

      goto LABEL_120;
    }

    *v253 = operator new(0x38uLL);
    *&v253[8] = xmmword_1E0982900;
    strcpy(*v253, "Conv dilation must be 1 for batch / channel axis");
    v86 = *(v235 + 24);
    v87 = v28;
  }

  else
  {
    *v253 = operator new(0x30uLL);
    *&v253[8] = xmmword_1E09828C0;
    strcpy(*v253, "Conv stride must be 1 for batch / channel axis\n");
    v86 = *(v235 + 24);
    v28 = a4;
    v87 = a4;
  }

  mlir::logMatchFailure(v253, v86, v87);
  if ((v253[23] & 0x80000000) != 0)
  {
    operator delete(*v253);
  }

  v30 = 0;
  v31 = 0;
LABEL_120:
  if (v264 != v266)
  {
    free(v264);
  }

LABEL_27:
  if (v267 != v269)
  {
    free(v267);
  }

  if (v270 != v272)
  {
    free(v270);
  }

  if (!v31)
  {
    return 0;
  }

  __dst = (v30 - 16);
  v32 = 1;
  mlir::ValueRange::ValueRange(v253, &__dst, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v28, v218, *v253, *&v253[8]);
  return v32;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, char *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v23);
  mlir::anec::Deconvolution::build(a1, v31, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14);
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

void *mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DOp,mlir::anec::Convolution>::~ConvertConv(void *a1)
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DOp,mlir::anec::Convolution>::~ConvertConv(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::Conv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Conv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 104);
  v37 = *(a3 + 96);
  v38 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v38 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v37, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v29 = v10;
        v30 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v29) || !mlir::CallOpInterface::getArgOperands(&v29))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v29);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

LABEL_3:
      i = v38 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 96);
    v35 = *(a3 + 80);
    v36 = v25;
    v26 = *(a3 + 64);
    v27 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v27;
    v28 = *(a3 + 32);
    v33 = *(a3 + 48);
    v34 = v26;
    v32 = v28;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v37 = v18;
    v38 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v37) || !mlir::CallOpInterface::getArgOperands(&v37))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v37);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DOp,mlir::anec::Convolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v10 = v6 - 16;
  v8 = 1;
  mlir::ValueRange::ValueRange(v11, &v10, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v11[0], v11[1]);
  return v8;
}

void *mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DDataGradientOp,mlir::anec::Deconvolution>::~ConvertConv(void *a1)
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DDataGradientOp,mlir::anec::Deconvolution>::~ConvertConv(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv3DDataGradientOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::Conv3DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Conv3DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 104);
  v37 = *(a3 + 96);
  v38 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v38 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v37, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v29 = v10;
        v30 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v29) || !mlir::CallOpInterface::getArgOperands(&v29))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v29);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

LABEL_3:
      i = v38 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 96);
    v35 = *(a3 + 80);
    v36 = v25;
    v26 = *(a3 + 64);
    v27 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v27;
    v28 = *(a3 + 32);
    v33 = *(a3 + 48);
    v34 = v26;
    v32 = v28;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v37 = v18;
    v38 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v37) || !mlir::CallOpInterface::getArgOperands(&v37))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v37);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

void *mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DDataGradientOp,mlir::anec::Deconvolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v236 = *MEMORY[0x1E69E9840];
  v202 = a2;
  v235 = *(a3 + 96);
  v6 = *(a2 + 24);
  v7 = mlir::ValueRange::dereference_iterator(&v235, 0);
  v201 = mlir::ValueRange::dereference_iterator(&v235, 1);
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = (v7[1] & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v200[0] = v10;
  v200[1] = v11;
  v12 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v199[0] = v12;
  v199[1] = v13;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v199);
  v15 = (v201[1] & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v197 = v15;
  v198 = v16;
  v196 = 1;
  v17 = mlir::CallableOpInterface::getArgAttrsAttr(&v197);
  v18 = mlir::CallableOpInterface::getArgAttrsAttr(&v197);
  v20 = (v18 + 8 * v19);
  v232 = v234;
  v233 = 0x500000000;
  v21 = (v20 - v17) >> 3;
  if (v21 < 6)
  {
    v22 = 0;
    if (v20 == v17)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v232, v234, v21, 8);
  v22 = v233;
  if (v20 != v17)
  {
LABEL_17:
    memcpy(&v232[8 * v22], v17, v20 - v17);
    v22 = v233;
  }

LABEL_18:
  LODWORD(v233) = v22 + ((v20 - v17) >> 3);
  v229 = v231;
  v230 = 0x500000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v202);
  v182 = v6;
  if (InputAttributeNames)
  {
    v24 = InputAttributeNames;
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v25, &v229, 1);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v202);
  v27 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v202);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v202);
  v29 = mlir::mps::Conv3DOp::getWeightsLayout(&v202);
  if (StorageType == 7 || v27 == 8)
  {
    if (WeightsLayout != 10 && v29 != 9)
    {
      __p = operator new(0x40uLL);
      *v211 = xmmword_1E0982940;
      strcpy(__p, "Only weights dataLayout OIDHW & DHWIO are supported for Conv3D");
      goto LABEL_27;
    }

    if (StorageType == 7)
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    v35 = 2;
    if (StorageType == 7)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    if (StorageType == 7)
    {
      v37 = 4;
    }

    else
    {
      v37 = 3;
    }

    v166 = v34;
    v168 = v36;
    v179 = *(ArgAttrsAttr + 8 * v36);
    v180 = *(ArgAttrsAttr + 8 * v34);
    if (v29 == 9)
    {
      v38 = 3;
    }

    else
    {
      v38 = 1;
    }

    v171 = v29 == 9;
    v174 = v38;
    v169 = v37;
    v39 = *(ArgAttrsAttr + 8 * v37);
    __p = 3;
    if (v29 == 9)
    {
      v35 = 4;
    }

    v176 = v35;
    v178 = v39;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v41 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
    __p = 6;
    v42 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v170 = mlir::RankedTensorType::get(&__p, 1, v42, 0);
    __dst = v228;
    v227 = 0x200000000;
    Strides = mlir::mps::Conv3DOp::getStrides(&v202);
    v181 = a4;
    if (Strides)
    {
      v44 = Strides;
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
      Strides = v44;
    }

    else
    {
      v45 = 0;
    }

    mlir::getIntValues<unsigned long long>(Strides, v45, &__dst, 1);
    v46 = __dst;
    if (*__dst == 1 && *(__dst + 1) == 1)
    {
      v47 = 8 * v227 - 16;
      if (v227 != 2)
      {
        memmove(__dst, __dst + 16, 8 * v227 - 16);
      }

      v48 = __dst;
      v49 = (&v46[v47] - __dst) >> 3;
      LODWORD(v227) = v49;
      if (v41)
      {
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v48 = __dst;
        LODWORD(v49) = v227;
      }

      else
      {
        v50 = 0;
      }

      v195 = mlir::DenseElementsAttr::getFromRawBuffer(v41, v50, v48, 8 * v49, 8, 1, 0);
      v51 = v229;
      if (*v229 == 1 && v229[1] == 1)
      {
        v52 = 8 * v230 - 16;
        if (v230 != 2)
        {
          memmove(v229, v229 + 2, 8 * v230 - 16);
        }

        v53 = v229;
        v172 = 2 * v171;
        v54 = (v51 + v52 - v229) >> 3;
        LODWORD(v230) = v54;
        if (v41)
        {
          v55 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
          v53 = v229;
          LODWORD(v54) = v230;
        }

        else
        {
          v55 = 0;
        }

        v194 = mlir::DenseElementsAttr::getFromRawBuffer(v41, v55, v53, 8 * v54, 8, 1, 0);
        v56 = v229[1];
        v57 = *v229 > 1 || v56 > 1;
        v58 = v229[2];
        v60 = v57 || v58 > 1;
        v164 = v60;
        v162 = (*&v232[8 * v172] - 1) * *v229;
        v173 = v162 + 1;
        v163 = (*&v232[8 * v174] - 1) * v56;
        v61 = (*&v232[8 * v176] - 1) * v58;
        v175 = v163 + 1;
        v177 = v61 + 1;
        v192 = 0;
        v193 = 0;
        v190 = 0;
        v191 = 0;
        v188 = 0;
        v189 = 0;
        Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v202);
        v63 = Rewriter;
        if (Rewriter)
        {
          v64 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
        }

        else
        {
          v64 = 0;
        }

        PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v202);
        {
          __p = operator new(0x28uLL);
          *v211 = xmmword_1E0982950;
          strcpy(__p, "Unsupported padding values for Conv3D");
          a4 = v181;
          mlir::logMatchFailure(&__p, *(v202 + 24), v181);
          if ((v211[15] & 0x80000000) != 0)
          {
            operator delete(__p);
          }

          v30 = 0;
          v31 = 0;
          goto LABEL_63;
        }

        v224[0] = v225;
        memset(v225, 0, sizeof(v225));
        v224[1] = 0x600000006;
        v221 = v223;
        memset(v223, 0, sizeof(v223));
        v222 = 0x600000006;
        a4 = v181;
        v66 = v170;
        if (v170)
        {
          v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v170 + 8);
          v66 = v170;
          v68 = v67;
        }

        else
        {
          v68 = 0;
        }

        __p = v193;
        *v211 = v192;
        *&v211[8] = v191;
        *&v211[16] = v190;
        *&v212 = v189;
        *(&v212 + 1) = v188;
        v186 = 0;
        v187 = mlir::DenseElementsAttr::getFromRawBuffer(v66, v68, &__p, 48, 8, 1, 0);
        v69 = operator new(0x28uLL);
        v70 = v69;
        v161 = v61;
        if (StorageType == 7)
        {
          *v69 = xmmword_1E0982B50;
          *(v69 + 1) = unk_1E0982B60;
          v71 = 4;
        }

        else
        {
          *v69 = xmmword_1E0982B00;
          *(v69 + 1) = unk_1E0982B10;
          v71 = 3;
        }

        v69[4] = v71;
        v72 = v202;
        v216[0] = v7;
        mlir::ValueRange::ValueRange(&__p, v216, 1uLL);
        __p = v201;
        DefiningOp = mlir::Value::getDefiningOp(&__p);
        if (!DefiningOp)
        {
          goto LABEL_106;
        }

        {
          v155 = DefiningOp;
          DefiningOp = v155;
        }

        if (((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
LABEL_106:
          std::string::basic_string[abi:nn200100]<0>(&__p, "weight operand is not a constant!");
          mlir::logMatchFailure(&__p, *(v202 + 24), v181);
          if ((v211[15] & 0x80000000) != 0)
          {
            operator delete(__p);
          }

          v30 = 0;
          v31 = 0;
          goto LABEL_201;
        }

        v74 = operator new(0x28uLL);
        v75 = v74;
        if (WeightsLayout == 10)
        {
          v74[4] = 0;
          *v74 = xmmword_1E0982B28;
          *(v74 + 1) = unk_1E0982B38;
        }

        else
        {
          *v74 = xmmword_1E0982B78;
          *(v74 + 1) = unk_1E0982B88;
          v74[4] = 2;
        }

        v76 = v202;
        v216[0] = v201;
        mlir::ValueRange::ValueRange(&__p, v216, 1uLL);
        v77 = (v201[1] & 0xFFFFFFFFFFFFFFF8);
        if (v77)
        {
          v78 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
        }

        else
        {
          v78 = 0;
        }

        v197 = v77;
        v198 = v78;
        v79 = mlir::CallableOpInterface::getArgAttrsAttr(&v197);
        v80 = mlir::CallableOpInterface::getArgAttrsAttr(&v197);
        llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(&__p, v79, (v80 + 8 * v81));
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v232, &__p);
        if (__p != &v211[8])
        {
          free(__p);
        }

        v184 = 0;
        if (v164)
        {
          std::string::basic_string[abi:nn200100]<0>(&__p, "Dilation not supported for deconvolution");
          mlir::logMatchFailure(&__p, *(v202 + 24), v181);
          if ((v211[15] & 0x80000000) != 0)
          {
            operator delete(__p);
          }

LABEL_164:
          v30 = 0;
          v31 = 0;
LABEL_200:
          operator delete(v75);
LABEL_201:
          operator delete(v70);
          if (v221 != v223)
          {
            free(v221);
          }

          if (v224[0] != v225)
          {
            free(v224[0]);
          }

LABEL_63:
          if (__dst != v228)
          {
            free(__dst);
          }

          goto LABEL_30;
        }

        v165 = v75;
        v160 = *(ArgAttrsAttr + 8 * v166);
        v159 = *(mlir::CallableOpInterface::getArgAttrsAttr(v200) + 8 * v166);
        v82 = *__dst;
        v83 = v193;
        v167 = *(ArgAttrsAttr + 8 * v168);
        v84 = *(mlir::CallableOpInterface::getArgAttrsAttr(v200) + 8 * v168);
        v85 = *(__dst + 1);
        v86 = v191;
        v87 = *(ArgAttrsAttr + 8 * v169);
        v88 = *(mlir::CallableOpInterface::getArgAttrsAttr(v200) + 8 * v169);
        v89 = __dst;
        v90 = *(__dst + 2);
        v216[0] = &v217;
        v218 = 0u;
        v219 = 0u;
        v91 = v90 - v90 * v88;
        v216[1] = 0x600000006;
        v220 = 0;
        v217 = v162 - v83;
        v92 = (v83 + v160 + v82 - v82 * v159 - *__dst);
        *&v218 = v92;
        *(&v218 + 1) = v163 - v86;
        *&v219 = v86 + v167 + v85 - v85 * v84 - *(__dst + 1);
        *(&v219 + 1) = v161 - v189;
        v220 = v189 + v87 + v91 - *(__dst + 2);
        v93 = v221;
        if (v162 - v83 >= v173)
        {
          *v221 = -v83;
          v217 = v162;
          v92 = v218;
        }

        if (v92 >= v173)
        {
          v93[1] = &v92[-v162];
          *&v218 = v162;
        }

        if (*(&v218 + 1) >= v175)
        {
          v93[2] = *(&v218 + 1) - v163;
          *(&v218 + 1) = v163;
        }

        if (v219 >= v175)
        {
          v93[3] = v219 - v163;
          *&v219 = v163;
        }

        if (*(&v219 + 1) >= v177)
        {
          v93[4] = *(&v219 + 1) - v161;
          *(&v219 + 1) = v161;
        }

        if (v220 >= v177)
        {
          v93[5] = v220 - v161;
          v220 = v161;
        }

        v94 = v221;
        if (v162 + 2 >= 0)
        {
          v95 = (v162 + 2) & 1;
        }

        else
        {
          v95 = -((v162 + 2) & 1);
        }

        v96 = v95 + 2 * ~v162 + *v89 + v217;
        v97 = v96 + v218;
        if (v96 + v218 >= 1)
        {
          *&v218 = -v96;
          *(v221 + 1) += v97;
        }

        if (v163 + 2 >= 0)
        {
          v98 = (v163 + 2) & 1;
        }

        else
        {
          v98 = -((v163 + 2) & 1);
        }

        v99 = v98 + 2 * ~v163 + v89[1] + *(&v218 + 1);
        v100 = v99 + v219;
        if (v99 + v219 >= 1)
        {
          *&v219 = -v99;
          v94[3] += v100;
        }

        v101 = v89[2];
        if (v161 + 2 >= 0)
        {
          v102 = (v161 + 2) & 1;
        }

        else
        {
          v102 = -((v161 + 2) & 1);
        }

        v103 = v102 + 2 * ~v161 + v101 + *(&v219 + 1);
        v104 = v103 + v220;
        if (v103 + v220 >= 1)
        {
          v220 = -v103;
          v94[5] += v104;
        }

        v105 = v224[0];
        *v224[0] = -(v217 & (v217 >> 63));
        v217 &= ~(v217 >> 63);
        v105[1] = -(v218 & (v218 >> 63));
        *&v218 = v218 & ~(v218 >> 63);
        v105[2] = -(*(&v218 + 1) & (*(&v218 + 1) >> 63));
        *(&v218 + 1) &= ~(*(&v218 + 1) >> 63);
        v105[3] = -(v219 & (v219 >> 63));
        *&v219 = v219 & ~(v219 >> 63);
        v105[4] = -(*(&v219 + 1) & (*(&v219 + 1) >> 63));
        *(&v219 + 1) &= ~(*(&v219 + 1) >> 63);
        v105[5] = -(v220 & (v220 >> 63));
        v106 = *(&v219 + 1);
        v107 = v220 & ~(v220 >> 63);
        v220 = v107;
        v108 = v217;
        v109 = v218;
        v192 = v218;
        v193 = v217;
        v110 = *(&v218 + 1);
        v111 = v219;
        v190 = v219;
        v191 = *(&v218 + 1);
        v188 = v107;
        v189 = *(&v219 + 1);
        v112 = v170;
        if (v170)
        {
          v113 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v170 + 8);
          v112 = v170;
        }

        else
        {
          v113 = 0;
        }

        v206 = v112;
        v207 = v113;
        __p = v108;
        *v211 = v109;
        *&v211[8] = v110;
        *&v211[16] = v111;
        *&v212 = v106;
        *(&v212 + 1) = v107;
        v204[0] = &__p;
        v204[1] = 6;
        v186 = 0;
        v187 = mlir::DenseIntElementsAttr::get<unsigned long long>(&v206, v204);
        v114 = *(v202 + 24);
        LOBYTE(F16FloatAttr) = 0;
        __p = 0;
        v206 = 0;
        v204[0] = 0;
        v183 = 0;
        a4 = v181;
        v184 = (mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>((v181 + 8), v114, &Transpose, &v201, &v195, &v194, &v187, &v186, &v196, &F16FloatAttr) - 16);
        v75 = v165;
        if (v222)
        {
          v115 = 0;
          v116 = v221;
          while (*(v221 + v115) < 1)
          {
            v115 += 8;
            if (8 * v222 == v115)
            {
              goto LABEL_173;
            }
          }

          __p = &v211[8];
          *&v211[8] = 0u;
          v212 = 0u;
          v213 = 0u;
          v214 = 0u;
          v215 = 0u;
          *v211 = 0xA0000000ALL;
          v206 = v208;
          memset_pattern16(v208, &unk_1E0982A60, 0x28uLL);
          v207 = 0x500000005;
          v209 = vdupq_n_s64(6uLL);
          v208[1] = 6;
          v212 = *v116;
          v214 = v116[1];
          v215 = v116[2];
          if (v212 != 0)
          {
            std::string::basic_string[abi:nn200100]<0>(v204, "Depth dim not supported for ANEC padding");
            mlir::logMatchFailure(v204, *(v202 + 24), v181);
            if (v205 < 0)
            {
              operator delete(v204[0]);
            }

            if (v206 != v208)
            {
              free(v206);
            }

            if (__p != &v211[8])
            {
              free(__p);
            }

            if (v216[0] != &v217)
            {
              free(v216[0]);
            }

            goto LABEL_164;
          }

          *v204 = xmmword_1E0982930;
          v117 = mlir::Builder::getIntegerType((v181 + 8), 64, 0);
          v118 = mlir::RankedTensorType::get(v204, 2, v117, 0);
          if (v118)
          {
            v119 = v118;
            v120 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v118 + 8);
            v118 = v119;
          }

          else
          {
            v120 = 0;
          }

          v183 = mlir::DenseElementsAttr::getFromRawBuffer(v118, v120, __p, 8 * *v211, 8, 1, 0);
          F16FloatAttr = 5;
          v121 = mlir::Builder::getIntegerType((v181 + 8), 64, 0);
          v122 = mlir::RankedTensorType::get(&F16FloatAttr, 1, v121, 0);
          if (v122)
          {
            v123 = v122;
            v124 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v122 + 8);
            v122 = v123;
          }

          else
          {
            v124 = 0;
          }

          v204[0] = mlir::DenseElementsAttr::getFromRawBuffer(v122, v124, v206, 8 * v207, 8, 1, 0);
          F16FloatAttr = mlir::Builder::getF16FloatAttr((v181 + 8), 0.0, v125);
          v184 = (mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>((v181 + 8), v182, &v184, v204, &v183, &F16FloatAttr) - 16);
          v75 = v165;
          if (v206 != v208)
          {
            free(v206);
          }

          if (__p != &v211[8])
          {
            free(__p);
          }
        }

LABEL_173:
        mlir::CallableOpInterface::getArgAttrsAttr(v200);
        IndexFromDim = mlir::anec::getIndexFromDim(2, v126);
        if ((v128 & 1) == 0 || (v129 = IndexFromDim, mlir::CallableOpInterface::getArgAttrsAttr(v200), v131 = mlir::anec::getIndexFromDim(3, v130), (v132 & 1) == 0) || (v133 = v131, mlir::CallableOpInterface::getArgAttrsAttr(v200), v135 = mlir::anec::getIndexFromDim(4, v134), (v136 & 1) == 0))
        {
          v156 = std::__throw_bad_optional_access[abi:nn200100]();
          return llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(v156, v157, v158);
        }

        v137 = v135;
        v138 = v224[0];
        if (*v224[0] || *(v224[0] + 1))
        {
          v139 = (v184[1] & 0xFFFFFFFFFFFFFFF8);
          if (v139)
          {
            v140 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v139 + 8);
          }

          else
          {
            v140 = 0;
          }

          __p = v139;
          *v211 = v140;
          v141 = *(mlir::CallableOpInterface::getArgAttrsAttr(&__p) + 8 * v129);
          LODWORD(v204[0]) = 1;
          v142 = *(v224[0] + 1);
          __p = *v224[0];
          v206 = (v141 - (__p + v142));
          v184 = (mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>((v181 + 8), v182, &v184, v204, &__p, &v206) - 16);
          v138 = v224[0];
          v75 = v165;
        }

        if (v138[2] || v138[3])
        {
          v143 = (v184[1] & 0xFFFFFFFFFFFFFFF8);
          if (v143)
          {
            v144 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v143 + 8);
          }

          else
          {
            v144 = 0;
          }

          __p = v143;
          *v211 = v144;
          v145 = *(mlir::CallableOpInterface::getArgAttrsAttr(&__p) + 8 * v133);
          LODWORD(v204[0]) = 3;
          v146 = *(v224[0] + 3);
          __p = *(v224[0] + 2);
          v206 = (v145 - (__p + v146));
          v184 = (mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>((v181 + 8), v182, &v184, v204, &__p, &v206) - 16);
          v138 = v224[0];
          v75 = v165;
        }

        if (v138[4] || v138[5])
        {
          v147 = (v184[1] & 0xFFFFFFFFFFFFFFF8);
          if (v147)
          {
            v148 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v147 + 8);
          }

          else
          {
            v148 = 0;
          }

          __p = v147;
          *v211 = v148;
          v149 = *(mlir::CallableOpInterface::getArgAttrsAttr(&__p) + 8 * v137);
          LODWORD(v204[0]) = 4;
          v150 = *(v224[0] + 5);
          __p = *(v224[0] + 4);
          v206 = (v149 - (__p + v150));
          v184 = (mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>((v181 + 8), v182, &v184, v204, &__p, &v206) - 16);
        }

        if (v216[0] != &v217)
        {
          free(v216[0]);
        }

        v151 = operator new(0x28uLL);
        v152 = v151;
        if (StorageType == 7)
        {
          *v151 = xmmword_1E0982B50;
          *(v151 + 1) = unk_1E0982B60;
          v153 = 4;
        }

        else
        {
          *v151 = xmmword_1E0982B78;
          *(v151 + 1) = unk_1E0982B88;
          v153 = 2;
        }

        v151[4] = v153;
        v154 = v202;
        v206 = v184;
        v31 = 1;
        mlir::ValueRange::ValueRange(&__p, &v206, 1uLL);
        v30 = mlir::Value::getDefiningOp(v216);
        operator delete(v152);
        goto LABEL_200;
      }

      __p = operator new(0x38uLL);
      *v211 = xmmword_1E0982900;
      strcpy(__p, "Conv dilation must be 1 for batch / channel axis");
    }

    else
    {
      __p = operator new(0x30uLL);
      *v211 = xmmword_1E0982690;
      strcpy(__p, "Conv stride must be 1 for batch / channel axis");
    }

    a4 = v181;
    mlir::logMatchFailure(&__p, *(v202 + 24), v181);
    if ((v211[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    v30 = 0;
    v31 = 0;
    goto LABEL_63;
  }

  __p = operator new(0x38uLL);
  *v211 = xmmword_1E09828B0;
  strcpy(__p, "Only dataLayout NCDHW & NDHWC are supported for Conv3D");
LABEL_27:
  mlir::logMatchFailure(&__p, *(v202 + 24), a4);
  if ((v211[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  v30 = 0;
  v31 = 0;
LABEL_30:
  if (v229 != v231)
  {
    free(v229);
  }

  if (v232 != v234)
  {
    free(v232);
  }

  if (!v31)
  {
    return 0;
  }

  v224[0] = (v30 - 16);
  v32 = 1;
  mlir::ValueRange::ValueRange(&__p, v224, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, *v211);
  return v32;
}

void *llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(void *a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x500000000;
  v5 = a3 - a2;
  v6 = (a3 - a2) >> 3;
  if (v6 >= 6)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v6, 8);
    a2 = v7;
    v8 = *(a1 + 2);
    if (v7 == a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (a2 != a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v8), a2, v5);
    v8 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v8 + (v5 >> 3);
  return a1;
}

uint64_t mlir::anonymous namespace::getExplicitConv3DPadding(uint64_t a1, uint64_t a2, int a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t *a9, unint64_t *a10, unint64_t *a11, unint64_t *a12, unint64_t *a13, unint64_t *a14, unint64_t a15, unint64_t a16, unint64_t a17)
{
  v36[10] = *MEMORY[0x1E69E9840];
  v17 = 1;
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 4)
    {
      v18 = a4[1];
      v19 = a15 % *a4;
      if (!v19)
      {
        v19 = *a4;
      }

      v20 = (a6 - v19) & ~((a6 - v19) >> 63);
      v21 = a16 % v18;
      if (!(a16 % v18))
      {
        v21 = a4[1];
      }

      v22 = (a7 - v21) & ~((a7 - v21) >> 63);
      v23 = a4[2];
      if (a17 % v23)
      {
        v23 = a17 % v23;
      }

      v24 = (a8 - v23) & ~((a8 - v23) >> 63);
      *a9 = v20 >> 1;
      *a10 = v20 - (v20 >> 1);
      *a11 = v22 >> 1;
      *a12 = v22 - (v22 >> 1);
      *a13 = v24 >> 1;
      *a14 = v24 - (v24 >> 1);
      if (a3 == 4)
      {
        v25 = *a9;
        *a9 = *a10;
        *a10 = v25;
        v26 = *a11;
        *a11 = *a12;
        *a12 = v26;
        v27 = *a13;
        *a13 = *a14;
        *a14 = v27;
      }

      return 1;
    }

    return v17;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      *a9 = 0;
      *a10 = 0;
      *a11 = 0;
      *a12 = 0;
      *a13 = 0;
      *a14 = 0;
    }

    return v17;
  }

  v34 = v36;
  v35 = 0xA00000000;
  mlir::getIntValues<unsigned long long>(a1, a2, &v34, 1);
  v28 = v34;
  v29 = v34 + 8 * v35;
  if (v34 == v29 - 48)
  {
LABEL_20:
    *a9 = *(v29 - 6);
    *a10 = *(v29 - 5);
    *a11 = *(v29 - 4);
    *a12 = *(v29 - 3);
    *a13 = *(v29 - 2);
    *a14 = *(v29 - 1);
    v17 = 1;
    if (v28 == v36)
    {
      return v17;
    }

LABEL_21:
    v32 = v17;
    free(v28);
    return v32;
  }

  v30 = 8 * v35 - 48;
  v31 = v34;
  while (!*v31)
  {
    ++v31;
    v30 -= 8;
    if (!v30)
    {
      goto LABEL_20;
    }
  }

  v17 = 0;
  if (v34 != v36)
  {
    goto LABEL_21;
  }

  return v17;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::anec::Deconvolution::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, 0, 0, 0, 0);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

void *mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DOp,mlir::anec::Convolution>::~ConvertConv(void *a1)
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DOp,mlir::anec::Convolution>::~ConvertConv(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv3DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::Conv3DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Conv3DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 104);
  v37 = *(a3 + 96);
  v38 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v38 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v37, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v29 = v10;
        v30 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v29) || !mlir::CallOpInterface::getArgOperands(&v29))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v29);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

LABEL_3:
      i = v38 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 96);
    v35 = *(a3 + 80);
    v36 = v25;
    v26 = *(a3 + 64);
    v27 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v27;
    v28 = *(a3 + 32);
    v33 = *(a3 + 48);
    v34 = v26;
    v32 = v28;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v37 = 0;
      v38 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v37 = v18;
    v38 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v37) || !mlir::CallOpInterface::getArgOperands(&v37))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v37);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DOp,mlir::anec::Convolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v129 = *MEMORY[0x1E69E9840];
  v107 = a2;
  v128 = *(a3 + 96);
  v6 = mlir::ValueRange::dereference_iterator(&v128, 0);
  v7 = mlir::ValueRange::dereference_iterator(&v128, 1);
  v106 = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v105[0] = v10;
  v105[1] = v11;
  if ((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v105);
  v13 = (v7[1] & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v103 = v13;
  v104 = v14;
  v102 = 1;
  v15 = mlir::CallableOpInterface::getArgAttrsAttr(&v103);
  v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v103);
  v18 = (v16 + 8 * v17);
  v125 = v127;
  v126 = 0x500000000;
  v19 = (v18 - v15) >> 3;
  if (v19 < 6)
  {
    v20 = 0;
    if (v18 == v15)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v127, v19, 8);
  v20 = v126;
  if (v18 != v15)
  {
LABEL_16:
    memcpy(&v125[8 * v20], v15, v18 - v15);
    v20 = v126;
  }

LABEL_17:
  LODWORD(v126) = v20 + ((v18 - v15) >> 3);
  v122 = v124;
  v123 = 0x500000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v107);
  if (InputAttributeNames)
  {
    v22 = InputAttributeNames;
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v23, &v122, 1);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v107);
  v25 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v107);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v107);
  v27 = mlir::mps::Conv3DOp::getWeightsLayout(&v107);
  if (StorageType != 7 && v25 != 8)
  {
    __p = operator new(0x38uLL);
    *v116 = xmmword_1E09828B0;
    strcpy(__p, "Only dataLayout NCDHW & NDHWC are supported for Conv3D");
LABEL_26:
    mlir::logMatchFailure(&__p, *(v107 + 24), a4);
    if ((v116[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    v28 = 0;
    v29 = 0;
    goto LABEL_29;
  }

  if (WeightsLayout != 10 && v27 != 9)
  {
    __p = operator new(0x40uLL);
    *v116 = xmmword_1E0982940;
    strcpy(__p, "Only weights dataLayout OIDHW & DHWIO are supported for Conv3D");
    goto LABEL_26;
  }

  v32 = 8;
  v33 = 16;
  if (StorageType == 7)
  {
    v32 = 16;
  }

  v34 = 24;
  if (StorageType == 7)
  {
    v33 = 24;
    v34 = 32;
  }

  v79 = v27 == 9;
  if (v27 == 9)
  {
    v35 = 3;
  }

  else
  {
    v35 = 1;
  }

  v88 = *(ArgAttrsAttr + v32);
  v87 = *(ArgAttrsAttr + v33);
  v84 = v35;
  v86 = *(ArgAttrsAttr + v34);
  __p = 3;
  if (v27 == 9)
  {
    v36 = 4;
  }

  else
  {
    v36 = 2;
  }

  v82 = v36;
  IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v38 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
  __p = 6;
  v39 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v78 = mlir::RankedTensorType::get(&__p, 1, v39, 0);
  __dst = v121;
  v120 = 0x200000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v107);
  v89 = a4;
  if (Strides)
  {
    v41 = Strides;
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v41;
  }

  else
  {
    v42 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v42, &__dst, 1);
  v43 = __dst;
  if (*__dst != 1 || *(__dst + 1) != 1)
  {
    __p = operator new(0x30uLL);
    *v116 = xmmword_1E0982690;
    strcpy(__p, "Conv stride must be 1 for batch / channel axis");
LABEL_55:
    a4 = v89;
    mlir::logMatchFailure(&__p, *(v107 + 24), v89);
    if ((v116[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    v28 = 0;
    v29 = 0;
    goto LABEL_58;
  }

  v44 = 8 * v120 - 16;
  if (v120 != 2)
  {
    memmove(__dst, __dst + 16, 8 * v120 - 16);
  }

  v45 = __dst;
  v46 = (&v43[v44] - __dst) >> 3;
  LODWORD(v120) = v46;
  if (v38)
  {
    v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
    v45 = __dst;
    LODWORD(v46) = v120;
  }

  else
  {
    v47 = 0;
  }

  v101 = mlir::DenseElementsAttr::getFromRawBuffer(v38, v47, v45, 8 * v46, 8, 1, 0);
  v48 = v122;
  if (*v122 != 1 || v122[1] != 1)
  {
    __p = operator new(0x38uLL);
    *v116 = xmmword_1E0982900;
    strcpy(__p, "Conv dilation must be 1 for batch / channel axis");
    goto LABEL_55;
  }

  v49 = 8 * v123 - 16;
  if (v123 != 2)
  {
    memmove(v122, v122 + 2, 8 * v123 - 16);
  }

  v50 = v122;
  v80 = 2 * v79;
  v51 = (&v48[v49] - v122) >> 3;
  LODWORD(v123) = v51;
  if (v38)
  {
    v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
    v50 = v122;
    LODWORD(v51) = v123;
  }

  else
  {
    v52 = 0;
  }

  v100 = mlir::DenseElementsAttr::getFromRawBuffer(v38, v52, v50, 8 * v51, 8, 1, 0);
  v81 = (*&v125[8 * v80] - 1) * *v122 + 1;
  v85 = (*&v125[8 * v84] - 1) * v122[1] + 1;
  v83 = (*&v125[8 * v82] - 1) * v122[2] + 1;
  v98 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v107);
  v54 = Rewriter;
  if (Rewriter)
  {
    v55 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v55 = 0;
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v107);
  {
    __p = operator new(0x28uLL);
    *v116 = xmmword_1E0982950;
    strcpy(__p, "Unsupported padding values for Conv3D");
    goto LABEL_55;
  }

  __p = &v116[8];
  *&v116[8] = 0u;
  v117 = 0u;
  v118 = 0u;
  *v116 = 0x600000006;
  v113[0] = v114;
  memset(v114, 0, sizeof(v114));
  v113[1] = 0x600000006;
  if (v78)
  {
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v78 + 8);
  }

  else
  {
    v57 = 0;
  }

  v109 = v99;
  v110 = v98;
  v111[0] = v97;
  v111[1] = v96;
  v111[2] = v95;
  v111[3] = v94;
  v92 = 0;
  v93 = mlir::DenseElementsAttr::getFromRawBuffer(v78, v57, &v109, 48, 8, 1, 0);
  v58 = operator new(0x28uLL);
  v59 = v58;
  if (StorageType == 7)
  {
    *v58 = xmmword_1E0982B50;
    *(v58 + 1) = unk_1E0982B60;
    v60 = 4;
  }

  else
  {
    *v58 = xmmword_1E0982B00;
    *(v58 + 1) = unk_1E0982B10;
    v60 = 3;
  }

  v58[4] = v60;
  v61 = v107;
  v112 = v6;
  mlir::ValueRange::ValueRange(&v109, &v112, 1uLL);
  v109 = v7;
  DefiningOp = mlir::Value::getDefiningOp(&v109);
  if (!DefiningOp)
  {
    goto LABEL_90;
  }

  {
    v77 = DefiningOp;
    DefiningOp = v77;
  }

  if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v63 = operator new(0x28uLL);
    v64 = v63;
    if (WeightsLayout == 10)
    {
      v63[4] = 0;
      *v63 = xmmword_1E0982B28;
      *(v63 + 1) = unk_1E0982B38;
    }

    else
    {
      *v63 = xmmword_1E0982B78;
      *(v63 + 1) = unk_1E0982B88;
      v63[4] = 2;
    }

    v65 = v107;
    v112 = v106;
    mlir::ValueRange::ValueRange(&v109, &v112, 1uLL);
    v66 = (v106[1] & 0xFFFFFFFFFFFFFFF8);
    if (v66)
    {
      v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v66 + 8);
    }

    else
    {
      v67 = 0;
    }

    v103 = v66;
    v104 = v67;
    v68 = mlir::CallableOpInterface::getArgAttrsAttr(&v103);
    v69 = mlir::CallableOpInterface::getArgAttrsAttr(&v103);
    llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(&v109, v68, (v69 + 8 * v70));
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v125, &v109);
    if (v109 != v111)
    {
      free(v109);
    }

    v71 = *(v107 + 24);
    v90 = 0;
    v108 = 0;
    v109 = 0;
    v112 = 0;
    v72 = mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,long long &,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>((v89 + 8), v71, &Transpose, &v106, &v101, &v100, &v93, &v92, &v102, &v90) - 16;
    v73 = operator new(0x28uLL);
    v74 = v73;
    if (StorageType == 7)
    {
      *v73 = xmmword_1E0982B50;
      *(v73 + 1) = unk_1E0982B60;
      v75 = 4;
    }

    else
    {
      *v73 = xmmword_1E0982B78;
      *(v73 + 1) = unk_1E0982B88;
      v75 = 2;
    }

    v73[4] = v75;
    v76 = v107;
    v108 = v72;
    v29 = 1;
    mlir::ValueRange::ValueRange(&v109, &v108, 1uLL);
    v28 = mlir::Value::getDefiningOp(&v112);
    operator delete(v74);
    operator delete(v64);
  }

  else
  {
LABEL_90:
    std::string::basic_string[abi:nn200100]<0>(&v109, "weight operand is not a constant!");
    mlir::logMatchFailure(&v109, *(v107 + 24), v89);
    if (SHIBYTE(v111[0]) < 0)
    {
      operator delete(v109);
    }

    v28 = 0;
    v29 = 0;
  }

  operator delete(v59);
  if (v113[0] != v114)
  {
    free(v113[0]);
  }

  a4 = v89;
  if (__p != &v116[8])
  {
    free(__p);
  }

LABEL_58:
  if (__dst != v121)
  {
    free(__dst);
  }

LABEL_29:
  if (v122 != v124)
  {
    free(v122);
  }

  if (v125 != v127)
  {
    free(v125);
  }

  if (!v29)
  {
    return 0;
  }

  v113[0] = (v28 - 16);
  v30 = 1;
  mlir::ValueRange::ValueRange(&__p, v113, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, *v116);
  return v30;
}

void *mlir::anonymous namespace::ConvertConv<mlir::mps::DepthwiseConv2DOp,mlir::anec::Convolution>::~ConvertConv(void *a1)
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::DepthwiseConv2DOp,mlir::anec::Convolution>::~ConvertConv(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DepthwiseConv2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::DepthwiseConv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DepthwiseConv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 96);
  v36 = *(a3 + 88);
  v37 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v37 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v36, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v28 = v10;
        v29 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v28) || !mlir::CallOpInterface::getArgOperands(&v28))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v28);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

LABEL_3:
      i = v37 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v35 = *(a3 + 96);
    v25 = *(a3 + 80);
    v33 = *(a3 + 64);
    v34 = v25;
    v26 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v26;
    v27 = *(a3 + 48);
    v31 = *(a3 + 32);
    v32 = v27;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v36 = 0;
      v37 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v36 = v18;
    v37 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v36) || !mlir::CallOpInterface::getArgOperands(&v36))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v36);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertConv<mlir::mps::DepthwiseConv2DOp,mlir::anec::Convolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v244 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 104);
  v202 = a2;
  v240 = *(a3 + 88);
  v201 = 1;
  v185 = *(a2 + 24);
  v7 = mlir::ValueRange::dereference_iterator(&v240, 0);
  v200 = v7;
  v199 = mlir::ValueRange::dereference_iterator(&v240, 1);
  v186 = a2;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v198[0] = v10;
  v198[1] = v11;
  if ((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v198);
  v14 = v13;
  v15 = (*(v199 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v196 = v15;
  v197 = v16;
  v195 = 1;
  v17 = mlir::CallableOpInterface::getArgAttrsAttr(&v196);
  v18 = mlir::CallableOpInterface::getArgAttrsAttr(&v196);
  v20 = (v18 + 8 * v19);
  v237 = v239;
  v238 = 0x400000000;
  v21 = (v20 - v17) >> 3;
  if (v21 < 5)
  {
    v22 = 0;
    if (v20 == v17)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v237, v239, v21, 8);
  v22 = v238;
  if (v20 != v17)
  {
LABEL_16:
    memcpy(&v237[8 * v22], v17, v20 - v17);
    v22 = v238;
  }

LABEL_17:
  LODWORD(v238) = v22 + ((v20 - v17) >> 3);
  v234 = v236;
  v235 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v202);
  if (InputAttributeNames)
  {
    v24 = InputAttributeNames;
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v25, &v234, 1);
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v202))
  {
    *v220 = operator new(0x30uLL);
    *&v220[8] = xmmword_1E09829C0;
    strcpy(*v220, "Only dataLayout NCHW is supported for Conv2D");
LABEL_22:
    mlir::logMatchFailure(v220, *(v202 + 24), a4);
    if ((v220[23] & 0x80000000) == 0)
    {
LABEL_25:
      v27 = 0;
      ExplicitConv2DPadding = 0;
      goto LABEL_26;
    }

    v26 = *v220;
LABEL_24:
    operator delete(v26);
    goto LABEL_25;
  }

  if (mlir::mps::StencilOp::getPaddingStyle(&v202) != 2 && mlir::mps::StencilOp::getPaddingStyle(&v202) != 3)
  {
    *v220 = operator new(0x28uLL);
    *&v220[8] = xmmword_1E09826C0;
    strcpy(*v220, "Unsupported weightsLayout for Conv2D");
    goto LABEL_22;
  }

  v194 = 0uLL;
  v192 = 0;
  v193 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v31 = *(*(v202 + 72) + 56);
  *v220 = &v194;
  *&v220[8] = &v192;
  *&v220[16] = &v190;
  *&v220[24] = &v188;
  v216 = v31;
  DefiningOp = mlir::Value::getDefiningOp(&v216);
  v183 = (DefiningOp && (v225 = DefiningOp, *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 4 && (LOBYTE(v231) = 1, __dst = &v231, v229 = &v225, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(v220, &__dst), (v231 & 1) != 0) || (v33 = *(*(v202 + 72) + 56), v229 = &v192, v230[0] = &v190, v230[1] = &v188, v231 = v33, (v34 = mlir::Value::getDefiningOp(&v231)) != 0) && (v216 = v34, *(*(v34 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(v34 + 46) & 0x80) != 0 && *(v34 + 68) == 4 && (LOBYTE(v206) = 1, v225 = &v206, v226 = &v216, mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&__dst, &v225), v206 == 1)) && mlir::ElementsAttr::getNumElements(v188, v189) == 1 && (mlir::getSingleFloatValue<float>(v188, v189) & 0x7FFFFFFF) == 0;
  if (!v194)
  {
    v6 = 1;
  }

  if (v6)
  {
    v179 = 0;
    v180 = 0;
  }

  else
  {
    v180 = mlir::convertElementsAttr(v192, v193, 1);
    *v220 = mlir::getElementTypeOrSelf(v190);
    isSignedInteger = mlir::Type::isSignedInteger(v220);
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 8, isSignedInteger);
    __dst = mlir::CallOpInterface::getArgOperands(&v190);
    v229 = v37;
    v220[0] = 0;
    v220[16] = 0;
    v38 = mlir::ShapedType::cloneWith(&__dst, v220, IntegerType);
    v179 = mlir::rewriteElementsAttr(v190, v191, v38, v39, 1);
  }

  v214 = 0;
  v215 = 0;
  v212 = 0;
  v213 = 0;
  v216 = &v213;
  v217 = &v212;
  v218[0] = 0;
  __dst = &v216;
  v229 = &v214;
  LOBYTE(v230[0]) = 0;
  LOBYTE(v230[1]) = 0;
  v231 = &v215;
  p_dst = &__dst;
  v233[0] = 0;
  if (*(v202 + 36))
  {
    v40 = v202 - 16;
  }

  else
  {
    v40 = 0;
  }

  *v220 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
  v41 = mlir::Value::getDefiningOp(v220);
  if (v41 && mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(&v231, v41))
  {
    v89 = v213;
    *&v242 = v213;
    v205[0] = v212;
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(v205);
    v178 = mlir::convertElementsAttr(AsAttribute, v91, 1);
    if (*(v89 + 36))
    {
      v92 = v89 - 16;
    }

    else
    {
      v92 = 0;
    }

    v93 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v92, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v174 = a4;
    if (v93)
    {
      v94 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v93 + 8);
    }

    else
    {
      v94 = 0;
    }

    v196 = v93;
    v197 = v94;
    v122 = mlir::CallableOpInterface::getArgAttrsAttr(&v196);
    v123 = mlir::CallableOpInterface::getArgAttrsAttr(&v196);
    v125 = (v123 + 8 * v124);
    *v220 = &v220[16];
    *&v220[8] = 0x400000000;
    v126 = (v125 - v122) >> 3;
    if (v126 < 5)
    {
      v127 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v220, &v220[16], v126, 8);
      v127 = *&v220[8];
    }

    if (v125 != v122)
    {
      memcpy((*v220 + 8 * v127), v122, v125 - v122);
      v127 = *&v220[8];
    }

    *&v220[8] = v127 + ((v125 - v122) >> 3);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v237, v220);
    if (*v220 != &v220[16])
    {
      free(*v220);
    }

    v128 = (*(v205[0] - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v128)
    {
      v129 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v128 + 8);
    }

    else
    {
      v129 = 0;
    }

    *v220 = v128;
    *&v220[8] = v129;
    v182 = mlir::CallableOpInterface::getArgAttrsAttr(v220);
    v104 = v130;
    v131 = *(v202 + 24);
    v132 = v237;
    v133 = v238;
    v225 = mlir::mps::ConstantOp::getAsAttribute(&v242);
    v226 = v134;
    *v220 = mlir::CallOpInterface::getArgOperands(&v225);
    *&v220[8] = v135;
    isSplat = mlir::ElementsAttr::isSplat(v220);
    *&v204 = mlir::MemRefType::get(v132, v133, isSplat, 0, 0, 0);
    *&v206 = mlir::mps::ConstantOp::getAsAttribute(&v242);
    *(&v206 + 1) = v137;
    a4 = v174;
    v138 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((v174 + 1), v131, &v204, &v206);
    if (*(v138 + 36))
    {
      v139 = v138 - 16;
    }

    else
    {
      v139 = 0;
    }

    DictionaryAttr = 0;
    v199 = mlir::detail::OpResultImpl::getNextResultAtOffset(v139, 0);
  }

  else
  {
    v210 = 0;
    v211 = 0;
    v208 = 0;
    v209 = 0;
    *&v206 = &v209;
    *(&v206 + 1) = &v208;
    v207 = 0;
    *&v242 = &v210;
    *(&v242 + 1) = &v206;
    v243 = 0;
    v225 = &v242;
    v226 = &v211;
    v227[0] = 0;
    v227[8] = 0;
    if (*(v202 + 36))
    {
      v42 = v202 - 16;
    }

    else
    {
      v42 = 0;
    }

    *&v204 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
    v43 = mlir::Value::getDefiningOp(&v204);
    if (!v43 || (v205[0] = v43, *(*(v43 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id) || (*(v43 + 46) & 0x80) == 0 || *(v43 + 68) != 2 || (*v220 = &v203, *&v220[8] = v205, LOBYTE(v203) = 1, mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::Conv2DOp *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(v220, 1u, &v225), (v203 & 1) == 0))
    {
      DictionaryAttr = 0;
      v178 = 0;
      v181 = 0;
      goto LABEL_72;
    }

    v175 = v210;
    v177 = v209;
    if (*(v210 + 36))
    {
      v44 = v210 - 16;
    }

    else
    {
      v44 = 0;
    }

    v45 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v172 = a4;
    if (v45)
    {
      v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
    }

    else
    {
      v46 = 0;
    }

    v196 = v45;
    v197 = v46;
    v95 = mlir::CallableOpInterface::getArgAttrsAttr(&v196);
    v96 = mlir::CallableOpInterface::getArgAttrsAttr(&v196);
    v98 = (v96 + 8 * v97);
    *v220 = &v220[16];
    *&v220[8] = 0x400000000;
    v99 = (v98 - v95) >> 3;
    if (v99 < 5)
    {
      v100 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v220, &v220[16], v99, 8);
      v100 = *&v220[8];
    }

    if (v98 != v95)
    {
      memcpy((*v220 + 8 * v100), v95, v98 - v95);
      v100 = *&v220[8];
    }

    *&v220[8] = v100 + ((v98 - v95) >> 3);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v237, v220);
    if (*v220 != &v220[16])
    {
      free(*v220);
    }

    v101 = (*(v207 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v101)
    {
      v102 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8);
    }

    else
    {
      v102 = 0;
    }

    v205[0] = v101;
    v205[1] = v102;
    v182 = mlir::CallableOpInterface::getArgAttrsAttr(v205);
    v104 = v103;
    v105 = *(v202 + 24);
    v106 = v237;
    v107 = v238;
    v108 = mlir::ElementsAttr::isSplat(&v196);
    *v220 = mlir::MemRefType::get(v106, v107, v108, 0, 0, 0);
    a4 = v172;
    v109 = (v175 + 16 * ((*(v175 + 44) >> 23) & 1));
    *&v204 = v109[8];
    *&v203 = v109[10];
    F16FloatAttr = v109[9];
    v110 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>((v172 + 1), v105, v220, &v204, &v203, &F16FloatAttr);
    if (*(v110 + 36))
    {
      v111 = v110 - 16;
    }

    else
    {
      v111 = 0;
    }

    v199 = mlir::detail::OpResultImpl::getNextResultAtOffset(v111, 0);
    *v220 = "offset";
    LOWORD(v221) = 259;
    StringAttr = mlir::Builder::getStringAttr(v172 + 1, v220);
    mlir::NamedAttribute::NamedAttribute(&v204, StringAttr, *(v177 + 16 * ((*(v177 + 44) >> 23) & 1) + 80));
    *v220 = "type";
    LOWORD(v221) = 259;
    v113 = mlir::Builder::getStringAttr(v172 + 1, v220);
    v114 = mlir::TypeAttr::get(v205[0]);
    mlir::NamedAttribute::NamedAttribute(&v203, v113, v114);
    *v220 = v204;
    *&v220[16] = v203;
    DictionaryAttr = mlir::Builder::getDictionaryAttr(v172 + 1, v220, 2);
    v178 = 0;
  }

  if (v104 < 2)
  {
    v140 = 1;
  }

  else
  {
    v140 = *v182;
  }

  v141 = v104 - 1;
  if (v104 == 6)
  {
    v141 = 4;
  }

  if (v141 >= 2)
  {
    v142 = v141 - 1;
    v143 = v182 + 1;
    while (1)
    {
      v144 = *v143++;
      if (v144 >= 2)
      {
        break;
      }

      if (!--v142)
      {
        goto LABEL_200;
      }
    }

    *v220 = operator new(0x20uLL);
    *&v220[8] = xmmword_1E09828D0;
    strcpy(*v220, "Only per-cout LUT is supported!");
    goto LABEL_22;
  }

LABEL_200:
  if (v140 >= 2 && *v237 % v140)
  {
    *v220 = operator new(0x38uLL);
    *&v220[8] = xmmword_1E0982760;
    strcpy(*v220, "Per-cout LUT dim must be divisible by cout LUT dim!");
    goto LABEL_22;
  }

  *v220 = mlir::ElementsAttr::isSplat(&v196);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v220);
  if (IntOrFloatBitWidth > 8 || (v181 = 1, ((1 << IntOrFloatBitWidth) & 0x154) == 0))
  {
    *v220 = operator new(0x50uLL);
    *&v220[8] = xmmword_1E09829D0;
    strcpy(*v220, "Only 2-bit, 4-bit, 6-bit and 8-bit palettization for conv are supported!");
    goto LABEL_22;
  }

LABEL_72:
  v206 = 0uLL;
  __dst = &v206;
  *v220 = v199;
  v48 = mlir::Value::getDefiningOp(v220);
  v176 = DictionaryAttr;
  if (v48)
  {
    v49 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__dst, v48);
  }

  else
  {
    v49 = 0;
  }

  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v202);
  v187 = 0;
  v205[0] = 0;
  if ((v49 & 1) == 0)
  {
    v51 = v183;
    if (v205[0])
    {
      v51 = 1;
    }

    if ((v51 & 1) == 0)
    {
      *v220 = *(*(v202 + 48) + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v220);
      if (!AttrData)
      {
        __dst = 0;
        v229 = 0;
        v230[0] = 0;
LABEL_131:
        v85 = std::string::insert(&__dst, 0, "Invalid weight operand type of ");
        v86 = v85->__r_.__value_.__r.__words[2];
        *v220 = *&v85->__r_.__value_.__l.__data_;
        *&v220[16] = v86;
        v85->__r_.__value_.__l.__size_ = 0;
        v85->__r_.__value_.__r.__words[2] = 0;
        v85->__r_.__value_.__r.__words[0] = 0;
        mlir::logMatchFailure(v220, *(v202 + 24), a4);
        if ((v220[23] & 0x80000000) != 0)
        {
          operator delete(*v220);
        }

        if ((SHIBYTE(v230[0]) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v26 = __dst;
        goto LABEL_24;
      }

      v60 = v59;
      if (v59 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v61 = AttrData;
      if (v59 >= 0x17)
      {
        if ((v59 | 7) == 0x17)
        {
          v84 = 25;
        }

        else
        {
          v84 = (v59 | 7) + 1;
        }

        v62 = operator new(v84);
        v229 = v60;
        v230[0] = v84 | 0x8000000000000000;
        __dst = v62;
      }

      else
      {
        HIBYTE(v230[0]) = v59;
        v62 = &__dst;
        if (!v59)
        {
          goto LABEL_130;
        }
      }

      memmove(v62, v61, v60);
LABEL_130:
      *(v62 + v60) = 0;
      goto LABEL_131;
    }
  }

  if ((v6 & 1) == 0)
  {
    v206 = v194;
    v52 = v237;
    v53 = v238;
    *v220 = mlir::CallOpInterface::getArgOperands(&v206);
    *&v220[8] = v54;
    v55 = mlir::ElementsAttr::isSplat(v220);
    __dst = mlir::MemRefType::get(v52, v53, v55, 0, 0, 0);
    v199 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v185, &__dst, &v206) - 16;
  }

  if (PaddingStyle == 3)
  {
    if (v187 == 1)
    {
      v56 = v205[0];
      if (!v205[0])
      {
        std::string::basic_string[abi:nn200100]<0>(v220, "Cannot get the filter definition op");
        goto LABEL_22;
      }

      if (*(*(mlir::Value::getDefiningOp(&v199) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
      {
        v57 = mlir::Value::getDefiningOp(&v199);
        mlir::ConversionPatternRewriter::eraseOp(a4, v57);
      }

      v199 = v56 - 16;
    }

    else if ((v181 & 1) == 0)
    {
      Loc = mlir::Value::getLoc(&v199);
      v64 = operator new(0x40uLL);
      v229 = (v64 + 8);
      v230[0] = v64 + 8;
      *v64 = xmmword_1E09829E0;
      *(v64 + 1) = xmmword_1E09829F0;
      *(v64 + 2) = xmmword_1E0982A00;
      *(v64 + 3) = xmmword_1E0982A10;
      __dst = v64;
      *v220 = &v220[16];
      *&v220[8] = 0x100000000;
      mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>((a4 + 1), v220, Loc, &v199, &__dst);
      v65 = **v220;
      if (*v220 != &v220[16])
      {
        free(*v220);
      }

      v199 = v65;
      if (__dst)
      {
        v229 = __dst;
        operator delete(__dst);
      }
    }

    v66 = (*(v199 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v66)
    {
      v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v66 + 8);
    }

    else
    {
      v67 = 0;
    }

    v196 = v66;
    v197 = v67;
    v68 = mlir::CallableOpInterface::getArgAttrsAttr(&v196);
    v69 = mlir::CallableOpInterface::getArgAttrsAttr(&v196);
    v71 = (v69 + 8 * v70);
    *v220 = &v220[16];
    *&v220[8] = 0x400000000;
    v72 = (v71 - v68) >> 3;
    if (v72 < 5)
    {
      v73 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v220, &v220[16], v72, 8);
      v73 = *&v220[8];
    }

    if (v71 != v68)
    {
      memcpy((*v220 + 8 * v73), v68, v71 - v68);
      v73 = *&v220[8];
    }

    *&v220[8] = v73 + ((v71 - v68) >> 3);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v237, v220);
    if (*v220 != &v220[16])
    {
      free(*v220);
    }
  }

  *v220 = 3;
  v74 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v75 = mlir::RankedTensorType::get(v220, 1, v74, 0);
  *v220 = 6;
  v76 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v77 = mlir::RankedTensorType::get(v220, 1, v76, 0);
  v231 = v233;
  p_dst = 0x200000000;
  Strides = mlir::mps::ColToImOp::getStrides(&v202);
  if (Strides)
  {
    v79 = Strides;
    v80 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v79;
  }

  else
  {
    v80 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v80, &v231, 1);
  v81 = v231;
  if (*v231 == 1 && v231[1] == 1)
  {
    v173 = a4;
    v82 = 8 * p_dst - 16;
    if (p_dst != 2)
    {
      memmove(v231, v231 + 2, 8 * p_dst - 16);
    }

    LODWORD(p_dst) = (v81 + v82 - v231) >> 3;
    *v220 = 1;
    llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v231, v231, v220);
    if (v75)
    {
      v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v75 + 8);
    }

    else
    {
      v83 = 0;
    }

    a4 = v173;
    *&v204 = mlir::DenseElementsAttr::getFromRawBuffer(v75, v83, v231, 8 * p_dst, 8, 1, 0);
    v87 = v234;
    if (*v234 == 1 && *(v234 + 1) == 1)
    {
      v88 = 8 * v235 - 16;
      if (v235 != 2)
      {
        memmove(v234, v234 + 16, 8 * v235 - 16);
      }

      LODWORD(v235) = (&v87[v88] - v234) >> 3;
      *v220 = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v234, v234, v220);
      if (v75)
      {
        v115 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v75 + 8);
      }

      else
      {
        v115 = 0;
      }

      *&v203 = mlir::DenseElementsAttr::getFromRawBuffer(v75, v115, v234, 8 * v235, 8, 1, 0);
      v184 = (*(v237 + 2) - 1) * *(v234 + 1) + 1;
      v116 = (*(v237 + 3) - 1) * *(v234 + 2) + 1;
      v214 = 0;
      v215 = 0;
      v212 = 0;
      v213 = 0;
      Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v202);
      v118 = Rewriter;
      if (Rewriter)
      {
        v119 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
      }

      else
      {
        v119 = 0;
      }

      v120 = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v202);
      if (ExplicitConv2DPadding)
      {
        __dst = v230;
        memset(v230, 0, sizeof(v230));
        v229 = 0x600000006;
        v225 = v227;
        memset(v227, 0, sizeof(v227));
        v226 = 0x600000006;
        if (v77)
        {
          v121 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
        }

        else
        {
          v121 = 0;
        }

        v216 = v77;
        v217 = v121;
        *v220 = 0;
        *&v220[8] = 0;
        *&v220[16] = v215;
        *&v220[24] = v214;
        *&v221 = v213;
        *(&v221 + 1) = v212;
        *&v242 = v220;
        *(&v242 + 1) = 6;
        v146 = mlir::DenseIntElementsAttr::get<unsigned long long>(&v216, &v242);
        v210 = 0;
        v211 = v146;
        v147 = *(v202 + 24);
        *v220 = v180;
        v216 = v179;
        v149 = v176;
        v148 = v178;
        if (!v181)
        {
          v148 = 0;
          v149 = 0;
        }

        *&v242 = v148;
        v208 = v149;
        v209 = mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>((v173 + 8), v147, &v200, &v199, &v204, &v203, &v211, &v210, &v195, &v201, v220, &v216, &v242, &v208) - 16;
        if (v226)
        {
          v150 = v225;
          v151 = 8 * v226;
          v152 = v225;
          while (*v152 < 1)
          {
            ++v152;
            v151 -= 8;
            if (!v151)
            {
              goto LABEL_225;
            }
          }

          *v220 = &v220[16];
          *&v220[16] = 0u;
          v221 = 0u;
          v222 = 0u;
          v223 = 0u;
          v224 = 0u;
          *&v220[8] = 0xA0000000ALL;
          v216 = v218;
          memset_pattern16(v218, &unk_1E0982A60, 0x28uLL);
          v217 = 0x500000005;
          v219 = vdupq_n_s64(6uLL);
          v223 = v150[1];
          v224 = v150[2];
          v242 = xmmword_1E0982930;
          v153 = v173;
          v154 = mlir::Builder::getIntegerType((v173 + 8), 64, 0);
          v155 = mlir::RankedTensorType::get(&v242, 2, v154, 0);
          if (v155)
          {
            v156 = v155;
            v157 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v155 + 8);
            v155 = v156;
            v153 = v173;
          }

          else
          {
            v157 = 0;
          }

          v208 = mlir::DenseElementsAttr::getFromRawBuffer(v155, v157, *v220, 8 * *&v220[8], 8, 1, 0);
          F16FloatAttr = 5;
          v158 = mlir::Builder::getIntegerType((v153 + 8), 64, 0);
          v159 = mlir::RankedTensorType::get(&F16FloatAttr, 1, v158, 0);
          if (v159)
          {
            v160 = v159;
            v161 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v159 + 8);
            v159 = v160;
            v153 = v173;
          }

          else
          {
            v161 = 0;
          }

          *&v242 = mlir::DenseElementsAttr::getFromRawBuffer(v159, v161, v216, 8 * v217, 8, 1, 0);
          F16FloatAttr = mlir::Builder::getF16FloatAttr((v153 + 8), 0.0, v162);
          v209 = mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>((v153 + 8), v185, &v209, &v242, &v208, &F16FloatAttr) - 16;
          if (v216 != v218)
          {
            free(v216);
          }

          if (*v220 != &v220[16])
          {
            free(*v220);
          }
        }

LABEL_225:
        v163 = __dst;
        a4 = v173;
        if (__dst[2] || __dst[3])
        {
          v164 = (*(v209 + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v164)
          {
            v165 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v164 + 8);
          }

          else
          {
            v165 = 0;
          }

          *v220 = v164;
          *&v220[8] = v165;
          v166 = *(mlir::CallableOpInterface::getArgAttrsAttr(v220) + 16);
          LODWORD(v242) = 2;
          v167 = __dst[3];
          *v220 = __dst[2];
          v216 = (v166 - (v167 + *v220));
          v209 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>((v173 + 8), v185, &v209, &v242, v220, &v216) - 16;
          v163 = __dst;
        }

        if (v163[4] || v163[5])
        {
          v168 = (*(v209 + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v168)
          {
            v169 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v168 + 8);
          }

          else
          {
            v169 = 0;
          }

          *v220 = v168;
          *&v220[8] = v169;
          v170 = *(mlir::CallableOpInterface::getArgAttrsAttr(v220) + 24);
          LODWORD(v242) = 3;
          v171 = __dst[5];
          *v220 = __dst[4];
          v216 = (v170 - (v171 + *v220));
          v209 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>((v173 + 8), v185, &v209, &v242, v220, &v216) - 16;
        }

        v27 = mlir::Value::getDefiningOp(&v209);
        if (v225 != v227)
        {
          free(v225);
        }

        if (__dst != v230)
        {
          free(__dst);
        }
      }

      else
      {
        std::string::basic_string[abi:nn200100]<0>(v220, "Unsupported padding values for Conv2D");
        a4 = v173;
        mlir::logMatchFailure(v220, *(v202 + 24), v173);
        if ((v220[23] & 0x80000000) != 0)
        {
          operator delete(*v220);
        }

        v27 = 0;
      }

      goto LABEL_119;
    }

    *v220 = operator new(0x38uLL);
    *&v220[8] = xmmword_1E0982900;
    strcpy(*v220, "Conv dilation must be 1 for batch / channel axis");
  }

  else
  {
    *v220 = operator new(0x30uLL);
    *&v220[8] = xmmword_1E09828C0;
    strcpy(*v220, "Conv stride must be 1 for batch / channel axis\n");
  }

  mlir::logMatchFailure(v220, *(v202 + 24), a4);
  if ((v220[23] & 0x80000000) != 0)
  {
    operator delete(*v220);
  }

  v27 = 0;
  ExplicitConv2DPadding = 0;
LABEL_119:
  if (v231 != v233)
  {
    free(v231);
  }

LABEL_26:
  if (v234 != v236)
  {
    free(v234);
  }

  if (v237 != v239)
  {
    free(v237);
  }

  if ((ExplicitConv2DPadding & 1) == 0)
  {
    return 0;
  }

  __dst = (v27 - 16);
  v29 = 1;
  mlir::ValueRange::ValueRange(v220, &__dst, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, v186, *v220, *&v220[8]);
  return v29;
}

void mlir::anonymous namespace::ConvertSilcAllSlice::~ConvertSilcAllSlice(mlir::_anonymous_namespace_::ConvertSilcAllSlice *this)
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

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllSliceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::silc::SilcAllSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v27) || !mlir::CallOpInterface::getArgOperands(&v27))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

LABEL_3:
      i = v33 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v26 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v32 = v18;
    v33 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v32) || !mlir::CallOpInterface::getArgOperands(&v32))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v32);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

void mlir::anonymous namespace::ConvertSilcAllSlice::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase *a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  mlir::TypeConverter::TypeConverter(v17, *(a1 + 96));
  v18[0] = *(a3 + 6);
  v18[1] = 0;
  v18[0] = mlir::ValueRange::dereference_iterator(v18, 0);
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

  Sharding = mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::getSharding(a3);
  RequiresCHWRankPromotion = mlir::getRequiresCHWRankPromotion((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8), v11);
  v15 = mlir::silc::ShardingAttr::inflateRank(&Sharding, RequiresCHWRankPromotion, 1);
  v13 = mlir::OpBuilder::create<mlir::silc::SilcAllSliceOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>((a4 + 8), *(a2 + 24), &v16, &v15, v18);
  (*(*a4 + 8))(a4, a2, v13);
  mlir::TypeConverter::~TypeConverter(v17);
}

uint64_t mlir::OpBuilder::create<mlir::silc::SilcAllSliceOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::silc::SilcAllSliceOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::silc::SilcAllSliceOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::silc::SilcAllSliceOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::silc::SilcAllSliceOp,void>::id)
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

void mlir::anonymous namespace::ConvertSilcAllGather::~ConvertSilcAllGather(mlir::_anonymous_namespace_::ConvertSilcAllGather *this)
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

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllGatherOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllGatherOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::silc::SilcAllGatherOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v27) || !mlir::CallOpInterface::getArgOperands(&v27))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

LABEL_3:
      i = v33 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v26 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v32 = v18;
    v33 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v32) || !mlir::CallOpInterface::getArgOperands(&v32))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v32);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

void mlir::anonymous namespace::ConvertSilcAllGather::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase *a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  mlir::TypeConverter::TypeConverter(v17, *(a1 + 96));
  v18[0] = *(a3 + 6);
  v18[1] = 0;
  v18[0] = mlir::ValueRange::dereference_iterator(v18, 0);
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

  Sharding = mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::getSharding(a3);
  RequiresCHWRankPromotion = mlir::getRequiresCHWRankPromotion((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8), v11);
  v15 = mlir::silc::ShardingAttr::inflateRank(&Sharding, RequiresCHWRankPromotion, 1);
  v13 = mlir::OpBuilder::create<mlir::silc::SilcAllGatherOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>((a4 + 8), *(a2 + 24), &v16, &v15, v18);
  (*(*a4 + 8))(a4, a2, v13);
  mlir::TypeConverter::~TypeConverter(v17);
}

uint64_t mlir::OpBuilder::create<mlir::silc::SilcAllGatherOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::silc::SilcAllGatherOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::silc::SilcAllGatherOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::silc::SilcAllGatherOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::silc::SilcAllGatherOp,void>::id)
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

void mlir::anonymous namespace::ConvertSilcAllReduce::~ConvertSilcAllReduce(mlir::_anonymous_namespace_::ConvertSilcAllReduce *this)
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

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllReduceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllReduceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::silc::SilcAllReduceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 72);
  v33 = *(a3 + 64);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v27) || !mlir::CallOpInterface::getArgOperands(&v27))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

LABEL_3:
      i = v34 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v25;
    v32 = *(a3 + 64);
    v26 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v33 = 0;
      v34 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v33 = v18;
    v34 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v33) || !mlir::CallOpInterface::getArgOperands(&v33))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

void mlir::anonymous namespace::ConvertSilcAllReduce::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase *a3, mlir::MLIRContext **a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  mlir::TypeConverter::TypeConverter(v15, *(a1 + 96));
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

  v16[0] = *(a3 + 8);
  v16[1] = 0;
  v16[0] = mlir::ValueRange::dereference_iterator(v16, 0);
  Sharding = mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::getSharding(a3);
  MeshAxes = mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::getMeshAxes(a3);
  ReduceOp = mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::getReduceOp(a3);
  v10 = mlir::OpBuilder::create<mlir::silc::SilcAllReduceOp,mlir::MemRefType &,mlir::Value,mlir::Attribute,mlir::silc::TensorAxisRefAttr,mlir::silc::ReductionKind>(a4 + 1, *(a2 + 24), &v14, v16, &Sharding, &MeshAxes, &ReduceOp);
  (*(*a4 + 1))(a4, a2, v10);
  mlir::TypeConverter::~TypeConverter(v15);
}

uint64_t mlir::OpBuilder::create<mlir::silc::SilcAllReduceOp,mlir::MemRefType &,mlir::Value,mlir::Attribute,mlir::silc::TensorAxisRefAttr,mlir::silc::ReductionKind>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::silc::SilcAllReduceOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::silc::SilcAllReduceOp,mlir::MemRefType &,mlir::Value,mlir::Attribute,mlir::silc::TensorAxisRefAttr,mlir::silc::ReductionKind>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::silc::SilcAllReduceOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::silc::SilcAllReduceOp,void>::id)
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

void mlir::anonymous namespace::ConvertPalettizedConvPatternToFusionOp::~ConvertPalettizedConvPatternToFusionOp(mlir::_anonymous_namespace_::ConvertPalettizedConvPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertPalettizedConvPatternToFusionOp::matchAndRewrite(mlir::anec::OpIDMap **a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v28[0] = &v29;
  v28[1] = 0x600000000;
  v30[0] = &v31;
  v30[1] = 0x600000000;
  v32 = v34;
  v33 = 0x600000000;
  v34[6] = 0;
  v34[7] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (((*(*a1 + 9))(a1, a2, v28) & 1) == 0)
  {
    llvm::deallocate_buffer(v39, (8 * v41));
  }

  v27[0] = "PalettizedConv";
  v27[1] = 14;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v18[0] = v32;
  v18[1] = v33;
  v6 = mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v27, v19, v28, v30, v18);
  (*(*a3 + 8))(a3, a2, v6);
  if (a1[12])
  {
    if (v6 && v33)
    {
      v7 = v32;
      v8 = 8 * v33;
      while (1)
      {
        OpID = mlir::anec::OpIDMap::lookUpTheFirstOpID(a1[12], *v7);
        if ((v10 & 1) == 0 || (mlir::anec::OpIDMap::addOpID(a1[12], v6, OpID) & 1) == 0)
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
LABEL_9:
    if (v33)
    {
      v11 = v32;
      v12 = &v32[v33];
      do
      {
        v13 = *v11;
        if (*v11)
        {
          v14 = *(v13 + 2);
          if (v14)
          {
            if (mlir::Block::getParent(v14))
            {
              v15 = *(v13 + 9);
              if (v15)
              {
                v16 = v13 - 16;
              }

              else
              {
                v16 = 0;
              }

              if (v15)
              {
                v17 = 0;
                while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17))
                {
                  if (v15 == ++v17)
                  {
                    goto LABEL_11;
                  }
                }
              }

              else
              {
LABEL_11:
                (*(*a3 + 16))(a3, v13);
              }
            }
          }
        }

        ++v11;
      }

      while (v11 != v12);
    }
  }

  llvm::deallocate_buffer(v24, (16 * v26));
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, mlir::IRMapping *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::FusionOp,mlir::mpsx::FusionType const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,5u> &,llvm::SmallVector<mlir::Value,1u> &,llvm::ArrayRef<mlir::Operation *>>(v24, v26, v25);
  }

  mlir::OperationState::OperationState(v24, a2, v15);
  v18 = *a3;
  v17 = *(a3 + 8);
  mlir::ValueRange::ValueRange(v26, *a5, *(a5 + 8));
  mlir::ValueRange::ValueRange(v25, *a6, *(a6 + 8));
  mlir::mpsx::FusionOp::build(a1, v24, v18, v17, a4, v26[0], v26[1], v19, v25[0], v25[1], *a7, *(a7 + 8));
  v20 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v21;
}

uint64_t mlir::anonymous namespace::ConvertPalettizedConvPatternToFusionOp::validateConvWeightLayout(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (a2)
  {
    __s1 = v15;
    v14 = 0x400000000;
    __s2 = &v11 + 8;
    v12 = 1;
    v11 = xmmword_1E0982A30;
    DefiningOp = *(*(a2 + 72) + 56);
    v5 = mlir::Value::getDefiningOp(&DefiningOp) && (v7 = *(*(a2 + 72) + 56), DefiningOp = mlir::Value::getDefiningOp(&v7), AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&DefiningOp), mlir::getIntValues<int>(AsAttribute, v4, &__s1, 1), v14 == v11) && !memcmp(__s1, __s2, 4 * v14) && mlir::mps::Conv3DOp::getWeightsLayout(&v9) == 3;
    if (__s2 != &v11 + 8)
    {
      free(__s2);
    }

    if (__s1 != v15)
    {
      free(__s1);
    }

    if (v5)
    {
      return 1;
    }
  }

  else if (mlir::mps::Conv3DOp::getWeightsLayout(&v9) == 2)
  {
    return 1;
  }

  return 0;
}

void mlir::anonymous namespace::ConvertPalettizedLinearPatternToFusionOp::~ConvertPalettizedLinearPatternToFusionOp(mlir::_anonymous_namespace_::ConvertPalettizedLinearPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertPalettizedLinearPatternToFusionOp::matchAndRewrite(mlir::anec::OpIDMap **a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v28[0] = &v29;
  v28[1] = 0x600000000;
  v30[0] = &v31;
  v30[1] = 0x600000000;
  v32 = v34;
  v33 = 0x600000000;
  v34[6] = 0;
  v34[7] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (((*(*a1 + 9))(a1, a2, v28) & 1) == 0)
  {
    llvm::deallocate_buffer(v39, (8 * v41));
  }

  v27[0] = "PalettizedLinear";
  v27[1] = 16;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v18[0] = v32;
  v18[1] = v33;
  v6 = mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v27, v19, v28, v30, v18);
  (*(*a3 + 8))(a3, a2, v6);
  if (a1[12])
  {
    if (v6 && v33)
    {
      v7 = v32;
      v8 = 8 * v33;
      while (1)
      {
        OpID = mlir::anec::OpIDMap::lookUpTheFirstOpID(a1[12], *v7);
        if ((v10 & 1) == 0 || (mlir::anec::OpIDMap::addOpID(a1[12], v6, OpID) & 1) == 0)
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
LABEL_9:
    if (v33)
    {
      v11 = v32;
      v12 = &v32[v33];
      do
      {
        v13 = *v11;
        v14 = *(*v11 + 2);
        if (v14 && mlir::Block::getParent(v14))
        {
          v15 = *(v13 + 9);
          if (v15)
          {
            v16 = v13 - 16;
          }

          else
          {
            v16 = 0;
          }

          if (v15)
          {
            v17 = 0;
            while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17))
            {
              if (v15 == ++v17)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
LABEL_11:
            (*(*a3 + 16))(a3, v13);
          }
        }

        ++v11;
      }

      while (v11 != v12);
    }
  }

  llvm::deallocate_buffer(v24, (16 * v26));
}

uint64_t mlir::anonymous namespace::ConvertPalettizedLinearPatternToFusionOp::patternMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  if (matched == v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(a2 + 72);
  v9 = matched ? *(v8 + 24) : *(v8 + 56);
  v30[0] = v9;
  DefiningOp = mlir::Value::getDefiningOp(v30);
  v11 = (*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
  v30[0] = v11;
  v30[1] = v12;
  mlir::CallableOpInterface::getArgAttrsAttr(v30);
  v14 = v13;
  v30[0] = a2;
  mlir::mps::MatMulOp::getTransposeRhs(v30);
  if (v14 != 2)
  {
    return 0;
  }

  if (matched)
  {
    IsNegated = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(v30);
    if (v7 & IsNegated)
    {
      if (!mlir::mps::MatMulOp::getTransposeRhs(v30))
      {
        return 0;
      }
    }

    else if (IsNegated)
    {
      return 0;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = 0;
    }

    v17 = (v19 + 56);
  }

  else
  {
    if ((v7 & 1) == 0 || !mlir::mps::MatMulOp::getTransposeRhs(v30))
    {
      return 0;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v16 = *(a2 + 72);
    }

    else
    {
      v16 = 0;
    }

    v17 = (v16 + 24);
  }

  v20 = *v17;
  v29 = *(*(DefiningOp + 72) + 24);
  v21 = mlir::Value::getDefiningOp(&v29);
  v29 = *(*(DefiningOp + 72) + 56);
  v22 = mlir::Value::getDefiningOp(&v29);
  v23 = v30[0];
  *(a3 + 136) = 0;
  if (*(a3 + 140) > 3u)
  {
    v24 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, 4uLL, 8);
    v24 = *(a3 + 136);
  }

  v25 = (*(a3 + 128) + 8 * v24);
  *v25 = v21;
  v25[1] = v22;
  v25[2] = DefiningOp;
  v25[3] = v23;
  *(a3 + 136) += 4;
  *(a3 + 8) = 0;
  if (*(a3 + 12))
  {
    v26 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, 1uLL, 8);
    v26 = *(a3 + 8);
  }

  *(*a3 + 8 * v26) = v20;
  ++*(a3 + 8);
  v27 = a2 - 16;
  *(a3 + 72) = 0;
  if (*(a3 + 76))
  {
    v28 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 64, a3 + 80, 1uLL, 8);
    v28 = *(a3 + 72);
  }

  *(*(a3 + 64) + 8 * v28) = v27;
  ++*(a3 + 72);
  return 1;
}

void mlir::anonymous namespace::ConvertQuantizedConvPatternToFusionOp::~ConvertQuantizedConvPatternToFusionOp(mlir::_anonymous_namespace_::ConvertQuantizedConvPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertQuantizedConvPatternToFusionOp::matchAndRewrite(mlir::anec::OpIDMap **a1, mlir::Operation *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v29[0] = &v30;
  v29[1] = 0x600000000;
  v31[0] = &v32;
  v31[1] = 0x600000000;
  v33 = v35;
  v34 = 0x600000000;
  v35[6] = 0;
  v35[7] = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (((*(*a1 + 9))(a1, a2, v29) & 1) == 0)
  {
    llvm::deallocate_buffer(v40, (8 * v42));
  }

  v28[0] = "ANECQuantizedConv";
  v28[1] = 17;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = *(a2 + 3);
  v19[0] = v33;
  v19[1] = v34;
  v7 = mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), v6, v28, v20, v29, v31, v19);
  mlir::RewriterBase::replaceAllOpUsesWith(a3, a2, v7);
  if (a1[12])
  {
    if (v7 && v34)
    {
      v8 = v33;
      v9 = 8 * v34;
      while (1)
      {
        OpID = mlir::anec::OpIDMap::lookUpTheFirstOpID(a1[12], *v8);
        if ((v11 & 1) == 0 || (mlir::anec::OpIDMap::addOpID(a1[12], v7, OpID) & 1) == 0)
        {
          break;
        }

        ++v8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
LABEL_9:
    if (v34)
    {
      v12 = v33;
      v13 = &v33[v34];
      do
      {
        v14 = *v12;
        if (*v12)
        {
          v15 = *(v14 + 2);
          if (v15)
          {
            if (mlir::Block::getParent(v15))
            {
              v16 = *(v14 + 9);
              if (v16)
              {
                v17 = v14 - 16;
              }

              else
              {
                v17 = 0;
              }

              if (v16)
              {
                v18 = 0;
                while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v17, v18))
                {
                  if (v16 == ++v18)
                  {
                    goto LABEL_11;
                  }
                }
              }

              else
              {
LABEL_11:
                (*(*a3 + 16))(a3, v14);
              }
            }
          }
        }

        ++v12;
      }

      while (v12 != v13);
    }
  }

  llvm::deallocate_buffer(v25, (16 * v27));
}

uint64_t mlir::anonymous namespace::ConvertQuantizedConvPatternToFusionOp::patternMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18[0] = &v23;
  v18[1] = &v22;
  v18[2] = &v21;
  v18[3] = &v20;
  v17[0] = &v24;
  v17[1] = v18;
  v17[2] = 0;
  result = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(v17, a2);
  if (result)
  {
    v6 = v23;
    v8 = v21;
    v7 = v22;
    v10 = v19;
    v9 = v20;
    *(a3 + 136) = 0;
    if (*(a3 + 140) > 5u)
    {
      v11 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, 6uLL, 8);
      v11 = *(a3 + 136);
    }

    v12 = (*(a3 + 128) + 8 * v11);
    *v12 = v6;
    v12[1] = v7;
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = v10;
    v12[5] = a2;
    *(a3 + 136) += 6;
    v13 = *(*(a2 + 72) + 24);
    *(a3 + 8) = 0;
    if (*(a3 + 12))
    {
      v14 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, 1uLL, 8);
      v14 = *(a3 + 8);
    }

    *(*a3 + 8 * v14) = v13;
    ++*(a3 + 8);
    v15 = a2 - 16;
    *(a3 + 72) = 0;
    if (*(a3 + 76))
    {
      v16 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 64, a3 + 80, 1uLL, 8);
      v16 = *(a3 + 72);
    }

    *(*(a3 + 64) + 8 * v16) = v15;
    ++*(a3 + 72);
    return 1;
  }

  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul,3ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v21 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (*v4 ? (v7 = *v4 == DefiningOp) : (v7 = 1), v7))
    {
      *v4 = DefiningOp;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6 & **a2;
  if (!DefiningOp)
  {
    v8 = 0;
  }

  **a2 = v8;
  v9 = a1[1];
  v21 = *(*(**(a2 + 8) + 72) + 56);
  v10 = mlir::Value::getDefiningOp(&v21);
  if (v10)
  {
    if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v9 || *v9 == v10))
    {
      *v9 = v10;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = v11 & **a2;
  if (!v10)
  {
    v12 = 0;
  }

  **a2 = v12;
  v13 = a1[2];
  v21 = *(*(**(a2 + 8) + 72) + 88);
  v14 = mlir::Value::getDefiningOp(&v21);
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

  v16 = v15 & **a2;
  if (!v14)
  {
    v16 = 0;
  }

  **a2 = v16;
  v17 = a1[3];
  v21 = *(*(**(a2 + 8) + 72) + 120);
  result = mlir::Value::getDefiningOp(&v21);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v17 || *v17 == result))
    {
      *v17 = result;
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  v20 = v19 & **a2;
  if (!result)
  {
    v20 = 0;
  }

  **a2 = v20;
  return result;
}

void mlir::anonymous namespace::ConvertRingBufferWriterPatternToFusionOp::~ConvertRingBufferWriterPatternToFusionOp(mlir::_anonymous_namespace_::ConvertRingBufferWriterPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertRingBufferWriterPatternToFusionOp::matchAndRewrite(mlir::anec::OpIDMap **a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v31 = &v33;
  v32 = 0x600000000;
  v34 = &v36;
  v35 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  v39[6] = 0;
  v39[7] = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (((*(*a1 + 9))(a1, a2, &v31) & 1) == 0)
  {
    llvm::deallocate_buffer(v44, (8 * v46));
  }

  v27[0] = "ANECRingBufferWriter";
  v27[1] = 20;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  mlir::ValueRange::ValueRange(&__p, v31, v32);
  mlir::ValueRange::ValueRange(v30, v34, v35);
  v18[0] = v37;
  v18[1] = v38;
  v6 = mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v27, v19, &__p, v30, v18);
  (*(*a3 + 8))(a3, a2, v6);
  if (a1[12])
  {
    if (v6)
    {
      if (!v38)
      {
        goto LABEL_26;
      }

      v7 = v37;
      v8 = 8 * v38;
      while (1)
      {
        OpID = mlir::anec::OpIDMap::lookUpTheFirstOpID(a1[12], *v7);
        if ((v10 & 1) == 0 || (mlir::anec::OpIDMap::addOpID(a1[12], v6, OpID) & 1) == 0)
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    __p = operator new(0x28uLL);
    v29 = xmmword_1E09828E0;
    strcpy(__p, "failed: can not retrieve source op ids");
    mlir::logMatchFailure(&__p, *(a2 + 24), a3);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
LABEL_9:
    if (v38)
    {
      v11 = v37;
      v12 = &v37[v38];
      do
      {
        v13 = *v11;
        v14 = *(*v11 + 2);
        if (v14 && mlir::Block::getParent(v14))
        {
          v15 = *(v13 + 9);
          if (v15)
          {
            v16 = v13 - 16;
          }

          else
          {
            v16 = 0;
          }

          if (v15)
          {
            v17 = 0;
            while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17))
            {
              if (v15 == ++v17)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
LABEL_11:
            (*(*a3 + 16))(a3, v13);
          }
        }

        ++v11;
      }

      while (v11 != v12);
    }
  }

LABEL_26:
  llvm::deallocate_buffer(v24, (16 * v26));
}

uint64_t mlir::anonymous namespace::ConvertRingBufferWriterPatternToFusionOp::patternMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v70[0] = &v71;
  v70[1] = 0;
  v68 = v70;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v64[0] = &v68;
  v64[1] = &v66;
  v64[2] = &v73;
  v64[3] = &v72;
  v64[4] = &v67;
  v65 = 0;
  v62[1] = 0;
  v63 = 0;
  v61 = 0;
  v62[0] = &v63;
  v60[0] = v62;
  v60[1] = v64;
  v74 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(a2 + 68) != 2)
  {
    return 0;
  }

  v76 = 1;
  v75[0] = &v76;
  v75[1] = &v74;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceUpdateOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::AssignVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceUpdateOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceUpdateOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *> & *)#1},0ul,1ul>(v60, v75);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

  v61 = v74;
  v6 = v69;
  v74 = v69;
  v7 = *(a3 + 240);
  v8 = *(a3 + 256);
  if (v8)
  {
    v9 = a3;
    v10 = (v8 - 1) & ((v69 >> 4) ^ (v69 >> 9));
    v11 = *(v7 + 8 * v10);
    if (v11 == v69)
    {
LABEL_8:
      if (v10 != v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v48 = 1;
      while (v11 != -4096)
      {
        v49 = v10 + v48++;
        v10 = v49 & (v8 - 1);
        v11 = *(v7 + 8 * v10);
        if (v11 == v69)
        {
          goto LABEL_8;
        }
      }
    }
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v74, v75);
  v9 = a3;
  v12 = v74;
  v13 = *(a3 + 136);
  if (v13 >= *(a3 + 140))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v13 + 1, 8);
    v9 = a3;
    LODWORD(v13) = *(a3 + 136);
  }

  *(*(v9 + 128) + 8 * v13) = v12;
  ++*(v9 + 136);
LABEL_12:
  v14 = *(*(v6 + 72) + 24);
  v15 = v9;
  v75[0] = v73;
  DefiningOp = mlir::Value::getDefiningOp(v75);
  v75[0] = v72;
  v17 = mlir::Value::getDefiningOp(v75);
  v18 = *(*(DefiningOp + 48) + 16);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
  {
    if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      v20 = a3;
      v32 = v17;
LABEL_29:
      v21 = a2;
      goto LABEL_30;
    }

    return 0;
  }

  if (v18 != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id || *(*(v17 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    return 0;
  }

  v74 = DefiningOp;
  v19 = *(a3 + 256);
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = a3;
  v21 = a2;
  v22 = *(a3 + 240);
  v23 = (v19 - 1) & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
  v24 = *(v22 + 8 * v23);
  if (v24 != DefiningOp)
  {
    v56 = 1;
    while (v24 != -4096)
    {
      v57 = v23 + v56++;
      v23 = v57 & (v19 - 1);
      v24 = *(v22 + 8 * v23);
      if (v24 == DefiningOp)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

LABEL_17:
  if (v23 == v19)
  {
LABEL_18:
    v25 = v17;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v74, v75);
    v20 = a3;
    v26 = v74;
    v27 = *(a3 + 136);
    if (v27 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v27 + 1, 8);
      v20 = a3;
      LODWORD(v27) = *(a3 + 136);
    }

    *(*(v20 + 128) + 8 * v27) = v26;
    ++*(v20 + 136);
    v22 = *(v20 + 240);
    LODWORD(v19) = *(v20 + 256);
    v21 = a2;
    v17 = v25;
  }

  v74 = v17;
  if (!v19)
  {
    goto LABEL_24;
  }

  v28 = (v19 - 1) & ((v17 >> 4) ^ (v17 >> 9));
  v29 = *(v22 + 8 * v28);
  if (v29 != v17)
  {
    v58 = 1;
    while (v29 != -4096)
    {
      v59 = v28 + v58++;
      v28 = v59 & (v19 - 1);
      v29 = *(v22 + 8 * v28);
      if (v29 == v17)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

LABEL_23:
  if (v28 == v19)
  {
LABEL_24:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v74, v75);
    v20 = a3;
    v30 = v74;
    v31 = *(a3 + 136);
    if (v31 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v31 + 1, 8);
      v20 = a3;
      LODWORD(v31) = *(a3 + 136);
    }

    *(*(v20 + 128) + 8 * v31) = v30;
    ++*(v20 + 136);
    goto LABEL_29;
  }

LABEL_30:
  v74 = v67;
  v33 = *(v20 + 256);
  if (!v33)
  {
    goto LABEL_33;
  }

  v34 = *(v20 + 240);
  v35 = (v33 - 1) & ((v67 >> 4) ^ (v67 >> 9));
  v36 = *(v34 + 8 * v35);
  if (v36 != v67)
  {
    v50 = 1;
    while (v36 != -4096)
    {
      v51 = v35 + v50++;
      v35 = v51 & (v33 - 1);
      v36 = *(v34 + 8 * v35);
      if (v36 == v67)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

LABEL_32:
  if (v35 == v33)
  {
LABEL_33:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v74, v75);
    v37 = a3;
    v38 = v74;
    v33 = *(a3 + 136);
    if (v33 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v33 + 1, 8);
      v37 = a3;
      LODWORD(v33) = *(a3 + 136);
    }

    *(*(v37 + 128) + 8 * v33) = v38;
    ++*(v37 + 136);
    v34 = *(v37 + 240);
    LODWORD(v33) = *(v37 + 256);
    v21 = a2;
  }

  v74 = v65;
  if (!v33)
  {
    goto LABEL_39;
  }

  v39 = (v33 - 1) & ((v65 >> 4) ^ (v65 >> 9));
  v40 = *(v34 + 8 * v39);
  if (v40 != v65)
  {
    v52 = 1;
    while (v40 != -4096)
    {
      v53 = v39 + v52++;
      v39 = v53 & (v33 - 1);
      v40 = *(v34 + 8 * v39);
      if (v40 == v65)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_39;
  }

LABEL_38:
  if (v39 == v33)
  {
LABEL_39:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v74, v75);
    v41 = a3;
    v42 = v74;
    v33 = *(a3 + 136);
    if (v33 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v33 + 1, 8);
      v41 = a3;
      LODWORD(v33) = *(a3 + 136);
    }

    *(*(v41 + 128) + 8 * v33) = v42;
    ++*(v41 + 136);
    v34 = *(v41 + 240);
    LODWORD(v33) = *(v41 + 256);
    v21 = a2;
  }

  v74 = v21;
  if (!v33)
  {
    goto LABEL_45;
  }

  v43 = (v33 - 1) & ((v21 >> 4) ^ (v21 >> 9));
  v44 = *(v34 + 8 * v43);
  if (v44 != v21)
  {
    v54 = 1;
    while (v44 != -4096)
    {
      v55 = v43 + v54++;
      v43 = v55 & (v33 - 1);
      v44 = *(v34 + 8 * v43);
      if (v44 == a2)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_45;
  }

LABEL_44:
  if (v43 == v33)
  {
LABEL_45:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v74, v75);
    v45 = a3;
    v46 = v74;
    v47 = *(a3 + 136);
    if (v47 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v47 + 1, 8);
      v45 = a3;
      LODWORD(v47) = *(a3 + 136);
    }

    *(*(v45 + 128) + 8 * v47) = v46;
    ++*(v45 + 136);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<mlir::Operation *>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, mlir::IRMapping *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::FusionOp,mlir::mpsx::FusionType const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,5u> &,llvm::SmallVector<mlir::Value,1u> &,llvm::ArrayRef<mlir::Operation *>>(v24, v23, v22);
  }

  mlir::OperationState::OperationState(v24, a2, v15);
  mlir::mpsx::FusionOp::build(a1, v24, *a3, *(a3 + 8), a4, *a5, *(a5 + 8), v17, *a6, *(a6 + 8), *a7, *(a7 + 8));
  v18 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v19;
}

void mlir::anonymous namespace::PatternMatchDetails::addInput(uint64_t a1, unint64_t a2)
{
  v15 = a2;
  v5 = *(a1 + 192);
  v3 = a1 + 192;
  v4 = v5;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
    v9 = (v6 - 1) & (-348639895 * ((v8 >> 47) ^ v8));
    v10 = *(v4 + 8 * v9);
    if (v10 == a2)
    {
LABEL_3:
      if (v9 != v6)
      {
        return;
      }
    }

    else
    {
      v13 = 1;
      while (v10 != -4096)
      {
        v14 = v9 + v13++;
        v9 = v14 & (v6 - 1);
        v10 = *(v4 + 8 * v9);
        if (v10 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v3, &v15, v16);
  v11 = v15;
  v12 = *(a1 + 8);
  if (v12 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v12 + 1, 8);
    LODWORD(v12) = *(a1 + 8);
  }

  *(*a1 + 8 * v12) = v11;
  ++*(a1 + 8);
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceUpdateOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul,3ul,4ul>(uint64_t a1, uint64_t a2)
{
  v4 = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>>(**(a2 + 8), 0, *a1);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = v4 & **a2;
  **a2 = v7;
  v8 = *(a1 + 8);
  v9 = *(*v6 + 72);
  v10 = v9[7];
  if (*v8)
  {
    v11 = *v8 == v10;
  }

  else
  {
    *v8 = v10;
    v5 = *a2;
    v9 = *(**(a2 + 8) + 72);
    v7 = **a2 != 0;
    v11 = 1;
  }

  v12 = v11 & v7;
  *v5 = v12;
  v13 = *(a1 + 16);
  v14 = v9[11];
  if (*v13)
  {
    v15 = *v13 == v14;
  }

  else
  {
    *v13 = v14;
    v5 = *a2;
    v9 = *(**(a2 + 8) + 72);
    v12 = **a2 != 0;
    v15 = 1;
  }

  v16 = v15 & v12;
  *v5 = v16;
  v17 = *(a1 + 24);
  v18 = v9[15];
  if (*v17)
  {
    v19 = *v17 == v18;
  }

  else
  {
    *v17 = v18;
    v5 = *a2;
    v9 = *(**(a2 + 8) + 72);
    v16 = **a2 != 0;
    v19 = 1;
  }

  *v5 = v19 & v16;
  v20 = *(a1 + 32);
  v24 = v9[19];
  result = mlir::Value::getDefiningOp(&v24);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v20 || *v20 == result))
    {
      *v20 = result;
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }
  }

  v23 = v22 & **a2;
  if (!result)
  {
    v23 = 0;
  }

  **a2 = v23;
  return result;
}

void mlir::anonymous namespace::ConvertRingBufferReaderPatternToFusionOp::~ConvertRingBufferReaderPatternToFusionOp(mlir::_anonymous_namespace_::ConvertRingBufferReaderPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertRingBufferReaderPatternToFusionOp::matchAndRewrite(mlir::anec::OpIDMap **a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v31 = &v33;
  v32 = 0x600000000;
  v34 = &v36;
  v35 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  v39[6] = 0;
  v39[7] = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (((*(*a1 + 9))(a1, a2, &v31) & 1) == 0)
  {
    llvm::deallocate_buffer(v44, (8 * v46));
  }

  v27[0] = "ANECRingBufferReader";
  v27[1] = 20;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  mlir::ValueRange::ValueRange(&__p, v31, v32);
  mlir::ValueRange::ValueRange(v30, v34, v35);
  v18[0] = v37;
  v18[1] = v38;
  v6 = mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v27, v19, &__p, v30, v18);
  (*(*a3 + 8))(a3, a2, v6);
  if (a1[12])
  {
    if (v6)
    {
      if (!v38)
      {
        goto LABEL_26;
      }

      v7 = v37;
      v8 = 8 * v38;
      while (1)
      {
        OpID = mlir::anec::OpIDMap::lookUpTheFirstOpID(a1[12], *v7);
        if ((v10 & 1) == 0 || (mlir::anec::OpIDMap::addOpID(a1[12], v6, OpID) & 1) == 0)
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    __p = operator new(0x28uLL);
    v29 = xmmword_1E09828E0;
    strcpy(__p, "failed: can not retrieve source op ids");
    mlir::logMatchFailure(&__p, *(a2 + 24), a3);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
LABEL_9:
    if (v38)
    {
      v11 = v37;
      v12 = &v37[v38];
      do
      {
        v13 = *v11;
        v14 = *(*v11 + 2);
        if (v14 && mlir::Block::getParent(v14))
        {
          v15 = *(v13 + 9);
          if (v15)
          {
            v16 = v13 - 16;
          }

          else
          {
            v16 = 0;
          }

          if (v15)
          {
            v17 = 0;
            while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17))
            {
              if (v15 == ++v17)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
LABEL_11:
            (*(*a3 + 16))(a3, v13);
          }
        }

        ++v11;
      }

      while (v11 != v12);
    }
  }

LABEL_26:
  llvm::deallocate_buffer(v24, (16 * v26));
}

uint64_t mlir::anonymous namespace::ConvertRingBufferReaderPatternToFusionOp::patternMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39[0] = &v44;
  v39[1] = &v43;
  v39[2] = &v42;
  v39[3] = &v41;
  v40 = 0;
  v45 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(a2 + 68) != 4)
  {
    return 0;
  }

  LOBYTE(v38) = 1;
  v46[0] = &v38;
  v46[1] = &v45;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul,3ul>(v39, v46);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  v40 = v45;
  v46[0] = v43;
  DefiningOp = mlir::Value::getDefiningOp(v46);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      return 0;
    }
  }

  v6 = DefiningOp;
  v38 = v44;
  v7 = &v38;
  if (!mlir::Value::getDefiningOp(&v38))
  {
    goto LABEL_17;
  }

  v7 = &v38;
  if (*(*(mlir::Value::getDefiningOp(&v38) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id)
  {
    goto LABEL_17;
  }

  v8 = mlir::Value::getDefiningOp(&v38);
  v45 = v8;
  v9 = *(a3 + 240);
  v10 = *(a3 + 256);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = (v10 - 1) & ((v8 >> 4) ^ (v8 >> 9));
  v12 = *(v9 + 8 * v11);
  if (v12 != v8)
  {
    v36 = 1;
    while (v12 != -4096)
    {
      v37 = v11 + v36++;
      v11 = v37 & (v10 - 1);
      v12 = *(v9 + 8 * v11);
      if (v12 == v8)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  if (v11 == v10)
  {
LABEL_13:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v45, v46);
    v13 = a3;
    v14 = v45;
    v15 = *(a3 + 136);
    if (v15 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v15 + 1, 8);
      v13 = a3;
      LODWORD(v15) = *(a3 + 136);
    }

    *(*(v13 + 128) + 8 * v15) = v14;
    ++*(v13 + 136);
  }

  v7 = (*(mlir::Value::getDefiningOp(&v38) + 72) + 24);
LABEL_17:
  v45 = v42;
  v16 = *(a3 + 240);
  v17 = *(a3 + 256);
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = a3;
  v19 = (v17 - 1) & ((v42 >> 4) ^ (v42 >> 9));
  v20 = *(v16 + 8 * v19);
  if (v20 != v42)
  {
    v30 = 1;
    while (v20 != -4096)
    {
      v31 = v19 + v30++;
      v19 = v31 & (v17 - 1);
      v20 = *(v16 + 8 * v19);
      if (v20 == v42)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_20;
  }

LABEL_19:
  if (v19 == v17)
  {
LABEL_20:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v45, v46);
    v18 = a3;
    v21 = v45;
    v17 = *(a3 + 136);
    if (v17 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v17 + 1, 8);
      v18 = a3;
      LODWORD(v17) = *(a3 + 136);
    }

    *(*(v18 + 128) + 8 * v17) = v21;
    ++*(v18 + 136);
    v16 = *(v18 + 240);
    LODWORD(v17) = *(v18 + 256);
  }

  v45 = v41;
  if (!v17)
  {
    goto LABEL_26;
  }

  v22 = (v17 - 1) & ((v41 >> 4) ^ (v41 >> 9));
  v23 = *(v16 + 8 * v22);
  if (v23 != v41)
  {
    v32 = 1;
    while (v23 != -4096)
    {
      v33 = v22 + v32++;
      v22 = v33 & (v17 - 1);
      v23 = *(v16 + 8 * v22);
      if (v23 == v41)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

LABEL_25:
  if (v22 == v17)
  {
LABEL_26:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v45, v46);
    v18 = a3;
    v24 = v45;
    v17 = *(a3 + 136);
    if (v17 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v17 + 1, 8);
      v18 = a3;
      LODWORD(v17) = *(a3 + 136);
    }

    *(*(v18 + 128) + 8 * v17) = v24;
    ++*(v18 + 136);
    v16 = *(v18 + 240);
    LODWORD(v17) = *(v18 + 256);
  }

  v25 = v40;
  v45 = v40;
  if (!v17)
  {
    goto LABEL_32;
  }

  v26 = (v17 - 1) & ((v40 >> 4) ^ (v40 >> 9));
  v27 = *(v16 + 8 * v26);
  if (v27 != v40)
  {
    v34 = 1;
    while (v27 != -4096)
    {
      v35 = v26 + v34++;
      v26 = v35 & (v17 - 1);
      v27 = *(v16 + 8 * v26);
      if (v27 == v40)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_32;
  }

LABEL_31:
  if (v26 == v17)
  {
LABEL_32:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3 + 240, &v45, v46);
    v18 = a3;
    v28 = v45;
    v29 = *(a3 + 136);
    if (v29 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, a3 + 144, v29 + 1, 8);
      v18 = a3;
      LODWORD(v29) = *(a3 + 136);
    }

    *(*(v18 + 128) + 8 * v29) = v28;
    ++*(v18 + 136);
  }

  return 1;
}

void mlir::anonymous namespace::PatternMatchDetails::addOutput(uint64_t a1, unint64_t a2)
{
  v15 = a2;
  v5 = *(a1 + 216);
  v3 = a1 + 216;
  v4 = v5;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
    v9 = (v6 - 1) & (-348639895 * ((v8 >> 47) ^ v8));
    v10 = *(v4 + 8 * v9);
    if (v10 == a2)
    {
LABEL_3:
      if (v9 != v6)
      {
        return;
      }
    }

    else
    {
      v13 = 1;
      while (v10 != -4096)
      {
        v14 = v9 + v13++;
        v9 = v14 & (v6 - 1);
        v10 = *(v4 + 8 * v9);
        if (v10 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v3, &v15, v16);
  v11 = v15;
  v12 = *(a1 + 72);
  if (v12 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, a1 + 80, v12 + 1, 8);
    LODWORD(v12) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v12) = v11;
  ++*(a1 + 72);
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul,3ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *(**(a2 + 8) + 72);
  v5 = v4[3];
  v6 = **a1;
  if (v6)
  {
    v7 = v6 == v5;
  }

  else
  {
    **a1 = v5;
    v4 = *(**(a2 + 8) + 72);
    v7 = 1;
  }

  v8 = *a2;
  v9 = v7 & **a2;
  **a2 = v9;
  v10 = a1[1];
  v11 = v4[7];
  if (*v10)
  {
    v12 = *v10 == v11;
  }

  else
  {
    *v10 = v11;
    v8 = *a2;
    v4 = *(**(a2 + 8) + 72);
    v9 = **a2 != 0;
    v12 = 1;
  }

  *v8 = v12 & v9;
  v13 = a1[2];
  v21 = v4[11];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v13 || *v13 == DefiningOp))
    {
      *v13 = DefiningOp;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = v15 & **a2;
  if (!DefiningOp)
  {
    v16 = 0;
  }

  **a2 = v16;
  v17 = a1[3];
  v21 = *(*(**(a2 + 8) + 72) + 120);
  result = mlir::Value::getDefiningOp(&v21);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v17 || *v17 == result))
    {
      *v17 = result;
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  v20 = v19 & **a2;
  if (!result)
  {
    v20 = 0;
  }

  **a2 = v20;
  return result;
}

void mlir::anonymous namespace::ConvertTensorBufferPatternToFusionOp::~ConvertTensorBufferPatternToFusionOp(mlir::_anonymous_namespace_::ConvertTensorBufferPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertTensorBufferPatternToFusionOp::matchAndRewrite(mlir::anec::OpIDMap **a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v31 = &v33;
  v32 = 0x600000000;
  v34 = &v36;
  v35 = 0x600000000;
  v37 = v39;
  v38 = 0x600000000;
  v39[6] = 0;
  v39[7] = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (((*(*a1 + 9))(a1, a2, &v31) & 1) == 0)
  {
    llvm::deallocate_buffer(v44, (8 * v46));
  }

  v27[0] = "ANECTensorBuffer";
  v27[1] = 16;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  mlir::ValueRange::ValueRange(&__p, v31, v32);
  mlir::ValueRange::ValueRange(v30, v34, v35);
  v18[0] = v37;
  v18[1] = v38;
  v6 = mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v27, v19, &__p, v30, v18);
  (*(*a3 + 8))(a3, a2, v6);
  if (a1[12])
  {
    if (v6)
    {
      if (!v38)
      {
        goto LABEL_26;
      }

      v7 = v37;
      v8 = 8 * v38;
      while (1)
      {
        OpID = mlir::anec::OpIDMap::lookUpTheFirstOpID(a1[12], *v7);
        if ((v10 & 1) == 0 || (mlir::anec::OpIDMap::addOpID(a1[12], v6, OpID) & 1) == 0)
        {
          break;
        }

        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    __p = operator new(0x28uLL);
    v29 = xmmword_1E09828E0;
    strcpy(__p, "failed: can not retrieve source op ids");
    mlir::logMatchFailure(&__p, *(a2 + 24), a3);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
LABEL_9:
    if (v38)
    {
      v11 = v37;
      v12 = &v37[v38];
      do
      {
        v13 = *v11;
        v14 = *(*v11 + 2);
        if (v14 && mlir::Block::getParent(v14))
        {
          v15 = *(v13 + 9);
          if (v15)
          {
            v16 = v13 - 16;
          }

          else
          {
            v16 = 0;
          }

          if (v15)
          {
            v17 = 0;
            while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17))
            {
              if (v15 == ++v17)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
LABEL_11:
            (*(*a3 + 16))(a3, v13);
          }
        }

        ++v11;
      }

      while (v11 != v12);
    }
  }

LABEL_26:
  llvm::deallocate_buffer(v24, (16 * v26));
}

unint64_t *OUTLINED_FUNCTION_5_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = v16;

  return mlir::ValueRange::ValueRange(&a14, &a16, 1uLL);
}

unint64_t OUTLINED_FUNCTION_6_14@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, double a3@<D0>, int32x4_t a4@<Q1>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 56) = a2;
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(v10 - 72) = v13;
  *(v10 - 64) = v12;

  return mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(v9, 0, v12, a3, a4);
}

void OUTLINED_FUNCTION_8_13(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v9, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_9_13@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = 0;
  a7 = a1;

  return mlir::Value::getDefiningOp(&a7);
}

BOOL OUTLINED_FUNCTION_13_16(uint64_t a1, AttributeStorage *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, ...)
{
  va_start(va, a10);

  return mlir::getPositivePromotedAxes(a10, a2, va, 0, 0);
}

uint64_t OUTLINED_FUNCTION_14_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a17 = a1;
  a18 = 0;

  return mlir::ValueRange::dereference_iterator(&a17, 0);
}

uint64_t OUTLINED_FUNCTION_18_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, uint64_t a15)
{

  return mlir::ConversionPatternRewriter::replaceOp(v15, v16, a14, a15);
}

uint64_t OUTLINED_FUNCTION_19_10(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, double a26)
{
  a26 = a1;

  return mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&a21, 1u);
}

void OUTLINED_FUNCTION_20_11(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v1 + 128, v1 + 144, a1 + 1, 8);
}

void OUTLINED_FUNCTION_21_10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a1 = a4;
  *(a1 + 32) = 259;

  mlir::emitError(a3, a2, v4);
}

uint64_t OUTLINED_FUNCTION_32_9()
{
  v2 = *v0 + 8;

  return mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v2);
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return mlir::CallableOpInterface::getArgAttrsAttr(va);
}

uint64_t OUTLINED_FUNCTION_34_10()
{

  return mlir::ValueRange::dereference_iterator((v0 - 72), 0);
}

uint64_t OUTLINED_FUNCTION_35_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a14 = v15;
  a15 = a1;

  return mlir::CallableOpInterface::getArgAttrsAttr(&a14);
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(va, a1);
}

uint64_t OUTLINED_FUNCTION_37_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(va, 0);
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = v12;
  a12 = a1;

  return mlir::CallableOpInterface::getArgAttrsAttr(&a11);
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (!a12)
  {
    a11 = 0;
  }
}

uint64_t OUTLINED_FUNCTION_42_6(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v4 = va_arg(va1, void);

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v1, va, va1);
}

void mlir::ANECPlacementAnalysis::_visitOperation(mlir::ANECPlacementAnalysis *this, mlir::Operation *a2)
{
  if (a2)
  {
    v4 = *(*(a2 + 6) + 16);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
    v6 = v4 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id ? a2 : 0;
    *&v42 = v6;
    if (v5 && mlir::placement::RegionCall::getRegionType(&v42) == 1)
    {
      v7 = *(this + 2);
      if (v7 >= *(this + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(this, this + 16, v7 + 1, 8);
        LODWORD(v7) = *(this + 2);
      }

      *(*this + 8 * v7) = a2;
      ++*(this + 2);
    }
  }

  v8 = *(a2 + 6);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v42 = *(v8 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v42);
  }

  else
  {
    Values = *(v8 + 24);
  }

  if (*(Values + 16) != 3)
  {
    return;
  }

  v10 = *(Values + 8);
  v11 = *v10;
  v12 = *(v10 + 2);
  if (v11 != 28781 || v12 != 115)
  {
    return;
  }

  v14 = *(a2 + 6);
  v15 = *(v14 + 16);
  v16 = v15 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
  if (v16 || v15 == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
  {
    return;
  }

  *&v42 = *(v14 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v42);
  v20 = *(this + 8);
  *&v42 = AttrData;
  *(&v42 + 1) = v19;
  v21 = *(this + 20);
  if (!v21)
  {
    v34 = 0;
    v29 = 0;
    goto LABEL_43;
  }

  v22 = AttrData;
  v23 = v19;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(AttrData, v19);
  v25 = 0;
  v26 = (v21 - 1);
  for (i = 1; ; ++i)
  {
    v28 = HashValue & v26;
    v29 = (v20 + 80 * (HashValue & v26));
    v30 = *v29;
    if (*v29 == -2)
    {
      if (v22 == -2)
      {
        goto LABEL_48;
      }

      goto LABEL_36;
    }

    if (v30 == -1)
    {
      break;
    }

    if (v23 == v29[1])
    {
      if (!v23)
      {
        goto LABEL_48;
      }

      v41 = v20;
      v31 = v26;
      v40 = HashValue & v26;
      v32 = memcmp(v22, *v29, v23);
      v28 = v40;
      v26 = v31;
      v20 = v41;
      if (!v32)
      {
        goto LABEL_48;
      }
    }

LABEL_36:
    if (v25)
    {
      v33 = 0;
    }

    else
    {
      v33 = v30 + 2 == 0;
    }

    if (v33)
    {
      v25 = v29;
    }

    HashValue = i + v28;
  }

  if (v22 != -1)
  {
    if (v25)
    {
      v29 = v25;
    }

    v34 = *(this + 20);
LABEL_43:
    v43 = v29;
    v35 = *(this + 18);
    if (4 * v35 + 4 >= 3 * v34)
    {
      v34 *= 2;
    }

    else if (v34 + ~v35 - *(this + 19) > v34 >> 3)
    {
      goto LABEL_45;
    }

    llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::grow(this + 64, v34);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<llvm::StringRef>(this + 8, &v42, &v43);
    v35 = *(this + 18);
    v29 = v43;
LABEL_45:
    *(this + 18) = v35 + 1;
    if (*v29 != -1)
    {
      --*(this + 19);
    }

    *v29 = v42;
    v29[2] = (v29 + 4);
    v29[3] = 0x600000000;
  }

LABEL_48:
  v36 = *(v29 + 6);
  if (v36 >= *(v29 + 7))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v29 + 2), (v29 + 4), v36 + 1, 8);
    LODWORD(v36) = *(v29 + 6);
  }

  *&v29[2][8 * v36] = a2;
  ++*(v29 + 6);
  ++*(this + 11);
  v37 = *(*(a2 + 6) + 16);
  if (v37 == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    ++*(this + 12);
  }
}

double mlir::ANECPlacementAnalysis::printReport(mlir::ANECPlacementAnalysis *this)
{
  v2 = *(this + 11);
  v3 = *(this + 12);
  v4 = llvm::dbgs(this);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 > 0x1CuLL)
  {
    qmemcpy(v5, "============================\n", 29);
    *(v4 + 4) += 29;
  }

  else
  {
    v4 = llvm::raw_ostream::write(v4, "============================\n", 0x1DuLL);
  }

  v6 = llvm::dbgs(v4);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 0x16uLL)
  {
    v8 = llvm::raw_ostream::write(v6, "ANEC Placement Report:\n", 0x17uLL);
    v9 = llvm::dbgs(v8);
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = *(v9 + 4);
    if (*(v9 + 3) - v12 <= 0x26uLL)
    {
      v9 = llvm::raw_ostream::write(v9, "All MPS operations were placed on ANE.\n", 0x27uLL);
      goto LABEL_21;
    }

    qmemcpy(v12, "All MPS operations were placed on ANE.\n", 39);
    v15 = *(v9 + 4) + 39;
    goto LABEL_20;
  }

  qmemcpy(v7, "ANEC Placement Report:\n", 23);
  *(v6 + 4) += 23;
  v9 = llvm::dbgs(v6);
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = llvm::raw_ostream::operator<<(v9, v2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 0x2AuLL)
  {
    qmemcpy(v11, " MPS operations couldn't be placed on ANE.\n", 43);
    *(v10 + 4) += 43;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, " MPS operations couldn't be placed on ANE.\n", 0x2BuLL);
  }

  v9 = llvm::dbgs(v10);
  if (v2 == v3)
  {
    v13 = *(v9 + 4);
    if (*(v9 + 3) - v13 <= 0x29uLL)
    {
      v9 = llvm::raw_ostream::write(v9, "All unplaced operations are typechangers.\n", 0x2AuLL);
      goto LABEL_21;
    }

    qmemcpy(v13, "All unplaced operations are typechangers.\n", 42);
    v15 = *(v9 + 4) + 42;
  }

  else
  {
    v9 = llvm::raw_ostream::operator<<(v9, v2 - v3);
    v14 = *(v9 + 4);
    if (*(v9 + 3) - v14 <= 0x43uLL)
    {
      v9 = llvm::raw_ostream::write(v9, " MPS operations (excluding TypeChangers) couldn't be placed on ANE.\n", 0x44uLL);
      goto LABEL_21;
    }

    qmemcpy(v14, " MPS operations (excluding TypeChangers) couldn't be placed on ANE.\n", 68);
    v15 = *(v9 + 4) + 68;
  }

LABEL_20:
  *(v9 + 4) = v15;
LABEL_21:
  if (!*(this + 18))
  {
    goto LABEL_57;
  }

  v9 = llvm::dbgs(v9);
  v16 = *(v9 + 4);
  if (*(v9 + 3) - v16 > 0x14uLL)
  {
    qmemcpy(v16, "Unplaced operations:\n", 21);
    *(v9 + 4) += 21;
    if (!*(this + 18))
    {
      goto LABEL_57;
    }
  }

  else
  {
    v9 = llvm::raw_ostream::write(v9, "Unplaced operations:\n", 0x15uLL);
    if (!*(this + 18))
    {
      goto LABEL_57;
    }
  }

  v17 = *(this + 20);
  if (v17)
  {
    v18 = 80 * v17;
    v19 = *(this + 8);
    while (*v19 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v19 += 80;
      v18 -= 80;
      if (!v18)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v19 = *(this + 8);
  }

  v20 = *(this + 8) + 80 * v17;
  while (v19 != v20)
  {
    v21 = llvm::dbgs(v9);
    v22 = *v19;
    v23 = *(v19 + 8);
    v24 = *(v21 + 4);
    if (v23 <= *(v21 + 3) - v24)
    {
      if (v23)
      {
        v25 = v21;
        v26 = *(v19 + 8);
        memcpy(*(v21 + 4), v22, v23);
        v21 = v25;
        v24 = (*(v25 + 4) + v26);
        *(v25 + 4) = v24;
      }
    }

    else
    {
      v21 = llvm::raw_ostream::write(v21, v22, v23);
      v24 = *(v21 + 4);
    }

    if (*(v21 + 3) - v24 > 1uLL)
    {
      *v24 = 10272;
      *(v21 + 4) += 2;
    }

    else
    {
      v21 = llvm::raw_ostream::write(v21, " (", 2uLL);
    }

    v27 = llvm::raw_ostream::operator<<(v21, *(v19 + 24));
    v28 = *(v27 + 4);
    if ((*(v27 + 3) - v28) > 2)
    {
      *(v28 + 2) = 10;
      *v28 = 14889;
      *(v27 + 4) += 3;
      v29 = *(v19 + 24);
      if (v29)
      {
LABEL_46:
        v30 = *(v19 + 16);
        v31 = 8 * v29;
        do
        {
          v32 = *v30;
          v33 = llvm::dbgs(v27);
          mlir::OpPrintingFlags::OpPrintingFlags(v55);
          v34 = mlir::OpPrintingFlags::useLocalScope(v55);
          v27 = mlir::Operation::print(v32, v33, v34);
          v35 = *(v33 + 4);
          if (*(v33 + 3) == v35)
          {
            v27 = llvm::raw_ostream::write(v33, "\n", 1uLL);
          }

          else
          {
            *v35 = 10;
            ++*(v33 + 4);
          }

          ++v30;
          v31 -= 8;
        }

        while (v31);
      }
    }

    else
    {
      v27 = llvm::raw_ostream::write(v27, "):\n", 3uLL);
      v29 = *(v19 + 24);
      if (v29)
      {
        goto LABEL_46;
      }
    }

    v9 = llvm::dbgs(v27);
    v36 = *(v9 + 4);
    if (*(v9 + 3) == v36)
    {
      v9 = llvm::raw_ostream::write(v9, "\n", 1uLL);
    }

    else
    {
      *v36 = 10;
      ++*(v9 + 4);
    }

    do
    {
      v19 += 80;
    }

    while (v19 != v20 && *v19 >= 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_57:
  v37 = *(this + 2);
  v38 = llvm::dbgs(v9);
  if (v37 == 1)
  {
    v39 = *(v38 + 4);
    if (*(v38 + 3) - v39 <= 0x2AuLL)
    {
      v40 = "Found exactly one ANERegionCall operation.\n";
      goto LABEL_63;
    }

    v42 = "Found exactly one ANERegionCall operation.\n";
    goto LABEL_68;
  }

  if (!v37)
  {
    v39 = *(v38 + 4);
    if (*(v38 + 3) - v39 <= 0x2AuLL)
    {
      v40 = "Couldn't find any ANERegionCall operation.\n";
LABEL_63:
      v38 = llvm::raw_ostream::write(v38, v40, 0x2BuLL);
      goto LABEL_71;
    }

    v42 = "Couldn't find any ANERegionCall operation.\n";
LABEL_68:
    v43 = *(v42 + 1);
    *v39 = *v42;
    v39[1] = v43;
    *(v39 + 27) = *(v42 + 27);
    v44 = *(v38 + 4) + 43;
    goto LABEL_70;
  }

  v38 = llvm::raw_ostream::operator<<(v38, *(this + 2));
  v41 = *(v38 + 4);
  if (*(v38 + 3) - v41 <= 0x20uLL)
  {
    v38 = llvm::raw_ostream::write(v38, " ANERegionCall operations found.\n", 0x21uLL);
    goto LABEL_71;
  }

  qmemcpy(v41, " ANERegionCall operations found.\n", 33);
  v44 = *(v38 + 4) + 33;
LABEL_70:
  *(v38 + 4) = v44;
LABEL_71:
  v45 = *(this + 2);
  if (v45)
  {
    v46 = *this;
    v47 = 8 * v45;
    do
    {
      v48 = *v46;
      v49 = llvm::dbgs(v38);
      mlir::OpPrintingFlags::OpPrintingFlags(v55);
      v50 = mlir::OpPrintingFlags::useLocalScope(v55);
      v38 = mlir::Operation::print(v48, v49, v50);
      v51 = *(v49 + 4);
      if (*(v49 + 3) == v51)
      {
        v38 = llvm::raw_ostream::write(v49, "\n", 1uLL);
      }

      else
      {
        *v51 = 10;
        ++*(v49 + 4);
      }

      ++v46;
      v47 -= 8;
    }

    while (v47);
  }

  v52 = llvm::dbgs(v38);
  v53 = v52[4];
  if (v52[3] - v53 > 0x1DuLL)
  {
    qmemcpy(v53, "============================\n\n", 30);
    result = *"==============\n\n";
    v52[4] += 30;
  }

  else
  {
    llvm::raw_ostream::write(v52, "============================\n\n", 0x1EuLL);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v14 = 0;
    result = 0;
    goto LABEL_18;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = 0;
  v9 = v4 - 1;
  v10 = *a2;
  v11 = *(a2 + 8);
  for (i = 1; ; ++i)
  {
    v13 = HashValue & v9;
    v14 = (v5 + 80 * (HashValue & v9));
    v15 = *v14;
    if (*v14 == -2)
    {
      if (v10 == -2)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (v15 == -1)
    {
      break;
    }

    if (v11 == v14[1] && (!v11 || !memcmp(v10, *v14, v11)))
    {
LABEL_16:
      result = 1;
      goto LABEL_18;
    }

LABEL_10:
    if (v8)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 2 == 0;
    }

    if (v16)
    {
      v8 = v14;
    }

    HashValue = i + v13;
  }

  if (v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = (v5 + 80 * v13);
  }

  if (v10 == -1)
  {
    result = 1;
  }

  else
  {
    v14 = v18;
    result = 0;
  }

LABEL_18:
  *a3 = v14;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(80 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 80 * v3;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::moveFromOldBuckets(a1, v4, v4 + v10);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 80 * v11 - 80;
    if (v12 < 0x50)
    {
      v13 = result;
LABEL_14:
      v17 = &result[5 * v11];
      do
      {
        *v13 = xmmword_1E096FB70;
        v13 += 5;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x50 + 1;
    v13 = &result[5 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = xmmword_1E096FB70;
      v15[5] = xmmword_1E096FB70;
      v15 += 10;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}