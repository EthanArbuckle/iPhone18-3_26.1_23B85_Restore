uint64_t mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,int>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, int *a9)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,int>(v26, v25, v24);
  }

  mlir::OperationState::OperationState(v26, a2, v18);
  mlir::mps::DepthwiseConv3DOp::build(a1, v26, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  v20 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v21;
}

void *mlir::mps::anonymous namespace::CanonicalizePadToPoolOp<mlir::mps::PoolAvgOp>::~CanonicalizePadToPoolOp(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizePadToPoolOp<mlir::mps::PoolAvgOp>::~CanonicalizePadToPoolOp(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizePadToPoolOp<mlir::mps::PoolAvgOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v58 = a2;
  if (mlir::mps::Conv3DOp::getPaddingStyle(&v58) == 4 || mlir::mps::Conv3DOp::getPaddingStyle(&v58) == 2)
  {
    v4 = "failed: pooling op already specifies TF_SAME or ONNX_SAME_LOWER padding";
    goto LABEL_4;
  }

  if (mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v58) && !mlir::mps::GRUOp::getResetAfter(&v58))
  {
    v4 = "failed: pooling op ceil_mode && !include_zero_pad";
LABEL_4:
    __src = v4;
    v67[8] = 259;
    v5 = v58;
    p_src = &__src;
    v6 = *(a3 + 16);
    if (v6)
    {
      if (mlir::RewriterBase::Listener::classof(v6))
      {
        (*(*v6 + 88))(v6, *(v5 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolAvgOp &>(mlir::mps::PoolAvgOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &p_src);
      }
    }

    return 0;
  }

  __src = *(*(v58 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
    {
      v8 = DefiningOp;
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

  if (v68 != 1)
  {
    return 0;
  }

  p_src = v64;
  v63 = 0x600000000;
  v9 = v66;
  if (!v66)
  {
    goto LABEL_37;
  }

  if (v66 < 7)
  {
    v11 = v64;
    v10 = v66;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, v64, v66, 8);
    v10 = v66;
    if (!v66)
    {
      goto LABEL_24;
    }

    v11 = p_src;
  }

  memcpy(v11, __src, 8 * v10);
LABEL_24:
  LODWORD(v63) = v9;
  if (v9 >= 9)
  {
    v13 = 0;
    v14 = 8 * v9;
    v15 = p_src + 8 * v9;
    do
    {
      if (v13 <= 7 && *(p_src + v13))
      {
        v59 = "failed: pooling can only pad 4 dimensions";
        v61[8] = 259;
        v16 = v58;
        v69[0] = &v59;
        v17 = *(a3 + 16);
        if (v17 && mlir::RewriterBase::Listener::classof(v17))
        {
          (*(*v17 + 88))(v17, *(v16 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolAvgOp &>(mlir::mps::PoolAvgOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v69);
        }

        result = 0;
        goto LABEL_69;
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
    v59 = v61;
    v60 = 0x600000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, 8uLL, 8);
    v18 = v59 + 8 * v60;
    v19 = *(v15 - 4);
    v20 = *(v15 - 3);
    v21 = *(v15 - 1);
    v18[2] = *(v15 - 2);
    v18[3] = v21;
    *v18 = v19;
    v18[1] = v20;
    LODWORD(v60) = v60 + 8;
    llvm::SmallVectorImpl<unsigned long long>::operator=(&p_src, &v59);
    if (v59 != v61)
    {
      free(v59);
    }

    v9 = v63;
  }

  if (v9 <= 7)
  {
LABEL_37:
    llvm::SmallVectorImpl<unsigned long long>::insert(&p_src, p_src, (8 - v9), 0);
  }

  if (!mlir::mps::Conv3DOp::getPaddingStyle(&v58))
  {
    v59 = v61;
    v60 = 0x600000000;
    Offsets = mlir::mps::StencilOp::getOffsets(&v58);
    if ((v23 & 1) == 0)
    {
      v48 = std::__throw_bad_optional_access[abi:nn200100]();
      return llvm::SmallVectorImpl<unsigned long long>::insert(v48, v49, v50, v51);
    }

    if (Offsets)
    {
      v9 = Offsets;
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
      Offsets = v9;
    }

    else
    {
      v24 = 0;
    }

    v25 = 1;
    mlir::getIntValues<unsigned long long>(Offsets, v24, &v59, 1);
    v26 = v59;
    v27 = v60;
    if (!v60)
    {
LABEL_62:
      if (v26 != v61)
      {
        free(v26);
      }

      result = v9;
      if (!v25)
      {
        goto LABEL_69;
      }

      goto LABEL_65;
    }

    v28 = 0;
    while (!*(v59 + v28))
    {
      v28 += 8;
      if (8 * v60 == v28)
      {
        goto LABEL_50;
      }
    }

    if (!mlir::mps::GRUOp::getResetAfter(&v58))
    {
      v69[0] = "failed: unable to merge existing explicit padding as include_zero_pad is not set";
      v70 = 259;
      v9 = mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolAvgOp &>(a3, &v58, v69);
      v25 = 0;
      v26 = v59;
      goto LABEL_62;
    }

    v27 = v60;
    v26 = v59;
LABEL_50:
    if (v27)
    {
      v29 = p_src;
      if (v27 >= 6)
      {
        if (p_src >= v26 + 8 * v27 || v26 >= (p_src + 8 * v27))
        {
          v30 = v27 & 0xFFFFFFFC;
          v31 = v26 + 1;
          v32 = (p_src + 16);
          v33 = v30;
          do
          {
            v34 = vaddq_s64(*v32, *v31);
            v32[-1] = vaddq_s64(v32[-1], v31[-1]);
            *v32 = v34;
            v31 += 2;
            v32 += 2;
            v33 -= 4;
          }

          while (v33);
          if (v30 == v27)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }

      do
      {
        v29[v30] += v26->i64[v30];
        ++v30;
      }

      while (v27 != v30);
    }

LABEL_61:
    v25 = 1;
    goto LABEL_62;
  }

LABEL_65:
  v69[0] = 8;
  IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
  v36 = mlir::RankedTensorType::get(v69, 1, IntegerType, 0);
  if (v36)
  {
    v37 = v36;
    v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
    v36 = v37;
  }

  else
  {
    v38 = 0;
  }

  v59 = mlir::DenseElementsAttr::getFromRawBuffer(v36, v38, p_src, 8 * v63, 8, 1, 0);
  v39 = v58;
  v69[0] = *(*(v8 + 72) + 24);
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v58);
  Strides = mlir::mps::Conv3DOp::getStrides(&v58);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v58);
  Context = mlir::Attribute::getContext((v58 + 24));
  v54 = mlir::mps::PaddingStyleAttr::get(Context, 0);
  v53 = *(v58 + 16 * ((*(v58 + 44) >> 23) & 1) + 64);
  v41 = mlir::Attribute::getContext((v58 + 24));
  v43 = mlir::UnitAttr::get(v41, v42);
  v44 = *(v39 + 24);
  v52 = v43;
  v45 = mlir::OpBuilder::create<mlir::mps::PoolAvgOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyleAttr,mlir::DenseIntElementsAttr&,mlir::UnitAttr,mlir::UnitAttr>((a3 + 8), v44, v69, &WindowSizes, &Strides, &InputAttributeNames, &v54, &v59, &v53, &v52);
  (*(*a3 + 8))(a3, v39, v45);
  result = 1;
LABEL_69:
  if (p_src != v64)
  {
    v46 = result;
    free(p_src);
    result = v46;
  }

  if ((v68 & 1) != 0 && __src != v67)
  {
    v47 = result;
    free(__src);
    return v47;
  }

  return result;
}

unint64_t *llvm::SmallVectorImpl<unsigned long long>::insert(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = *a1;
  v7 = a2 - *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = v8 + a3;
  if (*a1 + 8 * v8 == a2)
  {
    if (v10 > v9)
    {
      v54 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v10, 8);
      a1 = v54;
      v8 = *(v54 + 8);
      v6 = *v54;
      if (a3)
      {
        goto LABEL_16;
      }
    }

    else if (a3)
    {
LABEL_16:
      v24 = (v6 + 8 * v8);
      v25 = v24;
      v26 = a3;
      if (a3 < 4)
      {
        goto LABEL_51;
      }

      v25 = v24 + (a3 & 0xFFFFFFFFFFFFFFFCLL);
      v26 = a3 & 3;
      v27 = vdupq_n_s64(a4);
      v28 = v24 + 1;
      v29 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v28[-1] = v27;
        *v28 = v27;
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      if ((a3 & 0xFFFFFFFFFFFFFFFCLL) != a3)
      {
LABEL_51:
        do
        {
          *v25++ = a4;
          --v26;
        }

        while (v26);
      }
    }

    *(a1 + 8) = v8 + a3;
    return (v6 + v7);
  }

  if (v10 > v9)
  {
    v53 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v10, 8);
    a1 = v53;
    v6 = *v53;
    v8 = *(v53 + 8);
  }

  v11 = (v6 + v7);
  v12 = 8 * v8;
  v13 = (v6 + 8 * v8);
  v14 = 8 * v8 - v7;
  v15 = v14 >> 3;
  if (a3 > v14 >> 3)
  {
    v16 = v8 + a3;
    *(a1 + 8) = v16;
    if (v12 != v7)
    {
      memcpy((v6 + 8 * v16 - 8 * v15), (v6 + v7), v14);
      v17 = (v6 + v7);
      v18 = v14 >> 3;
      if (v15 < 4)
      {
        goto LABEL_52;
      }

      v17 = &v11[v15 & 0xFFFFFFFFFFFFFFFCLL];
      v18 = (v14 >> 3) & 3;
      v19 = vdupq_n_s64(a4);
      v20 = (v7 + v6 + 16);
      v21 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20[-1] = v19;
        *v20 = v19;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v15 != (v15 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_52:
        do
        {
          *v17++ = a4;
          --v18;
        }

        while (v18);
      }
    }

    v22 = a3 - v15;
    if (a3 != v15)
    {
      if (v22 < 4)
      {
        v23 = a3 - v15;
        do
        {
LABEL_30:
          *v13++ = a4;
          --v23;
        }

        while (v23);
        return v11;
      }

      v13 += v22 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = v22 & 3;
      v36 = vdupq_n_s64(a4);
      v37 = (v12 + v6 + 16);
      v38 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v37[-1] = v36;
        *v37 = v36;
        v37 += 2;
        v38 -= 4;
      }

      while (v38);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_30;
      }
    }

    return v11;
  }

  v30 = 8 * a3;
  v31 = v8 + ((8 * a3) >> 3);
  if (v31 > *(a1 + 12))
  {
    v32 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v31, 8);
    a1 = v32;
    LODWORD(v8) = *(v32 + 8);
  }

  v33 = &v13[v30 / 0xFFFFFFFFFFFFFFF8];
  if (a3)
  {
    v34 = (*a1 + 8 * v8);
    if ((v30 - 8) < 0x38)
    {
      v35 = &v13[v30 / 0xFFFFFFFFFFFFFFF8];
      do
      {
LABEL_36:
        v46 = *v35++;
        *v34++ = v46;
      }

      while (v35 != v13);
      goto LABEL_37;
    }

    v39 = 8 * v8 + *a1;
    v35 = &v13[v30 / 0xFFFFFFFFFFFFFFF8];
    if ((v39 - v33) < 0x20)
    {
      goto LABEL_36;
    }

    v40 = ((v30 - 8) >> 3) + 1;
    v41 = v40 & 0x3FFFFFFFFFFFFFFCLL;
    v34 = (v34 + v41 * 8);
    v35 = &v33[v41];
    v42 = (v12 - v30 + v6 + 16);
    v43 = (v39 + 16);
    v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v45 = *v42;
      *(v43 - 1) = *(v42 - 1);
      *v43 = v45;
      v42 += 2;
      v43 += 2;
      v44 -= 4;
    }

    while (v44);
    if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  *(a1 + 8) = v8 + a3;
  if (v33 != v11)
  {
    memmove(&v11[v30 / 8], (v6 + v7), &v13[v30 / 0xFFFFFFFFFFFFFFF8] - v11);
  }

  if (a3)
  {
    if (a3 >= 4)
    {
      v47 = &v11[a3 & 0xFFFFFFFFFFFFFFFCLL];
      v48 = a3 & 3;
      v49 = vdupq_n_s64(a4);
      v50 = (v7 + v6 + 16);
      v51 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v50[-1] = v49;
        *v50 = v49;
        v50 += 2;
        v51 -= 4;
      }

      while (v51);
      if ((a3 & 0xFFFFFFFFFFFFFFFCLL) == a3)
      {
        return v11;
      }
    }

    else
    {
      v47 = (v6 + v7);
      v48 = a3;
    }

    do
    {
      *v47++ = a4;
      --v48;
    }

    while (v48);
  }

  return v11;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolAvgOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolAvgOp &>(mlir::mps::PoolAvgOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PoolAvgOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyleAttr,mlir::DenseIntElementsAttr&,mlir::UnitAttr,mlir::UnitAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PoolAvgOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyleAttr,mlir::DenseIntElementsAttr&,mlir::UnitAttr,mlir::UnitAttr>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::PoolAvgOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id)
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

void *mlir::mps::anonymous namespace::CanonicalizePadToPoolOp<mlir::mps::PoolL2NormOp>::~CanonicalizePadToPoolOp(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizePadToPoolOp<mlir::mps::PoolL2NormOp>::~CanonicalizePadToPoolOp(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizePadToPoolOp<mlir::mps::PoolL2NormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v57 = a2;
  if (mlir::mps::Conv3DOp::getPaddingStyle(&v57) == 4 || mlir::mps::Conv3DOp::getPaddingStyle(&v57) == 2)
  {
    v4 = "failed: pooling op already specifies TF_SAME or ONNX_SAME_LOWER padding";
    goto LABEL_4;
  }

  if (mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v57) && !mlir::mps::GRUOp::getResetAfter(&v57))
  {
    v4 = "failed: pooling op ceil_mode && !include_zero_pad";
LABEL_4:
    __src = v4;
    v66[8] = 259;
    v5 = v57;
    p_src = &__src;
    v6 = *(a3 + 16);
    if (v6)
    {
      if (mlir::RewriterBase::Listener::classof(v6))
      {
        (*(*v6 + 88))(v6, *(v5 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolL2NormOp &>(mlir::mps::PoolL2NormOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &p_src);
      }
    }

    return 0;
  }

  __src = *(*(v57 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
    {
      v8 = DefiningOp;
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

  if (v67 != 1)
  {
    return 0;
  }

  p_src = v63;
  v62 = 0x600000000;
  v9 = v65;
  if (!v65)
  {
    goto LABEL_37;
  }

  if (v65 < 7)
  {
    v11 = v63;
    v10 = v65;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, v63, v65, 8);
    v10 = v65;
    if (!v65)
    {
      goto LABEL_24;
    }

    v11 = p_src;
  }

  memcpy(v11, __src, 8 * v10);
LABEL_24:
  LODWORD(v62) = v9;
  if (v9 >= 9)
  {
    v13 = 0;
    v14 = 8 * v9;
    v15 = p_src + 8 * v9;
    do
    {
      if (v13 <= 7 && *(p_src + v13))
      {
        v58 = "failed: pooling can only pad 4 dimensions";
        v60[8] = 259;
        v16 = v57;
        v68[0] = &v58;
        v17 = *(a3 + 16);
        if (v17 && mlir::RewriterBase::Listener::classof(v17))
        {
          (*(*v17 + 88))(v17, *(v16 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolL2NormOp &>(mlir::mps::PoolL2NormOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v68);
        }

        result = 0;
        goto LABEL_69;
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
    v58 = v60;
    v59 = 0x600000000;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, 8uLL, 8);
    v18 = v58 + 8 * v59;
    v19 = *(v15 - 4);
    v20 = *(v15 - 3);
    v21 = *(v15 - 1);
    v18[2] = *(v15 - 2);
    v18[3] = v21;
    *v18 = v19;
    v18[1] = v20;
    LODWORD(v59) = v59 + 8;
    llvm::SmallVectorImpl<unsigned long long>::operator=(&p_src, &v58);
    if (v58 != v60)
    {
      free(v58);
    }

    v9 = v62;
  }

  if (v9 <= 7)
  {
LABEL_37:
    llvm::SmallVectorImpl<unsigned long long>::insert(&p_src, p_src, (8 - v9), 0);
  }

  if (!mlir::mps::Conv3DOp::getPaddingStyle(&v57))
  {
    v58 = v60;
    v59 = 0x600000000;
    Offsets = mlir::mps::StencilOp::getOffsets(&v57);
    if ((v23 & 1) == 0)
    {
      v48 = std::__throw_bad_optional_access[abi:nn200100]();
      return mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolL2NormOp &>(v48, v49, v50);
    }

    if (Offsets)
    {
      v9 = Offsets;
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Offsets + 8);
      Offsets = v9;
    }

    else
    {
      v24 = 0;
    }

    v25 = 1;
    mlir::getIntValues<unsigned long long>(Offsets, v24, &v58, 1);
    v26 = v58;
    v27 = v59;
    if (!v59)
    {
LABEL_62:
      if (v26 != v60)
      {
        free(v26);
      }

      result = v9;
      if (!v25)
      {
        goto LABEL_69;
      }

      goto LABEL_65;
    }

    v28 = 0;
    while (!*(v58 + v28))
    {
      v28 += 8;
      if (8 * v59 == v28)
      {
        goto LABEL_50;
      }
    }

    if (!mlir::mps::GRUOp::getResetAfter(&v57))
    {
      v68[0] = "failed: unable to merge existing explicit padding as include_zero_pad is not set";
      v69 = 259;
      v9 = mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolL2NormOp &>(a3, &v57, v68);
      v25 = 0;
      v26 = v58;
      goto LABEL_62;
    }

    v27 = v59;
    v26 = v58;
LABEL_50:
    if (v27)
    {
      v29 = p_src;
      if (v27 >= 6)
      {
        if (p_src >= v26 + 8 * v27 || v26 >= (p_src + 8 * v27))
        {
          v30 = v27 & 0xFFFFFFFC;
          v31 = v26 + 1;
          v32 = (p_src + 16);
          v33 = v30;
          do
          {
            v34 = vaddq_s64(*v32, *v31);
            v32[-1] = vaddq_s64(v32[-1], v31[-1]);
            *v32 = v34;
            v31 += 2;
            v32 += 2;
            v33 -= 4;
          }

          while (v33);
          if (v30 == v27)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }

      do
      {
        v29[v30] += v26->i64[v30];
        ++v30;
      }

      while (v27 != v30);
    }

LABEL_61:
    v25 = 1;
    goto LABEL_62;
  }

LABEL_65:
  v68[0] = 8;
  IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
  v36 = mlir::RankedTensorType::get(v68, 1, IntegerType, 0);
  if (v36)
  {
    v37 = v36;
    v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
    v36 = v37;
  }

  else
  {
    v38 = 0;
  }

  v58 = mlir::DenseElementsAttr::getFromRawBuffer(v36, v38, p_src, 8 * v62, 8, 1, 0);
  v39 = v57;
  v68[0] = *(*(v8 + 72) + 24);
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v57);
  Strides = mlir::mps::Conv3DOp::getStrides(&v57);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v57);
  Context = mlir::Attribute::getContext((v57 + 24));
  v53 = mlir::mps::PaddingStyleAttr::get(Context, 0);
  v52 = *(v57 + 16 * ((*(v57 + 44) >> 23) & 1) + 64);
  v41 = mlir::Attribute::getContext((v57 + 24));
  v43 = mlir::UnitAttr::get(v41, v42);
  v44 = *(v39 + 24);
  v51 = v43;
  v45 = mlir::OpBuilder::create<mlir::mps::PoolL2NormOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyleAttr,mlir::DenseIntElementsAttr&,mlir::UnitAttr,mlir::UnitAttr>((a3 + 8), v44, v68, &WindowSizes, &Strides, &InputAttributeNames, &v53, &v58, &v52, &v51);
  (*(*a3 + 8))(a3, v39, v45);
  result = 1;
LABEL_69:
  if (p_src != v63)
  {
    v46 = result;
    free(p_src);
    result = v46;
  }

  if ((v67 & 1) != 0 && __src != v66)
  {
    v47 = result;
    free(__src);
    return v47;
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolL2NormOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::PoolL2NormOp &>(mlir::mps::PoolL2NormOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PoolL2NormOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyleAttr,mlir::DenseIntElementsAttr&,mlir::UnitAttr,mlir::UnitAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PoolL2NormOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyleAttr,mlir::DenseIntElementsAttr&,mlir::UnitAttr,mlir::UnitAttr>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::PoolL2NormOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeConv2DWithConstantOperands::~CanonicalizeConv2DWithConstantOperands(mlir::mps::_anonymous_namespace_::CanonicalizeConv2DWithConstantOperands *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeConv2DWithConstantOperands::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  v5 = *(*(a2 + 72) + 24);
  v12 = v14;
  v10[0] = v5;
  DefiningOp = mlir::Value::getDefiningOp(v10);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v12, DefiningOp))
  {
    v7 = *(*(a2 + 72) + 56);
    v11 = v13;
    v10[0] = v7;
    result = mlir::Value::getDefiningOp(v10);
    if (!result)
    {
      return result;
    }

    if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v11, result) & 1) != 0 && (mlir::ElementsAttr::isSplat(v14) & 1) == 0 && (mlir::ElementsAttr::isSplat(v13) & 1) == 0)
    {
      InterfaceFor = mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v10[0] = a2;
      v10[1] = InterfaceFor;
      return mlir::ConvertOpLayoutInterface::convertLayout(v10, 1, 1, a3);
    }
  }

  return 0;
}

uint64_t mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ConvertOpLayoutInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ConvertOpLayoutInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::ConvertOpLayoutInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ConvertOpLayoutInterface]";
  v6 = 80;
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

void mlir::mps::anonymous namespace::CanonicalizeMatMulTransposes::~CanonicalizeMatMulTransposes(mlir::mps::_anonymous_namespace_::CanonicalizeMatMulTransposes *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeMatMulTransposes::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::BoolAttr **a3)
{
  v19 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v19);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
  {
    v19 = *(*(a2 + 72) + 56);
    result = mlir::Value::getDefiningOp(&v19);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
    {
      return 0;
    }
  }

  v18 = *(*(a2 + 72) + 24);
  v19 = a2;
  v7 = mlir::Value::getDefiningOp(&v18);
  if (v7)
  {
    v8 = *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id ? v7 : 0;
    {
      v9 = *(a2 + 24);
      v10 = *(*(v8 + 72) + 24);
      v17 = *(*(v19 + 72) + 56);
      v18 = v10;
      IsNegated = !mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v19);
      TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v19);
      v19 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>(a3 + 1, v9, &v18, &v17, &IsNegated, &TransposeRhs);
    }
  }

  v18 = *(*(a2 + 72) + 56);
  v11 = mlir::Value::getDefiningOp(&v18);
  if (v11)
  {
    if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      {
        v13 = *(a2 + 24);
        v14 = *(*(v19 + 72) + 24);
        v17 = *(*(v12 + 72) + 24);
        v18 = v14;
        IsNegated = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v19);
        TransposeRhs = !mlir::mps::MatMulOp::getTransposeRhs(&v19);
        v19 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>(a3 + 1, v13, &v18, &v17, &IsNegated, &TransposeRhs);
      }
    }
  }

  if (v19 == a2)
  {
    return 0;
  }

  (*(*a3 + 1))(a3, a2);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeMatMulTransposes::checkCompatibleTranspose(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v2 = *(*(a1 + 72) + 56);
  v22[0] = &v20;
  v24 = v2;
  DefiningOp = mlir::Value::getDefiningOp(&v24);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v22, DefiningOp))
  {
    return 0;
  }

  v4 = *(*(a1 + 72) + 88);
  v17[0] = &v18;
  v24 = v4;
  result = mlir::Value::getDefiningOp(&v24);
  if (!result)
  {
    return result;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v17, result) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v17[0] = v6;
  v17[1] = v7;
  v24 = v26;
  v25 = 0x100000000;
  mlir::getIntValues<long long>(v20, v21, &v24, 1);
  v22[0] = &v23;
  v22[1] = 0x100000000;
  mlir::getIntValues<long long>(v18, v19, v22, 1);
  v8 = *v22[0];
  v9 = v25;
  if (v25 >= HIDWORD(v25))
  {
    v16 = *v22[0];
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25 + 1, 8);
    v8 = v16;
    v9 = v25;
  }

  v24[v9] = v8;
  LODWORD(v25) = v25 + 1;
  std::__sort<std::__less<long long,long long> &,long long *>();
  if (*v24 == -2 && v24[1] == -1)
  {
    result = 1;
  }

  else
  {
    result = mlir::CallOpInterface::getArgOperands(v17);
    if (result)
    {
      v10 = *v24;
      mlir::CallableOpInterface::getArgAttrsAttr(v17);
      if (v10 == v11 - 2)
      {
        v12 = v24[1];
        mlir::CallableOpInterface::getArgAttrsAttr(v17);
        result = v12 == v13 - 1;
      }

      else
      {
        result = 0;
      }
    }
  }

  if (v22[0] != &v23)
  {
    v14 = result;
    free(v22[0]);
    result = v14;
  }

  if (v24 != v26)
  {
    v15 = result;
    free(v24);
    return v15;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::MatMulOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
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

float mlir::getIntValues<long long>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = a1;
  v10 = a2;
  if (!mlir::ElementsAttr::isSplat(&v9) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v9, v10);
  }

  else
  {
    NumElements = 1;
  }

  v7 = *(a3 + 8);
  if (NumElements != v7)
  {
    if (NumElements >= v7)
    {
      if (NumElements > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, NumElements, 8);
        v7 = *(a3 + 8);
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 8 * v7), 8 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  return mlir::copyElementsAttrData<long long>(v9, v10, *a3, a4);
}

float mlir::copyElementsAttrData<long long>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v89[5] = *MEMORY[0x1E69E9840];
  v86 = a1;
  v87 = a2;
  Type = mlir::ElementsAttr::getType(&v86);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v85[0] = v7;
  v85[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v85);
  v8 = mlir::ElementsAttr::isSplat(&v86);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v86);
  v11 = v10;
  if (!v8 || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v86, v87);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      if (NumElements >= 2)
      {
        v19 = 0;
        v18 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v20 = a3 + 1;
        do
        {
          if (v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          if (v8)
          {
            v22 = 0;
          }

          else
          {
            v22 = v19 + 1;
          }

          v23 = *&ElementsAttrRawData[2 * v22];
          *(v20 - 1) = *&ElementsAttrRawData[2 * v21];
          *v20 = v23;
          v20 += 2;
          v19 += 2;
        }

        while (v19 != v18);
        goto LABEL_187;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_69;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_85;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_105;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_116;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_123;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_139;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_154;
    }

LABEL_156:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v8)
      {
        v60 = 1;
      }

      else
      {
        v60 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v88, v60);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v88[0], v88[1]);
      v61 = v88[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v8)
          {
            v63 = 0;
          }

          else
          {
            v63 = i;
          }

          a3[i] = v61[v63];
        }
      }

      if (v61 != v89)
      {
        free(v61);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (v8)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      a3[j] = ElementsAttrRawData[v15];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = k;
      }

      a3[k] = ElementsAttrRawData[v17];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_29:
    v18 = 0;
    do
    {
      if (v8)
      {
        v75 = 0;
      }

      else
      {
        v75 = v18;
      }

      a3[v18++] = *&ElementsAttrRawData[2 * v75];
LABEL_187:
      ;
    }

    while (NumElements != v18);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v26 = 0;
      v24 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v27 = a3 + 1;
      do
      {
        if (v8)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        if (v8)
        {
          v29 = 0;
        }

        else
        {
          v29 = v26 + 1;
        }

        v30 = *&ElementsAttrRawData[2 * v29];
        *(v27 - 1) = *&ElementsAttrRawData[2 * v28];
        *v27 = v30;
        v27 += 2;
        v26 += 2;
      }

      while (v26 != v24);
      goto LABEL_192;
    }

    v24 = 0;
    do
    {
      if (v8)
      {
        v76 = 0;
      }

      else
      {
        v76 = v24;
      }

      a3[v24++] = *&ElementsAttrRawData[2 * v76];
LABEL_192:
      ;
    }

    while (NumElements != v24);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_53:
    if (NumElements >= 2)
    {
      v32 = 0;
      v25 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v33 = a3 + 1;
      do
      {
        if (v8)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        if (v8)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32 + 1;
        }

        v36 = *&ElementsAttrRawData[4 * v35];
        *(v33 - 1) = *&ElementsAttrRawData[4 * v34];
        *v33 = v36;
        v33 += 2;
        v32 += 2;
      }

      while (v32 != v25);
      goto LABEL_197;
    }

    v25 = 0;
    do
    {
      if (v8)
      {
        v77 = 0;
      }

      else
      {
        v77 = v25;
      }

      a3[v25++] = *&ElementsAttrRawData[4 * v77];
LABEL_197:
      ;
    }

    while (NumElements != v25);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_69:
    if (NumElements >= 2)
    {
      v39 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v40 = a3 + 1;
      do
      {
        if (v8)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        if (v8)
        {
          v42 = 0;
        }

        else
        {
          v42 = v39 + 1;
        }

        v43 = *&ElementsAttrRawData[4 * v42];
        *(v40 - 1) = *&ElementsAttrRawData[4 * v41];
        *v40 = v43;
        v40 += 2;
        v39 += 2;
      }

      while (v39 != v31);
      goto LABEL_202;
    }

    v31 = 0;
    do
    {
      if (v8)
      {
        v78 = 0;
      }

      else
      {
        v78 = v31;
      }

      a3[v31++] = *&ElementsAttrRawData[4 * v78];
LABEL_202:
      ;
    }

    while (NumElements != v31);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_85:
    for (m = 0; m != NumElements; ++m)
    {
      if (v8)
      {
        v38 = 0;
      }

      else
      {
        v38 = m;
      }

      a3[m] = *&ElementsAttrRawData[8 * v38];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_105:
    for (n = 0; n != NumElements; ++n)
    {
      if (v8)
      {
        v45 = 0;
      }

      else
      {
        v45 = n;
      }

      a3[n] = *&ElementsAttrRawData[8 * v45];
    }

    return *&v12;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_116:
    if (NumElements >= 2)
    {
      v48 = 0;
      v46 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v49 = a3 + 1;
      do
      {
        if (v8)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        if (v8)
        {
          v51 = 0;
        }

        else
        {
          v51 = v48 + 1;
        }

        LOWORD(v12) = *&ElementsAttrRawData[2 * v50];
        v52 = *&ElementsAttrRawData[2 * v51];
        *(v49 - 1) = *&v12;
        *v49 = v52;
        v49 += 2;
        v48 += 2;
      }

      while (v48 != v46);
      goto LABEL_207;
    }

    v46 = 0;
    do
    {
      if (v8)
      {
        v79 = 0;
      }

      else
      {
        v79 = v46;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v79];
      a3[v46++] = *&v12;
LABEL_207:
      ;
    }

    while (NumElements != v46);
    return *&v12;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_123:
    if (NumElements >= 2)
    {
      v54 = 0;
      v47 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v55 = a3 + 1;
      do
      {
        if (v8)
        {
          v56 = 0;
        }

        else
        {
          v56 = v54;
        }

        if (v8)
        {
          v57 = 0;
        }

        else
        {
          v57 = v54 + 1;
        }

        LODWORD(v12) = *&ElementsAttrRawData[4 * v56];
        v58 = *&ElementsAttrRawData[4 * v57];
        *(v55 - 1) = *&v12;
        *v55 = v58;
        v55 += 2;
        v54 += 2;
      }

      while (v54 != v47);
      goto LABEL_212;
    }

    v47 = 0;
    do
    {
      if (v8)
      {
        v80 = 0;
      }

      else
      {
        v80 = v47;
      }

      LODWORD(v12) = *&ElementsAttrRawData[4 * v80];
      a3[v47++] = *&v12;
LABEL_212:
      ;
    }

    while (NumElements != v47);
    return *&v12;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_139:
    if (NumElements >= 2)
    {
      v64 = 0;
      v53 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v65 = a3 + 1;
      do
      {
        if (v8)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64;
        }

        if (v8)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64 + 1;
        }

        v12 = *&ElementsAttrRawData[8 * v66];
        v68 = *&ElementsAttrRawData[8 * v67];
        *(v65 - 1) = v12;
        *v65 = v68;
        v65 += 2;
        v64 += 2;
      }

      while (v64 != v53);
      goto LABEL_217;
    }

    v53 = 0;
    do
    {
      if (v8)
      {
        v81 = 0;
      }

      else
      {
        v81 = v53;
      }

      v12 = *&ElementsAttrRawData[8 * v81];
      a3[v53++] = v12;
LABEL_217:
      ;
    }

    while (NumElements != v53);
    return *&v12;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_156;
  }

LABEL_154:
  if (NumElements >= 2)
  {
    v70 = 0;
    v59 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v71 = a3 + 1;
    do
    {
      if (v8)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      if (v8)
      {
        v73 = 0;
      }

      else
      {
        v73 = v70 + 1;
      }

      LODWORD(v12) = *&ElementsAttrRawData[2 * v72] << 16;
      v74 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v73] << 16);
      *(v71 - 1) = *&v12;
      *v71 = v74;
      v71 += 2;
      v70 += 2;
    }

    while (v70 != v59);
    goto LABEL_222;
  }

  v59 = 0;
  do
  {
    if (v8)
    {
      v82 = 0;
    }

    else
    {
      v82 = v59;
    }

    LODWORD(v12) = *&ElementsAttrRawData[2 * v82] << 16;
    a3[v59++] = *&v12;
LABEL_222:
    ;
  }

  while (NumElements != v59);
  return *&v12;
}

{
  v181[5] = *MEMORY[0x1E69E9840];
  v178 = a1;
  v179 = a2;
  Type = mlir::ElementsAttr::getType(&v178);
  v7 = Type;
  if (Type)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  else
  {
    v8 = 0;
  }

  v177[0] = v7;
  v177[1] = v8;
  isSplat = mlir::ElementsAttr::isSplat(v177);
  v9 = mlir::ElementsAttr::isSplat(&v178);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v178);
  v12 = v11;
  if ((v9 & 1) == 0 || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v178, v179);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

      goto LABEL_10;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

      goto LABEL_30;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

      goto LABEL_36;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

      goto LABEL_51;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

      goto LABEL_66;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

      goto LABEL_81;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

      goto LABEL_97;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

      goto LABEL_112;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

LABEL_132:
      if (v9)
      {
        v13.i32[0] = *ElementsAttrRawData;
        v72 = *ElementsAttrRawData;
        if (NumElements >= 4)
        {
          v73 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          v13 = vdupq_n_s64(v72);
          v92 = (a3 + 2);
          v93 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v92[-1] = v13;
            *v92 = v13;
            v92 += 2;
            v93 -= 4;
          }

          while (v93);
          if (NumElements == v73)
          {
            return *v13.i32;
          }
        }

        else
        {
          v73 = 0;
        }

        v94 = NumElements - v73;
        v95 = &a3[v73];
        do
        {
          *v95++ = v72;
          --v94;
        }

        while (v94);
        return *v13.i32;
      }

      if (NumElements > 7)
      {
        v85 = NumElements & 0x7FFFFFFFFFFFFFF8;
        v96 = (ElementsAttrRawData + 16);
        v97 = (a3 + 4);
        v98 = NumElements & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v99 = *v96[-2].f32;
          v100 = vcvtq_s64_f64(vcvtq_f64_f32(*v96));
          v101 = vcvt_hight_f64_f32(*v96->f32);
          v97[-2] = vcvtq_s64_f64(vcvtq_f64_f32(*v99.f32));
          v97[-1] = vcvtq_s64_f64(vcvt_hight_f64_f32(v99));
          v13 = vcvtq_s64_f64(v101);
          *v97 = v100;
          v97[1] = v13;
          v97 += 4;
          v96 += 4;
          v98 -= 8;
        }

        while (v98);
        if (NumElements == v85)
        {
          return *v13.i32;
        }
      }

      else
      {
        v85 = 0;
      }

      v102 = NumElements - v85;
      v103 = &a3[v85];
      v104 = &ElementsAttrRawData[4 * v85];
      do
      {
        v105 = *v104++;
        *v13.i32 = v105;
        *v103++ = v105;
        --v102;
      }

      while (v102);
      return *v13.i32;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return *v13.i32;
      }

LABEL_154:
      if (v9)
      {
        v13.i64[0] = *ElementsAttrRawData;
        v83 = *ElementsAttrRawData;
        if (NumElements >= 4)
        {
          v84 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          v13 = vdupq_n_s64(v83);
          v108 = (a3 + 2);
          v109 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v108[-1] = v13;
            *v108 = v13;
            v108 += 2;
            v109 -= 4;
          }

          while (v109);
          if (NumElements == v84)
          {
            return *v13.i32;
          }
        }

        else
        {
          v84 = 0;
        }

        v110 = NumElements - v84;
        v111 = &a3[v84];
        do
        {
          *v111++ = v83;
          --v110;
        }

        while (v110);
        return *v13.i32;
      }

      if (NumElements > 3)
      {
        v106 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        v112 = (ElementsAttrRawData + 16);
        v113 = (a3 + 2);
        v114 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v13 = vcvtq_s64_f64(v112[-1]);
          v115 = vcvtq_s64_f64(*v112);
          v113[-1] = v13;
          *v113 = v115;
          v112 += 2;
          v113 += 2;
          v114 -= 4;
        }

        while (v114);
        if (NumElements == v106)
        {
          return *v13.i32;
        }
      }

      else
      {
        v106 = 0;
      }

      v116 = NumElements - v106;
      v117 = 8 * v106;
      v118 = &a3[v106];
      v119 = &ElementsAttrRawData[v117];
      do
      {
        v120 = *v119++;
        v13.i32[0] = LODWORD(v120);
        *v118++ = v120;
        --v116;
      }

      while (v116);
      return *v13.i32;
    }

    if (!mlir::Type::isBF16(&isSplat))
    {
LABEL_165:
      if (!mlir::Type::isInteger(&isSplat, 1))
      {
        mlir::Type::getIntOrFloatBitWidth(&isSplat);
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
        mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v12, a3, NumElements, IntOrFloatBitWidth);
        return *v13.i32;
      }

      if (v9)
      {
        v87 = 1;
      }

      else
      {
        v87 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v180, v87);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v12, v180[0], v180[1]);
      v88 = v180[0];
      if (NumElements < 1)
      {
        goto LABEL_220;
      }

      if (v9)
      {
        if (NumElements < 4 || v180[0] + 1 > a3 && v180[0] < &a3[NumElements])
        {
          v89 = 0;
          goto LABEL_175;
        }

        if (NumElements >= 0x10)
        {
          v89 = NumElements & 0x7FFFFFFFFFFFFFF0;
          v131 = vld1_dup_s8(v180[0]);
          v132 = vmovl_s8(v131);
          v133 = vmovl_high_s16(v132);
          v134.i64[0] = v133.i32[2];
          v134.i64[1] = v133.i32[3];
          v13 = v134;
          v134.i64[0] = v133.i32[0];
          v134.i64[1] = v133.i32[1];
          v135 = v134;
          v136 = vmovl_s16(*v132.i8);
          v134.i64[0] = v136.i32[2];
          v134.i64[1] = v136.i32[3];
          v137 = v134;
          v134.i64[0] = v136.i32[0];
          v134.i64[1] = v136.i32[1];
          v138 = v134;
          v139 = NumElements & 0x7FFFFFFFFFFFFFF0;
          v140 = a3;
          do
          {
            *v140 = v138;
            v140[1] = v137;
            v140[2] = v135;
            v140[3] = v13;
            v140[4] = v138;
            v140[5] = v137;
            v140[6] = v135;
            v140[7] = v13;
            v140 += 8;
            v139 -= 16;
          }

          while (v139);
          if (NumElements == v89)
          {
            goto LABEL_220;
          }

          if ((NumElements & 0xC) == 0)
          {
LABEL_175:
            v90 = NumElements - v89;
            v91 = &a3[v89];
            do
            {
              *v91++ = *v88;
              --v90;
            }

            while (v90);
            goto LABEL_220;
          }
        }

        else
        {
          v89 = 0;
        }

        v141 = v89;
        v142 = vdup_n_s32(*v88);
        v89 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        v143.i64[0] = v142.u32[0];
        v143.i64[1] = v142.u32[1];
        v13 = vshrq_n_s64(vshlq_n_s64(v143, 0x38uLL), 0x38uLL);
        v144 = &a3[v141];
        v145 = v141 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          *v144 = v13;
          v144[1] = v13;
          v144 += 2;
          v145 += 4;
        }

        while (v145);
        if (NumElements != v89)
        {
          goto LABEL_175;
        }

LABEL_220:
        if (v88 != v181)
        {
          free(v88);
        }

        return *v13.i32;
      }

      if (NumElements < 4 || v180[0] + NumElements > a3 && v180[0] < &a3[NumElements])
      {
        v126 = 0;
        goto LABEL_218;
      }

      if (NumElements >= 0x10)
      {
        v126 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v146 = NumElements & 0x7FFFFFFFFFFFFFF0;
        v147 = a3;
        v148 = v180[0];
        do
        {
          v149 = *v148++;
          v150 = vmovl_s8(*v149.i8);
          v151 = vmovl_s16(*v150.i8);
          *&v152 = v151.i32[0];
          *(&v152 + 1) = v151.i32[1];
          v153 = v152;
          v154 = vmovl_high_s16(v150);
          *&v152 = v154.i32[0];
          *(&v152 + 1) = v154.i32[1];
          v155 = v152;
          v156 = vmovl_high_s8(v149);
          v157 = vmovl_high_s16(v156);
          *&v152 = v157.i32[0];
          *(&v152 + 1) = v157.i32[1];
          v158 = v152;
          *&v152 = v157.i32[2];
          *(&v152 + 1) = v157.i32[3];
          v147[6] = v158;
          v147[7] = v152;
          v13 = vmovl_s16(*v156.i8);
          *&v152 = v13.i32[0];
          *(&v152 + 1) = v13.i32[1];
          v159 = v152;
          *&v152 = v154.i32[2];
          *(&v152 + 1) = v154.i32[3];
          v160 = v152;
          *&v152 = v13.i32[2];
          *(&v152 + 1) = v13.i32[3];
          v147[4] = v159;
          v147[5] = v152;
          v147[2] = v155;
          v147[3] = v160;
          *&v152 = v151.i32[2];
          *(&v152 + 1) = v151.i32[3];
          v13.i64[0] = v151.i32[2];
          *v147 = v153;
          v147[1] = v152;
          v147 += 8;
          v146 -= 16;
        }

        while (v146);
        if (NumElements == v126)
        {
          goto LABEL_220;
        }

        if ((NumElements & 0xC) == 0)
        {
LABEL_218:
          v127 = NumElements - v126;
          v128 = &a3[v126];
          v129 = &v88[v126];
          do
          {
            v130 = *v129++;
            *v128++ = v130;
            --v127;
          }

          while (v127);
          goto LABEL_220;
        }
      }

      else
      {
        v126 = 0;
      }

      v161 = v126;
      v126 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v162 = &v88[v161];
      v163 = &a3[v161];
      v164 = v161 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
      do
      {
        v165 = *v162;
        v162 += 4;
        v13.i32[0] = v165;
        v166 = vmovl_u16(*&vmovl_u8(*v13.i8));
        v167.i64[0] = v166.u32[0];
        v167.i64[1] = v166.u32[1];
        v168 = vshrq_n_s64(vshlq_n_s64(v167, 0x38uLL), 0x38uLL);
        v167.i64[0] = v166.u32[2];
        v167.i64[1] = v166.u32[3];
        v13 = vshrq_n_s64(vshlq_n_s64(v167, 0x38uLL), 0x38uLL);
        *v163 = v168;
        v163[1] = v13;
        v163 += 2;
        v164 += 4;
      }

      while (v164);
      if (NumElements == v126)
      {
        goto LABEL_220;
      }

      goto LABEL_218;
    }

    if (NumElements < 1)
    {
      return *v13.i32;
    }

LABEL_163:
    if (NumElements >= 2)
    {
      v121 = 0;
      v86 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v122 = a3 + 1;
      do
      {
        if (v9)
        {
          v123 = 0;
        }

        else
        {
          v123 = v121;
        }

        if (v9)
        {
          v124 = 0;
        }

        else
        {
          v124 = v121 + 1;
        }

        v13.i32[0] = *&ElementsAttrRawData[2 * v123] << 16;
        v125 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v124] << 16);
        *(v122 - 1) = *v13.i32;
        *v122 = v125;
        v122 += 2;
        v121 += 2;
      }

      while (v121 != v86);
      goto LABEL_276;
    }

    v86 = 0;
    do
    {
      if (v9)
      {
        v174 = 0;
      }

      else
      {
        v174 = v86;
      }

      v13.i32[0] = *&ElementsAttrRawData[2 * v174] << 16;
      a3[v86++] = *v13.i32;
LABEL_276:
      ;
    }

    while (NumElements != v86);
    return *v13.i32;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_10:
    for (i = 0; i != NumElements; ++i)
    {
      if (v9)
      {
        v16 = 0;
      }

      else
      {
        v16 = i;
      }

      a3[i] = ElementsAttrRawData[v16];
    }

    return *v13.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_20:
    for (j = 0; j != NumElements; ++j)
    {
      if (v9)
      {
        v18 = 0;
      }

      else
      {
        v18 = j;
      }

      a3[j] = ElementsAttrRawData[v18];
    }

    return *v13.i32;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_30:
    if (NumElements >= 2)
    {
      v21 = 0;
      v19 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v22 = a3 + 1;
      do
      {
        if (v9)
        {
          v23 = 0;
        }

        else
        {
          v23 = v21;
        }

        if (v9)
        {
          v24 = 0;
        }

        else
        {
          v24 = v21 + 1;
        }

        v25 = *&ElementsAttrRawData[2 * v24];
        *(v22 - 1) = *&ElementsAttrRawData[2 * v23];
        *v22 = v25;
        v22 += 2;
        v21 += 2;
      }

      while (v21 != v19);
      goto LABEL_246;
    }

    v19 = 0;
    do
    {
      if (v9)
      {
        v169 = 0;
      }

      else
      {
        v169 = v19;
      }

      a3[v19++] = *&ElementsAttrRawData[2 * v169];
LABEL_246:
      ;
    }

    while (NumElements != v19);
    return *v13.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_36:
    if (NumElements >= 2)
    {
      v27 = 0;
      v20 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v28 = a3 + 1;
      do
      {
        if (v9)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27;
        }

        if (v9)
        {
          v30 = 0;
        }

        else
        {
          v30 = v27 + 1;
        }

        v31 = *&ElementsAttrRawData[2 * v30];
        *(v28 - 1) = *&ElementsAttrRawData[2 * v29];
        *v28 = v31;
        v28 += 2;
        v27 += 2;
      }

      while (v27 != v20);
      goto LABEL_252;
    }

    v20 = 0;
    do
    {
      if (v9)
      {
        v170 = 0;
      }

      else
      {
        v170 = v20;
      }

      a3[v20++] = *&ElementsAttrRawData[2 * v170];
LABEL_252:
      ;
    }

    while (NumElements != v20);
    return *v13.i32;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_51:
    if (NumElements >= 2)
    {
      v33 = 0;
      v26 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v34 = a3 + 1;
      do
      {
        if (v9)
        {
          v35 = 0;
        }

        else
        {
          v35 = v33;
        }

        if (v9)
        {
          v36 = 0;
        }

        else
        {
          v36 = v33 + 1;
        }

        v37 = *&ElementsAttrRawData[4 * v36];
        *(v34 - 1) = *&ElementsAttrRawData[4 * v35];
        *v34 = v37;
        v34 += 2;
        v33 += 2;
      }

      while (v33 != v26);
      goto LABEL_258;
    }

    v26 = 0;
    do
    {
      if (v9)
      {
        v171 = 0;
      }

      else
      {
        v171 = v26;
      }

      a3[v26++] = *&ElementsAttrRawData[4 * v171];
LABEL_258:
      ;
    }

    while (NumElements != v26);
    return *v13.i32;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_66:
    if (NumElements >= 2)
    {
      v40 = 0;
      v32 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v41 = a3 + 1;
      do
      {
        if (v9)
        {
          v42 = 0;
        }

        else
        {
          v42 = v40;
        }

        if (v9)
        {
          v43 = 0;
        }

        else
        {
          v43 = v40 + 1;
        }

        v44 = *&ElementsAttrRawData[4 * v43];
        *(v41 - 1) = *&ElementsAttrRawData[4 * v42];
        *v41 = v44;
        v41 += 2;
        v40 += 2;
      }

      while (v40 != v32);
      goto LABEL_264;
    }

    v32 = 0;
    do
    {
      if (v9)
      {
        v172 = 0;
      }

      else
      {
        v172 = v32;
      }

      a3[v32++] = *&ElementsAttrRawData[4 * v172];
LABEL_264:
      ;
    }

    while (NumElements != v32);
    return *v13.i32;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_81:
    if (v9)
    {
      v38 = *ElementsAttrRawData;
      if (NumElements >= 4)
      {
        v39 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        v13 = vdupq_n_s64(v38);
        v58 = (a3 + 2);
        v59 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v58[-1] = v13;
          *v58 = v13;
          v58 += 2;
          v59 -= 4;
        }

        while (v59);
        if (NumElements == v39)
        {
          return *v13.i32;
        }
      }

      else
      {
        v39 = 0;
      }

      v60 = NumElements - v39;
      v61 = &a3[v39];
      do
      {
        *v61++ = v38;
        --v60;
      }

      while (v60);
      return *v13.i32;
    }

    v47 = 0;
    if (NumElements < 4)
    {
      goto LABEL_105;
    }

    if ((a3 - ElementsAttrRawData) <= 0x1F)
    {
      goto LABEL_105;
    }

    v47 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v48 = (ElementsAttrRawData + 16);
    v49 = (a3 + 2);
    v50 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = v48[-1];
      v51 = *v48;
      v49[-1] = v13;
      *v49 = v51;
      v48 += 2;
      v49 += 2;
      v50 -= 4;
    }

    while (v50);
    if (NumElements != v47)
    {
LABEL_105:
      v52 = NumElements - v47;
      v53 = 8 * v47;
      v54 = &a3[v47];
      v55 = &ElementsAttrRawData[v53];
      do
      {
        v56 = *v55;
        v55 += 8;
        *v54++ = v56;
        --v52;
      }

      while (v52);
    }

    return *v13.i32;
  }

  if (!mlir::Type::isInteger(&isSplat, 64))
  {
    if (mlir::Type::isF16(&isSplat))
    {
      NumElements = 1;
LABEL_112:
      if (NumElements >= 2)
      {
        v78 = 0;
        v57 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v79 = a3 + 1;
        do
        {
          if (v9)
          {
            v80 = 0;
          }

          else
          {
            v80 = v78;
          }

          if (v9)
          {
            v81 = 0;
          }

          else
          {
            v81 = v78 + 1;
          }

          v13.i16[0] = *&ElementsAttrRawData[2 * v80];
          v82 = *&ElementsAttrRawData[2 * v81];
          *(v79 - 1) = *v13.i16;
          *v79 = v82;
          v79 += 2;
          v78 += 2;
        }

        while (v78 != v57);
        goto LABEL_270;
      }

      v57 = 0;
      do
      {
        if (v9)
        {
          v173 = 0;
        }

        else
        {
          v173 = v57;
        }

        v13.i16[0] = *&ElementsAttrRawData[2 * v173];
        a3[v57++] = *v13.i16;
LABEL_270:
        ;
      }

      while (NumElements != v57);
      return *v13.i32;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      NumElements = 1;
      goto LABEL_132;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      NumElements = 1;
      goto LABEL_154;
    }

    NumElements = 1;
    if (!mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_165;
    }

    goto LABEL_163;
  }

  NumElements = 1;
LABEL_97:
  if (v9)
  {
    v45 = *ElementsAttrRawData;
    if (NumElements >= 4)
    {
      v46 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      v13 = vdupq_n_s64(v45);
      v74 = (a3 + 2);
      v75 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v74[-1] = v13;
        *v74 = v13;
        v74 += 2;
        v75 -= 4;
      }

      while (v75);
      if (NumElements == v46)
      {
        return *v13.i32;
      }
    }

    else
    {
      v46 = 0;
    }

    v76 = NumElements - v46;
    v77 = &a3[v46];
    do
    {
      *v77++ = v45;
      --v76;
    }

    while (v76);
    return *v13.i32;
  }

  v62 = 0;
  if (NumElements < 4)
  {
    goto LABEL_125;
  }

  if ((a3 - ElementsAttrRawData) <= 0x1F)
  {
    goto LABEL_125;
  }

  v62 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
  v63 = (ElementsAttrRawData + 16);
  v64 = (a3 + 2);
  v65 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v13 = v63[-1];
    v66 = *v63;
    v64[-1] = v13;
    *v64 = v66;
    v63 += 2;
    v64 += 2;
    v65 -= 4;
  }

  while (v65);
  if (NumElements != v62)
  {
LABEL_125:
    v67 = NumElements - v62;
    v68 = 8 * v62;
    v69 = &a3[v62];
    v70 = &ElementsAttrRawData[v68];
    do
    {
      v71 = *v70;
      v70 += 8;
      *v69++ = v71;
      --v67;
    }

    while (v67);
  }

  return *v13.i32;
}

void mlir::mps::anonymous namespace::ReorderDequantPermute::~ReorderDequantPermute(mlir::mps::_anonymous_namespace_::ReorderDequantPermute *this)
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

uint64_t mlir::mps::anonymous namespace::ReorderDequantPermute::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::Float32Type **a3)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  v34 = 0;
  v35 = 0;
  v32[0] = &v35;
  v32[1] = &v34;
  v33 = 0;
  v36 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
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

  LOBYTE(v31) = 1;
  __p = &v31;
  v38 = &v36;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::PermuteOp,mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul>(v32, &__p);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  v6 = v35;
  v33 = v36;
  v30 = v34;
  v31 = v35;
  AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v30);
  v36 = *(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 64);
  if (v36)
  {
    v9 = AsAttribute;
    v10 = v8;
    NumElements = mlir::ElementsAttr::getNumElements(AsAttribute, v8);
    mlir::IntegerAttr::getValue(&v36, &__p);
    if (v38 > 0x40)
    {
      v12 = *__p;
      operator delete[](__p);
    }

    else if (v38)
    {
      v12 = (__p << -v38) >> -v38;
    }

    else
    {
      v12 = 0;
    }

    __p = v39;
    v38 = 0x400000000;
    mlir::getIntValues<long long>(v9, v10, &__p, 1);
    PositiveAxis = mlir::getPositiveAxis(v12, NumElements);
    if (v38)
    {
      v14 = PositiveAxis;
      v15 = 0;
      v16 = __p;
      v17 = ((v38 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v18 = 8 * v38;
      while (mlir::getPositiveAxis(v16[v15], NumElements) != v14)
      {
        ++v15;
        v18 -= 8;
        if (!v18)
        {
          v15 = v17;
          break;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    Value = mlir::AffineMapAttr::getValue(&v36);
    v20 = mlir::IntegerAttr::get(Value, v15);
    if (__p != v39)
    {
      free(__p);
    }

    __p = v20;
    if (v20)
    {
      goto LABEL_24;
    }
  }

  else
  {
    __p = 0;
  }

  if (!mlir::mps::DequantizeOp::hasNDParams(&v31))
  {
LABEL_24:
    v22 = *(*(v31 + 72) + 24);
    v28 = v34;
    v29 = v22;
    v36 = mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>(a3 + 1, v3, &v29, &v28);
    v23 = *(v31 + 72);
    v24 = v23[7];
    v28 = v23[11];
    v29 = v24;
    v27 = v23[15];
    FunctionType = mlir::func::FuncOp::getFunctionType(&v31);
    v25 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::mps::PermuteOp &,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(a3 + 1, *(a2 + 24), &v36, &v29, &v28, &v27, &FunctionType, &__p);
    (*(*a3 + 1))(a3, a2, v25);
    return 1;
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::PermuteOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
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

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::PermuteOp,mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v13 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v13);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id && (*v4 ? (v7 = *v4 == DefiningOp) : (v7 = 1), v7))
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
  v13 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v9 || *v9 == result))
    {
      *v9 = result;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = v11 & **a2;
  if (!result)
  {
    v12 = 0;
  }

  **a2 = v12;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::mps::PermuteOp &,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::mps::PermuteOp &,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::mps::DequantizeOp::build(a1, v25, *a3 - 16, *a4, *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
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

void mlir::mps::anonymous namespace::ReorderDequantTranspose::~ReorderDequantTranspose(mlir::mps::_anonymous_namespace_::ReorderDequantTranspose *this)
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

uint64_t mlir::mps::anonymous namespace::ReorderDequantTranspose::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::UnknownLoc **a3)
{
  v3 = *(a2 + 24);
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43[0] = &v47;
  v43[1] = &v46;
  v43[2] = &v45;
  v51[0] = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(a2 + 68) != 3)
  {
    return 0;
  }

  LOBYTE(v50[0]) = 1;
  v53 = v50;
  v54 = v51;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::TransposeOp,mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul>(v43, &v53);
  if ((v50[0] & 1) == 0)
  {
    return 0;
  }

  v44 = v51[0];
  v41 = v45;
  v42 = v46;
  v6 = v47;
  v40 = v47;
  v7 = (*(v47 + 44) >> 23) & 1;
  if (!*(v47 + 16 * v7 + 64))
  {
    if (mlir::mps::DequantizeOp::hasNDParams(&v40))
    {
      return 0;
    }

    v6 = v40;
    v7 = (*(v40 + 44) >> 23) & 1;
  }

  v8 = *(v6 + 16 * v7 + 64);
  v39 = v8;
  if (!v8)
  {
    v16 = a3;
LABEL_74:
    v51[0] = *(*(v6 + 72) + 24);
    v36 = v16;
    v53 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(v16 + 1, v3, v51, &v42, &v41);
    v37 = *(v40 + 72);
    v51[0] = *(v37 + 56);
    v50[0] = *(v37 + 88);
    __p = *(v37 + 120);
    FunctionType = mlir::func::FuncOp::getFunctionType(&v40);
    v38 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::mps::PermuteOp &,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(v36 + 1, *(a2 + 24), &v53, v51, v50, &__p, &FunctionType, &v39);
    (*(*v36 + 1))(v36, a2, v38);
    return 1;
  }

  v9 = *(*(*(v6 + 72) + 24) + 8);
  AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v42);
  v12 = v11;
  v13 = mlir::mps::ConstantOp::getAsAttribute(&v41);
  FunctionType = v8;
  v51[0] = AsAttribute;
  v51[1] = v12;
  v50[0] = v13;
  v50[1] = v14;
  mlir::IntegerAttr::getValue(&FunctionType, &v53);
  if (v54 > 0x40)
  {
    PositiveAxis = *v53;
    operator delete[](v53);
  }

  else if (v54)
  {
    PositiveAxis = (v53 << -v54) >> -v54;
  }

  else
  {
    PositiveAxis = 0;
  }

  mlir::ElementsAttr::value_begin<llvm::APInt>(v51, &v53);
  if (BYTE1(v53))
  {
    v17 = 0;
  }

  else
  {
    v17 = v55;
  }

  if (v53 == 1)
  {
    v18 = &v54[2 * v17];
    v49 = *(v18 + 2);
    if (v49 > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v18);
    }

    else
    {
      __p = *v18;
    }
  }

  else
  {
    (*(*v54 + 24))(&__p);
  }

  if ((v53 & 1) == 0)
  {
    v19 = v54;
    v54 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  if (v49 > 0x40)
  {
    v20 = *__p;
    operator delete[](__p);
  }

  else if (v49)
  {
    v20 = (__p << -v49) >> -v49;
  }

  else
  {
    v20 = 0;
  }

  mlir::ElementsAttr::value_begin<llvm::APInt>(v50, &v53);
  if (BYTE1(v53))
  {
    v21 = 0;
  }

  else
  {
    v21 = v55;
  }

  if (v53 == 1)
  {
    v22 = &v54[2 * v21];
    v49 = *(v22 + 2);
    if (v49 > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v22);
    }

    else
    {
      __p = *v22;
    }
  }

  else
  {
    (*(*v54 + 24))(&__p);
  }

  if ((v53 & 1) == 0)
  {
    v23 = v54;
    v54 = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  if (v49 > 0x40)
  {
    v24 = *__p;
    operator delete[](__p);
  }

  else if (v49)
  {
    v24 = (__p << -v49) >> -v49;
  }

  else
  {
    v24 = 0;
  }

  v16 = a3;
  if (((v20 ^ PositiveAxis) & 0x8000000000000000) == 0 && ((v24 ^ PositiveAxis) & 0x8000000000000000) == 0)
  {
LABEL_55:
    if (PositiveAxis == v20 || PositiveAxis == v24)
    {
      if (PositiveAxis == v20)
      {
        v31 = v50;
      }

      else
      {
        v31 = v51;
      }

      mlir::ElementsAttr::value_begin<mlir::IntegerAttr,void>(v31, &v53);
      if (BYTE1(v53))
      {
        v32 = 0;
      }

      else
      {
        v32 = v55;
      }

      if (v53 == 1)
      {
        v33 = v54[v32];
      }

      else
      {
        v33 = (*(*v54 + 24))(v54);
      }

      v29 = v56(v33);
      if ((v53 & 1) == 0)
      {
        v34 = v54;
        v54 = 0;
        if (v34)
        {
          v35 = v29;
          (*(*v34 + 8))(v34);
          v29 = v35;
        }
      }

      v16 = a3;
    }

    else
    {
      v29 = FunctionType;
    }

    v39 = v29;
    v6 = v40;
    goto LABEL_74;
  }

  v25 = (v9 & 0xFFFFFFFFFFFFFFF8);
  v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  if (v26)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v25 = 0;
  }

  v53 = v25;
  v54 = v26;
  if (v25 && mlir::CallOpInterface::getArgOperands(&v53))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&v53);
    v28 = v27;
    PositiveAxis = mlir::getPositiveAxis(PositiveAxis, v27);
    v20 = mlir::getPositiveAxis(v20, v28);
    v24 = mlir::getPositiveAxis(v24, v28);
    v16 = a3;
    goto LABEL_55;
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::TransposeOp::build(a1, v19, *a3, *a4 - 16, *a5 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
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

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::TransposeOp,mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::DequantizeOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v17 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id && (*v4 ? (v7 = *v4 == DefiningOp) : (v7 = 1), v7))
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
  v17 = *(*(**(a2 + 8) + 72) + 56);
  v10 = mlir::Value::getDefiningOp(&v17);
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
  v17 = *(*(**(a2 + 8) + 72) + 88);
  result = mlir::Value::getDefiningOp(&v17);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v13 || *v13 == result))
    {
      *v13 = result;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = v15 & **a2;
  if (!result)
  {
    v16 = 0;
  }

  **a2 = v16;
  return result;
}

uint64_t mlir::ElementsAttr::value_begin<llvm::APInt>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<llvm::APInt>(a1, &v6);
  if (v9 != 1)
  {
    mlir::ElementsAttr::value_begin<llvm::APInt>(&v6, a1);
  }

  *a2 = v6;
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t mlir::ElementsAttr::try_value_begin<llvm::APInt>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a1 = v5;
  }

  result = mlir::BranchOpInterface::getSuccessorOperands(a1, mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id);
  if (v9 == 1)
  {
    v4 = v8;
    if (v6 != 1)
    {
      v8 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if ((v6 & 1) == 0)
    {
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

llvm::raw_ostream *mlir::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v4 = a2;
  mlir::Attribute::print(&v4, a1, 0);
  return a1;
}

void *mlir::ElementsAttr::value_begin<mlir::IntegerAttr,void>@<X0>(mlir::CallOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::getValues<mlir::IntegerAttr,void>(a1, v5);
  v4 = v5[0];
  *a2 = v5[0];
  *(a2 + 1) = v5[1];
  if (v4 == 1)
  {
    *(a2 + 8) = v6;
  }

  else
  {
    result = (*(*v6 + 16))(v6);
  }

  *(a2 + 16) = v7;
  if ((v8 & 1) == 0)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v5[0] & 1) == 0)
  {
    result = v6;
    v6 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *mlir::ElementsAttr::getValues<mlir::IntegerAttr,void>@<X0>(mlir::CallOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  ArgOperands = mlir::CallOpInterface::getArgOperands(a1);
  v6 = v5;
  mlir::ElementsAttr::getValues<mlir::Attribute>(a1, &v11);
  result = llvm::map_range<mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>,mlir::IntegerAttr (*)(mlir::Attribute)>(&v11, _ZZNK4mlir12ElementsAttr9getValuesINS_11IntegerAttrEvEENS_6detail17ElementsAttrRangeIN4llvm15mapped_iteratorINS3_20ElementsAttrIteratorINS_9AttributeEEEPFT_S8_EDTclclsr3stdE7declvalISC_EEdeclL_ZNSt3__17declvalB8nn200100IS9_EEDTclsr3stdE9__declvalISA_ELi0EEEvEEEEEEEEvENUlS8_E_8__invokeES8_, v15);
  v8 = v15[0];
  *a2 = v15[0];
  *(a2 + 1) = v15[1];
  if (v8 == 1)
  {
    *(a2 + 8) = v16;
  }

  else
  {
    result = (*(*v16 + 16))(v16);
  }

  *(a2 + 16) = v17;
  v9 = v18;
  *(a2 + 32) = v18;
  *(a2 + 33) = v19;
  if (v9 == 1)
  {
    *(a2 + 40) = *v20;
    *(a2 + 56) = *&v20[16];
    *(a2 + 64) = ArgOperands;
    *(a2 + 72) = v6;
  }

  else
  {
    result = (*(**v20 + 16))(*v20);
    v10 = v18;
    *(a2 + 48) = *&v20[8];
    *(a2 + 64) = ArgOperands;
    *(a2 + 72) = v6;
    if ((v10 & 1) == 0)
    {
      result = *v20;
      *v20 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if ((v15[0] & 1) == 0)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v13 & 1) == 0)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v11 & 1) == 0)
  {
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *llvm::map_range<mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>,mlir::IntegerAttr (*)(mlir::Attribute)>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v20 = *result;
  v6 = v20;
  v7 = *(result + 1);
  v21 = v7;
  if (v20 == 1)
  {
    v22[0] = result[1];
  }

  else
  {
    result = (*(*result[1] + 16))(v22);
    v6 = v20;
    v7 = v21;
  }

  v8 = v4[2];
  v22[1] = v8;
  if (v6)
  {
    v9 = v22[0];
    v10 = v22[0];
  }

  else
  {
    v9 = 0;
    v10 = v22[0];
    v22[0] = 0;
  }

  v17 = *(v4 + 24);
  v11 = v17;
  v12 = *(v4 + 25);
  v18 = v12;
  if (v17 == 1)
  {
    v19[0] = v4[4];
  }

  else
  {
    result = (*(*v4[4] + 16))(v19);
    v11 = v17;
    v12 = v18;
  }

  v13 = v4[5];
  v19[1] = v13;
  if (v11)
  {
    v14 = v19[0];
    v15 = v19[0];
  }

  else
  {
    v14 = 0;
    v15 = v19[0];
    v19[0] = 0;
  }

  *a3 = v6;
  *(a3 + 1) = v7;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
  *(a3 + 24) = a2;
  *(a3 + 32) = v11;
  *(a3 + 33) = v12;
  *(a3 + 40) = v15;
  *(a3 + 48) = v13;
  v16 = v6 | (v9 == 0);
  *(a3 + 56) = a2;
  if ((v16 & 1) == 0)
  {
    result = (*(*v9 + 8))(v9);
  }

  if ((v11 & 1) == 0 && v14)
  {
    result = (*(*v14 + 8))(v14);
  }

  if ((v17 & 1) == 0)
  {
    result = v19[0];
    v19[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v16 & 1) == 0)
  {
    result = (*(*v9 + 8))(v9);
  }

  if ((v20 & 1) == 0)
  {
    result = v22[0];
    v22[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t mlir::ElementsAttr::getValues<mlir::Attribute>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  ArgOperands = mlir::CallOpInterface::getArgOperands(a1);
  v6 = v5;
  mlir::ElementsAttr::value_begin<mlir::Attribute>(a1, v12);
  NumElements = mlir::ElementsAttr::getNumElements(*a1, a1[1]);
  v9 = 257;
  v10 = 0;
  v11 = NumElements;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(a2, ArgOperands, v6, v12, &v9);
  if ((v9 & 1) == 0)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v12[0] & 1) == 0)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t mlir::ElementsAttr::value_begin<mlir::Attribute>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<mlir::Attribute>(a1, &v6);
  if (v9 != 1)
  {
    mlir::ElementsAttr::value_begin<mlir::Attribute>(&v6, a1);
  }

  *a2 = v6;
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5)
{
  v23 = *a4;
  v24 = a4[1];
  if (v23 == 1)
  {
    v25 = *(a4 + 1);
  }

  else
  {
    (*(**(a4 + 1) + 16))(&v25);
  }

  v26 = *(a4 + 2);
  v20 = *a5;
  v21 = a5[1];
  if (*a5 == 1)
  {
    v22[0] = *(a5 + 1);
  }

  else
  {
    (*(**(a5 + 1) + 16))(v22);
  }

  v9 = *(a5 + 2);
  v22[1] = v9;
  v10 = v23;
  if (v23 == 1)
  {
    v11 = v25;
    v12 = v25;
  }

  else
  {
    v11 = 0;
    v12 = v25;
    v25 = 0;
  }

  v13 = v22[0];
  if (v20 != 1)
  {
    v22[0] = 0;
  }

  v14 = v24;
  v15 = v26;
  if ((v23 & 1) == 0 && v11)
  {
    (*(*v11 + 8))(v11);
  }

  *a1 = v10;
  *(a1 + 1) = v14;
  if (v10)
  {
    *(a1 + 8) = v12;
  }

  else
  {
    (*(*v12 + 16))(v12);
  }

  *(a1 + 16) = v15;
  *(a1 + 24) = v20;
  *(a1 + 25) = v21;
  if (v20)
  {
    *(a1 + 32) = v13;
    *(a1 + 40) = v9;
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    (*(*v13 + 16))(v13);
    *(a1 + 40) = v9;
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    (*(*v13 + 8))(v13);
    if (v10)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_24:
  if ((v20 & 1) == 0)
  {
    v16 = v22[0];
    v22[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  if ((v23 & 1) == 0)
  {
    v17 = v25;
    v25 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  return a1;
}

uint64_t mlir::ElementsAttr::try_value_begin<mlir::Attribute>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<mlir::Attribute,llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a1 = v5;
  }

  result = mlir::BranchOpInterface::getSuccessorOperands(a1, mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id);
  if (v9 == 1)
  {
    v4 = v8;
    if (v6 != 1)
    {
      v8 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if ((v6 & 1) == 0)
    {
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

void mlir::mps::anonymous namespace::DivByConstant::~DivByConstant(mlir::mps::_anonymous_namespace_::DivByConstant *this)
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

uint64_t mlir::mps::anonymous namespace::DivByConstant::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id)
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

  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  ElementTypeOrSelf = *(v3 + 56);
  DefiningOp = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!DefiningOp)
  {
    return 0;
  }

  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    return 0;
  }

  v8 = DefiningOp;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8));
  if (!mlir::Type::isF32(&ElementTypeOrSelf))
  {
    return 0;
  }

  __p = mlir::getElementTypeOrSelf(v4);
  if (!mlir::Type::isF32(&__p))
  {
    return 0;
  }

  v9 = *(a2 + 24);
  v22 = v8;
  ElementTypeOrSelf = mlir::mps::ConstantOp::getAsAttribute(&v22);
  v29 = v10;
  __p = mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf);
  v26 = v11;
  isSplat = mlir::ElementsAttr::isSplat(&__p);
  v12 = mlir::RankedTensorType::get(0, 0, isSplat, 0);
  v24 = v12;
  if (mlir::Type::isIntOrIndex(&isSplat))
  {
    v13 = mlir::Type::isSignedInteger(&isSplat) || mlir::Type::isSignlessInteger(&isSplat);
    if (v12)
    {
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    }

    else
    {
      v16 = 0;
    }

    __p = mlir::AffineBinaryOpExpr::getRHS(&v24);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&__p);
    LODWORD(v26) = IntOrFloatBitWidth;
    if (IntOrFloatBitWidth > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, 1, v13);
    }

    else
    {
      __p = (IntOrFloatBitWidth != 0);
    }

    DenseElementsAttrOf = mlir::DenseElementsAttr::get(v12, v16, &__p, 1);
    if (v26 >= 0x41 && __p)
    {
      operator delete[](__p);
    }
  }

  else
  {
    if (v12)
    {
      v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    }

    else
    {
      v15 = 0;
    }

    DenseElementsAttrOf = mlir::createDenseElementsAttrOfType<float>(v12, v15, 1.0);
  }

  v18 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v9, &DenseElementsAttrOf);
  if (*(v18 + 36))
  {
    v19 = v18 - 16;
  }

  else
  {
    v19 = 0;
  }

  __p = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
  isSplat = v8;
  ElementTypeOrSelf = v30;
  v29 = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::mps::DivideOp,mlir::Value,mlir::mps::ConstantOp>(a3 + 8, &ElementTypeOrSelf, v9, &__p, &isSplat);
  v20 = *ElementTypeOrSelf;
  if (ElementTypeOrSelf != v30)
  {
    free(ElementTypeOrSelf);
  }

  ElementTypeOrSelf = v20;
  __p = v4;
  v21 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>((a3 + 8), *(a2 + 24), &__p, &ElementTypeOrSelf);
  (*(*a3 + 8))(a3, a2, v21);
  return 1;
}

void mlir::OpBuilder::createOrFold<mlir::mps::DivideOp,mlir::Value,mlir::mps::ConstantOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::mps::DivideOp,mlir::Value,mlir::mps::ConstantOp>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a3, v11);
  mlir::mps::ATan2Op::build(a1, v31, *a4, *a5 - 16);
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

llvm::APFloatBase *mlir::createDenseElementsAttrOfType<float>(llvm::APFloatBase *a1, uint64_t a2, float a3)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v17 = a1;
  v18 = a2;
  isSplat = mlir::ElementsAttr::isSplat(&v17);
  if (!mlir::Type::isF16(&isSplat))
  {
    isSplat = mlir::ElementsAttr::isSplat(&v17);
    if (!mlir::Type::isF32(&isSplat))
    {
      isSplat = mlir::ElementsAttr::isSplat(&v17);
      mlir::Type::isIntOrIndex(&isSplat);
      return 0;
    }

    v10 = v17;
    v11 = v18;
    v12 = llvm::detail::IEEEFloat::IEEEFloat(v19, a3);
    v13 = llvm::APFloatBase::IEEEsingle(v12);
    llvm::APFloat::Storage::Storage(v21, v19, v13);
    llvm::detail::IEEEFloat::~IEEEFloat(v19);
    v8 = mlir::DenseElementsAttr::get(v10, v11, &isSplat, 1);
    v14 = v21[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v8) != v14)
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v21);
      return v8;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    return v8;
  }

  v16 = 0;
  v4 = llvm::detail::IEEEFloat::IEEEFloat(v19, a3);
  v5 = llvm::APFloatBase::IEEEsingle(v4);
  llvm::APFloat::Storage::Storage(v21, v19, v5);
  llvm::detail::IEEEFloat::~IEEEFloat(v19);
  v7 = llvm::APFloatBase::IEEEhalf(v6);
  llvm::APFloat::convert(&isSplat, v7, 1, &v16);
  v8 = mlir::DenseElementsAttr::get(v17, v18, &isSplat, 1);
  v9 = v21[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v8) == v9)
  {
    goto LABEL_8;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(v21);
  return v8;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v7);
  v9 = *a3;
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  mlir::mps::ConstantOp::build(a1, v17, v9, v10);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
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

void mlir::mps::anonymous namespace::AddSubConsts::~AddSubConsts(mlir::mps::_anonymous_namespace_::AddSubConsts *this)
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

void mlir::OpBuilder::createOrFold<mlir::mps::SubtractOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::mps::SubtractOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a3, v11);
  mlir::mps::ATan2Op::build(a1, v31, *a4 - 16, *a5 - 16);
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

uint64_t mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeInstanceNorm::~CanonicalizeInstanceNorm(mlir::mps::_anonymous_namespace_::CanonicalizeInstanceNorm *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeInstanceNorm::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::Float32Type **a3)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = a2;
  v21 = 0;
  v20[0] = &v22;
  v20[1] = &v21;
  v20[2] = 0;
  v18[0] = &v22;
  v18[1] = &v21;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v14[0] = &v22;
  v14[1] = v20;
  v14[2] = v18;
  v14[3] = &v17;
  v14[4] = &v16;
  v15 = 0;
  v24 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(a2 + 68) != 5)
  {
    return 0;
  }

  LOBYTE(v13) = 1;
  v25 = &v13;
  v26[0] = &v24;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::any_value_binder *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionVarianceOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::NormalizationOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionVarianceOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::any_value_binder *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMeanOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionVarianceOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *> & *)#1},0ul,1ul,2ul,3ul,4ul>(v14, &v25);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v15 = v24;
  v25 = v19;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v25))
  {
    return 0;
  }

  v24 = v19;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v24))
  {
    return 0;
  }

  v6 = *(a2 + 24);
  v12 = v21;
  v13 = v22;
  mlir::mps::InstanceNormOp::getEpsilon(&v23, &v25);
  v24 = mlir::OpBuilder::create<mlir::mps::InstanceNormOp,mlir::Value,mlir::Value,llvm::APFloat>(a3 + 1, v6, &v13, &v12, &v25);
  v7 = v26[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v24) == v7)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v26);
  }

  v8 = *(v23 + 24);
  v13 = v17;
  v9 = a3;
  v25 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::InstanceNormOp &,mlir::Value>(a3 + 1, v8, &v24, &v13);
  v10 = v23;
  v13 = v16;
  v11 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::MultiplyOp &,mlir::Value>(v9 + 1, *(v23 + 24), &v25, &v13);
  (*(*v9 + 1))(v9, v10, v11);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::InstanceNormOp,mlir::Value,mlir::Value,llvm::APFloat>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::InstanceNormOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::InstanceNormOp,mlir::Value,mlir::Value,llvm::APFloat>(v27, v24, v23);
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

  mlir::mps::InstanceNormOp::build(a1, v27, v13, v14, v25);
  if (v18 == v26.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v26);
  }

  v19 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::InstanceNormOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::InstanceNormOp &,mlir::Value>(mlir::Float32Type **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::MultiplyOp &,mlir::Value>(mlir::Float32Type **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeMultiply::~CanonicalizeMultiply(mlir::mps::_anonymous_namespace_::CanonicalizeMultiply *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeMultiply::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 72);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  v18 = v7;
  v19 = v6;
  if (v6 != v7)
  {
    v8 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v9 = 0;
    }

    v17[0] = v8;
    v17[1] = v9;
    if (!mlir::CallOpInterface::getArgOperands(v17))
    {
      return 0;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v17);
    if (v13)
    {
      v14 = 8 * v13;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }

LABEL_11:
    if (mlir::isConstantFPOne(v6) && v17[0] == (v7[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v16 = &v18;
    }

    else
    {
      if (!mlir::isConstantFPOne(v7) || v17[0] != (v6[1] & 0xFFFFFFFFFFFFFFF8))
      {
        return 0;
      }

      v16 = &v19;
    }

    v11 = 1;
    (**a3)(a3, a2, v16, 1);
    return v11;
  }

  v17[0] = v6;
  v10 = mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value>((a3 + 8), *(a2 + 24), v17);
  (*(*a3 + 8))(a3, a2, v10);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeAdd::~CanonicalizeAdd(mlir::mps::_anonymous_namespace_::CanonicalizeAdd *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeAdd::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, uint64_t *, uint64_t))
{
  v5 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v18[0] = v5;
  v18[1] = v6;
  if (!mlir::CallOpInterface::getArgOperands(v18))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v18);
  if (v8)
  {
    v9 = 8 * v8;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v10 = *(a2 + 72);
  v11 = *(v10 + 24);
  v12 = *(v10 + 56);
  v16 = v12;
  v17 = v11;
  if (mlir::isConstantFPValue(v11, 0.0) && v18[0] == (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v15 = &v16;
LABEL_17:
    v13 = 1;
    (**a3)(a3, a2, v15, 1);
    return v13;
  }

  if (mlir::isConstantFPValue(v12, 0.0) && v18[0] == (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v15 = &v17;
    goto LABEL_17;
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeReshapeChain<mlir::mps::ReshapeOp>::~CanonicalizeReshapeChain(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeReshapeChain<mlir::mps::ReshapeOp>::~CanonicalizeReshapeChain(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeReshapeChain<mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = 0;
  v22 = 0;
  v23 = 0;
  v19 = v12;
  v20 = &v23;
  v21 = 0;
  v16 = &v19;
  v17 = &v22;
  v18 = 0;
  if (mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(&v16, a2))
  {
    v14 = v22;
    v15 = v12[0];
    v13 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v5 = *(a2 + 24);
    v6 = (a3 + 8);
    v7 = &v15;
    v8 = &v14;
    v9 = &v13;
LABEL_3:
    v10 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v6, v5, v7, v8, v9);
    (*(*a3 + 8))(a3, a2, v10);
    return 1;
  }

  v22 = 0;
  v23 = a2;
  v15 = 0;
  v12[0] = &v22;
  v12[1] = 0;
  v19 = v12;
  v20 = &v15;
  v21 = 0;
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id && (*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 2)
  {
    LOBYTE(v14) = 1;
    v16 = &v14;
    v17 = &v23;
    mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> & *)#1},0ul,1ul>(&v19, &v16);
    if (v14)
    {
      v21 = v23;
      v16 = v22;
      v23 = v15;
      v14 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
      v5 = *(a2 + 24);
      v6 = (a3 + 8);
      v7 = &v16;
      v8 = &v23;
      v9 = &v14;
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReshapeOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
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

void *mlir::mps::anonymous namespace::CanonicalizeReshapeChain<mlir::mps::SqueezeOp>::~CanonicalizeReshapeChain(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeReshapeChain<mlir::mps::SqueezeOp>::~CanonicalizeReshapeChain(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeReshapeChain<mlir::mps::SqueezeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = 0;
  v22 = 0;
  v23 = 0;
  v19 = v12;
  v20 = &v23;
  v21 = 0;
  v16 = &v19;
  v17 = &v22;
  v18 = 0;
  if (mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SqueezeOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(&v16, a2))
  {
    v14 = v22;
    v15 = v12[0];
    v13 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v5 = *(a2 + 24);
    v6 = (a3 + 8);
    v7 = &v15;
    v8 = &v14;
    v9 = &v13;
LABEL_3:
    v10 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v6, v5, v7, v8, v9);
    (*(*a3 + 8))(a3, a2, v10);
    return 1;
  }

  v22 = 0;
  v23 = a2;
  v15 = 0;
  v12[0] = &v22;
  v12[1] = 0;
  v19 = v12;
  v20 = &v15;
  v21 = 0;
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id && (*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 2)
  {
    LOBYTE(v14) = 1;
    v16 = &v14;
    v17 = &v23;
    mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SqueezeOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SqueezeOp,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SqueezeOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> & *)#1},0ul,1ul>(&v19, &v16);
    if (v14)
    {
      v21 = v23;
      v16 = v22;
      v23 = v15;
      v14 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
      v5 = *(a2 + 24);
      v6 = (a3 + 8);
      v7 = &v16;
      v8 = &v23;
      v9 = &v14;
      goto LABEL_3;
    }
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeReshapeChain<mlir::mps::ExpandDimsOp>::~CanonicalizeReshapeChain(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeReshapeChain<mlir::mps::ExpandDimsOp>::~CanonicalizeReshapeChain(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeReshapeChain<mlir::mps::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = 0;
  v22 = 0;
  v23 = 0;
  v19 = v12;
  v20 = &v23;
  v21 = 0;
  v16 = &v19;
  v17 = &v22;
  v18 = 0;
  if (mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExpandDimsOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(&v16, a2))
  {
    v14 = v22;
    v15 = v12[0];
    v13 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v5 = *(a2 + 24);
    v6 = (a3 + 8);
    v7 = &v15;
    v8 = &v14;
    v9 = &v13;
LABEL_3:
    v10 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v6, v5, v7, v8, v9);
    (*(*a3 + 8))(a3, a2, v10);
    return 1;
  }

  v22 = 0;
  v23 = a2;
  v15 = 0;
  v12[0] = &v22;
  v12[1] = 0;
  v19 = v12;
  v20 = &v15;
  v21 = 0;
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id && (*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 2)
  {
    LOBYTE(v14) = 1;
    v16 = &v14;
    v17 = &v23;
    mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExpandDimsOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExpandDimsOp,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExpandDimsOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> & *)#1},0ul,1ul>(&v19, &v16);
    if (v14)
    {
      v21 = v23;
      v16 = v22;
      v23 = v15;
      v14 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
      v5 = *(a2 + 24);
      v6 = (a3 + 8);
      v7 = &v16;
      v8 = &v23;
      v9 = &v14;
      goto LABEL_3;
    }
  }

  return 0;
}

void mlir::mps::anonymous namespace::CanonicalizePower::~CanonicalizePower(mlir::mps::_anonymous_namespace_::CanonicalizePower *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizePower::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 56);
  if (mlir::isConstantFPTwo(v5))
  {
    v17 = *(*(a2 + 72) + 24);
    v7 = mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value>((a3 + 8), *(a2 + 24), &v17);
  }

  else
  {
    LODWORD(v6) = 0.5;
    if (mlir::isConstantFPValue(v5, v6))
    {
      v17 = *(*(a2 + 72) + 24);
      v7 = mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value>((a3 + 8), *(a2 + 24), &v17);
    }

    else
    {
      LODWORD(v8) = -0.5;
      if (mlir::isConstantFPValue(v5, v8))
      {
        v17 = *(*(a2 + 72) + 24);
        v7 = mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>((a3 + 8), *(a2 + 24), &v17);
      }

      else
      {
        LODWORD(v9) = -1.0;
        if (mlir::isConstantFPValue(v5, v9))
        {
          v17 = *(*(a2 + 72) + 24);
          v7 = mlir::OpBuilder::create<mlir::mps::ReciprocalOp,mlir::Value>((a3 + 8), *(a2 + 24), &v17);
        }

        else
        {
          if (!mlir::isConstantFPZero(v5))
          {
            ElementTypeOrSelf = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
            v17 = v5;
            result = mlir::Value::getDefiningOp(&v17);
            if (!result)
            {
              return result;
            }

            if ((mlir::detail::constant_int_predicate_matcher::match(&ElementTypeOrSelf, result) & 1) == 0)
            {
              return 0;
            }
          }

          v11 = *(a2 + 24);
          LODWORD(ElementTypeOrSelf) = 1;
          v17 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a3 + 8), v11, &ElementTypeOrSelf) - 16);
          v12 = *(a2 + 24);
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(a2 + 72) + 24));
          v17 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a3 + 8), v12, &v17, &ElementTypeOrSelf) - 16);
          v13 = *(a2 + 24);
          v14 = *(*(a2 + 72) + 24);
          v15 = mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a3 + 8), v13, &v14);
          ElementTypeOrSelf = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::mps::ShapeOp>((a3 + 8), v13, &v17, &v15);
          v15 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
          v7 = mlir::OpBuilder::create<mlir::mps::TypeConstraintOp,mlir::mps::BroadcastToOp &,mlir::Type>((a3 + 8), *(a2 + 24), &ElementTypeOrSelf, &v15);
        }
      }
    }
  }

  (*(*a3 + 8))(a3, a2, v7);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(uint64_t **a1, uint64_t a2, unsigned int *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ConstantOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::CastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::mps::ShapeOp>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::mps::ShapeOp>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::BroadcastToOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ShapeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ShapeOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ShapeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReciprocalOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReciprocalOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id)
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

uint64_t mlir::detail::constant_int_predicate_matcher::match(uint64_t (**this)(void **), mlir::Operation *a2)
{
  v12 = 1;
  p_p = &__p;
  __p = 0;
  v14 = 0;
  v13 = &v14;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v13, a2) && ((v4 = *(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136), v4 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v5 = v4 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v5 = 1), !v5 ? (v6 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v6 = 1), !v6 ? (v7 = v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v7 = 1), v7))
  {
    result = mlir::detail::constant_int_value_binder::match(&p_p, v14);
    if (result)
    {
      result = (*this)(&__p);
    }
  }

  else
  {
    result = 0;
  }

  if (v12 >= 0x41)
  {
    if (__p)
    {
      v9 = result;
      operator delete[](__p);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::TypeConstraintOp,mlir::mps::BroadcastToOp &,mlir::Type>(mlir::UnknownLoc **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TypeConstraintOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::TypeConstraintOp,mlir::mps::BroadcastToOp &,mlir::Type>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::TypeConstraintOp::build(a1, v17, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TypeConstraintOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeSwish::~CanonicalizeSwish(mlir::mps::_anonymous_namespace_::CanonicalizeSwish *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeSwish::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = 0;
  v14 = 0;
  v12 = 0;
  v13[0] = &v14;
  v10 = v13;
  v11 = &v14;
  v18 = a2;
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id && (*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 2 && (v17 = 1, v15 = &v17, v16 = &v18, mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SigmoidOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SigmoidOp,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SigmoidOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> & *)#1},0ul,1ul>(&v10, &v15), (v17 & 1) != 0))
  {
    v12 = v18;
    v15 = v14;
    v5 = *(a2 + 24);
    v6 = (a3 + 8);
    v7 = &v15;
  }

  else
  {
    v12 = 0;
    v13[0] = 0;
    v15 = v13;
    v16 = 0;
    v10 = v13;
    v11 = &v15;
    result = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MultiplyOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SigmoidOp,mlir::detail::any_value_binder>>::match(&v10, a2);
    if (!result)
    {
      return result;
    }

    v18 = v13[0];
    v5 = *(a2 + 24);
    v6 = (a3 + 8);
    v7 = &v18;
  }

  v9 = mlir::OpBuilder::create<mlir::mps::SwishOp,mlir::Value>(v6, v5, v7);
  (*(*a3 + 8))(a3, a2, v9);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SwishOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SwishOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SwishOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SwishOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeBatchNorm::~CanonicalizeBatchNorm(mlir::mps::_anonymous_namespace_::CanonicalizeBatchNorm *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeBatchNorm::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::Float32Type **a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = a2;
  v3 = *(a2 + 24);
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46[0] = &v53;
  v46[1] = &v52;
  v44[0] = v46;
  v44[1] = &v51;
  v44[2] = &v50;
  v44[3] = &v49;
  v44[4] = &v48;
  v45 = 0;
  *&v59 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(a2 + 68) != 5)
  {
    return 0;
  }

  LOBYTE(v57) = 1;
  *&v55 = &v57;
  *(&v55 + 1) = &v59;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::NormalizationOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> & *)#1},0ul,1ul,2ul,3ul,4ul>(v44, &v55);
  if ((v57 & 1) == 0)
  {
    return 0;
  }

  v45 = v59;
  v43 = v47;
  if (mlir::mps::Conv3DOp::getGroups(&v43) != 1)
  {
    return 0;
  }

  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43) == 1)
  {
    v5 = *(v51 + 36) ? v51 - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
    v55 = xmmword_1E097BBF0;
    v56[0] = unk_1E097BC00;
    if (!mlir::mps::matchShape<mlir::Value>(NextResultAtOffset, &v55, 4, -1))
    {
      return 0;
    }

    v7 = *(v50 + 36) ? v50 - 16 : 0;
    v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
    v59 = xmmword_1E097BBF0;
    v60 = unk_1E097BC00;
    if (!mlir::mps::matchShape<mlir::Value>(v8, &v59, 4, -1))
    {
      return 0;
    }

    v9 = *(v49 + 36) ? v49 - 16 : 0;
    v10 = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
    v57 = xmmword_1E097BBF0;
    v58 = unk_1E097BC00;
    if ((mlir::mps::matchShape<mlir::Value>(v10, &v57, 4, -1) & 1) == 0)
    {
      return 0;
    }
  }

  if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43))
  {
    v13 = *(v51 + 36) ? v51 - 16 : 0;
    v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
    v55 = xmmword_1E097BC30;
    v56[0] = unk_1E097BC40;
    if (!mlir::mps::matchShape<mlir::Value>(v14, &v55, 4, -1))
    {
      return 0;
    }

    v15 = *(v50 + 36) ? v50 - 16 : 0;
    v16 = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
    v59 = xmmword_1E097BC30;
    v60 = unk_1E097BC40;
    if (!mlir::mps::matchShape<mlir::Value>(v16, &v59, 4, -1))
    {
      return 0;
    }

    v17 = *(v49 + 36) ? v49 - 16 : 0;
    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
    v57 = xmmword_1E097BC30;
    v58 = unk_1E097BC40;
    if ((mlir::mps::matchShape<mlir::Value>(v18, &v57, 4, -1) & 1) == 0)
    {
      return 0;
    }
  }

  mlir::mps::InstanceNormOp::getEpsilon(&v54, &v55);
  LODWORD(v59) = llvm::APFloat::convertToFloat(&v55);
  v11 = mlir::OpBuilder::create<mlir::mps::ConstantOp,float>(a3 + 1, v3, &v59);
  *&v57 = v11 - 16;
  v12 = *(&v55 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(v11) == v12)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v55 + 8));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v55 + 8));
  }

  *&v55 = mlir::getElementTypeOrSelf(v50 - 16);
  *&v57 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 1, v3, &v57, &v55) - 16;
  if (*(v50 + 36))
  {
    v20 = v50 - 16;
  }

  else
  {
    v20 = 0;
  }

  v42 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43) || mlir::mps::Conv3DOp::getWeightsLayout(&v43) != 3)
  {
    if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43) || mlir::mps::Conv3DOp::getWeightsLayout(&v43) != 2)
    {
      goto LABEL_48;
    }

    v21 = &xmmword_1E097BC10;
  }

  else
  {
    v21 = &xmmword_1E097BBF0;
  }

  v22 = v21[1];
  v59 = *v21;
  v60 = v22;
  llvm::SmallVector<long long,6u>::SmallVector(&v55, &v59, 4);
  v42 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, v3, &v42, &v55) - 16;
  if (v55 != v56)
  {
    free(v55);
  }

LABEL_48:
  v41 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 1, v3, &v42, &v57);
  v40 = mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::mps::AddOp &>((a3 + 1), v3, &v41);
  if (*(v49 + 36))
  {
    v23 = v49 - 16;
  }

  else
  {
    v23 = 0;
  }

  v39 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43) && mlir::mps::Conv3DOp::getWeightsLayout(&v43) == 3)
  {
    v24 = &xmmword_1E097BBF0;
    goto LABEL_57;
  }

  if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43) && mlir::mps::Conv3DOp::getWeightsLayout(&v43) == 2)
  {
    v24 = &xmmword_1E097BC10;
LABEL_57:
    v25 = v24[1];
    v59 = *v24;
    v60 = v25;
    llvm::SmallVector<long long,6u>::SmallVector(&v55, &v59, 4);
    v39 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, v3, &v39, &v55) - 16;
    if (v55 != v56)
    {
      free(v55);
    }
  }

  v26 = a3;
  *&v59 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::ReciprocalSquareRootOp &>(a3 + 1, v3, &v39, &v40) - 16;
  *&v55 = mlir::getElementTypeOrSelf(v52 - 16);
  v38 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 1, v3, &v59, &v55);
  *&v55 = v52;
  v37 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::CastOp &>(a3 + 1, v3, &v55, &v38);
  *&v55 = v53;
  Groups = mlir::mps::Conv3DOp::getGroups(&v43);
  Strides = mlir::mps::Conv3DOp::getStrides(&v43);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v43);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v43);
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v43);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v43);
  v36 = mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::mps::MultiplyOp &,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(a3 + 1, v3, &v55, &v37, &Groups, &Strides, &InputAttributeNames, &Rewriter, &PaddingStyle, &StorageType, &WeightsLayout);
  if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(&v43))
  {
    *&v55 = v56;
    v56[0] = xmmword_1E097BC30;
    v56[1] = unk_1E097BC40;
    *(&v55 + 1) = 0x600000004;
    *&v59 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, v3, &v59, &v55) - 16;
    if (v55 != v56)
    {
      free(v55);
    }

    v26 = a3;
  }

  Strides = v51;
  Groups = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::ReciprocalSquareRootOp &>(v26 + 1, v3, &v59, &Strides);
  *&v55 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::mps::Conv2DOp &,mlir::mps::MultiplyOp>(v26 + 1, v3, &v36, &Groups);
  v27 = v54;
  Groups = v48;
  v28 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::SubtractOp &,mlir::mps::ConstantOp>(v26 + 1, *(v54 + 24), &v55, &Groups);
  (*(*v26 + 1))(v26, v27, v28);
  return 1;
}

uint64_t mlir::mps::matchShape<mlir::Value>(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v5)
  {
    goto LABEL_5;
  }

  v4 = *(*v5 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v17 = v5;
  if (v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    Value = mlir::ArrayAttr::getValue(&v17);
    v13 = v12;
    v14 = mlir::ArrayAttr::getValue(&v17);
    if (v15 == a3 && !memcmp(v14, a2, 8 * a3))
    {
      v6 = 0;
      LODWORD(v4) = 1;
      return (v6 | v4) & 1;
    }

    if (a4 < 1 || v13 == a4)
    {
      if (!v13)
      {
LABEL_18:
        LODWORD(v4) = 0;
        v6 = 1;
        return (v6 | v4) & 1;
      }

      while (1)
      {
        v16 = *(a2 + v13 - 1);
        if (v16 != -1 && v16 != *(Value - 8 + 8 * v13))
        {
          break;
        }

        if (!--v13)
        {
          goto LABEL_18;
        }
      }
    }

    v6 = 0;
    LODWORD(v4) = 0;
  }

  else
  {
LABEL_5:
    v6 = 1;
  }

  return (v6 | v4) & 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,float>(mlir::Float32Type **a1, uint64_t a2, float *a3)
{
  v16[38] = *MEMORY[0x1E69E9840];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(v16, v15, v14);
  }

  mlir::OperationState::OperationState(v16, a2, v7);
  mlir::mps::ConstantOp::build(a1, v16, v9, *a3);
  v10 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v11;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ReshapeOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
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

void *llvm::SmallVector<long long,6u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  v5 = (8 * a3) >> 3;
  if (v5 >= 7)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::mps::AddOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::ReciprocalSquareRootOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::CastOp &>(mlir::Float32Type **a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3 - 16, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::mps::MultiplyOp &,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(uint64_t **a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v20);
  mlir::mps::Conv2DOp::build(a1, v28, *a3, *a4 - 16, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::mps::Conv2DOp &,mlir::mps::MultiplyOp>(mlir::Float32Type **a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::mps::SubtractOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3 - 16, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id)
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

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::NormalizationOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> & *)#1},0ul,1ul,2ul,3ul,4ul>(uint64_t a1, uint64_t a2)
{
  **a2 &= mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(**(a2 + 8), 0, *a1);
  v4 = *(a1 + 8);
  v21 = *(*(**(a2 + 8) + 72) + 56);
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
  v9 = *(a1 + 16);
  v21 = *(*(**(a2 + 8) + 72) + 88);
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
  v13 = *(a1 + 24);
  v21 = *(*(**(a2 + 8) + 72) + 120);
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
  v17 = *(a1 + 32);
  v21 = *(*(**(a2 + 8) + 72) + 152);
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

uint64_t mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::SubtractOp &,mlir::mps::ConstantOp>(mlir::Float32Type **a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3 - 16, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeBatchNormInference::~CanonicalizeBatchNormInference(mlir::mps::_anonymous_namespace_::CanonicalizeBatchNormInference *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeBatchNormInference::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::Float32Type **a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v56 = 0;
  v57 = a2;
  v3 = *(a2 + 24);
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v48[0] = &v56;
  v48[1] = &v55;
  v49 = 0;
  v47[1] = &v50;
  v47[2] = 0;
  v45[0] = v47;
  v45[1] = &v54;
  v45[2] = &v53;
  v45[3] = &v52;
  v45[4] = &v51;
  v46 = 0;
  v47[0] = v48;
  *&v63 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(a2 + 68) != 5)
  {
    return 0;
  }

  LOBYTE(v61) = 1;
  *&v58 = &v61;
  *(&v58 + 1) = &v63;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BiasAddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::any_value_binder> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::NormalizationOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BiasAddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::any_value_binder>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BiasAddOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::any_value_binder> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> & *)#1},0ul,1ul,2ul,3ul,4ul>(v45, &v58);
  if ((v61 & 1) == 0)
  {
    return 0;
  }

  v46 = v63;
  v44 = v49;
  if (mlir::mps::Conv3DOp::getGroups(&v44) != 1)
  {
    return 0;
  }

  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v44) == 1)
  {
    v6 = *(v54 + 36) ? v54 - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    v58 = xmmword_1E097BBF0;
    v59 = unk_1E097BC00;
    if (!mlir::mps::matchShape<mlir::Value>(NextResultAtOffset, &v58, 4, -1))
    {
      return 0;
    }

    v8 = *(v53 + 36) ? v53 - 16 : 0;
    v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    v63 = xmmword_1E097BBF0;
    v64 = unk_1E097BC00;
    if (!mlir::mps::matchShape<mlir::Value>(v9, &v63, 4, -1))
    {
      return 0;
    }

    v10 = *(v52 + 36) ? v52 - 16 : 0;
    v11 = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
    v61 = xmmword_1E097BBF0;
    v62 = unk_1E097BC00;
    if ((mlir::mps::matchShape<mlir::Value>(v11, &v61, 4, -1) & 1) == 0)
    {
      return 0;
    }
  }

  if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(&v44))
  {
    v14 = *(v54 + 36) ? v54 - 16 : 0;
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
    v58 = xmmword_1E097BC30;
    v59 = unk_1E097BC40;
    if (!mlir::mps::matchShape<mlir::Value>(v15, &v58, 4, -1))
    {
      return 0;
    }

    v16 = *(v53 + 36) ? v53 - 16 : 0;
    v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
    v63 = xmmword_1E097BC30;
    v64 = unk_1E097BC40;
    if (!mlir::mps::matchShape<mlir::Value>(v17, &v63, 4, -1))
    {
      return 0;
    }

    v18 = *(v52 + 36) ? v52 - 16 : 0;
    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
    v61 = xmmword_1E097BC30;
    v62 = unk_1E097BC40;
    if ((mlir::mps::matchShape<mlir::Value>(v19, &v61, 4, -1) & 1) == 0)
    {
      return 0;
    }
  }

  mlir::mps::InstanceNormOp::getEpsilon(&v57, &v58);
  LODWORD(v63) = llvm::APFloat::convertToFloat(&v58);
  v12 = mlir::OpBuilder::create<mlir::mps::ConstantOp,float>(a3 + 1, v3, &v63);
  *&v61 = v12 - 16;
  v13 = *(&v58 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(v12) == v13)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v58 + 8));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&v58 + 8));
  }

  *&v58 = mlir::getElementTypeOrSelf(v53 - 16);
  *&v61 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 1, v3, &v61, &v58) - 16;
  if (*(v53 + 36))
  {
    v20 = v53 - 16;
  }

  else
  {
    v20 = 0;
  }

  v43 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v44) || mlir::mps::Conv3DOp::getWeightsLayout(&v44) != 3)
  {
    if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v44) || mlir::mps::Conv3DOp::getWeightsLayout(&v44) != 2)
    {
      goto LABEL_48;
    }

    v21 = &xmmword_1E097BC10;
  }

  else
  {
    v21 = &xmmword_1E097BBF0;
  }

  v22 = v21[1];
  v63 = *v21;
  v64 = v22;
  llvm::SmallVector<long long,6u>::SmallVector(&v58, &v63, 4);
  v43 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, v3, &v43, &v58) - 16;
  if (v58 != &v59)
  {
    free(v58);
  }

LABEL_48:
  v42 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 1, v3, &v43, &v61);
  v41 = mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::mps::AddOp &>((a3 + 1), v3, &v42);
  if (*(v52 + 36))
  {
    v23 = v52 - 16;
  }

  else
  {
    v23 = 0;
  }

  v40 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(&v44) && mlir::mps::Conv3DOp::getWeightsLayout(&v44) == 3)
  {
    v24 = &xmmword_1E097BBF0;
    goto LABEL_57;
  }

  if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(&v44) && mlir::mps::Conv3DOp::getWeightsLayout(&v44) == 2)
  {
    v24 = &xmmword_1E097BC10;
LABEL_57:
    v25 = v24[1];
    v63 = *v24;
    v64 = v25;
    llvm::SmallVector<long long,6u>::SmallVector(&v58, &v63, 4);
    v40 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, v3, &v40, &v58) - 16;
    if (v58 != &v59)
    {
      free(v58);
    }
  }

  v26 = a3;
  *&v63 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::ReciprocalSquareRootOp &>(a3 + 1, v3, &v40, &v41) - 16;
  *&v58 = mlir::getElementTypeOrSelf(v55 - 16);
  v39 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 1, v3, &v63, &v58);
  *&v58 = v55;
  v38 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::CastOp &>(a3 + 1, v3, &v58, &v39);
  *&v58 = v56;
  Groups = mlir::mps::Conv3DOp::getGroups(&v44);
  Strides = mlir::mps::Conv3DOp::getStrides(&v44);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v44);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v44);
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v44);
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v44);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v44);
  v27 = mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::mps::MultiplyOp &,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(a3 + 1, v3, &v58, &v38, &Groups, &Strides, &InputAttributeNames, &Rewriter, &PaddingStyle, &StorageType, &WeightsLayout);
  Groups = v50;
  v37 = v27;
  if (!mlir::mps::MaterializeSparseTensorOp::getStorageType(&v44))
  {
    *&v58 = &v59;
    v59 = xmmword_1E097BC30;
    v60 = unk_1E097BC40;
    *(&v58 + 1) = 0x600000004;
    *&v63 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, v3, &v63, &v58) - 16;
    if (v58 != &v59)
    {
      free(v58);
    }

    *&v58 = &v59;
    v59 = xmmword_1E097BC30;
    v60 = unk_1E097BC40;
    *(&v58 + 1) = 0x600000004;
    Groups = (mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(a3 + 1, v3, &Groups, &v58) - 16);
    if (v58 != &v59)
    {
      free(v58);
    }

    v26 = a3;
  }

  Rewriter = v54;
  InputAttributeNames = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::mps::ConstantOp,mlir::Value &>(v26 + 1, v3, &Rewriter, &Groups);
  Strides = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::ReciprocalSquareRootOp &>(v26 + 1, v3, &v63, &InputAttributeNames);
  *&v58 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::mps::Conv2DOp &,mlir::mps::MultiplyOp>(v26 + 1, v3, &v37, &Strides);
  v28 = v57;
  Strides = v51;
  v29 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::SubtractOp &,mlir::mps::ConstantOp>(v26 + 1, *(v57 + 24), &v58, &Strides);
  (*(*v26 + 1))(v26, v28, v29);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::mps::ConstantOp,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::mps::SubtractOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeTranspose::~CanonicalizeTranspose(mlir::mps::_anonymous_namespace_::CanonicalizeTranspose *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeTranspose::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v91[4] = *MEMORY[0x1E69E9840];
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v75[0] = v5;
  v75[1] = v6;
  v86[0] = &v87;
  v86[1] = 0x100000000;
  v84[0] = &v85;
  v84[1] = 0x100000000;
  if (!mlir::CallOpInterface::getArgOperands(v75) || (v7 = *(*(a2 + 72) + 56), mlir::CallableOpInterface::getArgAttrsAttr(v75), !mlir::getPositiveAxes(v7, v8, v86, 0, 0, 0)) || (v9 = *(*(a2 + 72) + 88), mlir::CallableOpInterface::getArgAttrsAttr(v75), !mlir::getPositiveAxes(v9, v10, v84, 0, 0, 0)))
  {
    v15 = 0;
    goto LABEL_11;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v75);
  v81 = v83;
  v82 = 0x400000000;
  if (v11)
  {
    v12 = v11;
    if (v11 < 5)
    {
      v13 = 0;
      v14 = v83;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, v11, 8);
      v13 = v82;
      v14 = v81;
    }

    if (v12 != v13)
    {
      bzero(v14 + 8 * v13, 8 * (v12 - v13));
    }

    LODWORD(v82) = v12;
    v18 = (v14 + 8 * v12);
    v17 = v12 == 0;
    if (v12)
    {
      v19 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v19 >= 3)
      {
        v22 = v19 + 1;
        v20 = (v19 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v21 = (v14 + 8 * v20);
        v23 = xmmword_1E09700F0;
        v24 = v14 + 1;
        v25 = vdupq_n_s64(2uLL);
        v26 = vdupq_n_s64(4uLL);
        v27 = v20;
        do
        {
          v24[-1] = v23;
          *v24 = vaddq_s64(v23, v25);
          v23 = vaddq_s64(v23, v26);
          v24 += 2;
          v27 -= 4;
        }

        while (v27);
        if (v22 == v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = 0;
        v21 = v14;
      }

      do
      {
        v21->i64[0] = v20;
        v21 = (v21 + 8);
        ++v20;
      }

      while (v21 != v18);
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
    v18 = v83;
    v14 = v83;
  }

LABEL_28:
  v28 = *v84[0];
  v29 = v14->i64[*v86[0]];
  v14->i64[*v86[0]] = v14->i64[*v84[0]];
  v14->i64[v28] = v29;
  v30 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v30)
  {
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  v80[0] = v30;
  v80[1] = v31;
  mlir::CallableOpInterface::getArgAttrsAttr(v80);
  v33 = v32;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v80);
  v35 = mlir::CallableOpInterface::getArgAttrsAttr(v80);
  if (!v36)
  {
    goto LABEL_42;
  }

  v37 = (v36 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v37 >= 3)
  {
    v40 = v37 + 1;
    v41 = (v37 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v39 = (v35 + 8 * v41);
    v42 = (v35 + 16);
    v43 = 0uLL;
    v44 = vnegq_f64(0);
    v45 = v41;
    v46 = 0uLL;
    do
    {
      v43 = vsubq_s64(v43, vceqq_s64(v42[-1], v44));
      v46 = vsubq_s64(v46, vceqq_s64(*v42, v44));
      v42 += 2;
      v45 -= 4;
    }

    while (v45);
    v38 = vaddvq_s64(vaddq_s64(v46, v43));
    if (v40 == v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v38 = 0;
    v39 = v35;
  }

  do
  {
    v47 = *v39++;
    if (v47 == 0x8000000000000000)
    {
      ++v38;
    }
  }

  while (v39 != (v35 + 8 * v36));
LABEL_40:
  if (v38 <= 1)
  {
LABEL_42:
    if (v17)
    {
LABEL_43:
      v89 = v91;
      v90 = 0x400000000;
      if (v33)
      {
        if (v33 < 5)
        {
          v48 = 0;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, v33, 8);
          v48 = v90;
        }

        if (v33 != v48)
        {
          bzero(&v89[v48], 8 * (v33 - v48));
        }

        LODWORD(v90) = v33;
      }

      if (!v17)
      {
        v65 = v89;
        do
        {
          v66 = v14->i64[0];
          v14 = (v14 + 8);
          v67 = *(ArgAttrsAttr + 8 * v66);
          if (v67 == 0x8000000000000000)
          {
            v67 = -1;
          }

          *v65++ = v67;
        }

        while (v14 != v18);
      }

      v88 = v33;
      IntegerType = mlir::Builder::getIntegerType(a3 + 1, 64, 1);
      v69 = mlir::RankedTensorType::get(&v88, 1, IntegerType, 0);
      if (v69)
      {
        v70 = v69;
        v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
        v69 = v70;
      }

      else
      {
        v71 = 0;
      }

      v79 = mlir::DenseElementsAttr::getFromRawBuffer(v69, v71, v89, 8 * v90, 8, 1, 1);
      v88 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 1), *(a2 + 24), &v79);
      if (*(a2 + 36))
      {
        v72 = a2 - 16;
      }

      else
      {
        v72 = 0;
      }

      v73 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v72, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v77 = *(*(a2 + 72) + 24);
      v78 = v73;
      v76 = 0;
      v74 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Type,mlir::Value,mlir::mps::ConstantOp &,BOOL>(a3 + 1, *(a2 + 24), &v78, &v77, &v88, &v76);
      ((*a3)[1])(a3, a2, v74);
      if (v89 != v91)
      {
        free(v89);
      }

      v15 = 1;
      goto LABEL_82;
    }

    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = vdupq_n_s64(1uLL);
    v53 = v14;
    while (1)
    {
      if (*v53 > v50)
      {
        v50 = *v53;
      }

      if (v51 == v50)
      {
        break;
      }

      ++v51;
LABEL_48:
      if (++v53 == v18)
      {
        goto LABEL_43;
      }
    }

    v54 = ArgAttrsAttr + 8 * v49;
    v55 = ArgAttrsAttr + 8 * v51;
    if (v54 == v55 + 8)
    {
LABEL_63:
      v50 = ++v51;
      v49 = v51;
      goto LABEL_48;
    }

    v56 = (v51 - v49) & 0x1FFFFFFFFFFFFFFFLL;
    if (v56 >= 3)
    {
      v58 = v56 + 1;
      v54 += 8 * (v58 & 0x3FFFFFFFFFFFFFFCLL);
      v59 = (ArgAttrsAttr + 16 + 8 * v49);
      v60 = 0uLL;
      v61 = v58 & 0x3FFFFFFFFFFFFFFCLL;
      v62 = 0uLL;
      do
      {
        v60 = vsubq_s64(v60, vmvnq_s8(vceqq_s64(v59[-1], v52)));
        v62 = vsubq_s64(v62, vmvnq_s8(vceqq_s64(*v59, v52)));
        v59 += 2;
        v61 -= 4;
      }

      while (v61);
      v57 = vaddvq_s64(vaddq_s64(v62, v60));
      if (v58 == (v58 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_62;
      }
    }

    else
    {
      v57 = 0;
    }

    v63 = v54 - 8;
    do
    {
      v64 = *(v63 + 8);
      v63 += 8;
      if (v64 != 1)
      {
        ++v57;
      }
    }

    while (v63 != v55);
LABEL_62:
    if (v57 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_63;
  }

LABEL_41:
  v15 = 0;
LABEL_82:
  if (v81 != v83)
  {
    free(v81);
  }

LABEL_11:
  if (v84[0] != &v85)
  {
    free(v84[0]);
  }

  if (v86[0] != &v87)
  {
    free(v86[0]);
  }

  return v15;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Type,mlir::Value,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReshapeOp::build(a1, v21, *a3, *a4, *a5 - 16, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizePermute::~CanonicalizePermute(mlir::mps::_anonymous_namespace_::CanonicalizePermute *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizePermute::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v74[4] = *MEMORY[0x1E69E9840];
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v62[0] = v5;
  v62[1] = v6;
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  if ((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  v68 = v70;
  v69 = 0x400000000;
  if (!mlir::CallOpInterface::getArgOperands(v62))
  {
    goto LABEL_24;
  }

  v9 = *(*(a2 + 72) + 56);
  mlir::CallableOpInterface::getArgAttrsAttr(v62);
  if (!mlir::getPositiveAxes(v9, v10, &v68, 0, 0, 0))
  {
    goto LABEL_24;
  }

  v11 = v68;
  v12 = v69;
  v13 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v67[0] = v13;
  v67[1] = v14;
  mlir::CallableOpInterface::getArgAttrsAttr(v67);
  v16 = v15;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v67);
  v18 = mlir::CallableOpInterface::getArgAttrsAttr(v67);
  if (v19)
  {
    v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v20 >= 3)
    {
      v23 = v20 + 1;
      v24 = (v20 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v22 = (v18 + 8 * v24);
      v25 = (v18 + 16);
      v26 = 0uLL;
      v27 = vnegq_f64(0);
      v28 = v24;
      v29 = 0uLL;
      do
      {
        v26 = vsubq_s64(v26, vceqq_s64(v25[-1], v27));
        v29 = vsubq_s64(v29, vceqq_s64(*v25, v27));
        v25 += 2;
        v28 -= 4;
      }

      while (v28);
      v21 = vaddvq_s64(vaddq_s64(v29, v26));
      if (v23 == v24)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v21 = 0;
      v22 = v18;
    }

    do
    {
      v30 = *v22++;
      if (v30 == 0x8000000000000000)
      {
        ++v21;
      }
    }

    while (v22 != (v18 + 8 * v19));
LABEL_23:
    if (v21 > 1)
    {
LABEL_24:
      v31 = 0;
      goto LABEL_25;
    }
  }

  if (v12)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = vdupq_n_s64(1uLL);
    v37 = v11;
    while (1)
    {
      if (*v37 > v34)
      {
        v34 = *v37;
      }

      if (v35 == v34)
      {
        break;
      }

      ++v35;
LABEL_31:
      if (++v37 == &v11[v12])
      {
        goto LABEL_47;
      }
    }

    v38 = ArgAttrsAttr + 8 * v33;
    v39 = ArgAttrsAttr + 8 * v35;
    if (v38 == v39 + 8)
    {
LABEL_46:
      v34 = ++v35;
      v33 = v35;
      goto LABEL_31;
    }

    v40 = (v35 - v33) & 0x1FFFFFFFFFFFFFFFLL;
    if (v40 >= 3)
    {
      v42 = v40 + 1;
      v38 += 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
      v43 = (ArgAttrsAttr + 16 + 8 * v33);
      v44 = 0uLL;
      v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
      v46 = 0uLL;
      do
      {
        v44 = vsubq_s64(v44, vmvnq_s8(vceqq_s64(v43[-1], v36)));
        v46 = vsubq_s64(v46, vmvnq_s8(vceqq_s64(*v43, v36)));
        v43 += 2;
        v45 -= 4;
      }

      while (v45);
      v41 = vaddvq_s64(vaddq_s64(v46, v44));
      if (v42 == (v42 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v41 = 0;
    }

    v47 = v38 - 8;
    do
    {
      v48 = *(v47 + 8);
      v47 += 8;
      if (v48 != 1)
      {
        ++v41;
      }
    }

    while (v47 != v39);
LABEL_45:
    if (v41 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_47:
  v72 = v74;
  v73 = 0x400000000;
  if (v16)
  {
    if (v16 < 5)
    {
      v49 = 0;
      v50 = v16;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v16, 8);
      v49 = v73;
      v50 = v16 - v73;
      if (v16 == v73)
      {
        goto LABEL_53;
      }
    }

    bzero(v72 + 8 * v49, 8 * v50);
LABEL_53:
    LODWORD(v73) = v16;
  }

  if (v12)
  {
    v51 = v72;
    v52 = 8 * v12;
    do
    {
      v53 = *v11++;
      v54 = *(ArgAttrsAttr + 8 * v53);
      if (v54 == 0x8000000000000000)
      {
        v54 = -1;
      }

      *v51++ = v54;
      v52 -= 8;
    }

    while (v52);
  }

  v71 = v16;
  IntegerType = mlir::Builder::getIntegerType(a3 + 1, 64, 1);
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

  v66 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v58, v72, 8 * v73, 8, 1, 1);
  v71 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 1), *(a2 + 24), &v66);
  if (*(a2 + 36))
  {
    v59 = a2 - 16;
  }

  else
  {
    v59 = 0;
  }

  v60 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v59, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v64 = *(*(a2 + 72) + 24);
  v65 = v60;
  v63 = 0;
  v61 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Type,mlir::Value,mlir::mps::ConstantOp &,BOOL>(a3 + 1, *(a2 + 24), &v65, &v64, &v71, &v63);
  ((*a3)[1])(a3, a2, v61);
  if (v72 != v74)
  {
    free(v72);
  }

  v31 = 1;
LABEL_25:
  if (v68 != v70)
  {
    free(v68);
  }

  return v31;
}

void mlir::mps::anonymous namespace::CanonicalizeIdentity::~CanonicalizeIdentity(mlir::mps::_anonymous_namespace_::CanonicalizeIdentity *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeIdentity::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, uint64_t *, uint64_t))
{
  v3 = *(*(a2 + 72) + 24);
  if (!*v3)
  {
    return 0;
  }

  if (**v3)
  {
    return 0;
  }

  v12 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v12);
  if (!DefiningOp)
  {
    return 0;
  }

  {
    v11 = DefiningOp;
    DefiningOp = v11;
  }

  if (!(*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  v12 = *(*(a2 + 72) + 24);
  v9 = a3;
  v10 = **a3;
  v4 = 1;
  v10(v9, a2, &v12, 1);
  return v4;
}

void mlir::mps::anonymous namespace::CanonicalizeConcat::~CanonicalizeConcat(mlir::mps::_anonymous_namespace_::CanonicalizeConcat *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeConcat::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::UnitAttr **a3)
{
  v41[4] = *MEMORY[0x1E69E9840];
  v34 = a2;
  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v34, 1u);
  v5 = *(*(v34 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v39 = 0;
  v40 = 0;
  v35 = &v39;
  v36 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v36);
  if (!DefiningOp)
  {
    return 0;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v35, DefiningOp) & 1) == 0)
  {
    return 0;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v39, v40);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = SingleInt;
  v10 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v34, 0);
  if ((*(v34 + 46) & 0x80) != 0)
  {
    v11 = *(v34 + 72);
  }

  else
  {
    v11 = 0;
  }

  v12 = (HIDWORD(v10) + v10);
  v39 = v41;
  v40 = 0x400000000;
  v13 = v12 - v10;
  if (v12 == v10)
  {
    result = 0;
  }

  else
  {
    v15 = 0;
    v16 = v11 + 32 * v10;
    v17 = v16 + 24;
    do
    {
      v18 = (*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v18)
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      }

      else
      {
        v19 = 0;
      }

      v36 = v18;
      v37 = v19;
      if (mlir::CallOpInterface::getArgOperands(&v36))
      {
        mlir::CallableOpInterface::getArgAttrsAttr(&v36);
        if (v20)
        {
          v21 = v9;
          if ((v9 & 0x8000000000000000) != 0)
          {
            mlir::CallableOpInterface::getArgAttrsAttr(&v36);
            v21 = v22 + v9;
          }

          if (!*(mlir::CallableOpInterface::getArgAttrsAttr(&v36) + 8 * v21))
          {
            v23 = v40;
            if (v40 >= HIDWORD(v40))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v40 + 1, 8);
              v23 = v40;
            }

            *(v39 + v23) = v15;
            LODWORD(v40) = v40 + 1;
          }
        }
      }

      ++v15;
      v17 += 32;
    }

    while (v13 != v15);
    result = 0;
    if (v40 && v13 != v40)
    {
      v24 = 0;
      v25 = 0;
      v36 = v38;
      v37 = 0x400000000;
      v26 = v39;
      v27 = (v16 + 24);
      do
      {
        if (v25 == *v26)
        {
          ++v26;
        }

        else
        {
          v28 = *v27;
          if (v24 >= HIDWORD(v37))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v24 + 1, 8);
            v24 = v37;
          }

          *(v36 + v24) = v28;
          v24 = v37 + 1;
          LODWORD(v37) = v37 + 1;
        }

        ++v25;
        v27 += 4;
      }

      while (v13 != v25);
      v29 = v34;
      v30 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v34, 1u);
      v35 = *(*(v34 + 72) + 32 * v30 + 24);
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v34);
      v31 = mlir::OpBuilder::create<mlir::mps::ConcatOp,llvm::SmallVector<mlir::Value,4u> &,mlir::Value,BOOL>(a3 + 1, *(v29 + 24), &v36, &v35, &InferredResultTypes);
      (*(*a3 + 1))(a3, v29, v31);
      if (v36 != v38)
      {
        free(v36);
      }

      result = 1;
    }
  }

  if (v39 != v41)
  {
    v32 = result;
    free(v39);
    return v32;
  }

  return result;
}

unint64_t mlir::getSingleIntValue<long long>(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v10[0] = mlir::CallOpInterface::getArgOperands(&v11);
  v10[1] = v2;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v10);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v4) == 1 && (v9[0] = mlir::CallOpInterface::getArgOperands(&v11), v9[1] = v5, *(*mlir::ElementsAttr::isSplat(v9) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    v9[0] = 0;
    mlir::copyElementsAttrData<long long>(v11, v12, v9, 1);
    v7 = v9[0] & 0xFFFFFFFFFFFFFF00;
    v6 = LOBYTE(v9[0]);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConcatOp,llvm::SmallVector<mlir::Value,4u> &,mlir::Value,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConcatOp,llvm::SmallVector<mlir::Value,4u> &,mlir::Value,BOOL>(v18, v19, v17);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::mps::ConcatOp::build(a1, v18, v19[0], v19[1], *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v14;
}

void mlir::mps::anonymous namespace::CanonicalizeOpsWith0Dims::~CanonicalizeOpsWith0Dims(mlir::mps::_anonymous_namespace_::CanonicalizeOpsWith0Dims *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeOpsWith0Dims::matchAndRewrite(mlir::mps::_anonymous_namespace_::CanonicalizeOpsWith0Dims *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = a2;
  v5 = *(a2 + 6);
  if (*(v5 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v43 = *(v5 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v43);
  }

  else
  {
    Values = *(v5 + 24);
  }

  if (*(Values + 16) != 3 || ((v7 = *(Values + 8), v8 = *v7, v9 = *(v7 + 2), v8 == 28781) ? (v10 = v9 == 115) : (v10 = 0), !v10))
  {
    v11 = *(a2 + 6);
    if (*(v11 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v43 = *(v11 + 8);
      v12 = mlir::SparseElementsAttr::getValues(&v43);
    }

    else
    {
      v12 = *(v11 + 24);
    }

    if (*(v12 + 16) != 4 || **(v12 + 8) != 2020831341)
    {
      return 0;
    }
  }

  {
  }

  if ((*(**(a2 + 6) + 32))(*(a2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  {
  }

  if ((*(**(v42 + 6) + 32))(*(v42 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  v13 = v42;
  if (*(*(v42 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    return 0;
  }

  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v42))
  {
    v40 = 0;
    InterfaceFor = 0;
    return 0;
  }

  v40 = v42;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v42);
  if (!v42)
  {
    return 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v40, &v43);
  v14 = v44;
  if (v43 != v45)
  {
    free(v43);
  }

  if (v14)
  {
    return 0;
  }

  v16 = *(v13 + 9);
  v17 = v13 - 16;
  if (v16)
  {
    v18 = v13 - 16;
  }

  else
  {
    v18 = 0;
  }

  v43 = v18;
  v44 = v16;
  {
    v43 = "failed: all the operands are expected to return ShapedTypes";
    v45[8] = 259;
    return mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(a3, &v42, &v43);
  }

  else
  {
    v19 = *(v13 + 9);
    if (!v19)
    {
      v17 = 0;
    }

    v20 = 0;
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, i);
        v23 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v23)
        {
          v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
        }

        else
        {
          v24 = 0;
        }

        v43 = v23;
        v44 = v24;
        if (mlir::CallOpInterface::getArgOperands(&v43))
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v43);
          if (v26)
          {
            v27 = 8 * v26;
            while (*ArgAttrsAttr)
            {
              ++ArgAttrsAttr;
              v27 -= 8;
              if (!v27)
              {
                goto LABEL_39;
              }
            }

            v28 = *(v13 + 3);
            v39 = mlir::DenseElementsAttr::get(v43, v44, 0, 0);
            v29 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>((a3 + 8), v28, &v43, &v39);
            if (*(v29 + 36))
            {
              v30 = v29 - 16;
            }

            else
            {
              v30 = 0;
            }

            v31 = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
            v32 = *NextResultAtOffset;
            if (*NextResultAtOffset)
            {
              v33 = v31;
              do
              {
                v34 = *v32;
                v35 = v32[2];
                (*(*a3 + 40))(a3, v35);
                v36 = v32[1];
                if (v36)
                {
                  v37 = *v32;
                  *v36 = *v32;
                  if (v37)
                  {
                    v37[1] = v32[1];
                  }
                }

                v32[3] = v33;
                v32[1] = v33;
                v38 = *v33;
                *v32 = *v33;
                if (v38)
                {
                  *(v38 + 8) = v32;
                }

                *v33 = v32;
                (*(*a3 + 48))(a3, v35);
                v32 = v34;
              }

              while (v34);
            }

            v20 = 1;
          }
        }

LABEL_39:
        ;
      }
    }

    return v20 & 1;
  }
}

BOOL llvm::any_of<mlir::ResultRange,mlir::mps::anonymous namespace::CanonicalizeOpsWith0Dims::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::ResultRange)#1}>(uint64_t *a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *a1;
  v4 = v1 - 1;
  do
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, v2);
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8) == 0;
    result = v7;
    v7 = v7 || v4 == v2++;
  }

  while (!v7);
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v12 = *a4;
  if (v12)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
  }

  mlir::mps::ConstantOp::build(a1, v19, v11, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
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

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

void mlir::mps::anonymous namespace::CastToFFT::~CastToFFT(mlir::mps::_anonymous_namespace_::CastToFFT *this)
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

uint64_t mlir::mps::anonymous namespace::CastToFFT::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v23 = a2;
  v20 = &v22;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17[0] = &v20;
  v17[1] = &v19;
  v26 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::FastFourierTransformOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2)
  {
LABEL_4:
    v24[0] = "could not detect cast -> fft op pattern";
    v25 = 259;
    v26 = v24;
    v4 = *(a3 + 16);
    if (v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v6 = a3;
  LOBYTE(v16) = 1;
  v24[0] = &v16;
  v24[1] = &v26;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::CastOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::FastFourierTransformOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::CastOp,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::CastOp,mlir::detail::any_value_binder> *,mlir::detail::any_value_binder*> & *)#1},0ul,1ul>(v17, v24);
  if ((v16 & 1) == 0)
  {
    a3 = v6;
    goto LABEL_4;
  }

  v18 = v26;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(v21 + 36))
  {
    v8 = v21 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v16 = v11;
  if (!v11)
  {
    v13 = "cannot apply pattern unless output of cast is complex";
    goto LABEL_21;
  }

  if (ElementTypeOrSelf != mlir::AffineMapAttr::getValue(&v16))
  {
    v13 = "underlying element-types must match in order to produce exactly the same output";
LABEL_21:
    v24[0] = v13;
    v25 = 259;
    v26 = v24;
    v4 = *(v6 + 16);
    if (v4)
    {
LABEL_5:
      if (mlir::RewriterBase::Listener::classof(v4))
      {
        (*(*v4 + 88))(v4, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::FastFourierTransformOp &>(mlir::mps::FastFourierTransformOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v26);
      }
    }

    return 0;
  }

  v24[0] = v22;
  v26 = v19;
  Layout = mlir::mps::SampleGridOp::getLayout(&v23);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v23);
  v12 = mlir::OpBuilder::create<mlir::mps::FastFourierTransformOp,mlir::Value,mlir::Value,mlir::mps::FFTScalingMode,BOOL>((v6 + 8), *(a2 + 24), v24, &v26, &Layout, &InferredResultTypes);
  (*(*v6 + 8))(v6, a2, v12);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::FastFourierTransformOp,mlir::Value,mlir::Value,mlir::mps::FFTScalingMode,BOOL>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FastFourierTransformOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::FastFourierTransformOp,mlir::Value,mlir::Value,mlir::mps::FFTScalingMode,BOOL>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::FastFourierTransformOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::FastFourierTransformOp,void>::id)
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

void *mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionMaxOp>::~CanonicalizeNoOpReduction(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionMaxOp>::~CanonicalizeNoOpReduction(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v28 = a2;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
  v5 = (*(*(*(v28 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v27[0] = v5;
  v27[1] = v6;
  if (!mlir::CallOpInterface::getArgOperands(v27))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v27);
  v9 = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v27);
  v11 = v10;
  v29 = v31;
  v30 = 0x400000000;
  v12 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 1u);
  if ((*(v28 + 46) & 0x80) != 0)
  {
    v13 = *(v28 + 72);
  }

  else
  {
    v13 = 0;
  }

  if (HIDWORD(v12) + v12 == v12)
  {
    v26 = 0;
  }

  else
  {
    v15 = *(v13 + 32 * v12 + 24);
    v26 = v15;
    if (v15 && !mlir::getPositiveAxes(v15, v11, &v29, 0, 0, 0))
    {
LABEL_23:
      v14 = 0;
      goto LABEL_25;
    }
  }

  if (v30)
  {
    v16 = v30;
  }

  else
  {
    v16 = v9;
  }

  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = v17;
      if (v30)
      {
        v18 = *(v29 + v17);
      }

      if (*(ArgAttrsAttr + 8 * v18) != 1)
      {
        goto LABEL_23;
      }
    }

    while (v16 != ++v17);
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v28);
  v20 = v28;
  if (InferredResultTypes)
  {
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
    v25 = *(*(v28 + 72) + 32 * v21 + 24);
    v14 = 1;
    (**a3)(a3, v20, &v25, 1);
  }

  else
  {
    v22 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
    v25 = *(*(v28 + 72) + 32 * v22 + 24);
    v23 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>((a3 + 8), *(v20 + 24), &v25, &v26);
    (*(*a3 + 8))(a3, v20, v23);
    v14 = 1;
  }

LABEL_25:
  if (v29 != v31)
  {
    free(v29);
  }

  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::SqueezeOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id)
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

void *mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionMinOp>::~CanonicalizeNoOpReduction(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionMinOp>::~CanonicalizeNoOpReduction(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v28 = a2;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
  v5 = (*(*(*(v28 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v27[0] = v5;
  v27[1] = v6;
  if (!mlir::CallOpInterface::getArgOperands(v27))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v27);
  v9 = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v27);
  v11 = v10;
  v29 = v31;
  v30 = 0x400000000;
  v12 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 1u);
  if ((*(v28 + 46) & 0x80) != 0)
  {
    v13 = *(v28 + 72);
  }

  else
  {
    v13 = 0;
  }

  if (HIDWORD(v12) + v12 == v12)
  {
    v26 = 0;
  }

  else
  {
    v15 = *(v13 + 32 * v12 + 24);
    v26 = v15;
    if (v15 && !mlir::getPositiveAxes(v15, v11, &v29, 0, 0, 0))
    {
LABEL_23:
      v14 = 0;
      goto LABEL_25;
    }
  }

  if (v30)
  {
    v16 = v30;
  }

  else
  {
    v16 = v9;
  }

  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = v17;
      if (v30)
      {
        v18 = *(v29 + v17);
      }

      if (*(ArgAttrsAttr + 8 * v18) != 1)
      {
        goto LABEL_23;
      }
    }

    while (v16 != ++v17);
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v28);
  v20 = v28;
  if (InferredResultTypes)
  {
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
    v25 = *(*(v28 + 72) + 32 * v21 + 24);
    v14 = 1;
    (**a3)(a3, v20, &v25, 1);
  }

  else
  {
    v22 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
    v25 = *(*(v28 + 72) + 32 * v22 + 24);
    v23 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>((a3 + 8), *(v20 + 24), &v25, &v26);
    (*(*a3 + 8))(a3, v20, v23);
    v14 = 1;
  }

LABEL_25:
  if (v29 != v31)
  {
    free(v29);
  }

  return v14;
}

void *mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionProdOp>::~CanonicalizeNoOpReduction(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionProdOp>::~CanonicalizeNoOpReduction(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionProdOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v28 = a2;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
  v5 = (*(*(*(v28 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v27[0] = v5;
  v27[1] = v6;
  if (!mlir::CallOpInterface::getArgOperands(v27))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v27);
  v9 = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v27);
  v11 = v10;
  v29 = v31;
  v30 = 0x400000000;
  v12 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 1u);
  if ((*(v28 + 46) & 0x80) != 0)
  {
    v13 = *(v28 + 72);
  }

  else
  {
    v13 = 0;
  }

  if (HIDWORD(v12) + v12 == v12)
  {
    v26 = 0;
  }

  else
  {
    v15 = *(v13 + 32 * v12 + 24);
    v26 = v15;
    if (v15 && !mlir::getPositiveAxes(v15, v11, &v29, 0, 0, 0))
    {
LABEL_23:
      v14 = 0;
      goto LABEL_25;
    }
  }

  if (v30)
  {
    v16 = v30;
  }

  else
  {
    v16 = v9;
  }

  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = v17;
      if (v30)
      {
        v18 = *(v29 + v17);
      }

      if (*(ArgAttrsAttr + 8 * v18) != 1)
      {
        goto LABEL_23;
      }
    }

    while (v16 != ++v17);
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v28);
  v20 = v28;
  if (InferredResultTypes)
  {
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
    v25 = *(*(v28 + 72) + 32 * v21 + 24);
    v14 = 1;
    (**a3)(a3, v20, &v25, 1);
  }

  else
  {
    v22 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
    v25 = *(*(v28 + 72) + 32 * v22 + 24);
    v23 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>((a3 + 8), *(v20 + 24), &v25, &v26);
    (*(*a3 + 8))(a3, v20, v23);
    v14 = 1;
  }

LABEL_25:
  if (v29 != v31)
  {
    free(v29);
  }

  return v14;
}

void *mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionSumOp>::~CanonicalizeNoOpReduction(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionSumOp>::~CanonicalizeNoOpReduction(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeNoOpReduction<mlir::mps::ReductionSumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v28 = a2;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
  v5 = (*(*(*(v28 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v27[0] = v5;
  v27[1] = v6;
  if (!mlir::CallOpInterface::getArgOperands(v27))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v27);
  v9 = v8;
  mlir::CallableOpInterface::getArgAttrsAttr(v27);
  v11 = v10;
  v29 = v31;
  v30 = 0x400000000;
  v12 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 1u);
  if ((*(v28 + 46) & 0x80) != 0)
  {
    v13 = *(v28 + 72);
  }

  else
  {
    v13 = 0;
  }

  if (HIDWORD(v12) + v12 == v12)
  {
    v26 = 0;
  }

  else
  {
    v15 = *(v13 + 32 * v12 + 24);
    v26 = v15;
    if (v15 && !mlir::getPositiveAxes(v15, v11, &v29, 0, 0, 0))
    {
LABEL_23:
      v14 = 0;
      goto LABEL_25;
    }
  }

  if (v30)
  {
    v16 = v30;
  }

  else
  {
    v16 = v9;
  }

  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = v17;
      if (v30)
      {
        v18 = *(v29 + v17);
      }

      if (*(ArgAttrsAttr + 8 * v18) != 1)
      {
        goto LABEL_23;
      }
    }

    while (v16 != ++v17);
  }

  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v28);
  v20 = v28;
  if (InferredResultTypes)
  {
    v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
    v25 = *(*(v28 + 72) + 32 * v21 + 24);
    v14 = 1;
    (**a3)(a3, v20, &v25, 1);
  }

  else
  {
    v22 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v28, 0);
    v25 = *(*(v28 + 72) + 32 * v22 + 24);
    v23 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>((a3 + 8), *(v20 + 24), &v25, &v26);
    (*(*a3 + 8))(a3, v20, v23);
    v14 = 1;
  }

LABEL_25:
  if (v29 != v31)
  {
    free(v29);
  }

  return v14;
}

void *mlir::mps::anonymous namespace::CanonicalizeMatMulExpandSqueezeBinary<mlir::mps::AddOp>::~CanonicalizeMatMulExpandSqueezeBinary(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeMatMulExpandSqueezeBinary<mlir::mps::AddOp>::~CanonicalizeMatMulExpandSqueezeBinary(void *__p)
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

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReshapeOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
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
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReshapeOp &>(mlir::mps::ReshapeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

BOOL mlir::Operation::hasOneUse(mlir::Operation *this)
{
  v1 = *(this + 9);
  v2 = this - 16;
  if (!v1)
  {
    v2 = 0;
  }

  *&v8[0] = v2;
  *(&v8[0] + 1) = v1;
  mlir::ResultRange::getUses(v8, v5);
  v3 = v7;
  if (v6 == v7)
  {
    return 0;
  }

  v8[0] = v5[0];
  v8[1] = v5[1];
  v9 = v6;
  mlir::ResultRange::UseIterator::operator++(v8);
  return v9 == v3;
}

void *mlir::mps::anonymous namespace::CanonicalizeMatMulExpandSqueezeUnary<mlir::mps::ReluOp>::~CanonicalizeMatMulExpandSqueezeUnary(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeMatMulExpandSqueezeUnary<mlir::mps::ReluOp>::~CanonicalizeMatMulExpandSqueezeUnary(void *__p)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::mps::MatMulOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::mps::MatMulOp &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeSoftMax::~CanonicalizeSoftMax(mlir::mps::_anonymous_namespace_::CanonicalizeSoftMax *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeSoftMax::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = 0;
  v28[0] = &v31;
  v28[1] = &v30;
  v29 = 0;
  v27[0] = &v31;
  v27[1] = v28;
  v27[2] = 0;
  v26[0] = v27;
  v26[1] = 0;
  v24 = 0;
  v25 = 0;
  v23[0] = v26;
  v23[1] = &v25;
  v21[0] = v26;
  v21[1] = v23;
  v22 = 0;
  v32[0] = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2)
  {
LABEL_4:
    v33 = "failed: pattern did not match";
    v36 = 259;
    v32[0] = &v33;
    v4 = a3[2];
    if (v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v6 = a3;
  LOBYTE(v20) = 1;
  v33 = &v20;
  v34 = v32;
  mlir::detail::enumerate<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExponentOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SubtractOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMaxOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionSumOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExponentOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SubtractOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMaxOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>>>,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DivideOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExponentOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SubtractOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMaxOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>>>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionSumOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExponentOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SubtractOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMaxOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>>>,mlir::detail::any_value_binder>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExponentOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SubtractOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMaxOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionSumOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ExponentOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SubtractOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReductionMaxOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>>>,mlir::detail::any_value_binder> * *)#1}>(v21, &v33);
  if ((v20 & 1) == 0)
  {
    a3 = v6;
    goto LABEL_4;
  }

  v22 = v32[0];
  v7 = (*(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  *&v20 = v7;
  *(&v20 + 1) = v8;
  if ((mlir::CallOpInterface::getArgOperands(&v20) & 1) == 0)
  {
    v33 = "failed: input is unranked";
    v36 = 259;
    v32[0] = &v33;
    v4 = v6[2];
    if (!v4)
    {
      return 0;
    }

LABEL_5:
    if (mlir::RewriterBase::Listener::classof(v4))
    {
      (*(*v4 + 88))(v4, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::DivideOp &>(mlir::mps::DivideOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v32);
    }

    return 0;
  }

  *v32 = v20;
  v33 = v35;
  v34 = 0x600000000;
  matched = mlir::matchConstantWithIntVector<long long>(v30, &v33);
  v10 = 1;
  v11 = v33;
  if ((matched & 1) != 0 && v34 == 1)
  {
    if (*v33 == -1)
    {
      v10 = 0;
    }

    else if (mlir::CallOpInterface::getArgOperands(v32))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v32);
      v11 = v33;
      v10 = *v33 != v12 - 1;
    }

    else
    {
      v11 = v33;
    }
  }

  if (v11 != v35)
  {
    free(v11);
  }

  if (v10)
  {
    return 0;
  }

  *v32 = v20;
  v33 = v35;
  v34 = 0x600000000;
  v13 = mlir::matchConstantWithIntVector<long long>(v25, &v33);
  v14 = 1;
  v15 = v33;
  if ((v13 & 1) != 0 && v34 == 1)
  {
    if (*v33 == -1)
    {
      v14 = 0;
    }

    else if (mlir::CallOpInterface::getArgOperands(v32))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v32);
      v15 = v33;
      v14 = *v33 != v16 - 1;
    }

    else
    {
      v15 = v33;
    }
  }

  if (v15 != v35)
  {
    free(v15);
  }

  if (v14)
  {
    return 0;
  }

  v33 = v29;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v33);
  v33 = v24;
  v18 = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v33);
  if (!InferredResultTypes || !v18)
  {
    v33 = "failed: reductions must keep dimensions to represent a softmax op";
    v36 = 259;
    v32[0] = &v33;
    v4 = v6[2];
    if (!v4)
    {
      return 0;
    }

    goto LABEL_5;
  }

  v33 = v31;
  v32[0] = v30;
  v19 = mlir::OpBuilder::create<mlir::mps::SoftmaxOp,mlir::Value,mlir::Value>((v6 + 1), *(a2 + 24), &v33, v32);
  (*(*v6 + 8))(v6, a2, v19);
  return 1;
}