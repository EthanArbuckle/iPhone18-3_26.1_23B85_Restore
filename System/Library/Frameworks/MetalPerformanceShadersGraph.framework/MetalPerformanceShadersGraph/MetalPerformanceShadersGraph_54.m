uint64_t mlir::matchConstantWithIntVector<long long>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    return 0;
  }

  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    return 0;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    return 0;
  }

  v6[0] = mlir::CallOpInterface::getArgOperands(&v8);
  v6[1] = v4;
  if (*(*mlir::ElementsAttr::isSplat(v6) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  mlir::getIntValues<long long>(v8, v9, a2, 1);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SoftmaxOp,mlir::Value,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SoftmaxOp,mlir::Value,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::SoftmaxOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizeTileAsBroadcast::~CanonicalizeTileAsBroadcast(mlir::mps::_anonymous_namespace_::CanonicalizeTileAsBroadcast *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeTileAsBroadcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v28[0] = v5;
  v28[1] = v6;
  if ((mlir::CallOpInterface::getArgOperands(v28) & 1) == 0)
  {
    v18 = "failed: input must be a ranked shaped type";
    goto LABEL_20;
  }

  v26 = 0;
  v27 = 0;
  v7 = *(*(a2 + 72) + 56);
  v32 = &v26;
  v35 = v7;
  DefiningOp = mlir::Value::getDefiningOp(&v35);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v32, DefiningOp) & 1) == 0)
  {
    v18 = "failed: multipliers must be constant to rewrite Tile as a broadcast op";
LABEL_20:
    v35 = v18;
    v37[8] = 259;
    v32 = &v35;
    v19 = *(a3 + 16);
    if (v19 && mlir::RewriterBase::Listener::classof(v19))
    {
      (*(*v19 + 88))(v19, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::TileOp &>(mlir::mps::TileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v32);
    }

    return 0;
  }

  v35 = v37;
  v36 = 0x400000000;
  mlir::getIntValues<long long>(v26, v27, &v35, 1);
  v32 = v34;
  v33 = 0x400000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v28);
  if (!v10 || !v36)
  {
LABEL_25:
    v29[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,llvm::SmallVector<long long,4u> &>((a3 + 8), *(a2 + 24), &v32);
    v31 = *(*(a2 + 72) + 24);
    v21 = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::mps::ShapeOp>((a3 + 8), *(a2 + 24), &v31, v29);
    (*(*a3 + 8))(a3, a2, v21);
    result = 1;
    goto LABEL_33;
  }

  v11 = v35;
  v12 = 8 * v36 - 8;
  v13 = 8 * v10 - 8;
  while (1)
  {
    v14 = *ArgAttrsAttr;
    if (*v11 != 1)
    {
      break;
    }

    v15 = v33;
    if (v33 < HIDWORD(v33))
    {
      goto LABEL_12;
    }

LABEL_17:
    v17 = ArgAttrsAttr;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v15 + 1, 8);
    ArgAttrsAttr = v17;
    v15 = v33;
LABEL_12:
    *(v32 + v15) = v14;
    LODWORD(v33) = v33 + 1;
    if (v13)
    {
      ++ArgAttrsAttr;
      ++v11;
      v16 = v12;
      v12 -= 8;
      v13 -= 8;
      if (v16)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  if (v14 == 1)
  {
    v15 = v33;
    v14 = *v11;
    if (v33 < HIDWORD(v33))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if (v14 == 0x8000000000000000)
  {
    v22 = "failed: cannot apply pattern for tile operations along a dynamic dimension of the input";
  }

  else
  {
    v22 = "failed: multipliers need to be applied to a dimension size 1";
  }

  v29[0] = v22;
  v30 = 259;
  v31 = v29;
  v23 = *(a3 + 16);
  if (v23 && mlir::RewriterBase::Listener::classof(v23))
  {
    (*(*v23 + 88))(v23, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::TileOp &>(mlir::mps::TileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v31);
  }

  result = 0;
LABEL_33:
  if (v32 != v34)
  {
    v24 = result;
    free(v32);
    result = v24;
  }

  if (v35 != v37)
  {
    v25 = result;
    free(v35);
    return v25;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,llvm::SmallVector<long long,4u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
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
  mlir::mps::ConstantOp::build(a1, v15, *a3, *(a3 + 8));
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

void mlir::mps::anonymous namespace::CanonicalizeTensorFromElements::~CanonicalizeTensorFromElements(mlir::mps::_anonymous_namespace_::CanonicalizeTensorFromElements *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  mlir::mps::ReshapeOp::build(a1, v17, *a3, *a4, 0);
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

void *mlir::mps::anonymous namespace::FuseBinaryWithConstants<mlir::mps::AddOp,true>::~FuseBinaryWithConstants(void *a1)
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

void mlir::mps::anonymous namespace::FuseBinaryWithConstants<mlir::mps::AddOp,true>::~FuseBinaryWithConstants(void *__p)
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

uint64_t mlir::mps::anonymous namespace::isBroadcastOnSameAxis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v38 = *MEMORY[0x1E69E9840];
  result = mlir::ElementsAttr::getNumElements(a1, a2);
  if (result != 1)
  {
    result = mlir::ElementsAttr::getNumElements(a3, a4);
    if (result != 1)
    {
      v32 = &v34;
      v34 = v7;
      v35 = a2;
      v36 = a3;
      v37 = a4;
      v33 = 0x200000002;
      ArgOperands = mlir::CallOpInterface::getArgOperands(&v34);
      v31 = v9;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
      if (v11 < 1)
      {
LABEL_14:
        ArgOperands = mlir::CallOpInterface::getArgOperands(&v36);
        v31 = v19;
        v20 = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
        if (v21 < 1)
        {
LABEL_27:
          result = a3 == v7;
LABEL_28:
          if (v32 != &v34)
          {
            v29 = result;
            free(v32);
            return v29;
          }

          return result;
        }

        v22 = v20;
        v23 = -v21;
        while (1)
        {
          v24 = *v22;
          NumElements = mlir::ElementsAttr::getNumElements(v36, v37);
          v27 = *v22++;
          v26 = v27;
          if (v24 != NumElements && v26 != 1)
          {
            break;
          }

          if (v26 == mlir::ElementsAttr::getNumElements(v36, v37))
          {
            v7 = v23;
          }

          v18 = __CFADD__(v23++, 1);
          if (v18)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v12 = ArgAttrsAttr;
        v13 = -v11;
        while (1)
        {
          v14 = *v12;
          v15 = mlir::ElementsAttr::getNumElements(v34, v35);
          v16 = *v12++;
          v7 = v16;
          if (v14 != v15 && v7 != 1)
          {
            break;
          }

          if (v7 == mlir::ElementsAttr::getNumElements(v34, v35))
          {
            a3 = v13;
          }

          v18 = __CFADD__(v13++, 1);
          if (v18)
          {
            goto LABEL_14;
          }
        }
      }

      result = 0;
      goto LABEL_28;
    }
  }

  return result;
}

void mlir::OpBuilder::createOrFold<mlir::mps::AddOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(v31, v30, v29);
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

void *mlir::mps::anonymous namespace::FuseBinaryWithConstants<mlir::mps::MultiplyOp,true>::~FuseBinaryWithConstants(void *a1)
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

void mlir::mps::anonymous namespace::FuseBinaryWithConstants<mlir::mps::MultiplyOp,true>::~FuseBinaryWithConstants(void *__p)
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

void mlir::OpBuilder::createOrFold<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(v31, v30, v29);
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

void mlir::mps::anonymous namespace::CanonicalizeSDPA::~CanonicalizeSDPA(mlir::mps::_anonymous_namespace_::CanonicalizeSDPA *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeSDPA::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v66 = a2;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v58[0] = &v65;
  v58[1] = &v64;
  v55[0] = v58;
  v55[1] = &v61;
  v56 = 0;
  v57 = 0;
  v52[0] = v55;
  v52[1] = &v63;
  v53 = 0;
  v54 = 0;
  v50[0] = v52;
  v50[1] = &v60;
  v51 = 0;
  v48[0] = v50;
  v48[1] = &v62;
  v49 = 0;
  v4 = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SoftmaxOp,mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::any_value_binder>::match(v48, a2);
  result = 0;
  if (v4)
  {
    v47 = v60;
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v47);
    v8 = v7;
    if (mlir::ElementsAttr::getNumElements(AsAttribute, v7) == 1)
    {
      v9 = (*(*(*(v51 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v9)
      {
        v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      }

      else
      {
        v10 = 0;
      }

      v46[0] = v9;
      v46[1] = v10;
      ArgOperands = mlir::CallOpInterface::getArgOperands(v46);
      if (ArgOperands)
      {
        mlir::CallableOpInterface::getArgAttrsAttr(v46);
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v70 = v72;
      v71 = 0x400000000;
      mlir::getIntValues<long long>(AsAttribute, v8, &v70, 1);
      if (v71)
      {
        v16 = v70;
        v17 = 8 * v71;
        while (1)
        {
          v18 = *v16 == -1 ? 1 : ArgOperands;
          if (v18 != 1 || ArgOperands && (*v16 + v15) % v15 != v15 - 1)
          {
            break;
          }

          v16 += 8;
          v17 -= 8;
          if (!v17)
          {
            goto LABEL_23;
          }
        }

        v19 = "failed: softmax axis should be -1 or equal to inputRank - 1";
        goto LABEL_46;
      }

LABEL_23:
      v20 = v61;
      if (v61)
      {
        v68[0] = v61;
        DefiningOp = mlir::Value::getDefiningOp(v68);
        if (!DefiningOp)
        {
          goto LABEL_30;
        }

        {
          v39 = DefiningOp;
          DefiningOp = v39;
        }

        if (((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
LABEL_30:
          v19 = "failed: the value for scale must be a constant";
          goto LABEL_46;
        }

        v22 = (*(v20 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v22)
        {
          v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
        }

        else
        {
          v23 = 0;
        }

        v45[0] = v22;
        v45[1] = v23;
        if (!mlir::CallOpInterface::getArgOperands(v45) || (mlir::CallableOpInterface::getArgAttrsAttr(v45), v24 >= 2))
        {
          v25 = "failed: scale should have rank 0 or 1";
          goto LABEL_44;
        }

        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v45);
        if (v27)
        {
          v28 = 8 * v27;
          while (*ArgAttrsAttr == 1)
          {
            ++ArgAttrsAttr;
            v28 -= 8;
            if (!v28)
            {
              goto LABEL_39;
            }
          }

          v69 = 259;
          v37 = v66;
          v67 = v68;
          v68[0] = "failed: scale should be scalar";
          v38 = *(a3 + 16);
          if (v38 && mlir::RewriterBase::Listener::classof(v38))
          {
            (*(*v38 + 88))(v38, *(v37 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::MatMulOp &>(mlir::mps::MatMulOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v67);
          }

          goto LABEL_49;
        }
      }

LABEL_39:
      v67 = v59;
      if (!mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v67) && mlir::mps::MatMulOp::getTransposeRhs(&v67))
      {
        v68[0] = v49;
        if (!mlir::pdl::ApplyNativeConstraintOp::getIsNegated(v68) && !mlir::mps::MatMulOp::getTransposeRhs(v68))
        {
          v45[0] = v61;
          if (!v61)
          {
            v32 = *(v66 + 24);
            LODWORD(ElementTypeOrSelf) = 1;
            v45[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a3 + 8), v32, &ElementTypeOrSelf) - 16;
            v33 = *(v66 + 24);
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v65);
            v45[0] = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a3 + 8), v33, v45, &ElementTypeOrSelf) - 16;
          }

          ElementTypeOrSelf = v63;
          if (!v63)
          {
            v34 = *(v66 + 24);
            LODWORD(v43) = 0;
            ElementTypeOrSelf = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a3 + 8), v34, &v43) - 16;
            v35 = *(v66 + 24);
            v43 = mlir::getElementTypeOrSelf(v65);
            ElementTypeOrSelf = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a3 + 8), v35, &ElementTypeOrSelf, &v43) - 16;
          }

          v36 = *(v66 + 24);
          v41 = v64;
          v42 = v65;
          v40 = v62;
          v43 = mlir::OpBuilder::create<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value&,mlir::Value&>((a3 + 8), v36, &v42, &v41, &v40, &ElementTypeOrSelf, v45);
          if (mlir::mps_spi::ScaledDotProductAttentionOp::verify(&v43))
          {
            (*(*a3 + 8))(a3, v66, v43);
            result = 1;
LABEL_50:
            if (v70 != v72)
            {
              v31 = result;
              free(v70);
              return v31;
            }

            return result;
          }

LABEL_49:
          result = 0;
          goto LABEL_50;
        }

        v25 = "failed: Transpose of LHS and RHS when matrix multiplying softmax and value should be false and false respectively";
LABEL_44:
        result = mlir::RewriterBase::notifyMatchFailure<mlir::mps::MatMulOp &>(a3, &v66, v25);
        goto LABEL_50;
      }

      v19 = "failed: Transpose of LHS and RHS when matrix multiplying query and key should be false and true respectively";
LABEL_46:
      v68[0] = v19;
      v69 = 259;
      v29 = v66;
      v45[0] = v68;
      v30 = *(a3 + 16);
      if (v30 && mlir::RewriterBase::Listener::classof(v30))
      {
        (*(*v30 + 88))(v30, *(v29 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::MatMulOp &>(mlir::mps::MatMulOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v45);
      }

      goto LABEL_49;
    }

    v70 = "failed: softmax must be applied to a single axis";
    v72[8] = 259;
    v11 = v66;
    v68[0] = &v70;
    v12 = *(a3 + 16);
    if (v12 && mlir::RewriterBase::Listener::classof(v12))
    {
      (*(*v12 + 88))(v12, *(v11 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::MatMulOp &>(mlir::mps::MatMulOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v68);
    }

    return 0;
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::MatMulOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
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
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::MatMulOp &>(mlir::mps::MatMulOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value&,mlir::Value&>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps_spi::ScaledDotProductAttentionOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value&,mlir::Value&>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps_spi::ScaledDotProductAttentionOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps_spi::ScaledDotProductAttentionOp,void>::id)
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

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::SoftmaxOp,mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v10 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(v4, DefiningOp);
  }

  **a2 &= DefiningOp;
  v6 = a1[1];
  v10 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v10);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v6 || *v6 == result))
    {
      *v6 = result;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = v8 & **a2;
  if (!result)
  {
    v9 = 0;
  }

  **a2 = v9;
  return result;
}

uint64_t mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::AddOp,mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
  {
    if ((mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(*a1, a2) & 1) == 0)
    {
      if (!*(a2 + 36))
      {
        return 0;
      }

      v16 = a1[1];
      v17 = a2 - 16;
      if (*v16)
      {
        return *v16 == v17;
      }

      *v16 = v17;
    }

    return 1;
  }

  v4 = *a1;
  v5 = a1[1];
  v18 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(v4, DefiningOp);
  }

  v7 = *(*(a2 + 72) + 56);
  if (!*v5)
  {
    *v5 = v7;
    if ((DefiningOp & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_8:
    if ((a1[3] & 1) == 0)
    {
      *(a1 + 24) = 1;
    }

    a1[2] = a2;
    return 1;
  }

  if ((DefiningOp & (*v5 == v7)) != 0)
  {
    goto LABEL_8;
  }

LABEL_12:
  *a1[1] = 0;
  v9 = *a1;
  v10 = **a1;
  **v10 = 0;
  **(v10 + 8) = 0;
  *(v10 + 16) = 0;
  **(v9 + 8) = 0;
  if (*(v9 + 24) == 1)
  {
    *(v9 + 24) = 0;
  }

  v12 = *a1;
  v11 = a1[1];
  v13 = *(a2 + 72);
  v14 = *(v13 + 24);
  if (*v11)
  {
    v15 = *v11 == v14;
  }

  else
  {
    *v11 = v14;
    v13 = *(a2 + 72);
    v15 = 1;
  }

  v18 = *(v13 + 56);
  result = mlir::Value::getDefiningOp(&v18);
  if (result)
  {
    if ((v15 & mlir::detail::RecursivePatternMatcherOptionalBinaryCommutative<mlir::mps::MultiplyOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::MatMulOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder>,mlir::detail::any_value_binder>::match(v12, result)) != 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return result;
}

void mlir::mps::anonymous namespace::CanonicalizeSDPAWithGQA::~CanonicalizeSDPAWithGQA(mlir::mps::_anonymous_namespace_::CanonicalizeSDPAWithGQA *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeSDPAWithGQA::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v83 = 0;
  v84 = a2;
  v81 = 0;
  v82 = 0;
  v80[0] = &v83;
  v80[1] = &v82;
  v78 = 0;
  v79 = 0;
  v77[0] = v80;
  v77[1] = &v79;
  v75 = 0;
  v76 = 0;
  v73[0] = &v76;
  v73[1] = &v75;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v70[0] = v73;
  v70[1] = &v72;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v65[0] = &v67;
  v65[1] = v77;
  v65[2] = v70;
  v65[3] = &v69;
  v65[4] = &v68;
  v87 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps_spi::ScaledDotProductAttentionOp,void>::id || (*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 5)
  {
    goto LABEL_4;
  }

  v10 = a3;
  LOBYTE(v85) = 1;
  v89[0] = &v85;
  v89[1] = &v87;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::any_value_binder *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BroadcastToOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BroadcastToOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BroadcastToOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BroadcastToOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::any_value_binder *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BroadcastToOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::BroadcastToOp,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *,mlir::detail::any_value_binder *,mlir::detail::any_value_binder *> & *)#1},0ul,1ul,2ul,3ul,4ul>(v65, v89);
  if ((v85 & 1) == 0)
  {
    v3 = v84;
    a3 = v10;
LABEL_4:
    v89[0] = "failed: root pattern did not match";
    v90 = 259;
    v87 = v89;
    v4 = *(a3 + 16);
    if (!v4 || !mlir::RewriterBase::Listener::classof(*(a3 + 16)))
    {
      return 0;
    }

    v5 = *(v3 + 24);
    v6 = *(*v4 + 88);
    v7 = &v87;
    v8 = v4;
    goto LABEL_7;
  }

  v66 = v87;
  v64[0] = v10;
  v64[1] = &v84;
  v11 = v81;
  v12 = (*(*(*(v81 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (*(v11 + 36))
  {
    v14 = v11 - 16;
  }

  else
  {
    v14 = 0;
  }

  v15 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  {
    return 0;
  }

  v17 = v74;
  v18 = (*(*(*(v74 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = v18 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8) : 0;
  v20 = *(v17 + 36) ? v17 - 16 : 0;
  v21 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8) : 0;
  {
    return 0;
  }

  v23 = v78;
  v24 = (*(*(*(v78 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v24)
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  v63[0] = v24;
  v63[1] = v25;
  if (*(v23 + 36))
  {
    v26 = v23 - 16;
  }

  else
  {
    v26 = 0;
  }

  v27 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v27)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  v87 = v24;
  v88 = v25;
  v85 = v27;
  v86 = v28;
  mlir::CallableOpInterface::getArgAttrsAttr(&v87);
  v30 = v29;
  mlir::CallableOpInterface::getArgAttrsAttr(&v85);
  v32 = v31;
  if (v30 <= 4 && v31 < 4 || (v33 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v87) + 8 * (v30 - 4)), v34 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v87) + 8 * (v30 - 3)) * v33, v34 != *(mlir::CallableOpInterface::getArgAttrsAttr(&v85) + 8 * (v32 - 3))))
  {
    v89[0] = "failed: reshape does not concatenate groups";
    v90 = 259;
    v38 = v84;
    v62[0] = v89;
    v39 = *(v10 + 16);
    if (!v39 || !mlir::RewriterBase::Listener::classof(*(v10 + 16)))
    {
      return 0;
    }

    v5 = *(v38 + 24);
    v6 = *(*v39 + 88);
    v7 = v62;
    goto LABEL_49;
  }

  v35 = v71;
  v36 = (*(*(*(v71 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v36)
  {
    v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  v62[0] = v36;
  v62[1] = v37;
  if (*(v35 + 36))
  {
    v40 = v35 - 16;
  }

  else
  {
    v40 = 0;
  }

  v41 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v41)
  {
    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
  }

  else
  {
    v42 = 0;
  }

  v87 = v36;
  v88 = v37;
  v85 = v41;
  v86 = v42;
  mlir::CallableOpInterface::getArgAttrsAttr(&v87);
  v44 = v43;
  mlir::CallableOpInterface::getArgAttrsAttr(&v85);
  v46 = v45;
  if (v44 > 4 || v45 >= 4)
  {
    v47 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v87) + 8 * (v44 - 4));
    v48 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v87) + 8 * (v44 - 3)) * v47;
    if (v48 == *(mlir::CallableOpInterface::getArgAttrsAttr(&v85) + 8 * (v46 - 3)))
    {
      v49 = *(v84 + 24);
      mlir::CallableOpInterface::getArgAttrsAttr(v63);
      LODWORD(v87) = v50 - 3;
      v89[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((v10 + 8), v49, &v87) - 16;
      v51 = *(v84 + 24);
      mlir::CallableOpInterface::getArgAttrsAttr(v62);
      LODWORD(v85) = v52 - 3;
      v87 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((v10 + 8), v51, &v85) - 16);
      v53 = *(v84 + 24);
      v91 = v83;
      v85 = mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>((v10 + 8), v53, &v91, v89) - 16;
      v54 = *(v84 + 24);
      v61 = v76;
      v91 = (mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>((v10 + 8), v54, &v61, &v87) - 16);
      v55 = v84;
      v56 = *(*(v84 + 72) + 24);
      v60 = v69;
      v61 = v56;
      v59 = v68;
      v57 = mlir::OpBuilder::create<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value&,mlir::Value&>((v10 + 8), *(v84 + 24), &v61, &v85, &v91, &v60, &v59);
      (*(*v10 + 8))(v10, v55, v57);
      return 1;
    }
  }

  v89[0] = "failed: reshape does not concatenate groups";
  v90 = 259;
  v58 = v84;
  v91 = v89;
  v39 = *(v10 + 16);
  if (v39 && mlir::RewriterBase::Listener::classof(*(v10 + 16)))
  {
    v5 = *(v58 + 24);
    v6 = *(*v39 + 88);
    v7 = &v91;
LABEL_49:
    v8 = v39;
LABEL_7:
    v6(v8, v5, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps_spi::ScaledDotProductAttentionOp &>(mlir::mps_spi::ScaledDotProductAttentionOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v7);
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeSDPAWithGQA::matchAndRewrite(mlir::mps_spi::ScaledDotProductAttentionOp,mlir::PatternRewriter &)const::{lambda(mlir::ShapedType,mlir::ShapedType)#1}::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v26[0] = a2;
  v26[1] = a3;
  v25[0] = a4;
  v25[1] = a5;
  v30 = v32;
  v31 = 0x600000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v26);
  v8 = v7;
  v9 = mlir::CallableOpInterface::getArgAttrsAttr(v25);
  if (v8 && v10)
  {
    v11 = 0;
    v12 = 8 * v10 - 8;
    v13 = 8 * v8 - 8;
    do
    {
      if (*(ArgAttrsAttr + 8 * v11) != *(v9 + 8 * v11))
      {
        v14 = v31;
        if (v31 >= HIDWORD(v31))
        {
          v16 = v9;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
          v9 = v16;
          v14 = v31;
        }

        *(v30 + v14) = v11;
        LODWORD(v31) = v31 + 1;
      }

      if (!v13)
      {
        break;
      }

      ++v11;
      v15 = v12;
      v12 -= 8;
      v13 -= 8;
    }

    while (v15);
  }

  if (v31 == 1)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v26);
    if (v17 - 3 == *v30)
    {
      v18 = 1;
      goto LABEL_19;
    }

    v19 = *a1;
    v20 = a1[1];
    v21 = "failed: pattern can be applied only if the broadcasting dimension is the head dimension";
  }

  else
  {
    v19 = *a1;
    v20 = a1[1];
    v21 = "failed: pattern can match only a single broadcasting dimension";
  }

  v27 = v21;
  v28 = 259;
  v22 = *v20;
  v29 = &v27;
  v23 = *(v19 + 16);
  if (v23 && mlir::RewriterBase::Listener::classof(*(v19 + 16)))
  {
    (*(*v23 + 88))(v23, *(v22 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps_spi::ScaledDotProductAttentionOp &>(mlir::mps_spi::ScaledDotProductAttentionOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v29);
  }

  v18 = 0;
LABEL_19:
  if (v30 != v32)
  {
    free(v30);
  }

  return v18;
}

void mlir::mps::anonymous namespace::CanonicalizeMatMulTransposeConstantRHS::~CanonicalizeMatMulTransposeConstantRHS(mlir::mps::_anonymous_namespace_::CanonicalizeMatMulTransposeConstantRHS *this)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeMatMulTransposeConstantRHS::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::BoolAttr **a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 72) + 56);
  v21 = v4;
  v22 = a2;
  v5 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v20[0] = v5;
  v20[1] = v6;
  if (!*v4 || **v4 || mlir::mps::MatMulOp::getTransposeRhs(&v22))
  {
    return 0;
  }

  result = mlir::CallOpInterface::getArgOperands(v20);
  if (result)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v20);
    if (v9)
    {
      v10 = 8 * v9;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

LABEL_14:
    mlir::CallableOpInterface::getArgAttrsAttr(v20);
    if (v11 < 2)
    {
      return 0;
    }

    v23[0] = v4;
    result = mlir::Value::getDefiningOp(v23);
    if (result)
    {
      {
        v16 = result;
        result = v16;
      }

      result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
      if (result)
      {
        v12 = *(v22 + 24);
        LODWORD(v18) = -1;
        v19 = -2;
        v23[0] = v24;
        v23[1] = 0x100000000;
        mlir::OpBuilder::createOrFold<mlir::mps::TransposeOp,mlir::Value &,int,int>((a3 + 1), v23, v12, &v21, &v18, &v19);
        v13 = *v23[0];
        if (v23[0] != v24)
        {
          free(v23[0]);
        }

        v23[0] = v13;
        v14 = v22;
        v18 = *(*(v22 + 72) + 24);
        LOBYTE(v19) = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v22);
        v17 = 1;
        v15 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>(a3 + 1, *(v14 + 24), &v18, v23, &v19, &v17);
        (*(*a3 + 1))(a3, v14, v15);
        return 1;
      }
    }
  }

  return result;
}

void mlir::OpBuilder::createOrFold<mlir::mps::TransposeOp,mlir::Value &,int,int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, int *a6)
{
  v33[38] = *MEMORY[0x1E69E9840];
  v30 = a3;
  Context = mlir::Attribute::getContext(&v30);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(v33, v32, v31);
  }

  mlir::OperationState::OperationState(v33, a3, v13);
  mlir::mps::TransposeOp::build(a1, v33, *a4, *a5, *a6);
  v16 = mlir::Operation::create(v33, v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(a1 + 24);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v17 + 32, v16);
    v20 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v19);
    v21 = *v18;
    *v20 = *v18;
    v20[1] = v18;
    *(v21 + 8) = v20;
    *v18 = v20;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v16, v22);
  }

  if ((mlir::OpBuilder::tryFold(a1, v16, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v16);
    goto LABEL_20;
  }

  v23 = v16[9];
  if (v23)
  {
    v24 = (v16 - 4);
  }

  else
  {
    v24 = 0;
  }

  *(a2 + 8) = 0;
  if (v23 <= *(a2 + 12))
  {
    if (!v23)
    {
      v28 = 0;
      goto LABEL_17;
    }

    v25 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v23, 8);
    v25 = *(a2 + 8);
  }

  v26 = 0;
  v27 = *a2 + 8 * v25;
  do
  {
    *(v27 + 8 * v26) = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, v26);
    ++v26;
  }

  while (v23 != v26);
  v28 = *(a2 + 8);
LABEL_17:
  *(a2 + 8) = v28 + v23;
  if (*(a1 + 16))
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      (*(*v29 + 16))(v29, v16, 0, 0);
    }
  }

LABEL_20:
  mlir::OperationState::~OperationState(v33);
}

void *mlir::mps::anonymous namespace::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::Conv2DOp>::~CanonicalizeNCHWConv2DConstWeightsToHWIO(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::Conv2DOp>::~CanonicalizeNCHWConv2DConstWeightsToHWIO(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::Conv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v4 = *(*(a2 + 72) + 56);
  v5 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v15[0] = v5;
  v15[1] = v6;
  if (!*v4 || **v4)
  {
    return 0;
  }

  result = mlir::CallOpInterface::getArgOperands(v15);
  if (result)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v15);
    if (v9)
    {
      v10 = 8 * v9;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      return 0;
    }

LABEL_13:
    if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v16) || mlir::mps::Conv3DOp::getWeightsLayout(&v16) != 2)
    {
      return 0;
    }

    v14[0] = v4;
    result = mlir::Value::getDefiningOp(v14);
    if (result)
    {
      {
        v13 = result;
        result = v13;
      }

      result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
      if (result)
      {
        v11 = v16;
        if (v16)
        {
          InterfaceFor = mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor(v16);
        }

        else
        {
          InterfaceFor = 0;
        }

        v14[0] = v11;
        v14[1] = InterfaceFor;
        return mlir::ConvertOpLayoutInterface::convertLayout(v14, 0, 2, a3);
      }
    }
  }

  return result;
}

void *mlir::mps::anonymous namespace::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::Conv2DDataGradientOp>::~CanonicalizeNCHWConv2DConstWeightsToHWIO(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::Conv2DDataGradientOp>::~CanonicalizeNCHWConv2DConstWeightsToHWIO(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::Conv2DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v17, 1u);
  v5 = *(*(v17 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v16[0] = v6;
  v16[1] = v7;
  if (!*v5 || **v5)
  {
    return 0;
  }

  result = mlir::CallOpInterface::getArgOperands(v16);
  if (result)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v16);
    if (v10)
    {
      v11 = 8 * v10;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_13;
        }
      }

      return 0;
    }

LABEL_13:
    if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v17) || mlir::mps::Conv3DOp::getWeightsLayout(&v17) != 2)
    {
      return 0;
    }

    v15[0] = v5;
    result = mlir::Value::getDefiningOp(v15);
    if (result)
    {
      {
        v14 = result;
        result = v14;
      }

      result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
      if (result)
      {
        v12 = v17;
        if (v17)
        {
          InterfaceFor = mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor(v17);
        }

        else
        {
          InterfaceFor = 0;
        }

        v15[0] = v12;
        v15[1] = InterfaceFor;
        return mlir::ConvertOpLayoutInterface::convertLayout(v15, 0, 2, a3);
      }
    }
  }

  return result;
}

void *mlir::mps::anonymous namespace::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::DepthwiseConv2DOp>::~CanonicalizeNCHWConv2DConstWeightsToHWIO(void *a1)
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

void mlir::mps::anonymous namespace::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::DepthwiseConv2DOp>::~CanonicalizeNCHWConv2DConstWeightsToHWIO(void *__p)
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

uint64_t mlir::mps::anonymous namespace::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::DepthwiseConv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v4 = *(*(a2 + 72) + 56);
  v5 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v15[0] = v5;
  v15[1] = v6;
  if (!*v4 || **v4)
  {
    return 0;
  }

  result = mlir::CallOpInterface::getArgOperands(v15);
  if (result)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v15);
    if (v9)
    {
      v10 = 8 * v9;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      return 0;
    }

LABEL_13:
    if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v16) || mlir::mps::StencilOp::getPaddingStyle(&v16) != 2)
    {
      return 0;
    }

    v14[0] = v4;
    result = mlir::Value::getDefiningOp(v14);
    if (result)
    {
      {
        v13 = result;
        result = v13;
      }

      result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
      if (result)
      {
        v11 = v16;
        if (v16)
        {
          InterfaceFor = mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor(v16);
        }

        else
        {
          InterfaceFor = 0;
        }

        v14[0] = v11;
        v14[1] = InterfaceFor;
        return mlir::ConvertOpLayoutInterface::convertLayout(v14, 0, 2, a3);
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, unsigned __int8 a14, uint64_t a15, int a16, __int16 a17, char a18, unsigned __int8 a19, uint64_t a20)
{
  a14 = a1;

  return mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>((v20 + 8), v21, (v22 - 56), &a20, &a19, &a14);
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (*(a16 + 36))
  {
    v17 = a16 - 16;
  }

  else
  {
    v17 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
}

void OUTLINED_FUNCTION_14_9(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 64) = 259;
  *(v2 - 56) = v1;
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = *(*(v19 + 72) + 56);

  return mlir::Value::getDefiningOp(&a19);
}

void *OUTLINED_FUNCTION_16_7(const void *a1, size_t a2)
{

  return llvm::raw_ostream::operator<<(v2, a1, a2);
}

void *OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = v11;

  return mlir::mps::ConstantOp::getAsAttribute(&a11);
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2)
{
}

uint64_t mlir::mps::createConstantsConversionPass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x560uLL);
  *v5 = &unk_1F5AFC2B0;
  *(v5 + 472) = *a1;
  v6 = *(v5 + 936);
  if (v6 && ((*(*v6 + 48))(v6, a1), v4[1088] = *(a1 + 4), (v7 = *(v4 + 143)) != 0) && ((*(*v7 + 48))(v7, a1 + 4), v9 = *(a1 + 5), v8 = a1 + 5, v4[1296] = v9, (v10 = *(v4 + 169)) != 0))
  {
    result = (*(*v10 + 48))(v10, v8);
    *a2 = v4;
  }

  else
  {
    v12 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::mps::MPSConstantsConversionBase<mlir::mps::anonymous namespace::ConstantsConversionPass>::MPSConstantsConversionBase(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *a1 = &unk_1F5AFC320;
  *&v5 = "The type of conversion to apply to the constant attributes.";
  *(&v5 + 1) = 59;
  v3 = 0;
  v4 = &v3;
  *&v6 = v7;
  v7[0] = "none";
  v7[1] = 4;
  v8 = 0;
  v9 = "The constant attribute type is not changed.";
  v10 = 43;
  v11 = "dense";
  v12 = 5;
  v13 = 1;
  v14 = "The constant attribute type is converted to DenseElementsAttr.";
  v15 = 62;
  v16 = "buffer-tensors";
  v17 = 14;
  v19 = "The constant attribute type is converted to MPSBufferTensorAttr with each attribute backed by its own resource blob.";
  v20 = 116;
  v21 = "coalesced-buffer-tensors";
  v22 = 24;
  v18 = 2;
  v23 = 3;
  v24 = "The constant attribute type is converted to MPSBufferTensorAttr with all attributes coalesced and backed by a single resource blob.";
  v25 = 131;
  *(&v6 + 1) = 0x400000004;
  mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::mps::ConstantAttributeConversionType>,llvm::cl::ValuesClass>(a1 + 344, (a1 + 152), "conversion-type", 15, &v5, &v4, &v6);
  *(a1 + 344) = &unk_1F5AFC390;
  *(a1 + 944) = &unk_1F5AFC410;
  if (v6 != v7)
  {
    free(v6);
  }

  *&v6 = "Cast all constants attributes to the same ElementType than the op.";
  *(&v6 + 1) = 66;
  LOBYTE(v4) = 0;
  *&v5 = &v4;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 960, (a1 + 152), "cast-to-op-type", 15, &v6, &v5);
  *(a1 + 960) = &unk_1F5AFB130;
  *(a1 + 1152) = &unk_1F5AFB1B0;
  *&v6 = "Perform clipping to range of values of the output type before casting.";
  *(&v6 + 1) = 70;
  LOBYTE(v4) = 0;
  *&v5 = &v4;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1168, (a1 + 152), "clip-to-limits", 14, &v6, &v5);
  *(a1 + 1168) = &unk_1F5AFB130;
  *(a1 + 1360) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::mps::anonymous namespace::ConstantsConversionPass::~ConstantsConversionPass(mlir::mps::_anonymous_namespace_::ConstantsConversionPass *this)
{
  *this = &unk_1F5AFC320;
  *(this + 146) = &unk_1F5B3E720;
  v2 = this + 1328;
  v3 = *(this + 169);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 146) = &unk_1F5B3E1D8;
  v4 = *(this + 158);
  if (v4 != *(this + 157))
  {
    free(v4);
  }

  v5 = *(this + 154);
  if (v5 != this + 1248)
  {
    free(v5);
  }

  *(this + 120) = &unk_1F5B3E720;
  v6 = *(this + 143);
  if (v6 == (this + 1120))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 120) = &unk_1F5B3E1D8;
  v7 = *(this + 132);
  if (v7 != *(this + 131))
  {
    free(v7);
  }

  v8 = *(this + 128);
  if (v8 != this + 1040)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(this + 43);
  *this = &unk_1F5B01A70;
  v9 = *(this + 39);
  if (v9)
  {
    *(this + 40) = v9;
    operator delete(v9);
  }

  if (*(this + 73))
  {
    v10 = *(this + 72);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = *(*(this + 35) + v11);
        if (v12 != -8 && v12 != 0)
        {
          llvm::deallocate_buffer(v12, (*v12 + 17));
        }

        v11 += 8;
      }

      while (8 * v10 != v11);
    }
  }

  free(*(this + 35));
  v14 = *(this + 29);
  if (v14 != this + 248)
  {
    free(v14);
  }

  v15 = *(this + 23);
  if (v15 != this + 200)
  {
    free(v15);
  }

  v16 = *(this + 16);
  if (v16)
  {
    *(this + 17) = v16;
    operator delete(v16);
  }

  if (*(this + 120) == 1)
  {
    v17 = *(this + 8);
    if (v17 != *(this + 7))
    {
      free(v17);
    }
  }
}

{

  operator delete(v1);
}

void mlir::mps::anonymous namespace::ConstantsConversionPass::runOnOperation(mlir::mps::_anonymous_namespace_::ConstantsConversionPass *this)
{
  v131 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  if (*(this + 118) <= 2u)
  {
    Context = mlir::Attribute::getContext((v2 + 24));
    *v104 = 0u;
    *v105 = 0u;
    v106 = v108;
    v107 = 0x600000000;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0x2800000000;
    v115 = 0;
    __p = 0;
    v117 = 0x2800000000;
    v3 = operator new(0x68uLL);
    v4 = *(this + 118);
    v5 = *(this + 1088);
    v6 = *(this + 1296);
    mlir::PatternBenefit::PatternBenefit(&v126, 1);
    mlir::Pattern::Pattern((v3 + 2), "mps.constant", 12, v126, Context, 0, 0);
    *v3 = &unk_1F5AFC6E8;
    v3[24] = v4;
    *(v3 + 100) = v5;
    *(v3 + 101) = v6;
    if (!*(v3 + 9))
    {
      v126 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertConstant]";
      *&v127 = 99;
      v7 = llvm::StringRef::find(&v126, "DesiredTypeName = ", 0x12uLL, 0);
      if (v127 >= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v127;
      }

      v9 = (v126 + v8);
      v10 = v127 - v8;
      if ((v127 - v8) >= 0x12)
      {
        v11 = 18;
      }

      else
      {
        v11 = v127 - v8;
      }

      v12 = &v9[v11];
      v13 = v10 - v11;
      if (v13 >= v13 - 1)
      {
        --v13;
      }

      *(v3 + 8) = v12;
      *(v3 + 9) = v13;
    }

    v14 = v3[22];
    if (v14 > v3[23])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v3 + 20), (v3 + 24), v14, 16);
      LODWORD(v14) = v3[22];
    }

    v3[22] = v14;
    v15 = v104[1];
    if (v104[1] < v105[0])
    {
      *v104[1] = v3;
      v16 = v15 + 8;
      goto LABEL_66;
    }

    v30 = v104[0];
    v31 = v104[1] - v104[0];
    v32 = (v104[1] - v104[0]) >> 3;
    v33 = v32 + 1;
    if (!((v32 + 1) >> 61))
    {
      v34 = v105[0] - v104[0];
      if ((v105[0] - v104[0]) >> 2 > v33)
      {
        v33 = v34 >> 2;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF8)
      {
        v35 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (!v35)
      {
        v36 = 0;
LABEL_64:
        v50 = &v36[8 * v32];
        *v50 = v3;
        v16 = v50 + 8;
        memcpy(v36, v30, v31);
        v104[0] = v36;
        v104[1] = v16;
        v105[0] = &v36[8 * v35];
        if (v30)
        {
          operator delete(v30);
        }

LABEL_66:
        v104[1] = v16;
        mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(&v123, &Context, 0, 0, 0, 0);
        v51 = *(v2 + 44);
        if ((v51 & 0x7FFFFF) != 0)
        {
          v52 = (((v2 + 16 * ((v51 >> 23) & 1) + ((v51 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 40));
          LOBYTE(v120) = 0;
          v126 = 0x200000000;
          v127 = xmmword_1E097BBC0;
          v129 = 0;
          v130 = 0;
          v128 = 0;
          mlir::applyPatternsAndFoldGreedily(v52, &v123, &v126, &v120);
        }

        std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v123);
        if (HIDWORD(__p) && __p)
        {
          v53 = 0;
          do
          {
            v54 = *(v115 + v53);
            if (v54 != -8 && v54 != 0)
            {
              v56 = *v54;
              v57 = *(v54 + 4);
              if (v57 == (v54 + 8))
              {
                (*(*v57 + 32))(v57);
              }

              else if (v57)
              {
                (*(*v57 + 40))(v57);
              }

              llvm::deallocate_buffer(v54, (v56 + 41));
            }

            v53 += 8;
          }

          while (8 * __p != v53);
        }

        free(v115);
        if (HIDWORD(v113) && v113)
        {
          v58 = 0;
          do
          {
            v59 = *(v112 + v58);
            if (v59 != -8 && v59 != 0)
            {
              v61 = *v59;
              v62 = *(v59 + 4);
              if (v62 == (v59 + 8))
              {
                (*(*v62 + 32))(v62);
              }

              else if (v62)
              {
                (*(*v62 + 40))(v62);
              }

              llvm::deallocate_buffer(v59, (v61 + 41));
            }

            v58 += 8;
          }

          while (8 * v113 != v58);
        }

        free(v112);
        llvm::deallocate_buffer(v109, (16 * v111));
      }

      if (!(v35 >> 61))
      {
        v36 = operator new(8 * v35);
        goto LABEL_64;
      }

LABEL_164:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

LABEL_163:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (*(*(v2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id || v2 == 0)
  {
    LOWORD(v129) = 257;
    mlir::Operation::emitOpError(v2, &v126, &Context);
    if (Context)
    {
      LODWORD(v123) = 3;
      v124 = "Coalescing buffers is only supported on top level ModuleOp.";
      v125[0] = 59;
      v18 = &v123;
      v19 = v105[0];
      if (LODWORD(v105[1]) >= HIDWORD(v105[1]))
      {
        if (v105[0] <= &v123 && v105[0] + 24 * LODWORD(v105[1]) > &v123)
        {
          v97 = &v123 - v105[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(v105, &v106, LODWORD(v105[1]) + 1, 24);
          v19 = v105[0];
          v18 = (v105[0] + v97);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v105, &v106, LODWORD(v105[1]) + 1, 24);
          v18 = &v123;
          v19 = v105[0];
        }
      }

      v20 = v19 + 24 * LODWORD(v105[1]);
      v21 = *v18;
      *(v20 + 2) = v18[2];
      *v20 = v21;
      ++LODWORD(v105[1]);
      if (Context)
      {
        mlir::InFlightDiagnostic::report(&Context);
      }
    }

    if (v119 == 1)
    {
      if (v118 != &v119)
      {
        free(v118);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v117;
        v24 = __p;
        if (v117 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v117 = v22;
        operator delete(v24);
      }

      v25 = v113;
      if (v113)
      {
        v26 = v114;
        v27 = v113;
        if (v114 != v113)
        {
          do
          {
            v29 = *--v26;
            v28 = v29;
            *v26 = 0;
            if (v29)
            {
              operator delete[](v28);
            }
          }

          while (v26 != v25);
          v27 = v113;
        }

        v114 = v25;
        operator delete(v27);
      }

      if (v105[0] != &v106)
      {
        free(v105[0]);
      }
    }

LABEL_158:
    *(this + 5) |= 4uLL;
    return;
  }

  if (*(this + 1088) == 1)
  {
    Context = mlir::Attribute::getContext((v2 + 24));
    *v104 = 0u;
    *v105 = 0u;
    v106 = v108;
    v107 = 0x600000000;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0x2800000000;
    v115 = 0;
    __p = 0;
    v117 = 0x2800000000;
    v37 = operator new(0x68uLL);
    v38 = *(this + 1088);
    v39 = *(this + 1296);
    mlir::PatternBenefit::PatternBenefit(&v126, 1);
    mlir::Pattern::Pattern((v37 + 2), "mps.constant", 12, v126, Context, 0, 0);
    *v37 = &unk_1F5AFC6E8;
    v37[24] = 0;
    *(v37 + 100) = v38;
    *(v37 + 101) = v39;
    if (!*(v37 + 9))
    {
      v126 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertConstant]";
      *&v127 = 99;
      v40 = llvm::StringRef::find(&v126, "DesiredTypeName = ", 0x12uLL, 0);
      if (v127 >= v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = v127;
      }

      v42 = (v126 + v41);
      v43 = v127 - v41;
      if ((v127 - v41) >= 0x12)
      {
        v44 = 18;
      }

      else
      {
        v44 = v127 - v41;
      }

      v45 = &v42[v44];
      v46 = v43 - v44;
      if (v46 >= v46 - 1)
      {
        --v46;
      }

      *(v37 + 8) = v45;
      *(v37 + 9) = v46;
    }

    v47 = v37[22];
    if (v47 > v37[23])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v37 + 20), (v37 + 24), v47, 16);
      LODWORD(v47) = v37[22];
    }

    v37[22] = v47;
    v48 = v104[1];
    if (v104[1] >= v105[0])
    {
      v63 = v104[0];
      v64 = v104[1] - v104[0];
      v65 = (v104[1] - v104[0]) >> 3;
      v66 = v65 + 1;
      if ((v65 + 1) >> 61)
      {
        goto LABEL_163;
      }

      v67 = v105[0] - v104[0];
      if ((v105[0] - v104[0]) >> 2 > v66)
      {
        v66 = v67 >> 2;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFF8)
      {
        v68 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v66;
      }

      if (v68)
      {
        if (v68 >> 61)
        {
          goto LABEL_164;
        }

        v69 = operator new(8 * v68);
      }

      else
      {
        v69 = 0;
      }

      v70 = &v69[8 * v65];
      *v70 = v37;
      v49 = v70 + 8;
      memcpy(v69, v63, v64);
      v104[0] = v69;
      v104[1] = v49;
      v105[0] = &v69[8 * v68];
      if (v63)
      {
        operator delete(v63);
      }
    }

    else
    {
      *v104[1] = v37;
      v49 = v48 + 8;
    }

    v104[1] = v49;
    mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(&v123, &Context, 0, 0, 0, 0);
    v71 = *(v2 + 44);
    if ((v71 & 0x7FFFFF) != 0)
    {
      v72 = (((v2 + 16 * ((v71 >> 23) & 1) + ((v71 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 40));
      LOBYTE(v120) = 0;
      v126 = 0x200000000;
      v127 = xmmword_1E097BBC0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      mlir::applyPatternsAndFoldGreedily(v72, &v123, &v126, &v120);
    }

    std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&v123);
    if (HIDWORD(__p) && __p)
    {
      v73 = 0;
      do
      {
        v74 = *(v115 + v73);
        if (v74 != -8 && v74 != 0)
        {
          v76 = *v74;
          v77 = *(v74 + 4);
          if (v77 == (v74 + 8))
          {
            (*(*v77 + 32))(v77);
          }

          else if (v77)
          {
            (*(*v77 + 40))(v77);
          }

          llvm::deallocate_buffer(v74, (v76 + 41));
        }

        v73 += 8;
      }

      while (8 * __p != v73);
    }

    free(v115);
    if (HIDWORD(v113) && v113)
    {
      v78 = 0;
      do
      {
        v79 = *(v112 + v78);
        if (v79 != -8 && v79 != 0)
        {
          v81 = *v79;
          v82 = *(v79 + 4);
          if (v82 == (v79 + 8))
          {
            (*(*v82 + 32))(v82);
          }

          else if (v82)
          {
            (*(*v82 + 40))(v82);
          }

          llvm::deallocate_buffer(v79, (v81 + 41));
        }

        v78 += 8;
      }

      while (8 * v113 != v78);
    }

    free(v112);
    llvm::deallocate_buffer(v109, (16 * v111));
  }

  v126 = &v127 + 8;
  *&v127 = 0xA00000000;
  v123 = v125;
  v124 = 0xA00000000;
  Context = &v104[1];
  v104[0] = 0xA00000000;
  v120 = &v126;
  v121 = &v123;
  p_Context = &Context;
  v99 = &v120;
  mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_123ConstantsConversionPass31convertToCoalescedBufferTensorsENS1_8ModuleOpEEUlNSB_10ConstantOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v99, 1);
  v83 = v127;
  if (v127 >= 2)
  {
    mlir::mps::getBufferTensorAttrs(v123, v124, Context, LODWORD(v104[0]), &v120);
    v100[0] = mlir::Attribute::getContext((v2 + 24));
    v100[1] = 0;
    v101 = 0;
    v102 = 0;
    v99 = &unk_1F5AFAFF0;
    if (v127 && v121)
    {
      v85 = v126;
      v86 = v120;
      v87 = 8 * v121 - 8;
      v88 = 8 * v127 - 8;
      do
      {
        v89 = *(*v85 + 16);
        v90 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*v85, v84);
        v101 = v89;
        v102 = v90;
        v92 = *v85++;
        v91 = v92;
        v93 = v92 - 16;
        if (*(v92 + 36))
        {
          v94 = v93;
        }

        else
        {
          v94 = 0;
        }

        v98 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v94, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v95 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr>(v100, *(v91 + 24), &v98, v86);
        (v99[1])(&v99, v91, v95);
        if (!v88)
        {
          break;
        }

        ++v86;
        v96 = v87;
        v87 -= 8;
        v88 -= 8;
      }

      while (v96);
    }

    MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v99, v84);
    if (v120 != &p_Context)
    {
      free(v120);
    }
  }

  if (Context != &v104[1])
  {
    free(Context);
  }

  if (v123 != v125)
  {
    free(v123);
  }

  if (v126 != (&v127 + 8))
  {
    free(v126);
  }

  if (v83 <= 1)
  {
    goto LABEL_158;
  }
}

uint64_t mlir::mps::MPSConstantsConversionBase<mlir::mps::anonymous namespace::ConstantsConversionPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x560uLL);
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
  *v4 = &unk_1F5AFC320;
  *&v9 = "The type of conversion to apply to the constant attributes.";
  *(&v9 + 1) = 59;
  v7 = 0;
  v8 = &v7;
  *&v10 = v11;
  v11[0] = "none";
  v11[1] = 4;
  v12 = 0;
  v13 = "The constant attribute type is not changed.";
  v14 = 43;
  v15 = "dense";
  v16 = 5;
  v17 = 1;
  v18 = "The constant attribute type is converted to DenseElementsAttr.";
  v19 = 62;
  v20 = "buffer-tensors";
  v21 = 14;
  v23 = "The constant attribute type is converted to MPSBufferTensorAttr with each attribute backed by its own resource blob.";
  v24 = 116;
  v25 = "coalesced-buffer-tensors";
  v26 = 24;
  v22 = 2;
  v27 = 3;
  v28 = "The constant attribute type is converted to MPSBufferTensorAttr with all attributes coalesced and backed by a single resource blob.";
  v29 = 131;
  *(&v10 + 1) = 0x400000004;
  mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::mps::ConstantAttributeConversionType>,llvm::cl::ValuesClass>(v4 + 344, v4 + 152, "conversion-type", 15, &v9, &v8, &v10);
  *(v4 + 43) = &unk_1F5AFC390;
  *(v4 + 118) = &unk_1F5AFC410;
  if (v10 != v11)
  {
    free(v10);
  }

  *&v10 = "Cast all constants attributes to the same ElementType than the op.";
  *(&v10 + 1) = 66;
  LOBYTE(v8) = 0;
  *&v9 = &v8;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 60), v4 + 19, "cast-to-op-type", 15, &v10, &v9);
  *(v4 + 120) = &unk_1F5AFB130;
  *(v4 + 144) = &unk_1F5AFB1B0;
  *&v10 = "Perform clipping to range of values of the output type before casting.";
  *(&v10 + 1) = 70;
  LOBYTE(v8) = 0;
  *&v9 = &v8;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((v4 + 73), v4 + 19, "clip-to-limits", 14, &v10, &v9);
  *(v4 + 146) = &unk_1F5AFB130;
  *(v4 + 170) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5AFC2B0;
  *a2 = v4;
  return result;
}

uint64_t mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::mps::ConstantAttributeConversionType>,llvm::cl::ValuesClass>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6, uint64_t *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v9 = llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::mps::ConstantAttributeConversionType>,llvm::cl::ValuesClass>(a1, v11, &v14, a5, a6, a7);
  *(v9 + 608) = 0;
  *v9 = &unk_1F5AFC450;
  *(v9 + 600) = &unk_1F5AFC4D0;
  v14 = (v9 + 600);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v14);
  v12[0] = &unk_1F5AFC6A0;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_1F5AFC6A0;
  v15 = a1;
  std::__function::__value_func<void ()(mlir::mps::ConstantAttributeConversionType const&)>::swap[abi:nn200100](&v14, a1 + 568);
  if (v16 == &v14)
  {
    (*(*v16 + 4))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 5))();
  }

  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v12 = 0;
  result = llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::parse(a1 + 152, a1, a3, a4, a5, a6, &v12);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v12;
    *(a1 + 12) = a2;
    v10 = *(a1 + 592);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v12);
      return v9;
    }

    else
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::getValueExpectedFlagDefault(v11);
    }
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::Pass::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(void *a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(a1);

  operator delete(v1);
}

void *llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::printOptionValue(void *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_1F5AFC578;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 19), result, &v6, (result + 17), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::getExtraOptionNames(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 160) + 24))
  {
    v3 = result + 152;
    result = (*(*(result + 152) + 16))(result + 152);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        result = (*(*v3 + 24))(v3, v5);
        v7 = *(a2 + 8);
        if (v7 >= *(a2 + 12))
        {
          v9 = v6;
          v10 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v7 + 1, 16);
          v6 = v9;
          result = v10;
          v7 = *(a2 + 8);
        }

        v8 = (*a2 + 16 * v7);
        *v8 = result;
        v8[1] = v6;
        ++*(a2 + 8);
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }

  return result;
}

void *mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

    ;
  }

  v10 = *(i - 44);
  v11 = *(i - 36);
  result = *(this + 4);
  if (v11 <= *(this + 3) - result)
  {
    if (v11)
    {
      v13 = *(i - 36);
      result = memcpy(result, v10, v11);
      *(this + 4) += v13;
    }
  }

  else
  {

    return llvm::raw_ostream::write(this, v10, v11);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 472);
  *(result + 608) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option((a1 - 600));

  operator delete(v1);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 472) = *(a2 - 472);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::mps::ConstantAttributeConversionType>,llvm::cl::ValuesClass>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, int **a5, uint64_t *a6)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v15 = *(a1 + 72);
  if (v15 >= *(a1 + 76))
  {
    v21 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v15 + 1, 8);
    GeneralCategory = v21;
    LODWORD(v15) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v15) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFC578;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5AFC510;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 152) = &unk_1F5AFC5B8;
  *(a1 + 568) = &unk_1F5AFC658;
  *(a1 + 592) = a1 + 568;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v16 = **a5;
  *(a1 + 128) = v16;
  *(a1 + 148) = 1;
  *(a1 + 144) = v16;
  v17 = *(a6 + 2);
  if (v17)
  {
    v18 = *a6;
    v19 = v18 + 40 * v17;
    do
    {
      llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::addLiteralOption<int>(a1 + 152, *v18, *(v18 + 8), (v18 + 16), *(v18 + 24), *(v18 + 32));
      v18 += 40;
    }

    while (v18 != v19);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(void *a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(a1);

  operator delete(v1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option((a1 - 600));

  operator delete(v1);
}

void *llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~opt(void *a1)
{
  *a1 = &unk_1F5AFC510;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F5AFC608;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F5B3E1D8;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

void llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~opt(char *__p)
{
  *__p = &unk_1F5AFC510;
  v2 = __p + 568;
  v3 = *(__p + 74);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(__p + 19) = &unk_1F5AFC608;
  v4 = *(__p + 21);
  if (v4 != __p + 184)
  {
    free(v4);
  }

  *__p = &unk_1F5B3E1D8;
  v5 = *(__p + 12);
  if (v5 != *(__p + 11))
  {
    free(v5);
  }

  v6 = *(__p + 8);
  if (v6 != __p + 80)
  {
    free(v6);
  }

  operator delete(__p);
}

void *mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>::~GenericOptionParser(void *result)
{
  *result = &unk_1F5AFC608;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_1F5AFC608;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  operator delete(a1);
}

void *llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::~parser(void *result)
{
  *result = &unk_1F5AFC608;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::~parser(void *a1)
{
  *a1 = &unk_1F5AFC608;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  operator delete(a1);
}

void *std::__function::__func<llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::{lambda(mlir::mps::ConstantAttributeConversionType const&)#1},std::allocator<llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::{lambda(mlir::mps::ConstantAttributeConversionType const&)#1}>,void ()(mlir::mps::ConstantAttributeConversionType const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFC658;
  return result;
}

uint64_t llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a5;
  v19[3] = a6;
  v7 = v19;
  v19[4] = &unk_1F5AFC578;
  v21 = 1;
  v20 = v6;
  v9 = (a1 + 16);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    if (v8 <= v19 && v8 + 48 * v10 > v19)
    {
      v18 = v19 - v8;
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = &v18[*v9];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = v19;
    }

    a3 = v17;
    a2 = v16;
    a1 = v15;
  }

  v11 = v8 + 48 * *(a1 + 24);
  v12 = *(v7 + 1);
  *v11 = *v7;
  *(v11 + 16) = v12;
  *(v11 + 32) = &unk_1F5AFC598;
  v13 = *(v7 + 10);
  *(v11 + 44) = v7[44];
  *(v11 + 40) = v13;
  *(v11 + 32) = &unk_1F5AFC578;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[48 * v7];
    v9 = v5 + 32;
    v10 = v5;
    do
    {
      v11 = *(v6 + 1);
      *v10 = *v6;
      *(v10 + 16) = v11;
      *(v10 + 32) = &unk_1F5AFC598;
      v12 = *(v6 + 10);
      *(v10 + 44) = v6[44];
      *(v10 + 40) = v12;
      *(v10 + 32) = &unk_1F5AFC578;
      v10 += 48;
      v6 += 48;
      v9 += 48;
    }

    while (v6 != v8);
    v6 = *a1;
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

uint64_t std::__function::__value_func<void ()(mlir::mps::ConstantAttributeConversionType const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_3mps31ConstantAttributeConversionTypeENS4_19GenericOptionParserIS7_EEEC1IJN4llvm2cl4descENSD_11initializerIS7_EENSD_11ValuesClassEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISQ_EEFvRKS7_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AFC6A0;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_3mps31ConstantAttributeConversionTypeENS4_19GenericOptionParserIS7_EEEC1IJN4llvm2cl4descENSD_11initializerIS7_EENSD_11ValuesClassEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISQ_EEFvRKS7_EE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AFC6A0;
  a2[1] = v2;
  return result;
}

void *mlir::detail::PassOptions::Option<mlir::mps::ConstantAttributeConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>::~Option(void *a1)
{
  *a1 = &unk_1F5AFC510;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F5AFC608;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F5B3E1D8;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

uint64_t llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::parse(uint64_t a1, void *a2, const void *a3, size_t a4, const void *a5, size_t a6, _DWORD *a7)
{
  v8 = *(*(a1 + 8) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    v13 = *(a1 + 16);
    while (1)
    {
      if (*(v13 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v13, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v13 += 48;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    result = 0;
    *a7 = *(v13 + 40);
  }

  else
  {
LABEL_14:
    v17 = 1283;
    v16[0] = "Cannot find option named '";
    v16[2] = a3;
    v16[3] = a4;
    v18[0] = v16;
    v18[2] = "'!";
    v19 = 770;
    v15 = llvm::errs(a1);
    return llvm::cl::Option::error(a2, v18, 0, 0, v15);
  }

  return result;
}

void mlir::mps::anonymous namespace::ConvertConstant::~ConvertConstant(mlir::mps::_anonymous_namespace_::ConvertConstant *this)
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

uint64_t mlir::mps::anonymous namespace::ConvertConstant::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94[9] = *MEMORY[0x1E69E9840];
  v91 = a2;
  AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v91);
  v90 = v5;
  Type = mlir::ElementsAttr::getType(&AsAttribute);
  v88 = Type;
  if (*(v91 + 36))
  {
    v7 = v91 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    Type = v88;
  }

  else
  {
    v9 = 0;
  }

  v87[0] = v8;
  v87[1] = v9;
  v86 = Type;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v88);
  if (RHS != mlir::ElementsAttr::isSplat(v87) && *(a1 + 100) == 1)
  {
    Value = mlir::ArrayAttr::getValue(&v88);
    v13 = v12;
    isSplat = mlir::ElementsAttr::isSplat(v87);
    v86 = mlir::RankedTensorType::get(Value, v13, isSplat, 0);
  }

  v15 = mlir::AffineBinaryOpExpr::getRHS(&v86);
  isCompatibleWithDenseStorage = mlir::mps::isCompatibleWithDenseStorage(v15);
  if ((isCompatibleWithDenseStorage & 1) == 0 && mlir::DenseElementsAttr::classof(AsAttribute))
  {
    if ((mlir::ElementsAttr::isSplat(&AsAttribute) & 1) == 0)
    {
      ElementsAttrRawData = mlir::getElementsAttrRawData(AsAttribute);
      v19 = v18;
      NumElements = mlir::ElementsAttr::getNumElements(AsAttribute, v90);
      v92 = mlir::AffineBinaryOpExpr::getRHS(&v88);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v92);
      v22 = 8 / IntOrFloatBitWidth;
      if (v22 * IntOrFloatBitWidth == 8)
      {
        if (NumElements)
        {
          v23 = (NumElements - (NumElements != 0)) / v22 + 1;
        }

        else
        {
          v23 = 0 / v22;
        }

        v92 = v94;
        v93 = xmmword_1E09700D0;
        if (v23)
        {
          v24 = IntOrFloatBitWidth;
          if (v23 < 0x29)
          {
            v26 = 0;
            v25 = v94;
          }

          else
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v92, v94, v23, 1);
            v25 = v92;
            v26 = v93;
          }

          if (v23 != v26)
          {
            bzero(v25 + v26, v23 - v26);
            v25 = v92;
          }

          v64 = 0;
          *&v93 = v23;
          do
          {
            v66 = v64 * v22;
            if (v19 - v64 * v22 >= v22)
            {
              v67 = v22;
            }

            else
            {
              v67 = v19 - v64 * v22;
            }

            if (v19 == v66)
            {
              LOBYTE(v65) = 0;
            }

            else
            {
              v68 = (ElementsAttrRawData + v66);
              v65 = *(ElementsAttrRawData + v66);
              if (v67 > 1)
              {
                v65 |= v68[1] << v24;
                if (v67 != 2)
                {
                  v65 |= v68[2] << (2 * v24);
                  if (v67 >= 4)
                  {
                    v65 |= v68[3] << (3 * v24);
                    if (v67 != 4)
                    {
                      v65 |= v68[4] << (4 * v24);
                      if (v67 >= 6)
                      {
                        v65 |= v68[5] << (5 * v24);
                        if (v67 != 6)
                        {
                          v65 |= v68[6] << (6 * v24);
                          if (v67 >= 8)
                          {
                            v65 |= v68[7] << (7 * v24);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            *v25 = v65;
            v25 = (v25 + 1);
            ++v64;
            --v23;
          }

          while (v23);
          v63 = v92;
          v62 = v93;
        }

        else
        {
          v62 = 0;
          v63 = v94;
        }

        BufferTensorAttr = mlir::mps::getBufferTensorAttr(v88, v63, v62);
        v85[0] = BufferTensorAttr;
        if (BufferTensorAttr)
        {
          BufferTensorAttr = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*BufferTensorAttr + 8);
        }

        v85[1] = BufferTensorAttr;
        v70 = v91;
        v71 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 8), *(v91 + 24), v87, v85);
        (*(*a3 + 8))(a3, v70, v71);
        if (v92 != v94)
        {
          free(v92);
        }

        return 1;
      }
    }

    return 0;
  }

  if (v88 != v86)
  {
LABEL_21:
    if (!isCompatibleWithDenseStorage)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v28 = *(a1 + 96);
  if (!v28)
  {
    return 0;
  }

  if (v28 == 2)
  {
    if (*(*AsAttribute + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id || (mlir::ElementsAttr::isSplat(&AsAttribute) & 1) != 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if ((isCompatibleWithDenseStorage & 1) == 0 || mlir::DenseElementsAttr::classof(AsAttribute))
  {
    return 0;
  }

LABEL_22:
  if ((mlir::ElementsAttr::isSplat(&AsAttribute) & 1) != 0 || (v27 = *(a1 + 96), v27 == 1))
  {
    isCompatibleWithDenseStorage = 1;
  }

  else
  {
    isCompatibleWithDenseStorage = v27 != 2 && mlir::DenseElementsAttr::classof(AsAttribute);
  }

LABEL_32:
  if (v88 == v86)
  {
    v35 = mlir::getElementsAttrRawData(AsAttribute);
    v36 = v31;
    v92 = 0;
    *&v93 = 0;
    v37 = v88;
    if (isCompatibleWithDenseStorage)
    {
      if (v88)
      {
        v38 = v88;
        v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v88 + 8);
        v37 = v38;
      }

      else
      {
        v39 = 0;
      }

      v55 = mlir::DenseElementsAttr::getFromRawBuffer(v37, v39, v35, v36, v32, v33, v34);
      v56 = v55;
      if (!v55)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v55 = mlir::mps::getBufferTensorAttr(v88, v35, v31);
      v56 = v55;
      if (!v55)
      {
        goto LABEL_68;
      }
    }

    v55 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v56 + 8);
LABEL_68:
    v92 = v56;
    *&v93 = v55;
    v60 = v91;
    v61 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 8), *(v91 + 24), v87, &v92);
    (*(*a3 + 8))(a3, v60, v61);
    return 1;
  }

  mlir::mps::CPUNDArray::CPUNDArray(&v92, AsAttribute, v90);
  v29 = v86;
  if (v86)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
  }

  else
  {
    v30 = 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(v85, v29, v30, 0);
  if (*(a1 + 101))
  {
    v40 = 14;
  }

  else
  {
    v40 = 13;
  }

  mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v84, v40, 0.0);
  v41 = operator new(8uLL);
  v81 = v41;
  *v41 = &v92;
  v82 = (v41 + 1);
  v83 = v41 + 1;
  v42 = operator new(8uLL);
  v78 = v42;
  *v42 = v85;
  v79 = v42 + 1;
  v80 = v42 + 1;
  v43 = operator new(8uLL);
  v75 = v43;
  *v43 = 0;
  v76 = v43 + 1;
  v77 = v43 + 1;
  v44 = operator new(8uLL);
  __p = v44;
  *v44 = 0;
  v73 = v44 + 1;
  v74 = v44 + 1;
  mlir::mps::CPUNDArrayKernel::cpuTilingEngine(v84, &v81, &v78, &v75, &__p, 0, *(&v93 + 1), v84);
  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  v45 = v85[5];
  BufferByteSize = mlir::mps::CPUNDArray::getBufferByteSize(v85);
  v81 = 0;
  v82 = 0;
  v50 = v86;
  if (isCompatibleWithDenseStorage)
  {
    if (v86)
    {
      v51 = v86;
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
      v50 = v51;
    }

    else
    {
      v52 = 0;
    }

    v53 = mlir::DenseElementsAttr::getFromRawBuffer(v50, v52, v45, BufferByteSize, v46, v47, v48);
    v54 = v53;
    if (!v53)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v53 = mlir::mps::getBufferTensorAttr(v86, v45, BufferByteSize);
    v54 = v53;
    if (!v53)
    {
      goto LABEL_63;
    }
  }

  v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v54 + 8);
LABEL_63:
  v81 = v54;
  v82 = v53;
  v58 = v91;
  v59 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 8), *(v91 + 24), v87, &v81);
  (*(*a3 + 8))(a3, v58, v59);
  mlir::mps::CPUNDArray::~CPUNDArray(v85);
  mlir::mps::CPUNDArray::~CPUNDArray(&v92);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ConstantOp::build(a1, v17, *a3, *a4);
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

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps12_GLOBAL__N_123ConstantsConversionPass31convertToCoalescedBufferTensorsENS1_8ModuleOpEEUlNSB_10ConstantOpEE_SF_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
    {
      v21[3] = v2;
      v21[4] = v3;
      v4 = *result;
      v21[0] = a2;
      v20[0] = mlir::mps::ConstantOp::getAsAttribute(v21);
      v20[1] = v5;
      result = mlir::ElementsAttr::isSplat(v20);
      if ((result & 1) == 0)
      {
        v6 = *v4;
        v7 = v21[0];
        v8 = *(*v4 + 8);
        if (v8 >= *(*v4 + 12))
        {
          v17 = v21[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(*v4, v6 + 16, v8 + 1, 8);
          v7 = v17;
          LODWORD(v8) = *(v6 + 8);
        }

        *(*v6 + 8 * v8) = v7;
        ++*(v6 + 8);
        v9 = v4[1];
        Type = mlir::ElementsAttr::getType(v20);
        v11 = *(v9 + 8);
        if (v11 >= *(v9 + 12))
        {
          v18 = Type;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v9 + 16, v11 + 1, 8);
          Type = v18;
          LODWORD(v11) = *(v9 + 8);
        }

        *(*v9 + 8 * v11) = Type;
        ++*(v9 + 8);
        v12 = v4[2];
        result = mlir::getElementsAttrRawData(v20[0]);
        v14 = *(v12 + 8);
        if (v14 >= *(v12 + 12))
        {
          v19 = v13;
          v16 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, v12 + 16, v14 + 1, 16);
          v13 = v19;
          result = v16;
          LODWORD(v14) = *(v12 + 8);
        }

        v15 = (*v12 + 16 * v14);
        *v15 = result;
        v15[1] = v13;
        ++*(v12 + 8);
      }
    }
  }

  return result;
}

uint64_t mlir::mps::createConvertF32ToF16Pass@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x1B0uLL);
  v3[2] = "builtin.module";
  v3[3] = 14;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 120) = 0;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  v3[22] = 0;
  v3[23] = v3 + 25;
  v3[24] = 0x400000000;
  v3[29] = v3 + 31;
  v3[30] = 0x400000000;
  v3[35] = 0;
  v3[36] = 0;
  v3[37] = 0x1000000000;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *v3 = &unk_1F5AFC740;
  v3[42] = 0;
  v3[43] = &unk_1F5AFC7D0;
  *(v3 + 88) = 0x10000;
  v4 = llvm::APFloatBase::IEEEhalf(v3);
  v5 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v5 == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v3 + 46, v4);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((v3 + 46), v4);
  }

  v6 = (v3 + 46);
  if (v5 == v3[46])
  {
    llvm::detail::DoubleAPFloat::makeLargest(v6, 0);
  }

  else
  {
    llvm::detail::IEEEFloat::makeLargest(v6, 0);
  }

  v7 = v3 + 50;
  if (v5 == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v7, v4);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v7, v4);
  }

  v8 = (v3 + 50);
  if (v5 == v3[50])
  {
    llvm::detail::DoubleAPFloat::makeLargest(v8, 1);
  }

  else
  {
    Largest = llvm::detail::IEEEFloat::makeLargest(v8, 1);
  }

  v10 = llvm::APFloatBase::IEEEsingle(Largest);
  *(v3 + 106) = llvm::APFloat::convert((v3 + 45), v10, *(v3 + 354), v3 + 355);
  result = llvm::APFloat::convert((v3 + 49), v10, *(v3 + 354), v3 + 355);
  *(v3 + 107) = result;
  *a1 = v3;
  return result;
}

void mlir::mps::anonymous namespace::ConvertF32ToF16Pass::~ConvertF32ToF16Pass(mlir::mps::_anonymous_namespace_::ConvertF32ToF16Pass *this)
{
  *this = &unk_1F5AFC740;
  *(this + 43) = &unk_1F5AFC7D0;
  v2 = *(this + 50);
  v3 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v3 == v2)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((this + 400));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((this + 400));
  }

  v4 = (this + 368);
  if (v3 == *(this + 46))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v4);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v4);
  }

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_1F5AFC740;
  *(this + 43) = &unk_1F5AFC7D0;
  v2 = *(this + 50);
  v3 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v3 == v2)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((this + 400));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((this + 400));
  }

  v4 = (this + 368);
  if (v3 == *(this + 46))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v4);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v4);
  }

  mlir::Pass::~Pass(this);

  operator delete(v5);
}

void *mlir::mps::MPSConvertF32ToF16PassBase<mlir::mps::anonymous namespace::ConvertF32ToF16Pass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAFA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
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

uint64_t mlir::mps::anonymous namespace::ConvertF32ToF16Pass::runOnOperation(mlir::mps::_anonymous_namespace_::ConvertF32ToF16Pass *this)
{
  v2 = *(this + 5);
  v3 = (*(*this + 32))(this);
  if ((result & 1) == 0)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

void *mlir::mps::MPSConvertF32ToF16PassBase<mlir::mps::anonymous namespace::ConvertF32ToF16Pass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x1B0uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 88) = *(a1 + 352);
  *v4 = &unk_1F5AFC740;
  *(v4 + 42) = 0;
  *(v4 + 43) = &unk_1F5AFC7D0;
  v6 = *(a1 + 368);
  v7 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v4 + 46, (a1 + 368));
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((v4 + 368), (a1 + 368));
  }

  v8 = (v4 + 400);
  v9 = (a1 + 400);
  if (v7 == *(a1 + 400))
  {
    result = llvm::detail::DoubleAPFloat::DoubleAPFloat(v8, v9);
  }

  else
  {
    result = llvm::detail::IEEEFloat::IEEEFloat(v8, v9);
  }

  *(v4 + 53) = *(a1 + 424);
  *a2 = v4;
  return result;
}

BOOL mlir::mps::anonymous namespace::ConvertF32ToF16Pass::isValidConversion(mlir::mps::_anonymous_namespace_::ConvertF32ToF16Pass *this)
{
  if (*(this + 106))
  {
    v1 = (*(this + 106) & 0x10) == 0;
  }

  else
  {
    v1 = 0;
  }

  result = 0;
  if (!v1 && (!*(this + 107) || (*(this + 107) & 0x10) != 0))
  {
    return 1;
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::ConvertF32ToF16Pass::getConvertType(mlir::mps::_anonymous_namespace_::ConvertF32ToF16Pass *this, mlir::Operation *a2, const mlir::Type *a3)
{
  mlir::Type::isF32(a3);
  Context = mlir::Attribute::getContext((a2 + 24));

  return mlir::Float16Type::get(Context, v5);
}

void mlir::mps::anonymous namespace::ConvertF32ToF16Pass::mapFloatValueWithOverflowCounts(mlir::mps::_anonymous_namespace_::ConvertF32ToF16Pass *this@<X0>, const llvm::APFloat *a2@<X1>, unint64_t *a3@<X2>, llvm::APInt *a4@<X8>)
{
  v7 = (a2 + 8);
  v8 = *(a2 + 1);
  v9 = llvm::APFloatBase::PPCDoubleDouble(this);
  v10 = (this + 368);
  if (v9 == v8)
  {
    if (llvm::detail::DoubleAPFloat::compare(v7, v10) == 2)
    {
LABEL_3:
      ++*a3;
      v11 = (this + 368);
      if (v9 != *(this + 46))
      {
LABEL_4:
        v12 = a4;
LABEL_10:

        llvm::detail::IEEEFloat::bitcastToAPInt(v11, v12);
        return;
      }

      goto LABEL_15;
    }
  }

  else if (llvm::detail::IEEEFloat::compare(v7, v10) == 2)
  {
    goto LABEL_3;
  }

  v13 = (this + 400);
  if (v9 == *v7)
  {
    if (llvm::detail::DoubleAPFloat::compare(v7, v13))
    {
      goto LABEL_8;
    }

LABEL_14:
    ++*a3;
    v11 = (this + 400);
    if (v9 != *(this + 50))
    {
      goto LABEL_4;
    }

LABEL_15:
    v14 = a4;
    goto LABEL_17;
  }

  if (!llvm::detail::IEEEFloat::compare(v7, v13))
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v9 != *v7)
  {
    v12 = a4;
    v11 = v7;
    goto LABEL_10;
  }

  v14 = a4;
  v11 = v7;
LABEL_17:

  llvm::detail::DoubleAPFloat::bitcastToAPInt(v11, v14);
}

uint64_t non-virtual thunk tomlir::mps::anonymous namespace::ConvertF32ToF16Pass::getConvertType(int a1, uint64_t a2, mlir::Type *this)
{
  mlir::Type::isF32(this);
  Context = mlir::Attribute::getContext((a2 + 24));

  return mlir::Float16Type::get(Context, v5);
}

BOOL non-virtual thunk tomlir::mps::anonymous namespace::ConvertF32ToF16Pass::isValidConversion(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v1 = (*(a1 + 80) & 0x10) == 0;
  }

  else
  {
    v1 = 0;
  }

  result = 0;
  if (!v1 && (!*(a1 + 84) || (*(a1 + 84) & 0x10) != 0))
  {
    return 1;
  }

  return result;
}

void *mlir::mps::anonymous namespace::ConvertDataTypePassBase::convertElementsAttrRawData(mlir::mps::_anonymous_namespace_::ConvertDataTypePassBase *this, const mlir::ElementsAttr *a2, const mlir::ShapedType *a3)
{
  v69[0] = mlir::CallOpInterface::getArgOperands(a2);
  v69[1] = v5;
  isSplat = mlir::ElementsAttr::isSplat(v69);
  v71 = mlir::ElementsAttr::isSplat(a3);
  mlir::mps::CPUNDArray::CPUNDArray(v69, *a2, *(a2 + 1));
  v6 = *a3;
  v7 = *(a3 + 1);
  v8 = mlir::ElementsAttr::isSplat(a2);
  mlir::mps::CPUNDArray::CPUNDArray(v67, v6, v7, v8);
  if (mlir::ElementsAttr::isSplat(a2))
  {
    NumElements = 1;
  }

  else
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(a3);
    NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v11);
  }

  if (!mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isSignlessInteger(&isSplat, 64) || !mlir::Type::isSignedInteger(&v71, 32) && !mlir::Type::isSignlessInteger(&v71, 32))
  {
    if (mlir::Type::isUnsignedInteger(&isSplat, 64) && mlir::Type::isUnsignedInteger(&v71, 32))
    {
      if (NumElements < 1)
      {
        goto LABEL_42;
      }

      v15 = v70;
      v16 = v68;
      if (NumElements >= 8)
      {
        v17 = NumElements & 0x7FFFFFFFFFFFFFF8;
        v53 = v70 + 2;
        v54 = v68 + 1;
        v55 = NumElements & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v57 = v53[-2];
          v56 = v53[-1];
          v59 = *v53;
          v58 = v53[1];
          v53 += 4;
          v54[-1] = vuzp1q_s32(v57, v56);
          *v54 = vuzp1q_s32(v59, v58);
          v54 += 2;
          v55 -= 8;
        }

        while (v55);
        if (NumElements == v17)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v17 = 0;
      }

      v60 = NumElements - v17;
      v61 = &v16->i32[v17];
      v62 = &v15->i64[v17];
      do
      {
        v63 = *v62++;
        *v61++ = v63;
        --v60;
      }

      while (v60);
      goto LABEL_42;
    }

    mlir::Type::isF32(&isSplat);
    mlir::Type::isF16(&v71);
    if (NumElements < 1)
    {
      goto LABEL_42;
    }

    v18 = v70;
    v19 = v68;
    if (NumElements < 4)
    {
      v20 = 0;
      goto LABEL_34;
    }

    if (NumElements >= 0x10)
    {
      v20 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v32 = &v70[2];
      v33 = &v68[1];
      v34 = NumElements & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v36 = v32[-2];
        v35 = v32[-1];
        v38 = *v32;
        v37 = v32[1];
        v32 += 4;
        v33[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(v36), v35);
        *v33 = vcvt_hight_f16_f32(vcvt_f16_f32(v38), v37);
        v33 += 2;
        v34 -= 16;
      }

      while (v34);
      if (NumElements == v20)
      {
        goto LABEL_42;
      }

      if ((NumElements & 0xC) == 0)
      {
LABEL_34:
        v44 = NumElements - v20;
        v45 = &v19->i16[v20];
        v46 = &v18->i32[v20];
        do
        {
          v47 = *v46++;
          _S0 = v47;
          __asm { FCVT            H0, S0 }

          *v45++ = _S0;
          --v44;
        }

        while (v44);
        goto LABEL_42;
      }
    }

    else
    {
      v20 = 0;
    }

    v39 = v20;
    v20 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v40 = (v18 + 4 * v39);
    v41 = (v19 + 2 * v39);
    v42 = v39 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v43 = *v40++;
      *v41++ = vcvt_f16_f32(v43);
      v42 += 4;
    }

    while (v42);
    if (NumElements == v20)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  if (NumElements < 1)
  {
    goto LABEL_42;
  }

  v12 = v70;
  v13 = v68;
  if (NumElements < 8)
  {
    v14 = 0;
LABEL_22:
    v28 = NumElements - v14;
    v29 = &v13->i32[v14];
    v30 = &v12->i64[v14];
    do
    {
      v31 = *v30++;
      *v29++ = v31;
      --v28;
    }

    while (v28);
    goto LABEL_42;
  }

  v14 = NumElements & 0x7FFFFFFFFFFFFFF8;
  v21 = v70 + 2;
  v22 = v68 + 1;
  v23 = NumElements & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v25 = v21[-2];
    v24 = v21[-1];
    v27 = *v21;
    v26 = v21[1];
    v21 += 4;
    v22[-1] = vuzp1q_s32(v25, v24);
    *v22 = vuzp1q_s32(v27, v26);
    v22 += 2;
    v23 -= 8;
  }

  while (v23);
  if (NumElements != v14)
  {
    goto LABEL_22;
  }

LABEL_42:
  ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v67, 1, 0);
  v65 = ElementsAttr;
  if (ElementsAttr)
  {
    if (mlir::DenseElementsAttr::classof(ElementsAttr))
    {
      mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v65 + 8);
    }

    else
    {
      v65 = 0;
    }
  }

  mlir::mps::CPUNDArray::~CPUNDArray(v67);
  mlir::mps::CPUNDArray::~CPUNDArray(v69);
  return v65;
}

void *mlir::mps::anonymous namespace::ConvertDataTypePassBase::mapIntValueWithOverflowCounts@<X0>(const llvm::APInt *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 2);
  *(a2 + 8) = v4;
  if (v4 > 0x40)
  {
    return llvm::APInt::initSlowCase(a2, a1);
  }

  *a2 = *a1;
  return result;
}

uint64_t mlir::mps::anonymous namespace::ConvertDataTypePassBase::convertElementsAttr(mlir::mps::_anonymous_namespace_::ConvertDataTypePassBase *this, mlir::Operation *a2, const mlir::ElementsAttr *a3, mlir::ElementsAttr *a4, unint64_t *a5, uint64_t a6, int a7)
{
  ArgOperands = mlir::CallOpInterface::getArgOperands(a3);
  p_isSplat = v14;
  isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
  if (!(**this)(this, &isSplat))
  {
    return 0;
  }

  if (a6)
  {
    v15 = *a3;
    if (mlir::DenseElementsAttr::classof(v15))
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v31 = v16;
    if (*(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      ArgOperands = this;
      p_isSplat = &isSplat;
      v30 = a5;
      v18 = v17;
      if (!v17)
      {
LABEL_9:
        *a4 = v18;
        *(a4 + 1) = v17;
        if (!a7)
        {
          return a6;
        }

        goto LABEL_14;
      }
    }

    else
    {
      ArgOperands = this;
      p_isSplat = a5;
      v18 = v17;
      if (!v17)
      {
        goto LABEL_9;
      }
    }

    v17 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
    goto LABEL_9;
  }

  *a4 = *a3;
  if (!a7)
  {
    return a6;
  }

LABEL_14:
  if ((**this)(this, &isSplat))
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(a4);
    p_isSplat = v20;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v23 = v22;
    v24 = (*(*this + 8))(this, a2, &isSplat);
    v25 = mlir::RankedTensorType::get(ArgAttrsAttr, v23, v24, 0);
    v26 = v25;
    if (v25)
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    }

    ArgOperands = v26;
    p_isSplat = v25;
    *a4 = (*(*this + 24))(this, a4, &ArgOperands);
    *(a4 + 1) = v27;
    return 1;
  }

  return a6;
}

uint64_t mlir::mps::anonymous namespace::ConvertDataTypePassBase::runOnModule(uint64_t a1, mlir::ForwardIterator *a2, const void *a3, size_t a4)
{
  v18 = 0;
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    return 0;
  }

  v17[0] = a1;
  v17[1] = &v18;
  if (v18)
  {
    v9 = llvm::errs(v8);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 0x25uLL)
    {
      qmemcpy(v10, "WARNING: Data Type Conversion in pass ", 38);
      v11 = (*(v9 + 4) + 38);
      *(v9 + 4) = v11;
    }

    else
    {
      v9 = llvm::raw_ostream::write(v9, "WARNING: Data Type Conversion in pass ", 0x26uLL);
      v11 = *(v9 + 4);
    }

    if (a4 <= *(v9 + 3) - v11)
    {
      if (a4)
      {
        v13 = v9;
        memcpy(v11, a3, a4);
        v9 = v13;
        v11 = (*(v13 + 4) + a4);
        *(v13 + 4) = v11;
      }
    }

    else
    {
      v9 = llvm::raw_ostream::write(v9, a3, a4);
      v11 = *(v9 + 4);
    }

    if (*(v9 + 3) - v11 > 0xCuLL)
    {
      qmemcpy(v11, " encountered ", 13);
      *(v9 + 4) += 13;
    }

    else
    {
      v9 = llvm::raw_ostream::write(v9, " encountered ", 0xDuLL);
    }

    v14 = llvm::raw_ostream::operator<<(v9, v18);
    v15 = v14[4];
    if (v14[3] - v15 > 0x24uLL)
    {
      qmemcpy(v15, " instances of overflow and have been ", 37);
      v16 = (v14[4] + 37);
      v14[4] = v16;
    }

    else
    {
      v14 = llvm::raw_ostream::write(v14, " instances of overflow and have been ", 0x25uLL);
      v16 = v14[4];
    }

    if (v14[3] - v16 > 0x21uLL)
    {
      qmemcpy(v16, "clamped to fit the target ranges.\n", 34);
      v14[4] += 34;
    }

    else
    {
      llvm::raw_ostream::write(v14, "clamped to fit the target ranges.\n", 0x22uLL);
    }
  }

  return 1;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mps::anonymous namespace::ConvertDataTypePassBase::runOnModule(mlir::ModuleOp,llvm::StringRef)::{lambda(mlir::Operation *)#1}>(unsigned __int8 **a1, mlir::Operation *this)
{
  v3 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (!*(this + 47) || (v85.var0 = "name", v85.var1 = 4, mlir::Operation::getInherentAttr(this, v85), (v5 & 1) == 0))
  {
    v86.var0 = "name";
    v86.var1 = 4;
    mlir::DictionaryAttr::get((this + 56), v86);
  }

  if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v6 = this;
  }

  else
  {
    v6 = 0;
  }

  v73 = v6;
  if (v6)
  {
    FunctionType = mlir::func::FuncOp::getFunctionType(&v73);
    *&v81 = v82;
    *(&v81 + 1) = 0x100000000;
    Value = &v80;
    v79 = 0x100000000;
    Inputs = mlir::FunctionType::getInputs(&FunctionType);
    if (v8)
    {
      v9 = Inputs;
      v10 = 8 * v8;
      do
      {
        v11 = *v9;
        if (*v9)
        {
          v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
        }

        else
        {
          v12 = 0;
        }

        v76 = v11;
        v77 = v12;
        *&v74 = mlir::ElementsAttr::isSplat(&v76);
        if ((**v4)(v4, &v74))
        {
          isSplat = mlir::ElementsAttr::isSplat(&v76);
          v13 = (*(*v4 + 8))(v4, this, &isSplat);
          LOBYTE(v74) = 0;
          LOBYTE(v75[0]) = 0;
          v14 = mlir::ShapedType::cloneWith(&v76, &v74, v13);
        }

        else
        {
          v14 = v76;
        }

        v15 = DWORD2(v81);
        if (DWORD2(v81) >= HIDWORD(v81))
        {
          v16 = v14;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v82, DWORD2(v81) + 1, 8);
          v14 = v16;
          v15 = DWORD2(v81);
        }

        *(v81 + 8 * v15) = v14;
        ++DWORD2(v81);
        ++v9;
        v10 -= 8;
      }

      while (v10);
    }

    Results = mlir::FunctionType::getResults(&FunctionType);
    if (v18)
    {
      v19 = Results;
      v20 = 8 * v18;
      do
      {
        v21 = *v19;
        if (*v19)
        {
          v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
        }

        else
        {
          v22 = 0;
        }

        v76 = v21;
        v77 = v22;
        *&v74 = mlir::ElementsAttr::isSplat(&v76);
        if ((**v4)(v4, &v74))
        {
          isSplat = mlir::ElementsAttr::isSplat(&v76);
          v23 = (*(*v4 + 8))(v4, this, &isSplat);
          LOBYTE(v74) = 0;
          LOBYTE(v75[0]) = 0;
          v24 = mlir::ShapedType::cloneWith(&v76, &v74, v23);
        }

        else
        {
          v24 = v76;
        }

        v25 = v79;
        if (v79 >= HIDWORD(v79))
        {
          v26 = v24;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&Value, &v80, v79 + 1, 8);
          v24 = v26;
          v25 = v79;
        }

        *(Value + v25) = v24;
        LODWORD(v79) = v79 + 1;
        ++v19;
        v20 -= 8;
      }

      while (v20);
    }

    Context = mlir::Attribute::getContext((v73 + 6));
    mlir::ValueRange::ValueRange(&v74, v81, DWORD2(v81));
    mlir::ValueRange::ValueRange(&v76, Value, v79);
    v28 = mlir::FunctionType::get(Context, v74, *(&v74 + 1), v76, v77);
    v29 = v73;
    if (v73)
    {
      InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v73);
    }

    else
    {
      InterfaceFor = 0;
    }

    mlir::function_interface_impl::setFunctionType(v29, InterfaceFor, v28);
    v59 = (((&v73[4 * ((v73[11] >> 23) & 1) + 17] + ((v73[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v73[10]);
    if (*v59 != v59)
    {
      v60 = v59[1];
      v61 = v60 ? v60 - 8 : 0;
      v62 = *(v61 + 48);
      for (i = *(v61 + 56); v62 != i; ++v62)
      {
        v66 = *v62;
        v67 = (*(*v62 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v67)
        {
          v68 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
        }

        else
        {
          v68 = 0;
        }

        v76 = v67;
        v77 = v68;
        *&v74 = mlir::ElementsAttr::isSplat(&v76);
        if ((**v4)(v4, &v74))
        {
          isSplat = mlir::ElementsAttr::isSplat(&v76);
          v69 = (*(*v4 + 8))(v4, this, &isSplat);
          LOBYTE(v74) = 0;
          LOBYTE(v75[0]) = 0;
          *(v66 + 8) = *(v66 + 8) & 7 | mlir::ShapedType::cloneWith(&v76, &v74, v69);
        }
      }
    }

    if (Value != &v80)
    {
      free(Value);
    }

    v58 = v81;
    if (v81 == v82)
    {
      goto LABEL_73;
    }

LABEL_72:
    free(v58);
    goto LABEL_73;
  }

  v70 = v3;
  v31 = 0;
  *&v74 = v75;
  v75[0] = xmmword_1E86D2D98;
  v75[1] = *&off_1E86D2DA8;
  v75[2] = xmmword_1E86D2DB8;
  *(&v74 + 1) = 0x300000003;
  do
  {
    v37 = *&v75[v31];
    v36 = *(&v75[v31] + 1);
    if (!*(this + 47) || (v87.var0 = *&v75[v31], v87.var1 = *(&v75[v31] + 1), InherentAttr = mlir::Operation::getInherentAttr(this, v87), (v39 & 1) == 0))
    {
      v88.var0 = v37;
      v88.var1 = v36;
      InherentAttr = mlir::DictionaryAttr::get((this + 56), v88);
    }

    if (InherentAttr)
    {
      v40 = *(*InherentAttr + 136);
      v41 = v40 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
      v42 = v40 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id ? InherentAttr : 0;
      v76 = v42;
      if (v41)
      {
        *&v81 = mlir::AffineMapAttr::getValue(&v76);
        if ((**v4)(v4, &v81))
        {
          Value = mlir::AffineMapAttr::getValue(&v76);
          v32 = (*(*v4 + 8))(v4, this, &Value);
LABEL_34:
          v33 = mlir::TypeAttr::get(v32);
          v34 = mlir::Attribute::getContext((this + 24));
          v83 = 261;
          *&v81 = v37;
          *(&v81 + 1) = v36;
          v35 = mlir::StringAttr::get(v34, &v81);
          mlir::Operation::setAttr(this, v35, v33);
          goto LABEL_35;
        }

        v43 = mlir::AffineMapAttr::getValue(&v76);
        *&v81 = mlir::getElementTypeOrSelf(v43);
        if ((**v4)(v4, &v81))
        {
          v44 = mlir::AffineMapAttr::getValue(&v76);
          v45 = v44;
          if (v44)
          {
            v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
          }

          Value = v45;
          v79 = v44;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
          v48 = v47;
          v49 = mlir::AffineMapAttr::getValue(&v76);
          FunctionType = mlir::getElementTypeOrSelf(v49);
          v50 = (*(*v4 + 8))(v4, this, &FunctionType);
          v32 = mlir::RankedTensorType::get(ArgAttrsAttr, v48, v50, 0);
          goto LABEL_34;
        }
      }
    }

LABEL_35:
    ++v31;
  }

  while (v31 != 3);
  v51 = *(this + 9);
  if (v51)
  {
    v52 = this - 16;
  }

  else
  {
    v52 = 0;
  }

  v3 = v70;
  if (v51)
  {
    for (j = 0; j != v51; ++j)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v52, j);
      v55 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v55)
      {
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
      }

      else
      {
        v56 = 0;
      }

      Value = v55;
      v79 = v56;
      v76 = mlir::ElementsAttr::isSplat(&Value);
      if ((**v4)(v4, &v76))
      {
        v57 = (*(*v4 + 8))(v4, this, &v76);
        LOBYTE(v81) = 0;
        v82[0] = 0;
        *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::ShapedType::cloneWith(&Value, &v81, v57);
      }
    }
  }

  v58 = v74;
  if (v74 != v75)
  {
    goto LABEL_72;
  }

LABEL_73:
  if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    v64 = this;
  }

  else
  {
    v64 = 0;
  }

  Value = v64;
  if (v64)
  {
    v74 = 0uLL;
    *&v81 = mlir::mps::ConstantOp::getAsAttribute(&Value);
    *(&v81 + 1) = v65;
    if ((*(*v4 + 48))(v4, this, &v81, &v74, v3[1], v4[8], v4[9]))
    {
      mlir::mps::ConstantOp::updateValue(&Value, v74);
    }
  }
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&)>::callback_fn<mlir::mps::anonymous namespace::ConvertDataTypePassBase::convertElementsAttr(mlir::Operation *,mlir::ElementsAttr const&,mlir::ElementsAttr&,unsigned long &,BOOL,BOOL)::{lambda(llvm::APInt const&)#1}>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUnsignedInteger = mlir::Type::isUnsignedInteger(a1[1]);
  v6 = a1[2];
  v7 = *(*v4 + 32);

  return v7(v4, a2, isUnsignedInteger, v6);
}

uint64_t mlir::DialectRegistry::addExtension<mlir::mps::MPSDialect>(uint64_t a1, uint64_t *a2)
{
  v4 = operator new(0x50uLL);
  v4[3] = "mps";
  v4[4] = 3;
  v4[2] = 0x300000001;
  *v4 = &unk_1F5AFC818;
  v4[1] = (v4 + 3);
  v4[9] = a2;
  v10 = v4;
  v11 = a2;
  v13 = a2;
  v14 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(a1 + 24, &v13, &v14, &v15);
  v5 = v16;
  if ((v16 & 1) == 0)
  {
    v10 = 0;
LABEL_7:
    (*(*v4 + 8))(v4);
    return v5;
  }

  v6 = *(a1 + 56);
  *(v15 + 8) = v6;
  v13 = &v11;
  v12 = &v10;
  if (v6 >= *(a1 + 60))
  {
    llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>(a1 + 48, &std::piecewise_construct, &v13, &v12);
  }

  else
  {
    v7 = (*(a1 + 48) + 16 * v6);
    *v7 = a2;
    v8 = v10;
    v10 = 0;
    v7[1] = v8;
    *(a1 + 56) = v6 + 1;
  }

  v4 = v10;
  v10 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return v5;
}

void mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v163 = 1283;
    v108 = "mps.conv_2d";
LABEL_112:
    v160 = "Attempting to attach an interface to an unregistered operation ";
    v161 = v108;
    v112 = 11;
    goto LABEL_130;
  }

  v4 = v2;
  v5 = v2[2];
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v2[1];
    Values = mlir::SparseElementsAttr::getValues(v164);
    v5 = v4[2];
  }

  else
  {
    Values = v2[3];
  }

  {
    v143 = v5;
    v109 = Values;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    Values = v109;
    v5 = v143;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v7 = malloc(8uLL);
  v8 = v7;
  {
    v144 = v7;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v8 = v144;
  }

  mlir::detail::InterfaceMap::insert((v4 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v163 = 1283;
    v110 = "mps.conv_2d_data_gradient";
LABEL_114:
    v160 = "Attempting to attach an interface to an unregistered operation ";
    v161 = v110;
    v112 = 25;
    goto LABEL_130;
  }

  v11 = v9;
  v12 = v9[2];
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v9[1];
    v13 = mlir::SparseElementsAttr::getValues(v164);
    v12 = v11[2];
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = v9[3];
    {
      goto LABEL_12;
    }
  }

  v117 = v13;
  v130 = v12;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v13 = v117;
  v12 = v130;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v14 = malloc(8uLL);
  v15 = v14;
  {
    v145 = v14;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v15 = v145;
  }

  mlir::detail::InterfaceMap::insert((v11 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DWeightsGradientOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v163 = 1283;
    v111 = "mps.conv_2d_weights_gradient";
LABEL_116:
    v160 = "Attempting to attach an interface to an unregistered operation ";
    v161 = v111;
    v112 = 28;
    goto LABEL_130;
  }

  v18 = v16;
  v19 = v16[2];
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v16[1];
    v20 = mlir::SparseElementsAttr::getValues(v164);
    v19 = v18[2];
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v16[3];
    {
      goto LABEL_17;
    }
  }

  v118 = v20;
  v131 = v19;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v20 = v118;
  v19 = v131;
LABEL_17:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v21 = malloc(8uLL);
  v22 = v21;
  {
    v146 = v21;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v22 = v146;
  }

  mlir::detail::InterfaceMap::insert((v18 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v163 = 1283;
    v108 = "mps.conv_3d";
    goto LABEL_112;
  }

  v25 = v23;
  v26 = v23[2];
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v23[1];
    v27 = mlir::SparseElementsAttr::getValues(v164);
    v26 = v25[2];
    {
      goto LABEL_22;
    }
  }

  else
  {
    v27 = v23[3];
    {
      goto LABEL_22;
    }
  }

  v119 = v27;
  v132 = v26;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v27 = v119;
  v26 = v132;
LABEL_22:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v28 = malloc(8uLL);
  v29 = v28;
  {
    v147 = v28;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v29 = v147;
  }

  mlir::detail::InterfaceMap::insert((v25 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v163 = 1283;
    v110 = "mps.conv_3d_data_gradient";
    goto LABEL_114;
  }

  v32 = v30;
  v33 = v30[2];
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v30[1];
    v34 = mlir::SparseElementsAttr::getValues(v164);
    v33 = v32[2];
    {
      goto LABEL_27;
    }
  }

  else
  {
    v34 = v30[3];
    {
      goto LABEL_27;
    }
  }

  v120 = v34;
  v133 = v33;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v34 = v120;
  v33 = v133;
LABEL_27:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v35 = malloc(8uLL);
  v36 = v35;
  {
    v148 = v35;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v36 = v148;
  }

  mlir::detail::InterfaceMap::insert((v32 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv3DWeightsGradientOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v163 = 1283;
    v111 = "mps.conv_3d_weights_gradient";
    goto LABEL_116;
  }

  v39 = v37;
  v40 = v37[2];
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v37[1];
    v41 = mlir::SparseElementsAttr::getValues(v164);
    v40 = v39[2];
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = v37[3];
    {
      goto LABEL_32;
    }
  }

  v121 = v41;
  v134 = v40;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v41 = v121;
  v40 = v134;
LABEL_32:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v42 = malloc(8uLL);
  v43 = v42;
  {
    v149 = v42;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v43 = v149;
  }

  mlir::detail::InterfaceMap::insert((v39 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v43);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id, a1);
  if ((v45 & 1) == 0)
  {
    v163 = 1283;
    v113 = "mps.depthwise_conv_2d";
LABEL_121:
    v160 = "Attempting to attach an interface to an unregistered operation ";
    v161 = v113;
    v112 = 21;
    goto LABEL_130;
  }

  v46 = v44;
  v47 = v44[2];
  if (v47 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v44[1];
    v48 = mlir::SparseElementsAttr::getValues(v164);
    v47 = v46[2];
    {
      goto LABEL_37;
    }
  }

  else
  {
    v48 = v44[3];
    {
      goto LABEL_37;
    }
  }

  v122 = v48;
  v135 = v47;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v48 = v122;
  v47 = v135;
LABEL_37:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v48, v47, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v49 = malloc(8uLL);
  v50 = v49;
  {
    v150 = v49;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v50 = v150;
  }

  mlir::detail::InterfaceMap::insert((v46 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v50);
  v51 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id, a1);
  if ((v52 & 1) == 0)
  {
    v163 = 1283;
    v114 = "mps.depthwise_conv_2d_data_gradient";
LABEL_123:
    v160 = "Attempting to attach an interface to an unregistered operation ";
    v161 = v114;
    v112 = 35;
    goto LABEL_130;
  }

  v53 = v51;
  v54 = v51[2];
  if (v54 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v51[1];
    v55 = mlir::SparseElementsAttr::getValues(v164);
    v54 = v53[2];
    {
      goto LABEL_42;
    }
  }

  else
  {
    v55 = v51[3];
    {
      goto LABEL_42;
    }
  }

  v123 = v55;
  v136 = v54;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v55 = v123;
  v54 = v136;
LABEL_42:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v55, v54, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v56 = malloc(8uLL);
  v57 = v56;
  {
    v151 = v56;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v57 = v151;
  }

  mlir::detail::InterfaceMap::insert((v53 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v57);
  v58 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DWeightsGradientOp,void>::id, a1);
  if ((v59 & 1) == 0)
  {
    v163 = 1283;
    v115 = "mps.depthwise_conv_2d_weights_gradient";
LABEL_125:
    v160 = "Attempting to attach an interface to an unregistered operation ";
    v161 = v115;
    v112 = 38;
    goto LABEL_130;
  }

  v60 = v58;
  v61 = v58[2];
  if (v61 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v58[1];
    v62 = mlir::SparseElementsAttr::getValues(v164);
    v61 = v60[2];
    {
      goto LABEL_47;
    }
  }

  else
  {
    v62 = v58[3];
    {
      goto LABEL_47;
    }
  }

  v124 = v62;
  v137 = v61;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v62 = v124;
  v61 = v137;
LABEL_47:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v62, v61, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v63 = malloc(8uLL);
  v64 = v63;
  {
    v152 = v63;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v64 = v152;
  }

  mlir::detail::InterfaceMap::insert((v60 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v64);
  v65 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id, a1);
  if ((v66 & 1) == 0)
  {
    v163 = 1283;
    v113 = "mps.depthwise_conv_3d";
    goto LABEL_121;
  }

  v67 = v65;
  v68 = v65[2];
  if (v68 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v65[1];
    v69 = mlir::SparseElementsAttr::getValues(v164);
    v68 = v67[2];
    {
      goto LABEL_52;
    }
  }

  else
  {
    v69 = v65[3];
    {
      goto LABEL_52;
    }
  }

  v125 = v69;
  v138 = v68;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v69 = v125;
  v68 = v138;
LABEL_52:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v69, v68, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v70 = malloc(8uLL);
  v71 = v70;
  {
    v153 = v70;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v71 = v153;
  }

  mlir::detail::InterfaceMap::insert((v67 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v71);
  v72 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id, a1);
  if ((v73 & 1) == 0)
  {
    v163 = 1283;
    v114 = "mps.depthwise_conv_3d_data_gradient";
    goto LABEL_123;
  }

  v74 = v72;
  v75 = v72[2];
  if (v75 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v72[1];
    v76 = mlir::SparseElementsAttr::getValues(v164);
    v75 = v74[2];
    {
      goto LABEL_57;
    }
  }

  else
  {
    v76 = v72[3];
    {
      goto LABEL_57;
    }
  }

  v126 = v76;
  v139 = v75;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v76 = v126;
  v75 = v139;
LABEL_57:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v76, v75, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v77 = malloc(8uLL);
  v78 = v77;
  {
    v154 = v77;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v78 = v154;
  }

  mlir::detail::InterfaceMap::insert((v74 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v78);
  v79 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DWeightsGradientOp,void>::id, a1);
  if ((v80 & 1) == 0)
  {
    v163 = 1283;
    v115 = "mps.depthwise_conv_3d_weights_gradient";
    goto LABEL_125;
  }

  v81 = v79;
  v82 = v79[2];
  if (v82 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v79[1];
    v83 = mlir::SparseElementsAttr::getValues(v164);
    v82 = v81[2];
    {
      goto LABEL_62;
    }
  }

  else
  {
    v83 = v79[3];
    {
      goto LABEL_62;
    }
  }

  v127 = v83;
  v140 = v82;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v83 = v127;
  v82 = v140;
LABEL_62:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v83, v82, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v84 = malloc(8uLL);
  v85 = v84;
  {
    v155 = v84;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v85 = v155;
  }

  mlir::detail::InterfaceMap::insert((v81 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v85);
  v86 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id, a1);
  if ((v87 & 1) == 0)
  {
    v163 = 1283;
    v116 = "mps.pooling_average";
LABEL_129:
    v160 = "Attempting to attach an interface to an unregistered operation ";
    v161 = v116;
    v112 = 19;
LABEL_130:
    v162 = v112;
    v158 = ".";
    v159 = 259;
    llvm::operator+(&v160, &v158, v164);
    llvm::report_fatal_error(v164, 1);
  }

  v88 = v86;
  v89 = v86[2];
  if (v89 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v86[1];
    v90 = mlir::SparseElementsAttr::getValues(v164);
    v89 = v88[2];
    {
      goto LABEL_67;
    }
  }

  else
  {
    v90 = v86[3];
    {
      goto LABEL_67;
    }
  }

  v128 = v90;
  v141 = v89;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v90 = v128;
  v89 = v141;
LABEL_67:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v90, v89, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v91 = malloc(8uLL);
  v92 = v91;
  {
    v156 = v91;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v92 = v156;
  }

  mlir::detail::InterfaceMap::insert((v88 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v92);
  v93 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id, a1);
  if ((v94 & 1) == 0)
  {
    v163 = 1283;
    v160 = "Attempting to attach an interface to an unregistered operation ";
    v161 = "mps.pooling_max";
    v112 = 15;
    goto LABEL_130;
  }

  v95 = v93;
  v96 = v93[2];
  if (v96 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v93[1];
    v97 = mlir::SparseElementsAttr::getValues(v164);
    v96 = v95[2];
    {
      goto LABEL_72;
    }
  }

  else
  {
    v97 = v93[3];
    {
      goto LABEL_72;
    }
  }

  v129 = v97;
  v142 = v96;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v97 = v129;
  v96 = v142;
LABEL_72:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v97, v96, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v98 = malloc(8uLL);
  v99 = v98;
  {
    v157 = v98;
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v99 = v157;
  }

  mlir::detail::InterfaceMap::insert((v95 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v99);
  v100 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormOp,void>::id, a1);
  if ((v101 & 1) == 0)
  {
    v163 = 1283;
    v116 = "mps.pooling_l2_norm";
    goto LABEL_129;
  }

  v102 = v100;
  v103 = v100[2];
  if (v103 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v164[0] = v100[1];
    v104 = mlir::SparseElementsAttr::getValues(v164);
    v103 = v102[2];
    {
      goto LABEL_77;
    }
  }

  else
  {
    v104 = v100[3];
    {
      goto LABEL_77;
    }
  }

  v106 = v103;
  v107 = v104;
  mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v104 = v107;
  v103 = v106;
LABEL_77:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v104, v103, mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id);
  v105 = malloc(8uLL);
  {
    mlir::mps::registerConvertOpLayoutExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  mlir::detail::InterfaceMap::insert((v102 + 4), mlir::detail::TypeIDResolver<mlir::ConvertOpLayoutInterface,void>::resolveTypeID(void)::id, v105);
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::Conv2DOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, int a4, mlir::UnitAttr **a5)
{
  v167[5] = *MEMORY[0x1E69E9840];
  v143 = a2;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  if (!a3)
  {
    goto LABEL_11;
  }

  if (StorageType <= 6)
  {
    if (StorageType)
    {
      if (StorageType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    if (a3 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (StorageType != 8)
  {
    if (StorageType != 7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = 0;
  if (!a4)
  {
    return v10;
  }

  if (WeightsLayout > 8)
  {
    if (WeightsLayout == 10)
    {
      goto LABEL_54;
    }

    if (WeightsLayout != 9)
    {
      return v10;
    }
  }

  else if (WeightsLayout != 2)
  {
    if (WeightsLayout != 3)
    {
      return v10;
    }

LABEL_54:
    if (a4 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(v143 + 48) + 16);
  v15 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v19 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id;
  v20 = v15 && v19;
  v21 = !v15 || !v19;
  v22 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  v23 = v22;
  if (a3)
  {
    if (v22 <= 0xA)
    {
      if (((1 << v22) & 0xC) != 0)
      {
        v24 = a3 == 1;
        v25 = 2;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x180) != 0)
      {
        v24 = a3 == 1;
        v25 = 7;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x600) != 0)
      {
        v24 = a3 == 1;
        v25 = 9;
LABEL_60:
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 + 1;
        }

        goto LABEL_64;
      }
    }

    v26 = a3 != 1;
  }

  else
  {
    v26 = v22;
  }

LABEL_64:
  v27 = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  v142 = v27;
  if (!a4)
  {
    goto LABEL_76;
  }

  if (v27 > 0xA)
  {
    goto LABEL_75;
  }

  if (((1 << v27) & 0xC) != 0)
  {
    v28 = a4 == 1;
    v29 = 2;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x180) != 0)
  {
    v28 = a4 == 1;
    v29 = 7;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x600) == 0)
  {
LABEL_75:
    v27 = a4 != 1;
    goto LABEL_76;
  }

  v28 = a4 == 1;
  v29 = 9;
LABEL_72:
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29 + 1;
  }

LABEL_76:
  v141 = v27;
  v135 = v15;
  if (v23 == v26)
  {
    v157 = &v160;
    v30 = 5;
    v159 = 5;
    if (v23 <= 3)
    {
      v31 = xmmword_1E0970050;
LABEL_79:
      v160 = v31;
      v30 = 4;
      goto LABEL_97;
    }

    v161 = 4;
    v160 = xmmword_1E097BCC0;
  }

  else
  {
    v157 = &v160;
    v159 = 5;
    if (v26 <= 6)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v31 = xmmword_1E097BC80;
        }

        else
        {
          v31 = xmmword_1E097BC90;
        }
      }

      else if (v26)
      {
        v31 = xmmword_1E097BCB0;
      }

      else
      {
        v31 = xmmword_1E097BCA0;
      }

      goto LABEL_79;
    }

    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v161 = 2;
        v32 = &xmmword_1E097BD10;
      }

      else
      {
        v161 = 0;
        v32 = &xmmword_1E097BCFC;
      }
    }

    else if (v26 == 7)
    {
      v161 = 3;
      v32 = &xmmword_1E097BCE8;
    }

    else
    {
      v161 = 1;
      v32 = &xmmword_1E097BCD4;
    }

    v160 = *v32;
    v30 = 5;
  }

LABEL_97:
  v158 = v30;
  v138 = &v157;
  v139 = &v142;
  v140 = &v141;
  v137[0] = a5;
  v137[1] = &v143;
  v137[2] = &v138;
  v33 = *(*(v143 + 72) + 24);
  v34 = *(v143 + 24);
  v165 = v167;
  HIDWORD(v166) = 5;
  memcpy(v167, &v160, 4 * v30);
  LODWORD(v166) = v30;
  if (v165 != v167)
  {
    free(v165);
  }

  v37 = *(v143 + 72);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    *v38 = *v37;
    if (v39)
    {
      *(v39 + 8) = v37[1];
    }
  }

  v37[3] = v35;
  v37[1] = v35;
  v40 = *v35;
  *v37 = *v35;
  if (v40)
  {
    *(v40 + 8) = v37;
  }

  *v35 = v37;
  v41 = *(v143 + 72);
  v42 = v41 + 4;
  v43 = v41[5];
  if (v43)
  {
    v44 = *v42;
    *v43 = *v42;
    if (v44)
    {
      *(v44 + 8) = v41[5];
    }
  }

  v41[7] = v36;
  v41[5] = v36;
  v45 = *v36;
  v41[4] = *v36;
  if (v45)
  {
    *(v45 + 8) = v42;
  }

  *v36 = v42;
  Context = mlir::Attribute::getContext((v143 + 24));
  v47 = mlir::mps::TensorDataLayoutAttr::get(Context, v26);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 64) = v47;
  v48 = mlir::Attribute::getContext((v143 + 24));
  v49 = mlir::mps::TensorDataLayoutAttr::get(v48, v141);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 112) = v49;
  Strides = mlir::mps::Conv3DOp::getStrides(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 104) = v51;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 72) = v53;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 80) = v55;
  v56 = v143;
  if (v21)
  {
    v57 = v138;
    v58 = &v155;
    __dst = &v155;
    v154 = 0x500000000;
    if (v138 == &__dst)
    {
      v59 = 0;
      goto LABEL_141;
    }

    v59 = *(v138 + 2);
    if (!v59)
    {
      goto LABEL_141;
    }

    if (v59 < 6)
    {
      v60 = *(v138 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v155, *(v138 + 2), 4);
      v60 = *(v57 + 2);
      if (!v60)
      {
LABEL_130:
        LODWORD(v154) = v59;
        v58 = __dst;
        goto LABEL_141;
      }

      v58 = __dst;
    }

    memcpy(v58, *v57, 4 * v60);
    goto LABEL_130;
  }

  v61 = *v139;
  v62 = *v140;
  if (*v139 == *v140)
  {
    v58 = &v155;
    __dst = &v155;
    v59 = 5;
    HIDWORD(v154) = 5;
    if (v61 > 3)
    {
      v156 = 4;
      v155 = xmmword_1E097BCC0;
      goto LABEL_140;
    }

    v63 = xmmword_1E0970050;
  }

  else
  {
    v58 = &v155;
    __dst = &v155;
    HIDWORD(v154) = 5;
    if (v62 > 6)
    {
      if (v62 > 8)
      {
        if (v62 == 9)
        {
          v156 = 2;
          v64 = &xmmword_1E097BD10;
        }

        else
        {
          v156 = 0;
          v64 = &xmmword_1E097BCFC;
        }
      }

      else if (v62 == 7)
      {
        v156 = 3;
        v64 = &xmmword_1E097BCE8;
      }

      else
      {
        v156 = 1;
        v64 = &xmmword_1E097BCD4;
      }

      v155 = *v64;
      v59 = 5;
      goto LABEL_140;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v63 = xmmword_1E097BC80;
      }

      else
      {
        v63 = xmmword_1E097BC90;
      }
    }

    else if (v62)
    {
      v63 = xmmword_1E097BCB0;
    }

    else
    {
      v63 = xmmword_1E097BCA0;
    }
  }

  v155 = v63;
  v59 = 4;
LABEL_140:
  LODWORD(v154) = v59;
LABEL_141:
  v65 = v142;
  if (v21)
  {
    v66 = v26;
  }

  else
  {
    v66 = v141;
  }

  if (v21)
  {
    v65 = v23;
  }

  if (v66 == v65)
  {
    v148 = &v151;
    v67 = 5;
    v150 = 5;
    if (v66 <= 3)
    {
      v68 = xmmword_1E0970050;
LABEL_149:
      v151 = v68;
      v67 = 4;
      goto LABEL_167;
    }

    v152 = 4;
    v151 = xmmword_1E097BCC0;
  }

  else
  {
    v148 = &v151;
    v150 = 5;
    if (v65 <= 6)
    {
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v68 = xmmword_1E097BC80;
        }

        else
        {
          v68 = xmmword_1E097BC90;
        }
      }

      else if (v65)
      {
        v68 = xmmword_1E097BCB0;
      }

      else
      {
        v68 = xmmword_1E097BCA0;
      }

      goto LABEL_149;
    }

    if (v65 > 8)
    {
      if (v65 == 9)
      {
        v152 = 2;
        v69 = &xmmword_1E097BD10;
      }

      else
      {
        v152 = 0;
        v69 = &xmmword_1E097BCFC;
      }
    }

    else if (v65 == 7)
    {
      v152 = 3;
      v69 = &xmmword_1E097BCE8;
    }

    else
    {
      v152 = 1;
      v69 = &xmmword_1E097BCD4;
    }

    v151 = *v69;
    v67 = 5;
  }

LABEL_167:
  v149 = v67;
  if (*(v56 + 36))
  {
    v70 = v56 - 16;
  }

  else
  {
    v70 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
  v147 = NextResultAtOffset;
  v72 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  v146[0] = v72;
  v146[1] = v73;
  if (mlir::CallOpInterface::getArgOperands(v146))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v146);
    v165 = v167;
    v166 = 0x500000000;
    v76 = v75;
    if (v75 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v75, 8);
    }

    if (v59)
    {
      v77 = 4 * v59;
      do
      {
        v78 = *v58;
        v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v146) + 8 * v78);
        v80 = v166;
        if (v166 >= HIDWORD(v166))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v166 + 1, 8);
          v80 = v166;
        }

        v165->i64[v80] = v79;
        v81 = v166 + 1;
        LODWORD(v166) = v166 + 1;
        v58 = (v58 + 4);
        v77 -= 4;
      }

      while (v77);
    }

    else
    {
      v81 = v166;
    }

    v162 = v146[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v162, v165, v81);
    if (!v135 || (*(v56 + 46) & 0x80) == 0 || *(v56 + 68) != 3)
    {
      goto LABEL_213;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v56 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v162 = v76;
      v89 = mlir::Attribute::getContext((v56 + 24));
      v90 = mlir::IntegerType::get(v89, 64, 1u);
      v91 = mlir::RankedTensorType::get(&v162, 1, v90, 0);
      if (v91)
      {
        v92 = v91;
        v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
        v91 = v92;
      }

      else
      {
        v93 = 0;
      }

      v117 = *(v56 + 24);
      v162 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v93, v165, 8 * v166, 8, 1, 1);
      v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v117, &v162);
LABEL_207:
      v118 = (v115 - 16);
      v119 = *(v56 + 72);
      v120 = v119 + 8;
      v121 = v119[9];
      if (v121)
      {
        v122 = *v120;
        *v121 = *v120;
        if (v122)
        {
          *(v122 + 8) = v119[9];
        }
      }

      v119[11] = v118;
      v119[9] = v118;
      v123 = *v118;
      v119[8] = *v118;
      if (v123)
      {
        *(v123 + 8) = v120;
      }

      *v118 = v120;
LABEL_213:
      if (v165 != v167)
      {
        free(v165);
      }

      goto LABEL_215;
    }

    v82 = v165;
    v83 = v166;
    v162 = v76;
    v84 = mlir::Attribute::getContext((v56 + 24));
    v85 = mlir::IntegerType::get(v84, 32, 1u);
    v86 = mlir::RankedTensorType::get(&v162, 1, v85, 0);
    v87 = v86;
    if (v86)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v94 = *(v56 + 24);
    v162 = v164;
    v163 = 0x500000000;
    v136 = v94;
    if (v83 < 6)
    {
      if (!v83)
      {
        v114 = 0;
        v99 = v164;
LABEL_203:
        LODWORD(v163) = v114 + v83;
        v144 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v88, v99, 4 * (v114 + v83), 4, 1, 1);
        v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v136, &v144);
        if (v162 != v164)
        {
          v116 = v115;
          free(v162);
          v115 = v116;
        }

        goto LABEL_207;
      }

      v98 = 0;
      v99 = v164;
    }

    else
    {
      v95 = v87;
      v96 = v82;
      v97 = v88;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v164, v83, 4);
      v88 = v97;
      v82 = v96;
      v87 = v95;
      v98 = v163;
      v99 = v162;
    }

    v100 = &v99[4 * v98];
    v101 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v101 >= 7)
    {
      v104 = v101 + 1;
      v105 = (v101 + 1) & 0x3FFFFFFFFFFFFFF8;
      v102 = (v100 + 4 * v105);
      v103 = &v82->i8[8 * v105];
      v106 = v82 + 2;
      v107 = v100 + 1;
      v108 = v105;
      do
      {
        v110 = v106[-2];
        v109 = v106[-1];
        v112 = *v106;
        v111 = v106[1];
        v106 += 4;
        v107[-1] = vuzp1q_s32(v110, v109);
        *v107 = vuzp1q_s32(v112, v111);
        v107 += 2;
        v108 -= 8;
      }

      while (v108);
      if (v104 == v105)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = v100;
      v103 = v82;
    }

    do
    {
      v113 = *v103;
      v103 += 8;
      v102->i32[0] = v113;
      v102 = (v102 + 4);
    }

    while (v103 != v82 + 8 * v83);
LABEL_202:
    v114 = v163;
    goto LABEL_203;
  }

LABEL_215:
  v124 = *(v56 + 16);
  v125 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v74) + 8);
  a5[3] = v124;
  a5[4] = v125;
  if (NextResultAtOffset != v165)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v165);
    if (mlir::CallOpInterface::getArgOperands(v146))
    {
      v128 = v165;
    }

    else
    {
      v129 = *(DefiningOp + 16);
      v130 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v127) + 8);
      a5[3] = v129;
      a5[4] = v130;
      v131 = *(v56 + 24);
      v162 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v132 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v131, &v165, &v162, &ElementTypeOrSelf);
      if (*(v132 + 36))
      {
        v133 = v132 - 16;
      }

      else
      {
        v133 = 0;
      }

      v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v133, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v147, v128, DefiningOp);
  }

  if (v148 != &v151)
  {
    free(v148);
  }

  if (__dst != &v155)
  {
    free(__dst);
  }

  if (v157 != &v160)
  {
    free(v157);
  }

  return 1;
}

uint64_t mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::Conv2DOp>::convertLayout(mlir::Operation *,mlir::mps::LayoutConversionType,mlir::mps::LayoutConversionType,mlir::RewriterBase &)const::{lambda(mlir::Value,BOOL)#1}::operator()(uint64_t *a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v7 = a1[1];
  v6 = a1[2];
  v8 = *(*v7 + 24);
  if (a3)
  {
    v9 = *v6;
    v10 = &v26;
    __dst = &v26;
    v25 = 0x500000000;
    v11 = *(v9 + 8);
    if (v9 == &__dst || v11 == 0)
    {
      v13 = 0;
      goto LABEL_36;
    }

    v17 = v8;
    v18 = v5;
    if (v11 < 6)
    {
      v19 = *(v9 + 8);
      v20 = *(v9 + 8);
    }

    else
    {
      v19 = *(v9 + 8);
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v26, v11, 4);
      v20 = *(v9 + 8);
      if (!v20)
      {
LABEL_22:
        v13 = v19;
        LODWORD(v25) = v19;
        v10 = __dst;
        v5 = v18;
        v8 = v17;
        goto LABEL_36;
      }

      v10 = __dst;
    }

    memcpy(v10, *v9, 4 * v20);
    goto LABEL_22;
  }

  v14 = **(v6 + 8);
  v15 = **(v6 + 16);
  if (v14 == v15)
  {
    v10 = &v26;
    __dst = &v26;
    v13 = 5;
    HIDWORD(v25) = 5;
    if (v14 > 3)
    {
      v27 = 4;
      v26 = xmmword_1E097BCC0;
      goto LABEL_35;
    }

    v16 = xmmword_1E0970050;
  }

  else
  {
    v10 = &v26;
    __dst = &v26;
    HIDWORD(v25) = 5;
    if (v15 > 6)
    {
      if (v15 > 8)
      {
        if (v15 == 9)
        {
          v27 = 2;
          v21 = &xmmword_1E097BD10;
        }

        else
        {
          v27 = 0;
          v21 = &xmmword_1E097BCFC;
        }
      }

      else if (v15 == 7)
      {
        v27 = 3;
        v21 = &xmmword_1E097BCE8;
      }

      else
      {
        v27 = 1;
        v21 = &xmmword_1E097BCD4;
      }

      v26 = *v21;
      v13 = 5;
      goto LABEL_35;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = xmmword_1E097BC80;
      }

      else
      {
        v16 = xmmword_1E097BC90;
      }
    }

    else if (v15)
    {
      v16 = xmmword_1E097BCB0;
    }

    else
    {
      v16 = xmmword_1E097BCA0;
    }
  }

  v26 = v16;
  v13 = 4;
LABEL_35:
  LODWORD(v25) = v13;
LABEL_36:
  if (__dst != &v26)
  {
    v23 = result;
    free(__dst);
    return v23;
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::permuteAttr(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v32[10] = *MEMORY[0x1E69E9840];
  v26 = a1;
  if (mlir::DenseElementsAttr::isSplat(&v26))
  {
    return v26;
  }

  if (mlir::DenseElementsAttr::isValidIntOrFloat(&v26, 8, 1, 0))
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v26);
    isSplat = mlir::DenseElementsAttr::isSplat(&v26);
    mlir::ArrayAttr::getValue(&v26);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v26);
    v5 = NumElements;
    v30 = v32;
    v31 = 0xA00000000;
    if (NumElements < 0xB)
    {
      v12 = 0;
      if (!NumElements)
      {
        goto LABEL_15;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, NumElements, 8);
      v12 = v31;
    }

    v13 = v30;
  }

  else
  {
    v12 = 0;
    RawStringData = 0;
    v13 = v32;
    v30 = v32;
    v31 = 0xA00000000;
  }

  v14 = 0;
  v15 = &v13[v12];
  do
  {
    if (isSplat)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v15[v14++] = *(RawStringData + 8 * v16);
  }

  while (v5 != v14);
  v12 += v5;
LABEL_15:
  LODWORD(v31) = v12;
  v17 = mlir::DenseElementsAttr::getNumElements(&v26);
  v27 = v29;
  v28 = 0xA00000000;
  if (v17)
  {
    v18 = v17;
    if (v17 < 0xB)
    {
      v19 = 0;
      v20 = v17;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v17, 8);
      v19 = v28;
      v20 = v18 - v28;
      if (v18 == v28)
      {
        goto LABEL_21;
      }
    }

    bzero(v27 + 8 * v19, 8 * v20);
LABEL_21:
    LODWORD(v28) = v18;
  }

  if (a3)
  {
    v21 = 0;
    do
    {
      v22 = *a2++;
      memcpy(v27 + v21, v30 + 8 * v22 * a4, 8 * a4);
      v21 += 8 * a4;
      --a3;
    }

    while (a3);
  }

  Value = mlir::ArrayAttr::getValue(&v26);
  v9 = mlir::DenseElementsAttr::getFromRawBuffer(Value, v24, v27, 8 * v28, 8, 1, 0);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  return v9;
}

uint64_t mlir::mps::anonymous namespace::permuteValue(uint64_t a1, uint64_t a2, uint64_t a3, void *__s2, unint64_t a5)
{
  v7 = a3;
  v29[1] = *MEMORY[0x1E69E9840];
  v23[1] = a5;
  v24 = a3;
  v23[0] = __s2;
  v25 = v27;
  v26 = 0x400000000;
  if (!a5)
  {
    v11 = v27;
    goto LABEL_16;
  }

  if (a5 < 5)
  {
    v10 = 0;
    v11 = v27;
    v12 = a5;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, a5, 4);
  v10 = v26;
  v11 = v25;
  v12 = a5 - v26;
  if (a5 != v26)
  {
LABEL_7:
    bzero(v11 + 4 * v10, 4 * v12);
  }

  LODWORD(v26) = a5;
  if (!a5)
  {
    goto LABEL_17;
  }

  v13 = (a5 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v13 < 7)
  {
    LODWORD(v14) = 0;
    v15 = v11;
    do
    {
LABEL_14:
      v15->i32[0] = v14;
      v15 = (v15 + 4);
      LODWORD(v14) = v14 + 1;
    }

    while (v15 != (v11 + 4 * a5));
    goto LABEL_15;
  }

  v16 = v13 + 1;
  v14 = (v13 + 1) & 0x7FFFFFFFFFFFFFF8;
  v15 = (v11 + 4 * v14);
  v17 = xmmword_1E0970050;
  v18 = v11 + 1;
  v19.i64[0] = 0x400000004;
  v19.i64[1] = 0x400000004;
  v20.i64[0] = 0x800000008;
  v20.i64[1] = 0x800000008;
  v21 = v14;
  do
  {
    v18[-1] = v17;
    *v18 = vaddq_s32(v17, v19);
    v17 = vaddq_s32(v17, v20);
    v18 += 2;
    v21 -= 8;
  }

  while (v21);
  if (v16 != v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (a5 == v26)
  {
LABEL_16:
    if (!memcmp(v11, __s2, 4 * a5))
    {
      goto LABEL_20;
    }
  }

LABEL_17:
  v28[0] = v29;
  v28[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::mps::PermuteOp,mlir::Value &,llvm::ArrayRef<int> &>(a1 + 8, v28, a2, &v24, v23);
  v7 = *v28[0];
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  v11 = v25;
LABEL_20:
  if (v11 != v27)
  {
    free(v11);
  }

  return v7;
}

void mlir::OpBuilder::createOrFold<mlir::mps::PermuteOp,mlir::Value &,llvm::ArrayRef<int> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::mps::ConstantOp>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a3, v11);
  mlir::mps::PermuteOp::build(a1, v31, *a4, *a5, a5[1]);
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

uint64_t mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DynamicShapeCastOp,void>::id, Context);
  if ((v11 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v10);
  mlir::mps::DynamicShapeCastOp::build(a1, v18, *a3, 0, *a5);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DynamicShapeCastOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::Conv2DDataGradientOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, int a4, mlir::UnitAttr **a5)
{
  v167[5] = *MEMORY[0x1E69E9840];
  v143 = a2;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  if (!a3)
  {
    goto LABEL_11;
  }

  if (StorageType <= 6)
  {
    if (StorageType)
    {
      if (StorageType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    if (a3 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (StorageType != 8)
  {
    if (StorageType != 7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = 0;
  if (!a4)
  {
    return v10;
  }

  if (WeightsLayout > 8)
  {
    if (WeightsLayout == 10)
    {
      goto LABEL_54;
    }

    if (WeightsLayout != 9)
    {
      return v10;
    }
  }

  else if (WeightsLayout != 2)
  {
    if (WeightsLayout != 3)
    {
      return v10;
    }

LABEL_54:
    if (a4 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(v143 + 48) + 16);
  v15 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v19 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id;
  v20 = v15 && v19;
  v21 = !v15 || !v19;
  v22 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  v23 = v22;
  if (a3)
  {
    if (v22 <= 0xA)
    {
      if (((1 << v22) & 0xC) != 0)
      {
        v24 = a3 == 1;
        v25 = 2;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x180) != 0)
      {
        v24 = a3 == 1;
        v25 = 7;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x600) != 0)
      {
        v24 = a3 == 1;
        v25 = 9;
LABEL_60:
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 + 1;
        }

        goto LABEL_64;
      }
    }

    v26 = a3 != 1;
  }

  else
  {
    v26 = v22;
  }

LABEL_64:
  v27 = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  v142 = v27;
  if (!a4)
  {
    goto LABEL_76;
  }

  if (v27 > 0xA)
  {
    goto LABEL_75;
  }

  if (((1 << v27) & 0xC) != 0)
  {
    v28 = a4 == 1;
    v29 = 2;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x180) != 0)
  {
    v28 = a4 == 1;
    v29 = 7;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x600) == 0)
  {
LABEL_75:
    v27 = a4 != 1;
    goto LABEL_76;
  }

  v28 = a4 == 1;
  v29 = 9;
LABEL_72:
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29 + 1;
  }

LABEL_76:
  v141 = v27;
  v135 = v15;
  if (v23 == v26)
  {
    v157 = &v160;
    v30 = 5;
    v159 = 5;
    if (v23 <= 3)
    {
      v31 = xmmword_1E0970050;
LABEL_79:
      v160 = v31;
      v30 = 4;
      goto LABEL_97;
    }

    v161 = 4;
    v160 = xmmword_1E097BCC0;
  }

  else
  {
    v157 = &v160;
    v159 = 5;
    if (v26 <= 6)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v31 = xmmword_1E097BC80;
        }

        else
        {
          v31 = xmmword_1E097BC90;
        }
      }

      else if (v26)
      {
        v31 = xmmword_1E097BCB0;
      }

      else
      {
        v31 = xmmword_1E097BCA0;
      }

      goto LABEL_79;
    }

    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v161 = 2;
        v32 = &xmmword_1E097BD10;
      }

      else
      {
        v161 = 0;
        v32 = &xmmword_1E097BCFC;
      }
    }

    else if (v26 == 7)
    {
      v161 = 3;
      v32 = &xmmword_1E097BCE8;
    }

    else
    {
      v161 = 1;
      v32 = &xmmword_1E097BCD4;
    }

    v160 = *v32;
    v30 = 5;
  }

LABEL_97:
  v158 = v30;
  v138 = &v157;
  v139 = &v142;
  v140 = &v141;
  v137[0] = a5;
  v137[1] = &v143;
  v137[2] = &v138;
  v33 = *(*(v143 + 72) + 24);
  v34 = *(v143 + 24);
  v165 = v167;
  HIDWORD(v166) = 5;
  memcpy(v167, &v160, 4 * v30);
  LODWORD(v166) = v30;
  if (v165 != v167)
  {
    free(v165);
  }

  v37 = *(v143 + 72);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    *v38 = *v37;
    if (v39)
    {
      *(v39 + 8) = v37[1];
    }
  }

  v37[3] = v35;
  v37[1] = v35;
  v40 = *v35;
  *v37 = *v35;
  if (v40)
  {
    *(v40 + 8) = v37;
  }

  *v35 = v37;
  v41 = *(v143 + 72);
  v42 = v41 + 4;
  v43 = v41[5];
  if (v43)
  {
    v44 = *v42;
    *v43 = *v42;
    if (v44)
    {
      *(v44 + 8) = v41[5];
    }
  }

  v41[7] = v36;
  v41[5] = v36;
  v45 = *v36;
  v41[4] = *v36;
  if (v45)
  {
    *(v45 + 8) = v42;
  }

  *v36 = v42;
  Context = mlir::Attribute::getContext((v143 + 24));
  v47 = mlir::mps::TensorDataLayoutAttr::get(Context, v26);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 64) = v47;
  v48 = mlir::Attribute::getContext((v143 + 24));
  v49 = mlir::mps::TensorDataLayoutAttr::get(v48, v141);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 112) = v49;
  Strides = mlir::mps::Conv3DOp::getStrides(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 104) = v51;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 72) = v53;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 80) = v55;
  v56 = v143;
  if (v21)
  {
    v57 = v138;
    v58 = &v155;
    __dst = &v155;
    v154 = 0x500000000;
    if (v138 == &__dst)
    {
      v59 = 0;
      goto LABEL_141;
    }

    v59 = *(v138 + 2);
    if (!v59)
    {
      goto LABEL_141;
    }

    if (v59 < 6)
    {
      v60 = *(v138 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v155, *(v138 + 2), 4);
      v60 = *(v57 + 2);
      if (!v60)
      {
LABEL_130:
        LODWORD(v154) = v59;
        v58 = __dst;
        goto LABEL_141;
      }

      v58 = __dst;
    }

    memcpy(v58, *v57, 4 * v60);
    goto LABEL_130;
  }

  v61 = *v139;
  v62 = *v140;
  if (*v139 == *v140)
  {
    v58 = &v155;
    __dst = &v155;
    v59 = 5;
    HIDWORD(v154) = 5;
    if (v61 > 3)
    {
      v156 = 4;
      v155 = xmmword_1E097BCC0;
      goto LABEL_140;
    }

    v63 = xmmword_1E0970050;
  }

  else
  {
    v58 = &v155;
    __dst = &v155;
    HIDWORD(v154) = 5;
    if (v62 > 6)
    {
      if (v62 > 8)
      {
        if (v62 == 9)
        {
          v156 = 2;
          v64 = &xmmword_1E097BD10;
        }

        else
        {
          v156 = 0;
          v64 = &xmmword_1E097BCFC;
        }
      }

      else if (v62 == 7)
      {
        v156 = 3;
        v64 = &xmmword_1E097BCE8;
      }

      else
      {
        v156 = 1;
        v64 = &xmmword_1E097BCD4;
      }

      v155 = *v64;
      v59 = 5;
      goto LABEL_140;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v63 = xmmword_1E097BC80;
      }

      else
      {
        v63 = xmmword_1E097BC90;
      }
    }

    else if (v62)
    {
      v63 = xmmword_1E097BCB0;
    }

    else
    {
      v63 = xmmword_1E097BCA0;
    }
  }

  v155 = v63;
  v59 = 4;
LABEL_140:
  LODWORD(v154) = v59;
LABEL_141:
  v65 = v142;
  if (v21)
  {
    v66 = v26;
  }

  else
  {
    v66 = v141;
  }

  if (v21)
  {
    v65 = v23;
  }

  if (v66 == v65)
  {
    v148 = &v151;
    v67 = 5;
    v150 = 5;
    if (v66 <= 3)
    {
      v68 = xmmword_1E0970050;
LABEL_149:
      v151 = v68;
      v67 = 4;
      goto LABEL_167;
    }

    v152 = 4;
    v151 = xmmword_1E097BCC0;
  }

  else
  {
    v148 = &v151;
    v150 = 5;
    if (v65 <= 6)
    {
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v68 = xmmword_1E097BC80;
        }

        else
        {
          v68 = xmmword_1E097BC90;
        }
      }

      else if (v65)
      {
        v68 = xmmword_1E097BCB0;
      }

      else
      {
        v68 = xmmword_1E097BCA0;
      }

      goto LABEL_149;
    }

    if (v65 > 8)
    {
      if (v65 == 9)
      {
        v152 = 2;
        v69 = &xmmword_1E097BD10;
      }

      else
      {
        v152 = 0;
        v69 = &xmmword_1E097BCFC;
      }
    }

    else if (v65 == 7)
    {
      v152 = 3;
      v69 = &xmmword_1E097BCE8;
    }

    else
    {
      v152 = 1;
      v69 = &xmmword_1E097BCD4;
    }

    v151 = *v69;
    v67 = 5;
  }

LABEL_167:
  v149 = v67;
  if (*(v56 + 36))
  {
    v70 = v56 - 16;
  }

  else
  {
    v70 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
  v147 = NextResultAtOffset;
  v72 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  v146[0] = v72;
  v146[1] = v73;
  if (mlir::CallOpInterface::getArgOperands(v146))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v146);
    v165 = v167;
    v166 = 0x500000000;
    v76 = v75;
    if (v75 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v75, 8);
    }

    if (v59)
    {
      v77 = 4 * v59;
      do
      {
        v78 = *v58;
        v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v146) + 8 * v78);
        v80 = v166;
        if (v166 >= HIDWORD(v166))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v166 + 1, 8);
          v80 = v166;
        }

        v165->i64[v80] = v79;
        v81 = v166 + 1;
        LODWORD(v166) = v166 + 1;
        v58 = (v58 + 4);
        v77 -= 4;
      }

      while (v77);
    }

    else
    {
      v81 = v166;
    }

    v162 = v146[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v162, v165, v81);
    if (!v135 || (*(v56 + 46) & 0x80) == 0 || *(v56 + 68) != 3)
    {
      goto LABEL_213;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v56 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v162 = v76;
      v89 = mlir::Attribute::getContext((v56 + 24));
      v90 = mlir::IntegerType::get(v89, 64, 1u);
      v91 = mlir::RankedTensorType::get(&v162, 1, v90, 0);
      if (v91)
      {
        v92 = v91;
        v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
        v91 = v92;
      }

      else
      {
        v93 = 0;
      }

      v117 = *(v56 + 24);
      v162 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v93, v165, 8 * v166, 8, 1, 1);
      v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v117, &v162);
LABEL_207:
      v118 = (v115 - 16);
      v119 = *(v56 + 72);
      v120 = v119 + 8;
      v121 = v119[9];
      if (v121)
      {
        v122 = *v120;
        *v121 = *v120;
        if (v122)
        {
          *(v122 + 8) = v119[9];
        }
      }

      v119[11] = v118;
      v119[9] = v118;
      v123 = *v118;
      v119[8] = *v118;
      if (v123)
      {
        *(v123 + 8) = v120;
      }

      *v118 = v120;
LABEL_213:
      if (v165 != v167)
      {
        free(v165);
      }

      goto LABEL_215;
    }

    v82 = v165;
    v83 = v166;
    v162 = v76;
    v84 = mlir::Attribute::getContext((v56 + 24));
    v85 = mlir::IntegerType::get(v84, 32, 1u);
    v86 = mlir::RankedTensorType::get(&v162, 1, v85, 0);
    v87 = v86;
    if (v86)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v94 = *(v56 + 24);
    v162 = v164;
    v163 = 0x500000000;
    v136 = v94;
    if (v83 < 6)
    {
      if (!v83)
      {
        v114 = 0;
        v99 = v164;
LABEL_203:
        LODWORD(v163) = v114 + v83;
        v144 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v88, v99, 4 * (v114 + v83), 4, 1, 1);
        v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v136, &v144);
        if (v162 != v164)
        {
          v116 = v115;
          free(v162);
          v115 = v116;
        }

        goto LABEL_207;
      }

      v98 = 0;
      v99 = v164;
    }

    else
    {
      v95 = v87;
      v96 = v82;
      v97 = v88;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v164, v83, 4);
      v88 = v97;
      v82 = v96;
      v87 = v95;
      v98 = v163;
      v99 = v162;
    }

    v100 = &v99[4 * v98];
    v101 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v101 >= 7)
    {
      v104 = v101 + 1;
      v105 = (v101 + 1) & 0x3FFFFFFFFFFFFFF8;
      v102 = (v100 + 4 * v105);
      v103 = &v82->i8[8 * v105];
      v106 = v82 + 2;
      v107 = v100 + 1;
      v108 = v105;
      do
      {
        v110 = v106[-2];
        v109 = v106[-1];
        v112 = *v106;
        v111 = v106[1];
        v106 += 4;
        v107[-1] = vuzp1q_s32(v110, v109);
        *v107 = vuzp1q_s32(v112, v111);
        v107 += 2;
        v108 -= 8;
      }

      while (v108);
      if (v104 == v105)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = v100;
      v103 = v82;
    }

    do
    {
      v113 = *v103;
      v103 += 8;
      v102->i32[0] = v113;
      v102 = (v102 + 4);
    }

    while (v103 != v82 + 8 * v83);
LABEL_202:
    v114 = v163;
    goto LABEL_203;
  }

LABEL_215:
  v124 = *(v56 + 16);
  v125 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v74) + 8);
  a5[3] = v124;
  a5[4] = v125;
  if (NextResultAtOffset != v165)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v165);
    if (mlir::CallOpInterface::getArgOperands(v146))
    {
      v128 = v165;
    }

    else
    {
      v129 = *(DefiningOp + 16);
      v130 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v127) + 8);
      a5[3] = v129;
      a5[4] = v130;
      v131 = *(v56 + 24);
      v162 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v132 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v131, &v165, &v162, &ElementTypeOrSelf);
      if (*(v132 + 36))
      {
        v133 = v132 - 16;
      }

      else
      {
        v133 = 0;
      }

      v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v133, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v147, v128, DefiningOp);
  }

  if (v148 != &v151)
  {
    free(v148);
  }

  if (__dst != &v155)
  {
    free(__dst);
  }

  if (v157 != &v160)
  {
    free(v157);
  }

  return 1;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::Conv2DWeightsGradientOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, int a4, mlir::UnitAttr **a5)
{
  v167[5] = *MEMORY[0x1E69E9840];
  v143 = a2;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  if (!a3)
  {
    goto LABEL_11;
  }

  if (StorageType <= 6)
  {
    if (StorageType)
    {
      if (StorageType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    if (a3 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (StorageType != 8)
  {
    if (StorageType != 7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = 0;
  if (!a4)
  {
    return v10;
  }

  if (WeightsLayout > 8)
  {
    if (WeightsLayout == 10)
    {
      goto LABEL_54;
    }

    if (WeightsLayout != 9)
    {
      return v10;
    }
  }

  else if (WeightsLayout != 2)
  {
    if (WeightsLayout != 3)
    {
      return v10;
    }

LABEL_54:
    if (a4 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(v143 + 48) + 16);
  v15 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v19 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id;
  v20 = v15 && v19;
  v21 = !v15 || !v19;
  v22 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  v23 = v22;
  if (a3)
  {
    if (v22 <= 0xA)
    {
      if (((1 << v22) & 0xC) != 0)
      {
        v24 = a3 == 1;
        v25 = 2;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x180) != 0)
      {
        v24 = a3 == 1;
        v25 = 7;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x600) != 0)
      {
        v24 = a3 == 1;
        v25 = 9;
LABEL_60:
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 + 1;
        }

        goto LABEL_64;
      }
    }

    v26 = a3 != 1;
  }

  else
  {
    v26 = v22;
  }

LABEL_64:
  v27 = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  v142 = v27;
  if (!a4)
  {
    goto LABEL_76;
  }

  if (v27 > 0xA)
  {
    goto LABEL_75;
  }

  if (((1 << v27) & 0xC) != 0)
  {
    v28 = a4 == 1;
    v29 = 2;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x180) != 0)
  {
    v28 = a4 == 1;
    v29 = 7;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x600) == 0)
  {
LABEL_75:
    v27 = a4 != 1;
    goto LABEL_76;
  }

  v28 = a4 == 1;
  v29 = 9;
LABEL_72:
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29 + 1;
  }

LABEL_76:
  v141 = v27;
  v135 = v15;
  if (v23 == v26)
  {
    v157 = &v160;
    v30 = 5;
    v159 = 5;
    if (v23 <= 3)
    {
      v31 = xmmword_1E0970050;
LABEL_79:
      v160 = v31;
      v30 = 4;
      goto LABEL_97;
    }

    v161 = 4;
    v160 = xmmword_1E097BCC0;
  }

  else
  {
    v157 = &v160;
    v159 = 5;
    if (v26 <= 6)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v31 = xmmword_1E097BC80;
        }

        else
        {
          v31 = xmmword_1E097BC90;
        }
      }

      else if (v26)
      {
        v31 = xmmword_1E097BCB0;
      }

      else
      {
        v31 = xmmword_1E097BCA0;
      }

      goto LABEL_79;
    }

    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v161 = 2;
        v32 = &xmmword_1E097BD10;
      }

      else
      {
        v161 = 0;
        v32 = &xmmword_1E097BCFC;
      }
    }

    else if (v26 == 7)
    {
      v161 = 3;
      v32 = &xmmword_1E097BCE8;
    }

    else
    {
      v161 = 1;
      v32 = &xmmword_1E097BCD4;
    }

    v160 = *v32;
    v30 = 5;
  }

LABEL_97:
  v158 = v30;
  v138 = &v157;
  v139 = &v142;
  v140 = &v141;
  v137[0] = a5;
  v137[1] = &v143;
  v137[2] = &v138;
  v33 = *(*(v143 + 72) + 24);
  v34 = *(v143 + 24);
  v165 = v167;
  HIDWORD(v166) = 5;
  memcpy(v167, &v160, 4 * v30);
  LODWORD(v166) = v30;
  if (v165 != v167)
  {
    free(v165);
  }

  v37 = *(v143 + 72);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    *v38 = *v37;
    if (v39)
    {
      *(v39 + 8) = v37[1];
    }
  }

  v37[3] = v35;
  v37[1] = v35;
  v40 = *v35;
  *v37 = *v35;
  if (v40)
  {
    *(v40 + 8) = v37;
  }

  *v35 = v37;
  v41 = *(v143 + 72);
  v42 = v41 + 4;
  v43 = v41[5];
  if (v43)
  {
    v44 = *v42;
    *v43 = *v42;
    if (v44)
    {
      *(v44 + 8) = v41[5];
    }
  }

  v41[7] = v36;
  v41[5] = v36;
  v45 = *v36;
  v41[4] = *v36;
  if (v45)
  {
    *(v45 + 8) = v42;
  }

  *v36 = v42;
  Context = mlir::Attribute::getContext((v143 + 24));
  v47 = mlir::mps::TensorDataLayoutAttr::get(Context, v26);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 64) = v47;
  v48 = mlir::Attribute::getContext((v143 + 24));
  v49 = mlir::mps::TensorDataLayoutAttr::get(v48, v141);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 112) = v49;
  Strides = mlir::mps::Conv3DOp::getStrides(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 104) = v51;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 72) = v53;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 80) = v55;
  v56 = v143;
  if (v21)
  {
    v57 = v138;
    v58 = &v155;
    __dst = &v155;
    v154 = 0x500000000;
    if (v138 == &__dst)
    {
      v59 = 0;
      goto LABEL_141;
    }

    v59 = *(v138 + 2);
    if (!v59)
    {
      goto LABEL_141;
    }

    if (v59 < 6)
    {
      v60 = *(v138 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v155, *(v138 + 2), 4);
      v60 = *(v57 + 2);
      if (!v60)
      {
LABEL_130:
        LODWORD(v154) = v59;
        v58 = __dst;
        goto LABEL_141;
      }

      v58 = __dst;
    }

    memcpy(v58, *v57, 4 * v60);
    goto LABEL_130;
  }

  v61 = *v139;
  v62 = *v140;
  if (*v139 == *v140)
  {
    v58 = &v155;
    __dst = &v155;
    v59 = 5;
    HIDWORD(v154) = 5;
    if (v61 > 3)
    {
      v156 = 4;
      v155 = xmmword_1E097BCC0;
      goto LABEL_140;
    }

    v63 = xmmword_1E0970050;
  }

  else
  {
    v58 = &v155;
    __dst = &v155;
    HIDWORD(v154) = 5;
    if (v62 > 6)
    {
      if (v62 > 8)
      {
        if (v62 == 9)
        {
          v156 = 2;
          v64 = &xmmword_1E097BD10;
        }

        else
        {
          v156 = 0;
          v64 = &xmmword_1E097BCFC;
        }
      }

      else if (v62 == 7)
      {
        v156 = 3;
        v64 = &xmmword_1E097BCE8;
      }

      else
      {
        v156 = 1;
        v64 = &xmmword_1E097BCD4;
      }

      v155 = *v64;
      v59 = 5;
      goto LABEL_140;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v63 = xmmword_1E097BC80;
      }

      else
      {
        v63 = xmmword_1E097BC90;
      }
    }

    else if (v62)
    {
      v63 = xmmword_1E097BCB0;
    }

    else
    {
      v63 = xmmword_1E097BCA0;
    }
  }

  v155 = v63;
  v59 = 4;
LABEL_140:
  LODWORD(v154) = v59;
LABEL_141:
  v65 = v142;
  if (v21)
  {
    v66 = v26;
  }

  else
  {
    v66 = v141;
  }

  if (v21)
  {
    v65 = v23;
  }

  if (v66 == v65)
  {
    v148 = &v151;
    v67 = 5;
    v150 = 5;
    if (v66 <= 3)
    {
      v68 = xmmword_1E0970050;
LABEL_149:
      v151 = v68;
      v67 = 4;
      goto LABEL_167;
    }

    v152 = 4;
    v151 = xmmword_1E097BCC0;
  }

  else
  {
    v148 = &v151;
    v150 = 5;
    if (v65 <= 6)
    {
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v68 = xmmword_1E097BC80;
        }

        else
        {
          v68 = xmmword_1E097BC90;
        }
      }

      else if (v65)
      {
        v68 = xmmword_1E097BCB0;
      }

      else
      {
        v68 = xmmword_1E097BCA0;
      }

      goto LABEL_149;
    }

    if (v65 > 8)
    {
      if (v65 == 9)
      {
        v152 = 2;
        v69 = &xmmword_1E097BD10;
      }

      else
      {
        v152 = 0;
        v69 = &xmmword_1E097BCFC;
      }
    }

    else if (v65 == 7)
    {
      v152 = 3;
      v69 = &xmmword_1E097BCE8;
    }

    else
    {
      v152 = 1;
      v69 = &xmmword_1E097BCD4;
    }

    v151 = *v69;
    v67 = 5;
  }

LABEL_167:
  v149 = v67;
  if (*(v56 + 36))
  {
    v70 = v56 - 16;
  }

  else
  {
    v70 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
  v147 = NextResultAtOffset;
  v72 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  v146[0] = v72;
  v146[1] = v73;
  if (mlir::CallOpInterface::getArgOperands(v146))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v146);
    v165 = v167;
    v166 = 0x500000000;
    v76 = v75;
    if (v75 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v75, 8);
    }

    if (v59)
    {
      v77 = 4 * v59;
      do
      {
        v78 = *v58;
        v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v146) + 8 * v78);
        v80 = v166;
        if (v166 >= HIDWORD(v166))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v166 + 1, 8);
          v80 = v166;
        }

        v165->i64[v80] = v79;
        v81 = v166 + 1;
        LODWORD(v166) = v166 + 1;
        v58 = (v58 + 4);
        v77 -= 4;
      }

      while (v77);
    }

    else
    {
      v81 = v166;
    }

    v162 = v146[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v162, v165, v81);
    if (!v135 || (*(v56 + 46) & 0x80) == 0 || *(v56 + 68) != 3)
    {
      goto LABEL_213;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v56 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v162 = v76;
      v89 = mlir::Attribute::getContext((v56 + 24));
      v90 = mlir::IntegerType::get(v89, 64, 1u);
      v91 = mlir::RankedTensorType::get(&v162, 1, v90, 0);
      if (v91)
      {
        v92 = v91;
        v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
        v91 = v92;
      }

      else
      {
        v93 = 0;
      }

      v117 = *(v56 + 24);
      v162 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v93, v165, 8 * v166, 8, 1, 1);
      v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v117, &v162);
LABEL_207:
      v118 = (v115 - 16);
      v119 = *(v56 + 72);
      v120 = v119 + 8;
      v121 = v119[9];
      if (v121)
      {
        v122 = *v120;
        *v121 = *v120;
        if (v122)
        {
          *(v122 + 8) = v119[9];
        }
      }

      v119[11] = v118;
      v119[9] = v118;
      v123 = *v118;
      v119[8] = *v118;
      if (v123)
      {
        *(v123 + 8) = v120;
      }

      *v118 = v120;
LABEL_213:
      if (v165 != v167)
      {
        free(v165);
      }

      goto LABEL_215;
    }

    v82 = v165;
    v83 = v166;
    v162 = v76;
    v84 = mlir::Attribute::getContext((v56 + 24));
    v85 = mlir::IntegerType::get(v84, 32, 1u);
    v86 = mlir::RankedTensorType::get(&v162, 1, v85, 0);
    v87 = v86;
    if (v86)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v94 = *(v56 + 24);
    v162 = v164;
    v163 = 0x500000000;
    v136 = v94;
    if (v83 < 6)
    {
      if (!v83)
      {
        v114 = 0;
        v99 = v164;
LABEL_203:
        LODWORD(v163) = v114 + v83;
        v144 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v88, v99, 4 * (v114 + v83), 4, 1, 1);
        v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v136, &v144);
        if (v162 != v164)
        {
          v116 = v115;
          free(v162);
          v115 = v116;
        }

        goto LABEL_207;
      }

      v98 = 0;
      v99 = v164;
    }

    else
    {
      v95 = v87;
      v96 = v82;
      v97 = v88;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v164, v83, 4);
      v88 = v97;
      v82 = v96;
      v87 = v95;
      v98 = v163;
      v99 = v162;
    }

    v100 = &v99[4 * v98];
    v101 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v101 >= 7)
    {
      v104 = v101 + 1;
      v105 = (v101 + 1) & 0x3FFFFFFFFFFFFFF8;
      v102 = (v100 + 4 * v105);
      v103 = &v82->i8[8 * v105];
      v106 = v82 + 2;
      v107 = v100 + 1;
      v108 = v105;
      do
      {
        v110 = v106[-2];
        v109 = v106[-1];
        v112 = *v106;
        v111 = v106[1];
        v106 += 4;
        v107[-1] = vuzp1q_s32(v110, v109);
        *v107 = vuzp1q_s32(v112, v111);
        v107 += 2;
        v108 -= 8;
      }

      while (v108);
      if (v104 == v105)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = v100;
      v103 = v82;
    }

    do
    {
      v113 = *v103;
      v103 += 8;
      v102->i32[0] = v113;
      v102 = (v102 + 4);
    }

    while (v103 != v82 + 8 * v83);
LABEL_202:
    v114 = v163;
    goto LABEL_203;
  }

LABEL_215:
  v124 = *(v56 + 16);
  v125 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v74) + 8);
  a5[3] = v124;
  a5[4] = v125;
  if (NextResultAtOffset != v165)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v165);
    if (mlir::CallOpInterface::getArgOperands(v146))
    {
      v128 = v165;
    }

    else
    {
      v129 = *(DefiningOp + 16);
      v130 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v127) + 8);
      a5[3] = v129;
      a5[4] = v130;
      v131 = *(v56 + 24);
      v162 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v132 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v131, &v165, &v162, &ElementTypeOrSelf);
      if (*(v132 + 36))
      {
        v133 = v132 - 16;
      }

      else
      {
        v133 = 0;
      }

      v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v133, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v147, v128, DefiningOp);
  }

  if (v148 != &v151)
  {
    free(v148);
  }

  if (__dst != &v155)
  {
    free(__dst);
  }

  if (v157 != &v160)
  {
    free(v157);
  }

  return 1;
}

uint64_t mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConvertConvolutionInterface<mlir::mps::Conv3DOp>>::convertLayout(uint64_t a1, uint64_t a2, int a3, int a4, mlir::UnitAttr **a5)
{
  v167[5] = *MEMORY[0x1E69E9840];
  v143 = a2;
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  if (!a3)
  {
    goto LABEL_11;
  }

  if (StorageType <= 6)
  {
    if (StorageType)
    {
      if (StorageType != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    if (a3 == 2)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (StorageType != 8)
  {
    if (StorageType != 7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a3 == 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = 0;
  if (!a4)
  {
    return v10;
  }

  if (WeightsLayout > 8)
  {
    if (WeightsLayout == 10)
    {
      goto LABEL_54;
    }

    if (WeightsLayout != 9)
    {
      return v10;
    }
  }

  else if (WeightsLayout != 2)
  {
    if (WeightsLayout != 3)
    {
      return v10;
    }

LABEL_54:
    if (a4 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (a4 != 2)
  {
    return 0;
  }

LABEL_19:
  v11 = *(*(v143 + 48) + 16);
  v15 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
  v19 = v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id;
  v20 = v15 && v19;
  v21 = !v15 || !v19;
  v22 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v143);
  v23 = v22;
  if (a3)
  {
    if (v22 <= 0xA)
    {
      if (((1 << v22) & 0xC) != 0)
      {
        v24 = a3 == 1;
        v25 = 2;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x180) != 0)
      {
        v24 = a3 == 1;
        v25 = 7;
        goto LABEL_60;
      }

      if (((1 << v22) & 0x600) != 0)
      {
        v24 = a3 == 1;
        v25 = 9;
LABEL_60:
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 + 1;
        }

        goto LABEL_64;
      }
    }

    v26 = a3 != 1;
  }

  else
  {
    v26 = v22;
  }

LABEL_64:
  v27 = mlir::mps::Conv3DOp::getWeightsLayout(&v143);
  v142 = v27;
  if (!a4)
  {
    goto LABEL_76;
  }

  if (v27 > 0xA)
  {
    goto LABEL_75;
  }

  if (((1 << v27) & 0xC) != 0)
  {
    v28 = a4 == 1;
    v29 = 2;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x180) != 0)
  {
    v28 = a4 == 1;
    v29 = 7;
    goto LABEL_72;
  }

  if (((1 << v27) & 0x600) == 0)
  {
LABEL_75:
    v27 = a4 != 1;
    goto LABEL_76;
  }

  v28 = a4 == 1;
  v29 = 9;
LABEL_72:
  if (v28)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29 + 1;
  }

LABEL_76:
  v141 = v27;
  v135 = v15;
  if (v23 == v26)
  {
    v157 = &v160;
    v30 = 5;
    v159 = 5;
    if (v23 <= 3)
    {
      v31 = xmmword_1E0970050;
LABEL_79:
      v160 = v31;
      v30 = 4;
      goto LABEL_97;
    }

    v161 = 4;
    v160 = xmmword_1E097BCC0;
  }

  else
  {
    v157 = &v160;
    v159 = 5;
    if (v26 <= 6)
    {
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v31 = xmmword_1E097BC80;
        }

        else
        {
          v31 = xmmword_1E097BC90;
        }
      }

      else if (v26)
      {
        v31 = xmmword_1E097BCB0;
      }

      else
      {
        v31 = xmmword_1E097BCA0;
      }

      goto LABEL_79;
    }

    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v161 = 2;
        v32 = &xmmword_1E097BD10;
      }

      else
      {
        v161 = 0;
        v32 = &xmmword_1E097BCFC;
      }
    }

    else if (v26 == 7)
    {
      v161 = 3;
      v32 = &xmmword_1E097BCE8;
    }

    else
    {
      v161 = 1;
      v32 = &xmmword_1E097BCD4;
    }

    v160 = *v32;
    v30 = 5;
  }

LABEL_97:
  v158 = v30;
  v138 = &v157;
  v139 = &v142;
  v140 = &v141;
  v137[0] = a5;
  v137[1] = &v143;
  v137[2] = &v138;
  v33 = *(*(v143 + 72) + 24);
  v34 = *(v143 + 24);
  v165 = v167;
  HIDWORD(v166) = 5;
  memcpy(v167, &v160, 4 * v30);
  LODWORD(v166) = v30;
  if (v165 != v167)
  {
    free(v165);
  }

  v37 = *(v143 + 72);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    *v38 = *v37;
    if (v39)
    {
      *(v39 + 8) = v37[1];
    }
  }

  v37[3] = v35;
  v37[1] = v35;
  v40 = *v35;
  *v37 = *v35;
  if (v40)
  {
    *(v40 + 8) = v37;
  }

  *v35 = v37;
  v41 = *(v143 + 72);
  v42 = v41 + 4;
  v43 = v41[5];
  if (v43)
  {
    v44 = *v42;
    *v43 = *v42;
    if (v44)
    {
      *(v44 + 8) = v41[5];
    }
  }

  v41[7] = v36;
  v41[5] = v36;
  v45 = *v36;
  v41[4] = *v36;
  if (v45)
  {
    *(v45 + 8) = v42;
  }

  *v36 = v42;
  Context = mlir::Attribute::getContext((v143 + 24));
  v47 = mlir::mps::TensorDataLayoutAttr::get(Context, v26);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 64) = v47;
  v48 = mlir::Attribute::getContext((v143 + 24));
  v49 = mlir::mps::TensorDataLayoutAttr::get(v48, v141);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 112) = v49;
  Strides = mlir::mps::Conv3DOp::getStrides(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 104) = v51;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 72) = v53;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v143);
  *(v143 + 16 * ((*(v143 + 44) >> 23) & 1) + 80) = v55;
  v56 = v143;
  if (v21)
  {
    v57 = v138;
    v58 = &v155;
    __dst = &v155;
    v154 = 0x500000000;
    if (v138 == &__dst)
    {
      v59 = 0;
      goto LABEL_141;
    }

    v59 = *(v138 + 2);
    if (!v59)
    {
      goto LABEL_141;
    }

    if (v59 < 6)
    {
      v60 = *(v138 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v155, *(v138 + 2), 4);
      v60 = *(v57 + 2);
      if (!v60)
      {
LABEL_130:
        LODWORD(v154) = v59;
        v58 = __dst;
        goto LABEL_141;
      }

      v58 = __dst;
    }

    memcpy(v58, *v57, 4 * v60);
    goto LABEL_130;
  }

  v61 = *v139;
  v62 = *v140;
  if (*v139 == *v140)
  {
    v58 = &v155;
    __dst = &v155;
    v59 = 5;
    HIDWORD(v154) = 5;
    if (v61 > 3)
    {
      v156 = 4;
      v155 = xmmword_1E097BCC0;
      goto LABEL_140;
    }

    v63 = xmmword_1E0970050;
  }

  else
  {
    v58 = &v155;
    __dst = &v155;
    HIDWORD(v154) = 5;
    if (v62 > 6)
    {
      if (v62 > 8)
      {
        if (v62 == 9)
        {
          v156 = 2;
          v64 = &xmmword_1E097BD10;
        }

        else
        {
          v156 = 0;
          v64 = &xmmword_1E097BCFC;
        }
      }

      else if (v62 == 7)
      {
        v156 = 3;
        v64 = &xmmword_1E097BCE8;
      }

      else
      {
        v156 = 1;
        v64 = &xmmword_1E097BCD4;
      }

      v155 = *v64;
      v59 = 5;
      goto LABEL_140;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v63 = xmmword_1E097BC80;
      }

      else
      {
        v63 = xmmword_1E097BC90;
      }
    }

    else if (v62)
    {
      v63 = xmmword_1E097BCB0;
    }

    else
    {
      v63 = xmmword_1E097BCA0;
    }
  }

  v155 = v63;
  v59 = 4;
LABEL_140:
  LODWORD(v154) = v59;
LABEL_141:
  v65 = v142;
  if (v21)
  {
    v66 = v26;
  }

  else
  {
    v66 = v141;
  }

  if (v21)
  {
    v65 = v23;
  }

  if (v66 == v65)
  {
    v148 = &v151;
    v67 = 5;
    v150 = 5;
    if (v66 <= 3)
    {
      v68 = xmmword_1E0970050;
LABEL_149:
      v151 = v68;
      v67 = 4;
      goto LABEL_167;
    }

    v152 = 4;
    v151 = xmmword_1E097BCC0;
  }

  else
  {
    v148 = &v151;
    v150 = 5;
    if (v65 <= 6)
    {
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v68 = xmmword_1E097BC80;
        }

        else
        {
          v68 = xmmword_1E097BC90;
        }
      }

      else if (v65)
      {
        v68 = xmmword_1E097BCB0;
      }

      else
      {
        v68 = xmmword_1E097BCA0;
      }

      goto LABEL_149;
    }

    if (v65 > 8)
    {
      if (v65 == 9)
      {
        v152 = 2;
        v69 = &xmmword_1E097BD10;
      }

      else
      {
        v152 = 0;
        v69 = &xmmword_1E097BCFC;
      }
    }

    else if (v65 == 7)
    {
      v152 = 3;
      v69 = &xmmword_1E097BCE8;
    }

    else
    {
      v152 = 1;
      v69 = &xmmword_1E097BCD4;
    }

    v151 = *v69;
    v67 = 5;
  }

LABEL_167:
  v149 = v67;
  if (*(v56 + 36))
  {
    v70 = v56 - 16;
  }

  else
  {
    v70 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0);
  v147 = NextResultAtOffset;
  v72 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v72)
  {
    v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  v146[0] = v72;
  v146[1] = v73;
  if (mlir::CallOpInterface::getArgOperands(v146))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v146);
    v165 = v167;
    v166 = 0x500000000;
    v76 = v75;
    if (v75 >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v75, 8);
    }

    if (v59)
    {
      v77 = 4 * v59;
      do
      {
        v78 = *v58;
        v79 = *(mlir::CallableOpInterface::getArgAttrsAttr(v146) + 8 * v78);
        v80 = v166;
        if (v166 >= HIDWORD(v166))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v165, v167, v166 + 1, 8);
          v80 = v166;
        }

        v165->i64[v80] = v79;
        v81 = v166 + 1;
        LODWORD(v166) = v166 + 1;
        v58 = (v58 + 4);
        v77 -= 4;
      }

      while (v77);
    }

    else
    {
      v81 = v166;
    }

    v162 = v146[0];
    *(NextResultAtOffset + 8) = *(NextResultAtOffset + 8) & 7 | mlir::TensorType::clone(&v162, v165, v81);
    if (!v135 || (*(v56 + 46) & 0x80) == 0 || *(v56 + 68) != 3)
    {
      goto LABEL_213;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v56 + 72) + 88));
    if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 32)
    {
      v162 = v76;
      v89 = mlir::Attribute::getContext((v56 + 24));
      v90 = mlir::IntegerType::get(v89, 64, 1u);
      v91 = mlir::RankedTensorType::get(&v162, 1, v90, 0);
      if (v91)
      {
        v92 = v91;
        v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
        v91 = v92;
      }

      else
      {
        v93 = 0;
      }

      v117 = *(v56 + 24);
      v162 = mlir::DenseElementsAttr::getFromRawBuffer(v91, v93, v165, 8 * v166, 8, 1, 1);
      v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v117, &v162);
LABEL_207:
      v118 = (v115 - 16);
      v119 = *(v56 + 72);
      v120 = v119 + 8;
      v121 = v119[9];
      if (v121)
      {
        v122 = *v120;
        *v121 = *v120;
        if (v122)
        {
          *(v122 + 8) = v119[9];
        }
      }

      v119[11] = v118;
      v119[9] = v118;
      v123 = *v118;
      v119[8] = *v118;
      if (v123)
      {
        *(v123 + 8) = v120;
      }

      *v118 = v120;
LABEL_213:
      if (v165 != v167)
      {
        free(v165);
      }

      goto LABEL_215;
    }

    v82 = v165;
    v83 = v166;
    v162 = v76;
    v84 = mlir::Attribute::getContext((v56 + 24));
    v85 = mlir::IntegerType::get(v84, 32, 1u);
    v86 = mlir::RankedTensorType::get(&v162, 1, v85, 0);
    v87 = v86;
    if (v86)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v88 = 0;
    }

    v94 = *(v56 + 24);
    v162 = v164;
    v163 = 0x500000000;
    v136 = v94;
    if (v83 < 6)
    {
      if (!v83)
      {
        v114 = 0;
        v99 = v164;
LABEL_203:
        LODWORD(v163) = v114 + v83;
        v144 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v88, v99, 4 * (v114 + v83), 4, 1, 1);
        v115 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a5 + 1), v136, &v144);
        if (v162 != v164)
        {
          v116 = v115;
          free(v162);
          v115 = v116;
        }

        goto LABEL_207;
      }

      v98 = 0;
      v99 = v164;
    }

    else
    {
      v95 = v87;
      v96 = v82;
      v97 = v88;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v164, v83, 4);
      v88 = v97;
      v82 = v96;
      v87 = v95;
      v98 = v163;
      v99 = v162;
    }

    v100 = &v99[4 * v98];
    v101 = (v83 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v101 >= 7)
    {
      v104 = v101 + 1;
      v105 = (v101 + 1) & 0x3FFFFFFFFFFFFFF8;
      v102 = (v100 + 4 * v105);
      v103 = &v82->i8[8 * v105];
      v106 = v82 + 2;
      v107 = v100 + 1;
      v108 = v105;
      do
      {
        v110 = v106[-2];
        v109 = v106[-1];
        v112 = *v106;
        v111 = v106[1];
        v106 += 4;
        v107[-1] = vuzp1q_s32(v110, v109);
        *v107 = vuzp1q_s32(v112, v111);
        v107 += 2;
        v108 -= 8;
      }

      while (v108);
      if (v104 == v105)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v102 = v100;
      v103 = v82;
    }

    do
    {
      v113 = *v103;
      v103 += 8;
      v102->i32[0] = v113;
      v102 = (v102 + 4);
    }

    while (v103 != v82 + 8 * v83);
LABEL_202:
    v114 = v163;
    goto LABEL_203;
  }

LABEL_215:
  v124 = *(v56 + 16);
  v125 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v56, v74) + 8);
  a5[3] = v124;
  a5[4] = v125;
  if (NextResultAtOffset != v165)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v165);
    if (mlir::CallOpInterface::getArgOperands(v146))
    {
      v128 = v165;
    }

    else
    {
      v129 = *(DefiningOp + 16);
      v130 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(DefiningOp, v127) + 8);
      a5[3] = v129;
      a5[4] = v130;
      v131 = *(v56 + 24);
      v162 = 0;
      LOBYTE(ElementTypeOrSelf) = 1;
      v132 = mlir::OpBuilder::create<mlir::mps::DynamicShapeCastOp,mlir::Value &,decltype(nullptr),BOOL>(a5 + 1, v131, &v165, &v162, &ElementTypeOrSelf);
      if (*(v132 + 36))
      {
        v133 = v132 - 16;
      }

      else
      {
        v133 = 0;
      }

      v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v133, 0);
    }

    mlir::Value::replaceAllUsesExcept(&v147, v128, DefiningOp);
  }

  if (v148 != &v151)
  {
    free(v148);
  }

  if (__dst != &v155)
  {
    free(__dst);
  }

  if (v157 != &v160)
  {
    free(v157);
  }

  return 1;
}