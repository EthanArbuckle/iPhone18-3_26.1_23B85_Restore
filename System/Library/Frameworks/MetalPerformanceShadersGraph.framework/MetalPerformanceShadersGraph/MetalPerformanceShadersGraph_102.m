uint64_t mlir::OpConversionPattern<mlir::mps::GreaterThanOrEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GreaterThanOrEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_26;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (!v15)
  {
    v18 = 0;
    if (v25 >= 0x41)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v26);
    ((*a4)[1])(a4, a2, v20);
    matched = 1;
    goto LABEL_27;
  }

  if (v25 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_26;
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!__p)
  {
    goto LABEL_21;
  }

  operator delete[](__p);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_22:
  __p = operator new(0x48uLL);
  v25 = xmmword_1E0982730;
  strcpy(__p, "failed: ConvertBinaryCompare expects the second operand to be non-zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_27:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqual,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqual,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqual,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqualZero>::~ConvertBinaryCompareToZero(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqualZero>::~ConvertBinaryCompareToZero(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (v15)
  {
    if (v25 >= 0x41)
    {
      if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_24;
      }

      v17 = __p;
    }

    else
    {
      v17 = &__p;
    }

    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
    if (v25 < 0x41)
    {
      goto LABEL_20;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_20:
  if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::Value &>(a4 + 1, *(a2 + 24), v26);
    ((*a4)[1])(a4, a2, v19);
    matched = 1;
    goto LABEL_26;
  }

LABEL_24:
  __p = operator new(0x50uLL);
  v25 = xmmword_1E0982740;
  strcpy(__p, "failed: ConvertBinaryCompareToZero expects the second operand to be zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqualZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqualZero,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThan>::~ConvertBinaryCompare(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThan>::~ConvertBinaryCompare(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LessThanOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LessThanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LessThanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThan>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_26;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (!v15)
  {
    v18 = 0;
    if (v25 >= 0x41)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThan,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v26);
    ((*a4)[1])(a4, a2, v20);
    matched = 1;
    goto LABEL_27;
  }

  if (v25 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_26;
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!__p)
  {
    goto LABEL_21;
  }

  operator delete[](__p);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_22:
  __p = operator new(0x48uLL);
  v25 = xmmword_1E0982730;
  strcpy(__p, "failed: ConvertBinaryCompare expects the second operand to be non-zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_27:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseLessThan,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThan,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseLessThan,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThan,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThanZero>::~ConvertBinaryCompareToZero(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThanZero>::~ConvertBinaryCompareToZero(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThanZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (v15)
  {
    if (v25 >= 0x41)
    {
      if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_24;
      }

      v17 = __p;
    }

    else
    {
      v17 = &__p;
    }

    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
    if (v25 < 0x41)
    {
      goto LABEL_20;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_20:
  if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanZero,mlir::Value &>(a4 + 1, *(a2 + 24), v26);
    ((*a4)[1])(a4, a2, v19);
    matched = 1;
    goto LABEL_26;
  }

LABEL_24:
  __p = operator new(0x50uLL);
  v25 = xmmword_1E0982740;
  strcpy(__p, "failed: ConvertBinaryCompareToZero expects the second operand to be zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanZero,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanZero,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanZero,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqual>::~ConvertBinaryCompare(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqual>::~ConvertBinaryCompare(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LessThanOrEqualToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LessThanOrEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LessThanOrEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_26;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (!v15)
  {
    v18 = 0;
    if (v25 >= 0x41)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v26);
    ((*a4)[1])(a4, a2, v20);
    matched = 1;
    goto LABEL_27;
  }

  if (v25 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_26;
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!__p)
  {
    goto LABEL_21;
  }

  operator delete[](__p);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_22:
  __p = operator new(0x48uLL);
  v25 = xmmword_1E0982730;
  strcpy(__p, "failed: ConvertBinaryCompare expects the second operand to be non-zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_27:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqual,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqual,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqual,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqualZero>::~ConvertBinaryCompareToZero(void *a1)
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqualZero>::~ConvertBinaryCompareToZero(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (v15)
  {
    if (v25 >= 0x41)
    {
      if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_24;
      }

      v17 = __p;
    }

    else
    {
      v17 = &__p;
    }

    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
    if (v25 < 0x41)
    {
      goto LABEL_20;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_20:
  if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqualZero,mlir::Value &>(a4 + 1, *(a2 + 24), v26);
    ((*a4)[1])(a4, a2, v19);
    matched = 1;
    goto LABEL_26;
  }

LABEL_24:
  __p = operator new(0x50uLL);
  v25 = xmmword_1E0982740;
  strcpy(__p, "failed: ConvertBinaryCompareToZero expects the second operand to be zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqualZero,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqualZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqualZero,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqualZero,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::NotOp,mlir::anec::ElementwiseEqualZero>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0F1C0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF3192C()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::NotOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NotOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::NotOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::NotOp,mlir::anec::ElementwiseEqualZero>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id)
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

void *mlir::anonymous namespace::ConvertPool<mlir::mps::PoolAvgOp,mlir::anec::AveragePool>::~ConvertPool(void *a1)
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

void mlir::anonymous namespace::ConvertPool<mlir::mps::PoolAvgOp,mlir::anec::AveragePool>::~ConvertPool(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PoolAvgOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PoolAvgOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PoolAvgOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertPool<mlir::mps::PoolAvgOp,mlir::anec::AveragePool>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v167 = *MEMORY[0x1E69E9840];
  v128 = a2;
  v160 = *(a3 + 96);
  v6 = mlir::ValueRange::dereference_iterator(&v160, 0);
  if (*(a2 + 36) >= 2u && *(a2 - 32))
  {
    v165[0] = operator new(0x48uLL);
    *&v165[1] = xmmword_1E0982670;
    strcpy(v165[0], "failed: pooling with indices operation is not supported on ANEs.");
    matched = mlir::logMatchFailure(v165, *(a2 + 24), a4);
    if (SHIBYTE(v165[2]) < 0)
    {
      operator delete(v165[0]);
    }

    return matched;
  }

  v8 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  if ((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  mlir::mps::getElementBitWidth(v8);
  __src = v159;
  v158 = 0x400000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v128);
  if (Strides)
  {
    v10 = Strides;
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v11, &__src, 1);
  v154 = v156;
  v155 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v128);
  if (InputAttributeNames)
  {
    v13 = InputAttributeNames;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v14, &v154, 1);
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v128);
  v151 = v153;
  v152 = 0x800000000;
  if (PaddingStyle)
  {
LABEL_24:
    v148 = v150;
    v149 = 0x400000000;
    WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v128);
    if (WindowSizes)
    {
      v22 = WindowSizes;
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
      WindowSizes = v22;
    }

    else
    {
      v23 = 0;
    }

    mlir::getIntValues<unsigned long long>(WindowSizes, v23, &v148, 1);
    ResetAfter = mlir::mps::GRUOp::getResetAfter(&v128);
    InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v128);
    if (v155)
    {
      v26 = v154;
      v27 = 8 * v155;
      while (*v26 == 1)
      {
        ++v26;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_31;
        }
      }

      v165[0] = operator new(0x28uLL);
      *&v165[1] = xmmword_1E09826C0;
      strcpy(v165[0], "Dilated Pooling not supported on ANE");
      goto LABEL_116;
    }

LABEL_31:
    v125 = ResetAfter;
    v28 = v128;
    v126 = v160;
    v145 = v147;
    v146 = 0x400000000;
    v29 = v158;
    if (!v158)
    {
LABEL_39:
      v142 = v144;
      v143 = 0x400000000;
      v32 = v149;
      if (!v149)
      {
        goto LABEL_46;
      }

      if (v149 < 5)
      {
        v34 = v144;
        v33 = v149;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v142, v144, v149, 8);
        v33 = v149;
        if (!v149)
        {
LABEL_45:
          LODWORD(v143) = v32;
LABEL_46:
          v139 = v141;
          v140 = 0x800000000;
          v35 = v152;
          if (!v152)
          {
            goto LABEL_53;
          }

          if (v152 < 9)
          {
            v37 = v141;
            v36 = v152;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v141, v152, 8);
            v36 = v152;
            if (!v152)
            {
LABEL_52:
              LODWORD(v140) = v35;
LABEL_53:
              v166 = v126;
              v138 = mlir::ValueRange::dereference_iterator(&v166, 0);
              v38 = *(v28 + 24);
              v39 = (*(v138 + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v39)
              {
                v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v39 + 8);
              }

              else
              {
                v40 = 0;
              }

              RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v39, v40);
              v137 = v41;
              mlir::mps::getElementBitWidth(RankPromotionTypeForANE);
              v43 = *v145;
              v42 = *(v145 + 1);
              if (*v145 == 1)
              {
                v44 = *(v145 + 1);
                if (v42 == 1)
                {
                  v45 = 0;
                  goto LABEL_64;
                }
              }

              else
              {
                if (v42 != 1)
                {
                  v165[0] = operator new(0x28uLL);
                  *&v165[1] = xmmword_1E0982750;
                  strcpy(v165[0], "Cannot infer 5D layout based on strides");
                  goto LABEL_102;
                }

                v44 = 1;
              }

              v46 = v43 >= v44;
              LODWORD(v44) = v43 >= v44;
              v45 = !v46;
LABEL_64:
              v47 = v142;
              v48 = *v142;
              v49 = *(v142 + 1);
              if (*v142 == 1)
              {
                if (v49 == 1)
                {
                  v50 = 0;
                  if (v43 != 1)
                  {
LABEL_75:
                    if (v44 == v49 && v45 == v50)
                    {
LABEL_77:
                      v127 = v28;
                      if (v44)
                      {
                        v51 = 0;
                      }

                      else
                      {
                        v51 = v45 == 1;
                      }

                      v52 = v51;
                      if (!v51)
                      {
                        goto LABEL_90;
                      }

                      mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                      __p = mlir::anec::getIndexFromDim(1, v53);
                      LOBYTE(v162) = v54;
                      mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                      IndexFromDim = mlir::anec::getIndexFromDim(2, v55);
                      LOBYTE(v135) = v56;
                      if (v162 == 1 && (v56 & 1) != 0)
                      {
                        *v145 = vextq_s8(*v145, *v145, 8uLL);
                        *v142 = vextq_s8(*v142, *v142, 8uLL);
                        if (!PaddingStyle)
                        {
                          v57 = v139;
                          v58 = *v139;
                          *v139 = *(v139 + 1);
                          v57[1] = v58;
                        }

                        v138 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), v38, &v138, &IndexFromDim, &__p) - 16;
                        LODWORD(v44) = 1;
                        v47 = v142;
LABEL_90:
                        if (v47[v44] != 1)
                        {
                          v165[0] = operator new(0x38uLL);
                          *&v165[1] = xmmword_1E0982760;
                          strcpy(v165[0], "ANEC does not kernel size != 1 in channel dimension");
                          mlir::logMatchFailure(v165, *(v127 + 24), a4);
                          if (SHIBYTE(v165[2]) < 0)
                          {
                            operator delete(v165[0]);
                          }

                          v61 = 0;
                          v62 = 0;
                          v63 = 0;
                          goto LABEL_106;
                        }

                        v59 = v44;
                        v60 = v145;
                        if (*(v145 + v44) != 1)
                        {
                          v165[0] = operator new(0x38uLL);
                          *&v165[1] = xmmword_1E0982760;
                          strcpy(v165[0], "ANEC does not support striding in channel dimension");
                          v68 = *(v127 + 24);
                          v69 = v165;
LABEL_165:
                          mlir::logMatchFailure(v69, v68, a4);
                          if (SHIBYTE(v165[2]) < 0)
                          {
                            operator delete(v165[0]);
                          }

                          v61 = 0;
                          v62 = 0;
                          v63 = 0;
                          goto LABEL_106;
                        }

                        if (PaddingStyle > 1)
                        {
                          if (PaddingStyle != 2 && PaddingStyle != 4)
                          {
LABEL_160:
                            v108 = "Unsupported paddingStyle";
LABEL_164:
                            v69 = std::string::basic_string[abi:nn200100]<0>(v165, v108);
                            v68 = *(v127 + 24);
                            goto LABEL_165;
                          }

                          v124 = v52;
                          llvm::SmallVectorImpl<unsigned long long>::resize(&v139, 8uLL, 0);
                        }

                        else
                        {
                          if (PaddingStyle)
                          {
                            if (PaddingStyle == 1)
                            {
                              v124 = v52;
                              llvm::SmallVectorImpl<unsigned long long>::resize(&v139, 8uLL, 0);
                              goto LABEL_136;
                            }

                            goto LABEL_160;
                          }

                          v109 = v139 + 8 * (2 * v44);
                          if (*v109 || v109[1])
                          {
                            v108 = "padding is only supported in t,b,l,r,f,b";
                            goto LABEL_164;
                          }

                          v124 = v52;
                          if (InferredResultTypes && v146)
                          {
                            v116 = 0;
                            v117 = 0;
                            v118 = 16 * v146;
                            do
                            {
                              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                              v120 = *(v139 + v117 + 8);
                              if ((*(v139 + v117) + *(ArgAttrsAttr + v116) + v120 - *(v142 + v116) + *&v60[v116]) % *&v60[v116])
                              {
                                *(v139 + v117 + 8) = v120 + 1;
                              }

                              v117 += 16;
                              v116 += 8;
                            }

                            while (v118 != v117);
                          }
                        }

LABEL_136:
                        v70 = v145;
                        v71 = v145 + 8 * v59;
                        v72 = v146;
                        v73 = v145 + 8 * v146;
                        if (v73 != v71 + 8)
                        {
                          memmove(v71, v71 + 8, v73 - (v71 + 8));
                          v72 = v146;
                          v70 = v145;
                        }

                        v74 = v72 - 1;
                        LODWORD(v146) = v74;
                        if (v74 != 1)
                        {
                          v75 = *v70;
                          v76 = 8 * v74 - 8;
                          memmove(v70, v70 + 1, v76);
                          *(v70 + v76) = v75;
                        }

                        v77 = v142;
                        v78 = v142 + 8 * v59;
                        v79 = v143;
                        v80 = v142 + 8 * v143;
                        if (v80 != v78 + 8)
                        {
                          memmove(v78, v78 + 8, v80 - (v78 + 8));
                          v79 = v143;
                          v77 = v142;
                        }

                        v81 = v79 - 1;
                        LODWORD(v143) = v81;
                        if (v81 != 1)
                        {
                          v82 = *v77;
                          v83 = 8 * v81 - 8;
                          memmove(v77, v77 + 1, v83);
                          *(v77 + v83) = v82;
                        }

                        v84 = v139;
                        v85 = v139 + 8 * (2 * v59);
                        v86 = v139 + 8 * v140;
                        v87 = v86 - (v85 + 16);
                        if (v86 != v85 + 16)
                        {
                          memmove(v139 + 8 * (2 * v59), v85 + 16, v86 - (v85 + 16));
                          v84 = v139;
                        }

                        v88 = &v85[v87] - v84;
                        LODWORD(v140) = v88 >> 3;
                        std::rotate[abi:nn200100]<unsigned long long *>(v84, v84 + 16, &v84[v88 & 0x7FFFFFFF8]);
                        v165[0] = &v165[2];
                        v165[1] = 0x400000000;
                        v165[10] = 4;
                        __p = 3;
                        IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                        v90 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
                        __p = 6;
                        v91 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                        v92 = mlir::RankedTensorType::get(&__p, 1, v91, 0);
                        __p = "ksize";
                        v164 = 259;
                        StringAttr = mlir::Builder::getStringAttr((a4 + 8), &__p);
                        if (v90)
                        {
                          v94 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v90 + 8);
                        }

                        else
                        {
                          v94 = 0;
                        }

                        v95 = mlir::DenseElementsAttr::getFromRawBuffer(v90, v94, v142, 8 * v143, 8, 1, 0);
                        mlir::NamedAttrList::set(v165, StringAttr, v95);
                        __p = "stride";
                        v164 = 259;
                        v96 = mlir::Builder::getStringAttr((a4 + 8), &__p);
                        if (v90)
                        {
                          v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v90 + 8);
                        }

                        else
                        {
                          v97 = 0;
                        }

                        v98 = mlir::DenseElementsAttr::getFromRawBuffer(v90, v97, v145, 8 * v146, 8, 1, 0);
                        mlir::NamedAttrList::set(v165, v96, v98);
                        __p = "padding";
                        v164 = 259;
                        v99 = mlir::Builder::getStringAttr((a4 + 8), &__p);
                        if (v92)
                        {
                          v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v92 + 8);
                        }

                        else
                        {
                          v100 = 0;
                        }

                        v101 = mlir::DenseElementsAttr::getFromRawBuffer(v92, v100, v139, 8 * v140, 8, 1, 0);
                        mlir::NamedAttrList::set(v165, v99, v101);
                        if (v125)
                        {
                          UnitAttr = mlir::Builder::getUnitAttr((a4 + 8), v102);
                          mlir::NamedAttrList::set(v165, "inc_pad", 7, UnitAttr);
                        }

                        v104 = mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), *(v127 + 24), &v138, v165);
                        v105 = v104 - 16;
                        v133 = v104 - 16;
                        if (v124)
                        {
                          v106 = (*(v104 - 8) & 0xFFFFFFFFFFFFFFF8);
                          if (v106)
                          {
                            v107 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v106 + 8);
                          }

                          else
                          {
                            v107 = 0;
                          }

                          IndexFromDim = v106;
                          v135 = v107;
                          mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
                          v111 = mlir::anec::getIndexFromDim(1, v110);
                          v113 = v112;
                          v131 = v111;
                          v132 = v112;
                          mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
                          v129 = mlir::anec::getIndexFromDim(2, v114);
                          v130 = v115;
                          if ((v113 & 1) == 0 || (v115 & 1) == 0)
                          {
                            std::string::basic_string[abi:nn200100]<0>(&__p, "Cannot infer channel and depth dimensions for 3D Pooling");
                            mlir::logMatchFailure(&__p, *(v127 + 24), a4);
                            if (v163 < 0)
                            {
                              operator delete(__p);
                            }

                            v61 = 0;
                            v62 = 0;
                            v63 = 0;
                            goto LABEL_176;
                          }

                          v105 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), *(v127 + 24), &v133, &v129, &v131) - 16;
                          v133 = v105;
                        }

                        v63 = v105 & 0xFFFFFFFFFFFFFF00;
                        v61 = v105;
                        v62 = 1;
LABEL_176:
                        if (v165[0] != &v165[2])
                        {
                          free(v165[0]);
                        }

LABEL_106:
                        if (v139 != v141)
                        {
                          free(v139);
                        }

                        if (v142 != v144)
                        {
                          free(v142);
                        }

                        if (v145 != v147)
                        {
                          free(v145);
                        }

                        if (v62)
                        {
                          v165[0] = &v165[2];
                          v165[2] = (v63 | v61);
                          v165[1] = 0x200000001;
                          v65 = v128;
                          if (*(v128 + 36) < 2u)
                          {
                            v66 = 1;
                          }

                          else
                          {
                            v165[3] = 0;
                            v66 = 2;
                            LODWORD(v165[1]) = 2;
                          }

                          mlir::ValueRange::ValueRange(&__p, &v165[2], v66);
                          mlir::ConversionPatternRewriter::replaceOp(a4, v65, __p, v162);
                          if (v165[0] != &v165[2])
                          {
                            free(v165[0]);
                          }

                          matched = 1;
LABEL_122:
                          if (v148 != v150)
                          {
                            free(v148);
                          }

LABEL_124:
                          if (v151 != v153)
                          {
                            free(v151);
                          }

                          if (v154 != v156)
                          {
                            free(v154);
                          }

                          if (__src != v159)
                          {
                            free(__src);
                          }

                          return matched;
                        }

                        v165[0] = operator new(0x68uLL);
                        *&v165[1] = xmmword_1E0982770;
                        strcpy(v165[0], "failed: POOLING_TRANSFORM macro is undefined. Ensure it is defined to support mps.pool op for ANE.");
LABEL_116:
                        matched = mlir::logMatchFailure(v165, *(v128 + 24), a4);
                        if (SHIBYTE(v165[2]) < 0)
                        {
                          operator delete(v165[0]);
                        }

                        goto LABEL_122;
                      }

                      v165[0] = operator new(0x38uLL);
                      *&v165[1] = xmmword_1E0982710;
                      strcpy(v165[0], "Cannot infer channel and depth dimensions for pooling");
                      v64 = *(v127 + 24);
LABEL_103:
                      mlir::logMatchFailure(v165, v64, a4);
                      if (SHIBYTE(v165[2]) < 0)
                      {
                        operator delete(v165[0]);
                      }

                      v61 = 0;
                      v62 = 0;
                      v63 = 0;
                      goto LABEL_106;
                    }

                    strcpy(v165, "Unable to infer layout");
                    HIBYTE(v165[2]) = 22;
LABEL_102:
                    v64 = *(v28 + 24);
                    goto LABEL_103;
                  }

LABEL_73:
                  if (v42 == 1)
                  {
                    LODWORD(v44) = v49;
                    v45 = v50;
                    goto LABEL_77;
                  }

                  goto LABEL_75;
                }
              }

              else if (v49 != 1)
              {
                v165[0] = operator new(0x30uLL);
                *&v165[1] = xmmword_1E0982700;
                strcpy(v165[0], "Cannot infer 5D layout based on kernel size");
                goto LABEL_102;
              }

              v46 = v48 >= v49;
              LODWORD(v49) = v48 >= v49;
              v50 = !v46;
              if (v43 != 1)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }

            v37 = v139;
          }

          memcpy(v37, v151, 8 * v36);
          goto LABEL_52;
        }

        v34 = v142;
      }

      memcpy(v34, v148, 8 * v33);
      goto LABEL_45;
    }

    if (v158 < 5)
    {
      v31 = v147;
      v30 = v158;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v147, v158, 8);
      v30 = v158;
      if (!v158)
      {
LABEL_38:
        LODWORD(v146) = v29;
        goto LABEL_39;
      }

      v31 = v145;
    }

    memcpy(v31, __src, 8 * v30);
    goto LABEL_38;
  }

  mlir::mps::StencilOp::getOffsets(&v128);
  if ((v16 & 1) == 0)
  {
    v165[0] = operator new(0x30uLL);
    *&v165[1] = xmmword_1E0982700;
    strcpy(v165[0], "padding is null but paddingStyle is EXPLICT");
    matched = mlir::logMatchFailure(v165, *(v128 + 24), a4);
    if (SHIBYTE(v165[2]) < 0)
    {
      operator delete(v165[0]);
    }

    goto LABEL_124;
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v128);
  if (v18)
  {
    if (Offsets)
    {
      v19 = Offsets;
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
      Offsets = v19;
    }

    else
    {
      v20 = 0;
    }

    mlir::getIntValues<unsigned long long>(Offsets, v20, &v151, 1);
    goto LABEL_24;
  }

  v121 = std::__throw_bad_optional_access[abi:nn200100]();
  return llvm::SmallVectorImpl<unsigned long long>::resize(v121, v122, v123);
}

uint64_t llvm::SmallVectorImpl<unsigned long long>::resize(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 8);
  v4 = a2 - v3;
  if (a2 != v3)
  {
    if (a2 < v3)
    {
LABEL_11:
      *(result + 8) = a2;
      return result;
    }

    if (*(result + 12) < a2)
    {
      v12 = a2 - v3;
      v13 = result;
      v11 = a3;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, a2, 8);
      a3 = v11;
      v4 = v12;
      result = v13;
      v3 = *(v13 + 8);
      if (v12)
      {
        goto LABEL_5;
      }
    }

    else if (v4)
    {
LABEL_5:
      v5 = *result + 8 * v3;
      v6 = v5;
      v7 = v4;
      if (v4 < 4)
      {
        goto LABEL_17;
      }

      v6 = (v5 + 8 * (v4 & 0xFFFFFFFFFFFFFFFCLL));
      v7 = v4 & 3;
      v8 = vdupq_n_s64(a3);
      v9 = (v5 + 16);
      v10 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v9[-1] = v8;
        *v9 = v8;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v4 != (v4 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_17:
        do
        {
          *v6++ = a3;
          --v7;
        }

        while (v7);
      }
    }

    LODWORD(a2) = v3 + v4;
    goto LABEL_11;
  }

  return result;
}

uint64_t mlir::anonymous namespace::updatePoolPadding(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t **a7, int a8, char a9)
{
  v55[0] = a1;
  v55[1] = a2;
  v13 = *a3;
  v14 = *a5;
  mlir::CallableOpInterface::getArgAttrsAttr(v55);
  v16 = *(mlir::CallableOpInterface::getArgAttrsAttr(v55) + 8 * (v15 - 4));
  v17 = v16 % v14;
  if (v16 % v14)
  {
    v18 = v16 % v14;
  }

  else
  {
    v18 = v14;
  }

  v19 = (v13 - v18) & ~((v13 - v18) >> 63);
  v20 = v19 >> 1;
  v21 = *a7;
  v22 = v19 - (v19 >> 1);
  *v21 = v20;
  v21[1] = v22;
  if (a9)
  {
    *v21 = v22;
    v21[1] = v20;
    v22 = v20;
  }

  if (v17)
  {
    v23 = a8 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v21[1] = v22 + 1;
  }

  v24 = a3[1];
  v25 = a5[1];
  mlir::CallableOpInterface::getArgAttrsAttr(v55);
  v27 = *(mlir::CallableOpInterface::getArgAttrsAttr(v55) + 8 * (v26 - 3));
  v28 = v27 % v25;
  if (v27 % v25)
  {
    v29 = v27 % v25;
  }

  else
  {
    v29 = v25;
  }

  v30 = (v24 - v29) & ~((v24 - v29) >> 63);
  v31 = v30 >> 1;
  v32 = *a7;
  v33 = v30 - (v30 >> 1);
  v32[2] = v31;
  v32[3] = v33;
  if (a9)
  {
    v32[2] = v33;
    v32[3] = v31;
    v33 = v31;
  }

  if (v28)
  {
    v34 = a8 == 0;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    v32[3] = v33 + 1;
  }

  v35 = a3[2];
  v36 = a5[2];
  mlir::CallableOpInterface::getArgAttrsAttr(v55);
  v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v55) + 8 * (v37 - 2)) % v36;
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v36;
  }

  v40 = (v35 - v39) & ~((v35 - v39) >> 63);
  v41 = v40 >> 1;
  v42 = *a7;
  v43 = v40 - (v40 >> 1);
  v42[4] = v41;
  v42[5] = v43;
  if (a9)
  {
    v42[4] = v43;
    v42[5] = v41;
    v43 = v41;
  }

  if (v38 && a8)
  {
    v42[5] = v43 + 1;
  }

  v44 = a3[3];
  v45 = a5[3];
  mlir::CallableOpInterface::getArgAttrsAttr(v55);
  v47 = v46 - 1;
  result = mlir::CallableOpInterface::getArgAttrsAttr(v55);
  v49 = *(result + 8 * v47) % v45;
  if (v49)
  {
    v50 = *(result + 8 * v47) % v45;
  }

  else
  {
    v50 = v45;
  }

  v51 = (v44 - v50) & ~((v44 - v50) >> 63);
  v52 = v51 >> 1;
  v53 = *a7;
  v54 = v51 - (v51 >> 1);
  v53[6] = v52;
  v53[7] = v54;
  if (a9)
  {
    v53[6] = v54;
    v53[7] = v52;
    v54 = v52;
  }

  if (v49)
  {
    if (a8)
    {
      v53[7] = v54 + 1;
    }
  }

  return result;
}

char *std::rotate[abi:nn200100]<unsigned long long *>(char *__src, char *a2, char *a3)
{
  v3 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else
    {
      v4 = __src + 8;
      if (__src + 8 == a2)
      {
        v11 = *__src;
        v12 = a3 - a2;
        v13 = __src;
        memmove(__src, __src + 8, a3 - a2);
        v3 = &v13[v12];
        *v3 = v11;
      }

      else
      {
        v5 = a2 + 8;
        if (a2 + 8 == a3)
        {
          v14 = a3 - 8;
          v15 = *(a3 - 1);
          v3 = __src + 8;
          v16 = a3 - 8 - __src;
          if (v14 != __src)
          {
            v17 = __src;
            memmove(__src + 8, __src, v16);
            __src = v17;
          }

          *__src = v15;
        }

        else
        {
          v6 = a2 - __src;
          v7 = (a2 - __src) >> 3;
          v8 = (a3 - a2) >> 3;
          if (v7 == v8)
          {
            do
            {
              v9 = *(v4 - 1);
              *(v4 - 1) = *(v5 - 1);
              *(v5 - 1) = v9;
              if (v4 == a2)
              {
                break;
              }

              v4 += 8;
              v10 = v5 == a3;
              v5 += 8;
            }

            while (!v10);
            return a2;
          }

          else
          {
            v18 = (a2 - __src) >> 3;
            do
            {
              v19 = v18;
              v18 = v8;
              v8 = v19 % v8;
            }

            while (v8);
            v20 = &__src[8 * v18];
            do
            {
              v22 = *(v20 - 1);
              v20 -= 8;
              v21 = v22;
              v23 = &v20[v6];
              v24 = v20;
              do
              {
                v25 = v24;
                v24 = v23;
                *v25 = *v23;
                v26 = (a3 - v23) >> 3;
                v27 = __OFSUB__(v7, v26);
                v29 = v7 - v26;
                v28 = (v29 < 0) ^ v27;
                v23 = &__src[8 * v29];
                if (v28)
                {
                  v23 = v24 + v6;
                }
              }

              while (v23 != v20);
              *v24 = v21;
            }

            while (v20 != __src);
            return &__src[a3 - a2];
          }
        }
      }
    }
  }

  return v3;
}

uint64_t mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, mlir::NamedAttrList *a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::AveragePool::build(a1, v19, a3, 1uLL, Attrs, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id)
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

void *mlir::anonymous namespace::ConvertPool<mlir::mps::PoolL2NormOp,mlir::anec::L2NormPool>::~ConvertPool(void *a1)
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

void mlir::anonymous namespace::ConvertPool<mlir::mps::PoolL2NormOp,mlir::anec::L2NormPool>::~ConvertPool(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PoolL2NormOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PoolL2NormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PoolL2NormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertPool<mlir::mps::PoolL2NormOp,mlir::anec::L2NormPool>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v164 = *MEMORY[0x1E69E9840];
  v125 = a2;
  v157 = *(a3 + 96);
  v6 = mlir::ValueRange::dereference_iterator(&v157, 0);
  if (*(a2 + 36) >= 2u && *(a2 - 32))
  {
    v162[0] = operator new(0x48uLL);
    *&v162[1] = xmmword_1E0982670;
    strcpy(v162[0], "failed: pooling with indices operation is not supported on ANEs.");
    matched = mlir::logMatchFailure(v162, *(a2 + 24), a4);
    if (SHIBYTE(v162[2]) < 0)
    {
      operator delete(v162[0]);
    }

    return matched;
  }

  v8 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  if ((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  mlir::mps::getElementBitWidth(v8);
  __src = v156;
  v155 = 0x400000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v125);
  if (Strides)
  {
    v10 = Strides;
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v11, &__src, 1);
  v151 = v153;
  v152 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v125);
  if (InputAttributeNames)
  {
    v13 = InputAttributeNames;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v14, &v151, 1);
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v125);
  v148 = v150;
  v149 = 0x800000000;
  if (PaddingStyle)
  {
LABEL_24:
    v145 = v147;
    v146 = 0x400000000;
    WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v125);
    if (WindowSizes)
    {
      v22 = WindowSizes;
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
      WindowSizes = v22;
    }

    else
    {
      v23 = 0;
    }

    mlir::getIntValues<unsigned long long>(WindowSizes, v23, &v145, 1);
    mlir::mps::GRUOp::getResetAfter(&v125);
    InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v125);
    if (v152)
    {
      v25 = v151;
      v26 = 8 * v152;
      while (*v25 == 1)
      {
        ++v25;
        v26 -= 8;
        if (!v26)
        {
          goto LABEL_31;
        }
      }

      v162[0] = operator new(0x28uLL);
      *&v162[1] = xmmword_1E09826C0;
      strcpy(v162[0], "Dilated Pooling not supported on ANE");
      goto LABEL_116;
    }

LABEL_31:
    v27 = v125;
    v123 = v157;
    v142 = v144;
    v143 = 0x400000000;
    v28 = v155;
    if (!v155)
    {
LABEL_39:
      v139 = v141;
      v140 = 0x400000000;
      v31 = v146;
      if (!v146)
      {
        goto LABEL_46;
      }

      if (v146 < 5)
      {
        v33 = v141;
        v32 = v146;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v141, v146, 8);
        v32 = v146;
        if (!v146)
        {
LABEL_45:
          LODWORD(v140) = v31;
LABEL_46:
          v136 = v138;
          v137 = 0x800000000;
          v34 = v149;
          if (!v149)
          {
            goto LABEL_53;
          }

          if (v149 < 9)
          {
            v36 = v138;
            v35 = v149;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v138, v149, 8);
            v35 = v149;
            if (!v149)
            {
LABEL_52:
              LODWORD(v137) = v34;
LABEL_53:
              v163 = v123;
              v135 = mlir::ValueRange::dereference_iterator(&v163, 0);
              v37 = *(v27 + 24);
              v38 = (*(v135 + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v38)
              {
                v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
              }

              else
              {
                v39 = 0;
              }

              RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v38, v39);
              v134 = v40;
              mlir::mps::getElementBitWidth(RankPromotionTypeForANE);
              v42 = *v142;
              v41 = *(v142 + 1);
              if (*v142 == 1)
              {
                v43 = *(v142 + 1);
                if (v41 == 1)
                {
                  v44 = 0;
                  goto LABEL_64;
                }
              }

              else
              {
                if (v41 != 1)
                {
                  v162[0] = operator new(0x28uLL);
                  *&v162[1] = xmmword_1E0982750;
                  strcpy(v162[0], "Cannot infer 5D layout based on strides");
                  goto LABEL_102;
                }

                v43 = 1;
              }

              v45 = v42 >= v43;
              LODWORD(v43) = v42 >= v43;
              v44 = !v45;
LABEL_64:
              v46 = v139;
              v47 = *v139;
              v48 = *(v139 + 1);
              if (*v139 == 1)
              {
                if (v48 == 1)
                {
                  v49 = 0;
                  if (v42 != 1)
                  {
LABEL_75:
                    if (v43 == v48 && v44 == v49)
                    {
LABEL_77:
                      v124 = v27;
                      if (v43)
                      {
                        v50 = 0;
                      }

                      else
                      {
                        v50 = v44 == 1;
                      }

                      v51 = v50;
                      if (!v50)
                      {
                        goto LABEL_90;
                      }

                      mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                      __p = mlir::anec::getIndexFromDim(1, v52);
                      LOBYTE(v159) = v53;
                      mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                      IndexFromDim = mlir::anec::getIndexFromDim(2, v54);
                      LOBYTE(v132) = v55;
                      if (v159 == 1 && (v55 & 1) != 0)
                      {
                        *v142 = vextq_s8(*v142, *v142, 8uLL);
                        *v139 = vextq_s8(*v139, *v139, 8uLL);
                        if (!PaddingStyle)
                        {
                          v56 = v136;
                          v57 = *v136;
                          *v136 = *(v136 + 1);
                          v56[1] = v57;
                        }

                        v135 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), v37, &v135, &IndexFromDim, &__p) - 16;
                        LODWORD(v43) = 1;
                        v46 = v139;
LABEL_90:
                        if (v46[v43] != 1)
                        {
                          v162[0] = operator new(0x38uLL);
                          *&v162[1] = xmmword_1E0982760;
                          strcpy(v162[0], "ANEC does not kernel size != 1 in channel dimension");
                          mlir::logMatchFailure(v162, *(v124 + 24), a4);
                          if (SHIBYTE(v162[2]) < 0)
                          {
                            operator delete(v162[0]);
                          }

                          v60 = 0;
                          v61 = 0;
                          v62 = 0;
                          goto LABEL_106;
                        }

                        v58 = v43;
                        v59 = v142;
                        if (*(v142 + v43) != 1)
                        {
                          v162[0] = operator new(0x38uLL);
                          *&v162[1] = xmmword_1E0982760;
                          strcpy(v162[0], "ANEC does not support striding in channel dimension");
                          v67 = *(v124 + 24);
                          v68 = v162;
LABEL_163:
                          mlir::logMatchFailure(v68, v67, a4);
                          if (SHIBYTE(v162[2]) < 0)
                          {
                            operator delete(v162[0]);
                          }

                          v60 = 0;
                          v61 = 0;
                          v62 = 0;
                          goto LABEL_106;
                        }

                        if (PaddingStyle > 1)
                        {
                          if (PaddingStyle != 2 && PaddingStyle != 4)
                          {
LABEL_158:
                            v105 = "Unsupported paddingStyle";
LABEL_162:
                            v68 = std::string::basic_string[abi:nn200100]<0>(v162, v105);
                            v67 = *(v124 + 24);
                            goto LABEL_163;
                          }

                          v122 = v51;
                          llvm::SmallVectorImpl<unsigned long long>::resize(&v136, 8uLL, 0);
                        }

                        else
                        {
                          if (PaddingStyle)
                          {
                            if (PaddingStyle == 1)
                            {
                              v122 = v51;
                              llvm::SmallVectorImpl<unsigned long long>::resize(&v136, 8uLL, 0);
                              goto LABEL_136;
                            }

                            goto LABEL_158;
                          }

                          v106 = v136 + 8 * (2 * v43);
                          if (*v106 || v106[1])
                          {
                            v105 = "padding is only supported in t,b,l,r,f,b";
                            goto LABEL_162;
                          }

                          v122 = v51;
                          if (InferredResultTypes && v143)
                          {
                            v113 = 0;
                            v114 = 0;
                            v115 = 16 * v143;
                            do
                            {
                              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                              v117 = *(v136 + v114 + 8);
                              if ((*(v136 + v114) + *(ArgAttrsAttr + v113) + v117 - *(v139 + v113) + *&v59[v113]) % *&v59[v113])
                              {
                                *(v136 + v114 + 8) = v117 + 1;
                              }

                              v114 += 16;
                              v113 += 8;
                            }

                            while (v115 != v114);
                          }
                        }

LABEL_136:
                        v69 = v142;
                        v70 = v142 + 8 * v58;
                        v71 = v143;
                        v72 = v142 + 8 * v143;
                        if (v72 != v70 + 8)
                        {
                          memmove(v70, v70 + 8, v72 - (v70 + 8));
                          v71 = v143;
                          v69 = v142;
                        }

                        v73 = v71 - 1;
                        LODWORD(v143) = v73;
                        if (v73 != 1)
                        {
                          v74 = *v69;
                          v75 = 8 * v73 - 8;
                          memmove(v69, v69 + 1, v75);
                          *(v69 + v75) = v74;
                        }

                        v76 = v139;
                        v77 = v139 + 8 * v58;
                        v78 = v140;
                        v79 = v139 + 8 * v140;
                        if (v79 != v77 + 8)
                        {
                          memmove(v77, v77 + 8, v79 - (v77 + 8));
                          v78 = v140;
                          v76 = v139;
                        }

                        v80 = v78 - 1;
                        LODWORD(v140) = v80;
                        if (v80 != 1)
                        {
                          v81 = *v76;
                          v82 = 8 * v80 - 8;
                          memmove(v76, v76 + 1, v82);
                          *(v76 + v82) = v81;
                        }

                        v83 = v136;
                        v84 = v136 + 8 * (2 * v58);
                        v85 = v136 + 8 * v137;
                        v86 = v85 - (v84 + 16);
                        if (v85 != v84 + 16)
                        {
                          memmove(v136 + 8 * (2 * v58), v84 + 16, v85 - (v84 + 16));
                          v83 = v136;
                        }

                        v87 = &v84[v86] - v83;
                        LODWORD(v137) = v87 >> 3;
                        std::rotate[abi:nn200100]<unsigned long long *>(v83, v83 + 16, &v83[v87 & 0x7FFFFFFF8]);
                        v162[0] = &v162[2];
                        v162[1] = 0x400000000;
                        v162[10] = 4;
                        __p = 3;
                        IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                        v89 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
                        __p = 6;
                        v90 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                        v91 = mlir::RankedTensorType::get(&__p, 1, v90, 0);
                        __p = "ksize";
                        v161 = 259;
                        StringAttr = mlir::Builder::getStringAttr((a4 + 8), &__p);
                        if (v89)
                        {
                          v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
                        }

                        else
                        {
                          v93 = 0;
                        }

                        v94 = mlir::DenseElementsAttr::getFromRawBuffer(v89, v93, v139, 8 * v140, 8, 1, 0);
                        mlir::NamedAttrList::set(v162, StringAttr, v94);
                        __p = "stride";
                        v161 = 259;
                        v95 = mlir::Builder::getStringAttr((a4 + 8), &__p);
                        if (v89)
                        {
                          v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
                        }

                        else
                        {
                          v96 = 0;
                        }

                        v97 = mlir::DenseElementsAttr::getFromRawBuffer(v89, v96, v142, 8 * v143, 8, 1, 0);
                        mlir::NamedAttrList::set(v162, v95, v97);
                        __p = "padding";
                        v161 = 259;
                        v98 = mlir::Builder::getStringAttr((a4 + 8), &__p);
                        if (v91)
                        {
                          v99 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
                        }

                        else
                        {
                          v99 = 0;
                        }

                        v100 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v99, v136, 8 * v137, 8, 1, 0);
                        mlir::NamedAttrList::set(v162, v98, v100);
                        v101 = mlir::OpBuilder::create<mlir::anec::L2NormPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), *(v124 + 24), &v135, v162);
                        v102 = v101 - 16;
                        v130 = v101 - 16;
                        if (v122)
                        {
                          v103 = (*(v101 - 8) & 0xFFFFFFFFFFFFFFF8);
                          if (v103)
                          {
                            v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v103 + 8);
                          }

                          else
                          {
                            v104 = 0;
                          }

                          IndexFromDim = v103;
                          v132 = v104;
                          mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
                          v108 = mlir::anec::getIndexFromDim(1, v107);
                          v110 = v109;
                          v128 = v108;
                          v129 = v109;
                          mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
                          v126 = mlir::anec::getIndexFromDim(2, v111);
                          v127 = v112;
                          if ((v110 & 1) == 0 || (v112 & 1) == 0)
                          {
                            std::string::basic_string[abi:nn200100]<0>(&__p, "Cannot infer channel and depth dimensions for 3D Pooling");
                            mlir::logMatchFailure(&__p, *(v124 + 24), a4);
                            if (v160 < 0)
                            {
                              operator delete(__p);
                            }

                            v60 = 0;
                            v61 = 0;
                            v62 = 0;
                            goto LABEL_174;
                          }

                          v102 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), *(v124 + 24), &v130, &v126, &v128) - 16;
                          v130 = v102;
                        }

                        v62 = v102 & 0xFFFFFFFFFFFFFF00;
                        v60 = v102;
                        v61 = 1;
LABEL_174:
                        if (v162[0] != &v162[2])
                        {
                          free(v162[0]);
                        }

LABEL_106:
                        if (v136 != v138)
                        {
                          free(v136);
                        }

                        if (v139 != v141)
                        {
                          free(v139);
                        }

                        if (v142 != v144)
                        {
                          free(v142);
                        }

                        if (v61)
                        {
                          v162[0] = &v162[2];
                          v162[2] = (v62 | v60);
                          v162[1] = 0x200000001;
                          v64 = v125;
                          if (*(v125 + 36) < 2u)
                          {
                            v65 = 1;
                          }

                          else
                          {
                            v162[3] = 0;
                            v65 = 2;
                            LODWORD(v162[1]) = 2;
                          }

                          mlir::ValueRange::ValueRange(&__p, &v162[2], v65);
                          mlir::ConversionPatternRewriter::replaceOp(a4, v64, __p, v159);
                          if (v162[0] != &v162[2])
                          {
                            free(v162[0]);
                          }

                          matched = 1;
LABEL_122:
                          if (v145 != v147)
                          {
                            free(v145);
                          }

LABEL_124:
                          if (v148 != v150)
                          {
                            free(v148);
                          }

                          if (v151 != v153)
                          {
                            free(v151);
                          }

                          if (__src != v156)
                          {
                            free(__src);
                          }

                          return matched;
                        }

                        v162[0] = operator new(0x68uLL);
                        *&v162[1] = xmmword_1E0982770;
                        strcpy(v162[0], "failed: POOLING_TRANSFORM macro is undefined. Ensure it is defined to support mps.pool op for ANE.");
LABEL_116:
                        matched = mlir::logMatchFailure(v162, *(v125 + 24), a4);
                        if (SHIBYTE(v162[2]) < 0)
                        {
                          operator delete(v162[0]);
                        }

                        goto LABEL_122;
                      }

                      v162[0] = operator new(0x38uLL);
                      *&v162[1] = xmmword_1E0982710;
                      strcpy(v162[0], "Cannot infer channel and depth dimensions for pooling");
                      v63 = *(v124 + 24);
LABEL_103:
                      mlir::logMatchFailure(v162, v63, a4);
                      if (SHIBYTE(v162[2]) < 0)
                      {
                        operator delete(v162[0]);
                      }

                      v60 = 0;
                      v61 = 0;
                      v62 = 0;
                      goto LABEL_106;
                    }

                    strcpy(v162, "Unable to infer layout");
                    HIBYTE(v162[2]) = 22;
LABEL_102:
                    v63 = *(v27 + 24);
                    goto LABEL_103;
                  }

LABEL_73:
                  if (v41 == 1)
                  {
                    LODWORD(v43) = v48;
                    v44 = v49;
                    goto LABEL_77;
                  }

                  goto LABEL_75;
                }
              }

              else if (v48 != 1)
              {
                v162[0] = operator new(0x30uLL);
                *&v162[1] = xmmword_1E0982700;
                strcpy(v162[0], "Cannot infer 5D layout based on kernel size");
                goto LABEL_102;
              }

              v45 = v47 >= v48;
              LODWORD(v48) = v47 >= v48;
              v49 = !v45;
              if (v42 != 1)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }

            v36 = v136;
          }

          memcpy(v36, v148, 8 * v35);
          goto LABEL_52;
        }

        v33 = v139;
      }

      memcpy(v33, v145, 8 * v32);
      goto LABEL_45;
    }

    if (v155 < 5)
    {
      v30 = v144;
      v29 = v155;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v142, v144, v155, 8);
      v29 = v155;
      if (!v155)
      {
LABEL_38:
        LODWORD(v143) = v28;
        goto LABEL_39;
      }

      v30 = v142;
    }

    memcpy(v30, __src, 8 * v29);
    goto LABEL_38;
  }

  mlir::mps::StencilOp::getOffsets(&v125);
  if ((v16 & 1) == 0)
  {
    v162[0] = operator new(0x30uLL);
    *&v162[1] = xmmword_1E0982700;
    strcpy(v162[0], "padding is null but paddingStyle is EXPLICT");
    matched = mlir::logMatchFailure(v162, *(v125 + 24), a4);
    if (SHIBYTE(v162[2]) < 0)
    {
      operator delete(v162[0]);
    }

    goto LABEL_124;
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v125);
  if (v18)
  {
    if (Offsets)
    {
      v19 = Offsets;
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
      Offsets = v19;
    }

    else
    {
      v20 = 0;
    }

    mlir::getIntValues<unsigned long long>(Offsets, v20, &v148, 1);
    goto LABEL_24;
  }

  v118 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::anec::L2NormPool,mlir::Value &,mlir::NamedAttrList &>(v118, v119, v120, v121);
}

uint64_t mlir::OpBuilder::create<mlir::anec::L2NormPool,mlir::Value &,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, mlir::NamedAttrList *a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::L2NormPool,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::L2NormPool,mlir::Value &,mlir::NamedAttrList &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::L2NormPool::build(a1, v19, a3, 1uLL, Attrs, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::L2NormPool,void>::id)
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

void *mlir::anonymous namespace::ConvertPool<mlir::mps::PoolMaxOp,mlir::anec::MaxPool>::~ConvertPool(void *a1)
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

void mlir::anonymous namespace::ConvertPool<mlir::mps::PoolMaxOp,mlir::anec::MaxPool>::~ConvertPool(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PoolMaxOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::PoolMaxOpGenericAdaptorBase::PoolMaxOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::PoolMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::PoolMaxOpGenericAdaptorBase::PoolMaxOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PoolMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 120);
  v38 = *(a3 + 112);
  v39 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v39 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v38, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v39 + 1;
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

    v25 = *(a3 + 112);
    v36 = *(a3 + 96);
    v37 = v25;
    v26 = *(a3 + 80);
    v34 = *(a3 + 64);
    v35 = v26;
    v27 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v27;
    v28 = *(a3 + 48);
    v32 = *(a3 + 32);
    v33 = v28;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v38 = 0;
      v39 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v38 = v18;
    v39 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v38) || !mlir::CallOpInterface::getArgOperands(&v38))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v38);
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

uint64_t mlir::anonymous namespace::ConvertPool<mlir::mps::PoolMaxOp,mlir::anec::MaxPool>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v164 = *MEMORY[0x1E69E9840];
  v125 = a2;
  v157 = *(a3 + 112);
  v6 = mlir::ValueRange::dereference_iterator(&v157, 0);
  if (*(a2 + 36) >= 2u && *(a2 - 32))
  {
    v162[0] = operator new(0x48uLL);
    *&v162[1] = xmmword_1E0982670;
    strcpy(v162[0], "failed: pooling with indices operation is not supported on ANEs.");
    matched = mlir::logMatchFailure(v162, *(a2 + 24), a4);
    if (SHIBYTE(v162[2]) < 0)
    {
      operator delete(v162[0]);
    }

    return matched;
  }

  v8 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  if ((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  mlir::mps::getElementBitWidth(v8);
  __src = v156;
  v155 = 0x400000000;
  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v125);
  if (Strides)
  {
    v10 = Strides;
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v11, &__src, 1);
  v151 = v153;
  v152 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v125);
  if (InputAttributeNames)
  {
    v13 = InputAttributeNames;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v14, &v151, 1);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v125);
  v148 = v150;
  v149 = 0x800000000;
  if (WeightsLayout)
  {
LABEL_24:
    v145 = v147;
    v146 = 0x400000000;
    WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v125);
    if (WindowSizes)
    {
      v22 = WindowSizes;
      v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
      WindowSizes = v22;
    }

    else
    {
      v23 = 0;
    }

    mlir::getIntValues<unsigned long long>(WindowSizes, v23, &v145, 1);
    mlir::mps::GRUOp::getResetAfter(&v125);
    InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v125);
    if (v152)
    {
      v25 = v151;
      v26 = 8 * v152;
      while (*v25 == 1)
      {
        ++v25;
        v26 -= 8;
        if (!v26)
        {
          goto LABEL_31;
        }
      }

      v162[0] = operator new(0x28uLL);
      *&v162[1] = xmmword_1E09826C0;
      strcpy(v162[0], "Dilated Pooling not supported on ANE");
      goto LABEL_116;
    }

LABEL_31:
    v27 = v125;
    v123 = v157;
    v142 = v144;
    v143 = 0x400000000;
    v28 = v155;
    if (!v155)
    {
LABEL_39:
      v139 = v141;
      v140 = 0x400000000;
      v31 = v146;
      if (!v146)
      {
        goto LABEL_46;
      }

      if (v146 < 5)
      {
        v33 = v141;
        v32 = v146;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v141, v146, 8);
        v32 = v146;
        if (!v146)
        {
LABEL_45:
          LODWORD(v140) = v31;
LABEL_46:
          v136 = v138;
          v137 = 0x800000000;
          v34 = v149;
          if (!v149)
          {
            goto LABEL_53;
          }

          if (v149 < 9)
          {
            v36 = v138;
            v35 = v149;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v138, v149, 8);
            v35 = v149;
            if (!v149)
            {
LABEL_52:
              LODWORD(v137) = v34;
LABEL_53:
              v163 = v123;
              v135 = mlir::ValueRange::dereference_iterator(&v163, 0);
              v37 = *(v27 + 24);
              v38 = (*(v135 + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v38)
              {
                v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
              }

              else
              {
                v39 = 0;
              }

              RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v38, v39);
              v134 = v40;
              mlir::mps::getElementBitWidth(RankPromotionTypeForANE);
              v42 = *v142;
              v41 = *(v142 + 1);
              if (*v142 == 1)
              {
                v43 = *(v142 + 1);
                if (v41 == 1)
                {
                  v44 = 0;
                  goto LABEL_64;
                }
              }

              else
              {
                if (v41 != 1)
                {
                  v162[0] = operator new(0x28uLL);
                  *&v162[1] = xmmword_1E0982750;
                  strcpy(v162[0], "Cannot infer 5D layout based on strides");
                  goto LABEL_102;
                }

                v43 = 1;
              }

              v45 = v42 >= v43;
              LODWORD(v43) = v42 >= v43;
              v44 = !v45;
LABEL_64:
              v46 = v139;
              v47 = *v139;
              v48 = *(v139 + 1);
              if (*v139 == 1)
              {
                if (v48 == 1)
                {
                  v49 = 0;
                  if (v42 != 1)
                  {
LABEL_75:
                    if (v43 == v48 && v44 == v49)
                    {
LABEL_77:
                      v124 = v27;
                      if (v43)
                      {
                        v50 = 0;
                      }

                      else
                      {
                        v50 = v44 == 1;
                      }

                      v51 = v50;
                      if (!v50)
                      {
                        goto LABEL_90;
                      }

                      mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                      __p = mlir::anec::getIndexFromDim(1, v52);
                      LOBYTE(v159) = v53;
                      mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                      IndexFromDim = mlir::anec::getIndexFromDim(2, v54);
                      LOBYTE(v132) = v55;
                      if (v159 == 1 && (v55 & 1) != 0)
                      {
                        *v142 = vextq_s8(*v142, *v142, 8uLL);
                        *v139 = vextq_s8(*v139, *v139, 8uLL);
                        if (!WeightsLayout)
                        {
                          v56 = v136;
                          v57 = *v136;
                          *v136 = *(v136 + 1);
                          v56[1] = v57;
                        }

                        v135 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), v37, &v135, &IndexFromDim, &__p) - 16;
                        LODWORD(v43) = 1;
                        v46 = v139;
LABEL_90:
                        if (v46[v43] != 1)
                        {
                          v162[0] = operator new(0x38uLL);
                          *&v162[1] = xmmword_1E0982760;
                          strcpy(v162[0], "ANEC does not kernel size != 1 in channel dimension");
                          mlir::logMatchFailure(v162, *(v124 + 24), a4);
                          if (SHIBYTE(v162[2]) < 0)
                          {
                            operator delete(v162[0]);
                          }

                          v60 = 0;
                          v61 = 0;
                          v62 = 0;
                          goto LABEL_106;
                        }

                        v58 = v43;
                        v59 = v142;
                        if (*(v142 + v43) != 1)
                        {
                          v162[0] = operator new(0x38uLL);
                          *&v162[1] = xmmword_1E0982760;
                          strcpy(v162[0], "ANEC does not support striding in channel dimension");
                          v67 = *(v124 + 24);
                          v68 = v162;
LABEL_163:
                          mlir::logMatchFailure(v68, v67, a4);
                          if (SHIBYTE(v162[2]) < 0)
                          {
                            operator delete(v162[0]);
                          }

                          v60 = 0;
                          v61 = 0;
                          v62 = 0;
                          goto LABEL_106;
                        }

                        if (WeightsLayout > 1)
                        {
                          if (WeightsLayout != 2 && WeightsLayout != 4)
                          {
LABEL_158:
                            v105 = "Unsupported paddingStyle";
LABEL_162:
                            v68 = std::string::basic_string[abi:nn200100]<0>(v162, v105);
                            v67 = *(v124 + 24);
                            goto LABEL_163;
                          }

                          v122 = v51;
                          llvm::SmallVectorImpl<unsigned long long>::resize(&v136, 8uLL, 0);
                        }

                        else
                        {
                          if (WeightsLayout)
                          {
                            if (WeightsLayout == 1)
                            {
                              v122 = v51;
                              llvm::SmallVectorImpl<unsigned long long>::resize(&v136, 8uLL, 0);
                              goto LABEL_136;
                            }

                            goto LABEL_158;
                          }

                          v106 = v136 + 8 * (2 * v43);
                          if (*v106 || v106[1])
                          {
                            v105 = "padding is only supported in t,b,l,r,f,b";
                            goto LABEL_162;
                          }

                          v122 = v51;
                          if (InferredResultTypes && v143)
                          {
                            v113 = 0;
                            v114 = 0;
                            v115 = 16 * v143;
                            do
                            {
                              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                              v117 = *(v136 + v114 + 8);
                              if ((*(v136 + v114) + *(ArgAttrsAttr + v113) + v117 - *(v139 + v113) + *&v59[v113]) % *&v59[v113])
                              {
                                *(v136 + v114 + 8) = v117 + 1;
                              }

                              v114 += 16;
                              v113 += 8;
                            }

                            while (v115 != v114);
                          }
                        }

LABEL_136:
                        v69 = v142;
                        v70 = v142 + 8 * v58;
                        v71 = v143;
                        v72 = v142 + 8 * v143;
                        if (v72 != v70 + 8)
                        {
                          memmove(v70, v70 + 8, v72 - (v70 + 8));
                          v71 = v143;
                          v69 = v142;
                        }

                        v73 = v71 - 1;
                        LODWORD(v143) = v73;
                        if (v73 != 1)
                        {
                          v74 = *v69;
                          v75 = 8 * v73 - 8;
                          memmove(v69, v69 + 1, v75);
                          *(v69 + v75) = v74;
                        }

                        v76 = v139;
                        v77 = v139 + 8 * v58;
                        v78 = v140;
                        v79 = v139 + 8 * v140;
                        if (v79 != v77 + 8)
                        {
                          memmove(v77, v77 + 8, v79 - (v77 + 8));
                          v78 = v140;
                          v76 = v139;
                        }

                        v80 = v78 - 1;
                        LODWORD(v140) = v80;
                        if (v80 != 1)
                        {
                          v81 = *v76;
                          v82 = 8 * v80 - 8;
                          memmove(v76, v76 + 1, v82);
                          *(v76 + v82) = v81;
                        }

                        v83 = v136;
                        v84 = v136 + 8 * (2 * v58);
                        v85 = v136 + 8 * v137;
                        v86 = v85 - (v84 + 16);
                        if (v85 != v84 + 16)
                        {
                          memmove(v136 + 8 * (2 * v58), v84 + 16, v85 - (v84 + 16));
                          v83 = v136;
                        }

                        v87 = &v84[v86] - v83;
                        LODWORD(v137) = v87 >> 3;
                        std::rotate[abi:nn200100]<unsigned long long *>(v83, v83 + 16, &v83[v87 & 0x7FFFFFFF8]);
                        v162[0] = &v162[2];
                        v162[1] = 0x400000000;
                        v162[10] = 4;
                        __p = 3;
                        IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                        v89 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
                        __p = 6;
                        v90 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                        v91 = mlir::RankedTensorType::get(&__p, 1, v90, 0);
                        __p = "ksize";
                        v161 = 259;
                        StringAttr = mlir::Builder::getStringAttr((a4 + 8), &__p);
                        if (v89)
                        {
                          v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
                        }

                        else
                        {
                          v93 = 0;
                        }

                        v94 = mlir::DenseElementsAttr::getFromRawBuffer(v89, v93, v139, 8 * v140, 8, 1, 0);
                        mlir::NamedAttrList::set(v162, StringAttr, v94);
                        __p = "stride";
                        v161 = 259;
                        v95 = mlir::Builder::getStringAttr((a4 + 8), &__p);
                        if (v89)
                        {
                          v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
                        }

                        else
                        {
                          v96 = 0;
                        }

                        v97 = mlir::DenseElementsAttr::getFromRawBuffer(v89, v96, v142, 8 * v143, 8, 1, 0);
                        mlir::NamedAttrList::set(v162, v95, v97);
                        __p = "padding";
                        v161 = 259;
                        v98 = mlir::Builder::getStringAttr((a4 + 8), &__p);
                        if (v91)
                        {
                          v99 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
                        }

                        else
                        {
                          v99 = 0;
                        }

                        v100 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v99, v136, 8 * v137, 8, 1, 0);
                        mlir::NamedAttrList::set(v162, v98, v100);
                        v101 = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), *(v124 + 24), &v135, v162);
                        v102 = v101 - 16;
                        v130 = v101 - 16;
                        if (v122)
                        {
                          v103 = (*(v101 - 8) & 0xFFFFFFFFFFFFFFF8);
                          if (v103)
                          {
                            v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v103 + 8);
                          }

                          else
                          {
                            v104 = 0;
                          }

                          IndexFromDim = v103;
                          v132 = v104;
                          mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
                          v108 = mlir::anec::getIndexFromDim(1, v107);
                          v110 = v109;
                          v128 = v108;
                          v129 = v109;
                          mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
                          v126 = mlir::anec::getIndexFromDim(2, v111);
                          v127 = v112;
                          if ((v110 & 1) == 0 || (v112 & 1) == 0)
                          {
                            std::string::basic_string[abi:nn200100]<0>(&__p, "Cannot infer channel and depth dimensions for 3D Pooling");
                            mlir::logMatchFailure(&__p, *(v124 + 24), a4);
                            if (v160 < 0)
                            {
                              operator delete(__p);
                            }

                            v60 = 0;
                            v61 = 0;
                            v62 = 0;
                            goto LABEL_174;
                          }

                          v102 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), *(v124 + 24), &v130, &v126, &v128) - 16;
                          v130 = v102;
                        }

                        v62 = v102 & 0xFFFFFFFFFFFFFF00;
                        v60 = v102;
                        v61 = 1;
LABEL_174:
                        if (v162[0] != &v162[2])
                        {
                          free(v162[0]);
                        }

LABEL_106:
                        if (v136 != v138)
                        {
                          free(v136);
                        }

                        if (v139 != v141)
                        {
                          free(v139);
                        }

                        if (v142 != v144)
                        {
                          free(v142);
                        }

                        if (v61)
                        {
                          v162[0] = &v162[2];
                          v162[2] = (v62 | v60);
                          v162[1] = 0x200000001;
                          v64 = v125;
                          if (*(v125 + 36) < 2u)
                          {
                            v65 = 1;
                          }

                          else
                          {
                            v162[3] = 0;
                            v65 = 2;
                            LODWORD(v162[1]) = 2;
                          }

                          mlir::ValueRange::ValueRange(&__p, &v162[2], v65);
                          mlir::ConversionPatternRewriter::replaceOp(a4, v64, __p, v159);
                          if (v162[0] != &v162[2])
                          {
                            free(v162[0]);
                          }

                          matched = 1;
LABEL_122:
                          if (v145 != v147)
                          {
                            free(v145);
                          }

LABEL_124:
                          if (v148 != v150)
                          {
                            free(v148);
                          }

                          if (v151 != v153)
                          {
                            free(v151);
                          }

                          if (__src != v156)
                          {
                            free(__src);
                          }

                          return matched;
                        }

                        v162[0] = operator new(0x68uLL);
                        *&v162[1] = xmmword_1E0982770;
                        strcpy(v162[0], "failed: POOLING_TRANSFORM macro is undefined. Ensure it is defined to support mps.pool op for ANE.");
LABEL_116:
                        matched = mlir::logMatchFailure(v162, *(v125 + 24), a4);
                        if (SHIBYTE(v162[2]) < 0)
                        {
                          operator delete(v162[0]);
                        }

                        goto LABEL_122;
                      }

                      v162[0] = operator new(0x38uLL);
                      *&v162[1] = xmmword_1E0982710;
                      strcpy(v162[0], "Cannot infer channel and depth dimensions for pooling");
                      v63 = *(v124 + 24);
LABEL_103:
                      mlir::logMatchFailure(v162, v63, a4);
                      if (SHIBYTE(v162[2]) < 0)
                      {
                        operator delete(v162[0]);
                      }

                      v60 = 0;
                      v61 = 0;
                      v62 = 0;
                      goto LABEL_106;
                    }

                    strcpy(v162, "Unable to infer layout");
                    HIBYTE(v162[2]) = 22;
LABEL_102:
                    v63 = *(v27 + 24);
                    goto LABEL_103;
                  }

LABEL_73:
                  if (v41 == 1)
                  {
                    LODWORD(v43) = v48;
                    v44 = v49;
                    goto LABEL_77;
                  }

                  goto LABEL_75;
                }
              }

              else if (v48 != 1)
              {
                v162[0] = operator new(0x30uLL);
                *&v162[1] = xmmword_1E0982700;
                strcpy(v162[0], "Cannot infer 5D layout based on kernel size");
                goto LABEL_102;
              }

              v45 = v47 >= v48;
              LODWORD(v48) = v47 >= v48;
              v49 = !v45;
              if (v42 != 1)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }

            v36 = v136;
          }

          memcpy(v36, v148, 8 * v35);
          goto LABEL_52;
        }

        v33 = v139;
      }

      memcpy(v33, v145, 8 * v32);
      goto LABEL_45;
    }

    if (v155 < 5)
    {
      v30 = v144;
      v29 = v155;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v142, v144, v155, 8);
      v29 = v155;
      if (!v155)
      {
LABEL_38:
        LODWORD(v143) = v28;
        goto LABEL_39;
      }

      v30 = v142;
    }

    memcpy(v30, __src, 8 * v29);
    goto LABEL_38;
  }

  mlir::mps::StencilOp::getOffsets(&v125);
  if ((v16 & 1) == 0)
  {
    v162[0] = operator new(0x30uLL);
    *&v162[1] = xmmword_1E0982700;
    strcpy(v162[0], "padding is null but paddingStyle is EXPLICT");
    matched = mlir::logMatchFailure(v162, *(v125 + 24), a4);
    if (SHIBYTE(v162[2]) < 0)
    {
      operator delete(v162[0]);
    }

    goto LABEL_124;
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v125);
  if (v18)
  {
    if (Offsets)
    {
      v19 = Offsets;
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
      Offsets = v19;
    }

    else
    {
      v20 = 0;
    }

    mlir::getIntValues<unsigned long long>(Offsets, v20, &v148, 1);
    goto LABEL_24;
  }

  v118 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>(v118, v119, v120, v121);
}

uint64_t mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, mlir::NamedAttrList *a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::MaxPool,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::MaxPool::build(a1, v19, a3, 1uLL, Attrs, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::MaxPool,void>::id)
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

void mlir::anonymous namespace::ConvertStencil::~ConvertStencil(mlir::_anonymous_namespace_::ConvertStencil *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::StencilOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StencilOpGenericAdaptorBase::StencilOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::StencilOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StencilOpGenericAdaptorBase::StencilOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::StencilOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 112);
  v38 = *(a3 + 104);
  v39 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v39 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v38, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v39 + 1;
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
    v37 = *(a3 + 112);
    v26 = *(a3 + 64);
    v27 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v27;
    v28 = *(a3 + 48);
    v32 = *(a3 + 32);
    v33 = v28;
    v34 = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v38 = 0;
      v39 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v38 = v18;
    v39 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v38) || !mlir::CallOpInterface::getArgOperands(&v38))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v38);
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

void *mlir::anonymous namespace::ConvertStencil::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v133[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v132 = *(a3 + 104);
  v107 = mlir::ValueRange::dereference_iterator(&v132, 0);
  v6 = mlir::ValueRange::dereference_iterator(&v132, 1);
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  if (mlir::mps::Conv3DOp::getWeightsLayout(&v108) != 2)
  {
    __p = operator new(0x40uLL);
    v122[0] = xmmword_1E0982780;
    strcpy(__p, "failed: stencil reduction_mode != sum is not supported on ANEs.");
    matched = mlir::logMatchFailure(&__p, *(v108 + 24), a4);
    if (SHIBYTE(v122[0]) < 0)
    {
      operator delete(__p);
    }

    return matched;
  }

  v104 = &v106;
  v105 = 0x100000000;
  if ((mlir::matchConstantWithFloatVector<float>(v6, &v104) & 1) == 0)
  {
    __p = operator new(0x20uLL);
    v122[0] = xmmword_1E0982790;
    strcpy(__p, "Failed to match kernel value");
    goto LABEL_27;
  }

  if (v105)
  {
    v9 = v104;
    v10 = 4 * v105;
    while (*v9 == 1.0)
    {
      ++v9;
      v10 -= 4;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    __p = operator new(0x40uLL);
    v122[0] = xmmword_1E09827A0;
    strcpy(__p, "Can only convert to AvgPool if stencil kernel is all ones");
    goto LABEL_27;
  }

LABEL_10:
  v11 = (*(v107 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v11, v12);
  v103 = v14;
  v15 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v101[0] = v15;
  v101[1] = v16;
  v17 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v100[0] = mlir::getRankPromotionTypeForANE(v17, v18);
  v100[1] = v19;
  mlir::CallableOpInterface::getArgAttrsAttr(v101);
  if (v20 != 4)
  {
    __p = operator new(0x40uLL);
    v122[0] = xmmword_1E09827B0;
    strcpy(__p, "failed: stencil kernel rank != 4 is not supported on ANEs.");
LABEL_27:
    matched = mlir::logMatchFailure(&__p, *(v108 + 24), a4);
    if (SHIBYTE(v122[0]) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_94;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v101);
  v22 = mlir::CallableOpInterface::getArgAttrsAttr(v101);
  v24 = (v22 + 8 * v23);
  v129 = v131;
  v130 = 0x400000000;
  v25 = (v24 - ArgAttrsAttr) >> 3;
  if (v25 < 5)
  {
    v26 = 0;
    v27 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, v131, v25, 8);
    v26 = v130;
    v27 = v130;
  }

  if (v24 != ArgAttrsAttr)
  {
    v28 = &v129[8 * v26];
    v29 = v24 - ArgAttrsAttr - 8;
    if (v29 < 0x38)
    {
      v30 = ArgAttrsAttr;
      goto LABEL_38;
    }

    v31 = &v129[8 * v26];
    if (&v31[-ArgAttrsAttr] < 0x20)
    {
      v30 = ArgAttrsAttr;
      do
      {
LABEL_38:
        v38 = *v30++;
        *v28 = v38;
        v28 += 8;
      }

      while (v30 != v24);
      goto LABEL_39;
    }

    v32 = (v29 >> 3) + 1;
    v33 = 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL);
    v28 += v33;
    v30 = (ArgAttrsAttr + v33);
    v34 = (ArgAttrsAttr + 16);
    v35 = v31 + 16;
    v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v37 = *v34;
      *(v35 - 1) = *(v34 - 1);
      *v35 = v37;
      v34 += 2;
      v35 += 2;
      v36 -= 4;
    }

    while (v36);
    if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_38;
    }
  }

LABEL_39:
  LODWORD(v130) = v27 + ((v24 - ArgAttrsAttr) >> 3);
  mlir::CallableOpInterface::getArgAttrsAttr(v101);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
  if ((v41 & 1) == 0)
  {
    goto LABEL_114;
  }

  v42 = *&v129[8 * IndexFromDim];
  mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  if (v43 == 5 && v42 >= 2)
  {
    __p = operator new(0x50uLL);
    v122[0] = xmmword_1E0982740;
    strcpy(__p, "failed: stencil along channel with rank 5 input is not supported on ANEs.");
    matched = mlir::logMatchFailure(&__p, *(v108 + 24), a4);
    if (SHIBYTE(v122[0]) < 0)
    {
      operator delete(__p);
    }

LABEL_92:
    if (v129 != v131)
    {
      free(v129);
    }

LABEL_94:
    if (v104 != &v106)
    {
      free(v104);
    }

    return matched;
  }

  v126 = v128;
  v127 = 0x400000000;
  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v108);
  if (Strides)
  {
    v45 = Strides;
    v46 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v45;
  }

  else
  {
    v46 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v46, &v126, 1);
  v123 = v125;
  v124 = 0x400000000;
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&v108);
  if (AttributeValueNames)
  {
    v48 = AttributeValueNames;
    v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*AttributeValueNames + 8);
    AttributeValueNames = v48;
  }

  else
  {
    v49 = 0;
  }

  mlir::getIntValues<unsigned long long>(AttributeValueNames, v49, &v123, 1);
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v108);
  v51 = PaddingStyle;
  __p = v122 + 8;
  *&v122[0] = 0x800000000;
  if (PaddingStyle <= 1)
  {
    if (!PaddingStyle)
    {
      mlir::mps::StencilOp::getExplicitPadding(&v108);
      if (v54)
      {
        ExplicitPadding = mlir::mps::StencilOp::getExplicitPadding(&v108);
        if ((v56 & 1) == 0)
        {
          goto LABEL_114;
        }

        if (ExplicitPadding)
        {
          v57 = ExplicitPadding;
          v58 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
          ExplicitPadding = v57;
        }

        else
        {
          v58 = 0;
        }

        mlir::getIntValues<unsigned long long>(ExplicitPadding, v58, &__p, 1);
        goto LABEL_57;
      }

      v53 = "padding is null but paddingStyle is EXPLICT";
LABEL_84:
      std::string::basic_string[abi:nn200100]<0>(v113, v53);
      matched = mlir::logMatchFailure(v113, *(v108 + 24), a4);
      if (SHIBYTE(v114) < 0)
      {
        operator delete(v113[0]);
      }

LABEL_86:
      if (__p != v122 + 8)
      {
        free(__p);
      }

      if (v123 != v125)
      {
        free(v123);
      }

      if (v126 != v128)
      {
        free(v126);
      }

      goto LABEL_92;
    }

    if (PaddingStyle == 1)
    {
      llvm::SmallVectorImpl<unsigned long long>::resize(&__p, 8uLL, 0);
      goto LABEL_57;
    }

LABEL_60:
    v53 = "Unsupported paddingStyle";
    goto LABEL_84;
  }

  if (PaddingStyle != 2 && PaddingStyle != 4)
  {
    goto LABEL_60;
  }

  llvm::SmallVectorImpl<unsigned long long>::resize(&__p, 8uLL, 0);
LABEL_57:
  v52 = __p + 16 * (v42 < 2);
  if (*v52 || v52[1])
  {
    v53 = "Channel padding is not supported on ANE";
    goto LABEL_84;
  }

  if (v124)
  {
    v59 = v123;
    v60 = 8 * v124;
    while (*v59 == 1)
    {
      ++v59;
      v60 -= 8;
      if (!v60)
      {
        goto LABEL_70;
      }
    }

    v53 = "Dilated Stencil not supported on ANE";
    goto LABEL_84;
  }

LABEL_70:
  if (v127)
  {
    v61 = 8 * v127;
    v62 = v126;
    while (*v62 == 1)
    {
      ++v62;
      v61 -= 8;
      if (!v61)
      {
        goto LABEL_74;
      }
    }

    v53 = "Strided Stencil not supported on ANE";
    goto LABEL_84;
  }

LABEL_74:
  *v113 = *(v126 + 1);
  v114 = *&v126[8 * (v42 > 1)];
  llvm::SmallVector<unsigned long long,3u>::SmallVector(&v118, v113, 3);
  *v113 = *(v129 + 1);
  v114 = *&v129[8 * (v42 > 1)];
  llvm::SmallVector<unsigned long long,3u>::SmallVector(&v115, v113, 3);
  v63 = *(__p + 3);
  *v109 = *(__p + 2);
  v110 = v63;
  v111 = *(__p + 2 * (v42 > 1));
  v112 = *(__p + ((2 * (v42 > 1)) | 1u));
  llvm::SmallVector<long long,6u>::SmallVector(v113, v109, 6);
  v109[0] = 3;
  IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v65 = mlir::RankedTensorType::get(v109, 1, IntegerType, 0);
  v109[0] = 6;
  v66 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v67 = mlir::RankedTensorType::get(v109, 1, v66, 0);
  v68 = v67;
  v99 = v107;
  if (v42 >= 2)
  {
    v96 = v67;
    v69 = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
    llvm::SmallVector<long long,5u>::SmallVector<long long,void>(v109, v69, v70);
    v133[0] = 1;
    llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(v109, v109[0] + 16, v133);
    v71 = v109[0];
    v95 = *(v108 + 24);
    v72 = LODWORD(v109[1]);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v107);
    v133[0] = mlir::MemRefType::get(v71, v72, ElementTypeOrSelf, 0, 0, 0);
    v99 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v95, v133, &v107) - 16;
    if (v109[0] != &v110)
    {
      free(v109[0]);
    }

    v68 = v96;
  }

  v74 = *(v108 + 24);
  if (v65)
  {
    v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v65 + 8);
  }

  else
  {
    v75 = 0;
  }

  v109[0] = mlir::DenseElementsAttr::getFromRawBuffer(v65, v75, v118, 8 * v119, 8, 1, 0);
  if (v68)
  {
    v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
  }

  else
  {
    v77 = 0;
  }

  v133[0] = mlir::DenseElementsAttr::getFromRawBuffer(v68, v77, v113[0], 8 * LODWORD(v113[1]), 8, 1, 0);
  if (v65)
  {
    v78 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v65 + 8);
  }

  else
  {
    v78 = 0;
  }

  v98 = mlir::DenseElementsAttr::getFromRawBuffer(v65, v78, v115, 8 * v116, 8, 1, 0);
  UnitAttr = mlir::Builder::getUnitAttr((a4 + 8), v79);
  v99 = mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::UnitAttr>((a4 + 8), v74, &v99, v109, v133, &v98, &UnitAttr) - 16;
  v80 = *(v115 + 1) * *v115 * *(v115 + 2);
  v81 = *(v108 + 24);
  mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  *v109 = v80;
  if (v84)
  {
    v99 = v85;
    if (v42 >= 2)
    {
      v86 = *(v108 + 24);
      v87 = mlir::CallableOpInterface::getArgAttrsAttr(v100);
      v89 = v88;
      v90 = mlir::getElementTypeOrSelf(v99);
      v109[0] = mlir::MemRefType::get(v87, v89, v90, 0, 0, 0);
      v85 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v86, v109, &v99) - 16;
      v99 = v85;
    }

    v91 = v108;
    v133[0] = v85;
    mlir::ValueRange::ValueRange(v109, v133, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v91, v109[0], v109[1]);
    if (v113[0] != &v114)
    {
      free(v113[0]);
    }

    if (v115 != &v117)
    {
      free(v115);
    }

    if (v118 != &v120)
    {
      free(v118);
    }

    matched = 1;
    goto LABEL_86;
  }

LABEL_114:
  v92 = std::__throw_bad_optional_access[abi:nn200100]();
  return llvm::SmallVector<unsigned long long,3u>::SmallVector(v92, v93, v94);
}

void *llvm::SmallVector<unsigned long long,3u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v5 = (8 * a3) >> 3;
  if (v5 >= 4)
  {
    v6 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v5, 8);
    a2 = v6;
    v7 = *(a1 + 2);
    v8 = 8 * a3;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 8 * a3;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v7), a2, v8);
    v7 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v7 + (v8 >> 3);
  return a1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::UnitAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::AveragePool::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::CeilOp,mlir::anec::Ceil>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0F3F0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF37C2C()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::CeilOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CeilOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CeilOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::CeilOp,mlir::anec::Ceil>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Ceil,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Ceil,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Ceil,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ErfOp,mlir::anec::Erf>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0F460;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF38860()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::ErfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ErfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ErfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ErfOp,mlir::anec::Erf>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Erf,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Erf,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Erf,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ExponentBase2Op,mlir::anec::Exp2>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0F4D0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF39494()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::ExponentBase2Op>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExponentBase2Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ExponentBase2Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ExponentBase2Op,mlir::anec::Exp2>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Exp2,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Exp2,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Exp2,mlir::anec::ElementwiseMult &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::FloorOp,mlir::anec::Floor>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0F540;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF3A0C8()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::FloorOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::FloorOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::FloorOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::FloorOp,mlir::anec::Floor>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Floor,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SignOp,mlir::anec::Sign>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0F5B0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF3ACFC()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::SignOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SignOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SignOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SignOp,mlir::anec::Sign>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Sign,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Sign,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Sign,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::TruncateOp,mlir::anec::Trunc>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B0F620;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF3B930()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::TruncateOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::TruncateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::TruncateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::TruncateOp,mlir::anec::Trunc>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Trunc,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Trunc,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Trunc,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
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

void mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMaxOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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