uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v6 = *(a3 + 64);
  v20[0] = *(a3 + 56);
  v20[1] = v6;
  v18 = v7;
  if (v7)
  {
    v8 = *(a2 + 24);
    __p = mlir::ValueRange::dereference_iterator(v20, 0);
    v9 = mlir::OpBuilder::create<mlir::anec::ReduceMax,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), v8, &__p, &v17);
    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v19))
    {
      if (*(v19 + 36))
      {
        v10 = v19 - 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v12 = 0;
      }
    }

    __p = (v9 - 16);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a4, v19, &__p, 1);
  }

  else
  {
    __p = operator new(0x20uLL);
    v16 = xmmword_1E097BD70;
    strcpy(__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

unint64_t mlir::anonymous namespace::convertAxes(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v35[0] = a1;
  v35[1] = a2;
  v5 = (*(*(*(a3 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  *&v34[0] = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v8 = v7;
  v32 = v7;
  if (a2 <= 1)
  {
    __p = v34 + 8;
    *&v34[0] = 0x600000000;
    if (!v7)
    {
      goto LABEL_23;
    }

    if (v7 < 7)
    {
      v9 = 0;
      v10 = (v34 + 8);
      v11 = v7;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v34 + 8, v7, 8);
      v9 = LODWORD(v34[0]);
      v10 = __p;
      v11 = v8 - LODWORD(v34[0]);
      if (v8 == LODWORD(v34[0]))
      {
LABEL_16:
        LODWORD(v34[0]) = v8;
        if (!v8)
        {
          goto LABEL_23;
        }

        v16 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v16 >= 3)
        {
          v19 = v16 + 1;
          v17 = (v16 + 1) & 0x3FFFFFFFFFFFFFFCLL;
          v18 = &v10->i8[8 * v17];
          v20 = xmmword_1E09700F0;
          v21 = v10 + 1;
          v22 = vdupq_n_s64(2uLL);
          v23 = vdupq_n_s64(4uLL);
          v24 = v17;
          do
          {
            v21[-1] = v20;
            *v21 = vaddq_s64(v20, v22);
            v20 = vaddq_s64(v20, v23);
            v21 += 2;
            v24 -= 4;
          }

          while (v24);
          if (v19 == v17)
          {
LABEL_23:
            Context = mlir::Attribute::getContext((a3 + 24));
            v26 = mlir::IntegerType::get(Context, 64, 2u);
            v27 = mlir::RankedTensorType::get(&v32, 1, v26, 0);
            if (v27)
            {
              v28 = v27;
              v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
              v27 = v28;
            }

            else
            {
              v29 = 0;
            }

            SortedUniquePromotedPositiveAxesAttr = mlir::DenseElementsAttr::getFromRawBuffer(v27, v29, __p, 8 * LODWORD(v34[0]), 8, 1, 0);
            v15 = SortedUniquePromotedPositiveAxesAttr & 0xFFFFFFFFFFFFFF00;
            if (__p != v34 + 8)
            {
              v30 = SortedUniquePromotedPositiveAxesAttr;
              free(__p);
              LOBYTE(SortedUniquePromotedPositiveAxesAttr) = v30;
            }

            return v15 | SortedUniquePromotedPositiveAxesAttr;
          }
        }

        else
        {
          v17 = 0;
          v18 = v10;
        }

        do
        {
          *v18 = v17;
          v18 += 8;
          ++v17;
        }

        while (v18 != v10 + 8 * v8);
        goto LABEL_23;
      }
    }

    bzero(v10 + 8 * v9, 8 * v11);
    goto LABEL_16;
  }

  v12 = mlir::ValueRange::dereference_iterator(v35, 1);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v12, v8, *(a3 + 24), 1);
  if (v14)
  {
    v15 = SortedUniquePromotedPositiveAxesAttr & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    __p = operator new(0x20uLL);
    v34[0] = xmmword_1E097BD70;
    strcpy(__p, "failed to convert operand axes");
    mlir::logMatchFailure(&__p, *(a3 + 24), 0);
    if (SHIBYTE(v34[0]) < 0)
    {
      operator delete(__p);
    }

    LOBYTE(SortedUniquePromotedPositiveAxesAttr) = 0;
    v15 = 0;
  }

  return v15 | SortedUniquePromotedPositiveAxesAttr;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ReduceMax,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ReduceMax,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ReduceMax::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *__p)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionMeanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v6 = *(a3 + 56);
  v20[0] = *(a3 + 48);
  v20[1] = v6;
  v18 = v7;
  if (v7)
  {
    v8 = *(a2 + 24);
    __p = mlir::ValueRange::dereference_iterator(v20, 0);
    v9 = mlir::OpBuilder::create<mlir::anec::ReduceAvg,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), v8, &__p, &v17);
    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v19))
    {
      if (*(v19 + 36))
      {
        v10 = v19 - 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v12 = 0;
      }
    }

    __p = (v9 - 16);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a4, v19, &__p, 1);
  }

  else
  {
    __p = operator new(0x20uLL);
    v16 = xmmword_1E097BD70;
    strcpy(__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ReduceAvg,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ReduceAvg,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ReduceAvg::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMinOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v6 = *(a3 + 64);
  v20[0] = *(a3 + 56);
  v20[1] = v6;
  v18 = v7;
  if (v7)
  {
    v8 = *(a2 + 24);
    __p = mlir::ValueRange::dereference_iterator(v20, 0);
    v9 = mlir::OpBuilder::create<mlir::anec::ReduceMin,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), v8, &__p, &v17);
    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v19))
    {
      if (*(v19 + 36))
      {
        v10 = v19 - 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v12 = 0;
      }
    }

    __p = (v9 - 16);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a4, v19, &__p, 1);
  }

  else
  {
    __p = operator new(0x20uLL);
    v16 = xmmword_1E097BD70;
    strcpy(__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ReduceMin,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ReduceMin,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ReduceMin::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionSumOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionSumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionSumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v6 = *(a3 + 56);
  v20[0] = *(a3 + 48);
  v20[1] = v6;
  v18 = v7;
  if (v7)
  {
    v8 = *(a2 + 24);
    __p = mlir::ValueRange::dereference_iterator(v20, 0);
    v9 = mlir::OpBuilder::create<mlir::anec::ReduceSum,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), v8, &__p, &v17);
    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v19))
    {
      if (*(v19 + 36))
      {
        v10 = v19 - 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v12 = 0;
      }
    }

    __p = (v9 - 16);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a4, v19, &__p, 1);
  }

  else
  {
    __p = operator new(0x20uLL);
    v16 = xmmword_1E097BD70;
    strcpy(__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ReduceSum,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ReduceSum,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ReduceSum::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v95[2] = *MEMORY[0x1E69E9840];
  v82 = a2;
  v6 = *(a3 + 64);
  v95[0] = *(a3 + 56);
  v95[1] = v6;
  if ((v8 & 1) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E097BD70;
    strcpy(*__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    return matched;
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v82))
  {
    *__p = *(v82[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (!AttrData)
    {
      memset(__dst, 0, 24);
      goto LABEL_31;
    }

    v16 = v15;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_105;
    }

    v17 = AttrData;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v15 | 7) + 1;
      }

      v18 = operator new(v35);
      *&__dst[8] = v16;
      *&__dst[16] = v35 | 0x8000000000000000;
      *__dst = v18;
    }

    else
    {
      __dst[23] = v15;
      v18 = __dst;
      if (!v15)
      {
        goto LABEL_30;
      }
    }

    memmove(v18, v17, v16);
LABEL_30:
    v18[v16] = 0;
LABEL_31:
    v36 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v37 = v36->__r_.__value_.__r.__words[2];
    *&v94.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
    v94.__r_.__value_.__r.__words[2] = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v94, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v39 = v38->__r_.__value_.__r.__words[2];
    *__p = *&v38->__r_.__value_.__l.__data_;
    *&__p[16] = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v82[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_37:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v94.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_37;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v82, 0);
  v11 = (*(*(v82[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v94.__r_.__value_.__r.__words[0] = &v94.__r_.__value_.__r.__words[2];
  v94.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v19 = 0;
  }

  mlir::getIntValues<long long>(v9, v19, &v94, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v90 = v92;
  memset_pattern16(v92, &unk_1E096FAE0, 0x18uLL);
  v91 = 0x600000003;
  v87 = v89;
  memset_pattern16(v89, &unk_1E096FAE0, 0x18uLL);
  v88 = 0x600000003;
  v81[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v81[1] = v20;
  mlir::CallableOpInterface::getArgAttrsAttr(v81);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v21);
  if ((v23 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_105;
  }

  if (!LODWORD(v94.__r_.__value_.__r.__words[1]))
  {
LABEL_23:
    *__p = &__p[16];
    *&__p[8] = 0x400000000;
    v86 = 4;
    v83.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v30 = mlir::RankedTensorType::get(&v83, 1, IntegerType, 0);
    v83.__r_.__value_.__r.__words[0] = 6;
    v31 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v32 = mlir::RankedTensorType::get(&v83, 1, v31, 0);
    v83.__r_.__value_.__r.__words[0] = "ksize";
    v84 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v83);
    if (v30)
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v34 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v34, v87, 8 * v88, 8, 1, 0);
    mlir::NamedAttrList::set(__p, StringAttr, v40);
    v83.__r_.__value_.__r.__words[0] = "stride";
    v84 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v83);
    if (v30)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v42, v90, 8 * v91, 8, 1, 0);
    mlir::NamedAttrList::set(__p, v41, v43);
    v83.__r_.__value_.__r.__words[0] = "padding";
    v84 = 259;
    v44 = mlir::Builder::getStringAttr((a4 + 8), &v83);
    if (v32)
    {
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    else
    {
      v45 = 0;
    }

    v46 = mlir::DenseElementsAttr::getFromRawBuffer(v32, v45, *__dst, 8 * *&__dst[8], 8, 1, 0);
    mlir::NamedAttrList::set(__p, v44, v46);
    v83.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(v95, 0);
    v80.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v82[3], &v83, __p) - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v82, &v80, 1);
    if (*__p != &__p[16])
    {
      free(*__p);
    }

    matched = 1;
    goto LABEL_48;
  }

  v24 = IndexFromDim;
  v25 = v94.__r_.__value_.__r.__words[0];
  v26 = 8 * LODWORD(v94.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v27 = *v25;
    if (*v25 == v24)
    {
      std::to_string(&v78, v24);
      v48 = std::string::insert(&v78, 0, "MaxPool/AveragePool for axes:");
      v49 = v48->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      v50 = std::string::append(&v79, "reduced from Op ");
      v51 = v50->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v50->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      *__p = *(v82[6] + 8);
      v52 = mlir::OpaqueAttr::getAttrData(__p);
      if (!v52)
      {
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v75 = 0;
        v76 = 0;
        v77 = 0;
        goto LABEL_75;
      }

      v54 = v53;
      if (v53 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_105;
      }

      v55 = v52;
      if (v53 >= 0x17)
      {
        if ((v53 | 7) == 0x17)
        {
          v65 = 25;
        }

        else
        {
          v65 = (v53 | 7) + 1;
        }

        v56 = operator new(v65);
        v76 = v54;
        v77 = v65 | 0x8000000000000000;
        v75 = v56;
      }

      else
      {
        HIBYTE(v77) = v53;
        v56 = &v75;
        if (!v53)
        {
          goto LABEL_74;
        }
      }

      memmove(v56, v55, v54);
LABEL_74:
      *(v56 + v54) = 0;
      v64 = HIBYTE(v77);
      v63 = v75;
      v62 = v76;
LABEL_75:
      if ((v64 & 0x80u) == 0)
      {
        v66 = &v75;
      }

      else
      {
        v66 = v63;
      }

      if ((v64 & 0x80u) == 0)
      {
        v67 = v64;
      }

      else
      {
        v67 = v62;
      }

      v68 = std::string::append(&v80, v66, v67);
      v69 = v68->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      v70 = std::string::append(&v83, "is not supported for A13 and below");
      v71 = v70->__r_.__value_.__r.__words[2];
      *__p = *&v70->__r_.__value_.__l.__data_;
      *&__p[16] = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v82[3], a4);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_83:
          if ((SHIBYTE(v77) & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_90;
        }
      }

      else if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      operator delete(v83.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77) & 0x80000000) == 0)
      {
LABEL_84:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_91;
      }

LABEL_90:
      operator delete(v75);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_85:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_92;
      }

LABEL_91:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_86:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

LABEL_93:
        operator delete(v78.__r_.__value_.__l.__data_);
        goto LABEL_48;
      }

LABEL_92:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_93;
    }

    if (v27 <= 1)
    {
      break;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
    *(v87 + v27 - 2) = *(ArgAttrsAttr + 8 * v27);
    ++v25;
    v26 -= 8;
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  *__p = *(v82[6] + 8);
  v57 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v57)
  {
    memset(&v83, 0, sizeof(v83));
    goto LABEL_100;
  }

  v59 = v58;
  if (v58 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_105:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v60 = v57;
  if (v58 >= 0x17)
  {
    if ((v58 | 7) == 0x17)
    {
      v72 = 25;
    }

    else
    {
      v72 = (v58 | 7) + 1;
    }

    v61 = operator new(v72);
    v83.__r_.__value_.__l.__size_ = v59;
    v83.__r_.__value_.__r.__words[2] = v72 | 0x8000000000000000;
    v83.__r_.__value_.__r.__words[0] = v61;
    goto LABEL_98;
  }

  *(&v83.__r_.__value_.__s + 23) = v58;
  v61 = &v83;
  if (v58)
  {
LABEL_98:
    memmove(v61, v60, v59);
  }

  *(v61 + v59) = 0;
LABEL_100:
  v73 = std::string::insert(&v83, 0, "Axis value is incorrect for Op ");
  v74 = v73->__r_.__value_.__r.__words[2];
  *__p = *&v73->__r_.__value_.__l.__data_;
  *&__p[16] = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v82[3], a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v87 != v89)
  {
    free(v87);
  }

  if (v90 != v92)
  {
    free(v90);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v94.__r_.__value_.__l.__data_ != &v94.__r_.__value_.__r.__words[2])
  {
    free(v94.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v97[2] = *MEMORY[0x1E69E9840];
  v84 = a2;
  v6 = *(a3 + 56);
  v97[0] = *(a3 + 48);
  v97[1] = v6;
  if ((v8 & 1) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E097BD70;
    strcpy(*__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    return matched;
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v84))
  {
    *__p = *(v84[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (!AttrData)
    {
      memset(__dst, 0, 24);
      goto LABEL_31;
    }

    v16 = v15;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_105;
    }

    v17 = AttrData;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v15 | 7) + 1;
      }

      v18 = operator new(v35);
      *&__dst[8] = v16;
      *&__dst[16] = v35 | 0x8000000000000000;
      *__dst = v18;
    }

    else
    {
      __dst[23] = v15;
      v18 = __dst;
      if (!v15)
      {
        goto LABEL_30;
      }
    }

    memmove(v18, v17, v16);
LABEL_30:
    v18[v16] = 0;
LABEL_31:
    v36 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v37 = v36->__r_.__value_.__r.__words[2];
    *&v96.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
    v96.__r_.__value_.__r.__words[2] = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v96, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v39 = v38->__r_.__value_.__r.__words[2];
    *__p = *&v38->__r_.__value_.__l.__data_;
    *&__p[16] = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v84[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_37:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v96.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_37;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v84, 0);
  v11 = (*(*(v84[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v96.__r_.__value_.__r.__words[0] = &v96.__r_.__value_.__r.__words[2];
  v96.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v19 = 0;
  }

  mlir::getIntValues<long long>(v9, v19, &v96, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v92 = v94;
  memset_pattern16(v94, &unk_1E096FAE0, 0x18uLL);
  v93 = 0x600000003;
  v89 = v91;
  memset_pattern16(v91, &unk_1E096FAE0, 0x18uLL);
  v90 = 0x600000003;
  v83[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v83[1] = v20;
  mlir::CallableOpInterface::getArgAttrsAttr(v83);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v21);
  if ((v23 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_105;
  }

  if (!LODWORD(v96.__r_.__value_.__r.__words[1]))
  {
LABEL_23:
    *__p = &__p[16];
    *&__p[8] = 0x400000000;
    v88 = 4;
    v85.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v30 = mlir::RankedTensorType::get(&v85, 1, IntegerType, 0);
    v85.__r_.__value_.__r.__words[0] = 6;
    v31 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v32 = mlir::RankedTensorType::get(&v85, 1, v31, 0);
    v85.__r_.__value_.__r.__words[0] = "ksize";
    v86 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v85);
    if (v30)
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v34 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v34, v89, 8 * v90, 8, 1, 0);
    mlir::NamedAttrList::set(__p, StringAttr, v40);
    v85.__r_.__value_.__r.__words[0] = "stride";
    v86 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v85);
    if (v30)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v42, v92, 8 * v93, 8, 1, 0);
    mlir::NamedAttrList::set(__p, v41, v43);
    v85.__r_.__value_.__r.__words[0] = "padding";
    v86 = 259;
    v44 = mlir::Builder::getStringAttr((a4 + 8), &v85);
    if (v32)
    {
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    else
    {
      v45 = 0;
    }

    v46 = mlir::DenseElementsAttr::getFromRawBuffer(v32, v45, *__dst, 8 * *&__dst[8], 8, 1, 0);
    mlir::NamedAttrList::set(__p, v44, v46);
    v85.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(v97, 0);
    UnitAttr = mlir::Builder::getUnitAttr((a4 + 8), v47);
    mlir::NamedAttrList::set(__p, "inc_pad", 7, UnitAttr);
    v82.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v84[3], &v85, __p) - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v84, &v82, 1);
    if (*__p != &__p[16])
    {
      free(*__p);
    }

    matched = 1;
    goto LABEL_48;
  }

  v24 = IndexFromDim;
  v25 = v96.__r_.__value_.__r.__words[0];
  v26 = 8 * LODWORD(v96.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v27 = *v25;
    if (*v25 == v24)
    {
      std::to_string(&v80, v24);
      v50 = std::string::insert(&v80, 0, "MaxPool/AveragePool for axes:");
      v51 = v50->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v50->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      v52 = std::string::append(&v81, "reduced from Op ");
      v53 = v52->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = *&v52->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      *__p = *(v84[6] + 8);
      v54 = mlir::OpaqueAttr::getAttrData(__p);
      if (!v54)
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        goto LABEL_75;
      }

      v56 = v55;
      if (v55 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_105;
      }

      v57 = v54;
      if (v55 >= 0x17)
      {
        if ((v55 | 7) == 0x17)
        {
          v67 = 25;
        }

        else
        {
          v67 = (v55 | 7) + 1;
        }

        v58 = operator new(v67);
        v78 = v56;
        v79 = v67 | 0x8000000000000000;
        v77 = v58;
      }

      else
      {
        HIBYTE(v79) = v55;
        v58 = &v77;
        if (!v55)
        {
          goto LABEL_74;
        }
      }

      memmove(v58, v57, v56);
LABEL_74:
      *(v58 + v56) = 0;
      v66 = HIBYTE(v79);
      v65 = v77;
      v64 = v78;
LABEL_75:
      if ((v66 & 0x80u) == 0)
      {
        v68 = &v77;
      }

      else
      {
        v68 = v65;
      }

      if ((v66 & 0x80u) == 0)
      {
        v69 = v66;
      }

      else
      {
        v69 = v64;
      }

      v70 = std::string::append(&v82, v68, v69);
      v71 = v70->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = *&v70->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      v72 = std::string::append(&v85, "is not supported for A13 and below");
      v73 = v72->__r_.__value_.__r.__words[2];
      *__p = *&v72->__r_.__value_.__l.__data_;
      *&__p[16] = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v84[3], a4);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_83:
          if ((SHIBYTE(v79) & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_90;
        }
      }

      else if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      operator delete(v85.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79) & 0x80000000) == 0)
      {
LABEL_84:
        if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_91;
      }

LABEL_90:
      operator delete(v77);
      if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_85:
        if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_92;
      }

LABEL_91:
      operator delete(v82.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_86:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

LABEL_93:
        operator delete(v80.__r_.__value_.__l.__data_);
        goto LABEL_48;
      }

LABEL_92:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_93;
    }

    if (v27 <= 1)
    {
      break;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v83);
    *(v89 + v27 - 2) = *(ArgAttrsAttr + 8 * v27);
    ++v25;
    v26 -= 8;
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  *__p = *(v84[6] + 8);
  v59 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v59)
  {
    memset(&v85, 0, sizeof(v85));
    goto LABEL_100;
  }

  v61 = v60;
  if (v60 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_105:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v62 = v59;
  if (v60 >= 0x17)
  {
    if ((v60 | 7) == 0x17)
    {
      v74 = 25;
    }

    else
    {
      v74 = (v60 | 7) + 1;
    }

    v63 = operator new(v74);
    v85.__r_.__value_.__l.__size_ = v61;
    v85.__r_.__value_.__r.__words[2] = v74 | 0x8000000000000000;
    v85.__r_.__value_.__r.__words[0] = v63;
    goto LABEL_98;
  }

  *(&v85.__r_.__value_.__s + 23) = v60;
  v63 = &v85;
  if (v60)
  {
LABEL_98:
    memmove(v63, v62, v61);
  }

  *(v63 + v61) = 0;
LABEL_100:
  v75 = std::string::insert(&v85, 0, "Axis value is incorrect for Op ");
  v76 = v75->__r_.__value_.__r.__words[2];
  *__p = *&v75->__r_.__value_.__l.__data_;
  *&__p[16] = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v84[3], a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v89 != v91)
  {
    free(v89);
  }

  if (v92 != v94)
  {
    free(v92);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v96.__r_.__value_.__l.__data_ != &v96.__r_.__value_.__r.__words[2])
  {
    free(v96.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v112[2] = *MEMORY[0x1E69E9840];
  v98 = a2;
  v6 = *(a3 + 64);
  v112[0] = *(a3 + 56);
  v112[1] = v6;
  if ((v8 & 1) == 0)
  {
    __p[0] = operator new(0x20uLL);
    *&__p[1] = xmmword_1E097BD70;
    strcpy(__p[0], "failed to convert operand axes");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    return matched;
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v98))
  {
    __p[0] = *(v98[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (!AttrData)
    {
      memset(__dst, 0, 24);
      goto LABEL_31;
    }

    v16 = v15;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_119;
    }

    v17 = AttrData;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v15 | 7) + 1;
      }

      v18 = operator new(v35);
      *&__dst[8] = v16;
      *&__dst[16] = v35 | 0x8000000000000000;
      *__dst = v18;
    }

    else
    {
      __dst[23] = v15;
      v18 = __dst;
      if (!v15)
      {
        goto LABEL_30;
      }
    }

    memmove(v18, v17, v16);
LABEL_30:
    v18[v16] = 0;
LABEL_31:
    v36 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v37 = v36->__r_.__value_.__r.__words[2];
    *&v111.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
    v111.__r_.__value_.__r.__words[2] = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v111, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v39 = v38->__r_.__value_.__r.__words[2];
    *__p = *&v38->__r_.__value_.__l.__data_;
    __p[2] = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v98[3], a4);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_37:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v111.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_37;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v98, 0);
  v11 = (*(*(v98[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v97[0] = v11;
  v97[1] = v12;
  v111.__r_.__value_.__r.__words[0] = &v111.__r_.__value_.__r.__words[2];
  v111.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v19 = 0;
  }

  mlir::getIntValues<long long>(v9, v19, &v111, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v107 = v109;
  memset_pattern16(v109, &unk_1E096FAE0, 0x18uLL);
  v108 = 0x600000003;
  v104 = v106;
  memset_pattern16(v106, &unk_1E096FAE0, 0x18uLL);
  v105 = 0x600000003;
  v96[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v96[1] = v20;
  mlir::CallableOpInterface::getArgAttrsAttr(v96);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v21);
  if ((v23 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_119;
  }

  if (!LODWORD(v111.__r_.__value_.__r.__words[1]))
  {
LABEL_23:
    __p[0] = &__p[2];
    __p[1] = 0x400000000;
    __p[10] = 4;
    v99.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v30 = mlir::RankedTensorType::get(&v99, 1, IntegerType, 0);
    v99.__r_.__value_.__r.__words[0] = 6;
    v31 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v32 = mlir::RankedTensorType::get(&v99, 1, v31, 0);
    v99.__r_.__value_.__r.__words[0] = "ksize";
    v100 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v99);
    if (v30)
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v34 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v34, v104, 8 * v105, 8, 1, 0);
    mlir::NamedAttrList::set(__p, StringAttr, v40);
    v99.__r_.__value_.__r.__words[0] = "stride";
    v100 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v99);
    if (v30)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v42, v107, 8 * v108, 8, 1, 0);
    mlir::NamedAttrList::set(__p, v41, v43);
    v99.__r_.__value_.__r.__words[0] = "padding";
    v100 = 259;
    v44 = mlir::Builder::getStringAttr((a4 + 8), &v99);
    if (v32)
    {
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    else
    {
      v45 = 0;
    }

    v46 = mlir::DenseElementsAttr::getFromRawBuffer(v32, v45, *__dst, 8 * *&__dst[8], 8, 1, 0);
    mlir::NamedAttrList::set(__p, v44, v46);
    v47 = mlir::ValueRange::dereference_iterator(v112, 0);
    v99.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(v97);
    if (mlir::Type::isF16(&v99) || (v103.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(v97), mlir::Type::isF32(&v103)))
    {
      v103.__r_.__value_.__r.__words[0] = 1;
      isSplat = mlir::ElementsAttr::isSplat(v97);
      v49 = mlir::RankedTensorType::get(&v103, 1, isSplat, 0);
      v50 = v49;
      if (v49)
      {
        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
      }

      else
      {
        v51 = 0;
      }

      v66 = mlir::ElementsAttr::isSplat(v97);
      v102.__r_.__value_.__r.__words[0] = mlir::FloatAttr::get(v66, -1.0);
      matched = 1;
      v99.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::get(v50, v51, &v102, 1uLL);
      v67 = v98[3];
      v102.__r_.__value_.__r.__words[0] = 1;
      v68 = mlir::ElementsAttr::isSplat(v97);
      v103.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(&v102, 1, v68, 0, 0, 0);
      v69 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a4 + 8), v67, &v103, &v99) - 16);
      v71 = v98[3];
      if (*(GOC + 36))
      {
        v72 = GOC - 16;
      }

      else
      {
        v72 = 0;
      }

      v103.__r_.__value_.__r.__words[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v72, 0);
      v73 = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v71, &v103, __p);
      v74 = v98[3];
      if (*(v73 + 36))
      {
        v75 = v73 - 16;
      }

      else
      {
        v75 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v75, 0);
      mlir::ConversionPatternRewriter::replaceOp(a4, v98, &v99, 1);
    }

    else
    {
      v99.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
      *&v99.__r_.__value_.__r.__words[1] = xmmword_1E09827C0;
      strcpy(v99.__r_.__value_.__l.__data_, "ReduceMin for non fp type is not supported for A13 and below");
      matched = mlir::logMatchFailure(&v99, v98[3], a4);
      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }
    }

    if (__p[0] != &__p[2])
    {
      free(__p[0]);
    }

    goto LABEL_109;
  }

  v24 = IndexFromDim;
  v25 = v111.__r_.__value_.__r.__words[0];
  v26 = 8 * LODWORD(v111.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v27 = *v25;
    if (*v25 == v24)
    {
      std::to_string(&v95, v24);
      v52 = std::string::insert(&v95, 0, "MaxPool/AveragePool for axes:");
      v53 = v52->__r_.__value_.__r.__words[2];
      *&v102.__r_.__value_.__l.__data_ = *&v52->__r_.__value_.__l.__data_;
      v102.__r_.__value_.__r.__words[2] = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      v54 = std::string::append(&v102, "reduced from Op ");
      v55 = v54->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = *&v54->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      __p[0] = *(v98[6] + 8);
      v56 = mlir::OpaqueAttr::getAttrData(__p);
      if (!v56)
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        goto LABEL_79;
      }

      v58 = v57;
      if (v57 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_119;
      }

      v59 = v56;
      if (v57 >= 0x17)
      {
        if ((v57 | 7) == 0x17)
        {
          v80 = 25;
        }

        else
        {
          v80 = (v57 | 7) + 1;
        }

        v60 = operator new(v80);
        v93 = v58;
        v94 = v80 | 0x8000000000000000;
        v92 = v60;
      }

      else
      {
        HIBYTE(v94) = v57;
        v60 = &v92;
        if (!v57)
        {
          goto LABEL_78;
        }
      }

      memmove(v60, v59, v58);
LABEL_78:
      *(v60 + v58) = 0;
      v79 = HIBYTE(v94);
      v78 = v92;
      v77 = v93;
LABEL_79:
      if ((v79 & 0x80u) == 0)
      {
        v81 = &v92;
      }

      else
      {
        v81 = v78;
      }

      if ((v79 & 0x80u) == 0)
      {
        v82 = v79;
      }

      else
      {
        v82 = v77;
      }

      v83 = std::string::append(&v103, v81, v82);
      v84 = v83->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v83->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v84;
      v83->__r_.__value_.__l.__size_ = 0;
      v83->__r_.__value_.__r.__words[2] = 0;
      v83->__r_.__value_.__r.__words[0] = 0;
      v85 = std::string::append(&v99, "is not supported for A13 and below");
      v86 = v85->__r_.__value_.__r.__words[2];
      *__p = *&v85->__r_.__value_.__l.__data_;
      __p[2] = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v98[3], a4);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_87:
          if ((SHIBYTE(v94) & 0x80000000) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_94;
        }
      }

      else if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_87;
      }

      operator delete(v99.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v94) & 0x80000000) == 0)
      {
LABEL_88:
        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_95;
      }

LABEL_94:
      operator delete(v92);
      if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_89:
        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_96;
      }

LABEL_95:
      operator delete(v103.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_90:
        if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_97;
      }

LABEL_96:
      operator delete(v102.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_109;
      }

LABEL_97:
      v87 = v95.__r_.__value_.__r.__words[0];
      goto LABEL_108;
    }

    if (v27 <= 1)
    {
      break;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v96);
    *(v104 + v27 - 2) = *(ArgAttrsAttr + 8 * v27);
    ++v25;
    v26 -= 8;
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  __p[0] = *(v98[6] + 8);
  v61 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v61)
  {
    memset(&v99, 0, sizeof(v99));
    goto LABEL_104;
  }

  v63 = v62;
  if (v62 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_119:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v64 = v61;
  if (v62 >= 0x17)
  {
    if ((v62 | 7) == 0x17)
    {
      v88 = 25;
    }

    else
    {
      v88 = (v62 | 7) + 1;
    }

    v65 = operator new(v88);
    v99.__r_.__value_.__l.__size_ = v63;
    v99.__r_.__value_.__r.__words[2] = v88 | 0x8000000000000000;
    v99.__r_.__value_.__r.__words[0] = v65;
    goto LABEL_102;
  }

  *(&v99.__r_.__value_.__s + 23) = v62;
  v65 = &v99;
  if (v62)
  {
LABEL_102:
    memmove(v65, v64, v63);
  }

  *(v65 + v63) = 0;
LABEL_104:
  v89 = std::string::insert(&v99, 0, "Axis value is incorrect for Op ");
  v90 = v89->__r_.__value_.__r.__words[2];
  *__p = *&v89->__r_.__value_.__l.__data_;
  __p[2] = v90;
  v89->__r_.__value_.__l.__size_ = 0;
  v89->__r_.__value_.__r.__words[2] = 0;
  v89->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v98[3], a4);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    v87 = v99.__r_.__value_.__r.__words[0];
LABEL_108:
    operator delete(v87);
  }

LABEL_109:
  if (v104 != v106)
  {
    free(v104);
  }

  if (v107 != v109)
  {
    free(v107);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v111.__r_.__value_.__l.__data_ != &v111.__r_.__value_.__r.__words[2])
  {
    free(v111.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v82 = *MEMORY[0x1E69E9840];
  v64 = a2;
  v6 = *(a3 + 56);
  v80 = *(a3 + 48);
  v81 = v6;
  if ((v8 & 1) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E097BD70;
    strcpy(*__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    return matched;
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v64))
  {
    *__p = *(*(v64 + 6) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (!AttrData)
    {
      memset(__dst, 0, 24);
      goto LABEL_33;
    }

    v16 = v15;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_74;
    }

    v17 = AttrData;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v15 | 7) + 1;
      }

      v18 = operator new(v36);
      __dst[0].__r_.__value_.__l.__size_ = v16;
      __dst[0].__r_.__value_.__r.__words[2] = v36 | 0x8000000000000000;
      __dst[0].__r_.__value_.__r.__words[0] = v18;
    }

    else
    {
      *(&__dst[0].__r_.__value_.__s + 23) = v15;
      v18 = __dst;
      if (!v15)
      {
        goto LABEL_32;
      }
    }

    memmove(v18, v17, v16);
LABEL_32:
    v18->__r_.__value_.__s.__data_[v16] = 0;
LABEL_33:
    v37 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v38 = v37->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = *&v37->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = std::string::append(&v67, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v40 = v39->__r_.__value_.__r.__words[2];
    *__p = *&v39->__r_.__value_.__l.__data_;
    *&__p[16] = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v64 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_39;
        }

        return matched;
      }
    }

    else if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    operator delete(v67.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_39:
      operator delete(__dst[0].__r_.__value_.__l.__data_);
    }

    return matched;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v64, 0);
  v11 = (*(*(*(v64 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  __dst[0].__r_.__value_.__r.__words[0] = &__dst[0].__r_.__value_.__r.__words[2];
  __dst[0].__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v19 = 0;
  }

  mlir::getIntValues<long long>(v9, v19, __dst, 1);
  v76 = v78;
  memset(v78, 0, sizeof(v78));
  v77 = 0x600000006;
  v73 = v75;
  memset_pattern16(v75, &unk_1E096FAE0, 0x18uLL);
  v74 = 0x600000003;
  v70 = v72;
  memset_pattern16(v72, &unk_1E096FAE0, 0x18uLL);
  v71 = 0x600000003;
  v63[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v63[1] = v20;
  mlir::CallableOpInterface::getArgAttrsAttr(v63);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v21);
  if (v23)
  {
    if (LODWORD(__dst[0].__r_.__value_.__r.__words[1]) == 1 && *__dst[0].__r_.__value_.__l.__data_ == IndexFromDim)
    {
      v61 = *(v64 + 3);
      v24 = *(mlir::CallableOpInterface::getArgAttrsAttr(v63) + 8 * IndexFromDim);
      isSplat = mlir::ElementsAttr::isSplat(v63);
      v67.__r_.__value_.__r.__words[0] = &v67.__r_.__value_.__r.__words[2];
      v67.__r_.__value_.__r.__words[2] = 1;
      v68 = v24;
      v69 = vdupq_n_s64(1uLL);
      v67.__r_.__value_.__l.__size_ = 0x1000000004;
      v62 = mlir::MemRefType::get(&v67.__r_.__value_.__r.__words[2], 4, isSplat, 0, 0, 0);
      Value = mlir::ArrayAttr::getValue(&v62);
      NumElements = mlir::ShapedType::getNumElements(Value, v27);
      v29 = llvm::APFloatBase::IEEEhalf(NumElements);
      v30 = llvm::APFloatBase::PPCDoubleDouble(v29);
      if (v30 == v29)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(&v65.__r_.__value_.__l.__size_, v29, 1);
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(&v65.__r_.__value_.__l.__size_, v29, 1);
      }

      *__p = &__p[16];
      *&__p[8] = 0x1000000000;
      llvm::SmallVectorImpl<llvm::APFloat>::assign(__p, NumElements, &v65);
      if (v30 == v65.__r_.__value_.__l.__size_)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v65.__r_.__value_.__r.__words[1]);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v65.__r_.__value_.__r.__words[1]);
      }

      v47 = v67.__r_.__value_.__r.__words[0];
      v48 = LODWORD(v67.__r_.__value_.__r.__words[1]);
      F16Type = mlir::Builder::getF16Type((a4 + 8), v46);
      v50 = mlir::RankedTensorType::get(v47, v48, F16Type, 0);
      v65.__r_.__value_.__r.__words[0] = mlir::createElementsAttr(v50, *__p, *&__p[8]);
      v65.__r_.__value_.__l.__size_ = v51;
      mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), v61, &v62, &v65);
      if (*(v64 + 9))
      {
        v52 = v64 - 16;
      }

      else
      {
        v52 = 0;
      }

      v53 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }
    }

    *__p = *(*(v64 + 6) + 8);
    v31 = mlir::OpaqueAttr::getAttrData(__p);
    if (!v31)
    {
      memset(&v65, 0, sizeof(v65));
      goto LABEL_47;
    }

    v33 = v32;
    if (v32 <= 0x7FFFFFFFFFFFFFF7)
    {
      v34 = v31;
      if (v32 >= 0x17)
      {
        if ((v32 | 7) == 0x17)
        {
          v41 = 25;
        }

        else
        {
          v41 = (v32 | 7) + 1;
        }

        v35 = operator new(v41);
        v65.__r_.__value_.__l.__size_ = v33;
        v65.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
        v65.__r_.__value_.__r.__words[0] = v35;
      }

      else
      {
        *(&v65.__r_.__value_.__s + 23) = v32;
        v35 = &v65;
        if (!v32)
        {
          goto LABEL_46;
        }
      }

      memmove(v35, v34, v33);
LABEL_46:
      *(v35 + v33) = 0;
LABEL_47:
      v42 = std::string::insert(&v65, 0, "ReduceSum for axes other than channel axis: ");
      v43 = v42->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v67, " is not supported for A13 and below\n");
      v45 = v44->__r_.__value_.__r.__words[2];
      *__p = *&v44->__r_.__value_.__l.__data_;
      *&__p[16] = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, *(v64 + 3), a4);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_49:
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_53;
          }

          goto LABEL_65;
        }
      }

      else if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      operator delete(v67.__r_.__value_.__l.__data_);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_53:
        operator delete(v65.__r_.__value_.__l.__data_);
      }

LABEL_65:
      if (v70 != v72)
      {
        free(v70);
      }

      if (v73 != v75)
      {
        free(v73);
      }

      if (v76 != v78)
      {
        free(v76);
      }

      if (__dst[0].__r_.__value_.__l.__data_ != &__dst[0].__r_.__value_.__r.__words[2])
      {
        free(__dst[0].__r_.__value_.__l.__data_);
      }

      return matched;
    }

LABEL_74:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v56 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::anec::Convolution,mlir::MemRefType &,mlir::Value,mlir::Value&>(v56, v57, v58, v59, v60);
}

uint64_t mlir::OpBuilder::create<mlir::anec::Convolution,mlir::MemRefType &,mlir::Value,mlir::Value&>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Convolution::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
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

void llvm::SmallVectorImpl<llvm::APFloat>::assign(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1[3] >= a2)
  {
    v6 = a1[2];
    if (v6 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = a1[2];
    }

    if (v7)
    {
      v8 = *a1 + 8;
      do
      {
        a1 = llvm::APFloat::Storage::operator=(v8, (a3 + 8));
        v8 += 32;
        --v7;
      }

      while (v7);
      v6 = v5[2];
    }

    v9 = v6 - a2;
    if (v6 >= a2)
    {
      if (v6 > a2)
      {
        v16 = *v5;
        v17 = llvm::APFloatBase::PPCDoubleDouble(a1);
        v18 = (32 * v6 + v16 - 24);
        v19 = 32 * a2 - 32 * v6;
        do
        {
          if (v17 == *v18)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v18);
          }

          v18 = (v20 - 32);
          v19 += 32;
        }

        while (v19);
      }
    }

    else
    {
      v10 = *v5;
      v11 = llvm::APFloatBase::PPCDoubleDouble(a1);
      v12 = (v10 + 32 * v6 + 8);
      do
      {
        v15 = (a3 + 8);
        if (v11 == *(a3 + 8))
        {
          v13 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, v15);
        }

        else
        {
          v13 = llvm::detail::IEEEFloat::IEEEFloat(v12, v15);
        }

        v12 = (v13 + 4);
      }

      while (!__CFADD__(v9++, 1));
    }

    v5[2] = a2;
  }

  else
  {

    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<llvm::APFloat,false>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v20);
  v8 = v7;
  if (a2)
  {
    v9 = llvm::APFloatBase::PPCDoubleDouble(v7);
    v7 = (v8 + 8);
    v10 = a2;
    do
    {
      v12 = (a3 + 8);
      if (v9 == *(a3 + 8))
      {
        v11 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v7, v12);
      }

      else
      {
        v11 = llvm::detail::IEEEFloat::IEEEFloat(v7, v12);
      }

      v7 = (v11 + 4);
      --v10;
    }

    while (v10);
  }

  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = llvm::APFloatBase::PPCDoubleDouble(v7);
    v16 = &v13[32 * v14 - 24];
    v17 = -32 * v14;
    do
    {
      if (v15 == *v16)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v16);
      }

      v16 = (v18 - 32);
      v17 += 32;
    }

    while (v17);
    v13 = *a1;
  }

  v19 = v20;
  if (v13 != v6)
  {
    free(v13);
  }

  *a1 = v8;
  *(a1 + 8) = a2;
  *(a1 + 12) = v19;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v95[2] = *MEMORY[0x1E69E9840];
  v82 = a2;
  v6 = *(a3 + 64);
  v95[0] = *(a3 + 56);
  v95[1] = v6;
  if ((v8 & 1) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E097BD70;
    strcpy(*__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    return matched;
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v82))
  {
    *__p = *(v82[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (!AttrData)
    {
      memset(__dst, 0, 24);
      goto LABEL_31;
    }

    v16 = v15;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_105;
    }

    v17 = AttrData;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v15 | 7) + 1;
      }

      v18 = operator new(v35);
      *&__dst[8] = v16;
      *&__dst[16] = v35 | 0x8000000000000000;
      *__dst = v18;
    }

    else
    {
      __dst[23] = v15;
      v18 = __dst;
      if (!v15)
      {
        goto LABEL_30;
      }
    }

    memmove(v18, v17, v16);
LABEL_30:
    v18[v16] = 0;
LABEL_31:
    v36 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v37 = v36->__r_.__value_.__r.__words[2];
    *&v94.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
    v94.__r_.__value_.__r.__words[2] = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v94, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v39 = v38->__r_.__value_.__r.__words[2];
    *__p = *&v38->__r_.__value_.__l.__data_;
    *&__p[16] = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v82[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_37:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v94.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_37;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v82, 0);
  v11 = (*(*(v82[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v94.__r_.__value_.__r.__words[0] = &v94.__r_.__value_.__r.__words[2];
  v94.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v19 = 0;
  }

  mlir::getIntValues<long long>(v9, v19, &v94, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v90 = v92;
  memset_pattern16(v92, &unk_1E096FAE0, 0x18uLL);
  v91 = 0x600000003;
  v87 = v89;
  memset_pattern16(v89, &unk_1E096FAE0, 0x18uLL);
  v88 = 0x600000003;
  v81[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v81[1] = v20;
  mlir::CallableOpInterface::getArgAttrsAttr(v81);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v21);
  if ((v23 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_105;
  }

  if (!LODWORD(v94.__r_.__value_.__r.__words[1]))
  {
LABEL_23:
    *__p = &__p[16];
    *&__p[8] = 0x400000000;
    v86 = 4;
    v83.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v30 = mlir::RankedTensorType::get(&v83, 1, IntegerType, 0);
    v83.__r_.__value_.__r.__words[0] = 6;
    v31 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v32 = mlir::RankedTensorType::get(&v83, 1, v31, 0);
    v83.__r_.__value_.__r.__words[0] = "ksize";
    v84 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v83);
    if (v30)
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v34 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v34, v87, 8 * v88, 8, 1, 0);
    mlir::NamedAttrList::set(__p, StringAttr, v40);
    v83.__r_.__value_.__r.__words[0] = "stride";
    v84 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v83);
    if (v30)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v42, v90, 8 * v91, 8, 1, 0);
    mlir::NamedAttrList::set(__p, v41, v43);
    v83.__r_.__value_.__r.__words[0] = "padding";
    v84 = 259;
    v44 = mlir::Builder::getStringAttr((a4 + 8), &v83);
    if (v32)
    {
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    else
    {
      v45 = 0;
    }

    v46 = mlir::DenseElementsAttr::getFromRawBuffer(v32, v45, *__dst, 8 * *&__dst[8], 8, 1, 0);
    mlir::NamedAttrList::set(__p, v44, v46);
    v83.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(v95, 0);
    v80.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v82[3], &v83, __p) - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v82, &v80, 1);
    if (*__p != &__p[16])
    {
      free(*__p);
    }

    matched = 1;
    goto LABEL_48;
  }

  v24 = IndexFromDim;
  v25 = v94.__r_.__value_.__r.__words[0];
  v26 = 8 * LODWORD(v94.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v27 = *v25;
    if (*v25 == v24)
    {
      std::to_string(&v78, v24);
      v48 = std::string::insert(&v78, 0, "MaxPool/AveragePool for axes:");
      v49 = v48->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      v50 = std::string::append(&v79, "reduced from Op ");
      v51 = v50->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v50->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      *__p = *(v82[6] + 8);
      v52 = mlir::OpaqueAttr::getAttrData(__p);
      if (!v52)
      {
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v75 = 0;
        v76 = 0;
        v77 = 0;
        goto LABEL_75;
      }

      v54 = v53;
      if (v53 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_105;
      }

      v55 = v52;
      if (v53 >= 0x17)
      {
        if ((v53 | 7) == 0x17)
        {
          v65 = 25;
        }

        else
        {
          v65 = (v53 | 7) + 1;
        }

        v56 = operator new(v65);
        v76 = v54;
        v77 = v65 | 0x8000000000000000;
        v75 = v56;
      }

      else
      {
        HIBYTE(v77) = v53;
        v56 = &v75;
        if (!v53)
        {
          goto LABEL_74;
        }
      }

      memmove(v56, v55, v54);
LABEL_74:
      *(v56 + v54) = 0;
      v64 = HIBYTE(v77);
      v63 = v75;
      v62 = v76;
LABEL_75:
      if ((v64 & 0x80u) == 0)
      {
        v66 = &v75;
      }

      else
      {
        v66 = v63;
      }

      if ((v64 & 0x80u) == 0)
      {
        v67 = v64;
      }

      else
      {
        v67 = v62;
      }

      v68 = std::string::append(&v80, v66, v67);
      v69 = v68->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      v70 = std::string::append(&v83, "is not supported for A13 and below");
      v71 = v70->__r_.__value_.__r.__words[2];
      *__p = *&v70->__r_.__value_.__l.__data_;
      *&__p[16] = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v82[3], a4);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_83:
          if ((SHIBYTE(v77) & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_90;
        }
      }

      else if ((SHIBYTE(v83.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      operator delete(v83.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77) & 0x80000000) == 0)
      {
LABEL_84:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_91;
      }

LABEL_90:
      operator delete(v75);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_85:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_92;
      }

LABEL_91:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_86:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

LABEL_93:
        operator delete(v78.__r_.__value_.__l.__data_);
        goto LABEL_48;
      }

LABEL_92:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_93;
    }

    if (v27 <= 1)
    {
      break;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v81);
    *(v87 + v27 - 2) = *(ArgAttrsAttr + 8 * v27);
    ++v25;
    v26 -= 8;
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  *__p = *(v82[6] + 8);
  v57 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v57)
  {
    memset(&v83, 0, sizeof(v83));
    goto LABEL_100;
  }

  v59 = v58;
  if (v58 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_105:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v60 = v57;
  if (v58 >= 0x17)
  {
    if ((v58 | 7) == 0x17)
    {
      v72 = 25;
    }

    else
    {
      v72 = (v58 | 7) + 1;
    }

    v61 = operator new(v72);
    v83.__r_.__value_.__l.__size_ = v59;
    v83.__r_.__value_.__r.__words[2] = v72 | 0x8000000000000000;
    v83.__r_.__value_.__r.__words[0] = v61;
    goto LABEL_98;
  }

  *(&v83.__r_.__value_.__s + 23) = v58;
  v61 = &v83;
  if (v58)
  {
LABEL_98:
    memmove(v61, v60, v59);
  }

  *(v61 + v59) = 0;
LABEL_100:
  v73 = std::string::insert(&v83, 0, "Axis value is incorrect for Op ");
  v74 = v73->__r_.__value_.__r.__words[2];
  *__p = *&v73->__r_.__value_.__l.__data_;
  *&__p[16] = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v82[3], a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v87 != v89)
  {
    free(v87);
  }

  if (v90 != v92)
  {
    free(v90);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v94.__r_.__value_.__l.__data_ != &v94.__r_.__value_.__r.__words[2])
  {
    free(v94.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v97[2] = *MEMORY[0x1E69E9840];
  v84 = a2;
  v6 = *(a3 + 56);
  v97[0] = *(a3 + 48);
  v97[1] = v6;
  if ((v8 & 1) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E097BD70;
    strcpy(*__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    return matched;
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v84))
  {
    *__p = *(v84[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (!AttrData)
    {
      memset(__dst, 0, 24);
      goto LABEL_31;
    }

    v16 = v15;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_105;
    }

    v17 = AttrData;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v15 | 7) + 1;
      }

      v18 = operator new(v35);
      *&__dst[8] = v16;
      *&__dst[16] = v35 | 0x8000000000000000;
      *__dst = v18;
    }

    else
    {
      __dst[23] = v15;
      v18 = __dst;
      if (!v15)
      {
        goto LABEL_30;
      }
    }

    memmove(v18, v17, v16);
LABEL_30:
    v18[v16] = 0;
LABEL_31:
    v36 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v37 = v36->__r_.__value_.__r.__words[2];
    *&v96.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
    v96.__r_.__value_.__r.__words[2] = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v96, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v39 = v38->__r_.__value_.__r.__words[2];
    *__p = *&v38->__r_.__value_.__l.__data_;
    *&__p[16] = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v84[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_37:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v96.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_37;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v84, 0);
  v11 = (*(*(v84[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v96.__r_.__value_.__r.__words[0] = &v96.__r_.__value_.__r.__words[2];
  v96.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v19 = 0;
  }

  mlir::getIntValues<long long>(v9, v19, &v96, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v92 = v94;
  memset_pattern16(v94, &unk_1E096FAE0, 0x18uLL);
  v93 = 0x600000003;
  v89 = v91;
  memset_pattern16(v91, &unk_1E096FAE0, 0x18uLL);
  v90 = 0x600000003;
  v83[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v83[1] = v20;
  mlir::CallableOpInterface::getArgAttrsAttr(v83);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v21);
  if ((v23 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_105;
  }

  if (!LODWORD(v96.__r_.__value_.__r.__words[1]))
  {
LABEL_23:
    *__p = &__p[16];
    *&__p[8] = 0x400000000;
    v88 = 4;
    v85.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v30 = mlir::RankedTensorType::get(&v85, 1, IntegerType, 0);
    v85.__r_.__value_.__r.__words[0] = 6;
    v31 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v32 = mlir::RankedTensorType::get(&v85, 1, v31, 0);
    v85.__r_.__value_.__r.__words[0] = "ksize";
    v86 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v85);
    if (v30)
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v34 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v34, v89, 8 * v90, 8, 1, 0);
    mlir::NamedAttrList::set(__p, StringAttr, v40);
    v85.__r_.__value_.__r.__words[0] = "stride";
    v86 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v85);
    if (v30)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v42, v92, 8 * v93, 8, 1, 0);
    mlir::NamedAttrList::set(__p, v41, v43);
    v85.__r_.__value_.__r.__words[0] = "padding";
    v86 = 259;
    v44 = mlir::Builder::getStringAttr((a4 + 8), &v85);
    if (v32)
    {
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    else
    {
      v45 = 0;
    }

    v46 = mlir::DenseElementsAttr::getFromRawBuffer(v32, v45, *__dst, 8 * *&__dst[8], 8, 1, 0);
    mlir::NamedAttrList::set(__p, v44, v46);
    v85.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(v97, 0);
    UnitAttr = mlir::Builder::getUnitAttr((a4 + 8), v47);
    mlir::NamedAttrList::set(__p, "inc_pad", 7, UnitAttr);
    v82.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v84[3], &v85, __p) - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v84, &v82, 1);
    if (*__p != &__p[16])
    {
      free(*__p);
    }

    matched = 1;
    goto LABEL_48;
  }

  v24 = IndexFromDim;
  v25 = v96.__r_.__value_.__r.__words[0];
  v26 = 8 * LODWORD(v96.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v27 = *v25;
    if (*v25 == v24)
    {
      std::to_string(&v80, v24);
      v50 = std::string::insert(&v80, 0, "MaxPool/AveragePool for axes:");
      v51 = v50->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v50->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      v52 = std::string::append(&v81, "reduced from Op ");
      v53 = v52->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = *&v52->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      *__p = *(v84[6] + 8);
      v54 = mlir::OpaqueAttr::getAttrData(__p);
      if (!v54)
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        goto LABEL_75;
      }

      v56 = v55;
      if (v55 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_105;
      }

      v57 = v54;
      if (v55 >= 0x17)
      {
        if ((v55 | 7) == 0x17)
        {
          v67 = 25;
        }

        else
        {
          v67 = (v55 | 7) + 1;
        }

        v58 = operator new(v67);
        v78 = v56;
        v79 = v67 | 0x8000000000000000;
        v77 = v58;
      }

      else
      {
        HIBYTE(v79) = v55;
        v58 = &v77;
        if (!v55)
        {
          goto LABEL_74;
        }
      }

      memmove(v58, v57, v56);
LABEL_74:
      *(v58 + v56) = 0;
      v66 = HIBYTE(v79);
      v65 = v77;
      v64 = v78;
LABEL_75:
      if ((v66 & 0x80u) == 0)
      {
        v68 = &v77;
      }

      else
      {
        v68 = v65;
      }

      if ((v66 & 0x80u) == 0)
      {
        v69 = v66;
      }

      else
      {
        v69 = v64;
      }

      v70 = std::string::append(&v82, v68, v69);
      v71 = v70->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = *&v70->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      v72 = std::string::append(&v85, "is not supported for A13 and below");
      v73 = v72->__r_.__value_.__r.__words[2];
      *__p = *&v72->__r_.__value_.__l.__data_;
      *&__p[16] = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v84[3], a4);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_83:
          if ((SHIBYTE(v79) & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_90;
        }
      }

      else if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      operator delete(v85.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79) & 0x80000000) == 0)
      {
LABEL_84:
        if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_91;
      }

LABEL_90:
      operator delete(v77);
      if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_85:
        if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_92;
      }

LABEL_91:
      operator delete(v82.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_86:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

LABEL_93:
        operator delete(v80.__r_.__value_.__l.__data_);
        goto LABEL_48;
      }

LABEL_92:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_93;
    }

    if (v27 <= 1)
    {
      break;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v83);
    *(v89 + v27 - 2) = *(ArgAttrsAttr + 8 * v27);
    ++v25;
    v26 -= 8;
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  *__p = *(v84[6] + 8);
  v59 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v59)
  {
    memset(&v85, 0, sizeof(v85));
    goto LABEL_100;
  }

  v61 = v60;
  if (v60 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_105:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v62 = v59;
  if (v60 >= 0x17)
  {
    if ((v60 | 7) == 0x17)
    {
      v74 = 25;
    }

    else
    {
      v74 = (v60 | 7) + 1;
    }

    v63 = operator new(v74);
    v85.__r_.__value_.__l.__size_ = v61;
    v85.__r_.__value_.__r.__words[2] = v74 | 0x8000000000000000;
    v85.__r_.__value_.__r.__words[0] = v63;
    goto LABEL_98;
  }

  *(&v85.__r_.__value_.__s + 23) = v60;
  v63 = &v85;
  if (v60)
  {
LABEL_98:
    memmove(v63, v62, v61);
  }

  *(v63 + v61) = 0;
LABEL_100:
  v75 = std::string::insert(&v85, 0, "Axis value is incorrect for Op ");
  v76 = v75->__r_.__value_.__r.__words[2];
  *__p = *&v75->__r_.__value_.__l.__data_;
  *&__p[16] = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v84[3], a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

LABEL_48:
  if (v89 != v91)
  {
    free(v89);
  }

  if (v92 != v94)
  {
    free(v92);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v96.__r_.__value_.__l.__data_ != &v96.__r_.__value_.__r.__words[2])
  {
    free(v96.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v112[2] = *MEMORY[0x1E69E9840];
  v98 = a2;
  v6 = *(a3 + 64);
  v112[0] = *(a3 + 56);
  v112[1] = v6;
  if ((v8 & 1) == 0)
  {
    __p[0] = operator new(0x20uLL);
    *&__p[1] = xmmword_1E097BD70;
    strcpy(__p[0], "failed to convert operand axes");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    return matched;
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v98))
  {
    __p[0] = *(v98[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (!AttrData)
    {
      memset(__dst, 0, 24);
      goto LABEL_31;
    }

    v16 = v15;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_119;
    }

    v17 = AttrData;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v15 | 7) + 1;
      }

      v18 = operator new(v35);
      *&__dst[8] = v16;
      *&__dst[16] = v35 | 0x8000000000000000;
      *__dst = v18;
    }

    else
    {
      __dst[23] = v15;
      v18 = __dst;
      if (!v15)
      {
        goto LABEL_30;
      }
    }

    memmove(v18, v17, v16);
LABEL_30:
    v18[v16] = 0;
LABEL_31:
    v36 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v37 = v36->__r_.__value_.__r.__words[2];
    *&v111.__r_.__value_.__l.__data_ = *&v36->__r_.__value_.__l.__data_;
    v111.__r_.__value_.__r.__words[2] = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v111, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v39 = v38->__r_.__value_.__r.__words[2];
    *__p = *&v38->__r_.__value_.__l.__data_;
    __p[2] = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v98[3], a4);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_37:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v111.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_37;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v98, 0);
  v11 = (*(*(v98[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v97[0] = v11;
  v97[1] = v12;
  v111.__r_.__value_.__r.__words[0] = &v111.__r_.__value_.__r.__words[2];
  v111.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v19 = 0;
  }

  mlir::getIntValues<long long>(v9, v19, &v111, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v107 = v109;
  memset_pattern16(v109, &unk_1E096FAE0, 0x18uLL);
  v108 = 0x600000003;
  v104 = v106;
  memset_pattern16(v106, &unk_1E096FAE0, 0x18uLL);
  v105 = 0x600000003;
  v96[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v96[1] = v20;
  mlir::CallableOpInterface::getArgAttrsAttr(v96);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v21);
  if ((v23 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_119;
  }

  if (!LODWORD(v111.__r_.__value_.__r.__words[1]))
  {
LABEL_23:
    __p[0] = &__p[2];
    __p[1] = 0x400000000;
    __p[10] = 4;
    v99.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v30 = mlir::RankedTensorType::get(&v99, 1, IntegerType, 0);
    v99.__r_.__value_.__r.__words[0] = 6;
    v31 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v32 = mlir::RankedTensorType::get(&v99, 1, v31, 0);
    v99.__r_.__value_.__r.__words[0] = "ksize";
    v100 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v99);
    if (v30)
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v34 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v34, v104, 8 * v105, 8, 1, 0);
    mlir::NamedAttrList::set(__p, StringAttr, v40);
    v99.__r_.__value_.__r.__words[0] = "stride";
    v100 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v99);
    if (v30)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v30, v42, v107, 8 * v108, 8, 1, 0);
    mlir::NamedAttrList::set(__p, v41, v43);
    v99.__r_.__value_.__r.__words[0] = "padding";
    v100 = 259;
    v44 = mlir::Builder::getStringAttr((a4 + 8), &v99);
    if (v32)
    {
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    else
    {
      v45 = 0;
    }

    v46 = mlir::DenseElementsAttr::getFromRawBuffer(v32, v45, *__dst, 8 * *&__dst[8], 8, 1, 0);
    mlir::NamedAttrList::set(__p, v44, v46);
    v47 = mlir::ValueRange::dereference_iterator(v112, 0);
    v99.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(v97);
    if (mlir::Type::isF16(&v99) || (v103.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(v97), mlir::Type::isF32(&v103)))
    {
      v103.__r_.__value_.__r.__words[0] = 1;
      isSplat = mlir::ElementsAttr::isSplat(v97);
      v49 = mlir::RankedTensorType::get(&v103, 1, isSplat, 0);
      v50 = v49;
      if (v49)
      {
        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
      }

      else
      {
        v51 = 0;
      }

      v66 = mlir::ElementsAttr::isSplat(v97);
      v102.__r_.__value_.__r.__words[0] = mlir::FloatAttr::get(v66, -1.0);
      matched = 1;
      v99.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::get(v50, v51, &v102, 1uLL);
      v67 = v98[3];
      v102.__r_.__value_.__r.__words[0] = 1;
      v68 = mlir::ElementsAttr::isSplat(v97);
      v103.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(&v102, 1, v68, 0, 0, 0);
      v69 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a4 + 8), v67, &v103, &v99) - 16);
      v71 = v98[3];
      if (*(GOC + 36))
      {
        v72 = GOC - 16;
      }

      else
      {
        v72 = 0;
      }

      v103.__r_.__value_.__r.__words[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v72, 0);
      v73 = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v71, &v103, __p);
      v74 = v98[3];
      if (*(v73 + 36))
      {
        v75 = v73 - 16;
      }

      else
      {
        v75 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v75, 0);
      mlir::ConversionPatternRewriter::replaceOp(a4, v98, &v99, 1);
    }

    else
    {
      v99.__r_.__value_.__r.__words[0] = operator new(0x40uLL);
      *&v99.__r_.__value_.__r.__words[1] = xmmword_1E09827C0;
      strcpy(v99.__r_.__value_.__l.__data_, "ReduceMin for non fp type is not supported for A13 and below");
      matched = mlir::logMatchFailure(&v99, v98[3], a4);
      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }
    }

    if (__p[0] != &__p[2])
    {
      free(__p[0]);
    }

    goto LABEL_109;
  }

  v24 = IndexFromDim;
  v25 = v111.__r_.__value_.__r.__words[0];
  v26 = 8 * LODWORD(v111.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v27 = *v25;
    if (*v25 == v24)
    {
      std::to_string(&v95, v24);
      v52 = std::string::insert(&v95, 0, "MaxPool/AveragePool for axes:");
      v53 = v52->__r_.__value_.__r.__words[2];
      *&v102.__r_.__value_.__l.__data_ = *&v52->__r_.__value_.__l.__data_;
      v102.__r_.__value_.__r.__words[2] = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      v54 = std::string::append(&v102, "reduced from Op ");
      v55 = v54->__r_.__value_.__r.__words[2];
      *&v103.__r_.__value_.__l.__data_ = *&v54->__r_.__value_.__l.__data_;
      v103.__r_.__value_.__r.__words[2] = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      __p[0] = *(v98[6] + 8);
      v56 = mlir::OpaqueAttr::getAttrData(__p);
      if (!v56)
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        goto LABEL_79;
      }

      v58 = v57;
      if (v57 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_119;
      }

      v59 = v56;
      if (v57 >= 0x17)
      {
        if ((v57 | 7) == 0x17)
        {
          v80 = 25;
        }

        else
        {
          v80 = (v57 | 7) + 1;
        }

        v60 = operator new(v80);
        v93 = v58;
        v94 = v80 | 0x8000000000000000;
        v92 = v60;
      }

      else
      {
        HIBYTE(v94) = v57;
        v60 = &v92;
        if (!v57)
        {
          goto LABEL_78;
        }
      }

      memmove(v60, v59, v58);
LABEL_78:
      *(v60 + v58) = 0;
      v79 = HIBYTE(v94);
      v78 = v92;
      v77 = v93;
LABEL_79:
      if ((v79 & 0x80u) == 0)
      {
        v81 = &v92;
      }

      else
      {
        v81 = v78;
      }

      if ((v79 & 0x80u) == 0)
      {
        v82 = v79;
      }

      else
      {
        v82 = v77;
      }

      v83 = std::string::append(&v103, v81, v82);
      v84 = v83->__r_.__value_.__r.__words[2];
      *&v99.__r_.__value_.__l.__data_ = *&v83->__r_.__value_.__l.__data_;
      v99.__r_.__value_.__r.__words[2] = v84;
      v83->__r_.__value_.__l.__size_ = 0;
      v83->__r_.__value_.__r.__words[2] = 0;
      v83->__r_.__value_.__r.__words[0] = 0;
      v85 = std::string::append(&v99, "is not supported for A13 and below");
      v86 = v85->__r_.__value_.__r.__words[2];
      *__p = *&v85->__r_.__value_.__l.__data_;
      __p[2] = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v98[3], a4);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_87:
          if ((SHIBYTE(v94) & 0x80000000) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_94;
        }
      }

      else if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_87;
      }

      operator delete(v99.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v94) & 0x80000000) == 0)
      {
LABEL_88:
        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_95;
      }

LABEL_94:
      operator delete(v92);
      if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_89:
        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_96;
      }

LABEL_95:
      operator delete(v103.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_90:
        if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_97;
      }

LABEL_96:
      operator delete(v102.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_109;
      }

LABEL_97:
      v87 = v95.__r_.__value_.__r.__words[0];
      goto LABEL_108;
    }

    if (v27 <= 1)
    {
      break;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v96);
    *(v104 + v27 - 2) = *(ArgAttrsAttr + 8 * v27);
    ++v25;
    v26 -= 8;
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  __p[0] = *(v98[6] + 8);
  v61 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v61)
  {
    memset(&v99, 0, sizeof(v99));
    goto LABEL_104;
  }

  v63 = v62;
  if (v62 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_119:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v64 = v61;
  if (v62 >= 0x17)
  {
    if ((v62 | 7) == 0x17)
    {
      v88 = 25;
    }

    else
    {
      v88 = (v62 | 7) + 1;
    }

    v65 = operator new(v88);
    v99.__r_.__value_.__l.__size_ = v63;
    v99.__r_.__value_.__r.__words[2] = v88 | 0x8000000000000000;
    v99.__r_.__value_.__r.__words[0] = v65;
    goto LABEL_102;
  }

  *(&v99.__r_.__value_.__s + 23) = v62;
  v65 = &v99;
  if (v62)
  {
LABEL_102:
    memmove(v65, v64, v63);
  }

  *(v65 + v63) = 0;
LABEL_104:
  v89 = std::string::insert(&v99, 0, "Axis value is incorrect for Op ");
  v90 = v89->__r_.__value_.__r.__words[2];
  *__p = *&v89->__r_.__value_.__l.__data_;
  __p[2] = v90;
  v89->__r_.__value_.__l.__size_ = 0;
  v89->__r_.__value_.__r.__words[2] = 0;
  v89->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v98[3], a4);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    v87 = v99.__r_.__value_.__r.__words[0];
LABEL_108:
    operator delete(v87);
  }

LABEL_109:
  if (v104 != v106)
  {
    free(v104);
  }

  if (v107 != v109)
  {
    free(v107);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v111.__r_.__value_.__l.__data_ != &v111.__r_.__value_.__r.__words[2])
  {
    free(v111.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v60 = a2;
  v6 = *(a3 + 56);
  v76 = *(a3 + 48);
  v77 = v6;
  if ((v8 & 1) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E097BD70;
    strcpy(*__p, "failed to convert operand axes");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    return matched;
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v60))
  {
    *__p = *(*(v60 + 6) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (!AttrData)
    {
      memset(__dst, 0, 24);
      goto LABEL_33;
    }

    v16 = v15;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_74;
    }

    v17 = AttrData;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v15 | 7) + 1;
      }

      v18 = operator new(v36);
      __dst[0].__r_.__value_.__l.__size_ = v16;
      __dst[0].__r_.__value_.__r.__words[2] = v36 | 0x8000000000000000;
      __dst[0].__r_.__value_.__r.__words[0] = v18;
    }

    else
    {
      *(&__dst[0].__r_.__value_.__s + 23) = v15;
      v18 = __dst;
      if (!v15)
      {
        goto LABEL_32;
      }
    }

    memmove(v18, v17, v16);
LABEL_32:
    v18->__r_.__value_.__s.__data_[v16] = 0;
LABEL_33:
    v37 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v38 = v37->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = *&v37->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = std::string::append(&v63, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v40 = v39->__r_.__value_.__r.__words[2];
    *__p = *&v39->__r_.__value_.__l.__data_;
    *&__p[16] = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v60 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_39;
        }

        return matched;
      }
    }

    else if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    operator delete(v63.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_39:
      operator delete(__dst[0].__r_.__value_.__l.__data_);
    }

    return matched;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v60, 0);
  v11 = (*(*(*(v60 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  __dst[0].__r_.__value_.__r.__words[0] = &__dst[0].__r_.__value_.__r.__words[2];
  __dst[0].__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v19 = 0;
  }

  mlir::getIntValues<long long>(v9, v19, __dst, 1);
  v72 = v74;
  memset(v74, 0, sizeof(v74));
  v73 = 0x600000006;
  v69 = v71;
  memset_pattern16(v71, &unk_1E096FAE0, 0x18uLL);
  v70 = 0x600000003;
  v66 = v68;
  memset_pattern16(v68, &unk_1E096FAE0, 0x18uLL);
  v67 = 0x600000003;
  v59[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v59[1] = v20;
  mlir::CallableOpInterface::getArgAttrsAttr(v59);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v21);
  if (v23)
  {
    if (LODWORD(__dst[0].__r_.__value_.__r.__words[1]) == 1 && *__dst[0].__r_.__value_.__l.__data_ == IndexFromDim)
    {
      v57 = *(v60 + 3);
      v24 = *(mlir::CallableOpInterface::getArgAttrsAttr(v59) + 8 * IndexFromDim);
      isSplat = mlir::ElementsAttr::isSplat(v59);
      v63.__r_.__value_.__r.__words[0] = &v63.__r_.__value_.__r.__words[2];
      v63.__r_.__value_.__r.__words[2] = 1;
      v64 = v24;
      v65 = vdupq_n_s64(1uLL);
      v63.__r_.__value_.__l.__size_ = 0x1000000004;
      v58 = mlir::MemRefType::get(&v63.__r_.__value_.__r.__words[2], 4, isSplat, 0, 0, 0);
      Value = mlir::ArrayAttr::getValue(&v58);
      NumElements = mlir::ShapedType::getNumElements(Value, v27);
      v29 = llvm::APFloatBase::IEEEhalf(NumElements);
      v30 = llvm::APFloatBase::PPCDoubleDouble(v29);
      if (v30 == v29)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61.__r_.__value_.__l.__size_, v29, 1);
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(&v61.__r_.__value_.__l.__size_, v29, 1);
      }

      *__p = &__p[16];
      *&__p[8] = 0x1000000000;
      llvm::SmallVectorImpl<llvm::APFloat>::assign(__p, NumElements, &v61);
      if (v30 == v61.__r_.__value_.__l.__size_)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61.__r_.__value_.__r.__words[1]);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61.__r_.__value_.__r.__words[1]);
      }

      v47 = v63.__r_.__value_.__r.__words[0];
      v48 = LODWORD(v63.__r_.__value_.__r.__words[1]);
      F16Type = mlir::Builder::getF16Type((a4 + 8), v46);
      v50 = mlir::RankedTensorType::get(v47, v48, F16Type, 0);
      v61.__r_.__value_.__r.__words[0] = mlir::createElementsAttr(v50, *__p, *&__p[8]);
      v61.__r_.__value_.__l.__size_ = v51;
      mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), v57, &v58, &v61);
      if (*(v60 + 9))
      {
        v52 = v60 - 16;
      }

      else
      {
        v52 = 0;
      }

      v53 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v53)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
      }

      else
      {
        v54 = 0;
      }
    }

    *__p = *(*(v60 + 6) + 8);
    v31 = mlir::OpaqueAttr::getAttrData(__p);
    if (!v31)
    {
      memset(&v61, 0, sizeof(v61));
      goto LABEL_47;
    }

    v33 = v32;
    if (v32 <= 0x7FFFFFFFFFFFFFF7)
    {
      v34 = v31;
      if (v32 >= 0x17)
      {
        if ((v32 | 7) == 0x17)
        {
          v41 = 25;
        }

        else
        {
          v41 = (v32 | 7) + 1;
        }

        v35 = operator new(v41);
        v61.__r_.__value_.__l.__size_ = v33;
        v61.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
        v61.__r_.__value_.__r.__words[0] = v35;
      }

      else
      {
        *(&v61.__r_.__value_.__s + 23) = v32;
        v35 = &v61;
        if (!v32)
        {
          goto LABEL_46;
        }
      }

      memmove(v35, v34, v33);
LABEL_46:
      *(v35 + v33) = 0;
LABEL_47:
      v42 = std::string::insert(&v61, 0, "ReduceSum for axes other than channel axis: ");
      v43 = v42->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v63, " is not supported for A13 and below\n");
      v45 = v44->__r_.__value_.__r.__words[2];
      *__p = *&v44->__r_.__value_.__l.__data_;
      *&__p[16] = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, *(v60 + 3), a4);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_49:
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_53;
          }

          goto LABEL_65;
        }
      }

      else if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      operator delete(v63.__r_.__value_.__l.__data_);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_53:
        operator delete(v61.__r_.__value_.__l.__data_);
      }

LABEL_65:
      if (v66 != v68)
      {
        free(v66);
      }

      if (v69 != v71)
      {
        free(v69);
      }

      if (v72 != v74)
      {
        free(v72);
      }

      if (__dst[0].__r_.__value_.__l.__data_ != &__dst[0].__r_.__value_.__r.__words[2])
      {
        free(__dst[0].__r_.__value_.__l.__data_);
      }

      return matched;
    }

LABEL_74:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v56 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)0>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)0>::~ConvertReshape(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReshapeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v77 = *MEMORY[0x1E69E9840];
  v70 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v70, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v65 = v6;
  v66 = v7;
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

  __p = v9;
  *&v73 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v65);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  *&v64 = mlir::getRankPromotionTypeForANE(v15, v17);
  *(&v64 + 1) = v18;
  v63[0] = mlir::getRankPromotionTypeForANE(v65, v66);
  v63[1] = v19;
  v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v64);
  v22 = v21;
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v63);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    *&v76 = mlir::ValueRange::dereference_iterator(&v70, 0);
    v37 = 1;
    mlir::ValueRange::ValueRange(&__p, &v76, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, v73);
    return v37;
  }

  v76 = v70;
  v25 = (*(mlir::ValueRange::dereference_iterator(&v76, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v25, v26);
  v29 = v28;
  if (*(a2 + 36))
  {
    v30 = a2 - 16;
  }

  else
  {
    v30 = 0;
  }

  v31 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  v33 = mlir::getRankPromotionTypeForANE(v31, v32);
  if (mlir::anec::verifyCompatibilityWithFlatten(RankPromotionTypeForANE, v29, v33, v34))
  {
    v35 = *(a2 + 24);
    *&v69 = mlir::ValueRange::dereference_iterator(&v76, 0);
    Context = mlir::Attribute::getContext((a2 + 24));
    v68 = mlir::arith::AtomicRMWKindAttr::get(Context, 1);
    __p = (mlir::OpBuilder::create<mlir::anec::Flatten,mlir::Value,mlir::anec::FlattenModeAttr>(a4 + 1, v35, &v69, &v68) - 16);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
    return 1;
  }

  __p = operator new(0x50uLL);
  v73 = xmmword_1E0982680;
  strcpy(__p, "failed: Reshape target shape must be NxCx1x1 to be lowered as Flatten on ANEs.");
  v38 = (a2 + 24);
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  v40 = matched;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
    if (v40)
    {
      return 1;
    }
  }

  else if (matched)
  {
    return 1;
  }

  v76 = v70;
  v69 = v64;
  v41 = (*(mlir::ValueRange::dereference_iterator(&v76, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v41)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
  }

  else
  {
    v42 = 0;
  }

  v43 = mlir::getRankPromotionTypeForANE(v41, v42);
  v45 = v44;
  if (*(a2 + 36))
  {
    v46 = a2 - 16;
  }

  else
  {
    v46 = 0;
  }

  v47 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v47)
  {
    v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
  }

  else
  {
    v48 = 0;
  }

  v49 = mlir::getRankPromotionTypeForANE(v47, v48);
  if (mlir::anec::verifyCompatibilityWithUnflatten(v43, v45, v49, v50))
  {
    v51 = mlir::Attribute::getContext((a2 + 24));
    v68 = mlir::arith::AtomicRMWKindAttr::get(v51, 1);
    v52 = mlir::CallableOpInterface::getArgAttrsAttr(&v69);
    v54 = v52 + 8 * v53;
    __p = &v73 + 8;
    *(&v73 + 1) = *(v54 - 24);
    v74 = *(v54 - 16);
    v75 = *(v54 - 8);
    *&v73 = 0x300000003;
    v71 = 3;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v56 = mlir::RankedTensorType::get(&v71, 1, IntegerType, 0);
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

    v71 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v58, __p, 8 * v73, 8, 1, 0);
    v67 = mlir::ValueRange::dereference_iterator(&v76, 0);
    v61 = mlir::OpBuilder::create<mlir::anec::Unflatten,mlir::Value,mlir::anec::FlattenModeAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, *(a2 + 24), &v67, &v68, &v71);
    (*(*a4 + 1))(a4, a2, v61);
    if (__p != &v73 + 8)
    {
      free(__p);
    }

    return 1;
  }

  __p = operator new(0x50uLL);
  v73 = xmmword_1E09827D0;
  strcpy(__p, "failed: Reshape input shape must be NxCx1x1 to be lowered as Unflatten on ANEs.");
  v59 = mlir::logMatchFailure(&__p, *v38, a4);
  v60 = v59;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
    if ((v60 & 1) == 0)
    {
      goto LABEL_52;
    }

    return 1;
  }

  if (v59)
  {
    return 1;
  }

LABEL_52:
  __p = operator new(0x48uLL);
  v73 = xmmword_1E09827E0;
  strcpy(__p, "failed: op couldn't be folded or converted to flatten on A11/A12.");
  v37 = mlir::logMatchFailure(&__p, *v38, a4);
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
  }

  return v37;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Flatten,mlir::Value,mlir::anec::FlattenModeAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Flatten,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Flatten,mlir::Value,mlir::anec::FlattenModeAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Flatten::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Flatten,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::Unflatten,mlir::Value,mlir::anec::FlattenModeAttr &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Unflatten,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Unflatten,mlir::Value,mlir::anec::FlattenModeAttr &,mlir::DenseIntElementsAttr &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Unflatten::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Unflatten,void>::id)
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

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)1>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)1>::~ConvertReshape(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v77 = *MEMORY[0x1E69E9840];
  v70 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v70, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v65 = v6;
  v66 = v7;
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

  __p = v9;
  *&v73 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v65);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  *&v64 = mlir::getRankPromotionTypeForANE(v15, v17);
  *(&v64 + 1) = v18;
  v63[0] = mlir::getRankPromotionTypeForANE(v65, v66);
  v63[1] = v19;
  v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v64);
  v22 = v21;
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v63);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    *&v76 = mlir::ValueRange::dereference_iterator(&v70, 0);
    v37 = 1;
    mlir::ValueRange::ValueRange(&__p, &v76, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, v73);
    return v37;
  }

  v76 = v70;
  v25 = (*(mlir::ValueRange::dereference_iterator(&v76, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v25, v26);
  v29 = v28;
  if (*(a2 + 36))
  {
    v30 = a2 - 16;
  }

  else
  {
    v30 = 0;
  }

  v31 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v31)
  {
    v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  v33 = mlir::getRankPromotionTypeForANE(v31, v32);
  if (mlir::anec::verifyCompatibilityWithFlatten(RankPromotionTypeForANE, v29, v33, v34))
  {
    v35 = *(a2 + 24);
    *&v69 = mlir::ValueRange::dereference_iterator(&v76, 0);
    Context = mlir::Attribute::getContext((a2 + 24));
    v68 = mlir::arith::AtomicRMWKindAttr::get(Context, 1);
    __p = (mlir::OpBuilder::create<mlir::anec::Flatten,mlir::Value,mlir::anec::FlattenModeAttr>(a4 + 1, v35, &v69, &v68) - 16);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
    return 1;
  }

  __p = operator new(0x50uLL);
  v73 = xmmword_1E0982680;
  strcpy(__p, "failed: Reshape target shape must be NxCx1x1 to be lowered as Flatten on ANEs.");
  v38 = (a2 + 24);
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  v40 = matched;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
    if (v40)
    {
      return 1;
    }
  }

  else if (matched)
  {
    return 1;
  }

  v76 = v70;
  v69 = v64;
  v41 = (*(mlir::ValueRange::dereference_iterator(&v76, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v41)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
  }

  else
  {
    v42 = 0;
  }

  v43 = mlir::getRankPromotionTypeForANE(v41, v42);
  v45 = v44;
  if (*(a2 + 36))
  {
    v46 = a2 - 16;
  }

  else
  {
    v46 = 0;
  }

  v47 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v47)
  {
    v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
  }

  else
  {
    v48 = 0;
  }

  v49 = mlir::getRankPromotionTypeForANE(v47, v48);
  if (mlir::anec::verifyCompatibilityWithUnflatten(v43, v45, v49, v50))
  {
    v51 = mlir::Attribute::getContext((a2 + 24));
    v68 = mlir::arith::AtomicRMWKindAttr::get(v51, 1);
    v52 = mlir::CallableOpInterface::getArgAttrsAttr(&v69);
    v54 = v52 + 8 * v53;
    __p = &v73 + 8;
    *(&v73 + 1) = *(v54 - 24);
    v74 = *(v54 - 16);
    v75 = *(v54 - 8);
    *&v73 = 0x300000003;
    v71 = 3;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v56 = mlir::RankedTensorType::get(&v71, 1, IntegerType, 0);
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

    v71 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v58, __p, 8 * v73, 8, 1, 0);
    v67 = mlir::ValueRange::dereference_iterator(&v76, 0);
    v61 = mlir::OpBuilder::create<mlir::anec::Unflatten,mlir::Value,mlir::anec::FlattenModeAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, *(a2 + 24), &v67, &v68, &v71);
    (*(*a4 + 1))(a4, a2, v61);
    if (__p != &v73 + 8)
    {
      free(__p);
    }

    return 1;
  }

  __p = operator new(0x50uLL);
  v73 = xmmword_1E09827D0;
  strcpy(__p, "failed: Reshape input shape must be NxCx1x1 to be lowered as Unflatten on ANEs.");
  v59 = mlir::logMatchFailure(&__p, *v38, a4);
  v60 = v59;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
    if ((v60 & 1) == 0)
    {
      goto LABEL_52;
    }

    return 1;
  }

  if (v59)
  {
    return 1;
  }

LABEL_52:
  __p = operator new(0x48uLL);
  v73 = xmmword_1E09827E0;
  strcpy(__p, "failed: op couldn't be folded or converted to flatten on A11/A12.");
  v37 = mlir::logMatchFailure(&__p, *v38, a4);
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p);
  }

  return v37;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)2>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)2>::~ConvertReshape(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)3>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)3>::~ConvertReshape(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)4>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)4>::~ConvertReshape(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)5>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)5>::~ConvertReshape(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)6>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)6>::~ConvertReshape(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)7>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)7>::~ConvertReshape(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)0>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)0>::~ConvertExpandDims(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExpandDimsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
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
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
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
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v49 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v49, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v47 = v6;
  v48 = v7;
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

  *v51 = v9;
  *&v51[8] = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v51);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v47);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v46[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v46[1] = v18;
  v45[0] = mlir::getRankPromotionTypeForANE(v47, v48);
  v45[1] = v19;
  v20 = mlir::CallableOpInterface::getArgAttrsAttr(v46);
  v22 = v21;
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v45);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v49, 0);
    v39 = 1;
    mlir::ValueRange::ValueRange(v51, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *v51, *&v51[8]);
    return v39;
  }

  *v51 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v51);
  if (!AttrData)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_27;
  }

  v27 = v26;
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_55;
  }

  v28 = AttrData;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (v26 | 7) + 1;
    }

    p_dst = operator new(v30);
    __dst.__r_.__value_.__l.__size_ = v27;
    __dst.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v26;
    p_dst = &__dst;
    if (!v26)
    {
      goto LABEL_26;
    }
  }

  memmove(p_dst, v28, v27);
LABEL_26:
  p_dst->__r_.__value_.__s.__data_[v27] = 0;
LABEL_27:
  v31 = std::string::append(&__dst, " cannot be lowered as Flatten on ANE");
  v32 = v31->__r_.__value_.__r.__words[2];
  *v51 = *&v31->__r_.__value_.__l.__data_;
  *&v51[16] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if (matched)
      {
        return 1;
      }

      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (matched)
  {
    return 1;
  }

LABEL_33:
  *v51 = *(*(a2 + 48) + 8);
  v34 = mlir::OpaqueAttr::getAttrData(v51);
  if (!v34)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_46;
  }

  v36 = v35;
  if (v35 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v37 = v34;
  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v40 = 25;
    }

    else
    {
      v40 = (v35 | 7) + 1;
    }

    v38 = operator new(v40);
    __dst.__r_.__value_.__l.__size_ = v36;
    __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v38;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v35;
    v38 = &__dst;
    if (!v35)
    {
      goto LABEL_45;
    }
  }

  memmove(v38, v37, v36);
LABEL_45:
  v38->__r_.__value_.__s.__data_[v36] = 0;
LABEL_46:
  v41 = std::string::append(&__dst, " cannot be lowered as Unflatten on ANE");
  v42 = v41->__r_.__value_.__r.__words[2];
  *v51 = *&v41->__r_.__value_.__l.__data_;
  *&v51[16] = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_48:
      if (v43)
      {
        return 1;
      }

      goto LABEL_53;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v43)
  {
    return 1;
  }

LABEL_53:
  *v51 = operator new(0x48uLL);
  *&v51[8] = xmmword_1E09827E0;
  strcpy(*v51, "failed: op couldn't be folded or converted to flatten on A11/A12.");
  v39 = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
  }

  return v39;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)1>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)1>::~ConvertExpandDims(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v49 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v49, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v47 = v6;
  v48 = v7;
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

  *v51 = v9;
  *&v51[8] = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v51);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v47);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v46[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v46[1] = v18;
  v45[0] = mlir::getRankPromotionTypeForANE(v47, v48);
  v45[1] = v19;
  v20 = mlir::CallableOpInterface::getArgAttrsAttr(v46);
  v22 = v21;
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v45);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v49, 0);
    v39 = 1;
    mlir::ValueRange::ValueRange(v51, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *v51, *&v51[8]);
    return v39;
  }

  *v51 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v51);
  if (!AttrData)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_27;
  }

  v27 = v26;
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_55;
  }

  v28 = AttrData;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (v26 | 7) + 1;
    }

    p_dst = operator new(v30);
    __dst.__r_.__value_.__l.__size_ = v27;
    __dst.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v26;
    p_dst = &__dst;
    if (!v26)
    {
      goto LABEL_26;
    }
  }

  memmove(p_dst, v28, v27);
LABEL_26:
  p_dst->__r_.__value_.__s.__data_[v27] = 0;
LABEL_27:
  v31 = std::string::append(&__dst, " cannot be lowered as Flatten on ANE");
  v32 = v31->__r_.__value_.__r.__words[2];
  *v51 = *&v31->__r_.__value_.__l.__data_;
  *&v51[16] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if (matched)
      {
        return 1;
      }

      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (matched)
  {
    return 1;
  }

LABEL_33:
  *v51 = *(*(a2 + 48) + 8);
  v34 = mlir::OpaqueAttr::getAttrData(v51);
  if (!v34)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_46;
  }

  v36 = v35;
  if (v35 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v37 = v34;
  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v40 = 25;
    }

    else
    {
      v40 = (v35 | 7) + 1;
    }

    v38 = operator new(v40);
    __dst.__r_.__value_.__l.__size_ = v36;
    __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v38;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v35;
    v38 = &__dst;
    if (!v35)
    {
      goto LABEL_45;
    }
  }

  memmove(v38, v37, v36);
LABEL_45:
  v38->__r_.__value_.__s.__data_[v36] = 0;
LABEL_46:
  v41 = std::string::append(&__dst, " cannot be lowered as Unflatten on ANE");
  v42 = v41->__r_.__value_.__r.__words[2];
  *v51 = *&v41->__r_.__value_.__l.__data_;
  *&v51[16] = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_48:
      if (v43)
      {
        return 1;
      }

      goto LABEL_53;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v43)
  {
    return 1;
  }

LABEL_53:
  *v51 = operator new(0x48uLL);
  *&v51[8] = xmmword_1E09827E0;
  strcpy(*v51, "failed: op couldn't be folded or converted to flatten on A11/A12.");
  v39 = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
  }

  return v39;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)2>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)2>::~ConvertExpandDims(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)3>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)3>::~ConvertExpandDims(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)4>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)4>::~ConvertExpandDims(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)5>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)5>::~ConvertExpandDims(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)6>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)6>::~ConvertExpandDims(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)7>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)7>::~ConvertExpandDims(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)0>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)0>::~ConvertSqueeze(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SqueezeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SqueezeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SqueezeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
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
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
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
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v49 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v49, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v47 = v6;
  v48 = v7;
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

  *v51 = v9;
  *&v51[8] = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v51);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v47);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v46[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v46[1] = v18;
  v45[0] = mlir::getRankPromotionTypeForANE(v47, v48);
  v45[1] = v19;
  v20 = mlir::CallableOpInterface::getArgAttrsAttr(v46);
  v22 = v21;
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v45);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v49, 0);
    v39 = 1;
    mlir::ValueRange::ValueRange(v51, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *v51, *&v51[8]);
    return v39;
  }

  *v51 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v51);
  if (!AttrData)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_27;
  }

  v27 = v26;
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_55;
  }

  v28 = AttrData;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (v26 | 7) + 1;
    }

    p_dst = operator new(v30);
    __dst.__r_.__value_.__l.__size_ = v27;
    __dst.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v26;
    p_dst = &__dst;
    if (!v26)
    {
      goto LABEL_26;
    }
  }

  memmove(p_dst, v28, v27);
LABEL_26:
  p_dst->__r_.__value_.__s.__data_[v27] = 0;
LABEL_27:
  v31 = std::string::append(&__dst, " cannot be lowered as Flatten on ANE");
  v32 = v31->__r_.__value_.__r.__words[2];
  *v51 = *&v31->__r_.__value_.__l.__data_;
  *&v51[16] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if (matched)
      {
        return 1;
      }

      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (matched)
  {
    return 1;
  }

LABEL_33:
  *v51 = *(*(a2 + 48) + 8);
  v34 = mlir::OpaqueAttr::getAttrData(v51);
  if (!v34)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_46;
  }

  v36 = v35;
  if (v35 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v37 = v34;
  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v40 = 25;
    }

    else
    {
      v40 = (v35 | 7) + 1;
    }

    v38 = operator new(v40);
    __dst.__r_.__value_.__l.__size_ = v36;
    __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v38;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v35;
    v38 = &__dst;
    if (!v35)
    {
      goto LABEL_45;
    }
  }

  memmove(v38, v37, v36);
LABEL_45:
  v38->__r_.__value_.__s.__data_[v36] = 0;
LABEL_46:
  v41 = std::string::append(&__dst, " cannot be lowered as Unflatten on ANE");
  v42 = v41->__r_.__value_.__r.__words[2];
  *v51 = *&v41->__r_.__value_.__l.__data_;
  *&v51[16] = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_48:
      if (v43)
      {
        return 1;
      }

      goto LABEL_53;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v43)
  {
    return 1;
  }

LABEL_53:
  *v51 = operator new(0x48uLL);
  *&v51[8] = xmmword_1E09827E0;
  strcpy(*v51, "failed: op couldn't be folded or converted to flatten on A11/A12.");
  v39 = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
  }

  return v39;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)1>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)1>::~ConvertSqueeze(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v49 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v49, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v47 = v6;
  v48 = v7;
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

  *v51 = v9;
  *&v51[8] = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v51);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v47);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v46[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v46[1] = v18;
  v45[0] = mlir::getRankPromotionTypeForANE(v47, v48);
  v45[1] = v19;
  v20 = mlir::CallableOpInterface::getArgAttrsAttr(v46);
  v22 = v21;
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v45);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v49, 0);
    v39 = 1;
    mlir::ValueRange::ValueRange(v51, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *v51, *&v51[8]);
    return v39;
  }

  *v51 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v51);
  if (!AttrData)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_27;
  }

  v27 = v26;
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_55;
  }

  v28 = AttrData;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (v26 | 7) + 1;
    }

    p_dst = operator new(v30);
    __dst.__r_.__value_.__l.__size_ = v27;
    __dst.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v26;
    p_dst = &__dst;
    if (!v26)
    {
      goto LABEL_26;
    }
  }

  memmove(p_dst, v28, v27);
LABEL_26:
  p_dst->__r_.__value_.__s.__data_[v27] = 0;
LABEL_27:
  v31 = std::string::append(&__dst, " cannot be lowered as Flatten on ANE");
  v32 = v31->__r_.__value_.__r.__words[2];
  *v51 = *&v31->__r_.__value_.__l.__data_;
  *&v51[16] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if (matched)
      {
        return 1;
      }

      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (matched)
  {
    return 1;
  }

LABEL_33:
  *v51 = *(*(a2 + 48) + 8);
  v34 = mlir::OpaqueAttr::getAttrData(v51);
  if (!v34)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_46;
  }

  v36 = v35;
  if (v35 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v37 = v34;
  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v40 = 25;
    }

    else
    {
      v40 = (v35 | 7) + 1;
    }

    v38 = operator new(v40);
    __dst.__r_.__value_.__l.__size_ = v36;
    __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v38;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v35;
    v38 = &__dst;
    if (!v35)
    {
      goto LABEL_45;
    }
  }

  memmove(v38, v37, v36);
LABEL_45:
  v38->__r_.__value_.__s.__data_[v36] = 0;
LABEL_46:
  v41 = std::string::append(&__dst, " cannot be lowered as Unflatten on ANE");
  v42 = v41->__r_.__value_.__r.__words[2];
  *v51 = *&v41->__r_.__value_.__l.__data_;
  *&v51[16] = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_48:
      if (v43)
      {
        return 1;
      }

      goto LABEL_53;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v43)
  {
    return 1;
  }

LABEL_53:
  *v51 = operator new(0x48uLL);
  *&v51[8] = xmmword_1E09827E0;
  strcpy(*v51, "failed: op couldn't be folded or converted to flatten on A11/A12.");
  v39 = mlir::logMatchFailure(v51, *(a2 + 24), a4);
  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
  }

  return v39;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)2>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)2>::~ConvertSqueeze(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)3>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)3>::~ConvertSqueeze(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)4>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)4>::~ConvertSqueeze(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)5>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)5>::~ConvertSqueeze(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)6>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)6>::~ConvertSqueeze(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)7>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)7>::~ConvertSqueeze(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
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

  RankPromotionTypeForANE = v9;
  v23 = v10;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(ArgAttrsAttr, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*(*a4 + 1))(a4, a2, v19);
  return 1;
}

void mlir::anonymous namespace::ConvertCast::~ConvertCast(mlir::_anonymous_namespace_::ConvertCast *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertCast::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t **a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = a3[6];
  v8 = (*(mlir::ValueRange::dereference_iterator(&v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v19[0] = v8;
  v19[1] = v9;
  *&v20 = mlir::mps::detail::CastOpGenericAdaptorBase::getResultElementType(a3);
  if (mlir::Type::isInteger(&v20, 1))
  {
    mlir::TypeConverter::TypeConverter(&v20, *(a1 + 96));
    v10 = *(a2 + 24);
    v22 = a3[6];
    v23 = 0;
    v18 = mlir::ValueRange::dereference_iterator(&v22, 0);
    v22 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(a4 + 1, v10, &v18);
    if (*(a2 + 36))
    {
      v11 = a2 - 16;
    }

    else
    {
      v11 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
    v18 = mlir::TypeConverter::convertType(&v20, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v13 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>((a4 + 1), *(a2 + 24), &v18, &v22);
    ((*a4)[1])(a4, a2, v13);
    mlir::TypeConverter::~TypeConverter(&v20);
  }

  ResultElementType = mlir::mps::detail::CastOpGenericAdaptorBase::getResultElementType(a3);
  LOBYTE(v20) = 0;
  v21 = 0;
  v22 = mlir::ShapedType::cloneWith(v19, &v20, ResultElementType);
  v23 = v15;
  v20 = a3[6];
  *&v20 = mlir::ValueRange::dereference_iterator(&v20, 0);
  v16 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::ShapedType &,mlir::Value>((a4 + 1), *(a2 + 24), &v22, &v20);
  ((*a4)[1])(a4, a2, v16);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Cast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Cast,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::Cast,mlir::ShapedType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Cast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Cast,void>::id)
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

void mlir::anonymous namespace::ConvertSoftmax::~ConvertSoftmax(mlir::_anonymous_namespace_::ConvertSoftmax *this)
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