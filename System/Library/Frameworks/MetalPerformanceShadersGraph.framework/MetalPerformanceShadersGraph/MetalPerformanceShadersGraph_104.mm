uint64_t mlir::OpConversionPattern<mlir::mps::SoftmaxOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SoftmaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SoftmaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertSoftmax::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnitAttr **a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = *(a3 + 40);
  v6 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v18[0] = v6;
  v18[1] = v7;
  if (mlir::CallOpInterface::getArgOperands(v18))
  {
    matched = 1;
    v9 = mlir::ValueRange::dereference_iterator(&v19, 1);
    mlir::CallableOpInterface::getArgAttrsAttr(v18);
    __p = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
    LOBYTE(v17) = v11;
    if (v11)
    {
      v15 = 1;
      v14 = mlir::ValueRange::dereference_iterator(&v19, 0);
      v12 = mlir::OpBuilder::create<mlir::anec::Softmax,mlir::Value,mlir::DenseIntElementsAttr &,BOOL &>(a4 + 1, *(a2 + 24), &v14, &__p, &v15);
      (*(*a4 + 1))(a4, a2, v12);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __p = operator new(0x20uLL);
    v17 = xmmword_1E09827F0;
    matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Softmax,mlir::Value,mlir::DenseIntElementsAttr &,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Softmax,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Softmax,mlir::Value,mlir::DenseIntElementsAttr &,BOOL &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Softmax::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Softmax,void>::id)
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

void mlir::anonymous namespace::ConvertConcat::~ConvertConcat(mlir::_anonymous_namespace_::ConvertConcat *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ConcatOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ConcatOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ConcatOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertConcat::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v27 = a2;
  v5 = *(a3 + 48);
  v6 = *(a3 + 56);
  v30[0] = v5;
  v30[1] = v6;
  if (v6 == 2)
  {
    __p = mlir::ValueRange::dereference_iterator(v30, 0);
    matched = 1;
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
    return matched;
  }

  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v27, 0);
  v10 = (*(*(*(v27 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v26[0] = v10;
  v26[1] = v11;
  v12 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v27, 1u);
  v13 = *(*(v27 + 72) + 32 * v12 + 24);
  mlir::CallableOpInterface::getArgAttrsAttr(v26);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v13, v14, *(v27 + 24), 1);
  v25 = v15;
  if (v15)
  {
    if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) == 1)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&__p, SortedUniquePromotedPositiveAxesAttr, 0);
      mlir::DenseElementsAttr::IntElementIterator::operator*(&__p, &v22);
      if (v23 > 0x40)
      {
        v16 = *v22;
      }

      else if (v23)
      {
        v16 = (v22 << -v23) >> -v23;
      }

      else
      {
        v16 = 0;
      }

      v21 = v16;
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v27);
      v17 = v27;
      __p = v5;
      *&v29 = v6 - 1;
      v18 = mlir::OpBuilder::create<mlir::anec::Concat,mlir::ValueRange,unsigned long long &,BOOL>(a4 + 1, *(v27 + 24), &__p, &v21, &InferredResultTypes);
      ((*a4)[1])(a4, v17, v18);
      if (v23 >= 0x41 && v22)
      {
        operator delete[](v22);
      }

      return 1;
    }

    __p = operator new(0x20uLL);
    v29 = xmmword_1E0982800;
    strcpy(__p, "Concat supports only 1 axis");
  }

  else
  {
    __p = operator new(0x38uLL);
    v29 = xmmword_1E0982710;
    strcpy(__p, "ANE Concat supports only supports const positive axis");
  }

  matched = mlir::logMatchFailure(&__p, *(v27 + 24), a4);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  return matched;
}

void mlir::anonymous namespace::ConvertSplit::~ConvertSplit(mlir::_anonymous_namespace_::ConvertSplit *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SplitOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SplitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SplitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertSplit::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = *MEMORY[0x1E69E9840];
  v83 = a2;
  v90 = *(a3 + 48);
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v83, 0);
  v6 = (*(*(*(v83 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v82[0] = v6;
  v82[1] = v7;
  v8 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v83, 1u);
  v9 = *(*(v83 + 72) + 32 * v8 + 24);
  mlir::CallableOpInterface::getArgAttrsAttr(v82);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(v83 + 24), 1);
  v81 = v11;
  if (v11)
  {
    if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) == 1)
    {
      v12 = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v88, SortedUniquePromotedPositiveAxesAttr, 0);
      mlir::DenseElementsAttr::IntElementIterator::operator*(v12, &__p);
      if (v79 > 0x40)
      {
        v13 = *__p;
      }

      else if (v79)
      {
        v13 = (__p << -v79) >> -v79;
      }

      else
      {
        v13 = 0;
      }

      v77 = v13;
      v15 = (*(mlir::ValueRange::dereference_iterator(&v90, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v15)
      {
        v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
      }

      else
      {
        v16 = 0;
      }

      v76[0] = v15;
      v76[1] = v16;
      v17 = *(mlir::CallableOpInterface::getArgAttrsAttr(v76) + 8 * v13);
      v88 = (v89 + 8);
      *&v89[0] = 0x400000000;
      v18 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v83, 2u);
      v19 = v83;
      v20 = *(v83 + 44);
      if ((v20 & 0x800000) != 0)
      {
        v21 = *(v83 + 72);
      }

      else
      {
        v21 = 0;
      }

      if (HIDWORD(v18) + v18 != v18 && *(v21 + 32 * v18 + 24))
      {
        v22 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v83, 2u);
        if ((*(v83 + 46) & 0x80) != 0)
        {
          v23 = *(v83 + 72);
        }

        else
        {
          v23 = 0;
        }

        if (HIDWORD(v22) + v22 == v22)
        {
          v24 = 0;
        }

        else
        {
          v24 = *(v23 + 32 * v22 + 24);
        }

        if (mlir::matchConstantWithIntVector<long long>(v24, &v88))
        {
          LODWORD(v28) = v89[0];
          goto LABEL_61;
        }

        v86 = operator new(0x28uLL);
        v87[0] = xmmword_1E0982810;
        strcpy(v86, "Cannot statically infer split sizes");
        v35 = *(v83 + 24);
LABEL_51:
        matched = mlir::logMatchFailure(&v86, v35, a4);
        if (SHIBYTE(v87[0]) < 0)
        {
          operator delete(v86);
        }

        goto LABEL_86;
      }

      v25 = *(v83 + 16 * ((v20 >> 23) & 1) + 64);
      if (!v25)
      {
        v86 = operator new(0x20uLL);
        v87[0] = xmmword_1E09826D0;
        strcpy(v86, "Cannot infer split sizes");
        v35 = *(v19 + 24);
        goto LABEL_51;
      }

      v86 = v25;
      UInt = mlir::IntegerAttr::getUInt(&v86);
      v27 = (v17 + UInt - 1) / UInt;
      v28 = v17 / v27;
      if (v17 / v27 > DWORD1(v89[0]))
      {
        LODWORD(v89[0]) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v89 + 8, v17 / v27, 8);
        v29 = v88;
        v30 = v88;
        v31 = v17 / v27;
        if (v28 < 4)
        {
          goto LABEL_102;
        }

        v30 = &v88->i8[8 * (v28 & 0xFFFFFFFFFFFFFFFCLL)];
        v31 = (v17 / v27) & 3;
        v32 = vdupq_n_s64(v27);
        v33 = v88 + 1;
        v34 = v28 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v33[-1] = v32;
          *v33 = v32;
          v33 += 2;
          v34 -= 4;
        }

        while (v34);
        if (v28 != (v28 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_102:
          do
          {
            *v30 = v27;
            v30 += 8;
            --v31;
          }

          while (v31);
        }

        goto LABEL_57;
      }

      v29 = v88;
      v36 = LODWORD(v89[0]);
      if (LODWORD(v89[0]) >= v28)
      {
        v37 = v17 / v27;
      }

      else
      {
        v37 = LODWORD(v89[0]);
      }

      if (v37)
      {
        v38 = v88;
        v39 = v37;
        if (v37 < 4)
        {
          goto LABEL_103;
        }

        v38 = &v88->i8[8 * (v37 & 0xFFFFFFFC)];
        v39 = v37 & 3;
        v40 = vdupq_n_s64(v27);
        v41 = v88 + 1;
        v42 = v37 & 0xFFFFFFFC;
        do
        {
          v41[-1] = v40;
          *v41 = v40;
          v41 += 2;
          v42 -= 4;
        }

        while (v42);
        if (v37 != (v37 & 0xFFFFFFFC))
        {
LABEL_103:
          do
          {
            *v38 = v27;
            v38 += 8;
            --v39;
          }

          while (v39);
        }
      }

      v43 = v28 - v36;
      if (v28 <= v36)
      {
        goto LABEL_57;
      }

      v44 = &v29->i8[8 * v36];
      if (v43 >= 4)
      {
        v45 = &v44[8 * (v43 & 0xFFFFFFFFFFFFFFFCLL)];
        v46 = v43 & 3;
        v47 = vdupq_n_s64(v27);
        v48 = (v44 + 16);
        v49 = v43 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v48[-1] = v47;
          *v48 = v47;
          v48 += 2;
          v49 -= 4;
        }

        while (v49);
        if (v43 == (v43 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_57:
          LODWORD(v89[0]) = v17 / v27;
          v50 = v17 % v27;
          if (v50)
          {
            if (DWORD1(v89[0]) <= v28)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v89 + 8, v28 + 1, 8);
              LODWORD(v28) = v89[0];
              v29 = v88;
            }

            v29->i64[v28] = v50;
            LODWORD(v28) = ++LODWORD(v89[0]);
          }

LABEL_61:
          v86 = v87 + 8;
          *&v87[0] = 0x400000000;
          if (v28 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v87 + 8, v28, 8);
            LODWORD(v28) = v89[0];
          }

          v75 = 0;
          if (v28)
          {
            v51 = v88;
            v52 = 8 * v28;
            do
            {
              v84[0] = *v51;
              v53 = *(v83 + 24);
              v74.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v90, 0);
              v54 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,long long const&,unsigned long long &,long long &>((a4 + 8), v53, &v74, &v77, &v75, v84);
              v55 = LODWORD(v87[0]);
              if (LODWORD(v87[0]) >= DWORD1(v87[0]))
              {
                v57 = v54;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v87 + 8, LODWORD(v87[0]) + 1, 8);
                v54 = v57;
                v55 = LODWORD(v87[0]);
              }

              *&v86[8 * v55] = v54 - 16;
              ++LODWORD(v87[0]);
              v56 = v84[0] + v75;
              v75 += v84[0];
              ++v51;
              v52 -= 8;
            }

            while (v52);
          }

          else
          {
            v56 = 0;
          }

          if (v56 == v17)
          {
            v58 = v83;
            mlir::ValueRange::ValueRange(v84, v86, LODWORD(v87[0]));
            mlir::ConversionPatternRewriter::replaceOp(a4, v58, v84[0], v84[1]);
            matched = 1;
            goto LABEL_84;
          }

          std::to_string(&v71, v56);
          v59 = std::string::insert(&v71, 0, "Sum of split sizes (");
          v60 = v59->__r_.__value_.__r.__words[2];
          *&v72.__r_.__value_.__l.__data_ = *&v59->__r_.__value_.__l.__data_;
          v72.__r_.__value_.__r.__words[2] = v60;
          v59->__r_.__value_.__l.__size_ = 0;
          v59->__r_.__value_.__r.__words[2] = 0;
          v59->__r_.__value_.__r.__words[0] = 0;
          v61 = std::string::append(&v72, ") does not match the input dimension size (");
          v62 = v61->__r_.__value_.__r.__words[2];
          *&v73.__r_.__value_.__l.__data_ = *&v61->__r_.__value_.__l.__data_;
          v73.__r_.__value_.__r.__words[2] = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v70, v17);
          if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v63 = &v70;
          }

          else
          {
            v63 = v70.__r_.__value_.__r.__words[0];
          }

          if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v70.__r_.__value_.__l.__size_;
          }

          v65 = std::string::append(&v73, v63, size);
          v66 = v65->__r_.__value_.__r.__words[2];
          *&v74.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
          v74.__r_.__value_.__r.__words[2] = v66;
          v65->__r_.__value_.__l.__size_ = 0;
          v65->__r_.__value_.__r.__words[2] = 0;
          v65->__r_.__value_.__r.__words[0] = 0;
          v67 = std::string::append(&v74, ") along the split axis");
          v68 = v67->__r_.__value_.__r.__words[2];
          *v84 = *&v67->__r_.__value_.__l.__data_;
          v85 = v68;
          v67->__r_.__value_.__l.__size_ = 0;
          v67->__r_.__value_.__r.__words[2] = 0;
          v67->__r_.__value_.__r.__words[0] = 0;
          matched = mlir::logMatchFailure(v84, *(v83 + 24), a4);
          if (SHIBYTE(v85) < 0)
          {
            operator delete(v84[0]);
            if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_80:
              if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_81;
              }

              goto LABEL_94;
            }
          }

          else if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_80;
          }

          operator delete(v74.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_81:
            if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_82;
            }

            goto LABEL_95;
          }

LABEL_94:
          operator delete(v70.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_82:
            if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_83;
            }

            goto LABEL_96;
          }

LABEL_95:
          operator delete(v73.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_83:
            if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_84;
            }

LABEL_97:
            operator delete(v71.__r_.__value_.__l.__data_);
LABEL_84:
            if (v86 != v87 + 8)
            {
              free(v86);
            }

LABEL_86:
            if (v88 != (v89 + 8))
            {
              free(v88);
            }

            if (v79 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            return matched;
          }

LABEL_96:
          operator delete(v72.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          goto LABEL_97;
        }
      }

      else
      {
        v45 = &v29->i64[v36];
        v46 = v43;
      }

      do
      {
        *v45++ = v27;
        --v46;
      }

      while (v46);
      goto LABEL_57;
    }

    v88 = operator new(0x20uLL);
    v89[0] = xmmword_1E09827F0;
    strcpy(v88->i8, "Split supports only 1 axis");
  }

  else
  {
    v88 = operator new(0x38uLL);
    v89[0] = xmmword_1E09826E0;
    strcpy(v88->i8, "ANE Split supports only supports const positive axis");
  }

  matched = mlir::logMatchFailure(&v88, *(v83 + 24), a4);
  if (SHIBYTE(v89[0]) < 0)
  {
    operator delete(v88);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,long long const&,unsigned long long &,long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::InputView::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id)
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

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)0>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)0>::~ConvertResize(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ResizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ResizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ResizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  v194[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v169 = a3[4];
  v170 = v6;
  *v171 = *(a3 + 12);
  v7 = a3[1];
  v165 = *a3;
  v166 = v7;
  v8 = a3[3];
  v167 = a3[2];
  v168 = v8;
  v161 = a2;
  v192[0] = *(&v170 + 1);
  v192[1] = *v171;
  v9 = a2[3];
  v160 = mlir::ValueRange::dereference_iterator(v192, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 0);
  v11 = (*(*(*(v161 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v159[0] = v11;
  v159[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v165, 0);
  v14 = *(&v170 + 1);
  *__p = *(&v170 + 1);
  *&__p[8] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  *__p = v14;
  *&__p[8] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  *__p = v15;
  *&__p[8] = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::CallableOpInterface::getArgAttrsAttr(v159);
  if (v23 <= 3)
  {
    *__p = &__p[16];
    *&__p[16] = IndexFromDim;
    *&__p[24] = v20;
    *&v173 = v20;
    *(&v173 + 1) = v21;
    *&v174 = v21;
    *(&v174 + 1) = IndexFromDim;
    *&__p[8] = 0x600000006;
    v190 = xmmword_1E0982820;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v25 = mlir::RankedTensorType::get(&v190, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    *&v193 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v193) - 16;
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  if (*(v161 + 9))
  {
    v28 = v161 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v158[0] = v29;
  v158[1] = v30;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v158);
  v33 = v32;
  *&v190 = v191;
  *(&v190 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  v154 = v22;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v191;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v190, v191, v34, 8);
  v35 = DWORD2(v190);
  v36 = v190;
  v37 = 8 * v33;
  if (v33)
  {
LABEL_25:
    memcpy(v36 + 8 * v35, ArgAttrsAttr, v37);
    v35 = DWORD2(v190);
    v36 = v190;
  }

LABEL_26:
  v38 = v35 + (v37 >> 3);
  DWORD2(v190) = v38;
  if (v38 <= 3)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v190, v36, 4 - v38, 1uLL);
    v36 = v190;
  }

  v39 = *(v36 + v21);
  v40 = *(v36 + v154);
  v187 = v189;
  v189[0] = v39;
  v189[1] = v40;
  v188 = 0x200000002;
  ResizeLayout = mlir::mps::getResizeLayout(v161, v36);
  if ((ResizeLayout & 0x100000000) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E0982800;
    strcpy(*__p, "Resize layout not supported");
LABEL_41:
    mlir::logMatchFailure(__p, *(v161 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v58 = 0;
    v59 = 0;
    goto LABEL_44;
  }

  v42 = ResizeLayout;
  if (ResizeLayout == 1)
  {
    *__p = &__p[16];
    *&__p[16] = v20;
    *&__p[24] = v21;
    *&v173 = v21;
    *(&v173 + 1) = v154;
    *&v174 = v154;
    *(&v174 + 1) = v20;
    *&__p[8] = 0x600000006;
    v193 = xmmword_1E0982820;
    v43 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(&v193, 2, v43, 0);
    if (v44)
    {
      v45 = v9;
      v46 = v44;
      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v46;
      v9 = v45;
    }

    else
    {
      v47 = 0;
    }

    v184 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v47, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v184) - 16;
    v48 = v190;
    v49 = v187;
    *v187 = *(v190 + 8 * v20);
    v49[1] = *(v48 + 8 * v21);
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  v157[0] = 0;
  v157[1] = 0;
  v50 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 1u);
  v51 = *(*(v161 + 9) + 32 * v50 + 24);
  *&v193 = v157;
  *__p = v51;
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v193, DefiningOp) & 1) == 0)
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982850;
    strcpy(*__p, "Shape operand was not a constant");
    goto LABEL_41;
  }

  v151 = v42;
  v152 = v9;
  v184 = v186;
  v186[1] = 0;
  v186[0] = 0;
  v185 = 0x200000002;
  v181 = v183;
  memset_pattern16(v183, &unk_1E096FAE0, 0x10uLL);
  v182 = 0x200000002;
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v161);
  *__p = 2;
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(__p, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (GateLayout == 1)
  {
    v62 = &v184;
  }

  else
  {
    v62 = &v181;
  }

  v63 = *v62;
  v64 = &v185;
  if (GateLayout != 1)
  {
    v64 = &v182;
  }

  v156 = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v63, 8 * *v64, 8, 1, 0);
  v178 = v180;
  v179 = 0x200000000;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v161);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v161);
  v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 2u);
  v69 = v161;
  if ((*(v161 + 46) & 0x80) != 0)
  {
    v70 = *(v161 + 9);
  }

  else
  {
    v70 = 0;
  }

  v71 = v152;
  if (HIDWORD(v67) + v67 == v67 || !*(v70 + 32 * v67 + 24))
  {
    v72 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 3u);
    v69 = v161;
    v73 = (*(v161 + 46) & 0x80) != 0 ? *(v161 + 9) : 0;
    if (HIDWORD(v72) + v72 == v72 || !*(v73 + 32 * v72 + 24))
    {
      if (InferredResultTypes)
      {
        if (!IsSize)
        {
          *__p = operator new(0x38uLL);
          *&__p[8] = xmmword_1E0982830;
          strcpy(*__p, "Unsupported alignCorners, centerResult for Resize");
          v75 = *(v69 + 3);
          goto LABEL_72;
        }

        goto LABEL_120;
      }

      if (IsSize)
      {
LABEL_78:
        *__p = &__p[16];
        v80 = &unk_1E096FAE0;
LABEL_119:
        memset_pattern16(&__p[16], v80, 0x10uLL);
LABEL_121:
        *&__p[8] = 0x600000002;
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v178, __p);
        if (*__p != &__p[16])
        {
          free(*__p);
        }

        *__p = 2;
        v120 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
        v121 = mlir::RankedTensorType::get(__p, 1, v120, 0);
        if (v121)
        {
          v122 = v121;
          v123 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v121 + 8);
          v121 = v122;
        }

        else
        {
          v123 = 0;
        }

        v162 = mlir::DenseElementsAttr::getFromRawBuffer(v121, v123, v178, 8 * v179, 8, 1, 0);
        v124 = v187;
        v125 = llvm::detail::IEEEFloat::IEEEFloat(&v193, -1.0);
        v126 = llvm::APFloatBase::IEEEsingle(v125);
        llvm::APFloat::Storage::Storage(&__p[8], &v193, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v193);
        llvm::detail::IEEEFloat::IEEEFloat(&v163, -1.0);
        llvm::APFloat::Storage::Storage(&v193 + 8, &v163, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v163);
        v163 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, v71, &v160, v124, v124 + 1, __p, &v193, &v156, &v162);
        v127 = *(&v193 + 1);
        v128 = llvm::APFloatBase::PPCDoubleDouble(v163);
        if (v128 == v127)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v193 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v193 + 8));
        }

        v129 = v152;
        if (v128 == *&__p[8])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[8]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&__p[8]);
        }

        v59 = mlir::anec::Resize::verifyAttributesWithFamily(&v163, 0);
        v58 = v163;
        if (v59)
        {
          if (v151 == 1)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = v154;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = v154;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v130 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v131 = mlir::RankedTensorType::get(&v193, 2, v130, 0);
            if (v131)
            {
              v132 = v131;
              v133 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v131 + 8);
              v131 = v132;
              v129 = v152;
            }

            else
            {
              v133 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v131, v133, *__p, 8 * *&__p[8], 8, 1, 0);
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(a4 + 1, v129, &v163, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v159);
          if (v134 <= 3)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = IndexFromDim;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = IndexFromDim;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v135 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v136 = mlir::RankedTensorType::get(&v193, 2, v135, 0);
            if (v136)
            {
              v137 = v136;
              v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
              v136 = v137;
            }

            else
            {
              v138 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v136, v138, *__p, 8 * *&__p[8], 8, 1, 0);
            *&v193 = v58 - 16;
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v152, &v193, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          mlir::ConversionPatternRewriter::eraseOp(a4, v163);
          *__p = operator new(0x48uLL);
          *&__p[8] = xmmword_1E0982840;
          strcpy(*__p, "requested attributes are not compatible with hardware requirements");
          mlir::logMatchFailure(__p, *(v161 + 3), a4);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v58 = 0;
        }

        goto LABEL_148;
      }

LABEL_118:
      *__p = &__p[16];
      v80 = &unk_1E0982A50;
      goto LABEL_119;
    }
  }

  v175 = v169;
  v176 = v170;
  *v177 = *v171;
  *__p = v165;
  *&__p[16] = v166;
  v173 = v167;
  v174 = v168;
  v74 = mlir::mps::getResizeLayout(v69, v68);
  if ((v74 & 0x100000000) != 0)
  {
    v76 = qword_1E0982BB8[v74];
    v150 = qword_1E0982BF0[v74];
    v77 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
    v78 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v77;
    if (v77)
    {
      v78 = mlir::ValueRange::offset_base(&v193, v77);
      v79 = *(&v193 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (HIDWORD(v77) + v77 == v79 || (v193 = v78, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v84 = 1.0;
      v85 = 1.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v81 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
      v82 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v81;
      if (v81)
      {
        v82 = mlir::ValueRange::offset_base(&v193, v81);
        v83 = *(&v193 + 1);
      }

      else
      {
        v83 = 0;
      }

      if (HIDWORD(v81) + v81 == v83)
      {
        v139 = 0;
      }

      else
      {
        v193 = v82;
        v139 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v139;
      v140 = mlir::Value::getDefiningOp(&v193);
      if (!v140 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v140))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v141 = v76;
      v142 = DWORD2(v193);
      v84 = 1.0;
      v85 = 1.0;
      v143 = v141;
      if (v141 < DWORD2(v193))
      {
        v85 = *(v193 + 4 * v141);
        v84 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      v144 = v143 >= v142;
      v76 = v143;
      if (v144)
      {
        goto LABEL_68;
      }
    }

    v86 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
    v87 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v86;
    if (v86)
    {
      v87 = mlir::ValueRange::offset_base(&v193, v86);
      v88 = *(&v193 + 1);
    }

    else
    {
      v88 = 0;
    }

    if (HIDWORD(v86) + v86 == v88 || (v193 = v87, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v92 = 0.0;
      v93 = 0.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v89 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
      v90 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v89;
      if (v89)
      {
        v90 = mlir::ValueRange::offset_base(&v193, v89);
        v91 = *(&v193 + 1);
      }

      else
      {
        v91 = 0;
      }

      if (HIDWORD(v89) + v89 == v91)
      {
        v145 = 0;
      }

      else
      {
        v193 = v90;
        v145 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v145;
      v146 = mlir::Value::getDefiningOp(&v193);
      if (!v146 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v146))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v147 = v76;
      v148 = DWORD2(v193);
      v92 = 0.0;
      v93 = 0.0;
      v149 = v147;
      if (v147 < DWORD2(v193))
      {
        v93 = *(v193 + 4 * v147);
        v92 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      if (v149 >= v148)
      {
        goto LABEL_68;
      }
    }

    v94 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
    v95 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v94;
    if (v94)
    {
      v95 = mlir::ValueRange::offset_base(&v193, v94);
    }

    v193 = v95;
    v96 = (*(mlir::ValueRange::dereference_iterator(&v193, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v96)
    {
      v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
    }

    else
    {
      v97 = 0;
    }

    *&v193 = v96;
    *(&v193 + 1) = v97;
    v98 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v100 = v99;
    v101 = *(a1 + 96);
    if (*(v69 + 9))
    {
      v102 = v69 - 16;
    }

    else
    {
      v102 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v102, 0);
    v104 = mlir::TypeConverter::convertType(v101, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v105 = v104;
    if (v104)
    {
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
    }

    *&v193 = v105;
    *(&v193 + 1) = v104;
    v106 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v108 = v107;
    v109 = mlir::anec::getIndexFromDim(3, v100);
    v110 = mlir::anec::getIndexFromDim(4, v108);
    v111 = *(v98 + 8 * v109);
    v112 = *(v98 + 8 * v110);
    v113 = *(v106 + 8 * v109);
    v114 = v93 != 0.0;
    if (v92 != 0.0)
    {
      v114 = 1;
    }

    v115 = (v85 + -1.0) * 0.5 != v93 || (v84 + -1.0) * 0.5 != v92;
    v71 = v152;
    v116 = v112;
    v117 = *(v106 + 8 * v110);
    v118 = v85 != (v113 / v111) || v84 != (v117 / v116);
    v119 = v85 != ((v113 + -1.0) / (v111 + -1.0)) || v84 != ((v117 + -1.0) / (v116 + -1.0));
    if (v114 || v118)
    {
      if (v114 || v119)
      {
        if (v115 || v118)
        {
          goto LABEL_68;
        }

        goto LABEL_78;
      }

LABEL_120:
      *__p = &__p[16];
      *&__p[16] = 0uLL;
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_68:
  *__p = operator new(0x48uLL);
  *&__p[8] = xmmword_1E0982670;
  strcpy(*__p, "Resize with custom scale and offset values not supported on ANE.");
  v75 = *(v161 + 3);
LABEL_72:
  mlir::logMatchFailure(__p, v75, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v58 = 0;
  v59 = 0;
LABEL_148:
  if (v178 != v180)
  {
    free(v178);
  }

  if (v181 != v183)
  {
    free(v181);
  }

  if (v184 != v186)
  {
    free(v184);
  }

LABEL_44:
  if (v187 != v189)
  {
    free(v187);
  }

  if (v190 != v191)
  {
    free(v190);
  }

  if (v59)
  {
    *&v165 = v58 - 16;
    matched = 1;
    mlir::ValueRange::ValueRange(__p, &v165, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *__p, *&__p[8]);
  }

  else
  {
    *__p = operator new(0x60uLL);
    *&__p[8] = xmmword_1E0982860;
    strcpy(*__p, "Conversion did not match a valid resize or a valid transformation supported by the hardware.");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Transpose::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v38[38] = *MEMORY[0x1E69E9840];
  v31 = a2;
  Context = mlir::Attribute::getContext(&v31);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Resize,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(v38, v33, v32);
  }

  mlir::OperationState::OperationState(v38, a2, v18);
  v20 = *a3;
  v21 = *a4;
  v22 = *a5;
  v24 = *(a6 + 8);
  v23 = (a6 + 8);
  v26 = llvm::APFloatBase::PPCDoubleDouble(v25);
  if (v26 == v24)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v37, v23);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v37, v23);
  }

  v27 = (a7 + 8);
  if (v26 == *(a7 + 8))
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v35, v27);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v35, v27);
  }

  mlir::anec::Resize::build(a1, v38, v20, v21, v22, v36, v34, *a8, *a9);
  if (v26 == v35.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v35);
  }

  if (v26 == v37.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v37);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v37);
  }

  v28 = mlir::OpBuilder::create(a1, v38);
  if (*(*(v28 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Resize,void>::id)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  mlir::OperationState::~OperationState(v38);
  return v29;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Transpose::build(a1, v17, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
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

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)1>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)1>::~ConvertResize(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  v194[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v169 = a3[4];
  v170 = v6;
  *v171 = *(a3 + 12);
  v7 = a3[1];
  v165 = *a3;
  v166 = v7;
  v8 = a3[3];
  v167 = a3[2];
  v168 = v8;
  v161 = a2;
  v192[0] = *(&v170 + 1);
  v192[1] = *v171;
  v9 = a2[3];
  v160 = mlir::ValueRange::dereference_iterator(v192, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 0);
  v11 = (*(*(*(v161 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v159[0] = v11;
  v159[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v165, 0);
  v14 = *(&v170 + 1);
  *__p = *(&v170 + 1);
  *&__p[8] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  *__p = v14;
  *&__p[8] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  *__p = v15;
  *&__p[8] = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::CallableOpInterface::getArgAttrsAttr(v159);
  if (v23 <= 3)
  {
    *__p = &__p[16];
    *&__p[16] = IndexFromDim;
    *&__p[24] = v20;
    *&v173 = v20;
    *(&v173 + 1) = v21;
    *&v174 = v21;
    *(&v174 + 1) = IndexFromDim;
    *&__p[8] = 0x600000006;
    v190 = xmmword_1E0982820;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v25 = mlir::RankedTensorType::get(&v190, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    *&v193 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v193) - 16;
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  if (*(v161 + 9))
  {
    v28 = v161 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v158[0] = v29;
  v158[1] = v30;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v158);
  v33 = v32;
  *&v190 = v191;
  *(&v190 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  v154 = v22;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v191;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v190, v191, v34, 8);
  v35 = DWORD2(v190);
  v36 = v190;
  v37 = 8 * v33;
  if (v33)
  {
LABEL_25:
    memcpy(v36 + 8 * v35, ArgAttrsAttr, v37);
    v35 = DWORD2(v190);
    v36 = v190;
  }

LABEL_26:
  v38 = v35 + (v37 >> 3);
  DWORD2(v190) = v38;
  if (v38 <= 3)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v190, v36, 4 - v38, 1uLL);
    v36 = v190;
  }

  v39 = *(v36 + v21);
  v40 = *(v36 + v154);
  v187 = v189;
  v189[0] = v39;
  v189[1] = v40;
  v188 = 0x200000002;
  ResizeLayout = mlir::mps::getResizeLayout(v161, v36);
  if ((ResizeLayout & 0x100000000) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E0982800;
    strcpy(*__p, "Resize layout not supported");
LABEL_41:
    mlir::logMatchFailure(__p, *(v161 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v58 = 0;
    v59 = 0;
    goto LABEL_44;
  }

  v42 = ResizeLayout;
  if (ResizeLayout == 1)
  {
    *__p = &__p[16];
    *&__p[16] = v20;
    *&__p[24] = v21;
    *&v173 = v21;
    *(&v173 + 1) = v154;
    *&v174 = v154;
    *(&v174 + 1) = v20;
    *&__p[8] = 0x600000006;
    v193 = xmmword_1E0982820;
    v43 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(&v193, 2, v43, 0);
    if (v44)
    {
      v45 = v9;
      v46 = v44;
      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v46;
      v9 = v45;
    }

    else
    {
      v47 = 0;
    }

    v184 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v47, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v184) - 16;
    v48 = v190;
    v49 = v187;
    *v187 = *(v190 + 8 * v20);
    v49[1] = *(v48 + 8 * v21);
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  v157[0] = 0;
  v157[1] = 0;
  v50 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 1u);
  v51 = *(*(v161 + 9) + 32 * v50 + 24);
  *&v193 = v157;
  *__p = v51;
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v193, DefiningOp) & 1) == 0)
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982850;
    strcpy(*__p, "Shape operand was not a constant");
    goto LABEL_41;
  }

  v151 = v42;
  v152 = v9;
  v184 = v186;
  v186[1] = 0;
  v186[0] = 0;
  v185 = 0x200000002;
  v181 = v183;
  memset_pattern16(v183, &unk_1E096FAE0, 0x10uLL);
  v182 = 0x200000002;
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v161);
  *__p = 2;
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(__p, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (GateLayout == 1)
  {
    v62 = &v184;
  }

  else
  {
    v62 = &v181;
  }

  v63 = *v62;
  v64 = &v185;
  if (GateLayout != 1)
  {
    v64 = &v182;
  }

  v156 = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v63, 8 * *v64, 8, 1, 0);
  v178 = v180;
  v179 = 0x200000000;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v161);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v161);
  v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 2u);
  v69 = v161;
  if ((*(v161 + 46) & 0x80) != 0)
  {
    v70 = *(v161 + 9);
  }

  else
  {
    v70 = 0;
  }

  v71 = v152;
  if (HIDWORD(v67) + v67 == v67 || !*(v70 + 32 * v67 + 24))
  {
    v72 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 3u);
    v69 = v161;
    v73 = (*(v161 + 46) & 0x80) != 0 ? *(v161 + 9) : 0;
    if (HIDWORD(v72) + v72 == v72 || !*(v73 + 32 * v72 + 24))
    {
      if (InferredResultTypes)
      {
        if (!IsSize)
        {
          *__p = operator new(0x38uLL);
          *&__p[8] = xmmword_1E0982830;
          strcpy(*__p, "Unsupported alignCorners, centerResult for Resize");
          v75 = *(v69 + 3);
          goto LABEL_72;
        }

        goto LABEL_120;
      }

      if (IsSize)
      {
LABEL_78:
        *__p = &__p[16];
        v80 = &unk_1E096FAE0;
LABEL_119:
        memset_pattern16(&__p[16], v80, 0x10uLL);
LABEL_121:
        *&__p[8] = 0x600000002;
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v178, __p);
        if (*__p != &__p[16])
        {
          free(*__p);
        }

        *__p = 2;
        v120 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
        v121 = mlir::RankedTensorType::get(__p, 1, v120, 0);
        if (v121)
        {
          v122 = v121;
          v123 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v121 + 8);
          v121 = v122;
        }

        else
        {
          v123 = 0;
        }

        v162 = mlir::DenseElementsAttr::getFromRawBuffer(v121, v123, v178, 8 * v179, 8, 1, 0);
        v124 = v187;
        v125 = llvm::detail::IEEEFloat::IEEEFloat(&v193, -1.0);
        v126 = llvm::APFloatBase::IEEEsingle(v125);
        llvm::APFloat::Storage::Storage(&__p[8], &v193, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v193);
        llvm::detail::IEEEFloat::IEEEFloat(&v163, -1.0);
        llvm::APFloat::Storage::Storage(&v193 + 8, &v163, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v163);
        v163 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, v71, &v160, v124, v124 + 1, __p, &v193, &v156, &v162);
        v127 = *(&v193 + 1);
        v128 = llvm::APFloatBase::PPCDoubleDouble(v163);
        if (v128 == v127)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v193 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v193 + 8));
        }

        v129 = v152;
        if (v128 == *&__p[8])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[8]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&__p[8]);
        }

        v59 = mlir::anec::Resize::verifyAttributesWithFamily(&v163, 1);
        v58 = v163;
        if (v59)
        {
          if (v151 == 1)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = v154;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = v154;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v130 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v131 = mlir::RankedTensorType::get(&v193, 2, v130, 0);
            if (v131)
            {
              v132 = v131;
              v133 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v131 + 8);
              v131 = v132;
              v129 = v152;
            }

            else
            {
              v133 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v131, v133, *__p, 8 * *&__p[8], 8, 1, 0);
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(a4 + 1, v129, &v163, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v159);
          if (v134 <= 3)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = IndexFromDim;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = IndexFromDim;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v135 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v136 = mlir::RankedTensorType::get(&v193, 2, v135, 0);
            if (v136)
            {
              v137 = v136;
              v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
              v136 = v137;
            }

            else
            {
              v138 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v136, v138, *__p, 8 * *&__p[8], 8, 1, 0);
            *&v193 = v58 - 16;
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v152, &v193, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          mlir::ConversionPatternRewriter::eraseOp(a4, v163);
          *__p = operator new(0x48uLL);
          *&__p[8] = xmmword_1E0982840;
          strcpy(*__p, "requested attributes are not compatible with hardware requirements");
          mlir::logMatchFailure(__p, *(v161 + 3), a4);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v58 = 0;
        }

        goto LABEL_148;
      }

LABEL_118:
      *__p = &__p[16];
      v80 = &unk_1E0982A50;
      goto LABEL_119;
    }
  }

  v175 = v169;
  v176 = v170;
  *v177 = *v171;
  *__p = v165;
  *&__p[16] = v166;
  v173 = v167;
  v174 = v168;
  v74 = mlir::mps::getResizeLayout(v69, v68);
  if ((v74 & 0x100000000) != 0)
  {
    v76 = qword_1E0982BB8[v74];
    v150 = qword_1E0982BF0[v74];
    v77 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
    v78 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v77;
    if (v77)
    {
      v78 = mlir::ValueRange::offset_base(&v193, v77);
      v79 = *(&v193 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (HIDWORD(v77) + v77 == v79 || (v193 = v78, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v84 = 1.0;
      v85 = 1.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v81 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
      v82 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v81;
      if (v81)
      {
        v82 = mlir::ValueRange::offset_base(&v193, v81);
        v83 = *(&v193 + 1);
      }

      else
      {
        v83 = 0;
      }

      if (HIDWORD(v81) + v81 == v83)
      {
        v139 = 0;
      }

      else
      {
        v193 = v82;
        v139 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v139;
      v140 = mlir::Value::getDefiningOp(&v193);
      if (!v140 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v140))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v141 = v76;
      v142 = DWORD2(v193);
      v84 = 1.0;
      v85 = 1.0;
      v143 = v141;
      if (v141 < DWORD2(v193))
      {
        v85 = *(v193 + 4 * v141);
        v84 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      v144 = v143 >= v142;
      v76 = v143;
      if (v144)
      {
        goto LABEL_68;
      }
    }

    v86 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
    v87 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v86;
    if (v86)
    {
      v87 = mlir::ValueRange::offset_base(&v193, v86);
      v88 = *(&v193 + 1);
    }

    else
    {
      v88 = 0;
    }

    if (HIDWORD(v86) + v86 == v88 || (v193 = v87, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v92 = 0.0;
      v93 = 0.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v89 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
      v90 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v89;
      if (v89)
      {
        v90 = mlir::ValueRange::offset_base(&v193, v89);
        v91 = *(&v193 + 1);
      }

      else
      {
        v91 = 0;
      }

      if (HIDWORD(v89) + v89 == v91)
      {
        v145 = 0;
      }

      else
      {
        v193 = v90;
        v145 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v145;
      v146 = mlir::Value::getDefiningOp(&v193);
      if (!v146 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v146))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v147 = v76;
      v148 = DWORD2(v193);
      v92 = 0.0;
      v93 = 0.0;
      v149 = v147;
      if (v147 < DWORD2(v193))
      {
        v93 = *(v193 + 4 * v147);
        v92 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      if (v149 >= v148)
      {
        goto LABEL_68;
      }
    }

    v94 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
    v95 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v94;
    if (v94)
    {
      v95 = mlir::ValueRange::offset_base(&v193, v94);
    }

    v193 = v95;
    v96 = (*(mlir::ValueRange::dereference_iterator(&v193, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v96)
    {
      v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
    }

    else
    {
      v97 = 0;
    }

    *&v193 = v96;
    *(&v193 + 1) = v97;
    v98 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v100 = v99;
    v101 = *(a1 + 96);
    if (*(v69 + 9))
    {
      v102 = v69 - 16;
    }

    else
    {
      v102 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v102, 0);
    v104 = mlir::TypeConverter::convertType(v101, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v105 = v104;
    if (v104)
    {
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
    }

    *&v193 = v105;
    *(&v193 + 1) = v104;
    v106 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v108 = v107;
    v109 = mlir::anec::getIndexFromDim(3, v100);
    v110 = mlir::anec::getIndexFromDim(4, v108);
    v111 = *(v98 + 8 * v109);
    v112 = *(v98 + 8 * v110);
    v113 = *(v106 + 8 * v109);
    v114 = v93 != 0.0;
    if (v92 != 0.0)
    {
      v114 = 1;
    }

    v115 = (v85 + -1.0) * 0.5 != v93 || (v84 + -1.0) * 0.5 != v92;
    v71 = v152;
    v116 = v112;
    v117 = *(v106 + 8 * v110);
    v118 = v85 != (v113 / v111) || v84 != (v117 / v116);
    v119 = v85 != ((v113 + -1.0) / (v111 + -1.0)) || v84 != ((v117 + -1.0) / (v116 + -1.0));
    if (v114 || v118)
    {
      if (v114 || v119)
      {
        if (v115 || v118)
        {
          goto LABEL_68;
        }

        goto LABEL_78;
      }

LABEL_120:
      *__p = &__p[16];
      *&__p[16] = 0uLL;
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_68:
  *__p = operator new(0x48uLL);
  *&__p[8] = xmmword_1E0982670;
  strcpy(*__p, "Resize with custom scale and offset values not supported on ANE.");
  v75 = *(v161 + 3);
LABEL_72:
  mlir::logMatchFailure(__p, v75, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v58 = 0;
  v59 = 0;
LABEL_148:
  if (v178 != v180)
  {
    free(v178);
  }

  if (v181 != v183)
  {
    free(v181);
  }

  if (v184 != v186)
  {
    free(v184);
  }

LABEL_44:
  if (v187 != v189)
  {
    free(v187);
  }

  if (v190 != v191)
  {
    free(v190);
  }

  if (v59)
  {
    *&v165 = v58 - 16;
    matched = 1;
    mlir::ValueRange::ValueRange(__p, &v165, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *__p, *&__p[8]);
  }

  else
  {
    *__p = operator new(0x60uLL);
    *&__p[8] = xmmword_1E0982860;
    strcpy(*__p, "Conversion did not match a valid resize or a valid transformation supported by the hardware.");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)2>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)2>::~ConvertResize(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  v193[2] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v165 = a3[4];
  v166 = v6;
  *v167 = *(a3 + 12);
  v7 = a3[1];
  v161 = *a3;
  v162 = v7;
  v8 = a3[3];
  v163 = a3[2];
  v164 = v8;
  v157 = a2;
  v193[0] = *(&v166 + 1);
  v193[1] = *v167;
  v9 = a2[3];
  v156 = mlir::ValueRange::dereference_iterator(v193, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v157, 0);
  v11 = (*(*(*(v157 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v155[0] = v11;
  v155[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v161, 0);
  v14 = *(&v166 + 1);
  *__p = *(&v166 + 1);
  *&__p[8] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  *__p = v14;
  *&__p[8] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  *__p = v15;
  *&__p[8] = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::CallableOpInterface::getArgAttrsAttr(v155);
  if (v23 <= 3)
  {
    *__p = &__p[16];
    *&__p[16] = IndexFromDim;
    *&__p[24] = v20;
    *&v174 = v20;
    *(&v174 + 1) = v21;
    *&v175 = v21;
    *(&v175 + 1) = IndexFromDim;
    *&__p[8] = 0x600000006;
    v191 = xmmword_1E0982820;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v25 = mlir::RankedTensorType::get(&v191, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    v168[0] = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, *__p, 8 * *&__p[8], 8, 1, 0);
    v156 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v156, v168) - 16;
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  if (*(v157 + 9))
  {
    v28 = v157 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v148 = IndexFromDim;
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v154[0] = v29;
  v154[1] = v30;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v154);
  v33 = v32;
  *&v191 = v192;
  *(&v191 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v192;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v192, v34, 8);
  v35 = DWORD2(v191);
  v36 = v191;
  v37 = 8 * v33;
  if (v33)
  {
LABEL_25:
    memcpy(v36 + 8 * v35, ArgAttrsAttr, v37);
    v35 = DWORD2(v191);
    v36 = v191;
  }

LABEL_26:
  v38 = v35 + (v37 >> 3);
  DWORD2(v191) = v38;
  v150 = v9;
  if (v38 <= 3)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v191, v36, 4 - v38, 1uLL);
    v36 = v191;
  }

  v39 = *(v36 + v21);
  v40 = *(v36 + v22);
  v188 = v190;
  v190[0] = v39;
  v190[1] = v40;
  v189 = 0x200000002;
  ResizeLayout = mlir::mps::getResizeLayout(v157, v36);
  if ((ResizeLayout & 0x100000000) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E0982800;
    strcpy(*__p, "Resize layout not supported");
LABEL_41:
    mlir::logMatchFailure(__p, *(v157 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v57 = 0;
    v58 = 0;
    goto LABEL_44;
  }

  v42 = ResizeLayout;
  if (ResizeLayout == 1)
  {
    *__p = &__p[16];
    *&__p[16] = v20;
    *&__p[24] = v21;
    *&v174 = v21;
    *(&v174 + 1) = v22;
    *&v175 = v22;
    *(&v175 + 1) = v20;
    *&__p[8] = 0x600000006;
    *v168 = xmmword_1E0982820;
    v43 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(v168, 2, v43, 0);
    if (v44)
    {
      v45 = v44;
      v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v45;
    }

    else
    {
      v46 = 0;
    }

    v185 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, *__p, 8 * *&__p[8], 8, 1, 0);
    v156 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v150, &v156, &v185) - 16;
    v47 = v191;
    v48 = v188;
    *v188 = *(v191 + 8 * v20);
    v48[1] = *(v47 + 8 * v21);
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  v153[0] = 0;
  v153[1] = 0;
  v49 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v157, 1u);
  v50 = *(*(v157 + 9) + 32 * v49 + 24);
  v168[0] = v153;
  *__p = v50;
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v168, DefiningOp) & 1) == 0)
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982850;
    strcpy(*__p, "Shape operand was not a constant");
    goto LABEL_41;
  }

  v147 = v42;
  v185 = v187;
  v187[1] = 0;
  v187[0] = 0;
  v186 = 0x200000002;
  v182 = v184;
  memset_pattern16(v184, &unk_1E096FAE0, 0x10uLL);
  v183 = 0x200000002;
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v157);
  *__p = 2;
  v53 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v54 = mlir::RankedTensorType::get(__p, 1, v53, 0);
  if (v54)
  {
    v55 = v54;
    v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
    v54 = v55;
  }

  else
  {
    v56 = 0;
  }

  if (GateLayout == 1)
  {
    v61 = &v185;
  }

  else
  {
    v61 = &v182;
  }

  v62 = *v61;
  v63 = &v186;
  if (GateLayout != 1)
  {
    v63 = &v183;
  }

  v152 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v62, 8 * *v63, 8, 1, 0);
  v179 = v181;
  v180 = 0x200000000;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v157);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v157);
  v66 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v157, 2u);
  v68 = v157;
  if ((*(v157 + 46) & 0x80) != 0)
  {
    v69 = *(v157 + 9);
  }

  else
  {
    v69 = 0;
  }

  if (HIDWORD(v66) + v66 == v66 || !*(v69 + 32 * v66 + 24))
  {
    v70 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v157, 3u);
    v68 = v157;
    v71 = (*(v157 + 46) & 0x80) != 0 ? *(v157 + 9) : 0;
    if (HIDWORD(v70) + v70 == v70 || !*(v71 + 32 * v70 + 24))
    {
      if (InferredResultTypes)
      {
        if (!IsSize)
        {
          *__p = operator new(0x38uLL);
          *&__p[8] = xmmword_1E0982830;
          strcpy(*__p, "Unsupported alignCorners, centerResult for Resize");
          v73 = *(v68 + 3);
          goto LABEL_72;
        }

        goto LABEL_138;
      }

      if (IsSize)
      {
LABEL_78:
        *__p = &__p[16];
        v78 = &unk_1E096FAE0;
LABEL_119:
        memset_pattern16(&__p[16], v78, 0x10uLL);
        *&__p[8] = 0x600000002;
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v179, __p);
        if (*__p != &__p[16])
        {
          free(*__p);
        }

        *__p = 2;
        v116 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
        v117 = mlir::RankedTensorType::get(__p, 1, v116, 0);
        if (v117)
        {
          v118 = v117;
          v119 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v117 + 8);
          v117 = v118;
        }

        else
        {
          v119 = 0;
        }

        v158 = mlir::DenseElementsAttr::getFromRawBuffer(v117, v119, v179, 8 * v180, 8, 1, 0);
        v120 = v188;
        v121 = llvm::detail::IEEEFloat::IEEEFloat(v168, -1.0);
        v122 = llvm::APFloatBase::IEEEsingle(v121);
        llvm::APFloat::Storage::Storage(&__p[8], v168, v122);
        llvm::detail::IEEEFloat::~IEEEFloat(v168);
        llvm::detail::IEEEFloat::IEEEFloat(&v159, -1.0);
        llvm::APFloat::Storage::Storage(&v168[1], &v159, v122);
        llvm::detail::IEEEFloat::~IEEEFloat(&v159);
        v159 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, v150, &v156, v120, v120 + 1, __p, v168, &v152, &v158);
        v123 = v168[1];
        v124 = llvm::APFloatBase::PPCDoubleDouble(v159);
        if (v124 == v123)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v168[1]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v168[1]);
        }

        if (v124 == *&__p[8])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[8]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&__p[8]);
        }

        v58 = mlir::anec::Resize::verifyAttributesWithFamily(&v159, 2);
        v57 = v159;
        if (v58)
        {
          if (v147 == 1)
          {
            v168[0] = v20;
            v168[1] = v22;
            v169 = v21;
            v170 = v20;
            v171 = v22;
            v172 = v21;
            llvm::SmallVector<long long,6u>::SmallVector(__p, v168, 6);
            *v168 = xmmword_1E0982820;
            v125 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v126 = mlir::RankedTensorType::get(v168, 2, v125, 0);
            if (v126)
            {
              v127 = v126;
              v128 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v126 + 8);
              v126 = v127;
            }

            else
            {
              v128 = 0;
            }

            v151 = mlir::DenseElementsAttr::getFromRawBuffer(v126, v128, *__p, 8 * *&__p[8], 8, 1, 0);
            v57 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(a4 + 1, v150, &v159, &v151);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v155);
          if (v135 <= 3)
          {
            v168[0] = v20;
            v168[1] = v148;
            v169 = v21;
            v170 = v20;
            v171 = v148;
            v172 = v21;
            llvm::SmallVector<long long,6u>::SmallVector(__p, v168, 6);
            *v168 = xmmword_1E0982820;
            v136 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v137 = mlir::RankedTensorType::get(v168, 2, v136, 0);
            if (v137)
            {
              v138 = v137;
              v139 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v137 + 8);
              v137 = v138;
            }

            else
            {
              v139 = 0;
            }

            v151 = mlir::DenseElementsAttr::getFromRawBuffer(v137, v139, *__p, 8 * *&__p[8], 8, 1, 0);
            v168[0] = (v57 - 16);
            v57 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v150, v168, &v151);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          mlir::ConversionPatternRewriter::eraseOp(a4, v159);
          *__p = operator new(0x48uLL);
          *&__p[8] = xmmword_1E0982840;
          strcpy(*__p, "requested attributes are not compatible with hardware requirements");
          mlir::logMatchFailure(__p, *(v157 + 3), a4);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v57 = 0;
        }

        goto LABEL_163;
      }

LABEL_118:
      *__p = &__p[16];
      v78 = &unk_1E0982A50;
      goto LABEL_119;
    }
  }

  v176 = v165;
  v177 = v166;
  *v178 = *v167;
  *__p = v161;
  *&__p[16] = v162;
  v174 = v163;
  v175 = v164;
  v72 = mlir::mps::getResizeLayout(v68, v67);
  if ((v72 & 0x100000000) != 0)
  {
    v74 = qword_1E0982BB8[v72];
    v145 = qword_1E0982BF0[v72];
    v75 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
    v76 = *(&v177 + 1);
    v168[0] = *(&v177 + 1);
    v168[1] = v75;
    if (v75)
    {
      v76 = mlir::ValueRange::offset_base(v168, v75);
      v77 = v168[1];
    }

    else
    {
      v77 = 0;
    }

    if ((HIDWORD(v75) + v75) == v77 || (v168[0] = v76, v168[1] = 0, !mlir::ValueRange::dereference_iterator(v168, 0)))
    {
      v82 = 1.0;
      v83 = 1.0;
    }

    else
    {
      v159 = 0;
      v160 = 0;
      v79 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
      v80 = *(&v177 + 1);
      v168[0] = *(&v177 + 1);
      v168[1] = v79;
      if (v79)
      {
        v80 = mlir::ValueRange::offset_base(v168, v79);
        v81 = v168[1];
      }

      else
      {
        v81 = 0;
      }

      if ((HIDWORD(v79) + v79) == v81)
      {
        v129 = 0;
      }

      else
      {
        v168[0] = v80;
        v168[1] = 0;
        v129 = mlir::ValueRange::dereference_iterator(v168, 0);
      }

      v158 = &v159;
      v168[0] = v129;
      v130 = mlir::Value::getDefiningOp(v168);
      if (!v130 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v158, v130))
      {
        goto LABEL_68;
      }

      v168[0] = &v169;
      v168[1] = 0x400000000;
      mlir::getFloatValues<float>(v159, v160, v168, 1);
      v131 = v74;
      v132 = LODWORD(v168[1]);
      v82 = 1.0;
      v83 = 1.0;
      v133 = v131;
      if (v131 < LODWORD(v168[1]))
      {
        v83 = *(v168[0] + v131);
        v82 = *(v168[0] + v145);
      }

      if (v168[0] != &v169)
      {
        free(v168[0]);
      }

      v134 = v133 >= v132;
      v74 = v133;
      if (v134)
      {
        goto LABEL_68;
      }
    }

    v84 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
    v85 = *(&v177 + 1);
    v168[0] = *(&v177 + 1);
    v168[1] = v84;
    if (v84)
    {
      v85 = mlir::ValueRange::offset_base(v168, v84);
      v86 = v168[1];
    }

    else
    {
      v86 = 0;
    }

    if ((HIDWORD(v84) + v84) == v86 || (v168[0] = v85, v168[1] = 0, !mlir::ValueRange::dereference_iterator(v168, 0)))
    {
      v90 = 0.0;
      v91 = 0.0;
    }

    else
    {
      v159 = 0;
      v160 = 0;
      v87 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
      v88 = *(&v177 + 1);
      v168[0] = *(&v177 + 1);
      v168[1] = v87;
      if (v87)
      {
        v88 = mlir::ValueRange::offset_base(v168, v87);
        v89 = v168[1];
      }

      else
      {
        v89 = 0;
      }

      if ((HIDWORD(v87) + v87) == v89)
      {
        v140 = 0;
      }

      else
      {
        v168[0] = v88;
        v168[1] = 0;
        v140 = mlir::ValueRange::dereference_iterator(v168, 0);
      }

      v158 = &v159;
      v168[0] = v140;
      v141 = mlir::Value::getDefiningOp(v168);
      if (!v141 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v158, v141))
      {
        goto LABEL_68;
      }

      v168[0] = &v169;
      v168[1] = 0x400000000;
      mlir::getFloatValues<float>(v159, v160, v168, 1);
      v142 = v74;
      v143 = LODWORD(v168[1]);
      v90 = 0.0;
      v91 = 0.0;
      v144 = v142;
      if (v142 < LODWORD(v168[1]))
      {
        v91 = *(v168[0] + v142);
        v90 = *(v168[0] + v145);
      }

      if (v168[0] != &v169)
      {
        free(v168[0]);
      }

      if (v144 >= v143)
      {
        goto LABEL_68;
      }
    }

    v92 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
    v93 = *(&v177 + 1);
    v168[0] = *(&v177 + 1);
    v168[1] = v92;
    if (v92)
    {
      v93 = mlir::ValueRange::offset_base(v168, v92);
    }

    v168[0] = v93;
    v168[1] = 0;
    v94 = (*(mlir::ValueRange::dereference_iterator(v168, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v94)
    {
      v95 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v94 + 8);
    }

    else
    {
      v95 = 0;
    }

    v168[0] = v94;
    v168[1] = v95;
    v146 = mlir::CallableOpInterface::getArgAttrsAttr(v168);
    v97 = v96;
    v98 = *(a1 + 96);
    if (*(v68 + 9))
    {
      v99 = v68 - 16;
    }

    else
    {
      v99 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v99, 0);
    v101 = mlir::TypeConverter::convertType(v98, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v102 = v101;
    if (v101)
    {
      v101 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8);
    }

    v168[0] = v102;
    v168[1] = v101;
    v103 = mlir::CallableOpInterface::getArgAttrsAttr(v168);
    v105 = v104;
    v106 = mlir::anec::getIndexFromDim(3, v97);
    v107 = mlir::anec::getIndexFromDim(4, v105);
    v108 = *(v146 + 8 * v106);
    v109 = *(v103 + 8 * v106);
    v110 = v91 != 0.0;
    if (v90 != 0.0)
    {
      v110 = 1;
    }

    v111 = (v83 + -1.0) * 0.5 != v91 || (v82 + -1.0) * 0.5 != v90;
    v112 = *(v146 + 8 * v107);
    v113 = *(v103 + 8 * v107);
    v114 = v83 != (v109 / v108) || v82 != (v113 / v112);
    v115 = v83 != ((v109 + -1.0) / (v108 + -1.0)) || v82 != ((v113 + -1.0) / (v112 + -1.0));
    if (v110 || v114)
    {
      if (v110 || v115)
      {
        if (v111 || v114)
        {
          goto LABEL_68;
        }

        goto LABEL_78;
      }

      v68 = v157;
LABEL_138:
      *__p = operator new(0x50uLL);
      *&__p[8] = xmmword_1E09827D0;
      strcpy(*__p, "Resize alignCorners == centerResult == true is not supported on A14-class ANEs.");
      mlir::logMatchFailure(__p, *(v68 + 3), a4);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v57 = 0;
      v58 = 0;
      goto LABEL_163;
    }

    goto LABEL_118;
  }

LABEL_68:
  *__p = operator new(0x48uLL);
  *&__p[8] = xmmword_1E0982670;
  strcpy(*__p, "Resize with custom scale and offset values not supported on ANE.");
  v73 = *(v157 + 3);
LABEL_72:
  mlir::logMatchFailure(__p, v73, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v57 = 0;
  v58 = 0;
LABEL_163:
  if (v179 != v181)
  {
    free(v179);
  }

  if (v182 != v184)
  {
    free(v182);
  }

  if (v185 != v187)
  {
    free(v185);
  }

LABEL_44:
  if (v188 != v190)
  {
    free(v188);
  }

  if (v191 != v192)
  {
    free(v191);
  }

  if (v58)
  {
    *&v161 = v57 - 16;
    matched = 1;
    mlir::ValueRange::ValueRange(__p, &v161, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *__p, *&__p[8]);
  }

  else
  {
    *__p = operator new(0x60uLL);
    *&__p[8] = xmmword_1E0982860;
    strcpy(*__p, "Conversion did not match a valid resize or a valid transformation supported by the hardware.");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)3>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)3>::~ConvertResize(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  v194[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v169 = a3[4];
  v170 = v6;
  *v171 = *(a3 + 12);
  v7 = a3[1];
  v165 = *a3;
  v166 = v7;
  v8 = a3[3];
  v167 = a3[2];
  v168 = v8;
  v161 = a2;
  v192[0] = *(&v170 + 1);
  v192[1] = *v171;
  v9 = a2[3];
  v160 = mlir::ValueRange::dereference_iterator(v192, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 0);
  v11 = (*(*(*(v161 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v159[0] = v11;
  v159[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v165, 0);
  v14 = *(&v170 + 1);
  *__p = *(&v170 + 1);
  *&__p[8] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  *__p = v14;
  *&__p[8] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  *__p = v15;
  *&__p[8] = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::CallableOpInterface::getArgAttrsAttr(v159);
  if (v23 <= 3)
  {
    *__p = &__p[16];
    *&__p[16] = IndexFromDim;
    *&__p[24] = v20;
    *&v173 = v20;
    *(&v173 + 1) = v21;
    *&v174 = v21;
    *(&v174 + 1) = IndexFromDim;
    *&__p[8] = 0x600000006;
    v190 = xmmword_1E0982820;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v25 = mlir::RankedTensorType::get(&v190, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    *&v193 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v193) - 16;
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  if (*(v161 + 9))
  {
    v28 = v161 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v158[0] = v29;
  v158[1] = v30;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v158);
  v33 = v32;
  *&v190 = v191;
  *(&v190 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  v154 = v22;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v191;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v190, v191, v34, 8);
  v35 = DWORD2(v190);
  v36 = v190;
  v37 = 8 * v33;
  if (v33)
  {
LABEL_25:
    memcpy(v36 + 8 * v35, ArgAttrsAttr, v37);
    v35 = DWORD2(v190);
    v36 = v190;
  }

LABEL_26:
  v38 = v35 + (v37 >> 3);
  DWORD2(v190) = v38;
  if (v38 <= 3)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v190, v36, 4 - v38, 1uLL);
    v36 = v190;
  }

  v39 = *(v36 + v21);
  v40 = *(v36 + v154);
  v187 = v189;
  v189[0] = v39;
  v189[1] = v40;
  v188 = 0x200000002;
  ResizeLayout = mlir::mps::getResizeLayout(v161, v36);
  if ((ResizeLayout & 0x100000000) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E0982800;
    strcpy(*__p, "Resize layout not supported");
LABEL_41:
    mlir::logMatchFailure(__p, *(v161 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v58 = 0;
    v59 = 0;
    goto LABEL_44;
  }

  v42 = ResizeLayout;
  if (ResizeLayout == 1)
  {
    *__p = &__p[16];
    *&__p[16] = v20;
    *&__p[24] = v21;
    *&v173 = v21;
    *(&v173 + 1) = v154;
    *&v174 = v154;
    *(&v174 + 1) = v20;
    *&__p[8] = 0x600000006;
    v193 = xmmword_1E0982820;
    v43 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(&v193, 2, v43, 0);
    if (v44)
    {
      v45 = v9;
      v46 = v44;
      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v46;
      v9 = v45;
    }

    else
    {
      v47 = 0;
    }

    v184 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v47, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v184) - 16;
    v48 = v190;
    v49 = v187;
    *v187 = *(v190 + 8 * v20);
    v49[1] = *(v48 + 8 * v21);
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  v157[0] = 0;
  v157[1] = 0;
  v50 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 1u);
  v51 = *(*(v161 + 9) + 32 * v50 + 24);
  *&v193 = v157;
  *__p = v51;
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v193, DefiningOp) & 1) == 0)
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982850;
    strcpy(*__p, "Shape operand was not a constant");
    goto LABEL_41;
  }

  v151 = v42;
  v152 = v9;
  v184 = v186;
  v186[1] = 0;
  v186[0] = 0;
  v185 = 0x200000002;
  v181 = v183;
  memset_pattern16(v183, &unk_1E096FAE0, 0x10uLL);
  v182 = 0x200000002;
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v161);
  *__p = 2;
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(__p, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (GateLayout == 1)
  {
    v62 = &v184;
  }

  else
  {
    v62 = &v181;
  }

  v63 = *v62;
  v64 = &v185;
  if (GateLayout != 1)
  {
    v64 = &v182;
  }

  v156 = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v63, 8 * *v64, 8, 1, 0);
  v178 = v180;
  v179 = 0x200000000;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v161);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v161);
  v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 2u);
  v69 = v161;
  if ((*(v161 + 46) & 0x80) != 0)
  {
    v70 = *(v161 + 9);
  }

  else
  {
    v70 = 0;
  }

  v71 = v152;
  if (HIDWORD(v67) + v67 == v67 || !*(v70 + 32 * v67 + 24))
  {
    v72 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 3u);
    v69 = v161;
    v73 = (*(v161 + 46) & 0x80) != 0 ? *(v161 + 9) : 0;
    if (HIDWORD(v72) + v72 == v72 || !*(v73 + 32 * v72 + 24))
    {
      if (InferredResultTypes)
      {
        if (!IsSize)
        {
          *__p = operator new(0x38uLL);
          *&__p[8] = xmmword_1E0982830;
          strcpy(*__p, "Unsupported alignCorners, centerResult for Resize");
          v75 = *(v69 + 3);
          goto LABEL_72;
        }

        goto LABEL_120;
      }

      if (IsSize)
      {
LABEL_78:
        *__p = &__p[16];
        v80 = &unk_1E096FAE0;
LABEL_119:
        memset_pattern16(&__p[16], v80, 0x10uLL);
LABEL_121:
        *&__p[8] = 0x600000002;
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v178, __p);
        if (*__p != &__p[16])
        {
          free(*__p);
        }

        *__p = 2;
        v120 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
        v121 = mlir::RankedTensorType::get(__p, 1, v120, 0);
        if (v121)
        {
          v122 = v121;
          v123 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v121 + 8);
          v121 = v122;
        }

        else
        {
          v123 = 0;
        }

        v162 = mlir::DenseElementsAttr::getFromRawBuffer(v121, v123, v178, 8 * v179, 8, 1, 0);
        v124 = v187;
        v125 = llvm::detail::IEEEFloat::IEEEFloat(&v193, -1.0);
        v126 = llvm::APFloatBase::IEEEsingle(v125);
        llvm::APFloat::Storage::Storage(&__p[8], &v193, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v193);
        llvm::detail::IEEEFloat::IEEEFloat(&v163, -1.0);
        llvm::APFloat::Storage::Storage(&v193 + 8, &v163, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v163);
        v163 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, v71, &v160, v124, v124 + 1, __p, &v193, &v156, &v162);
        v127 = *(&v193 + 1);
        v128 = llvm::APFloatBase::PPCDoubleDouble(v163);
        if (v128 == v127)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v193 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v193 + 8));
        }

        v129 = v152;
        if (v128 == *&__p[8])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[8]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&__p[8]);
        }

        v59 = mlir::anec::Resize::verifyAttributesWithFamily(&v163, 3);
        v58 = v163;
        if (v59)
        {
          if (v151 == 1)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = v154;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = v154;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v130 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v131 = mlir::RankedTensorType::get(&v193, 2, v130, 0);
            if (v131)
            {
              v132 = v131;
              v133 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v131 + 8);
              v131 = v132;
              v129 = v152;
            }

            else
            {
              v133 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v131, v133, *__p, 8 * *&__p[8], 8, 1, 0);
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(a4 + 1, v129, &v163, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v159);
          if (v134 <= 3)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = IndexFromDim;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = IndexFromDim;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v135 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v136 = mlir::RankedTensorType::get(&v193, 2, v135, 0);
            if (v136)
            {
              v137 = v136;
              v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
              v136 = v137;
            }

            else
            {
              v138 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v136, v138, *__p, 8 * *&__p[8], 8, 1, 0);
            *&v193 = v58 - 16;
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v152, &v193, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          mlir::ConversionPatternRewriter::eraseOp(a4, v163);
          *__p = operator new(0x48uLL);
          *&__p[8] = xmmword_1E0982840;
          strcpy(*__p, "requested attributes are not compatible with hardware requirements");
          mlir::logMatchFailure(__p, *(v161 + 3), a4);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v58 = 0;
        }

        goto LABEL_148;
      }

LABEL_118:
      *__p = &__p[16];
      v80 = &unk_1E0982A50;
      goto LABEL_119;
    }
  }

  v175 = v169;
  v176 = v170;
  *v177 = *v171;
  *__p = v165;
  *&__p[16] = v166;
  v173 = v167;
  v174 = v168;
  v74 = mlir::mps::getResizeLayout(v69, v68);
  if ((v74 & 0x100000000) != 0)
  {
    v76 = qword_1E0982BB8[v74];
    v150 = qword_1E0982BF0[v74];
    v77 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
    v78 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v77;
    if (v77)
    {
      v78 = mlir::ValueRange::offset_base(&v193, v77);
      v79 = *(&v193 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (HIDWORD(v77) + v77 == v79 || (v193 = v78, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v84 = 1.0;
      v85 = 1.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v81 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
      v82 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v81;
      if (v81)
      {
        v82 = mlir::ValueRange::offset_base(&v193, v81);
        v83 = *(&v193 + 1);
      }

      else
      {
        v83 = 0;
      }

      if (HIDWORD(v81) + v81 == v83)
      {
        v139 = 0;
      }

      else
      {
        v193 = v82;
        v139 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v139;
      v140 = mlir::Value::getDefiningOp(&v193);
      if (!v140 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v140))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v141 = v76;
      v142 = DWORD2(v193);
      v84 = 1.0;
      v85 = 1.0;
      v143 = v141;
      if (v141 < DWORD2(v193))
      {
        v85 = *(v193 + 4 * v141);
        v84 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      v144 = v143 >= v142;
      v76 = v143;
      if (v144)
      {
        goto LABEL_68;
      }
    }

    v86 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
    v87 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v86;
    if (v86)
    {
      v87 = mlir::ValueRange::offset_base(&v193, v86);
      v88 = *(&v193 + 1);
    }

    else
    {
      v88 = 0;
    }

    if (HIDWORD(v86) + v86 == v88 || (v193 = v87, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v92 = 0.0;
      v93 = 0.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v89 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
      v90 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v89;
      if (v89)
      {
        v90 = mlir::ValueRange::offset_base(&v193, v89);
        v91 = *(&v193 + 1);
      }

      else
      {
        v91 = 0;
      }

      if (HIDWORD(v89) + v89 == v91)
      {
        v145 = 0;
      }

      else
      {
        v193 = v90;
        v145 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v145;
      v146 = mlir::Value::getDefiningOp(&v193);
      if (!v146 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v146))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v147 = v76;
      v148 = DWORD2(v193);
      v92 = 0.0;
      v93 = 0.0;
      v149 = v147;
      if (v147 < DWORD2(v193))
      {
        v93 = *(v193 + 4 * v147);
        v92 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      if (v149 >= v148)
      {
        goto LABEL_68;
      }
    }

    v94 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
    v95 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v94;
    if (v94)
    {
      v95 = mlir::ValueRange::offset_base(&v193, v94);
    }

    v193 = v95;
    v96 = (*(mlir::ValueRange::dereference_iterator(&v193, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v96)
    {
      v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
    }

    else
    {
      v97 = 0;
    }

    *&v193 = v96;
    *(&v193 + 1) = v97;
    v98 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v100 = v99;
    v101 = *(a1 + 96);
    if (*(v69 + 9))
    {
      v102 = v69 - 16;
    }

    else
    {
      v102 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v102, 0);
    v104 = mlir::TypeConverter::convertType(v101, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v105 = v104;
    if (v104)
    {
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
    }

    *&v193 = v105;
    *(&v193 + 1) = v104;
    v106 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v108 = v107;
    v109 = mlir::anec::getIndexFromDim(3, v100);
    v110 = mlir::anec::getIndexFromDim(4, v108);
    v111 = *(v98 + 8 * v109);
    v112 = *(v98 + 8 * v110);
    v113 = *(v106 + 8 * v109);
    v114 = v93 != 0.0;
    if (v92 != 0.0)
    {
      v114 = 1;
    }

    v115 = (v85 + -1.0) * 0.5 != v93 || (v84 + -1.0) * 0.5 != v92;
    v71 = v152;
    v116 = v112;
    v117 = *(v106 + 8 * v110);
    v118 = v85 != (v113 / v111) || v84 != (v117 / v116);
    v119 = v85 != ((v113 + -1.0) / (v111 + -1.0)) || v84 != ((v117 + -1.0) / (v116 + -1.0));
    if (v114 || v118)
    {
      if (v114 || v119)
      {
        if (v115 || v118)
        {
          goto LABEL_68;
        }

        goto LABEL_78;
      }

LABEL_120:
      *__p = &__p[16];
      *&__p[16] = 0uLL;
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_68:
  *__p = operator new(0x48uLL);
  *&__p[8] = xmmword_1E0982670;
  strcpy(*__p, "Resize with custom scale and offset values not supported on ANE.");
  v75 = *(v161 + 3);
LABEL_72:
  mlir::logMatchFailure(__p, v75, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v58 = 0;
  v59 = 0;
LABEL_148:
  if (v178 != v180)
  {
    free(v178);
  }

  if (v181 != v183)
  {
    free(v181);
  }

  if (v184 != v186)
  {
    free(v184);
  }

LABEL_44:
  if (v187 != v189)
  {
    free(v187);
  }

  if (v190 != v191)
  {
    free(v190);
  }

  if (v59)
  {
    *&v165 = v58 - 16;
    matched = 1;
    mlir::ValueRange::ValueRange(__p, &v165, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *__p, *&__p[8]);
  }

  else
  {
    *__p = operator new(0x60uLL);
    *&__p[8] = xmmword_1E0982860;
    strcpy(*__p, "Conversion did not match a valid resize or a valid transformation supported by the hardware.");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)4>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)4>::~ConvertResize(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  v194[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v169 = a3[4];
  v170 = v6;
  *v171 = *(a3 + 12);
  v7 = a3[1];
  v165 = *a3;
  v166 = v7;
  v8 = a3[3];
  v167 = a3[2];
  v168 = v8;
  v161 = a2;
  v192[0] = *(&v170 + 1);
  v192[1] = *v171;
  v9 = a2[3];
  v160 = mlir::ValueRange::dereference_iterator(v192, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 0);
  v11 = (*(*(*(v161 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v159[0] = v11;
  v159[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v165, 0);
  v14 = *(&v170 + 1);
  *__p = *(&v170 + 1);
  *&__p[8] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  *__p = v14;
  *&__p[8] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  *__p = v15;
  *&__p[8] = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::CallableOpInterface::getArgAttrsAttr(v159);
  if (v23 <= 3)
  {
    *__p = &__p[16];
    *&__p[16] = IndexFromDim;
    *&__p[24] = v20;
    *&v173 = v20;
    *(&v173 + 1) = v21;
    *&v174 = v21;
    *(&v174 + 1) = IndexFromDim;
    *&__p[8] = 0x600000006;
    v190 = xmmword_1E0982820;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v25 = mlir::RankedTensorType::get(&v190, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    *&v193 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v193) - 16;
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  if (*(v161 + 9))
  {
    v28 = v161 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v158[0] = v29;
  v158[1] = v30;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v158);
  v33 = v32;
  *&v190 = v191;
  *(&v190 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  v154 = v22;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v191;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v190, v191, v34, 8);
  v35 = DWORD2(v190);
  v36 = v190;
  v37 = 8 * v33;
  if (v33)
  {
LABEL_25:
    memcpy(v36 + 8 * v35, ArgAttrsAttr, v37);
    v35 = DWORD2(v190);
    v36 = v190;
  }

LABEL_26:
  v38 = v35 + (v37 >> 3);
  DWORD2(v190) = v38;
  if (v38 <= 3)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v190, v36, 4 - v38, 1uLL);
    v36 = v190;
  }

  v39 = *(v36 + v21);
  v40 = *(v36 + v154);
  v187 = v189;
  v189[0] = v39;
  v189[1] = v40;
  v188 = 0x200000002;
  ResizeLayout = mlir::mps::getResizeLayout(v161, v36);
  if ((ResizeLayout & 0x100000000) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E0982800;
    strcpy(*__p, "Resize layout not supported");
LABEL_41:
    mlir::logMatchFailure(__p, *(v161 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v58 = 0;
    v59 = 0;
    goto LABEL_44;
  }

  v42 = ResizeLayout;
  if (ResizeLayout == 1)
  {
    *__p = &__p[16];
    *&__p[16] = v20;
    *&__p[24] = v21;
    *&v173 = v21;
    *(&v173 + 1) = v154;
    *&v174 = v154;
    *(&v174 + 1) = v20;
    *&__p[8] = 0x600000006;
    v193 = xmmword_1E0982820;
    v43 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(&v193, 2, v43, 0);
    if (v44)
    {
      v45 = v9;
      v46 = v44;
      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v46;
      v9 = v45;
    }

    else
    {
      v47 = 0;
    }

    v184 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v47, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v184) - 16;
    v48 = v190;
    v49 = v187;
    *v187 = *(v190 + 8 * v20);
    v49[1] = *(v48 + 8 * v21);
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  v157[0] = 0;
  v157[1] = 0;
  v50 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 1u);
  v51 = *(*(v161 + 9) + 32 * v50 + 24);
  *&v193 = v157;
  *__p = v51;
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v193, DefiningOp) & 1) == 0)
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982850;
    strcpy(*__p, "Shape operand was not a constant");
    goto LABEL_41;
  }

  v151 = v42;
  v152 = v9;
  v184 = v186;
  v186[1] = 0;
  v186[0] = 0;
  v185 = 0x200000002;
  v181 = v183;
  memset_pattern16(v183, &unk_1E096FAE0, 0x10uLL);
  v182 = 0x200000002;
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v161);
  *__p = 2;
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(__p, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (GateLayout == 1)
  {
    v62 = &v184;
  }

  else
  {
    v62 = &v181;
  }

  v63 = *v62;
  v64 = &v185;
  if (GateLayout != 1)
  {
    v64 = &v182;
  }

  v156 = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v63, 8 * *v64, 8, 1, 0);
  v178 = v180;
  v179 = 0x200000000;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v161);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v161);
  v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 2u);
  v69 = v161;
  if ((*(v161 + 46) & 0x80) != 0)
  {
    v70 = *(v161 + 9);
  }

  else
  {
    v70 = 0;
  }

  v71 = v152;
  if (HIDWORD(v67) + v67 == v67 || !*(v70 + 32 * v67 + 24))
  {
    v72 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 3u);
    v69 = v161;
    v73 = (*(v161 + 46) & 0x80) != 0 ? *(v161 + 9) : 0;
    if (HIDWORD(v72) + v72 == v72 || !*(v73 + 32 * v72 + 24))
    {
      if (InferredResultTypes)
      {
        if (!IsSize)
        {
          *__p = operator new(0x38uLL);
          *&__p[8] = xmmword_1E0982830;
          strcpy(*__p, "Unsupported alignCorners, centerResult for Resize");
          v75 = *(v69 + 3);
          goto LABEL_72;
        }

        goto LABEL_120;
      }

      if (IsSize)
      {
LABEL_78:
        *__p = &__p[16];
        v80 = &unk_1E096FAE0;
LABEL_119:
        memset_pattern16(&__p[16], v80, 0x10uLL);
LABEL_121:
        *&__p[8] = 0x600000002;
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v178, __p);
        if (*__p != &__p[16])
        {
          free(*__p);
        }

        *__p = 2;
        v120 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
        v121 = mlir::RankedTensorType::get(__p, 1, v120, 0);
        if (v121)
        {
          v122 = v121;
          v123 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v121 + 8);
          v121 = v122;
        }

        else
        {
          v123 = 0;
        }

        v162 = mlir::DenseElementsAttr::getFromRawBuffer(v121, v123, v178, 8 * v179, 8, 1, 0);
        v124 = v187;
        v125 = llvm::detail::IEEEFloat::IEEEFloat(&v193, -1.0);
        v126 = llvm::APFloatBase::IEEEsingle(v125);
        llvm::APFloat::Storage::Storage(&__p[8], &v193, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v193);
        llvm::detail::IEEEFloat::IEEEFloat(&v163, -1.0);
        llvm::APFloat::Storage::Storage(&v193 + 8, &v163, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v163);
        v163 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, v71, &v160, v124, v124 + 1, __p, &v193, &v156, &v162);
        v127 = *(&v193 + 1);
        v128 = llvm::APFloatBase::PPCDoubleDouble(v163);
        if (v128 == v127)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v193 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v193 + 8));
        }

        v129 = v152;
        if (v128 == *&__p[8])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[8]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&__p[8]);
        }

        v59 = mlir::anec::Resize::verifyAttributesWithFamily(&v163, 4);
        v58 = v163;
        if (v59)
        {
          if (v151 == 1)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = v154;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = v154;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v130 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v131 = mlir::RankedTensorType::get(&v193, 2, v130, 0);
            if (v131)
            {
              v132 = v131;
              v133 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v131 + 8);
              v131 = v132;
              v129 = v152;
            }

            else
            {
              v133 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v131, v133, *__p, 8 * *&__p[8], 8, 1, 0);
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(a4 + 1, v129, &v163, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v159);
          if (v134 <= 3)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = IndexFromDim;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = IndexFromDim;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v135 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v136 = mlir::RankedTensorType::get(&v193, 2, v135, 0);
            if (v136)
            {
              v137 = v136;
              v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
              v136 = v137;
            }

            else
            {
              v138 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v136, v138, *__p, 8 * *&__p[8], 8, 1, 0);
            *&v193 = v58 - 16;
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v152, &v193, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          mlir::ConversionPatternRewriter::eraseOp(a4, v163);
          *__p = operator new(0x48uLL);
          *&__p[8] = xmmword_1E0982840;
          strcpy(*__p, "requested attributes are not compatible with hardware requirements");
          mlir::logMatchFailure(__p, *(v161 + 3), a4);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v58 = 0;
        }

        goto LABEL_148;
      }

LABEL_118:
      *__p = &__p[16];
      v80 = &unk_1E0982A50;
      goto LABEL_119;
    }
  }

  v175 = v169;
  v176 = v170;
  *v177 = *v171;
  *__p = v165;
  *&__p[16] = v166;
  v173 = v167;
  v174 = v168;
  v74 = mlir::mps::getResizeLayout(v69, v68);
  if ((v74 & 0x100000000) != 0)
  {
    v76 = qword_1E0982BB8[v74];
    v150 = qword_1E0982BF0[v74];
    v77 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
    v78 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v77;
    if (v77)
    {
      v78 = mlir::ValueRange::offset_base(&v193, v77);
      v79 = *(&v193 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (HIDWORD(v77) + v77 == v79 || (v193 = v78, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v84 = 1.0;
      v85 = 1.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v81 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
      v82 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v81;
      if (v81)
      {
        v82 = mlir::ValueRange::offset_base(&v193, v81);
        v83 = *(&v193 + 1);
      }

      else
      {
        v83 = 0;
      }

      if (HIDWORD(v81) + v81 == v83)
      {
        v139 = 0;
      }

      else
      {
        v193 = v82;
        v139 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v139;
      v140 = mlir::Value::getDefiningOp(&v193);
      if (!v140 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v140))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v141 = v76;
      v142 = DWORD2(v193);
      v84 = 1.0;
      v85 = 1.0;
      v143 = v141;
      if (v141 < DWORD2(v193))
      {
        v85 = *(v193 + 4 * v141);
        v84 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      v144 = v143 >= v142;
      v76 = v143;
      if (v144)
      {
        goto LABEL_68;
      }
    }

    v86 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
    v87 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v86;
    if (v86)
    {
      v87 = mlir::ValueRange::offset_base(&v193, v86);
      v88 = *(&v193 + 1);
    }

    else
    {
      v88 = 0;
    }

    if (HIDWORD(v86) + v86 == v88 || (v193 = v87, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v92 = 0.0;
      v93 = 0.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v89 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
      v90 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v89;
      if (v89)
      {
        v90 = mlir::ValueRange::offset_base(&v193, v89);
        v91 = *(&v193 + 1);
      }

      else
      {
        v91 = 0;
      }

      if (HIDWORD(v89) + v89 == v91)
      {
        v145 = 0;
      }

      else
      {
        v193 = v90;
        v145 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v145;
      v146 = mlir::Value::getDefiningOp(&v193);
      if (!v146 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v146))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v147 = v76;
      v148 = DWORD2(v193);
      v92 = 0.0;
      v93 = 0.0;
      v149 = v147;
      if (v147 < DWORD2(v193))
      {
        v93 = *(v193 + 4 * v147);
        v92 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      if (v149 >= v148)
      {
        goto LABEL_68;
      }
    }

    v94 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
    v95 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v94;
    if (v94)
    {
      v95 = mlir::ValueRange::offset_base(&v193, v94);
    }

    v193 = v95;
    v96 = (*(mlir::ValueRange::dereference_iterator(&v193, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v96)
    {
      v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
    }

    else
    {
      v97 = 0;
    }

    *&v193 = v96;
    *(&v193 + 1) = v97;
    v98 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v100 = v99;
    v101 = *(a1 + 96);
    if (*(v69 + 9))
    {
      v102 = v69 - 16;
    }

    else
    {
      v102 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v102, 0);
    v104 = mlir::TypeConverter::convertType(v101, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v105 = v104;
    if (v104)
    {
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
    }

    *&v193 = v105;
    *(&v193 + 1) = v104;
    v106 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v108 = v107;
    v109 = mlir::anec::getIndexFromDim(3, v100);
    v110 = mlir::anec::getIndexFromDim(4, v108);
    v111 = *(v98 + 8 * v109);
    v112 = *(v98 + 8 * v110);
    v113 = *(v106 + 8 * v109);
    v114 = v93 != 0.0;
    if (v92 != 0.0)
    {
      v114 = 1;
    }

    v115 = (v85 + -1.0) * 0.5 != v93 || (v84 + -1.0) * 0.5 != v92;
    v71 = v152;
    v116 = v112;
    v117 = *(v106 + 8 * v110);
    v118 = v85 != (v113 / v111) || v84 != (v117 / v116);
    v119 = v85 != ((v113 + -1.0) / (v111 + -1.0)) || v84 != ((v117 + -1.0) / (v116 + -1.0));
    if (v114 || v118)
    {
      if (v114 || v119)
      {
        if (v115 || v118)
        {
          goto LABEL_68;
        }

        goto LABEL_78;
      }

LABEL_120:
      *__p = &__p[16];
      *&__p[16] = 0uLL;
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_68:
  *__p = operator new(0x48uLL);
  *&__p[8] = xmmword_1E0982670;
  strcpy(*__p, "Resize with custom scale and offset values not supported on ANE.");
  v75 = *(v161 + 3);
LABEL_72:
  mlir::logMatchFailure(__p, v75, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v58 = 0;
  v59 = 0;
LABEL_148:
  if (v178 != v180)
  {
    free(v178);
  }

  if (v181 != v183)
  {
    free(v181);
  }

  if (v184 != v186)
  {
    free(v184);
  }

LABEL_44:
  if (v187 != v189)
  {
    free(v187);
  }

  if (v190 != v191)
  {
    free(v190);
  }

  if (v59)
  {
    *&v165 = v58 - 16;
    matched = 1;
    mlir::ValueRange::ValueRange(__p, &v165, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *__p, *&__p[8]);
  }

  else
  {
    *__p = operator new(0x60uLL);
    *&__p[8] = xmmword_1E0982860;
    strcpy(*__p, "Conversion did not match a valid resize or a valid transformation supported by the hardware.");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)5>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)5>::~ConvertResize(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  v194[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v169 = a3[4];
  v170 = v6;
  *v171 = *(a3 + 12);
  v7 = a3[1];
  v165 = *a3;
  v166 = v7;
  v8 = a3[3];
  v167 = a3[2];
  v168 = v8;
  v161 = a2;
  v192[0] = *(&v170 + 1);
  v192[1] = *v171;
  v9 = a2[3];
  v160 = mlir::ValueRange::dereference_iterator(v192, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 0);
  v11 = (*(*(*(v161 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v159[0] = v11;
  v159[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v165, 0);
  v14 = *(&v170 + 1);
  *__p = *(&v170 + 1);
  *&__p[8] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  *__p = v14;
  *&__p[8] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  *__p = v15;
  *&__p[8] = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::CallableOpInterface::getArgAttrsAttr(v159);
  if (v23 <= 3)
  {
    *__p = &__p[16];
    *&__p[16] = IndexFromDim;
    *&__p[24] = v20;
    *&v173 = v20;
    *(&v173 + 1) = v21;
    *&v174 = v21;
    *(&v174 + 1) = IndexFromDim;
    *&__p[8] = 0x600000006;
    v190 = xmmword_1E0982820;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v25 = mlir::RankedTensorType::get(&v190, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    *&v193 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v193) - 16;
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  if (*(v161 + 9))
  {
    v28 = v161 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v158[0] = v29;
  v158[1] = v30;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v158);
  v33 = v32;
  *&v190 = v191;
  *(&v190 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  v154 = v22;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v191;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v190, v191, v34, 8);
  v35 = DWORD2(v190);
  v36 = v190;
  v37 = 8 * v33;
  if (v33)
  {
LABEL_25:
    memcpy(v36 + 8 * v35, ArgAttrsAttr, v37);
    v35 = DWORD2(v190);
    v36 = v190;
  }

LABEL_26:
  v38 = v35 + (v37 >> 3);
  DWORD2(v190) = v38;
  if (v38 <= 3)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v190, v36, 4 - v38, 1uLL);
    v36 = v190;
  }

  v39 = *(v36 + v21);
  v40 = *(v36 + v154);
  v187 = v189;
  v189[0] = v39;
  v189[1] = v40;
  v188 = 0x200000002;
  ResizeLayout = mlir::mps::getResizeLayout(v161, v36);
  if ((ResizeLayout & 0x100000000) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E0982800;
    strcpy(*__p, "Resize layout not supported");
LABEL_41:
    mlir::logMatchFailure(__p, *(v161 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v58 = 0;
    v59 = 0;
    goto LABEL_44;
  }

  v42 = ResizeLayout;
  if (ResizeLayout == 1)
  {
    *__p = &__p[16];
    *&__p[16] = v20;
    *&__p[24] = v21;
    *&v173 = v21;
    *(&v173 + 1) = v154;
    *&v174 = v154;
    *(&v174 + 1) = v20;
    *&__p[8] = 0x600000006;
    v193 = xmmword_1E0982820;
    v43 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(&v193, 2, v43, 0);
    if (v44)
    {
      v45 = v9;
      v46 = v44;
      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v46;
      v9 = v45;
    }

    else
    {
      v47 = 0;
    }

    v184 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v47, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v184) - 16;
    v48 = v190;
    v49 = v187;
    *v187 = *(v190 + 8 * v20);
    v49[1] = *(v48 + 8 * v21);
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  v157[0] = 0;
  v157[1] = 0;
  v50 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 1u);
  v51 = *(*(v161 + 9) + 32 * v50 + 24);
  *&v193 = v157;
  *__p = v51;
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v193, DefiningOp) & 1) == 0)
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982850;
    strcpy(*__p, "Shape operand was not a constant");
    goto LABEL_41;
  }

  v151 = v42;
  v152 = v9;
  v184 = v186;
  v186[1] = 0;
  v186[0] = 0;
  v185 = 0x200000002;
  v181 = v183;
  memset_pattern16(v183, &unk_1E096FAE0, 0x10uLL);
  v182 = 0x200000002;
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v161);
  *__p = 2;
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(__p, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (GateLayout == 1)
  {
    v62 = &v184;
  }

  else
  {
    v62 = &v181;
  }

  v63 = *v62;
  v64 = &v185;
  if (GateLayout != 1)
  {
    v64 = &v182;
  }

  v156 = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v63, 8 * *v64, 8, 1, 0);
  v178 = v180;
  v179 = 0x200000000;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v161);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v161);
  v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 2u);
  v69 = v161;
  if ((*(v161 + 46) & 0x80) != 0)
  {
    v70 = *(v161 + 9);
  }

  else
  {
    v70 = 0;
  }

  v71 = v152;
  if (HIDWORD(v67) + v67 == v67 || !*(v70 + 32 * v67 + 24))
  {
    v72 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 3u);
    v69 = v161;
    v73 = (*(v161 + 46) & 0x80) != 0 ? *(v161 + 9) : 0;
    if (HIDWORD(v72) + v72 == v72 || !*(v73 + 32 * v72 + 24))
    {
      if (InferredResultTypes)
      {
        if (!IsSize)
        {
          *__p = operator new(0x38uLL);
          *&__p[8] = xmmword_1E0982830;
          strcpy(*__p, "Unsupported alignCorners, centerResult for Resize");
          v75 = *(v69 + 3);
          goto LABEL_72;
        }

        goto LABEL_120;
      }

      if (IsSize)
      {
LABEL_78:
        *__p = &__p[16];
        v80 = &unk_1E096FAE0;
LABEL_119:
        memset_pattern16(&__p[16], v80, 0x10uLL);
LABEL_121:
        *&__p[8] = 0x600000002;
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v178, __p);
        if (*__p != &__p[16])
        {
          free(*__p);
        }

        *__p = 2;
        v120 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
        v121 = mlir::RankedTensorType::get(__p, 1, v120, 0);
        if (v121)
        {
          v122 = v121;
          v123 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v121 + 8);
          v121 = v122;
        }

        else
        {
          v123 = 0;
        }

        v162 = mlir::DenseElementsAttr::getFromRawBuffer(v121, v123, v178, 8 * v179, 8, 1, 0);
        v124 = v187;
        v125 = llvm::detail::IEEEFloat::IEEEFloat(&v193, -1.0);
        v126 = llvm::APFloatBase::IEEEsingle(v125);
        llvm::APFloat::Storage::Storage(&__p[8], &v193, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v193);
        llvm::detail::IEEEFloat::IEEEFloat(&v163, -1.0);
        llvm::APFloat::Storage::Storage(&v193 + 8, &v163, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v163);
        v163 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, v71, &v160, v124, v124 + 1, __p, &v193, &v156, &v162);
        v127 = *(&v193 + 1);
        v128 = llvm::APFloatBase::PPCDoubleDouble(v163);
        if (v128 == v127)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v193 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v193 + 8));
        }

        v129 = v152;
        if (v128 == *&__p[8])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[8]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&__p[8]);
        }

        v59 = mlir::anec::Resize::verifyAttributesWithFamily(&v163, 5);
        v58 = v163;
        if (v59)
        {
          if (v151 == 1)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = v154;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = v154;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v130 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v131 = mlir::RankedTensorType::get(&v193, 2, v130, 0);
            if (v131)
            {
              v132 = v131;
              v133 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v131 + 8);
              v131 = v132;
              v129 = v152;
            }

            else
            {
              v133 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v131, v133, *__p, 8 * *&__p[8], 8, 1, 0);
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(a4 + 1, v129, &v163, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v159);
          if (v134 <= 3)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = IndexFromDim;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = IndexFromDim;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v135 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v136 = mlir::RankedTensorType::get(&v193, 2, v135, 0);
            if (v136)
            {
              v137 = v136;
              v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
              v136 = v137;
            }

            else
            {
              v138 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v136, v138, *__p, 8 * *&__p[8], 8, 1, 0);
            *&v193 = v58 - 16;
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v152, &v193, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          mlir::ConversionPatternRewriter::eraseOp(a4, v163);
          *__p = operator new(0x48uLL);
          *&__p[8] = xmmword_1E0982840;
          strcpy(*__p, "requested attributes are not compatible with hardware requirements");
          mlir::logMatchFailure(__p, *(v161 + 3), a4);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v58 = 0;
        }

        goto LABEL_148;
      }

LABEL_118:
      *__p = &__p[16];
      v80 = &unk_1E0982A50;
      goto LABEL_119;
    }
  }

  v175 = v169;
  v176 = v170;
  *v177 = *v171;
  *__p = v165;
  *&__p[16] = v166;
  v173 = v167;
  v174 = v168;
  v74 = mlir::mps::getResizeLayout(v69, v68);
  if ((v74 & 0x100000000) != 0)
  {
    v76 = qword_1E0982BB8[v74];
    v150 = qword_1E0982BF0[v74];
    v77 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
    v78 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v77;
    if (v77)
    {
      v78 = mlir::ValueRange::offset_base(&v193, v77);
      v79 = *(&v193 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (HIDWORD(v77) + v77 == v79 || (v193 = v78, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v84 = 1.0;
      v85 = 1.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v81 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
      v82 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v81;
      if (v81)
      {
        v82 = mlir::ValueRange::offset_base(&v193, v81);
        v83 = *(&v193 + 1);
      }

      else
      {
        v83 = 0;
      }

      if (HIDWORD(v81) + v81 == v83)
      {
        v139 = 0;
      }

      else
      {
        v193 = v82;
        v139 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v139;
      v140 = mlir::Value::getDefiningOp(&v193);
      if (!v140 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v140))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v141 = v76;
      v142 = DWORD2(v193);
      v84 = 1.0;
      v85 = 1.0;
      v143 = v141;
      if (v141 < DWORD2(v193))
      {
        v85 = *(v193 + 4 * v141);
        v84 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      v144 = v143 >= v142;
      v76 = v143;
      if (v144)
      {
        goto LABEL_68;
      }
    }

    v86 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
    v87 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v86;
    if (v86)
    {
      v87 = mlir::ValueRange::offset_base(&v193, v86);
      v88 = *(&v193 + 1);
    }

    else
    {
      v88 = 0;
    }

    if (HIDWORD(v86) + v86 == v88 || (v193 = v87, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v92 = 0.0;
      v93 = 0.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v89 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
      v90 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v89;
      if (v89)
      {
        v90 = mlir::ValueRange::offset_base(&v193, v89);
        v91 = *(&v193 + 1);
      }

      else
      {
        v91 = 0;
      }

      if (HIDWORD(v89) + v89 == v91)
      {
        v145 = 0;
      }

      else
      {
        v193 = v90;
        v145 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v145;
      v146 = mlir::Value::getDefiningOp(&v193);
      if (!v146 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v146))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v147 = v76;
      v148 = DWORD2(v193);
      v92 = 0.0;
      v93 = 0.0;
      v149 = v147;
      if (v147 < DWORD2(v193))
      {
        v93 = *(v193 + 4 * v147);
        v92 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      if (v149 >= v148)
      {
        goto LABEL_68;
      }
    }

    v94 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
    v95 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v94;
    if (v94)
    {
      v95 = mlir::ValueRange::offset_base(&v193, v94);
    }

    v193 = v95;
    v96 = (*(mlir::ValueRange::dereference_iterator(&v193, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v96)
    {
      v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
    }

    else
    {
      v97 = 0;
    }

    *&v193 = v96;
    *(&v193 + 1) = v97;
    v98 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v100 = v99;
    v101 = *(a1 + 96);
    if (*(v69 + 9))
    {
      v102 = v69 - 16;
    }

    else
    {
      v102 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v102, 0);
    v104 = mlir::TypeConverter::convertType(v101, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v105 = v104;
    if (v104)
    {
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
    }

    *&v193 = v105;
    *(&v193 + 1) = v104;
    v106 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v108 = v107;
    v109 = mlir::anec::getIndexFromDim(3, v100);
    v110 = mlir::anec::getIndexFromDim(4, v108);
    v111 = *(v98 + 8 * v109);
    v112 = *(v98 + 8 * v110);
    v113 = *(v106 + 8 * v109);
    v114 = v93 != 0.0;
    if (v92 != 0.0)
    {
      v114 = 1;
    }

    v115 = (v85 + -1.0) * 0.5 != v93 || (v84 + -1.0) * 0.5 != v92;
    v71 = v152;
    v116 = v112;
    v117 = *(v106 + 8 * v110);
    v118 = v85 != (v113 / v111) || v84 != (v117 / v116);
    v119 = v85 != ((v113 + -1.0) / (v111 + -1.0)) || v84 != ((v117 + -1.0) / (v116 + -1.0));
    if (v114 || v118)
    {
      if (v114 || v119)
      {
        if (v115 || v118)
        {
          goto LABEL_68;
        }

        goto LABEL_78;
      }

LABEL_120:
      *__p = &__p[16];
      *&__p[16] = 0uLL;
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_68:
  *__p = operator new(0x48uLL);
  *&__p[8] = xmmword_1E0982670;
  strcpy(*__p, "Resize with custom scale and offset values not supported on ANE.");
  v75 = *(v161 + 3);
LABEL_72:
  mlir::logMatchFailure(__p, v75, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v58 = 0;
  v59 = 0;
LABEL_148:
  if (v178 != v180)
  {
    free(v178);
  }

  if (v181 != v183)
  {
    free(v181);
  }

  if (v184 != v186)
  {
    free(v184);
  }

LABEL_44:
  if (v187 != v189)
  {
    free(v187);
  }

  if (v190 != v191)
  {
    free(v190);
  }

  if (v59)
  {
    *&v165 = v58 - 16;
    matched = 1;
    mlir::ValueRange::ValueRange(__p, &v165, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *__p, *&__p[8]);
  }

  else
  {
    *__p = operator new(0x60uLL);
    *&__p[8] = xmmword_1E0982860;
    strcpy(*__p, "Conversion did not match a valid resize or a valid transformation supported by the hardware.");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)6>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)6>::~ConvertResize(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  v194[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v169 = a3[4];
  v170 = v6;
  *v171 = *(a3 + 12);
  v7 = a3[1];
  v165 = *a3;
  v166 = v7;
  v8 = a3[3];
  v167 = a3[2];
  v168 = v8;
  v161 = a2;
  v192[0] = *(&v170 + 1);
  v192[1] = *v171;
  v9 = a2[3];
  v160 = mlir::ValueRange::dereference_iterator(v192, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 0);
  v11 = (*(*(*(v161 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v159[0] = v11;
  v159[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v165, 0);
  v14 = *(&v170 + 1);
  *__p = *(&v170 + 1);
  *&__p[8] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  *__p = v14;
  *&__p[8] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  *__p = v15;
  *&__p[8] = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::CallableOpInterface::getArgAttrsAttr(v159);
  if (v23 <= 3)
  {
    *__p = &__p[16];
    *&__p[16] = IndexFromDim;
    *&__p[24] = v20;
    *&v173 = v20;
    *(&v173 + 1) = v21;
    *&v174 = v21;
    *(&v174 + 1) = IndexFromDim;
    *&__p[8] = 0x600000006;
    v190 = xmmword_1E0982820;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v25 = mlir::RankedTensorType::get(&v190, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    *&v193 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v193) - 16;
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  if (*(v161 + 9))
  {
    v28 = v161 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v158[0] = v29;
  v158[1] = v30;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v158);
  v33 = v32;
  *&v190 = v191;
  *(&v190 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  v154 = v22;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v191;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v190, v191, v34, 8);
  v35 = DWORD2(v190);
  v36 = v190;
  v37 = 8 * v33;
  if (v33)
  {
LABEL_25:
    memcpy(v36 + 8 * v35, ArgAttrsAttr, v37);
    v35 = DWORD2(v190);
    v36 = v190;
  }

LABEL_26:
  v38 = v35 + (v37 >> 3);
  DWORD2(v190) = v38;
  if (v38 <= 3)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v190, v36, 4 - v38, 1uLL);
    v36 = v190;
  }

  v39 = *(v36 + v21);
  v40 = *(v36 + v154);
  v187 = v189;
  v189[0] = v39;
  v189[1] = v40;
  v188 = 0x200000002;
  ResizeLayout = mlir::mps::getResizeLayout(v161, v36);
  if ((ResizeLayout & 0x100000000) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E0982800;
    strcpy(*__p, "Resize layout not supported");
LABEL_41:
    mlir::logMatchFailure(__p, *(v161 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v58 = 0;
    v59 = 0;
    goto LABEL_44;
  }

  v42 = ResizeLayout;
  if (ResizeLayout == 1)
  {
    *__p = &__p[16];
    *&__p[16] = v20;
    *&__p[24] = v21;
    *&v173 = v21;
    *(&v173 + 1) = v154;
    *&v174 = v154;
    *(&v174 + 1) = v20;
    *&__p[8] = 0x600000006;
    v193 = xmmword_1E0982820;
    v43 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(&v193, 2, v43, 0);
    if (v44)
    {
      v45 = v9;
      v46 = v44;
      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v46;
      v9 = v45;
    }

    else
    {
      v47 = 0;
    }

    v184 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v47, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v184) - 16;
    v48 = v190;
    v49 = v187;
    *v187 = *(v190 + 8 * v20);
    v49[1] = *(v48 + 8 * v21);
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  v157[0] = 0;
  v157[1] = 0;
  v50 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 1u);
  v51 = *(*(v161 + 9) + 32 * v50 + 24);
  *&v193 = v157;
  *__p = v51;
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v193, DefiningOp) & 1) == 0)
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982850;
    strcpy(*__p, "Shape operand was not a constant");
    goto LABEL_41;
  }

  v151 = v42;
  v152 = v9;
  v184 = v186;
  v186[1] = 0;
  v186[0] = 0;
  v185 = 0x200000002;
  v181 = v183;
  memset_pattern16(v183, &unk_1E096FAE0, 0x10uLL);
  v182 = 0x200000002;
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v161);
  *__p = 2;
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(__p, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (GateLayout == 1)
  {
    v62 = &v184;
  }

  else
  {
    v62 = &v181;
  }

  v63 = *v62;
  v64 = &v185;
  if (GateLayout != 1)
  {
    v64 = &v182;
  }

  v156 = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v63, 8 * *v64, 8, 1, 0);
  v178 = v180;
  v179 = 0x200000000;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v161);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v161);
  v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 2u);
  v69 = v161;
  if ((*(v161 + 46) & 0x80) != 0)
  {
    v70 = *(v161 + 9);
  }

  else
  {
    v70 = 0;
  }

  v71 = v152;
  if (HIDWORD(v67) + v67 == v67 || !*(v70 + 32 * v67 + 24))
  {
    v72 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 3u);
    v69 = v161;
    v73 = (*(v161 + 46) & 0x80) != 0 ? *(v161 + 9) : 0;
    if (HIDWORD(v72) + v72 == v72 || !*(v73 + 32 * v72 + 24))
    {
      if (InferredResultTypes)
      {
        if (!IsSize)
        {
          *__p = operator new(0x38uLL);
          *&__p[8] = xmmword_1E0982830;
          strcpy(*__p, "Unsupported alignCorners, centerResult for Resize");
          v75 = *(v69 + 3);
          goto LABEL_72;
        }

        goto LABEL_120;
      }

      if (IsSize)
      {
LABEL_78:
        *__p = &__p[16];
        v80 = &unk_1E096FAE0;
LABEL_119:
        memset_pattern16(&__p[16], v80, 0x10uLL);
LABEL_121:
        *&__p[8] = 0x600000002;
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v178, __p);
        if (*__p != &__p[16])
        {
          free(*__p);
        }

        *__p = 2;
        v120 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
        v121 = mlir::RankedTensorType::get(__p, 1, v120, 0);
        if (v121)
        {
          v122 = v121;
          v123 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v121 + 8);
          v121 = v122;
        }

        else
        {
          v123 = 0;
        }

        v162 = mlir::DenseElementsAttr::getFromRawBuffer(v121, v123, v178, 8 * v179, 8, 1, 0);
        v124 = v187;
        v125 = llvm::detail::IEEEFloat::IEEEFloat(&v193, -1.0);
        v126 = llvm::APFloatBase::IEEEsingle(v125);
        llvm::APFloat::Storage::Storage(&__p[8], &v193, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v193);
        llvm::detail::IEEEFloat::IEEEFloat(&v163, -1.0);
        llvm::APFloat::Storage::Storage(&v193 + 8, &v163, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v163);
        v163 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, v71, &v160, v124, v124 + 1, __p, &v193, &v156, &v162);
        v127 = *(&v193 + 1);
        v128 = llvm::APFloatBase::PPCDoubleDouble(v163);
        if (v128 == v127)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v193 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v193 + 8));
        }

        v129 = v152;
        if (v128 == *&__p[8])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[8]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&__p[8]);
        }

        v59 = mlir::anec::Resize::verifyAttributesWithFamily(&v163, 6);
        v58 = v163;
        if (v59)
        {
          if (v151 == 1)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = v154;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = v154;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v130 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v131 = mlir::RankedTensorType::get(&v193, 2, v130, 0);
            if (v131)
            {
              v132 = v131;
              v133 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v131 + 8);
              v131 = v132;
              v129 = v152;
            }

            else
            {
              v133 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v131, v133, *__p, 8 * *&__p[8], 8, 1, 0);
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(a4 + 1, v129, &v163, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v159);
          if (v134 <= 3)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = IndexFromDim;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = IndexFromDim;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v135 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v136 = mlir::RankedTensorType::get(&v193, 2, v135, 0);
            if (v136)
            {
              v137 = v136;
              v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
              v136 = v137;
            }

            else
            {
              v138 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v136, v138, *__p, 8 * *&__p[8], 8, 1, 0);
            *&v193 = v58 - 16;
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v152, &v193, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          mlir::ConversionPatternRewriter::eraseOp(a4, v163);
          *__p = operator new(0x48uLL);
          *&__p[8] = xmmword_1E0982840;
          strcpy(*__p, "requested attributes are not compatible with hardware requirements");
          mlir::logMatchFailure(__p, *(v161 + 3), a4);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v58 = 0;
        }

        goto LABEL_148;
      }

LABEL_118:
      *__p = &__p[16];
      v80 = &unk_1E0982A50;
      goto LABEL_119;
    }
  }

  v175 = v169;
  v176 = v170;
  *v177 = *v171;
  *__p = v165;
  *&__p[16] = v166;
  v173 = v167;
  v174 = v168;
  v74 = mlir::mps::getResizeLayout(v69, v68);
  if ((v74 & 0x100000000) != 0)
  {
    v76 = qword_1E0982BB8[v74];
    v150 = qword_1E0982BF0[v74];
    v77 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
    v78 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v77;
    if (v77)
    {
      v78 = mlir::ValueRange::offset_base(&v193, v77);
      v79 = *(&v193 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (HIDWORD(v77) + v77 == v79 || (v193 = v78, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v84 = 1.0;
      v85 = 1.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v81 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
      v82 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v81;
      if (v81)
      {
        v82 = mlir::ValueRange::offset_base(&v193, v81);
        v83 = *(&v193 + 1);
      }

      else
      {
        v83 = 0;
      }

      if (HIDWORD(v81) + v81 == v83)
      {
        v139 = 0;
      }

      else
      {
        v193 = v82;
        v139 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v139;
      v140 = mlir::Value::getDefiningOp(&v193);
      if (!v140 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v140))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v141 = v76;
      v142 = DWORD2(v193);
      v84 = 1.0;
      v85 = 1.0;
      v143 = v141;
      if (v141 < DWORD2(v193))
      {
        v85 = *(v193 + 4 * v141);
        v84 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      v144 = v143 >= v142;
      v76 = v143;
      if (v144)
      {
        goto LABEL_68;
      }
    }

    v86 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
    v87 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v86;
    if (v86)
    {
      v87 = mlir::ValueRange::offset_base(&v193, v86);
      v88 = *(&v193 + 1);
    }

    else
    {
      v88 = 0;
    }

    if (HIDWORD(v86) + v86 == v88 || (v193 = v87, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v92 = 0.0;
      v93 = 0.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v89 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
      v90 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v89;
      if (v89)
      {
        v90 = mlir::ValueRange::offset_base(&v193, v89);
        v91 = *(&v193 + 1);
      }

      else
      {
        v91 = 0;
      }

      if (HIDWORD(v89) + v89 == v91)
      {
        v145 = 0;
      }

      else
      {
        v193 = v90;
        v145 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v145;
      v146 = mlir::Value::getDefiningOp(&v193);
      if (!v146 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v146))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v147 = v76;
      v148 = DWORD2(v193);
      v92 = 0.0;
      v93 = 0.0;
      v149 = v147;
      if (v147 < DWORD2(v193))
      {
        v93 = *(v193 + 4 * v147);
        v92 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      if (v149 >= v148)
      {
        goto LABEL_68;
      }
    }

    v94 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
    v95 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v94;
    if (v94)
    {
      v95 = mlir::ValueRange::offset_base(&v193, v94);
    }

    v193 = v95;
    v96 = (*(mlir::ValueRange::dereference_iterator(&v193, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v96)
    {
      v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
    }

    else
    {
      v97 = 0;
    }

    *&v193 = v96;
    *(&v193 + 1) = v97;
    v98 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v100 = v99;
    v101 = *(a1 + 96);
    if (*(v69 + 9))
    {
      v102 = v69 - 16;
    }

    else
    {
      v102 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v102, 0);
    v104 = mlir::TypeConverter::convertType(v101, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v105 = v104;
    if (v104)
    {
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
    }

    *&v193 = v105;
    *(&v193 + 1) = v104;
    v106 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v108 = v107;
    v109 = mlir::anec::getIndexFromDim(3, v100);
    v110 = mlir::anec::getIndexFromDim(4, v108);
    v111 = *(v98 + 8 * v109);
    v112 = *(v98 + 8 * v110);
    v113 = *(v106 + 8 * v109);
    v114 = v93 != 0.0;
    if (v92 != 0.0)
    {
      v114 = 1;
    }

    v115 = (v85 + -1.0) * 0.5 != v93 || (v84 + -1.0) * 0.5 != v92;
    v71 = v152;
    v116 = v112;
    v117 = *(v106 + 8 * v110);
    v118 = v85 != (v113 / v111) || v84 != (v117 / v116);
    v119 = v85 != ((v113 + -1.0) / (v111 + -1.0)) || v84 != ((v117 + -1.0) / (v116 + -1.0));
    if (v114 || v118)
    {
      if (v114 || v119)
      {
        if (v115 || v118)
        {
          goto LABEL_68;
        }

        goto LABEL_78;
      }

LABEL_120:
      *__p = &__p[16];
      *&__p[16] = 0uLL;
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_68:
  *__p = operator new(0x48uLL);
  *&__p[8] = xmmword_1E0982670;
  strcpy(*__p, "Resize with custom scale and offset values not supported on ANE.");
  v75 = *(v161 + 3);
LABEL_72:
  mlir::logMatchFailure(__p, v75, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v58 = 0;
  v59 = 0;
LABEL_148:
  if (v178 != v180)
  {
    free(v178);
  }

  if (v181 != v183)
  {
    free(v181);
  }

  if (v184 != v186)
  {
    free(v184);
  }

LABEL_44:
  if (v187 != v189)
  {
    free(v187);
  }

  if (v190 != v191)
  {
    free(v190);
  }

  if (v59)
  {
    *&v165 = v58 - 16;
    matched = 1;
    mlir::ValueRange::ValueRange(__p, &v165, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *__p, *&__p[8]);
  }

  else
  {
    *__p = operator new(0x60uLL);
    *&__p[8] = xmmword_1E0982860;
    strcpy(*__p, "Conversion did not match a valid resize or a valid transformation supported by the hardware.");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)7>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)7>::~ConvertResize(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t **a4)
{
  v194[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v169 = a3[4];
  v170 = v6;
  *v171 = *(a3 + 12);
  v7 = a3[1];
  v165 = *a3;
  v166 = v7;
  v8 = a3[3];
  v167 = a3[2];
  v168 = v8;
  v161 = a2;
  v192[0] = *(&v170 + 1);
  v192[1] = *v171;
  v9 = a2[3];
  v160 = mlir::ValueRange::dereference_iterator(v192, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 0);
  v11 = (*(*(*(v161 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v159[0] = v11;
  v159[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v165, 0);
  v14 = *(&v170 + 1);
  *__p = *(&v170 + 1);
  *&__p[8] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  *__p = v14;
  *&__p[8] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  *__p = v15;
  *&__p[8] = v16;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::CallableOpInterface::getArgAttrsAttr(v159);
  if (v23 <= 3)
  {
    *__p = &__p[16];
    *&__p[16] = IndexFromDim;
    *&__p[24] = v20;
    *&v173 = v20;
    *(&v173 + 1) = v21;
    *&v174 = v21;
    *(&v174 + 1) = IndexFromDim;
    *&__p[8] = 0x600000006;
    v190 = xmmword_1E0982820;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v25 = mlir::RankedTensorType::get(&v190, 2, IntegerType, 0);
    if (v25)
    {
      v26 = v25;
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v25 = v26;
    }

    else
    {
      v27 = 0;
    }

    *&v193 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v193) - 16;
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  if (*(v161 + 9))
  {
    v28 = v161 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v158[0] = v29;
  v158[1] = v30;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v158);
  v33 = v32;
  *&v190 = v191;
  *(&v190 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  v154 = v22;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v191;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v190, v191, v34, 8);
  v35 = DWORD2(v190);
  v36 = v190;
  v37 = 8 * v33;
  if (v33)
  {
LABEL_25:
    memcpy(v36 + 8 * v35, ArgAttrsAttr, v37);
    v35 = DWORD2(v190);
    v36 = v190;
  }

LABEL_26:
  v38 = v35 + (v37 >> 3);
  DWORD2(v190) = v38;
  if (v38 <= 3)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v190, v36, 4 - v38, 1uLL);
    v36 = v190;
  }

  v39 = *(v36 + v21);
  v40 = *(v36 + v154);
  v187 = v189;
  v189[0] = v39;
  v189[1] = v40;
  v188 = 0x200000002;
  ResizeLayout = mlir::mps::getResizeLayout(v161, v36);
  if ((ResizeLayout & 0x100000000) == 0)
  {
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E0982800;
    strcpy(*__p, "Resize layout not supported");
LABEL_41:
    mlir::logMatchFailure(__p, *(v161 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v58 = 0;
    v59 = 0;
    goto LABEL_44;
  }

  v42 = ResizeLayout;
  if (ResizeLayout == 1)
  {
    *__p = &__p[16];
    *&__p[16] = v20;
    *&__p[24] = v21;
    *&v173 = v21;
    *(&v173 + 1) = v154;
    *&v174 = v154;
    *(&v174 + 1) = v20;
    *&__p[8] = 0x600000006;
    v193 = xmmword_1E0982820;
    v43 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v44 = mlir::RankedTensorType::get(&v193, 2, v43, 0);
    if (v44)
    {
      v45 = v9;
      v46 = v44;
      v47 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
      v44 = v46;
      v9 = v45;
    }

    else
    {
      v47 = 0;
    }

    v184 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v47, *__p, 8 * *&__p[8], 8, 1, 0);
    v160 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v9, &v160, &v184) - 16;
    v48 = v190;
    v49 = v187;
    *v187 = *(v190 + 8 * v20);
    v49[1] = *(v48 + 8 * v21);
    if (*__p != &__p[16])
    {
      free(*__p);
    }
  }

  v157[0] = 0;
  v157[1] = 0;
  v50 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 1u);
  v51 = *(*(v161 + 9) + 32 * v50 + 24);
  *&v193 = v157;
  *__p = v51;
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v193, DefiningOp) & 1) == 0)
  {
    *__p = operator new(0x28uLL);
    *&__p[8] = xmmword_1E0982850;
    strcpy(*__p, "Shape operand was not a constant");
    goto LABEL_41;
  }

  v151 = v42;
  v152 = v9;
  v184 = v186;
  v186[1] = 0;
  v186[0] = 0;
  v185 = 0x200000002;
  v181 = v183;
  memset_pattern16(v183, &unk_1E096FAE0, 0x10uLL);
  v182 = 0x200000002;
  GateLayout = mlir::mps::LSTMOp::getGateLayout(&v161);
  *__p = 2;
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(__p, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (GateLayout == 1)
  {
    v62 = &v184;
  }

  else
  {
    v62 = &v181;
  }

  v63 = *v62;
  v64 = &v185;
  if (GateLayout != 1)
  {
    v64 = &v182;
  }

  v156 = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v63, 8 * *v64, 8, 1, 0);
  v178 = v180;
  v179 = 0x200000000;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v161);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v161);
  v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 2u);
  v69 = v161;
  if ((*(v161 + 46) & 0x80) != 0)
  {
    v70 = *(v161 + 9);
  }

  else
  {
    v70 = 0;
  }

  v71 = v152;
  if (HIDWORD(v67) + v67 == v67 || !*(v70 + 32 * v67 + 24))
  {
    v72 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v161, 3u);
    v69 = v161;
    v73 = (*(v161 + 46) & 0x80) != 0 ? *(v161 + 9) : 0;
    if (HIDWORD(v72) + v72 == v72 || !*(v73 + 32 * v72 + 24))
    {
      if (InferredResultTypes)
      {
        if (!IsSize)
        {
          *__p = operator new(0x38uLL);
          *&__p[8] = xmmword_1E0982830;
          strcpy(*__p, "Unsupported alignCorners, centerResult for Resize");
          v75 = *(v69 + 3);
          goto LABEL_72;
        }

        goto LABEL_120;
      }

      if (IsSize)
      {
LABEL_78:
        *__p = &__p[16];
        v80 = &unk_1E096FAE0;
LABEL_119:
        memset_pattern16(&__p[16], v80, 0x10uLL);
LABEL_121:
        *&__p[8] = 0x600000002;
        llvm::SmallVectorImpl<unsigned long long>::operator=(&v178, __p);
        if (*__p != &__p[16])
        {
          free(*__p);
        }

        *__p = 2;
        v120 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
        v121 = mlir::RankedTensorType::get(__p, 1, v120, 0);
        if (v121)
        {
          v122 = v121;
          v123 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v121 + 8);
          v121 = v122;
        }

        else
        {
          v123 = 0;
        }

        v162 = mlir::DenseElementsAttr::getFromRawBuffer(v121, v123, v178, 8 * v179, 8, 1, 0);
        v124 = v187;
        v125 = llvm::detail::IEEEFloat::IEEEFloat(&v193, -1.0);
        v126 = llvm::APFloatBase::IEEEsingle(v125);
        llvm::APFloat::Storage::Storage(&__p[8], &v193, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v193);
        llvm::detail::IEEEFloat::IEEEFloat(&v163, -1.0);
        llvm::APFloat::Storage::Storage(&v193 + 8, &v163, v126);
        llvm::detail::IEEEFloat::~IEEEFloat(&v163);
        v163 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4 + 1, v71, &v160, v124, v124 + 1, __p, &v193, &v156, &v162);
        v127 = *(&v193 + 1);
        v128 = llvm::APFloatBase::PPCDoubleDouble(v163);
        if (v128 == v127)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v193 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v193 + 8));
        }

        v129 = v152;
        if (v128 == *&__p[8])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[8]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&__p[8]);
        }

        v59 = mlir::anec::Resize::verifyAttributesWithFamily(&v163, 7);
        v58 = v163;
        if (v59)
        {
          if (v151 == 1)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = v154;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = v154;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v130 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v131 = mlir::RankedTensorType::get(&v193, 2, v130, 0);
            if (v131)
            {
              v132 = v131;
              v133 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v131 + 8);
              v131 = v132;
              v129 = v152;
            }

            else
            {
              v133 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v131, v133, *__p, 8 * *&__p[8], 8, 1, 0);
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(a4 + 1, v129, &v163, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }

          mlir::CallableOpInterface::getArgAttrsAttr(v159);
          if (v134 <= 3)
          {
            *__p = &__p[16];
            *&__p[16] = v20;
            *&__p[24] = IndexFromDim;
            *&v173 = v21;
            *(&v173 + 1) = v20;
            *&v174 = IndexFromDim;
            *(&v174 + 1) = v21;
            *&__p[8] = 0x600000006;
            v193 = xmmword_1E0982820;
            v135 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v136 = mlir::RankedTensorType::get(&v193, 2, v135, 0);
            if (v136)
            {
              v137 = v136;
              v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
              v136 = v137;
            }

            else
            {
              v138 = 0;
            }

            v155 = mlir::DenseElementsAttr::getFromRawBuffer(v136, v138, *__p, 8 * *&__p[8], 8, 1, 0);
            *&v193 = v58 - 16;
            v58 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v152, &v193, &v155);
            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          mlir::ConversionPatternRewriter::eraseOp(a4, v163);
          *__p = operator new(0x48uLL);
          *&__p[8] = xmmword_1E0982840;
          strcpy(*__p, "requested attributes are not compatible with hardware requirements");
          mlir::logMatchFailure(__p, *(v161 + 3), a4);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v58 = 0;
        }

        goto LABEL_148;
      }

LABEL_118:
      *__p = &__p[16];
      v80 = &unk_1E0982A50;
      goto LABEL_119;
    }
  }

  v175 = v169;
  v176 = v170;
  *v177 = *v171;
  *__p = v165;
  *&__p[16] = v166;
  v173 = v167;
  v174 = v168;
  v74 = mlir::mps::getResizeLayout(v69, v68);
  if ((v74 & 0x100000000) != 0)
  {
    v76 = qword_1E0982BB8[v74];
    v150 = qword_1E0982BF0[v74];
    v77 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
    v78 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v77;
    if (v77)
    {
      v78 = mlir::ValueRange::offset_base(&v193, v77);
      v79 = *(&v193 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (HIDWORD(v77) + v77 == v79 || (v193 = v78, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v84 = 1.0;
      v85 = 1.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v81 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
      v82 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v81;
      if (v81)
      {
        v82 = mlir::ValueRange::offset_base(&v193, v81);
        v83 = *(&v193 + 1);
      }

      else
      {
        v83 = 0;
      }

      if (HIDWORD(v81) + v81 == v83)
      {
        v139 = 0;
      }

      else
      {
        v193 = v82;
        v139 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v139;
      v140 = mlir::Value::getDefiningOp(&v193);
      if (!v140 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v140))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v141 = v76;
      v142 = DWORD2(v193);
      v84 = 1.0;
      v85 = 1.0;
      v143 = v141;
      if (v141 < DWORD2(v193))
      {
        v85 = *(v193 + 4 * v141);
        v84 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      v144 = v143 >= v142;
      v76 = v143;
      if (v144)
      {
        goto LABEL_68;
      }
    }

    v86 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
    v87 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v86;
    if (v86)
    {
      v87 = mlir::ValueRange::offset_base(&v193, v86);
      v88 = *(&v193 + 1);
    }

    else
    {
      v88 = 0;
    }

    if (HIDWORD(v86) + v86 == v88 || (v193 = v87, !mlir::ValueRange::dereference_iterator(&v193, 0)))
    {
      v92 = 0.0;
      v93 = 0.0;
    }

    else
    {
      v163 = 0;
      v164 = 0;
      v89 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
      v90 = *(&v176 + 1);
      *&v193 = *(&v176 + 1);
      *(&v193 + 1) = v89;
      if (v89)
      {
        v90 = mlir::ValueRange::offset_base(&v193, v89);
        v91 = *(&v193 + 1);
      }

      else
      {
        v91 = 0;
      }

      if (HIDWORD(v89) + v89 == v91)
      {
        v145 = 0;
      }

      else
      {
        v193 = v90;
        v145 = mlir::ValueRange::dereference_iterator(&v193, 0);
      }

      v162 = &v163;
      *&v193 = v145;
      v146 = mlir::Value::getDefiningOp(&v193);
      if (!v146 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v162, v146))
      {
        goto LABEL_68;
      }

      *&v193 = v194;
      *(&v193 + 1) = 0x400000000;
      mlir::getFloatValues<float>(v163, v164, &v193, 1);
      v147 = v76;
      v148 = DWORD2(v193);
      v92 = 0.0;
      v93 = 0.0;
      v149 = v147;
      if (v147 < DWORD2(v193))
      {
        v93 = *(v193 + 4 * v147);
        v92 = *(v193 + 4 * v150);
      }

      if (v193 != v194)
      {
        free(v193);
      }

      if (v149 >= v148)
      {
        goto LABEL_68;
      }
    }

    v94 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
    v95 = *(&v176 + 1);
    *&v193 = *(&v176 + 1);
    *(&v193 + 1) = v94;
    if (v94)
    {
      v95 = mlir::ValueRange::offset_base(&v193, v94);
    }

    v193 = v95;
    v96 = (*(mlir::ValueRange::dereference_iterator(&v193, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v96)
    {
      v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
    }

    else
    {
      v97 = 0;
    }

    *&v193 = v96;
    *(&v193 + 1) = v97;
    v98 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v100 = v99;
    v101 = *(a1 + 96);
    if (*(v69 + 9))
    {
      v102 = v69 - 16;
    }

    else
    {
      v102 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v102, 0);
    v104 = mlir::TypeConverter::convertType(v101, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v105 = v104;
    if (v104)
    {
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
    }

    *&v193 = v105;
    *(&v193 + 1) = v104;
    v106 = mlir::CallableOpInterface::getArgAttrsAttr(&v193);
    v108 = v107;
    v109 = mlir::anec::getIndexFromDim(3, v100);
    v110 = mlir::anec::getIndexFromDim(4, v108);
    v111 = *(v98 + 8 * v109);
    v112 = *(v98 + 8 * v110);
    v113 = *(v106 + 8 * v109);
    v114 = v93 != 0.0;
    if (v92 != 0.0)
    {
      v114 = 1;
    }

    v115 = (v85 + -1.0) * 0.5 != v93 || (v84 + -1.0) * 0.5 != v92;
    v71 = v152;
    v116 = v112;
    v117 = *(v106 + 8 * v110);
    v118 = v85 != (v113 / v111) || v84 != (v117 / v116);
    v119 = v85 != ((v113 + -1.0) / (v111 + -1.0)) || v84 != ((v117 + -1.0) / (v116 + -1.0));
    if (v114 || v118)
    {
      if (v114 || v119)
      {
        if (v115 || v118)
        {
          goto LABEL_68;
        }

        goto LABEL_78;
      }

LABEL_120:
      *__p = &__p[16];
      *&__p[16] = 0uLL;
      goto LABEL_121;
    }

    goto LABEL_118;
  }

LABEL_68:
  *__p = operator new(0x48uLL);
  *&__p[8] = xmmword_1E0982670;
  strcpy(*__p, "Resize with custom scale and offset values not supported on ANE.");
  v75 = *(v161 + 3);
LABEL_72:
  mlir::logMatchFailure(__p, v75, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v58 = 0;
  v59 = 0;
LABEL_148:
  if (v178 != v180)
  {
    free(v178);
  }

  if (v181 != v183)
  {
    free(v181);
  }

  if (v184 != v186)
  {
    free(v184);
  }

LABEL_44:
  if (v187 != v189)
  {
    free(v187);
  }

  if (v190 != v191)
  {
    free(v190);
  }

  if (v59)
  {
    *&v165 = v58 - 16;
    matched = 1;
    mlir::ValueRange::ValueRange(__p, &v165, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, *__p, *&__p[8]);
  }

  else
  {
    *__p = operator new(0x60uLL);
    *&__p[8] = xmmword_1E0982860;
    strcpy(*__p, "Conversion did not match a valid resize or a valid transformation supported by the hardware.");
    matched = mlir::logMatchFailure(__p, a2[3], a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  return matched;
}

void mlir::anonymous namespace::ConvertInstanceNorm::~ConvertInstanceNorm(mlir::_anonymous_namespace_::ConvertInstanceNorm *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::InstanceNormOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::InstanceNormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::InstanceNormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertInstanceNorm::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, void **a3, uint64_t a4)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v7 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v39[0] = v7;
  v39[1] = v8;
  v42 = a3[6];
  v43 = 1;
  v42 = mlir::ValueRange::offset_base(&v42, 1);
  v43 = 0;
  v9 = mlir::ValueRange::dereference_iterator(&v42, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v39);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  v37 = SortedUniquePromotedPositiveAxesAttr;
  v38 = v12;
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v42 = v44;
  v43 = 0x400000000;
  if (SortedUniquePromotedPositiveAxesAttr)
  {
    v13 = SortedUniquePromotedPositiveAxesAttr;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
    SortedUniquePromotedPositiveAxesAttr = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<int>(SortedUniquePromotedPositiveAxesAttr, v14, &v42, 1);
  if (v43)
  {
    v16 = v42;
    v17 = 4 * v43 - 4;
    do
    {
      v18 = *v16++;
      v19 = v18 == 1;
      v20 = v18 == 1 || v17 == 0;
      v17 -= 4;
    }

    while (!v20);
  }

  else
  {
    v19 = 0;
  }

  v40 = a3[6];
  v21 = (*(mlir::ValueRange::dereference_iterator(&v40, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v36[0] = mlir::getRankPromotionTypeForANE(v21, v22);
  v36[1] = v23;
  v24 = *(a2 + 24);
  F16Type = mlir::Builder::getF16Type((a4 + 8), v23);
  LOBYTE(v40) = 0;
  v41 = 0;
  v34[0] = mlir::ShapedType::cloneWith(v36, &v40, F16Type);
  v34[1] = v26;
  v40 = a3[6];
  *&v40 = mlir::ValueRange::dereference_iterator(&v40, 0);
  v35 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::ShapedType &,mlir::Value>((a4 + 8), v24, v34, &v40) - 16;
  v27 = *(a2 + 24);
  mlir::mps::detail::InstanceNormOpGenericAdaptorBase::getEpsilon(a3, &v40);
  if (v19)
  {
    v28 = mlir::OpBuilder::create<mlir::anec::LayerNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>((a4 + 8), v27, &v35, &v37, &v40);
  }

  else
  {
    v28 = mlir::OpBuilder::create<mlir::anec::InstanceNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>((a4 + 8), v27, &v35, &v37, &v40);
  }

  v35 = v28 - 16;
  v29 = *(&v40 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(v28) == v29)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v40 + 8));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v40 + 8));
  }

  v30 = *(a2 + 24);
  v40 = a3[6];
  v31 = mlir::ValueRange::dereference_iterator(&v40, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v31);
  LOBYTE(v40) = 0;
  v41 = 0;
  *&v40 = mlir::ShapedType::cloneWith(v36, &v40, ElementTypeOrSelf);
  *(&v40 + 1) = v33;
  v35 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::ShapedType &,mlir::Value>((a4 + 8), v30, &v40, &v35) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v35, 1);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::LayerNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::LayerNorm,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::LayerNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>(v27, v24, v23);
  }

  mlir::OperationState::OperationState(v27, a2, v11);
  v13 = *a3;
  v14 = *a4;
  v16 = *(a5 + 8);
  v15 = (a5 + 8);
  v18 = llvm::APFloatBase::PPCDoubleDouble(v17);
  if (v18 == v16)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v26, v15);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v26, v15);
  }

  mlir::anec::InstanceNorm::build(a1, v27, v13, v14, v25);
  if (v18 == v26.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v26);
  }

  v19 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::LayerNorm,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v20;
}

uint64_t mlir::OpBuilder::create<mlir::anec::InstanceNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::InstanceNorm,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::InstanceNorm,mlir::Value &,mlir::DenseIntElementsAttr &,llvm::APFloat>(v27, v24, v23);
  }

  mlir::OperationState::OperationState(v27, a2, v11);
  v13 = *a3;
  v14 = *a4;
  v16 = *(a5 + 8);
  v15 = (a5 + 8);
  v18 = llvm::APFloatBase::PPCDoubleDouble(v17);
  if (v18 == v16)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v26, v15);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v26, v15);
  }

  mlir::anec::InstanceNorm::build(a1, v27, v13, v14, v25);
  if (v18 == v26.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v26);
  }

  v19 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::InstanceNorm,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v20;
}

void mlir::anonymous namespace::ConvertPermute::~ConvertPermute(mlir::_anonymous_namespace_::ConvertPermute *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PermuteOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PermuteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PermuteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertPermute::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = *(a3 + 40);
  if ((*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  v26 = 0;
  v27 = 0;
  v6 = mlir::ValueRange::dereference_iterator(&v29, 1);
  v30 = &v26;
  __p = v6;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, DefiningOp) & 1) != 0)
  {
    v8 = v29;
    v9 = v26;
    v10 = v27;
    v11 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v28[0] = v11;
    v28[1] = v12;
    __p = v34 + 8;
    *&v34[0] = 0x600000000;
    mlir::getIntValues<long long>(v9, v10, &__p, 1);
    v30 = v32;
    v31 = 0x400000000;
    v14 = __p;
    v15 = LODWORD(v34[0]);
    mlir::CallableOpInterface::getArgAttrsAttr(v28);
    if (mlir::getPositivePromotedAxes(v14, v15, v16, &v30, *(a2 + 24), 1))
    {
      if (v31)
      {
        v17 = 8 * v31;
        v18 = v30;
        v19 = operator new(v17);
        memcpy(v19, v18, v17);
        v20 = &v19[v17];
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      v21 = Transpose;
      v23 = Transpose >> 8;
      if (v19)
      {
        operator delete(v19);
      }

      v22 = 1;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    if (v30 != v32)
    {
      free(v30);
    }

    if (__p != v34 + 8)
    {
      free(__p);
    }

    v30 = (v21 | (v23 << 8));
    LOBYTE(v31) = v22;
    if (v22)
    {
      matched = 1;
      mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v30, 1);
      return matched;
    }

    __p = operator new(0x48uLL);
    v34[0] = xmmword_1E0982670;
    strcpy(__p, "failed: Could not extract valid positive and rank-promoted axes.");
  }

  else
  {
    __p = operator new(0x58uLL);
    v34[0] = xmmword_1E0982870;
    strcpy(__p, "failed: Permute can be lowered to Transpose only if indices argument is a constant");
  }

  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v34[0]) < 0)
  {
    operator delete(__p);
  }

  return matched;
}

uint64_t mlir::anonymous namespace::createTranspose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v47[0] = a2;
  v47[1] = a3;
  v10 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v39[0] = v10;
  v39[1] = v11;
  v43 = v46;
  v45 = 4;
  if (a5 < 5)
  {
    if (!a5)
    {
      v44 = 0;
      v40 = v42;
      v41 = 0x500000000;
      goto LABEL_43;
    }

    bzero(v46, 8 * a5);
    v12 = v46;
  }

  else
  {
    v44 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, a5, 8);
    v12 = v43;
    bzero(v43, 8 * a5);
  }

  v44 = a5;
  if (!a5)
  {
    goto LABEL_31;
  }

  v13 = (a5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v13 < 3)
  {
    v14 = 0;
    v15 = v12;
    do
    {
LABEL_14:
      *v15++ = v14++;
    }

    while (v15 != (v12 + 8 * a5));
    goto LABEL_15;
  }

  v16 = v13 + 1;
  v14 = (v13 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v15 = &v12->i64[v14];
  v17 = xmmword_1E09700F0;
  v18 = v12 + 1;
  v19 = vdupq_n_s64(2uLL);
  v20 = vdupq_n_s64(4uLL);
  v21 = v14;
  do
  {
    v18[-1] = v17;
    *v18 = vaddq_s64(v17, v19);
    v17 = vaddq_s64(v17, v20);
    v18 += 2;
    v21 -= 4;
  }

  while (v21);
  if (v16 != v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (a5)
  {
    v22 = 8 * a5;
    do
    {
      v23 = v12->i64[0];
      mlir::CallableOpInterface::getArgAttrsAttr(v39);
      if (v23 == 2)
      {
        v25 = 3;
      }

      else
      {
        v25 = v23;
      }

      if (v23)
      {
        v26 = 3;
      }

      else
      {
        v26 = 1;
      }

      if (v24 != 2)
      {
        v26 = v23;
      }

      if (v24 != 3)
      {
        v25 = v26;
      }

      if (v24 < 2)
      {
        v25 = 3;
      }

      v12->i64[0] = v25;
      v12 = (v12 + 8);
      v22 -= 8;
    }

    while (v22);
    v12 = v43;
    v27 = v44;
    goto LABEL_32;
  }

LABEL_31:
  v27 = a5;
LABEL_32:
  v40 = v42;
  v41 = 0x500000000;
  if (a5 && v27)
  {
    v28 = 0;
    v29 = 8 * v27 - 8;
    v30 = 8 * a5 - 8;
    do
    {
      v31 = *a4;
      v32 = v12->i64[0];
      if (*a4 != v12->i64[0])
      {
        if (v28 >= HIDWORD(v41))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v28 + 1, 16);
          v28 = v41;
        }

        v33 = v40 + 16 * v28;
        *v33 = v31;
        v33[1] = v32;
        v28 = v41 + 1;
        LODWORD(v41) = v41 + 1;
      }

      if (!v30)
      {
        break;
      }

      ++a4;
      v12 = (v12 + 8);
      v34 = v29;
      v29 -= 8;
      v30 -= 8;
    }

    while (v34);
  }

LABEL_43:
  v35 = *(a1 + 24);
  v38 = mlir::ValueRange::dereference_iterator(v47, 0);
  v48[0] = v49;
  v48[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value,llvm::SmallVector<std::pair<unsigned long long,unsigned long long>,5u> &>(a6 + 8, v48, v35, &v38, &v40);
  v36 = *v48[0];
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v46)
  {
    free(v43);
  }

  return v36;
}

void mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value,llvm::SmallVector<std::pair<unsigned long long,unsigned long long>,5u> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a3, v11);
  mlir::anec::Transpose::build(a1, v31, *a4, *a5, *(a5 + 8));
  v14 = mlir::Operation::create(v31, v13);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(a1 + 24);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v15 + 32, v14);
    v18 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v17);
    v19 = *v16;
    *v18 = *v16;
    v18[1] = v16;
    *(v19 + 8) = v18;
    *v16 = v18;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v20);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v14);
    goto LABEL_20;
  }

  v21 = v14[9];
  if (v21)
  {
    v22 = (v14 - 4);
  }

  else
  {
    v22 = 0;
  }

  *(a2 + 8) = 0;
  if (v21 <= *(a2 + 12))
  {
    if (!v21)
    {
      v26 = 0;
      goto LABEL_17;
    }

    v23 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v21, 8);
    v23 = *(a2 + 8);
  }

  v24 = 0;
  v25 = *a2 + 8 * v23;
  do
  {
    *(v25 + 8 * v24) = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v24);
    ++v24;
  }

  while (v21 != v24);
  v26 = *(a2 + 8);
LABEL_17:
  *(a2 + 8) = v26 + v21;
  if (*(a1 + 16))
  {
    v27 = *(a1 + 8);
    if (v27)
    {
      (*(*v27 + 16))(v27, v14, 0, 0);
    }
  }

LABEL_20:
  mlir::OperationState::~OperationState(v31);
}

void mlir::anonymous namespace::ConvertGatherND::~ConvertGatherND(mlir::_anonymous_namespace_::ConvertGatherND *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::GatherNDOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::GatherNDOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GatherNDOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertGatherND::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v127 = *MEMORY[0x1E69E9840];
  v117 = a2;
  v126 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v116[0] = v7;
  v116[1] = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v115[0] = v9;
  v115[1] = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v114[0] = v12;
  v114[1] = v13;
  Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&v117);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v115);
  v17 = *(ArgAttrsAttr + 8 * v16 - 8);
  mlir::CallableOpInterface::getArgAttrsAttr(v116);
  if (v18 > 5 || (mlir::CallableOpInterface::getArgAttrsAttr(v115), v19 > 5) || (mlir::CallableOpInterface::getArgAttrsAttr(v114), v20 >= 6))
  {
    v124 = operator new(0x30uLL);
    v125[0] = xmmword_1E0982700;
    strcpy(v124, "Inputs / output with rank > 5 not supported");
    result = mlir::logMatchFailure(&v124, *(v117 + 24), a4);
    if ((SHIBYTE(v125[0]) & 0x80000000) == 0)
    {
      return result;
    }

    v22 = result;
    operator delete(v124);
    return v22;
  }

  v113 = mlir::ValueRange::dereference_iterator(&v126, 1);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v113 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) >= 9 && !mlir::Type::isF16(&ElementTypeOrSelf))
  {
    v24 = (*(v113 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v24)
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
    }

    else
    {
      v25 = 0;
    }

    *&v122 = v24;
    *(&v122 + 1) = v25;
    F16Type = mlir::Builder::getF16Type(a4 + 1, v23);
    LOBYTE(v124) = 0;
    BYTE8(v125[0]) = 0;
    mlir::ShapedType::cloneWith(&v122, &v124, F16Type);
    v27 = *(v117 + 24);
    *&v122 = mlir::Builder::getF16Type(a4 + 1, v28);
    v124 = v125 + 8;
    *&v125[0] = 0x100000000;
    mlir::OpBuilder::createOrFold<mlir::mps::CastOp,mlir::Value &,mlir::FloatType>((a4 + 1), &v124, v27, &v113, &v122);
    v29 = *v124;
    if (v124 != v125 + 8)
    {
      free(v124);
    }

    v113 = v29;
  }

  v30 = Count;
  v124 = v125 + 8;
  *&v125[0] = 0x500000000;
  v31 = mlir::CallableOpInterface::getArgAttrsAttr(v116);
  v32 = mlir::CallableOpInterface::getArgAttrsAttr(v116);
  v33 = 0;
  v35 = (v32 + 8 * v34);
  LODWORD(v125[0]) = 0;
  v36 = (v35 - v31) >> 3;
  if (v36 > DWORD1(v125[0]))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v125 + 8, v36, 8);
    v33 = v125[0];
  }

  if (v35 != v31)
  {
    memcpy(&v124[8 * v33], v31, v35 - v31);
    v33 = v125[0];
  }

  LODWORD(v125[0]) = v33 + ((v35 - v31) >> 3);
  mlir::CallableOpInterface::getArgAttrsAttr(v115);
  v38 = v37 + ~(v17 + v30);
  if (v38 >= 1)
  {
    v39 = v37 + ~(v17 + v30);
    do
    {
      *&v122 = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, &v124[8 * v30], &v122);
      --v39;
    }

    while (v39);
  }

  v40 = LODWORD(v125[0]);
  if (LODWORD(v125[0]) >= 5)
  {
    v41 = v125[0];
    if (LODWORD(v125[0]) != 5)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *&v122 = 1;
    llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
    if (v40 != 4)
    {
      *&v122 = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
      if (v40 != 3)
      {
        *&v122 = 1;
        llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
        if (v40 != 2)
        {
          *&v122 = 1;
          llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
          if (v40 != 1)
          {
            *&v122 = 1;
            llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v124, v124, &v122);
          }
        }
      }
    }

    v41 = v125[0];
    if (LODWORD(v125[0]) != 5)
    {
LABEL_42:
      std::to_string(&v120, v41);
      v42 = std::string::insert(&v120, 0, "Expected data tensor to have 5 dimensions after padding, but got ");
      v43 = v42->__r_.__value_.__r.__words[2];
      *&v121.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
      v121.__r_.__value_.__r.__words[2] = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v121, " dimensions instead.");
      v45 = v44->__r_.__value_.__r.__words[2];
      v122 = *&v44->__r_.__value_.__l.__data_;
      v123[0] = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      result = mlir::logMatchFailure(&v122, *(v117 + 24), a4);
      if (SHIBYTE(v123[0]) < 0)
      {
        v70 = result;
        operator delete(v122);
        result = v70;
        if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_44:
          if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_109;
          }

LABEL_73:
          v72 = result;
          operator delete(v120.__r_.__value_.__l.__data_);
LABEL_108:
          result = v72;
          goto LABEL_109;
        }
      }

      else if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v71 = result;
      operator delete(v121.__r_.__value_.__l.__data_);
      result = v71;
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_73;
    }
  }

  v46 = 5 - v40;
  *&v122 = v123;
  v47 = v124;
  v48 = &v124[8 * v30 + 8 * v46];
  *(&v122 + 1) = 0x500000000;
  v49 = 8 * v30 + 8 * v46;
  if ((v49 >> 3) < 6)
  {
    v50 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v123, v49 >> 3, 8);
    v50 = DWORD2(v122);
  }

  if (v47 != v48)
  {
    memcpy((v122 + 8 * v50), v47, 8 * v30 + 8 * v46);
    v50 = DWORD2(v122);
  }

  v51 = v50 + (v49 >> 3);
  DWORD2(v122) = v51;
  v52 = -v38;
  if (v38 < 0)
  {
    if (v52 <= 1)
    {
      v73 = 1;
    }

    else
    {
      v73 = -v38;
    }

    do
    {
      if (v51 >= HIDWORD(v122))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v123, v51 + 1, 8);
        v51 = DWORD2(v122);
      }

      *(v122 + 8 * v51) = 1;
      v51 = ++DWORD2(v122);
      --v73;
    }

    while (v73);
  }

  v53 = v122 + 8 * v51;
  v54 = (mlir::CallableOpInterface::getArgAttrsAttr(v115) + 8 * v30);
  v55 = mlir::CallableOpInterface::getArgAttrsAttr(v115);
  llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v122, v53, v54, (v55 + 8 * v56 - 8));
  v57 = (v38 & ~(v38 >> 63)) + v30 + v46;
  v58 = 5 - (v17 + v57);
  v59 = DWORD2(v122);
  if (v58 >= 1)
  {
    for (i = 0; i < v58; ++i)
    {
      if (v59 >= HIDWORD(v122))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v123, v59 + 1, 8);
        v59 = DWORD2(v122);
      }

      *(v122 + 8 * v59) = 1;
      v59 = ++DWORD2(v122);
    }
  }

  if (v59 == 5)
  {
    v121.__r_.__value_.__r.__words[0] = &v121.__r_.__value_.__r.__words[2];
    v121.__r_.__value_.__l.__size_ = 0x500000000;
    if (v17)
    {
      LODWORD(v61) = 0;
      v62 = v17;
      do
      {
        if (v61 >= HIDWORD(v121.__r_.__value_.__r.__words[1]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, &v121.__r_.__value_.__r.__words[2], v61 + 1, 8);
          LODWORD(v61) = v121.__r_.__value_.__r.__words[1];
        }

        *(v121.__r_.__value_.__r.__words[0] + 8 * v61) = v57;
        v61 = ++LODWORD(v121.__r_.__value_.__r.__words[1]);
        ++v57;
        --v62;
      }

      while (v62);
      v74 = v121.__r_.__value_.__r.__words[0];
    }

    else
    {
      v61 = 0;
      v74 = &v121.__r_.__value_.__s.__data_[16];
    }

    v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
    v120.__r_.__value_.__l.__size_ = 0x500000000;
    if (*&v74[8 * v61 - 8] > 2uLL)
    {
      v75 = (*(v113 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v75)
      {
        v76 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v75 + 8);
      }

      else
      {
        v76 = 0;
      }

      v118.__r_.__value_.__r.__words[0] = v75;
      v118.__r_.__value_.__l.__size_ = v76;
      mlir::CallableOpInterface::getArgAttrsAttr(&v118);
      v78 = v120.__r_.__value_.__r.__words[1];
      if (v77)
      {
        v79 = 0;
        v80 = v52 & ~(v52 >> 63);
        v81 = *(v121.__r_.__value_.__r.__words[0] + 8 * LODWORD(v121.__r_.__value_.__r.__words[1]) - 8);
        v82 = v80 + v77 - v81 + 1;
        v83 = v77 - 1;
        v84 = ~v80 + v81;
        do
        {
          if (v84 == v77)
          {
            v85 = v83;
          }

          else
          {
            v85 = (__PAIR128__(v79, v82) - v79) >> 64;
          }

          if (v78 >= HIDWORD(v120.__r_.__value_.__r.__words[1]))
          {
            v106 = v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, &v120.__r_.__value_.__r.__words[2], v78 + 1, 8);
            v77 = v106;
            v78 = v120.__r_.__value_.__r.__words[1];
          }

          *(v120.__r_.__value_.__r.__words[0] + 8 * v78) = v85;
          v78 = ++LODWORD(v120.__r_.__value_.__r.__words[1]);
          ++v79;
          --v77;
        }

        while (v77);
      }

      v86 = *(v117 + 24);
      v113 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, v86, &v113, &v118) - 16;
      v61 = LODWORD(v121.__r_.__value_.__r.__words[1]);
    }

    v118.__r_.__value_.__r.__words[0] = v61;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v88 = mlir::RankedTensorType::get(&v118, 1, IntegerType, 0);
    if (v88)
    {
      v89 = v88;
      v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v88 + 8);
      v88 = v89;
    }

    else
    {
      v90 = 0;
    }

    v111 = mlir::DenseElementsAttr::getFromRawBuffer(v88, v90, v121.__r_.__value_.__r.__words[0], 8 * LODWORD(v121.__r_.__value_.__r.__words[1]), 8, 1, 0);
    v91 = v124;
    v92 = LODWORD(v125[0]);
    isSplat = mlir::ElementsAttr::isSplat(v116);
    v110 = mlir::MemRefType::get(v91, v92, isSplat, 0, 0, 0);
    *&v118.__r_.__value_.__l.__data_ = *v122;
    v118.__r_.__value_.__r.__words[2] = *(v122 + 16) * v17;
    v119 = *(v122 + 24);
    v94 = mlir::getElementTypeOrSelf(v113);
    v109 = mlir::MemRefType::get(&v118, 5, v94, 0, 0, 0);
    v95 = *(v117 + 24);
    v118.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v126, 0);
    v108 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), v95, &v110, &v118) - 16;
    v113 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v117 + 24), &v109, &v113) - 16;
    v107 = mlir::OpBuilder::create<mlir::anec::GatherND,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &>(a4 + 1, *(v117 + 24), &v108, &v113, &v111);
    v96 = mlir::CallableOpInterface::getArgAttrsAttr(v114);
    v98 = v97;
    v99 = mlir::ElementsAttr::isSplat(v114);
    v100 = mlir::MemRefType::get(v96, v98, v99, 0, 0, 0);
    v101 = v117;
    if (v100)
    {
      v102 = v100;
      v103 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
      v100 = v102;
    }

    else
    {
      v103 = 0;
    }

    v118.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v100, v103);
    v118.__r_.__value_.__l.__size_ = v104;
    v105 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::ShapedType,mlir::anec::GatherND &>((a4 + 1), *(v101 + 24), &v118, &v107);
    (*(*a4 + 1))(a4, v101, v105);
    if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
    {
      free(v120.__r_.__value_.__l.__data_);
    }

    if (v121.__r_.__value_.__l.__data_ != &v121.__r_.__value_.__r.__words[2])
    {
      free(v121.__r_.__value_.__l.__data_);
    }

    result = 1;
  }

  else
  {
    std::to_string(&v118, v59);
    v63 = std::string::insert(&v118, 0, "Expected index tensor to have 5 dimensions after padding, but got ");
    v64 = v63->__r_.__value_.__r.__words[2];
    *&v120.__r_.__value_.__l.__data_ = *&v63->__r_.__value_.__l.__data_;
    v120.__r_.__value_.__r.__words[2] = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    v65 = std::string::append(&v120, " dimensions instead.");
    v66 = v65->__r_.__value_.__r.__words[2];
    *&v121.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
    v121.__r_.__value_.__r.__words[2] = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    result = mlir::logMatchFailure(&v121, *(v117 + 24), a4);
    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      v67 = result;
      operator delete(v121.__r_.__value_.__l.__data_);
      result = v67;
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      v68 = result;
      operator delete(v120.__r_.__value_.__l.__data_);
      result = v68;
    }

    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      v69 = result;
      operator delete(v118.__r_.__value_.__l.__data_);
      result = v69;
    }
  }

  if (v122 != v123)
  {
    v72 = result;
    free(v122);
    goto LABEL_108;
  }

LABEL_109:
  if (v124 != v125 + 8)
  {
    v22 = result;
    free(v124);
    return v22;
  }

  return result;
}