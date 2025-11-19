void *CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
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

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *__p)
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

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v5 = a2 + 64;
  v10[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v10[0] = mlir::AffineMapAttr::getValue(v10);
  if (mlir::arith::FastMathFlagsAttr::getValue(v10) != 1)
  {
    return 0;
  }

  v10[0] = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 68);
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v10[0] = v7;
  v10[1] = v6;
  v8 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v8);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
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

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::~DeduplicateAffineMinMaxExpressions(void *__p)
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

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v25);
  v25 = v27;
  v26 = 0x400000000;
  Results = mlir::AffineMap::getResults(&Value);
  v7 = v26;
  if (v6)
  {
    v8 = &Results[v6];
    do
    {
      while (1)
      {
        v9 = *Results;
        v10 = v25;
        v11 = v7;
        v12 = v25;
        if (v7)
        {
          v13 = 8 * v7;
          v12 = v25;
          while (*v12 != v9)
          {
            ++v12;
            v13 -= 8;
            if (!v13)
            {
              goto LABEL_9;
            }
          }
        }

        if (v12 == (v25 + 8 * v7))
        {
          break;
        }

        if (++Results == v8)
        {
          goto LABEL_12;
        }
      }

LABEL_9:
      if (v7 >= HIDWORD(v26))
      {
        v14 = Results;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v11 + 1, 8);
        Results = v14;
        v11 = v26;
        v10 = v25;
      }

      v10[v11] = v9;
      v7 = v26 + 1;
      LODWORD(v26) = v26 + 1;
      ++Results;
    }

    while (Results != v8);
  }

LABEL_12:
  if (v7 == mlir::arith::FastMathFlagsAttr::getValue(&Value))
  {
    v15 = 0;
    v16 = v25;
    if (v25 == v27)
    {
      return v15;
    }

    goto LABEL_18;
  }

  NumDims = mlir::AffineMap::getNumDims(&Value);
  NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
  v23 = mlir::AffineMap::get(NumDims, NumSymbols, v25, v26, a3[1]);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v19 = *(a2 + 68);
    v20 = *(a2 + 72);
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  mlir::ValueRange::ValueRange(v28, v20, v19);
  v21 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v23, v28);
  (*(*a3 + 1))(a3, a2, v21);
  v15 = 1;
  v16 = v25;
  if (v25 != v27)
  {
LABEL_18:
    free(v16);
  }

  return v15;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::affine::AffineMinOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
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

void *MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::~MergeAffineMinMaxOp(void *a1)
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

void MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::~MergeAffineMinMaxOp(void *__p)
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

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,8u> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMinOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::~SimplifyAffineOp(void *__p)
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

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMinOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
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

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *__p)
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

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10[0] = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((canonicalizeMapExprAndTermOrder(&Value) & 1) == 0)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v10, v6, v5);
  v7 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v7);
  return 1;
}

uint64_t canonicalizeMapExprAndTermOrder(mlir::AffineMap *a1)
{
  v76[8] = *MEMORY[0x1E69E9840];
  v74 = v76;
  v75 = 0x100000000;
  Results = mlir::AffineMap::getResults(a1);
  if (v3)
  {
    v4 = Results;
    v5 = (Results + 8 * v3);
    while (1)
    {
      if (!mlir::AffineExpr::isPureAffine(v4))
      {
        goto LABEL_50;
      }

      NumDims = mlir::AffineMap::getNumDims(a1);
      NumSymbols = mlir::AffineMap::getNumSymbols(a1);
      mlir::SimpleAffineExprFlattener::SimpleAffineExprFlattener(&v69, NumDims, NumSymbols);
      if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(&v69, *v4) & 1) == 0 || (v8 = *(v71[0] - 72), v9 = mlir::AffineMap::getNumDims(a1), v8 != v9 + mlir::AffineMap::getNumSymbols(a1) + 1))
      {
        v14 = 0;
        v69 = &unk_1F5AF5618;
        v15 = v72;
        if (v72 == v73)
        {
          goto LABEL_13;
        }

LABEL_12:
        free(v15);
        goto LABEL_13;
      }

      v10 = *(v71[0] - 80);
      v66 = v10;
      v11 = *(v71[0] - 72);
      v65 = &v10[8 * v11];
      if (v75 < HIDWORD(v75))
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long const*,long long const*>(&v74, &v66, &v65);
      v14 = 1;
      v69 = &unk_1F5AF5618;
      v15 = v72;
      if (v72 != v73)
      {
        goto LABEL_12;
      }

LABEL_13:
      v16 = __p;
      if (__p)
      {
        v17 = v71[0];
        if (v71[0] == __p)
        {
          operator delete(__p);
          if ((v14 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          do
          {
            v19 = *(v17 - 10);
            v17 -= 80;
            v18 = v19;
            if (v17 + 16 != v19)
            {
              free(v18);
            }
          }

          while (v17 != v16);
          v71[0] = v16;
          operator delete(__p);
          if ((v14 & 1) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else if (!v14)
      {
        goto LABEL_50;
      }

      v4 = (v4 + 8);
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }

    v12 = v74 + 64 * v75;
    *v12 = v12 + 2;
    v12[1] = 0x600000000;
    if (v11 < 7)
    {
      if (!v11)
      {
        v20 = 0;
LABEL_25:
        *(v12 + 2) = v20 + v11;
        LODWORD(v75) = v75 + 1;
        v14 = 1;
        v69 = &unk_1F5AF5618;
        v15 = v72;
        if (v72 != v73)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (v12 + 2), v11, 8);
      v13 = *(v12 + 2);
    }

    memcpy((*v12 + 8 * v13), v10, 8 * v11);
    v20 = *(v12 + 2);
    goto LABEL_25;
  }

LABEL_30:
  v21 = v74;
  v22 = v75;
  v23 = (v74 + 64 * v75);
  if (v75)
  {
    if (v75 == 1)
    {
      v24 = 0;
      goto LABEL_74;
    }

    v26 = v74 + 64;
    v25 = *v74;
    while (1)
    {
      v27 = *(v21 + 8);
      v28 = v21[18];
      v29 = v21[2];
      v21 = v26;
      if (v29 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      v31 = v25;
      v32 = v27;
      if (v30)
      {
        v33 = 8 * v30;
        v31 = v25;
        v32 = v27;
        v34 = &v27[v30];
        while (*v32 == *v31)
        {
          ++v32;
          ++v31;
          v33 -= 8;
          if (!v33)
          {
            v32 = v34;
            break;
          }
        }
      }

      if (v31 != &v25[v29] && (v32 == &v27[v28] || *v32 < *v31))
      {
        break;
      }

      v26 = (v21 + 16);
      v25 = v27;
      if (v21 + 16 == v23)
      {
        goto LABEL_50;
      }
    }
  }

  if (v21 == v23)
  {
LABEL_50:
    v24 = 0;
    v22 = v75;
    v21 = v74;
    if (v75)
    {
      goto LABEL_74;
    }

LABEL_51:
    if (v21 == v76)
    {
      return v24;
    }

LABEL_52:
    free(v21);
    return v24;
  }

  Value = mlir::arith::FastMathFlagsAttr::getValue(a1);
  v36 = Value;
  v69 = v71;
  __p = 0xC00000000;
  if (Value >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v71, Value, 4);
    v37 = v69;
    v38 = (v69 + 4 * __p);
    if (v36 < 8)
    {
LABEL_49:
      v39 = 0;
      v40 = v38;
      do
      {
LABEL_59:
        *v40 = v39;
        v40 += 4;
        ++v39;
      }

      while (v36 != v39);
LABEL_60:
      v47 = __p;
      goto LABEL_61;
    }

LABEL_56:
    v39 = v36 & 0xFFFFFFF8;
    v40 = &v38->i8[4 * v39];
    v42 = v38 + 1;
    v43 = xmmword_1E0970050;
    v44.i64[0] = 0x400000004;
    v44.i64[1] = 0x400000004;
    v45.i64[0] = 0x800000008;
    v45.i64[1] = 0x800000008;
    v46 = v39;
    do
    {
      v42[-1] = v43;
      *v42 = vaddq_s32(v43, v44);
      v43 = vaddq_s32(v43, v45);
      v42 += 2;
      v46 -= 8;
    }

    while (v46);
    if (v39 == v36)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (Value)
  {
    v37 = v71;
    v38 = v71;
    if (v36 < 8)
    {
      goto LABEL_49;
    }

    goto LABEL_56;
  }

  v47 = 0;
  v37 = v71;
LABEL_61:
  v49 = (v47 + v36);
  v48 = v49 == 0;
  LODWORD(__p) = v49;
  v50 = v37 + v49;
  v66 = &v74;
  v51 = 126 - 2 * __clz(v49);
  if (v48)
  {
    v52 = 0;
  }

  else
  {
    v52 = v51;
  }

  std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v37, v50, &v66, v52, 1);
  v66 = v68;
  v67 = 0x600000000;
  if (__p)
  {
    v53 = v69;
    v54 = 4 * __p;
    do
    {
      v55 = mlir::AffineMap::getResult(a1, *v53);
      v56 = v67;
      if (v67 >= HIDWORD(v67))
      {
        v57 = v55;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v67 + 1, 8);
        v55 = v57;
        v56 = v67;
      }

      *(v66 + v56) = v55;
      LODWORD(v67) = v67 + 1;
      ++v53;
      v54 -= 4;
    }

    while (v54);
  }

  v58 = mlir::AffineMap::getNumDims(a1);
  v59 = mlir::AffineMap::getNumSymbols(a1);
  v60 = v66;
  v61 = v67;
  LHS = mlir::AffineBinaryOpExpr::getLHS(a1);
  *a1 = mlir::AffineMap::get(v58, v59, v60, v61, LHS);
  if (v66 != v68)
  {
    free(v66);
  }

  if (v69 != v71)
  {
    free(v69);
  }

  v24 = 1;
  v22 = v75;
  v21 = v74;
  if (!v75)
  {
    goto LABEL_51;
  }

LABEL_74:
  v63 = &v21[16 * v22 - 16];
  v64 = -64 * v22;
  do
  {
    if (v63 + 2 != *v63)
    {
      free(*v63);
    }

    v63 -= 8;
    v64 += 64;
  }

  while (v64);
  v21 = v74;
  if (v74 != v76)
  {
    goto LABEL_52;
  }

  return v24;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v312 = a2 - 3;
  v313 = a2 - 2;
  i = v9;
  v311 = a2;
  while (1)
  {
    v9 = i;
    v12 = a2 - i;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v141 = **a3;

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(i, i + 1, v10, v141);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(i, i + 1, i + 2, v10, a3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(i, i + 1, i + 2, i + 3, v10, a3);
      }

      goto LABEL_10;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      break;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v156 = *a3;
      if (a5)
      {
        if (i == a2)
        {
          return result;
        }

        v157 = i + 1;
        if (i + 1 == a2)
        {
          return result;
        }

        v158 = *v156;
        v159 = i;
        while (1)
        {
          v161 = v159;
          v159 = v157;
          v163 = *v161;
          v162 = v161[1];
          v164 = v158 + (v162 << 6);
          v165 = v158 + (v163 << 6);
          v166 = *v164;
          v167 = *(v164 + 8);
          v168 = *v165;
          v169 = *(v165 + 8);
          v170 = v169 >= v167 ? *(v164 + 8) : v169;
          if (v170)
          {
            break;
          }

          result = v168;
          v172 = *v164;
          if (v168 != v168 + 8 * v169)
          {
            goto LABEL_235;
          }

LABEL_223:
          v157 = v159 + 1;
          if (v159 + 1 == a2)
          {
            return result;
          }
        }

        v171 = 8 * v170;
        result = v168;
        v172 = *v164;
        v173 = &v166[v170];
        while (*v172 == *result)
        {
          ++v172;
          result += 8;
          v171 -= 8;
          if (!v171)
          {
            v172 = v173;
            break;
          }
        }

        if (result == v168 + 8 * v169)
        {
          goto LABEL_223;
        }

LABEL_235:
        if (v172 == &v166[v167] || *v172 < *result)
        {
          v161[1] = v163;
          v160 = i;
          if (v161 != i)
          {
            v174 = v161;
            do
            {
              v176 = *--v174;
              v175 = v176;
              v177 = v158 + (v176 << 6);
              v178 = *(v164 + 8);
              v179 = *v177;
              result = *(v177 + 8);
              if (result >= v178)
              {
                v180 = *(v164 + 8);
              }

              else
              {
                v180 = result;
              }

              if (v180)
              {
                v181 = 8 * v180;
                v182 = v179;
                v183 = v166;
                v184 = &v166[v180];
                while (*v183 == *v182)
                {
                  ++v183;
                  ++v182;
                  v181 -= 8;
                  if (!v181)
                  {
                    v183 = v184;
                    break;
                  }
                }
              }

              else
              {
                v182 = v179;
                v183 = v166;
              }

              if (v182 == &v179[result] || v183 != &v166[v178] && *v183 >= *v182)
              {
                v160 = v161;
                goto LABEL_222;
              }

              *v161 = v175;
              v161 = v174;
            }

            while (v174 != i);
            v160 = i;
          }

LABEL_222:
          *v160 = v162;
        }

        goto LABEL_223;
      }

      if (i == a2)
      {
        return result;
      }

      v286 = i + 1;
      if (i + 1 == a2)
      {
        return result;
      }

      v287 = *v156;
      while (1)
      {
        v288 = v9;
        v9 = v286;
        v290 = *v288;
        v289 = v288[1];
        v291 = v287 + (v289 << 6);
        v292 = v287 + (v290 << 6);
        v293 = *v291;
        v294 = *(v291 + 8);
        v295 = *v292;
        v296 = *(v292 + 8);
        v297 = v296 >= v294 ? *(v291 + 8) : v296;
        if (v297)
        {
          break;
        }

        v299 = v295;
        result = *v291;
        if (v295 != &v295[v296])
        {
          goto LABEL_388;
        }

LABEL_376:
        v286 = v9 + 1;
        if (v9 + 1 == a2)
        {
          return result;
        }
      }

      v298 = 8 * v297;
      v299 = v295;
      result = *v291;
      v300 = &v293[v297];
      while (*result == *v299)
      {
        result += 8;
        ++v299;
        v298 -= 8;
        if (!v298)
        {
          result = v300;
          break;
        }
      }

      if (v299 == &v295[v296])
      {
        goto LABEL_376;
      }

LABEL_388:
      if (result == &v293[v294] || *result < *v299)
      {
        v301 = v9;
        do
        {
          *v301 = v290;
          v301 = v288;
          v302 = *--v288;
          LODWORD(v290) = v302;
          v303 = v287 + (v302 << 6);
          v304 = *(v291 + 8);
          v305 = *v303;
          result = *(v303 + 8);
          if (result >= v304)
          {
            v306 = *(v291 + 8);
          }

          else
          {
            v306 = *(v303 + 8);
          }

          if (v306)
          {
            v307 = 8 * v306;
            v308 = *v303;
            v309 = v293;
            v310 = &v293[v306];
            while (*v309 == *v308)
            {
              ++v309;
              ++v308;
              v307 -= 8;
              if (!v307)
              {
                v309 = v310;
                break;
              }
            }
          }

          else
          {
            v308 = *v303;
            v309 = v293;
          }
        }

        while (v308 != &v305[result] && (v309 == &v293[v304] || *v309 < *v308));
        *v301 = v289;
      }

      goto LABEL_376;
    }

    if (!a4)
    {
      if (i == a2)
      {
        return result;
      }

      v185 = (v12 - 2) >> 1;
      v186 = v185;
      while (1)
      {
        v188 = v186;
        if (v185 < v186)
        {
          goto LABEL_258;
        }

        v189 = (2 * v186) | 1;
        v190 = &i[v189];
        v191 = **a3;
        if (2 * v188 + 2 < v12)
        {
          v192 = v191 + (*v190 << 6);
          v193 = v191 + (v190[1] << 6);
          v194 = *v192;
          v195 = *(v192 + 8);
          v196 = *v193;
          v197 = *(v193 + 8);
          if (v197 >= v195)
          {
            v198 = v195;
          }

          else
          {
            v198 = v197;
          }

          if (v198)
          {
            v199 = 8 * v198;
            v200 = v196;
            v201 = v194;
            v202 = &v194[v198];
            do
            {
              if (*v201 != *v200)
              {
                goto LABEL_269;
              }

              ++v201;
              ++v200;
              v199 -= 8;
            }

            while (v199);
            v201 = v202;
LABEL_269:
            if (v200 == &v196[v197])
            {
              goto LABEL_275;
            }

LABEL_272:
            if (v201 == &v194[v195] || *v201 < *v200)
            {
              ++v190;
              v189 = 2 * v188 + 2;
            }

            goto LABEL_275;
          }

          v200 = v196;
          v201 = v194;
          if (v196 != &v196[v197])
          {
            goto LABEL_272;
          }
        }

LABEL_275:
        v203 = *v190;
        v204 = i[v188];
        v205 = v191 + (v203 << 6);
        v206 = v191 + (v204 << 6);
        result = *v205;
        v207 = *(v205 + 8);
        v208 = *v206;
        v209 = *(v206 + 8);
        if (v209 >= v207)
        {
          v210 = v207;
        }

        else
        {
          v210 = *(v206 + 8);
        }

        if (v210)
        {
          v211 = 8 * v210;
          v212 = *v206;
          v213 = result;
          v214 = (result + 8 * v210);
          do
          {
            if (*v213 != *v212)
            {
              goto LABEL_283;
            }

            ++v213;
            ++v212;
            v211 -= 8;
          }

          while (v211);
          v213 = v214;
LABEL_283:
          if (v212 == &v208[v209])
          {
LABEL_288:
            i[v188] = v203;
            if (v185 < v189)
            {
LABEL_256:
              v187 = v190;
LABEL_257:
              *v187 = v204;
              goto LABEL_258;
            }

            while (2)
            {
              v215 = 2 * v189;
              v189 = (2 * v189) | 1;
              v187 = &i[v189];
              v216 = v215 + 2;
              if (v216 < v12)
              {
                v217 = v191 + (*v187 << 6);
                v218 = v191 + (v187[1] << 6);
                v219 = *v217;
                v220 = *(v217 + 8);
                v221 = *v218;
                v222 = *(v218 + 8);
                if (v222 >= v220)
                {
                  v223 = v220;
                }

                else
                {
                  v223 = v222;
                }

                if (v223)
                {
                  v224 = 8 * v223;
                  v225 = v221;
                  v226 = v219;
                  v227 = &v219[v223];
                  do
                  {
                    if (*v226 != *v225)
                    {
                      goto LABEL_300;
                    }

                    ++v226;
                    ++v225;
                    v224 -= 8;
                  }

                  while (v224);
                  v226 = v227;
LABEL_300:
                  if (v225 == &v221[v222])
                  {
                    goto LABEL_306;
                  }
                }

                else
                {
                  v225 = v221;
                  v226 = v219;
                  if (v221 == &v221[v222])
                  {
                    goto LABEL_306;
                  }
                }

                if (v226 == &v219[v220] || *v226 < *v225)
                {
                  ++v187;
                  v189 = v216;
                }
              }

LABEL_306:
              result = *v187;
              v228 = v191 + (result << 6);
              v229 = *v228;
              v230 = *(v228 + 8);
              v231 = *(v206 + 8);
              if (v231 >= v230)
              {
                v232 = v230;
              }

              else
              {
                v232 = *(v206 + 8);
              }

              if (v232)
              {
                v233 = 8 * v232;
                v234 = v208;
                v235 = v229;
                v236 = &v229[v232];
                do
                {
                  if (*v235 != *v234)
                  {
                    goto LABEL_314;
                  }

                  ++v235;
                  ++v234;
                  v233 -= 8;
                }

                while (v233);
                v235 = v236;
LABEL_314:
                if (v234 == &v208[v231])
                {
LABEL_290:
                  *v190 = result;
                  v190 = v187;
                  if (v185 < v189)
                  {
                    goto LABEL_257;
                  }

                  continue;
                }
              }

              else
              {
                v234 = v208;
                v235 = v229;
                if (v208 == &v208[v231])
                {
                  goto LABEL_290;
                }
              }

              break;
            }

            if (v235 == &v229[v230] || *v235 < *v234)
            {
              goto LABEL_256;
            }

            goto LABEL_290;
          }
        }

        else
        {
          v212 = *v206;
          v213 = result;
          if (v208 == &v208[v209])
          {
            goto LABEL_288;
          }
        }

        result += 8 * v207;
        if (v213 != result)
        {
          result = *v213;
          if (*v213 >= *v212)
          {
            goto LABEL_288;
          }
        }

LABEL_258:
        v186 = v188 - 1;
        if (!v188)
        {
          while (1)
          {
            v238 = 0;
            v239 = *i;
            v240 = *a3;
            v241 = i;
            do
            {
              v242 = v241;
              v243 = &v241[v238];
              v241 = v243 + 1;
              v244 = 2 * v238;
              v238 = (2 * v238) | 1;
              v245 = v244 + 2;
              if (v245 >= v12)
              {
                goto LABEL_324;
              }

              v247 = v243[2];
              v246 = v243 + 2;
              v248 = *v240 + (*(v246 - 1) << 6);
              v249 = *v240 + (v247 << 6);
              v250 = *v248;
              result = *(v248 + 8);
              v251 = *v249;
              v252 = *(v249 + 8);
              if (v252 >= result)
              {
                v253 = result;
              }

              else
              {
                v253 = v252;
              }

              if (!v253)
              {
                v255 = v251;
                v256 = v250;
                if (v251 == &v251[v252])
                {
                  goto LABEL_324;
                }

LABEL_337:
                if (v256 == &v250[result] || (result = *v255, *v256 < *v255))
                {
                  v241 = v246;
                  v238 = v245;
                }

                goto LABEL_324;
              }

              v254 = 8 * v253;
              v255 = v251;
              v256 = v250;
              v257 = &v250[v253];
              while (*v256 == *v255)
              {
                ++v256;
                ++v255;
                v254 -= 8;
                if (!v254)
                {
                  v256 = v257;
                  break;
                }
              }

              if (v255 != &v251[v252])
              {
                goto LABEL_337;
              }

LABEL_324:
              *v242 = *v241;
            }

            while (v238 <= ((v12 - 2) >> 1));
            if (v241 == --a2)
            {
              *v241 = v239;
              goto LABEL_321;
            }

            *v241 = *a2;
            *a2 = v239;
            v258 = (v241 - i + 4) >> 2;
            v259 = v258 - 2;
            if (v258 >= 2)
            {
              v260 = v259 >> 1;
              v261 = &i[v259 >> 1];
              v262 = *v261;
              v263 = *v241;
              v264 = **a3;
              v265 = v264 + (v262 << 6);
              v266 = v264 + (v263 << 6);
              result = *v265;
              v267 = *(v265 + 8);
              v268 = *v266;
              v269 = *(v266 + 8);
              if (v269 >= v267)
              {
                v270 = v267;
              }

              else
              {
                v270 = *(v266 + 8);
              }

              if (v270)
              {
                v271 = 8 * v270;
                v272 = *v266;
                v273 = result;
                v274 = (result + 8 * v270);
                while (*v273 == *v272)
                {
                  ++v273;
                  ++v272;
                  v271 -= 8;
                  if (!v271)
                  {
                    v273 = v274;
                    break;
                  }
                }

                if (v272 == &v268[v269])
                {
                  goto LABEL_321;
                }
              }

              else
              {
                v272 = *v266;
                v273 = result;
                if (v268 == &v268[v269])
                {
                  goto LABEL_321;
                }
              }

              result += 8 * v267;
              if (v273 == result || (result = *v273, *v273 < *v272))
              {
                *v241 = v262;
                if (v259 >= 2)
                {
                  while (1)
                  {
                    v276 = v260 - 1;
                    v260 = (v260 - 1) >> 1;
                    v275 = &i[v260];
                    v277 = *v275;
                    v278 = v264 + (v277 << 6);
                    result = *v278;
                    v279 = *(v278 + 8);
                    v280 = *(v266 + 8);
                    v281 = v280 >= v279 ? v279 : *(v266 + 8);
                    if (v281)
                    {
                      v282 = 8 * v281;
                      v283 = v268;
                      v284 = result;
                      v285 = (result + 8 * v281);
                      while (*v284 == *v283)
                      {
                        ++v284;
                        ++v283;
                        v282 -= 8;
                        if (!v282)
                        {
                          v284 = v285;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v283 = v268;
                      v284 = result;
                    }

                    if (v283 == &v268[v280])
                    {
                      break;
                    }

                    result += 8 * v279;
                    if (v284 != result)
                    {
                      result = *v284;
                      if (*v284 >= *v283)
                      {
                        break;
                      }
                    }

                    *v261 = v277;
                    v261 = &i[v260];
                    if (v276 <= 1)
                    {
                      goto LABEL_357;
                    }
                  }
                }

                v275 = v261;
LABEL_357:
                *v275 = v263;
              }
            }

LABEL_321:
            if (v12-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v13 = v12 >> 1;
    v14 = &i[v12 >> 1];
    v15 = **a3;
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(&v9[v12 >> 1], v9, v10, v15);
      --a4;
      v18 = *v9;
      v19 = **a3;
      v20 = v19 + (v18 << 6);
      if ((a5 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_23:
      v24 = *v20;
      v25 = *(v20 + 8);
LABEL_28:
      v32 = &v24[v25];
      v33 = v9;
      do
      {
        v34 = v33;
        v36 = v33[1];
        ++v33;
        v35 = v36;
        v37 = v19 + (v36 << 6);
        v38 = *v37;
        v39 = *(v37 + 8);
        if (v25 >= v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = v25;
        }

        if (v40)
        {
          v41 = 8 * v40;
          v42 = v24;
          v43 = v38;
          v44 = &v38[v40];
          while (*v43 == *v42)
          {
            ++v43;
            ++v42;
            v41 -= 8;
            if (!v41)
            {
              v43 = v44;
              break;
            }
          }
        }

        else
        {
          v42 = v24;
          v43 = v38;
        }
      }

      while (v42 != v32 && (v43 == &v38[v39] || *v43 < *v42));
      v45 = a2;
      if (v34 != v9)
      {
        while (1)
        {
          while (1)
          {
            v46 = *--v45;
            v47 = v19 + (v46 << 6);
            v48 = *v47;
            v49 = *(v47 + 8);
            v50 = v25 >= v49 ? v49 : v25;
            if (!v50)
            {
              break;
            }

            v51 = 8 * v50;
            v52 = v24;
            v53 = v48;
            v54 = &v48[v50];
            while (*v53 == *v52)
            {
              ++v53;
              ++v52;
              v51 -= 8;
              if (!v51)
              {
                v53 = v54;
                break;
              }
            }

            if (v52 != v32)
            {
              goto LABEL_53;
            }
          }

          v52 = v24;
          v53 = v48;
          if (v24 != v32)
          {
LABEL_53:
            if (v53 == &v48[v49] || *v53 < *v52)
            {
              goto LABEL_73;
            }
          }
        }
      }

      v45 = a2;
      if (v33 < a2)
      {
        v45 = a2;
        while (1)
        {
          v55 = *--v45;
          v56 = v19 + (v55 << 6);
          v57 = *v56;
          v58 = *(v56 + 8);
          if (v25 >= v58)
          {
            v59 = v58;
          }

          else
          {
            v59 = v25;
          }

          if (v59)
          {
            v60 = 8 * v59;
            v61 = v24;
            v62 = v57;
            v63 = &v57[v59];
            while (*v62 == *v61)
            {
              ++v62;
              ++v61;
              v60 -= 8;
              if (!v60)
              {
                v62 = v63;
                break;
              }
            }

            if (v61 == v32)
            {
              goto LABEL_58;
            }

LABEL_70:
            if (v62 == &v57[v58] || v33 >= v45 || *v62 < *v61)
            {
              break;
            }
          }

          else
          {
            v61 = v24;
            v62 = v57;
            if (v24 != v32)
            {
              goto LABEL_70;
            }

LABEL_58:
            if (v33 >= v45)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (v33 >= v45)
      {
        goto LABEL_103;
      }

      v64 = *v45;
      v65 = v35;
      v66 = v33;
      v67 = v45;
      while (2)
      {
        *v66 = v64;
        *v67 = v65;
        v68 = *(v20 + 8);
        v69 = &v24[v68];
        do
        {
          v34 = v66;
          v70 = v66[1];
          ++v66;
          v65 = v70;
          v71 = v19 + (v70 << 6);
          v72 = *v71;
          v73 = *(v71 + 8);
          if (v68 >= v73)
          {
            v74 = v73;
          }

          else
          {
            v74 = *(v20 + 8);
          }

          if (v74)
          {
            v75 = 8 * v74;
            v76 = v24;
            v77 = v72;
            v78 = &v72[v74];
            while (*v77 == *v76)
            {
              ++v77;
              ++v76;
              v75 -= 8;
              if (!v75)
              {
                v77 = v78;
                break;
              }
            }
          }

          else
          {
            v76 = v24;
            v77 = v72;
          }
        }

        while (v76 != v69 && (v77 == &v72[v73] || *v77 < *v76));
        do
        {
          do
          {
            while (1)
            {
              v79 = *--v67;
              v64 = v79;
              v80 = v19 + (v79 << 6);
              v81 = *v80;
              v82 = *(v80 + 8);
              v83 = v68 >= v82 ? v82 : *(v20 + 8);
              if (v83)
              {
                break;
              }

              v85 = v24;
              v86 = v81;
              if (v24 != v69)
              {
                goto LABEL_100;
              }
            }

            v84 = 8 * v83;
            v85 = v24;
            v86 = v81;
            v87 = &v81[v83];
            while (*v86 == *v85)
            {
              ++v86;
              ++v85;
              v84 -= 8;
              if (!v84)
              {
                v86 = v87;
                break;
              }
            }
          }

          while (v85 == v69);
LABEL_100:
          ;
        }

        while (v86 != &v81[v82] && *v86 >= *v85);
        if (v66 < v67)
        {
          continue;
        }

        break;
      }

LABEL_103:
      if (v34 != v9)
      {
        *v9 = *v34;
      }

      *v34 = v18;
      if (v33 < v45)
      {
LABEL_108:
        result = std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v9, v34, a3, a4, a5 & 1);
        a5 = 0;
        i = v34 + 1;
      }

      else
      {
        v88 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v9, v34, a3);
        i = v34 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v34 + 1, a2, a3);
        if (result)
        {
          a2 = v34;
          if (v88)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v88)
        {
          goto LABEL_108;
        }
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v9, &v9[v12 >> 1], v10, v15);
      v16 = &v9[v13];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v9 + 1, v16 - 1, v313, **a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v9 + 2, &v9[v13 + 1], v312, **a3);
      a2 = v311;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v16 - 1, v14, &v9[v13 + 1], **a3);
      v17 = *v9;
      *v9 = *v16;
      *v16 = v17;
      --a4;
      v18 = *v9;
      v19 = **a3;
      v20 = v19 + (v18 << 6);
      if (a5)
      {
        goto LABEL_23;
      }

LABEL_14:
      v21 = v19 + (*(v9 - 1) << 6);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *v20;
      v25 = *(v20 + 8);
      if (v25 >= v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = *(v20 + 8);
      }

      if (v26)
      {
        v27 = 8 * v26;
        v28 = *v20;
        v29 = v22;
        v30 = &v22[v26];
        while (*v29 == *v28)
        {
          ++v29;
          ++v28;
          v27 -= 8;
          if (!v27)
          {
            v29 = v30;
            break;
          }
        }
      }

      else
      {
        v28 = *v20;
        v29 = v22;
      }

      v31 = &v24[v25];
      if (v28 != v31 && (v29 == &v22[v23] || *v29 < *v28))
      {
        goto LABEL_28;
      }

      v89 = v19 + (*v10 << 6);
      v90 = *v89;
      v91 = *(v89 + 8);
      if (v91 >= v25)
      {
        v92 = *(v20 + 8);
      }

      else
      {
        v92 = v91;
      }

      v93 = v90;
      v94 = *v20;
      if (v92)
      {
        v95 = 8 * v92;
        v93 = v90;
        v94 = *v20;
        v96 = &v24[v92];
        while (*v94 == *v93)
        {
          ++v94;
          ++v93;
          v95 -= 8;
          if (!v95)
          {
            v94 = v96;
            break;
          }
        }
      }

      result = &v90[v91];
      if (v93 != result && (v94 == v31 || *v94 < *v93))
      {
        i = v9;
        while (1)
        {
          while (1)
          {
            v97 = i[1];
            ++i;
            v98 = v19 + (v97 << 6);
            v99 = *v98;
            v100 = *(v98 + 8);
            v101 = v100 >= v25 ? *(v20 + 8) : v100;
            if (!v101)
            {
              break;
            }

            v102 = 8 * v101;
            result = v99;
            v103 = *v20;
            v104 = &v24[v101];
            while (*v103 == *result)
            {
              ++v103;
              result += 8;
              v102 -= 8;
              if (!v102)
              {
                v103 = v104;
                break;
              }
            }

            if (result != v99 + 8 * v100)
            {
              goto LABEL_132;
            }
          }

          result = v99;
          v103 = *v20;
          if (v99 != v99 + 8 * v100)
          {
LABEL_132:
            if (v103 == v31 || *v103 < *result)
            {
              goto LABEL_151;
            }
          }
        }
      }

      for (i = v9 + 1; i < a2; ++i)
      {
        v105 = v19 + (*i << 6);
        v106 = *v105;
        v107 = *(v105 + 8);
        if (v107 >= v25)
        {
          v108 = *(v20 + 8);
        }

        else
        {
          v108 = v107;
        }

        if (v108)
        {
          v109 = 8 * v108;
          result = v106;
          v110 = *v20;
          v111 = &v24[v108];
          while (*v110 == *result)
          {
            ++v110;
            result += 8;
            v109 -= 8;
            if (!v109)
            {
              v110 = v111;
              break;
            }
          }

          if (result == v106 + 8 * v107)
          {
            continue;
          }
        }

        else
        {
          result = v106;
          v110 = *v20;
          if (v106 == v106 + 8 * v107)
          {
            continue;
          }
        }

        if (v110 == v31 || *v110 < *result)
        {
          break;
        }
      }

LABEL_151:
      v112 = a2;
      if (i < a2)
      {
        for (j = a2; ; --j)
        {
          if (v91 >= v25)
          {
            v115 = *(v20 + 8);
          }

          else
          {
            v115 = v91;
          }

          result = v90;
          v116 = *v20;
          if (v115)
          {
            v117 = 8 * v115;
            result = v90;
            v116 = *v20;
            v118 = &v24[v115];
            while (*v116 == *result)
            {
              ++v116;
              result += 8;
              v117 -= 8;
              if (!v117)
              {
                v116 = v118;
                break;
              }
            }
          }

          v112 = j - 1;
          if (result == &v90[v91] || v116 != v31 && *v116 >= *result)
          {
            break;
          }

          v114 = v19 + (*(j - 2) << 6);
          v90 = *v114;
          v91 = *(v114 + 8);
        }
      }

      if (i < v112)
      {
        v119 = *i;
        v120 = *v112;
        do
        {
          *i = v120;
          *v112 = v119;
          v121 = *(v20 + 8);
          v122 = &v24[v121];
          do
          {
            do
            {
              while (1)
              {
                v123 = i[1];
                ++i;
                v119 = v123;
                v124 = v19 + (v123 << 6);
                v125 = *v124;
                v126 = *(v124 + 8);
                v127 = v126 >= v121 ? *(v20 + 8) : v126;
                if (v127)
                {
                  break;
                }

                v129 = v125;
                v130 = v24;
                if (v125 != &v125[v126])
                {
                  goto LABEL_180;
                }
              }

              v128 = 8 * v127;
              v129 = v125;
              v130 = v24;
              v131 = &v24[v127];
              while (*v130 == *v129)
              {
                ++v130;
                ++v129;
                v128 -= 8;
                if (!v128)
                {
                  v130 = v131;
                  break;
                }
              }
            }

            while (v129 == &v125[v126]);
LABEL_180:
            ;
          }

          while (v130 != v122 && *v130 >= *v129);
          while (1)
          {
            v132 = *--v112;
            v120 = v132;
            v133 = v19 + (v132 << 6);
            v134 = *v133;
            result = *(v133 + 8);
            if (result >= v121)
            {
              v135 = *(v20 + 8);
            }

            else
            {
              v135 = result;
            }

            if (v135)
            {
              v136 = 8 * v135;
              v137 = v134;
              v138 = v24;
              v139 = &v24[v135];
              while (*v138 == *v137)
              {
                ++v138;
                ++v137;
                v136 -= 8;
                if (!v136)
                {
                  v138 = v139;
                  break;
                }
              }
            }

            else
            {
              v137 = v134;
              v138 = v24;
            }

            if (v137 == &v134[result])
            {
              break;
            }

            if (v138 != v122)
            {
              result = *v137;
              if (*v138 >= *v137)
              {
                break;
              }
            }
          }
        }

        while (i < v112);
      }

      v140 = i - 1;
      if (i - 1 != v9)
      {
        *v9 = *v140;
      }

      a5 = 0;
      *v140 = v18;
    }
  }

  v142 = *(a2 - 1);
  v143 = *i;
  v144 = **a3;
  v145 = v144 + (v142 << 6);
  v146 = v144 + (v143 << 6);
  v147 = *v145;
  v148 = *(v145 + 8);
  v149 = *v146;
  v150 = *(v146 + 8);
  v151 = *v146 + 8 * v150;
  if (v150 >= v148)
  {
    v152 = v148;
  }

  else
  {
    v152 = v150;
  }

  if (v152)
  {
    v153 = 8 * v152;
    v154 = v147;
    v155 = &v147[v152];
    while (1)
    {
      result = *v149;
      if (*v154 != *v149)
      {
        break;
      }

      ++v154;
      ++v149;
      v153 -= 8;
      if (!v153)
      {
        v154 = v155;
        break;
      }
    }
  }

  else
  {
    v154 = v147;
  }

  if (v149 != v151 && (v154 == &v147[v148] || *v154 < *v149))
  {
    *i = v142;
    *(a2 - 1) = v143;
  }

  return result;
}

_DWORD *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = a4 + (v4 << 6);
  v7 = a4 + (v5 << 6);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *v7 + 8 * v11;
  if (v11 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v7 + 8);
  }

  v14 = *v7;
  v15 = v8;
  if (v13)
  {
    v16 = 8 * v13;
    v14 = *v7;
    v15 = v8;
    v17 = &v8[v13];
    while (*v15 == *v14)
    {
      ++v15;
      ++v14;
      v16 -= 8;
      if (!v16)
      {
        v15 = v17;
        break;
      }
    }
  }

  v18 = &v8[v9];
  if (v14 != v12 && (v15 == v18 || *v15 < *v14))
  {
    v19 = *a3;
    v20 = a4 + (v19 << 6);
    v21 = *v20;
    v22 = *(v20 + 8);
    if (v9 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v9;
    }

    if (v23)
    {
      v24 = 8 * v23;
      v25 = v21;
      v26 = &v21[v23];
      while (*v25 == *v8)
      {
        ++v25;
        ++v8;
        v24 -= 8;
        if (!v24)
        {
          v25 = v26;
          break;
        }
      }

      if (v8 == v18)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v25 = v21;
      if (v8 == v18)
      {
LABEL_47:
        *result = v4;
        *a2 = v5;
        v48 = *a3;
        v49 = a4 + (v48 << 6);
        v50 = *v49;
        v51 = *(v49 + 8);
        v52 = *(v7 + 8);
        v53 = &v10[v52];
        if (v52 >= v51)
        {
          v54 = v51;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          v55 = 8 * v54;
          v56 = v50;
          v57 = &v50[v54];
          while (1)
          {
            result = *v10;
            if (*v56 != *v10)
            {
              break;
            }

            ++v56;
            ++v10;
            v55 -= 8;
            if (!v55)
            {
              v56 = v57;
              break;
            }
          }
        }

        else
        {
          v56 = v50;
        }

        if (v10 != v53 && (v56 == &v50[v51] || *v56 < *v10))
        {
          *a2 = v48;
          *a3 = v5;
        }

        return result;
      }
    }

    if (v25 == &v21[v22] || *v25 < *v8)
    {
      *result = v19;
      *a3 = v5;
      return result;
    }

    goto LABEL_47;
  }

  v27 = *a3;
  v28 = a4 + (v27 << 6);
  v29 = *v28;
  v30 = *(v28 + 8);
  if (v9 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v9;
  }

  if (!v31)
  {
    v33 = v29;
    if (v8 == v18)
    {
      return result;
    }

    goto LABEL_33;
  }

  v32 = 8 * v31;
  v33 = v29;
  v34 = &v29[v31];
  while (*v33 == *v8)
  {
    ++v33;
    ++v8;
    v32 -= 8;
    if (!v32)
    {
      v33 = v34;
      break;
    }
  }

  if (v8 != v18)
  {
LABEL_33:
    if (v33 == &v29[v30] || *v33 < *v8)
    {
      *a2 = v27;
      *a3 = v4;
      v35 = *a2;
      v36 = *result;
      v37 = a4 + (v35 << 6);
      v38 = a4 + (v36 << 6);
      v39 = *v37;
      v40 = *(v37 + 8);
      v41 = *v38;
      v42 = *(v38 + 8);
      v43 = *v38 + 8 * v42;
      if (v42 >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        v45 = 8 * v44;
        v46 = v39;
        v47 = &v39[v44];
        while (*v46 == *v41)
        {
          ++v46;
          ++v41;
          v45 -= 8;
          if (!v45)
          {
            v46 = v47;
            break;
          }
        }
      }

      else
      {
        v46 = v39;
      }

      if (v41 != v43 && (v46 == &v39[v40] || *v46 < *v41))
      {
        *result = v35;
        *a2 = v36;
      }
    }
  }

  return result;
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t **a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a2, a3, **a5);
  v11 = *a4;
  v12 = *a3;
  v13 = **a5;
  v14 = v13 + (v11 << 6);
  v15 = v13 + (v12 << 6);
  v16 = *v14;
  v17 = *(v14 + 8);
  v18 = *v15;
  v19 = *(v15 + 8);
  v20 = *v15 + 8 * v19;
  if (v19 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v19;
  }

  if (!v21)
  {
    v23 = v16;
    if (v18 == v20)
    {
      return result;
    }

LABEL_12:
    if (v23 != &v16[v17] && *v23 >= *v18)
    {
      return result;
    }

    *a3 = v11;
    *a4 = v12;
    v25 = *a3;
    v26 = *a2;
    v27 = v13 + (v25 << 6);
    v28 = v13 + (v26 << 6);
    v29 = *v27;
    v30 = *(v27 + 8);
    v31 = *v28;
    v32 = *(v28 + 8);
    v33 = *v28 + 8 * v32;
    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    if (v34)
    {
      v35 = 8 * v34;
      v36 = v29;
      v37 = &v29[v34];
      while (1)
      {
        result = *v36;
        if (*v36 != *v31)
        {
          break;
        }

        ++v36;
        ++v31;
        v35 -= 8;
        if (!v35)
        {
          v36 = v37;
          break;
        }
      }

      if (v31 == v33)
      {
        return result;
      }
    }

    else
    {
      v36 = v29;
      if (v31 == v33)
      {
        return result;
      }
    }

    if (v36 == &v29[v30] || *v36 < *v31)
    {
      *a2 = v25;
      *a3 = v26;
      v38 = *a2;
      v39 = *a1;
      v40 = v13 + (v38 << 6);
      v41 = v13 + (v39 << 6);
      v42 = *v40;
      v43 = *(v40 + 8);
      v44 = *v41;
      v45 = *(v41 + 8);
      v46 = *v41 + 8 * v45;
      if (v45 >= v43)
      {
        v47 = v43;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        v48 = 8 * v47;
        v49 = v42;
        v50 = &v42[v47];
        while (1)
        {
          result = *v44;
          if (*v49 != *v44)
          {
            break;
          }

          ++v49;
          ++v44;
          v48 -= 8;
          if (!v48)
          {
            v49 = v50;
            break;
          }
        }
      }

      else
      {
        v49 = v42;
      }

      if (v44 != v46 && (v49 == &v42[v43] || *v49 < *v44))
      {
        *a1 = v38;
        *a2 = v39;
      }
    }

    return result;
  }

  v22 = 8 * v21;
  v23 = v16;
  v24 = &v16[v21];
  while (1)
  {
    result = *v23;
    if (*v23 != *v18)
    {
      break;
    }

    ++v23;
    ++v18;
    v22 -= 8;
    if (!v22)
    {
      v23 = v24;
      break;
    }
  }

  if (v18 != v20)
  {
    goto LABEL_12;
  }

  return result;
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, uint64_t **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = v15 + (v13 << 6);
  v17 = v15 + (v14 << 6);
  v18 = *v16;
  v19 = *(v16 + 8);
  v20 = *v17;
  v21 = *(v17 + 8);
  v22 = *v17 + 8 * v21;
  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  if (!v23)
  {
    v25 = v18;
    if (v20 == v22)
    {
      return result;
    }

LABEL_12:
    if (v25 != &v18[v19] && *v25 >= *v20)
    {
      return result;
    }

    *a4 = v13;
    *a5 = v14;
    v27 = *a4;
    v28 = *a3;
    v29 = v15 + (v27 << 6);
    v30 = v15 + (v28 << 6);
    v31 = *v29;
    v32 = *(v29 + 8);
    v33 = *v30;
    v34 = *(v30 + 8);
    v35 = *v30 + 8 * v34;
    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    if (v36)
    {
      v37 = 8 * v36;
      v38 = v31;
      v39 = &v31[v36];
      while (1)
      {
        result = *v38;
        if (*v38 != *v33)
        {
          break;
        }

        ++v38;
        ++v33;
        v37 -= 8;
        if (!v37)
        {
          v38 = v39;
          break;
        }
      }

      if (v33 == v35)
      {
        return result;
      }
    }

    else
    {
      v38 = v31;
      if (v33 == v35)
      {
        return result;
      }
    }

    if (v38 == &v31[v32] || *v38 < *v33)
    {
      *a3 = v27;
      *a4 = v28;
      v40 = *a3;
      v41 = *a2;
      v42 = v15 + (v40 << 6);
      v43 = v15 + (v41 << 6);
      v44 = *v42;
      v45 = *(v42 + 8);
      v46 = *v43;
      v47 = *(v43 + 8);
      v48 = *v43 + 8 * v47;
      if (v47 >= v45)
      {
        v49 = v45;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        v50 = 8 * v49;
        v51 = v44;
        v52 = &v44[v49];
        while (1)
        {
          result = *v51;
          if (*v51 != *v46)
          {
            break;
          }

          ++v51;
          ++v46;
          v50 -= 8;
          if (!v50)
          {
            v51 = v52;
            break;
          }
        }
      }

      else
      {
        v51 = v44;
      }

      if (v46 != v48 && (v51 == &v44[v45] || *v51 < *v46))
      {
        *a2 = v40;
        *a3 = v41;
        v53 = *a2;
        v54 = *a1;
        v55 = v15 + (v53 << 6);
        v56 = v15 + (v54 << 6);
        v57 = *v55;
        v58 = *(v55 + 8);
        v59 = *v56;
        v60 = *(v56 + 8);
        v61 = *v56 + 8 * v60;
        if (v60 >= v58)
        {
          v62 = v58;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          v63 = 8 * v62;
          v64 = v57;
          v65 = &v57[v62];
          while (1)
          {
            result = *v59;
            if (*v64 != *v59)
            {
              break;
            }

            ++v64;
            ++v59;
            v63 -= 8;
            if (!v63)
            {
              v64 = v65;
              break;
            }
          }
        }

        else
        {
          v64 = v57;
        }

        if (v59 != v61 && (v64 == &v57[v58] || *v64 < *v59))
        {
          *a1 = v53;
          *a2 = v54;
        }
      }
    }

    return result;
  }

  v24 = 8 * v23;
  v25 = v18;
  v26 = &v18[v23];
  while (1)
  {
    result = *v25;
    if (*v25 != *v20)
    {
      break;
    }

    ++v25;
    ++v20;
    v24 -= 8;
    if (!v24)
    {
      v25 = v26;
      break;
    }
  }

  if (v20 != v22)
  {
    goto LABEL_12;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a2 - 1, **a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = **a3;
      v8 = v7 + (v5 << 6);
      v9 = v7 + (v6 << 6);
      v10 = *v8;
      v11 = *(v8 + 8);
      v12 = *v9;
      v13 = *(v9 + 8);
      v14 = *v9 + 8 * v13;
      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        v16 = 8 * v15;
        v17 = v10;
        v18 = &v10[v15];
        while (*v17 == *v12)
        {
          ++v17;
          ++v12;
          v16 -= 8;
          if (!v16)
          {
            v17 = v18;
            break;
          }
        }
      }

      else
      {
        v17 = v10;
      }

      if (v12 != v14 && (v17 == &v10[v11] || *v17 < *v12))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v20 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, **a3);
  v23 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = **a3;
  while (1)
  {
    v26 = *v23;
    v27 = *v20;
    v28 = v25 + (v26 << 6);
    v29 = v25 + (v27 << 6);
    v30 = *v28;
    v31 = *(v28 + 8);
    v32 = *v29;
    v33 = *(v29 + 8);
    v34 = v33 >= v31 ? *(v28 + 8) : v33;
    if (v34)
    {
      break;
    }

    v36 = v32;
    v37 = *v28;
    if (v32 != &v32[v33])
    {
      goto LABEL_33;
    }

LABEL_21:
    v20 = v23++;
    if (v23 == a2)
    {
      return 1;
    }
  }

  v35 = 8 * v34;
  v36 = v32;
  v37 = *v28;
  v38 = &v30[v34];
  while (*v37 == *v36)
  {
    ++v37;
    ++v36;
    v35 -= 8;
    if (!v35)
    {
      v37 = v38;
      break;
    }
  }

  if (v36 == &v32[v33])
  {
    goto LABEL_21;
  }

LABEL_33:
  if (v37 != &v30[v31] && *v37 >= *v36)
  {
    goto LABEL_21;
  }

  *v23 = v27;
  v39 = v20;
  while (1)
  {
    v41 = *--v39;
    v40 = v41;
    v42 = v25 + (v41 << 6);
    v43 = *(v28 + 8);
    v44 = *v42;
    v45 = *(v42 + 8);
    v46 = v45 >= v43 ? *(v28 + 8) : v45;
    if (v46)
    {
      v47 = 8 * v46;
      v48 = v44;
      v49 = v30;
      v50 = &v30[v46];
      while (*v49 == *v48)
      {
        ++v49;
        ++v48;
        v47 -= 8;
        if (!v47)
        {
          v49 = v50;
          break;
        }
      }
    }

    else
    {
      v48 = v44;
      v49 = v30;
    }

    if (v48 == &v44[v45] || v49 != &v30[v43] && *v49 >= *v48)
    {
      break;
    }

    *v20 = v40;
    v20 = v39;
    if (v39 == a1)
    {
      v20 = a1;
      break;
    }
  }

  *v20 = v26;
  if (++v24 != 8)
  {
    goto LABEL_21;
  }

  return v23 + 1 == a2;
}

void mlir::RewritePatternSet::addImpl<CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "affine.max", 10, v31, v9, 0, 0);
  *v8 = &unk_1F5B15428;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>]";
    v32 = 115;
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

void mlir::RewritePatternSet::addImpl<DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "affine.max", 10, v31, v9, 0, 0);
  *v8 = &unk_1F5B154C8;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>]";
    v32 = 111;
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

void mlir::RewritePatternSet::addImpl<MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "affine.max", 10, v31, v9, 0, 0);
  *v8 = &unk_1F5B15538;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>]";
    v32 = 96;
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

void mlir::RewritePatternSet::addImpl<CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "affine.max", 10, v31, v9, 0, 0);
  *v8 = &unk_1F5B15618;
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
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>]";
    v32 = 119;
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

void *CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
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

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *__p)
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

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v5 = a2 + 64;
  v10[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v10[0] = mlir::AffineMapAttr::getValue(v10);
  if (mlir::arith::FastMathFlagsAttr::getValue(v10) != 1)
  {
    return 0;
  }

  v10[0] = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 68);
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v10[0] = v7;
  v10[1] = v6;
  v8 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v8);
  return 1;
}

void *DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
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

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::~DeduplicateAffineMinMaxExpressions(void *__p)
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

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v25);
  v25 = v27;
  v26 = 0x400000000;
  Results = mlir::AffineMap::getResults(&Value);
  v7 = v26;
  if (v6)
  {
    v8 = &Results[v6];
    do
    {
      while (1)
      {
        v9 = *Results;
        v10 = v25;
        v11 = v7;
        v12 = v25;
        if (v7)
        {
          v13 = 8 * v7;
          v12 = v25;
          while (*v12 != v9)
          {
            ++v12;
            v13 -= 8;
            if (!v13)
            {
              goto LABEL_9;
            }
          }
        }

        if (v12 == (v25 + 8 * v7))
        {
          break;
        }

        if (++Results == v8)
        {
          goto LABEL_12;
        }
      }

LABEL_9:
      if (v7 >= HIDWORD(v26))
      {
        v14 = Results;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v11 + 1, 8);
        Results = v14;
        v11 = v26;
        v10 = v25;
      }

      v10[v11] = v9;
      v7 = v26 + 1;
      LODWORD(v26) = v26 + 1;
      ++Results;
    }

    while (Results != v8);
  }

LABEL_12:
  if (v7 == mlir::arith::FastMathFlagsAttr::getValue(&Value))
  {
    v15 = 0;
    v16 = v25;
    if (v25 == v27)
    {
      return v15;
    }

    goto LABEL_18;
  }

  NumDims = mlir::AffineMap::getNumDims(&Value);
  NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
  v23 = mlir::AffineMap::get(NumDims, NumSymbols, v25, v26, a3[1]);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v19 = *(a2 + 68);
    v20 = *(a2 + 72);
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  mlir::ValueRange::ValueRange(v28, v20, v19);
  v21 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v23, v28);
  (*(*a3 + 1))(a3, a2, v21);
  v15 = 1;
  v16 = v25;
  if (v25 != v27)
  {
LABEL_18:
    free(v16);
  }

  return v15;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::affine::AffineMaxOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
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

void *MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::~MergeAffineMinMaxOp(void *a1)
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

void MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::~MergeAffineMinMaxOp(void *__p)
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

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,8u> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMaxOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::~SimplifyAffineOp(void *__p)
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

uint64_t mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMaxOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
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

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *__p)
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

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10[0] = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((canonicalizeMapExprAndTermOrder(&Value) & 1) == 0)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v10, v6, v5);
  v7 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v7);
  return 1;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::~SimplifyAffineOp(void *__p)
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

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v42[8] = *MEMORY[0x1E69E9840];
  v5 = a2 + 64;
  v40 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 24);
  Value = mlir::AffineMapAttr::getValue(&v40);
  v32 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v40 = v42;
    v41 = 0x800000000;
    v8 = -1;
    v9 = 32;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v8, 8);
    v10 = v41;
    v11 = v40;
    v12 = v40 + 8 * v41;
    if (v8 < 0xD)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 68);
  v8 = v7 - 1;
  v9 = *(a2 + 72) + 32;
  v40 = v42;
  v41 = 0x800000000;
  if ((v7 - 1) >= 9)
  {
    goto LABEL_3;
  }

  v10 = 0;
  if (v7 == 1)
  {
    v24 = 0;
    goto LABEL_18;
  }

  v11 = v42;
  v12 = v42;
  if (v8 < 0xD)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v12 >= v9 + 32 * v8 || v9 + 24 >= &v11[v8 + v10])
  {
    v14 = v8 & 3;
    if ((v8 & 3) == 0)
    {
      v14 = 4;
    }

    v13 = v8 - v14;
    v15 = &v12[v13];
    v16 = (v9 + 88);
    v17 = (v12 + 2);
    v18 = v13;
    do
    {
      v19 = v16 - 8;
      v20 = vld4q_f64(v19);
      v21 = vld4q_f64(v16);
      *(v17 - 1) = v20;
      *v17 = v21;
      v16 += 16;
      v17 += 2;
      v18 -= 4;
    }

    while (v18);
    v12 = v15;
    goto LABEL_15;
  }

LABEL_9:
  v13 = 0;
LABEL_15:
  v22 = v8 - v13;
  v23 = (32 * v13) | 0x18;
  do
  {
    *v12++ = *(v9 + v23);
    v23 += 32;
    --v22;
  }

  while (v22);
  v24 = v41;
  v10 = v8;
LABEL_18:
  LODWORD(v41) = v24 + v10;
  composeAffineMapAndOperands(&v32, &v40);
  mlir::affine::canonicalizeMapAndOperands(&v32, &v40);
  simplifyMapWithOperands(&v32, v40, v41);
  v25 = v40;
  if (v32 == Value)
  {
    if (!v10)
    {
LABEL_25:
      v29 = 0;
      if (v40 == v42)
      {
        return v29;
      }

      goto LABEL_29;
    }

    v27 = 0;
    v28 = (v9 + 24);
    while (*v28 == *(v40 + v27))
    {
      ++v27;
      v28 += 4;
      if (v10 == v27)
      {
        goto LABEL_25;
      }
    }
  }

  v35[1] = v41;
  v36 = v32;
  v34 = *(*(a2 + 72) + 24);
  v35[0] = v40;
  __p = *(a2 + 88);
  v33 = mlir::BoolAttr::getValue(&__p);
  v39 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
  mlir::IntegerAttr::getValue(&v39, &__p);
  if (v38 > 0x40)
  {
    v26 = *__p;
    operator delete[](__p);
  }

  else
  {
    LODWORD(v26) = __p;
  }

  LODWORD(v39) = v26;
  __p = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  LOBYTE(__p) = mlir::BoolAttr::getValue(&__p);
  v30 = mlir::OpBuilder::create<mlir::affine::AffinePrefetchOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &,BOOL,unsigned int,BOOL>(a3 + 1, *(a2 + 24), &v34, &v36, v35, &v33, &v39, &__p);
  ((*a3)[1])(a3, a2, v30);
  v29 = 1;
  v25 = v40;
  if (v40 != v42)
  {
LABEL_29:
    free(v25);
  }

  return v29;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffinePrefetchOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &,BOOL,unsigned int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t a5, unsigned __int8 *a6, unsigned int *a7, unsigned __int8 *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffinePrefetchOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &,BOOL,unsigned int,BOOL>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::affine::AffinePrefetchOp::build(a1, v25, *a3, *a4, *a5, *(a5 + 8), *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v20;
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 12);
  mlir::ValueRange::ValueRange(v6, 0, 0);
  mlir::OperationState::addOperands(v5, v6[0], v6[1]);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void *mlir::affine::AffineParallelOp::print(mlir::OpAsmPrinter &)::$_1::operator()<mlir::Attribute const>(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  Int = mlir::IntegerAttr::getInt(&v15);
  v4 = mlir::arith::symbolizeAtomicRMWKind(Int);
  v5 = *a1;
  v6 = (*(*v5 + 16))(v5);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++v6[4];
  }

  v8 = mlir::arith::stringifyAtomicRMWKind(v4);
  v10 = v9;
  v11 = (*(*v5 + 16))(v5);
  if (v10 <= *(v11 + 24) - *(v11 + 32))
  {
    if (v10)
    {
      v12 = v11;
      memcpy(*(v11 + 32), v8, v10);
      *(v12 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v11, v8, v10);
  }

  result = (*(*v5 + 16))(v5);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  *v14 = 34;
  ++result[4];
  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::affine::AffineParallelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t *a1)
{
  v34[9] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v33[0] = v34;
  v33[1] = 0x400000000;
  v34[8] = 4;
  (*(**a1 + 40))(*a1);
  v2 = *a1;
  NoneType = mlir::Builder::getNoneType(a1[1], v3);
  if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(v2, &v22, NoneType, "reduce", 6, v33))
  {
    AttrData = mlir::OpaqueAttr::getAttrData(&v22);
    v6 = mlir::arith::symbolizeAtomicRMWKind(AttrData, v35);
    if (v7)
    {
      v8 = a1[2];
      I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a1[1], v6);
      v10 = *(v8 + 8);
      if (v10 >= *(v8 + 12))
      {
        v21 = I64IntegerAttr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v8 + 16, v10 + 1, 8);
        I64IntegerAttr = v21;
        LODWORD(v10) = *(v8 + 8);
      }

      *(*v8 + 8 * v10) = I64IntegerAttr;
      ++*(v8 + 8);
      v11 = 1;
    }

    else
    {
      (*(**a1 + 24))(&v23);
      if (v23)
      {
        mlir::Diagnostic::operator<<(&v24, v22);
      }

      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v23);
      if (v23)
      {
        mlir::InFlightDiagnostic::report(&v23);
      }

      if (v32 == 1)
      {
        if (v31 != &v32)
        {
          free(v31);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v30;
          v15 = __p;
          if (v30 != __p)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v30 = v13;
          operator delete(v15);
        }

        v16 = v27;
        if (v27)
        {
          v17 = v28;
          v18 = v27;
          if (v28 != v27)
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
            v18 = v27;
          }

          v28 = v16;
          operator delete(v18);
        }

        if (v25 != &v26)
        {
          free(v25);
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  return v11;
}

BOOL mlir::AsmParser::parseAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
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
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::~SimplifyAffineOp(void *__p)
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

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[8] = *MEMORY[0x1E69E9840];
  v37 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v37);
  v32 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v37 = v39;
    v38 = 0x800000000;
    v7 = -1;
    v8 = 32;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v7, 8);
    v9 = v38;
    v10 = v37;
    v11 = v37 + 8 * v38;
    if (v7 < 0xD)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 68);
  v7 = v6 - 1;
  v8 = *(a2 + 72) + 32;
  v37 = v39;
  v38 = 0x800000000;
  if ((v6 - 1) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 1)
  {
    v23 = 0;
    goto LABEL_18;
  }

  v10 = v39;
  v11 = v39;
  if (v7 < 0xD)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v11 >= v8 + 32 * v7 || v8 + 24 >= &v10[v7 + v9])
  {
    v13 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v13 = 4;
    }

    v12 = v7 - v13;
    v14 = &v11[v12];
    v15 = (v8 + 88);
    v16 = (v11 + 2);
    v17 = v12;
    do
    {
      v18 = v15 - 8;
      v19 = vld4q_f64(v18);
      v20 = vld4q_f64(v15);
      *(v16 - 1) = v19;
      *v16 = v20;
      v15 += 16;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v11 = v14;
    goto LABEL_15;
  }

LABEL_9:
  v12 = 0;
LABEL_15:
  v21 = v7 - v12;
  v22 = (32 * v12) | 0x18;
  do
  {
    *v11++ = *(v8 + v22);
    v22 += 32;
    --v21;
  }

  while (v21);
  v23 = v38;
  v9 = v7;
LABEL_18:
  LODWORD(v38) = v23 + v9;
  composeAffineMapAndOperands(&v32, &v37);
  mlir::affine::canonicalizeMapAndOperands(&v32, &v37);
  simplifyMapWithOperands(&v32, v37, v38);
  v24 = v37;
  if (v32 == Value)
  {
    if (!v9)
    {
LABEL_29:
      v28 = 0;
      if (v37 == v39)
      {
        return v28;
      }

      goto LABEL_23;
    }

    v30 = 0;
    v31 = (v8 + 24);
    while (*v31 == *(v37 + v30))
    {
      ++v30;
      v31 += 4;
      if (v9 == v30)
      {
        goto LABEL_29;
      }
    }
  }

  v35[1] = v38;
  v36 = v32;
  v35[0] = v37;
  if (*(a2 + 36))
  {
    v25 = a2 - 16;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v33 = *(*(a2 + 72) + 24);
  v34 = v26;
  v27 = mlir::OpBuilder::create<mlir::affine::AffineVectorLoadOp,mlir::VectorType,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v34, &v33, &v36, v35);
  (*(*a3 + 8))(a3, a2, v27);
  v28 = 1;
  v24 = v37;
  if (v37 != v39)
  {
LABEL_23:
    free(v24);
  }

  return v28;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineVectorLoadOp,mlir::VectorType,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineVectorLoadOp,mlir::VectorType,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v18 = mlir::ValueRange::ValueRange(v25, *a6, *(a6 + 8));
  mlir::affine::AffineVectorLoadOp::build(v18, v24, v15, v16, v17, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::~SimplifyAffineOp(void *a1)
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

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::~SimplifyAffineOp(void *__p)
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

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[8] = *MEMORY[0x1E69E9840];
  v36 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v36);
  v31 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v36 = v38;
    v37 = 0x800000000;
    v7 = -2;
    v8 = 64;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v7, 8);
    v9 = v37;
    v10 = v36;
    v11 = v36 + 8 * v37;
    if (v7 < 0xD)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 68);
  v7 = v6 - 2;
  v8 = *(a2 + 72) + 64;
  v36 = v38;
  v37 = 0x800000000;
  if ((v6 - 2) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 2)
  {
    v23 = 0;
    goto LABEL_18;
  }

  v10 = v38;
  v11 = v38;
  if (v7 < 0xD)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v11 >= v8 + 32 * v7 || v8 + 24 >= &v10[v7 + v9])
  {
    v13 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v13 = 4;
    }

    v12 = v7 - v13;
    v14 = &v11[v12];
    v15 = (v8 + 88);
    v16 = (v11 + 2);
    v17 = v12;
    do
    {
      v18 = v15 - 8;
      v19 = vld4q_f64(v18);
      v20 = vld4q_f64(v15);
      *(v16 - 1) = v19;
      *v16 = v20;
      v15 += 16;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v11 = v14;
    goto LABEL_15;
  }

LABEL_9:
  v12 = 0;
LABEL_15:
  v21 = v7 - v12;
  v22 = (32 * v12) | 0x18;
  do
  {
    *v11++ = *(v8 + v22);
    v22 += 32;
    --v21;
  }

  while (v21);
  v23 = v37;
  v9 = v7;
LABEL_18:
  LODWORD(v37) = v23 + v9;
  composeAffineMapAndOperands(&v31, &v36);
  mlir::affine::canonicalizeMapAndOperands(&v31, &v36);
  simplifyMapWithOperands(&v31, v36, v37);
  v24 = v36;
  if (v31 == Value)
  {
    if (!v9)
    {
LABEL_26:
      v27 = 0;
      if (v36 == v38)
      {
        return v27;
      }

      goto LABEL_20;
    }

    v29 = 0;
    v30 = (v8 + 24);
    while (*v30 == *(v36 + v29))
    {
      ++v29;
      v30 += 4;
      if (v9 == v29)
      {
        goto LABEL_26;
      }
    }
  }

  v34[1] = v37;
  v35 = v31;
  v25 = *(a2 + 72);
  v33 = *(v25 + 24);
  v34[0] = v36;
  v32 = *(v25 + 56);
  v26 = mlir::OpBuilder::create<mlir::affine::AffineVectorStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v33, &v32, &v35, v34);
  (*(*a3 + 8))(a3, a2, v26);
  v27 = 1;
  v24 = v36;
  if (v36 != v38)
  {
LABEL_20:
    free(v24);
  }

  return v27;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineVectorStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v34[24] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineVectorStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v33, v30, v27);
  }

  mlir::OperationState::OperationState(v33, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  mlir::ValueRange::ValueRange(v32, *a6, *(a6 + 8));
  v18 = v32[0];
  v19 = v32[1];
  v28 = v16;
  v29 = v15;
  mlir::OperationState::addOperands(v33, &v29, 1uLL);
  mlir::OperationState::addOperands(v33, &v28, 1uLL);
  mlir::OperationState::addOperands(v33, v18, v19);
  v20 = mlir::AffineMapAttr::get(v17);
  v21 = mlir::Attribute::getContext(v33);
  v31 = 261;
  v30[0] = "map";
  v30[1] = 3;
  v22 = mlir::StringAttr::get(v21, v30);
  mlir::NamedAttribute::NamedAttribute(v27, v22, v20);
  mlir::NamedAttrList::push_back(v34, v27[0], v27[1]);
  v23 = mlir::OpBuilder::create(a1, v33);
  if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v33);
  return v24;
}

void anonymous namespace::DropDelinearizeOfSingleLoop::~DropDelinearizeOfSingleLoop(_anonymous_namespace_::DropDelinearizeOfSingleLoop *this)
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

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

void anonymous namespace::DropUnitExtentBasis::~DropUnitExtentBasis(_anonymous_namespace_::DropUnitExtentBasis *this)
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

uint64_t anonymous namespace::DropUnitExtentBasis::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 36);
  v48 = v51;
  v50 = 6;
  if (v4 >= 7)
  {
    v49 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v4, 8);
    v5 = v48;
    v6 = 8 * v4;
LABEL_5:
    bzero(v5, v6);
    goto LABEL_6;
  }

  if (v4)
  {
    v6 = 8 * v4;
    v5 = v51;
    goto LABEL_5;
  }

LABEL_6:
  v49 = v4;
  v39 = *(a2 + 24);
  v45 = v47;
  v46 = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 68);
    v8 = v7 - 1;
    if (v7 == 1)
    {
      goto LABEL_55;
    }

    v38 = a2;
    v9 = *(a2 + 72) + 32;
  }

  else
  {
    v38 = a2;
    v8 = -1;
    v9 = 32;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = (v9 + 24);
  do
  {
    while (1)
    {
      v14 = *v13;
      v41 = *v13;
      DefiningOp = mlir::Value::getDefiningOp(&v41);
      if (!DefiningOp)
      {
        goto LABEL_42;
      }

      v16 = DefiningOp;
      LODWORD(v53) = 1;
      v52 = 0;
      v42 = &v52;
      v43 = &v44;
      v44 = 0;
      if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, DefiningOp))
      {
        v17 = *(*(*(v16 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v18 = v17 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
        v19 = v18 || v17 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
        if (v19 || v17 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          break;
        }
      }

      v24 = 0;
      if (v53 < 0x41)
      {
        goto LABEL_37;
      }

LABEL_34:
      if (!v52)
      {
        goto LABEL_37;
      }

      operator delete[](v52);
      if (!v24)
      {
        goto LABEL_42;
      }

LABEL_38:
      if ((v11 & 1) == 0)
      {
        LODWORD(v52) = 0;
        v12 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>((a3 + 8), v39, &v52) - 16;
      }

      *(v48 + v10) = v12;
      v11 = 1;
      ++v10;
      v13 += 4;
      if (v8 == v10)
      {
        goto LABEL_45;
      }
    }

    v21 = mlir::detail::constant_int_value_binder::match(&v42, v44);
    v22 = v53;
    if (v21)
    {
      if (v53 >= 0x41)
      {
        if (v22 - llvm::APInt::countLeadingZerosSlowCase(&v52) > 0x40)
        {
          if (v52)
          {
            operator delete[](v52);
          }

          goto LABEL_42;
        }

        v23 = v52;
      }

      else
      {
        v23 = &v52;
      }

      v24 = *v23 == 1;
      if (v22 >= 0x41)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v24 = 0;
      if (v53 >= 0x41)
      {
        goto LABEL_34;
      }
    }

LABEL_37:
    if (v24)
    {
      goto LABEL_38;
    }

LABEL_42:
    v25 = v46;
    if (v46 >= HIDWORD(v46))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v46 + 1, 8);
      v25 = v46;
    }

    *(v45 + v25) = v14;
    LODWORD(v46) = v46 + 1;
    ++v10;
    v13 += 4;
  }

  while (v8 != v10);
LABEL_45:
  if ((*(v38 + 46) & 0x80) == 0)
  {
    if (v46)
    {
      goto LABEL_48;
    }

    goto LABEL_59;
  }

  if (*(v38 + 68) - 1 == v46)
  {
LABEL_55:
    v35 = 0;
    v36 = v45;
    if (v45 != v47)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if (!v46)
  {
LABEL_59:
    v27 = v48;
    v28 = v49;
    goto LABEL_60;
  }

LABEL_48:
  v52 = *(*(v38 + 72) + 24);
  v26 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,6u> &>((a3 + 8), v39, &v52, &v45);
  v27 = v48;
  v28 = v49;
  if (v49)
  {
    v29 = 0;
    v30 = 0;
    v31 = 8 * v49;
    do
    {
      if (!*&v27[v29])
      {
        v32 = v30 - 5;
        v33 = v30++ >= 6;
        v34 = v26 - 96 - 24 * v32;
        if (!v33)
        {
          v34 = v26 - 16 * v30;
        }

        *&v27[v29] = v34;
      }

      v29 += 8;
    }

    while (v31 != v29);
  }

LABEL_60:
  mlir::ValueRange::ValueRange(&v52, v27, v28);
  (**a3)(a3, v38, v52, v53);
  v35 = 1;
  v36 = v45;
  if (v45 != v47)
  {
LABEL_61:
    free(v36);
  }

LABEL_62:
  if (v48 != v51)
  {
    free(v48);
  }

  return v35;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,6u> &>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,6u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineDelinearizeIndexOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>(mlir::IndexType **a1, uint64_t a2, int *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::ConstantIndexOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (!mlir::arith::ConstantIndexOp::classof(v9, v10))
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v9;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties]";
  v6 = 115;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties]";
  v6 = 114;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties]";
  v6 = 121;
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

uint64_t OUTLINED_FUNCTION_18_11@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = 8236;
  *(result + 32) += 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_11@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *(result + 32) = a2 + 1;
  *a2 = 91;
  return result;
}

__n128 OUTLINED_FUNCTION_24_11@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v16 = (a1 + 24 * a15);
  result = *v15;
  v16[1].n128_u64[0] = v15[1].n128_u64[0];
  *v16 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1)
{
  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

uint64_t OUTLINED_FUNCTION_85_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  *(v14 - 88) = a12;
  *(v14 - 80) = a13;
  return v13 + 8;
}

uint64_t OUTLINED_FUNCTION_100_4@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{

  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(a2, v2 & 0xFFFFFFFFFFFFFFF8, a1, 6, 0);
}

llvm::raw_ostream *OUTLINED_FUNCTION_117_3(unsigned int a1)
{

  return printDimAndSymbolList(v3, v2, v5, v4, a1, v1);
}

void OUTLINED_FUNCTION_118_4(uint64_t *a1@<X0>, void *a2@<X8>, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, int a8, char a9)
{
  a3 = a2;
  a7 = 259;

  mlir::OpState::emitOpError(a1, &a3, &a9);
}

uint64_t OUTLINED_FUNCTION_134_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = a1;

  return mlir::AffineMapAttr::getValue(&a9);
}

void OUTLINED_FUNCTION_135_2(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  operator delete(a1);
}

void OUTLINED_FUNCTION_152_3()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_153_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return mlir::affine::AffineValueMap::AffineValueMap(v13, v14, a12, a13, a10, a11);
}

uint64_t *OUTLINED_FUNCTION_154_2@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v6 = *(a1 + 72);

  return mlir::IntegerAttr::getValue(va, va1);
}

void OUTLINED_FUNCTION_155_3(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  mlir::OpState::emitOpError(va1, va, a1);
}

uint64_t OUTLINED_FUNCTION_156_1(uint64_t a1, StringRef a2)
{
  a2.var1 = 3;

  return mlir::DictionaryAttr::get((v2 + 56), a2);
}

uint64_t OUTLINED_FUNCTION_157_3(uint64_t a1, StringRef a2)
{
  a2.var1 = 3;

  return mlir::Operation::getInherentAttr(v2, a2);
}

uint64_t mlir::affine::AffineValueMap::AffineValueMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = mlir::MutableAffineMap::MutableAffineMap(a1, a2);
  v12 = (v11 + 14);
  v11[12] = (v11 + 14);
  v13 = (v11 + 12);
  *(v13 + 8) = 0x400000000;
  if (a4 < 5)
  {
    v14 = 0;
    v24 = a3;
    v25 = 0;
    if (!a4)
    {
      v17 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, a4, 8);
    v14 = *(a1 + 104);
    v12 = *(a1 + 96);
    v24 = a3;
    v25 = 0;
  }

  v15 = (v12 + 8 * v14);
  v16 = 0;
  do
  {
    *v15++ = mlir::ValueRange::dereference_iterator(&v24, v16);
    v16 = v25 + 1;
    v25 = v16;
  }

  while (v16 != a4);
  v17 = *(a1 + 104);
LABEL_7:
  v18 = a1 + 160;
  *(a1 + 144) = a1 + 160;
  *(a1 + 104) = v17 + a4;
  *(a1 + 152) = 0x400000000;
  if (a6 < 5)
  {
    v19 = 0;
    v24 = a5;
    v25 = 0;
    if (!a6)
    {
      v22 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 144, v18, a6, 8);
    v19 = *(a1 + 152);
    v18 = *(a1 + 144);
    v24 = a5;
    v25 = 0;
  }

  v20 = (v18 + 8 * v19);
  v21 = 0;
  do
  {
    *v20++ = mlir::ValueRange::dereference_iterator(&v24, v21);
    v21 = v25 + 1;
    v25 = v21;
  }

  while (v21 != a6);
  v22 = *(a1 + 152);
LABEL_13:
  *(a1 + 152) = v22 + a6;
  return a1;
}

uint64_t mlir::affine::AffineValueMap::reset(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  result = mlir::MutableAffineMap::reset(a1, a2);
  *(a1 + 104) = 0;
  if (a4 > *(a1 + 108))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 96, a1 + 112, a4, 8);
    v12 = *(a1 + 104);
    v13 = *(a1 + 96);
    v21 = a3;
    v22 = 0;
LABEL_5:
    v14 = 0;
    v15 = (v13 + 8 * v12);
    do
    {
      result = mlir::ValueRange::dereference_iterator(&v21, v14);
      *v15++ = result;
      v14 = v22 + 1;
      v22 = v14;
    }

    while (v14 != a4);
    *(a1 + 104) += a4;
    *(a1 + 152) = 0;
    if (a6 > *(a1 + 156))
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v13 = *(a1 + 96);
  v21 = a3;
  v22 = 0;
  if (a4)
  {
    v12 = 0;
    goto LABEL_5;
  }

  *(a1 + 104) = 0;
  *(a1 + 152) = 0;
  if (a6 > *(a1 + 156))
  {
LABEL_8:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 144, a1 + 160, a6, 8);
    v16 = *(a1 + 152);
    v17 = *(a1 + 144);
    v21 = a5;
    v22 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v17 = *(a1 + 144);
  v21 = a5;
  v22 = 0;
  if (!a6)
  {
    v20 = 0;
    goto LABEL_15;
  }

  v16 = 0;
LABEL_12:
  v18 = 0;
  v19 = (v17 + 8 * v16);
  do
  {
    result = mlir::ValueRange::dereference_iterator(&v21, v18);
    *v19++ = result;
    v18 = v22 + 1;
    v22 = v18;
  }

  while (v18 != a6);
  v20 = *(a1 + 152);
LABEL_15:
  *(a1 + 152) = v20 + a6;
  return result;
}

void mlir::affine::AffineValueMap::~AffineValueMap(mlir::affine::AffineValueMap *this)
{
  v2 = *(this + 18);
  if (v2 != this + 160)
  {
    free(v2);
  }

  v3 = *(this + 12);
  if (v3 != this + 112)
  {
    free(v3);
  }

  if (*this != (this + 16))
  {
    free(*this);
  }
}

BOOL mlir::detail::verifyShapedDimOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(this + 9) == 1)
  {
    v21[0] = *(this - 1) & 0xFFFFFFFFFFFFFFF8;
    if (mlir::Type::isIndex(v21))
    {
      return 1;
    }

    v19[0] = "expect index result type";
    v20 = 259;
    mlir::Operation::emitError(this, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v27;
        v14 = __p;
        if (v27 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v27 = v12;
        operator delete(v14);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v15 = v25;
      v9 = v24;
      if (v25 == v24)
      {
LABEL_37:
        v25 = v7;
        operator delete(v9);
LABEL_38:
        if (v22 != &v23)
        {
          free(v22);
        }

        return v3;
      }

      do
      {
        v17 = *--v15;
        v16 = v17;
        *v15 = 0;
        if (v17)
        {
          operator delete[](v16);
        }
      }

      while (v15 != v7);
LABEL_36:
      v9 = v24;
      goto LABEL_37;
    }
  }

  else
  {
    v19[0] = "expected single op result";
    v20 = 259;
    mlir::Operation::emitError(this, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v27;
        v6 = __p;
        if (v27 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v27 = v4;
        operator delete(v6);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v8 = v25;
      v9 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
      }

      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          operator delete[](v10);
        }
      }

      while (v8 != v7);
      goto LABEL_36;
    }
  }

  return v3;
}

uint64_t mlir::detail::verifyDestinationStyleOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v166[6] = *MEMORY[0x1E69E9840];
  if (this)
  {
    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  else
  {
    InterfaceFor = 0;
  }

  v164 = v166;
  v165 = 0x600000000;
  (*InterfaceFor)(v161, InterfaceFor, this);
  v5 = mlir::MutableOperandRange::begin(v161);
  v6 = mlir::MutableOperandRange::end(v161);
  if (v5 == v6)
  {
LABEL_20:
    v11 = 1;
    v12 = v162;
    if (v162 == v163)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v2 = v5;
  while (1)
  {
    while (1)
    {
      v8 = *(*(*(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        break;
      }

      v10 = v165;
      if (v165 >= HIDWORD(v165))
      {
        v139 = v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v166, v165 + 1, 8);
        v6 = v139;
        v10 = v165;
      }

      v164[v10] = v5;
      LODWORD(v165) = v165 + 1;
      v2 += 32;
      v5 += 32;
      if (v2 == v6)
      {
        goto LABEL_20;
      }
    }

    if (v8 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      break;
    }

    v2 += 32;
    v5 += 32;
    if (v2 == v6)
    {
      goto LABEL_20;
    }
  }

  v140 = "expected that operand #";
  v144 = 259;
  mlir::Operation::emitOpError(this, &v140, &v148);
  OperandNumber = mlir::OpOperand::getOperandNumber(v2);
  if (v148)
  {
    LODWORD(v145) = 5;
    v146 = OperandNumber;
    v66 = &v145;
    v67 = v151;
    if (v152 >= v153)
    {
      if (v151 <= &v145 && v151 + 24 * v152 > &v145)
      {
        v127 = &v145 - v151;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
        v67 = v151;
        v66 = (v151 + v127);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
        v66 = &v145;
        v67 = v151;
      }
    }

    v68 = &v67[24 * v152];
    v69 = *v66;
    *(v68 + 2) = v66[2];
    *v68 = v69;
    v70 = ++v152;
    if (v148)
    {
      LODWORD(v145) = 3;
      v146 = " is a tensor or a memref";
      v147 = 24;
      v71 = &v145;
      v72 = v151;
      if (v70 >= v153)
      {
        if (v151 <= &v145 && v151 + 24 * v70 > &v145)
        {
          v129 = &v145 - v151;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v70 + 1, 24);
          v72 = v151;
          v71 = (v151 + v129);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v70 + 1, 24);
          v71 = &v145;
          v72 = v151;
        }
      }

      v73 = &v72[24 * v152];
      v74 = *v71;
      *(v73 + 2) = v71[2];
      *v73 = v74;
      ++v152;
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
  if (v148)
  {
    mlir::InFlightDiagnostic::report(&v148);
  }

  if (v160 == 1)
  {
    if (v159 != &v160)
    {
      free(v159);
    }

    v75 = __p;
    if (__p)
    {
      v76 = v158;
      v77 = __p;
      if (v158 != __p)
      {
        do
        {
          v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
        }

        while (v76 != v75);
        v77 = __p;
      }

      v158 = v75;
      operator delete(v77);
    }

    v78 = v155;
    if (v155)
    {
      v79 = v156;
      v80 = v155;
      if (v156 != v155)
      {
        do
        {
          v82 = *--v79;
          v81 = v82;
          *v79 = 0;
          if (v82)
          {
            operator delete[](v81);
          }
        }

        while (v79 != v78);
        v80 = v155;
      }

      v156 = v78;
      operator delete(v80);
    }

    if (v151 != v154)
    {
      free(v151);
    }
  }

  v11 = 0;
  v12 = v162;
  if (v162 != v163)
  {
LABEL_21:
    free(v12);
  }

LABEL_22:
  if (!v11)
  {
    goto LABEL_138;
  }

  v13 = *(this + 9);
  if (v13)
  {
    v14 = (this - 16);
  }

  else
  {
    v14 = 0;
  }

  v161[0] = v14;
  v161[1] = v13;
  mlir::OperandRange::getTypes(v161, &v148);
  v15 = 0;
  v16 = v149;
  v17 = v151;
  if (v149 != v151)
  {
    v15 = 0;
    v18 = v148;
    do
    {
      v19 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        ++v15;
      }

      ++v16;
    }

    while (v17 != v16);
  }

  if (v15 != v165)
  {
    v161[0] = "expected the number of tensor results (";
    v163[0] = 259;
    mlir::Operation::emitOpError(this, v161, &v148);
    v30 = *(this + 9);
    if (v30)
    {
      v31 = this - 16;
    }

    else
    {
      v31 = 0;
    }

    v145 = v31;
    v146 = v30;
    mlir::OperandRange::getTypes(&v145, &v140);
    v32 = 0;
    v33 = v141;
    v34 = v143;
    if (v141 != v143)
    {
      v32 = 0;
      v35 = v140;
      do
      {
        v36 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v33) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        if (v36 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v36 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          ++v32;
        }

        ++v33;
      }

      while (v34 != v33);
    }

    if (v148)
    {
      LODWORD(v140) = 5;
      v141 = v32;
      v38 = &v140;
      v39 = v151;
      if (v152 >= v153)
      {
        if (v151 <= &v140 && v151 + 24 * v152 > &v140)
        {
          v126 = &v140 - v151;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
          v39 = v151;
          v38 = (v151 + v126);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
          v38 = &v140;
          v39 = v151;
        }
      }

      v40 = &v39[24 * v152];
      v41 = *v38;
      *(v40 + 2) = v38[2];
      *v40 = v41;
      v42 = ++v152;
      if (v148)
      {
        LODWORD(v140) = 3;
        v141 = ") to be equal to the number of output tensors (";
        v142 = 47;
        v43 = &v140;
        v44 = v151;
        if (v42 >= v153)
        {
          if (v151 <= &v140 && v151 + 24 * v42 > &v140)
          {
            v128 = &v140 - v151;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v42 + 1, 24);
            v44 = v151;
            v43 = (v151 + v128);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v42 + 1, 24);
            v43 = &v140;
            v44 = v151;
          }
        }

        v45 = &v44[24 * v152];
        v46 = *v43;
        *(v45 + 2) = v43[2];
        *v45 = v46;
        v47 = ++v152;
        if (v148)
        {
          LODWORD(v140) = 5;
          v141 = v165;
          v48 = &v140;
          v49 = v151;
          if (v47 >= v153)
          {
            if (v151 <= &v140 && v151 + 24 * v47 > &v140)
            {
              v130 = &v140 - v151;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v47 + 1, 24);
              v49 = v151;
              v48 = (v151 + v130);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v47 + 1, 24);
              v48 = &v140;
              v49 = v151;
            }
          }

          v50 = &v49[24 * v152];
          v51 = *v48;
          *(v50 + 2) = v48[2];
          *v50 = v51;
          v52 = ++v152;
          if (v148)
          {
            LODWORD(v140) = 3;
            v141 = ")";
            v142 = 1;
            v53 = &v140;
            v54 = v151;
            if (v52 >= v153)
            {
              if (v151 <= &v140 && v151 + 24 * v52 > &v140)
              {
                v132 = &v140 - v151;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v52 + 1, 24);
                v54 = v151;
                v53 = (v151 + v132);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v52 + 1, 24);
                v53 = &v140;
                v54 = v151;
              }
            }

            v55 = &v54[24 * v152];
            v56 = *v53;
            *(v55 + 2) = v53[2];
            *v55 = v56;
            ++v152;
          }
        }
      }
    }

    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
    if (v148)
    {
      mlir::InFlightDiagnostic::report(&v148);
    }

    if (v160 != 1)
    {
      goto LABEL_138;
    }

    if (v159 != &v160)
    {
      free(v159);
    }

    v57 = __p;
    if (__p)
    {
      v58 = v158;
      v59 = __p;
      if (v158 != __p)
      {
        do
        {
          v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
        }

        while (v58 != v57);
        v59 = __p;
      }

      v158 = v57;
      operator delete(v59);
    }

    v60 = v155;
    if (v155)
    {
      v61 = v156;
      v62 = v155;
      if (v156 != v155)
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
        v62 = v155;
      }

      v156 = v60;
      operator delete(v62);
    }

    v124 = v151;
    if (v151 == v154)
    {
      goto LABEL_138;
    }

LABEL_137:
    free(v124);
    goto LABEL_138;
  }

  if (!v165)
  {
    v2 = 1;
    goto LABEL_138;
  }

  v21 = v164;
  v22 = 8 * v15;
  while (1)
  {
    v23 = *v21;
    (*InterfaceFor)(&v148, InterfaceFor, this);
    v24 = mlir::MutableOperandRange::operator mlir::OperandRange(&v148);
    v26 = v25;
    if (v150 != &v152)
    {
      free(v150);
    }

    v148 = v24;
    v149 = v26;
    v27 = mlir::OpOperand::getOperandNumber(v23);
    v28 = v27 - mlir::OperandRange::getBeginOperandIndex(&v148);
    v29 = v28 <= 5 ? (this - 16 * v28 - 16) : (this - 24 * v28 + 24);
    if ((*(*(v23 + 3) + 8) ^ *(v29 + 1)) >= 8)
    {
      break;
    }

    ++v21;
    v22 -= 8;
    if (!v22)
    {
      v2 = 1;
      goto LABEL_138;
    }
  }

  v161[0] = "expected type of operand #";
  v163[0] = 259;
  mlir::Operation::emitOpError(this, v161, &v148);
  v83 = mlir::OpOperand::getOperandNumber(v23);
  if (v148)
  {
    LODWORD(v140) = 5;
    v141 = v83;
    v84 = &v140;
    v85 = v151;
    if (v152 >= v153)
    {
      if (v151 <= &v140 && v151 + 24 * v152 > &v140)
      {
        v131 = &v140 - v151;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
        v85 = v151;
        v84 = (v151 + v131);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
        v84 = &v140;
        v85 = v151;
      }
    }

    v86 = &v85[24 * v152];
    v87 = *v84;
    *(v86 + 2) = v84[2];
    *v86 = v87;
    v88 = ++v152;
    if (v148)
    {
      LODWORD(v140) = 3;
      v141 = " (";
      v142 = 2;
      v89 = &v140;
      v90 = v151;
      if (v88 >= v153)
      {
        if (v151 <= &v140 && v151 + 24 * v88 > &v140)
        {
          v133 = &v140 - v151;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v88 + 1, 24);
          v90 = v151;
          v89 = (v151 + v133);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v88 + 1, 24);
          v89 = &v140;
          v90 = v151;
        }
      }

      v91 = &v90[24 * v152];
      v92 = *v89;
      *(v91 + 2) = v89[2];
      *v91 = v92;
      ++v152;
      if (v148)
      {
        v93 = &v140;
        mlir::DiagnosticArgument::DiagnosticArgument(&v140, *(*(v23 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
        v94 = v151;
        if (v152 >= v153)
        {
          if (v151 <= &v140 && v151 + 24 * v152 > &v140)
          {
            v134 = &v140 - v151;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
            v94 = v151;
            v93 = (v151 + v134);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
            v93 = &v140;
            v94 = v151;
          }
        }

        v95 = &v94[24 * v152];
        v96 = *v93;
        *(v95 + 2) = v93[2];
        *v95 = v96;
        v97 = ++v152;
        if (v148)
        {
          LODWORD(v140) = 3;
          v141 = ")";
          v142 = 1;
          v98 = &v140;
          v99 = v151;
          if (v97 >= v153)
          {
            if (v151 <= &v140 && v151 + 24 * v97 > &v140)
            {
              v135 = &v140 - v151;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v97 + 1, 24);
              v99 = v151;
              v98 = (v151 + v135);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v97 + 1, 24);
              v98 = &v140;
              v99 = v151;
            }
          }

          v100 = &v99[24 * v152];
          v101 = *v98;
          *(v100 + 2) = v98[2];
          *v100 = v101;
          v102 = ++v152;
          if (v148)
          {
            LODWORD(v140) = 3;
            v141 = " to match type of corresponding result (";
            v142 = 40;
            v103 = &v140;
            v104 = v151;
            if (v102 >= v153)
            {
              if (v151 <= &v140 && v151 + 24 * v102 > &v140)
              {
                v136 = &v140 - v151;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v102 + 1, 24);
                v104 = v151;
                v103 = (v151 + v136);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v102 + 1, 24);
                v103 = &v140;
                v104 = v151;
              }
            }

            v105 = &v104[24 * v152];
            v106 = *v103;
            *(v105 + 2) = v103[2];
            *v105 = v106;
            ++v152;
            if (v148)
            {
              v107 = &v140;
              mlir::DiagnosticArgument::DiagnosticArgument(&v140, *(v29 + 1) & 0xFFFFFFFFFFFFFFF8);
              v108 = v151;
              if (v152 >= v153)
              {
                if (v151 <= &v140 && v151 + 24 * v152 > &v140)
                {
                  v137 = &v140 - v151;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
                  v108 = v151;
                  v107 = (v151 + v137);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
                  v107 = &v140;
                  v108 = v151;
                }
              }

              v109 = &v108[24 * v152];
              v110 = *v107;
              *(v109 + 2) = v107[2];
              *v109 = v110;
              v111 = ++v152;
              if (v148)
              {
                LODWORD(v140) = 3;
                v141 = ")";
                v142 = 1;
                v112 = &v140;
                v113 = v151;
                if (v111 >= v153)
                {
                  if (v151 <= &v140 && v151 + 24 * v111 > &v140)
                  {
                    v138 = &v140 - v151;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v111 + 1, 24);
                    v113 = v151;
                    v112 = (v151 + v138);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v111 + 1, 24);
                    v112 = &v140;
                    v113 = v151;
                  }
                }

                v114 = &v113[24 * v152];
                v115 = *v112;
                *(v114 + 2) = v112[2];
                *v114 = v115;
                ++v152;
              }
            }
          }
        }
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
  if (v148)
  {
    mlir::InFlightDiagnostic::report(&v148);
  }

  if (v160)
  {
    if (v159 != &v160)
    {
      free(v159);
    }

    v116 = __p;
    if (__p)
    {
      v117 = v158;
      v118 = __p;
      if (v158 != __p)
      {
        do
        {
          v117 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v117 - 1);
        }

        while (v117 != v116);
        v118 = __p;
      }

      v158 = v116;
      operator delete(v118);
    }

    v119 = v155;
    if (v155)
    {
      v120 = v156;
      v121 = v155;
      if (v156 != v155)
      {
        do
        {
          v123 = *--v120;
          v122 = v123;
          *v120 = 0;
          if (v123)
          {
            operator delete[](v122);
          }
        }

        while (v120 != v119);
        v121 = v155;
      }

      v156 = v119;
      operator delete(v121);
    }

    v124 = v151;
    if (v151 != v154)
    {
      goto LABEL_137;
    }
  }

LABEL_138:
  if (v164 != v166)
  {
    free(v164);
  }

  return v2;
}

void mlir::intrange::truncRange(mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);
  v7 = *(v6 + 8);
  v61 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v60, v6);
    v7 = v61;
    if (v61 > 0x40)
    {
      llvm::APInt::lshrSlowCase(&v60, v3);
      goto LABEL_8;
    }
  }

  else
  {
    v60 = *v6;
  }

  if (v7 == v3)
  {
    v60 = 0;
  }

  else
  {
    v60 >>= v3;
  }

LABEL_8:
  v8 = mlir::ConstantIntRanges::umax(this);
  v9 = v8;
  v10 = *(v8 + 8);
  v59 = v10;
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, v8);
    v10 = v59;
    if (v59 > 0x40)
    {
      llvm::APInt::lshrSlowCase(&__p, v3);
      v11 = v61;
      if (v61 > 0x40)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else
  {
    __p = *v8;
  }

  if (v10 == v3)
  {
    __p = 0;
    v11 = v61;
    if (v61 > 0x40)
    {
LABEL_18:
      v12 = llvm::APInt::equalSlowCase(&v60, &__p);
      if (v59 < 0x41)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    __p = (__p >> v3);
    v11 = v61;
    if (v61 > 0x40)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v12 = v60 == __p;
  if (v59 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (__p)
  {
    operator delete[](__p);
    v11 = v61;
  }

LABEL_21:
  if (v11 >= 0x41 && v60)
  {
    operator delete[](v60);
  }

  if (v12)
  {
    v13 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, v9);
    llvm::APInt::trunc(v13, v3, &v60);
    v14 = mlir::ConstantIntRanges::umax(this);
    llvm::APInt::trunc(v14, v3, &__p);
  }

  else
  {
    v61 = v3;
    if (v3 > 0x40)
    {
      llvm::APInt::initSlowCase(&v60, 0, 0);
      v59 = v3;
      llvm::APInt::initSlowCase(&__p, -1, 1);
    }

    else
    {
      v60 = 0;
      v59 = v3;
      v15 = (0xFFFFFFFFFFFFFFFFLL >> -v3);
      if (!v3)
      {
        v15 = 0;
      }

      __p = v15;
    }
  }

  v16 = mlir::ConstantIntRanges::smin(this);
  v17 = v3 - 1;
  v18 = *(v16 + 2);
  v57 = v18;
  if (v18 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v56, v16);
    v18 = v57;
    if (v57 > 0x40)
    {
      llvm::APInt::ashrSlowCase(&v56, v3 - 1);
      goto LABEL_44;
    }

    v16 = &v56;
  }

  if (v18 == v17)
  {
    v19 = 63;
  }

  else
  {
    v19 = v3 - 1;
  }

  v20 = -v18;
  v21 = v18 == 0;
  if (v18)
  {
    v22 = (*v16 << -v18) >> -v18;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 >> v19;
  v24 = 0xFFFFFFFFFFFFFFFFLL >> v20;
  if (v21)
  {
    v24 = 0;
  }

  v56 = (v23 & v24);
LABEL_44:
  v25 = mlir::ConstantIntRanges::smax(this);
  v26 = *(v25 + 2);
  v55 = v26;
  if (v26 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v54, v25);
    v26 = v55;
    if (v55 > 0x40)
    {
      llvm::APInt::ashrSlowCase(&v54, v3 - 1);
      v33 = v57;
      if (v57 <= 0x40)
      {
        goto LABEL_56;
      }

LABEL_62:
      if (llvm::APInt::equalSlowCase(&v56, &v54))
      {
        goto LABEL_84;
      }

      if (llvm::APInt::countTrailingOnesSlowCase(&v56) != v33)
      {
        goto LABEL_74;
      }

      goto LABEL_64;
    }

    v25 = &v54;
  }

  if (v26 == v17)
  {
    v27 = 63;
  }

  else
  {
    v27 = v3 - 1;
  }

  v28 = -v26;
  v29 = v26 == 0;
  if (v26)
  {
    v30 = (*v25 << -v26) >> -v26;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 >> v27;
  v32 = 0xFFFFFFFFFFFFFFFFLL >> v28;
  if (v29)
  {
    v32 = 0;
  }

  v54 = (v31 & v32);
  v33 = v57;
  if (v57 > 0x40)
  {
    goto LABEL_62;
  }

LABEL_56:
  if (v56 == v54)
  {
    goto LABEL_84;
  }

  if (v33 && v56 != (0xFFFFFFFFFFFFFFFFLL >> -v33))
  {
    if (v56)
    {
      goto LABEL_77;
    }

    goto LABEL_75;
  }

LABEL_64:
  v34 = v55;
  if (!v55)
  {
    goto LABEL_84;
  }

  if (v55 > 0x40)
  {
    if (llvm::APInt::countTrailingOnesSlowCase(&v54) == v34 || llvm::APInt::countLeadingZerosSlowCase(&v54) == v34)
    {
      goto LABEL_84;
    }
  }

  else if (v54 == (0xFFFFFFFFFFFFFFFFLL >> -v55) || !v54)
  {
    goto LABEL_84;
  }

  if (v33 <= 0x40)
  {
    if (v56)
    {
      goto LABEL_77;
    }

    goto LABEL_75;
  }

LABEL_74:
  if (llvm::APInt::countLeadingZerosSlowCase(&v56) != v33)
  {
    goto LABEL_77;
  }

LABEL_75:
  v35 = v55;
  if (v55 <= 0x40)
  {
    if (v54)
    {
      goto LABEL_77;
    }

LABEL_84:
    v39 = mlir::ConstantIntRanges::smin(this);
    llvm::APInt::trunc(v39, v3, &v52);
    v40 = mlir::ConstantIntRanges::smax(this);
    llvm::APInt::trunc(v40, v3, &v50);
    v41 = v61;
    *(a3 + 8) = v61;
    if (v41 > 0x40)
    {
      goto LABEL_96;
    }

LABEL_85:
    *a3 = v60;
    v42 = v59;
    *(a3 + 24) = v59;
    if (v42 <= 0x40)
    {
      goto LABEL_97;
    }

LABEL_86:
    llvm::APInt::initSlowCase(a3 + 16, &__p);
    v43 = v53;
    *(a3 + 40) = v53;
    if (v43 <= 0x40)
    {
      goto LABEL_98;
    }

    goto LABEL_87;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(&v54) == v35)
  {
    goto LABEL_84;
  }

LABEL_77:
  v53 = v3;
  if (v3 < 0x41)
  {
    v36 = 1 << v17;
    v52 = (1 << v17);
    v51 = v3;
    v37 = (0xFFFFFFFFFFFFFFFFLL >> -v3);
    if (!v3)
    {
      v37 = 0;
    }

    v50 = v37;
    goto LABEL_93;
  }

  llvm::APInt::initSlowCase(&v52, 0, 0);
  v36 = 1 << v17;
  v38 = v17 >> 6;
  if (v53 >= 0x41)
  {
    *(v52 + v38) |= v36;
  }

  else
  {
    v52 = (v52 | v36);
  }

  v51 = v3;
  llvm::APInt::initSlowCase(&v50, -1, 1);
  if (v51 <= 0x40)
  {
LABEL_93:
    v45 = &v50;
    goto LABEL_95;
  }

  v45 = (v50 + 8 * v38);
LABEL_95:
  *v45 = (*v45 & ~v36);
  v46 = v61;
  *(a3 + 8) = v61;
  if (v46 <= 0x40)
  {
    goto LABEL_85;
  }

LABEL_96:
  llvm::APInt::initSlowCase(a3, &v60);
  v47 = v59;
  *(a3 + 24) = v59;
  if (v47 > 0x40)
  {
    goto LABEL_86;
  }

LABEL_97:
  *(a3 + 16) = __p;
  v48 = v53;
  *(a3 + 40) = v53;
  if (v48 <= 0x40)
  {
LABEL_98:
    *(a3 + 32) = v52;
    v49 = v51;
    *(a3 + 56) = v51;
    if (v49 <= 0x40)
    {
      goto LABEL_99;
    }

    goto LABEL_88;
  }

LABEL_87:
  llvm::APInt::initSlowCase(a3 + 32, &v52);
  v44 = v51;
  *(a3 + 56) = v51;
  if (v44 <= 0x40)
  {
LABEL_99:
    *(a3 + 48) = v50;
    goto LABEL_100;
  }

LABEL_88:
  llvm::APInt::initSlowCase(a3 + 48, &v50);
  if (v51 >= 0x41 && v50)
  {
    operator delete[](v50);
  }

LABEL_100:
  if (v53 >= 0x41 && v52)
  {
    operator delete[](v52);
  }

  if (v55 >= 0x41 && v54)
  {
    operator delete[](v54);
  }

  if (v57 >= 0x41 && v56)
  {
    operator delete[](v56);
  }

  if (v59 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v61 >= 0x41)
  {
    if (v60)
    {
      operator delete[](v60);
    }
  }
}

void mlir::intrange::extUIRange(mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);
  llvm::APInt::zext(v6, v3, &v10);
  v7 = mlir::ConstantIntRanges::umax(this);
  llvm::APInt::zext(v7, v3, &__p);
  mlir::ConstantIntRanges::fromUnsigned(&v10, &__p, a3);
  if (v9 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

void mlir::intrange::extSIRange(mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = mlir::ConstantIntRanges::smin(this);
  llvm::APInt::sext(v6, v3, &v10);
  v7 = mlir::ConstantIntRanges::smax(this);
  llvm::APInt::sext(v7, v3, &__p);
  mlir::ConstantIntRanges::fromSigned(&v10, &__p, a3);
  if (v9 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[](v10);
    }
  }
}

uint64_t mlir::intrange::inferAdd@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = &unk_1F5B15978;
  v36 = a3;
  v37 = &v35;
  v32 = &unk_1F5B15A08;
  v33 = a3;
  v34 = &v32;
  v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);
  v8 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1 + 64, v7);
  v9 = mlir::ConstantIntRanges::umax(a1);
  v10 = mlir::ConstantIntRanges::umax((a1 + 64));
  computeBoundsBy(&v24, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v35, v6, v8, v9, v10, 0);
  v11 = mlir::ConstantIntRanges::smin(a1);
  v12 = mlir::ConstantIntRanges::smin((a1 + 64));
  v13 = mlir::ConstantIntRanges::smax(a1);
  v14 = mlir::ConstantIntRanges::smax((a1 + 64));
  computeBoundsBy(&v16, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v32, v11, v12, v13, v14, 1);
  mlir::ConstantIntRanges::intersection(&v24, &v16, a4);
  if (v23 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v21 >= 0x41 && v20)
  {
    operator delete[](v20);
  }

  if (v19 >= 0x41 && v18)
  {
    operator delete[](v18);
  }

  if (v17 >= 0x41 && v16)
  {
    operator delete[](v16);
  }

  if (v31 >= 0x41 && v30)
  {
    operator delete[](v30);
  }

  if (v29 >= 0x41 && v28)
  {
    operator delete[](v28);
  }

  if (v27 >= 0x41 && v26)
  {
    operator delete[](v26);
  }

  if (v25 >= 0x41 && v24)
  {
    operator delete[](v24);
  }

  if (v34 != &v32)
  {
    if (v34)
    {
      (*(*v34 + 5))();
    }

    result = v37;
    if (v37 != &v35)
    {
      goto LABEL_29;
    }

    return (*(*result + 32))(result);
  }

  (*(*v34 + 4))(v34);
  result = v37;
  if (v37 == &v35)
  {
    return (*(*result + 32))(result);
  }

LABEL_29:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void computeBoundsBy(uint64_t a1, void (*a2)(void **__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const llvm::APInt *a8)
{
  a2(&v18, a3, a4, a5);
  a2(&__p, a3, a6, a7);
  if (v20 == 1 && v17 == 1)
  {
    mlir::ConstantIntRanges::range(&v18, &__p, a8, a1);
    if (v17 != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    mlir::ConstantIntRanges::maxRange(*(a4 + 8), a1);
    if (v17 != 1)
    {
      goto LABEL_9;
    }
  }

  if (v16 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

LABEL_9:
  if (v20 == 1 && v19 >= 0x41)
  {
    if (v18)
    {
      operator delete[](v18);
    }
  }
}

uint64_t mlir::intrange::inferSub@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = &unk_1F5B15A88;
  v36 = a3;
  v37 = &v35;
  v32 = &unk_1F5B15B08;
  v33 = a3;
  v34 = &v32;
  v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);
  v7 = mlir::ConstantIntRanges::umax((a1 + 64));
  v8 = mlir::ConstantIntRanges::umax(a1);
  v10 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1 + 64, v9);
  computeBoundsBy(&v24, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v35, v6, v7, v8, v10, 0);
  v11 = mlir::ConstantIntRanges::smin(a1);
  v12 = mlir::ConstantIntRanges::smax((a1 + 64));
  v13 = mlir::ConstantIntRanges::smax(a1);
  v14 = mlir::ConstantIntRanges::smin((a1 + 64));
  computeBoundsBy(&v16, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v32, v11, v12, v13, v14, 1);
  mlir::ConstantIntRanges::intersection(&v24, &v16, a4);
  if (v23 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v21 >= 0x41 && v20)
  {
    operator delete[](v20);
  }

  if (v19 >= 0x41 && v18)
  {
    operator delete[](v18);
  }

  if (v17 >= 0x41 && v16)
  {
    operator delete[](v16);
  }

  if (v31 >= 0x41 && v30)
  {
    operator delete[](v30);
  }

  if (v29 >= 0x41 && v28)
  {
    operator delete[](v28);
  }

  if (v27 >= 0x41 && v26)
  {
    operator delete[](v26);
  }

  if (v25 >= 0x41 && v24)
  {
    operator delete[](v24);
  }

  if (v34 != &v32)
  {
    if (v34)
    {
      (*(*v34 + 5))();
    }

    result = v37;
    if (v37 != &v35)
    {
      goto LABEL_29;
    }

    return (*(*result + 32))(result);
  }

  (*(*v34 + 4))(v34);
  result = v37;
  if (v37 == &v35)
  {
    return (*(*result + 32))(result);
  }

LABEL_29:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t mlir::intrange::inferMul@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v43 = &unk_1F5B15B88;
  v44 = a3;
  v45 = &v43;
  v40 = &unk_1F5B15C08;
  v41 = a3;
  v42 = &v40;
  v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);
  v29 = *(v6 + 8);
  if (v29 > 0x40)
  {
    llvm::APInt::initSlowCase(&v28, v6);
  }

  else
  {
    v28 = *v6;
  }

  v7 = mlir::ConstantIntRanges::umax(a1);
  v8 = v7;
  v31 = *(v7 + 8);
  if (v31 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, v7);
  }

  else
  {
    __p = *v7;
  }

  v9 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1 + 64, v8);
  v37 = *(v9 + 8);
  if (v37 > 0x40)
  {
    llvm::APInt::initSlowCase(&v36, v9);
  }

  else
  {
    v36 = *v9;
  }

  v10 = mlir::ConstantIntRanges::umax((a1 + 64));
  v39 = *(v10 + 8);
  if (v39 > 0x40)
  {
    llvm::APInt::initSlowCase(&v38, v10);
  }

  else
  {
    v38 = *v10;
  }

  minMaxBy(&v16, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v43, &v28, 2, &v36, 2, 0);
  if (v39 >= 0x41 && v38)
  {
    operator delete[](v38);
  }

  if (v37 >= 0x41 && v36)
  {
    operator delete[](v36);
  }

  if (v31 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v29 >= 0x41 && v28)
  {
    operator delete[](v28);
  }

  v11 = mlir::ConstantIntRanges::smin(a1);
  v37 = *(v11 + 8);
  if (v37 > 0x40)
  {
    llvm::APInt::initSlowCase(&v36, v11);
  }

  else
  {
    v36 = *v11;
  }

  v12 = mlir::ConstantIntRanges::smax(a1);
  v39 = *(v12 + 8);
  if (v39 > 0x40)
  {
    llvm::APInt::initSlowCase(&v38, v12);
  }

  else
  {
    v38 = *v12;
  }

  v13 = mlir::ConstantIntRanges::smin((a1 + 64));
  v25 = *(v13 + 8);
  if (v25 > 0x40)
  {
    llvm::APInt::initSlowCase(&v24, v13);
  }

  else
  {
    v24 = *v13;
  }

  v14 = mlir::ConstantIntRanges::smax((a1 + 64));
  v27 = *(v14 + 8);
  if (v27 > 0x40)
  {
    llvm::APInt::initSlowCase(&v26, v14);
  }

  else
  {
    v26 = *v14;
  }

  minMaxBy(&v28, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v40, &v36, 2, &v24, 2, 1);
  if (v27 >= 0x41 && v26)
  {
    operator delete[](v26);
  }

  if (v25 >= 0x41 && v24)
  {
    operator delete[](v24);
  }

  if (v39 >= 0x41 && v38)
  {
    operator delete[](v38);
  }

  if (v37 >= 0x41 && v36)
  {
    operator delete[](v36);
  }

  mlir::ConstantIntRanges::intersection(&v16, &v28, a4);
  if (v35 >= 0x41 && v34)
  {
    operator delete[](v34);
  }

  if (v33 >= 0x41 && v32)
  {
    operator delete[](v32);
  }

  if (v31 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v29 >= 0x41 && v28)
  {
    operator delete[](v28);
  }

  if (v23 >= 0x41 && v22)
  {
    operator delete[](v22);
  }

  if (v21 >= 0x41 && v20)
  {
    operator delete[](v20);
  }

  if (v19 >= 0x41 && v18)
  {
    operator delete[](v18);
  }

  if (v17 >= 0x41 && v16)
  {
    operator delete[](v16);
  }

  if (v42 != &v40)
  {
    if (v42)
    {
      (*(*v42 + 5))(v42);
    }

    result = v45;
    if (v45 != &v43)
    {
      goto LABEL_77;
    }

    return (*(*result + 32))(result);
  }

  (*(*v42 + 4))(v42);
  result = v45;
  if (v45 == &v43)
  {
    return (*(*result + 32))(result);
  }

LABEL_77:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void minMaxBy(uint64_t a1, void (*a2)(void **__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, llvm::APInt *a8)
{
  v12 = a4;
  v16 = *(a4 + 8);
  v40 = *(a4 + 8);
  if (a8)
  {
    if (v16 > 0x40)
    {
      llvm::APInt::initSlowCase(&v39, -1, 1);
      LODWORD(v17) = v16 - 1;
      if (v40 > 0x40)
      {
        v19 = (v39 + 8 * (v17 >> 6));
LABEL_16:
        *v19 = (*v19 & ~(1 << v17));
        v38 = v16;
        if (v16 > 0x40)
        {
          llvm::APInt::initSlowCase(&v37, 0, 0);
          v20 = v16 - 1;
          if (v38 > 0x40)
          {
            v21 = (v37 + 8 * (v20 >> 6));
LABEL_21:
            *v21 = ((1 << v20) | *v21);
            if (!a5)
            {
              goto LABEL_55;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v37 = 0;
          LOBYTE(v20) = v16 - 1;
        }

        v21 = &v37;
        goto LABEL_21;
      }
    }

    else
    {
      v17 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
      if (!v16)
      {
        v17 = 0;
      }

      v39 = v17;
      LOBYTE(v17) = v16 - 1;
    }

    v19 = &v39;
    goto LABEL_16;
  }

  if (v16 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v39, -1, 1);
    v38 = v16;
    llvm::APInt::initSlowCase(&v37, 0, 0);
    if (!a5)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v18 = (0xFFFFFFFFFFFFFFFFLL >> -v16);
    if (!v16)
    {
      v18 = 0;
    }

    v39 = v18;
    v38 = v16;
    v37 = 0;
    if (!a5)
    {
      goto LABEL_55;
    }
  }

LABEL_22:
  if (a7)
  {
    v22 = 16 * a7;
    v29 = v12 + 16 * a5;
    v30 = 16 * a7;
    v31 = a6;
    do
    {
      v23 = a6;
      do
      {
        a2(&v34, a3, v12, v23);
        v24 = v36;
        if ((v36 & 1) == 0)
        {
          mlir::ConstantIntRanges::maxRange(v16, a1);
          goto LABEL_48;
        }

        v33 = v35;
        __p = v34;
        v35 = 0;
        p_p = &__p;
        if (a8)
        {
          if ((llvm::APInt::compareSigned(&__p, &v39) & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

LABEL_31:
          p_p = &v39;
          goto LABEL_32;
        }

        if ((llvm::APInt::compare(&__p, &v39) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_32:
        if (v40 > 0x40 || (v26 = *(p_p + 2), v26 > 0x40))
        {
          llvm::APInt::assignSlowCase(&v39, p_p);
          v27 = &__p;
          if (!a8)
          {
LABEL_35:
            if (llvm::APInt::compare(&__p, &v37) > 0)
            {
              goto LABEL_39;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v39 = *p_p;
          v40 = v26;
          v27 = &__p;
          if (!a8)
          {
            goto LABEL_35;
          }
        }

        if (llvm::APInt::compareSigned(&__p, &v37) > 0)
        {
LABEL_39:
          if (v38 > 0x40)
          {
            goto LABEL_45;
          }

          goto LABEL_42;
        }

LABEL_41:
        v27 = &v37;
        if (v38 > 0x40)
        {
          goto LABEL_45;
        }

LABEL_42:
        v28 = *(v27 + 2);
        if (v28 > 0x40)
        {
LABEL_45:
          llvm::APInt::assignSlowCase(&v37, v27);
          if (v33 < 0x41)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v37 = *v27;
        v38 = v28;
        if (v33 < 0x41)
        {
          goto LABEL_48;
        }

LABEL_46:
        if (__p)
        {
          operator delete[](__p);
        }

LABEL_48:
        if (v36 == 1 && v35 >= 0x41 && v34)
        {
          operator delete[](v34);
        }

        if ((v24 & 1) == 0)
        {
          goto LABEL_56;
        }

        v23 += 16;
        v22 -= 16;
      }

      while (v22);
      v12 += 16;
      v22 = v30;
      a6 = v31;
    }

    while (v12 != v29);
  }

LABEL_55:
  mlir::ConstantIntRanges::range(&v39, &v37, a8, a1);
LABEL_56:
  if (v38 >= 0x41 && v37)
  {
    operator delete[](v37);
  }

  if (v40 >= 0x41)
  {
    if (v39)
    {
      operator delete[](v39);
    }
  }
}

void inferDivURange(uint64_t a1, mlir::ConstantIntRanges *a2, mlir::ConstantIntRanges *a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v15[0] = a4;
  v15[1] = a5;
  v8 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, a2);
  v9 = mlir::ConstantIntRanges::umax(a2);
  v11 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a3, v10);
  v12 = mlir::ConstantIntRanges::umax(a3);
  v13 = *(v11 + 8);
  if (v13 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(v11) != v13)
    {
LABEL_3:
      v14 = v15;
      v21 = *(v8 + 8);
      if (v21 > 0x40)
      {
        llvm::APInt::initSlowCase(&v20, v8);
        v23 = *(v9 + 8);
        if (v23 > 0x40)
        {
LABEL_5:
          llvm::APInt::initSlowCase(&v22, v9);
          v17 = *(v11 + 8);
          if (v17 > 0x40)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v20 = *v8;
        v23 = *(v9 + 8);
        if (v23 > 0x40)
        {
          goto LABEL_5;
        }
      }

      v22 = *v9;
      v17 = *(v11 + 8);
      if (v17 > 0x40)
      {
LABEL_6:
        llvm::APInt::initSlowCase(&v16, v11);
        v19 = *(v12 + 8);
        if (v19 > 0x40)
        {
LABEL_7:
          llvm::APInt::initSlowCase(&__p, v12);
          goto LABEL_16;
        }

LABEL_15:
        __p = *v12;
LABEL_16:
        minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v14, &v20, 2, &v16, 2, 0);
        if (v19 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (v17 >= 0x41 && v16)
        {
          operator delete[](v16);
        }

        if (v23 >= 0x41 && v22)
        {
          operator delete[](v22);
        }

        if (v21 >= 0x41)
        {
          if (v20)
          {
            operator delete[](v20);
          }
        }

        return;
      }

LABEL_14:
      v16 = *v11;
      v19 = *(v12 + 8);
      if (v19 > 0x40)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if (*v11)
  {
    goto LABEL_3;
  }

  mlir::ConstantIntRanges::maxRange(v13, a1);
}

void inferDivSRange(uint64_t a1, mlir::ConstantIntRanges *this, mlir::ConstantIntRanges *a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v18[0] = a4;
  v18[1] = a5;
  v8 = mlir::ConstantIntRanges::smin(this);
  v9 = mlir::ConstantIntRanges::smax(this);
  v10 = mlir::ConstantIntRanges::smin(a3);
  v11 = mlir::ConstantIntRanges::smax(a3);
  v12 = v10[2];
  v13 = v12 - 1;
  if (v12 > 0x40)
  {
    if (((*(*v10 + 8 * (v13 >> 6)) >> v13) & 1) == 0 && llvm::APInt::countLeadingZerosSlowCase(v10) != v12)
    {
      goto LABEL_11;
    }
  }

  else if (((*v10 >> v13) & 1) == 0 && *v10)
  {
    goto LABEL_11;
  }

  v14 = *(v11 + 8);
  v15 = v14 - 1;
  if (v14 >= 0x41)
  {
    v16 = (*v11 + 8 * ((v14 - 1) >> 6));
  }

  else
  {
    v16 = v11;
  }

  if ((*v16 >> v15))
  {
LABEL_11:
    v17 = v18;
    v24 = *(v8 + 8);
    if (v24 > 0x40)
    {
      llvm::APInt::initSlowCase(&v23, v8);
      v26 = *(v9 + 8);
      if (v26 > 0x40)
      {
LABEL_13:
        llvm::APInt::initSlowCase(&v25, v9);
        v20 = v10[2];
        if (v20 > 0x40)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v23 = *v8;
      v26 = *(v9 + 8);
      if (v26 > 0x40)
      {
        goto LABEL_13;
      }
    }

    v25 = *v9;
    v20 = v10[2];
    if (v20 > 0x40)
    {
LABEL_14:
      llvm::APInt::initSlowCase(&v19, v10);
      v22 = *(v11 + 8);
      if (v22 > 0x40)
      {
LABEL_15:
        llvm::APInt::initSlowCase(&__p, v11);
        goto LABEL_20;
      }

LABEL_19:
      __p = *v11;
LABEL_20:
      minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v17, &v23, 2, &v19, 2, 1);
      if (v22 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v20 >= 0x41 && v19)
      {
        operator delete[](v19);
      }

      if (v26 >= 0x41 && v25)
      {
        operator delete[](v25);
      }

      if (v24 >= 0x41)
      {
        if (v23)
        {
          operator delete[](v23);
        }
      }

      return;
    }

LABEL_18:
    v19 = *v10;
    v22 = *(v11 + 8);
    if (v22 > 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  mlir::ConstantIntRanges::maxRange(v12, a1);
}

void mlir::intrange::inferRemS(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = mlir::ConstantIntRanges::smin(a1);
  v5 = mlir::ConstantIntRanges::smax(a1);
  v6 = mlir::ConstantIntRanges::smin((a1 + 64));
  v7 = mlir::ConstantIntRanges::smax((a1 + 64));
  v8 = *(v7 + 8);
  v64 = v8;
  if (v8 < 0x41)
  {
    v63 = 1 << (v8 - 1);
    v62 = v8;
    v9 = (0xFFFFFFFFFFFFFFFFLL >> ((v8 - 1) & 0x3F ^ 0x3F));
    if (!v8)
    {
      v9 = 0;
    }

    v61 = v9;
    v10 = v8 - 1;
    goto LABEL_9;
  }

  llvm::APInt::initSlowCase(&v63, 0, 0);
  v10 = v8 - 1;
  v11 = (v8 - 1) >> 6;
  if (v64 >= 0x41)
  {
    *(v63 + 8 * v11) |= 1 << v10;
  }

  else
  {
    v63 |= 1 << v10;
  }

  v62 = v8;
  llvm::APInt::initSlowCase(&v61, -1, 1);
  if (v62 <= 0x40)
  {
LABEL_9:
    v12 = &v61;
    goto LABEL_11;
  }

  v12 = &v61[8 * v11];
LABEL_11:
  *v12 &= ~(1 << v10);
  v13 = *(v6 + 2);
  v14 = v13 - 1;
  if (v13 > 0x40)
  {
    v16 = *v6;
    if (((*(*v6 + 8 * (v14 >> 6)) >> v14) & 1) == 0 && llvm::APInt::countLeadingZerosSlowCase(v6) != v13)
    {
      goto LABEL_22;
    }

    v15 = v16;
  }

  else
  {
    v15 = *v6;
    if (((*v6 >> v14) & 1) == 0 && v15)
    {
      goto LABEL_26;
    }

    v16 = *v6;
  }

  v17 = *(v7 + 8);
  v18 = v17 - 1;
  if (v17 >= 0x41)
  {
    v19 = (*v7 + 8 * ((v17 - 1) >> 6));
  }

  else
  {
    v19 = v7;
  }

  if (((*v19 >> v18) & 1) == 0)
  {
    goto LABEL_114;
  }

  if (v13 <= 0x40)
  {
LABEL_26:
    if (((v15 >> v14) & 1) == 0 && v15)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

LABEL_22:
  if (((*(v16 + 8 * (v14 >> 6)) >> v14) & 1) == 0 && llvm::APInt::countLeadingZerosSlowCase(v6) != v13)
  {
LABEL_28:
    v60 = *(v7 + 8);
    if (v60 > 0x40)
    {
      llvm::APInt::initSlowCase(&v59, v7);
    }

    else
    {
      v59 = *v7;
    }

    goto LABEL_32;
  }

LABEL_30:
  llvm::APInt::abs(v6, &v59);
LABEL_32:
  v20 = *(v4 + 8);
  v21 = v20 - 1;
  if (v20 >= 0x41)
  {
    v22 = (*v4 + 8 * ((v20 - 1) >> 6));
  }

  else
  {
    v22 = v4;
  }

  v23 = *v22;
  v24 = *(v5 + 2);
  v25 = v24 - 1;
  if (v24 <= 0x40)
  {
    if (((*v5 >> v25) & 1) == 0)
    {
      v26 = *v5 == 0;
      goto LABEL_42;
    }

LABEL_39:
    v27 = 0;
    v28 = 1 << v21;
    v29 = v60;
    v58 = v60;
    if (v60 > 0x40)
    {
      goto LABEL_46;
    }

LABEL_40:
    v57 = 0;
    v54 = v29;
LABEL_47:
    v53 = v59;
    goto LABEL_49;
  }

  if ((*(*v5 + 8 * (v25 >> 6)) >> v25))
  {
    goto LABEL_39;
  }

  v26 = llvm::APInt::countLeadingZerosSlowCase(v5) == v24;
LABEL_42:
  v30 = v26;
  v27 = v30 ^ 1;
  v28 = 1 << v21;
  v29 = v60;
  v58 = v60;
  if (v60 <= 0x40)
  {
    goto LABEL_40;
  }

LABEL_46:
  llvm::APInt::initSlowCase(&v57, 0, 0);
  v54 = v60;
  if (v60 <= 0x40)
  {
    goto LABEL_47;
  }

  llvm::APInt::initSlowCase(&v53, &v59);
LABEL_49:
  v31 = v28 & v23;
  llvm::APInt::operator-=(&v53, 1uLL);
  v32 = v54;
  v56 = v54;
  v33 = v53;
  v55 = v53;
  v54 = 0;
  v50 = v56;
  if (v56 < 0x41)
  {
LABEL_52:
    if (v32)
    {
      v34 = 0xFFFFFFFFFFFFFFFFLL >> -v32;
    }

    else
    {
      v34 = 0;
    }

    v49 = (v34 & ~v33);
    goto LABEL_57;
  }

  llvm::APInt::initSlowCase(&v49, &v55);
  v32 = v50;
  if (v50 <= 0x40)
  {
    v33 = v49;
    goto LABEL_52;
  }

  llvm::APInt::flipAllBitsSlowCase(&v49);
LABEL_57:
  llvm::APInt::operator++(&v49);
  v35 = v50;
  v52 = v50;
  v51 = v49;
  v50 = 0;
  if (v31)
  {
    v36 = &v51;
  }

  else
  {
    v36 = &v57;
  }

  if (v64 > 0x40)
  {
    goto LABEL_65;
  }

  if (!v31)
  {
    v35 = v58;
  }

  if (v35 > 0x40)
  {
LABEL_65:
    llvm::APInt::assignSlowCase(&v63, v36);
  }

  else
  {
    v63 = *v36;
    v64 = v35;
  }

  v37 = &v57;
  if (v27)
  {
    v38 = &v55;
  }

  else
  {
    v38 = &v57;
  }

  if (v62 <= 0x40)
  {
    if (v27)
    {
      v37 = &v55;
    }

    v39 = *(v37 + 2);
    if (v39 <= 0x40)
    {
      v61 = *v38;
      v62 = v39;
      if (*(v6 + 2) > 0x40u)
      {
        goto LABEL_74;
      }

LABEL_77:
      if (*v6 != *v7)
      {
        goto LABEL_102;
      }

LABEL_78:
      v46 = *(v5 + 2);
      if (v46 > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, v5);
      }

      else
      {
        __p = *v5;
      }

      llvm::APInt::operator-=(&__p, v4);
      v40 = v46;
      v48 = v46;
      v41 = __p;
      v47 = __p;
      v46 = 0;
      v42 = llvm::APInt::compare(&v47, &v59);
      if (v40 >= 0x41)
      {
        if (v41)
        {
          operator delete[](v41);
          if (v46 >= 0x41)
          {
            if (__p)
            {
              operator delete[](__p);
            }
          }
        }
      }

      if (v42 < 0)
      {
        llvm::APInt::srem(v4, &v59, &v47);
        llvm::APInt::srem(v5, &v59, &v43);
        if (llvm::APInt::compareSigned(&v47, &v43) <= 0)
        {
          if (v64 > 0x40 || v48 > 0x40)
          {
            llvm::APInt::assignSlowCase(&v63, &v47);
          }

          else
          {
            v63 = v47;
            v64 = v48;
          }

          if (v62 > 0x40 || v44 > 0x40)
          {
            llvm::APInt::assignSlowCase(&v61, &v43);
          }

          else
          {
            v61 = v43;
            v62 = v44;
          }
        }

        if (v44 >= 0x41 && v43)
        {
          operator delete[](v43);
        }

        if (v48 >= 0x41 && v47)
        {
          operator delete[](v47);
        }
      }

      goto LABEL_102;
    }
  }

  llvm::APInt::assignSlowCase(&v61, v38);
  if (*(v6 + 2) <= 0x40u)
  {
    goto LABEL_77;
  }

LABEL_74:
  if (llvm::APInt::equalSlowCase(v6, v7))
  {
    goto LABEL_78;
  }

LABEL_102:
  if (v52 >= 0x41 && v51)
  {
    operator delete[](v51);
  }

  if (v56 >= 0x41 && v55)
  {
    operator delete[](v55);
  }

  if (v58 >= 0x41 && v57)
  {
    operator delete[](v57);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

LABEL_114:
  mlir::ConstantIntRanges::fromSigned(&v63, &v61, a2);
  if (v62 >= 0x41 && v61)
  {
    operator delete[](v61);
  }

  if (v64 >= 0x41)
  {
    if (v63)
    {
      operator delete[](v63);
    }
  }
}

uint64_t **llvm::APInt::abs@<X0>(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  v4 = v3 - 1;
  if (v3 <= 0x40)
  {
    v5 = *this;
    if (((*this >> v4) & 1) == 0)
    {
      *(a2 + 8) = v3;
      *a2 = v5;
      return this;
    }

    v8 = *(this + 2);
    v7 = v5;
    goto LABEL_6;
  }

  if (((*this)[v4 >> 6] >> v4))
  {
    v8 = *(this + 2);
    llvm::APInt::initSlowCase(&v7, this);
    v3 = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::flipAllBitsSlowCase(&v7);
LABEL_15:
      this = llvm::APInt::operator++(&v7);
      *(a2 + 8) = v8;
      *a2 = v7;
      return this;
    }

LABEL_6:
    if (v3)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 & ~v7;
    goto LABEL_15;
  }

  *(a2 + 8) = v3;

  return llvm::APInt::initSlowCase(a2, this);
}

void mlir::intrange::inferRemU(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1 + 64, a2);
  v6 = mlir::ConstantIntRanges::umax((a1 + 64));
  v7 = *(v5 + 2);
  v30 = v7;
  if (v7 <= 0x40)
  {
    v29 = 0;
    v28 = v7;
    v8 = (0xFFFFFFFFFFFFFFFFLL >> -v7);
    if (!v7)
    {
      v8 = 0;
    }

    __p = v8;
LABEL_6:
    if (!*v5)
    {
      goto LABEL_46;
    }

    goto LABEL_9;
  }

  llvm::APInt::initSlowCase(&v29, 0, 0);
  v28 = v7;
  llvm::APInt::initSlowCase(&__p, -1, 1);
  v9 = *(v5 + 2);
  if (v9 <= 0x40)
  {
    goto LABEL_6;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(v5) == v9)
  {
    goto LABEL_46;
  }

LABEL_9:
  v26 = *(v6 + 8);
  if (v26 > 0x40)
  {
    llvm::APInt::initSlowCase(&v25, v6);
  }

  else
  {
    v25 = *v6;
  }

  llvm::APInt::operator-=(&v25, 1uLL);
  v11 = v26;
  v12 = v25;
  v26 = 0;
  if (v28 <= 0x40 || !__p)
  {
    __p = v25;
    v28 = v11;
    if (*(v5 + 2) <= 0x40u)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (!llvm::APInt::equalSlowCase(v5, v6))
    {
      goto LABEL_46;
    }

    goto LABEL_22;
  }

  operator delete[](__p);
  __p = v12;
  v28 = v11;
  if (v26 >= 0x41 && v25)
  {
    operator delete[](v25);
  }

  if (*(v5 + 2) > 0x40u)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (*v5 != *v6)
  {
    goto LABEL_46;
  }

LABEL_22:
  v13 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, v10);
  v14 = mlir::ConstantIntRanges::umax(a1);
  v15 = v14;
  v22 = *(v14 + 8);
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase(&v21, v14);
  }

  else
  {
    v21 = *v14;
  }

  llvm::APInt::operator-=(&v21, v13);
  v16 = v22;
  v24 = v22;
  v17 = v21;
  v23 = v21;
  v22 = 0;
  v18 = llvm::APInt::compare(&v23, v6);
  if (v16 >= 0x41)
  {
    if (v17)
    {
      operator delete[](v17);
      if (v22 >= 0x41)
      {
        if (v21)
        {
          operator delete[](v21);
        }
      }
    }
  }

  if (v18 < 0)
  {
    llvm::APInt::urem(v13, v6, &v23);
    llvm::APInt::urem(v15, v6, &v19);
    if (llvm::APInt::compare(&v23, &v19) <= 0)
    {
      if (v30 > 0x40 || v24 > 0x40)
      {
        llvm::APInt::assignSlowCase(&v29, &v23);
      }

      else
      {
        v29 = v23;
        v30 = v24;
      }

      if (v28 > 0x40 || v20 > 0x40)
      {
        llvm::APInt::assignSlowCase(&__p, &v19);
      }

      else
      {
        __p = v19;
        v28 = v20;
      }
    }

    if (v20 >= 0x41 && v19)
    {
      operator delete[](v19);
    }

    if (v24 >= 0x41 && v23)
    {
      operator delete[](v23);
    }
  }

LABEL_46:
  mlir::ConstantIntRanges::fromUnsigned(&v29, &__p, a3);
  if (v28 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v30 >= 0x41)
  {
    if (v29)
    {
      operator delete[](v29);
    }
  }
}

void mlir::intrange::inferMaxS(mlir::ConstantIntRanges *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 64);
  v5 = mlir::ConstantIntRanges::smin(a1);
  v6 = mlir::ConstantIntRanges::smin(v4);
  if (llvm::APInt::compareSigned(v5, v6) <= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = mlir::ConstantIntRanges::smin(v7);
  v9 = mlir::ConstantIntRanges::smax(a1);
  v10 = mlir::ConstantIntRanges::smax(v4);
  if (llvm::APInt::compareSigned(v9, v10) <= 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = a1;
  }

  v12 = mlir::ConstantIntRanges::smax(v11);

  mlir::ConstantIntRanges::fromSigned(v8, v12, a2);
}

void mlir::intrange::inferMaxU(mlir::ConstantIntRanges *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a1 + 64);
  v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);
  v8 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v5, v7);
  if (llvm::APInt::compare(v6, v8) <= 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = a1;
  }

  v11 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v10, v9);
  v12 = mlir::ConstantIntRanges::umax(a1);
  v13 = mlir::ConstantIntRanges::umax(v5);
  if (llvm::APInt::compare(v12, v13) <= 0)
  {
    v14 = v5;
  }

  else
  {
    v14 = a1;
  }

  v15 = mlir::ConstantIntRanges::umax(v14);

  mlir::ConstantIntRanges::fromUnsigned(v11, v15, a3);
}

void mlir::intrange::inferMinS(mlir::ConstantIntRanges *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 64);
  v5 = mlir::ConstantIntRanges::smin(a1);
  v6 = mlir::ConstantIntRanges::smin(v4);
  if (llvm::APInt::compareSigned(v5, v6) >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = mlir::ConstantIntRanges::smin(v7);
  v9 = mlir::ConstantIntRanges::smax(a1);
  v10 = mlir::ConstantIntRanges::smax(v4);
  if (llvm::APInt::compareSigned(v9, v10) >= 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = a1;
  }

  v12 = mlir::ConstantIntRanges::smax(v11);

  mlir::ConstantIntRanges::fromSigned(v8, v12, a2);
}

void mlir::intrange::inferMinU(mlir::ConstantIntRanges *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a1 + 64);
  v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);
  v8 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v5, v7);
  if (llvm::APInt::compare(v6, v8) >= 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = a1;
  }

  v11 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v10, v9);
  v12 = mlir::ConstantIntRanges::umax(a1);
  v13 = mlir::ConstantIntRanges::umax(v5);
  if (llvm::APInt::compare(v12, v13) >= 0)
  {
    v14 = v5;
  }

  else
  {
    v14 = a1;
  }

  v15 = mlir::ConstantIntRanges::umax(v14);

  mlir::ConstantIntRanges::fromUnsigned(v11, v15, a3);
}

void mlir::intrange::inferAnd(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  widenBitwiseBounds(&v9, a1);
  widenBitwiseBounds(&v5, (a1 + 64));
  v18 = v10;
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v17, &v9);
    v20 = v12;
    if (v12 > 0x40)
    {
LABEL_3:
      llvm::APInt::initSlowCase(&v19, &v11);
      v14 = v6;
      if (v6 > 0x40)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = v5;
      v16 = v8;
      if (v8 > 0x40)
      {
        goto LABEL_5;
      }

LABEL_9:
      __p = v7;
      goto LABEL_10;
    }
  }

  else
  {
    v17 = v9;
    v20 = v12;
    if (v12 > 0x40)
    {
      goto LABEL_3;
    }
  }

  v19 = v11;
  v14 = v6;
  if (v6 <= 0x40)
  {
    goto LABEL_8;
  }

LABEL_4:
  llvm::APInt::initSlowCase(&v13, &v5);
  v16 = v8;
  if (v8 <= 0x40)
  {
    goto LABEL_9;
  }

LABEL_5:
  llvm::APInt::initSlowCase(&__p, &v7);
LABEL_10:
  minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v4, &v17, 2, &v13, 2, 0);
  if (v16 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v20 >= 0x41 && v19)
  {
    operator delete[](v19);
  }

  if (v18 >= 0x41 && v17)
  {
    operator delete[](v17);
  }

  if (v8 >= 0x41 && v7)
  {
    operator delete[](v7);
  }

  if (v6 >= 0x41 && v5)
  {
    operator delete[](v5);
  }

  if (v12 >= 0x41 && v11)
  {
    operator delete[](v11);
  }

  if (v10 >= 0x41)
  {
    if (v9)
    {
      operator delete[](v9);
    }
  }
}

void widenBitwiseBounds(const mlir::ConstantIntRanges *a1, mlir::ConstantIntRanges *a2)
{
  v4 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, a2);
  v20 = *(v4 + 8);
  if (v20 > 0x40)
  {
    llvm::APInt::initSlowCase(&v19, v4);
  }

  else
  {
    v19 = *v4;
  }

  v5 = mlir::ConstantIntRanges::umax(a2);
  v18 = *(v5 + 8);
  if (v18 <= 0x40)
  {
    v17 = *v5;
    v6 = v20;
    v14 = v20;
    if (v20 >= 0x41)
    {
      goto LABEL_6;
    }

LABEL_13:
    p_p = &v19;
    v8 = v6;
    goto LABEL_14;
  }

  llvm::APInt::initSlowCase(&v17, v5);
  v6 = v20;
  v14 = v20;
  if (v20 < 0x41)
  {
    goto LABEL_13;
  }

LABEL_6:
  p_p = &__p;
  llvm::APInt::initSlowCase(&__p, &v19);
  v8 = v14;
  if (v14 <= 0x40)
  {
LABEL_14:
    v9 = (*p_p ^ v17);
    __p = v9;
    v14 = 0;
    goto LABEL_15;
  }

  llvm::APInt::xorAssignSlowCase(&__p, &v17);
  v8 = v14;
  v9 = __p;
  v16 = v14;
  v15 = __p;
  v14 = 0;
  if (v16 <= 0x40)
  {
LABEL_15:
    v10 = v8 + __clz(v9) - 64;
    goto LABEL_16;
  }

  v10 = llvm::APInt::countLeadingZerosSlowCase(&v15);
  if (v9)
  {
    operator delete[](v9);
    if (v14 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }

LABEL_16:
  llvm::APInt::clearLowBits(&v19, v6 - v10);
  v11 = v6 - v10;
  if (v6 != v10)
  {
    if (v11 > 0x40)
    {
      llvm::APInt::setBitsSlowCase(&v17, 0, v11);
    }

    else
    {
      v12 = 0xFFFFFFFFFFFFFFFFLL >> (v10 - v6);
      if (v18 > 0x40)
      {
        *v17 |= v12;
      }

      else
      {
        v17 |= v12;
      }
    }
  }

  *(a1 + 2) = v20;
  *a1 = v19;
  *(a1 + 6) = v18;
  *(a1 + 2) = v17;
}