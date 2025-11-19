uint64_t mlir::OpBuilder::create<mlir::mps::SplitOp,mlir::Value,mlir::Value,mlir::Value,mlir::IntegerAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SplitOp,mlir::Value,mlir::Value,mlir::Value,mlir::IntegerAttr>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::SplitOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id)
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

void anonymous namespace::ConcatOpPattern::~ConcatOpPattern(_anonymous_namespace_::ConcatOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConcatOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConcatOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::ConcatOpPattern::matchAndRewrite(int a1, uint64_t a2, mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase *this, double a4, int32x4_t a5, mlir::UnitAttr **a6)
{
  v21 = *MEMORY[0x1E69E9840];
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 12), a4, a5);
  v12 = *(this + 5);
  v19 = v12;
  v20 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v12 = mlir::ValueRange::offset_base(&v19, ODSOperandIndexAndLength);
    v13 = v20;
  }

  else
  {
    v13 = 0;
  }

  v18[0] = v12;
  v18[1] = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - v13;
  v14 = mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 12), v10, v11);
  v15 = *(this + 5);
  v19 = v15;
  v20 = v14;
  if (v14)
  {
    v15 = mlir::ValueRange::offset_base(&v19, v14);
  }

  v19 = v15;
  v20 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v16 = mlir::OpBuilder::create<mlir::mps::ConcatOp,mlir::ValueRange,mlir::Value>(a6 + 1, *(a2 + 24), v18, &v19);
  (*(*a6 + 1))(a6, a2, v16);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConcatOp,mlir::ValueRange,mlir::Value>(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConcatOp,llvm::SmallVector<mlir::Value,4u> &,mlir::Value,BOOL>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ConcatOp::build(a1, v17, *a3, *(a3 + 8), *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
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

void anonymous namespace::StackOpPattern::~StackOpPattern(_anonymous_namespace_::StackOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::StackOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::StackOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::StackOpPattern::matchAndRewrite(int a1, uint64_t a2, mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t a6)
{
  v38 = *MEMORY[0x1E69E9840];
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 12), a4, a5);
  v10 = *(this + 5);
  __p = v10;
  v34 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&__p, ODSOperandIndexAndLength);
  }

  __p = v10;
  v34 = 0;
  v32 = mlir::ValueRange::dereference_iterator(&__p, 0);
  __p = 0;
  v34 = 0;
  v35 = 0;
  v13 = mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 12), v11, v12);
  v14 = *(this + 5);
  v36 = v14;
  v37 = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(&v36, v13);
    v15 = v37;
  }

  else
  {
    v15 = 0;
  }

  v16 = (HIDWORD(v13) + v13);
  v36 = v14;
  v37 = 0;
  v17 = v16 - v15;
  if (v16 != v15)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v31 = mlir::ValueRange::dereference_iterator(&v36, v21);
      v22 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((a6 + 8), *(a2 + 24), &v31, &v32) - 16;
      if (v20 < v35)
      {
        *v20++ = v22;
      }

      else
      {
        v23 = __p;
        v24 = v20 - __p;
        v25 = (v20 - __p) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v27 = v35 - __p;
        if ((v35 - __p) >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (v28 >> 61)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v29 = operator new(8 * v28);
        }

        else
        {
          v29 = 0;
        }

        v30 = &v29[8 * v25];
        *v30 = v22;
        v20 = v30 + 1;
        memcpy(v29, v23, v24);
        __p = v29;
        v35 = &v29[8 * v28];
        if (v23)
        {
          operator delete(v23);
        }
      }

      v34 = v20;
      v21 = v37 + 1;
      v37 = v21;
    }

    while (v21 != v17);
  }

  LOBYTE(v36) = 0;
  v18 = mlir::OpBuilder::create<mlir::mps::ConcatOp,std::vector<mlir::Value> &,mlir::Value&,BOOL>((a6 + 8), *(a2 + 24), &__p, &v32, &v36);
  (*(*a6 + 8))(a6, a2, v18);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConcatOp,std::vector<mlir::Value> &,mlir::Value&,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
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
  mlir::ValueRange::ValueRange(v19, *a3, (a3[1] - *a3) >> 3);
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

void anonymous namespace::BatchNormOpPattern::~BatchNormOpPattern(_anonymous_namespace_::BatchNormOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::BatchNormOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::BatchNormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::BatchNormOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v22 = *(a3 + 40);
  v23 = 5;
  v22 = mlir::ValueRange::offset_base(&v22, 5);
  v23 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v22, 0);
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::getNumElements(&v20) != 1)
  {
    v24 = 259;
    v21 = &v22;
    v22 = "failed: epsilon rank not supported";
    v14 = *(a4 + 16);
    if (v14 && mlir::RewriterBase::Listener::classof(v14))
    {
      (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::BatchNormOp &>(mlir::ODIE::Compiler::CoreML::BatchNormOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v21);
    }

    return 0;
  }

  v8 = 1;
  mlir::DenseElementsAttr::isValidIntOrFloat(&v20, 4, 0, 1u);
  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v20);
  mlir::DenseElementsAttr::isSplat(&v20);
  mlir::ArrayAttr::getValue(&v20);
  mlir::DenseElementsAttr::getNumElements(&v20);
  F32FloatAttr = mlir::Builder::getF32FloatAttr((a4 + 8), *RawStringData, v10);
  v12 = *(a3 + 40);
  v21 = F32FloatAttr;
  v22 = v12;
  v23 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v22 = *(a3 + 40);
  v23 = 3;
  v22 = mlir::ValueRange::offset_base(&v22, 3);
  v23 = 0;
  v18 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v22 = *(a3 + 40);
  v23 = 4;
  v22 = mlir::ValueRange::offset_base(&v22, 4);
  v23 = 0;
  v17 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v22 = *(a3 + 40);
  v23 = 1;
  v22 = mlir::ValueRange::offset_base(&v22, 1);
  v23 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v22 = *(a3 + 40);
  v23 = 2;
  v22 = mlir::ValueRange::offset_base(&v22, 2);
  v23 = 0;
  v22 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v13 = mlir::OpBuilder::create<mlir::mps::NormalizationOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::FloatAttr &>((a4 + 8), *(a2 + 24), &v19, &v18, &v17, &v16, &v22, &v21);
  (*(*a4 + 8))(a4, a2, v13);
  return v8;
}

uint64_t mlir::OpBuilder::create<mlir::mps::NormalizationOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::FloatAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::NormalizationOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::mps::NormalizationOp::build(a1, v25, *a3, *a4, *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
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

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::mps::ShapeOp>::~TrivialPattern(void *a1)
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

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::mps::ShapeOp>::~TrivialPattern(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GetShapeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::GetShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::mps::ShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
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
  mlir::mps::ShapeOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
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

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::TileOp,mlir::mps::TileOp>::~TrivialPattern(void *a1)
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

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::TileOp,mlir::mps::TileOp>::~TrivialPattern(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::TileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::TileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::TileOp,mlir::mps::TileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::TileOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::TileOp,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::TileOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::TileOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id)
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

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::NonZeroOp,mlir::mps::NonZeroOp>::~TrivialPattern(void *a1)
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

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::NonZeroOp,mlir::mps::NonZeroOp>::~TrivialPattern(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::NonZeroOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::NonZeroOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::NonZeroOp,mlir::mps::NonZeroOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnknownLoc **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::NonZeroOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::NonZeroOp,mlir::ValueRange>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NonZeroOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::NonZeroOp,mlir::ValueRange>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::NonZeroOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NonZeroOp,void>::id)
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

void anonymous namespace::MaxPool2dOpPattern::~MaxPool2dOpPattern(_anonymous_namespace_::MaxPool2dOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::PoolPattern<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,mlir::mps::PoolMaxOp>::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v8 = *(a3 + 16);
  *v39 = *a3;
  v40 = v8;
  v41 = *(a3 + 32);
  v42 = *(a3 + 48);
  if (((*(*a1 + 88))(a1, a4, a2, v39) & 1) == 0)
  {
    return 0;
  }

  v39[0] = *(a3 + 40);
  v39[1] = 1;
  v39[0] = mlir::ValueRange::offset_base(v39, 1);
  v39[1] = 0;
  v9 = mlir::ValueRange::dereference_iterator(v39, 0);
  {
    return 0;
  }

  v39[0] = *(a3 + 40);
  v39[1] = 2;
  v39[0] = mlir::ValueRange::offset_base(v39, 2);
  v39[1] = 0;
  v10 = mlir::ValueRange::dereference_iterator(v39, 0);
  {
    return 0;
  }

  v39[0] = *(a3 + 40);
  v39[1] = 3;
  v39[0] = mlir::ValueRange::offset_base(v39, 3);
  v39[1] = 0;
  v11 = mlir::ValueRange::dereference_iterator(v39, 0);
  *&v36 = 0;
  {
    return 0;
  }

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  {
    return 0;
  }

  v13 = v32;
  v12 = v33;
  v15 = v34;
  v14 = v35;
  v39[0] = &v40;
  v39[1] = 0x600000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(v39, &v40, 8uLL, 8);
  v16 = v39[0] + 8 * LODWORD(v39[1]);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = v12;
  *(v16 + 5) = v13;
  *(v16 + 6) = v14;
  *(v16 + 7) = v15;
  LODWORD(v39[1]) += 8;
  IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v38 = 8;
  v18 = mlir::RankedTensorType::get(&v38, 1, IntegerType, 0);
  if (v18)
  {
    v19 = v18;
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v18 = v19;
  }

  else
  {
    v20 = 0;
  }

  v38 = mlir::DenseElementsAttr::getFromRawBuffer(v18, v20, v39[0], 8 * LODWORD(v39[1]), 8, 1, 0);
  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  v39[0] = *(a3 + 40);
  v39[1] = 5;
  v39[0] = mlir::ValueRange::offset_base(v39, 5);
  v39[1] = 0;
  v21 = mlir::ValueRange::dereference_iterator(v39, 0);
  {
    return 0;
  }

  v22 = *(a3 + 16);
  *v39 = *a3;
  v40 = v22;
  v41 = *(a3 + 32);
  v42 = *(a3 + 48);
  if (((*(*a1 + 96))(a1, a4, a2, v39, &v29) & 1) == 0)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *v39 = *a3;
  v40 = v23;
  v41 = *(a3 + 32);
  v42 = *(a3 + 48);
  if (((*(*a1 + 104))(a1, a4, a2, v39, &v27) & 1) == 0)
  {
    return 0;
  }

  mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v28, v39);
  v36 = *v39;
  v37 = v40;
  LOBYTE(v35) = mlir::DenseElementsAttr::BoolElementIterator::operator*(&v36);
  v24 = *(a2 + 24);
  v39[0] = *(a3 + 40);
  v39[1] = 0;
  v39[0] = mlir::ValueRange::dereference_iterator(v39, 0);
  LODWORD(v36) = 0;
  v39[0] = (mlir::OpBuilder::create<mlir::mps::PoolMaxOp,mlir::Value,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL &,BOOL &>((a4 + 8), v24, v39, &v31, &v30, &v29, &v36, &v38, &v35, &v27) - 16);
  v25 = 1;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v39, 1);
  return v25;
}

uint64_t anonymous namespace::MaxPool2dOpPattern::getDilation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = *(a4 + 40);
  v11 = 4;
  v10 = mlir::ValueRange::offset_base(&v10, 4);
  v11 = 0;
  v8 = mlir::ValueRange::dereference_iterator(&v10, 0);
}

uint64_t anonymous namespace::PoolPattern<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,mlir::mps::PoolMaxOp>::getExtendedAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = 0;
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::getNumElements(&v22) != 2)
  {
    v29[0] = "failed: ";
    v29[1] = 8;
    v29[2] = a4;
    v29[3] = a5;
    v30 = 1285;
    v24 = v29;
    v26.i64[0] = " rank is not supported";
    LOWORD(v27) = 770;
    v23 = &v24;
    v20 = *(a1 + 16);
    if (v20 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
      (*(*v20 + 88))(v20, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v23);
    }

    return 0;
  }

  mlir::DenseElementsAttr::isValidIntOrFloat(&v22, 4, 1, 1u);
  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v22);
  mlir::DenseElementsAttr::isSplat(&v22);
  mlir::ArrayAttr::getValue(&v22);
  mlir::DenseElementsAttr::getNumElements(&v22);
  v12 = *RawStringData;
  mlir::DenseElementsAttr::isValidIntOrFloat(&v22, 4, 1, 1u);
  v13 = mlir::DenseElementsAttr::getRawStringData(&v22);
  isSplat = mlir::DenseElementsAttr::isSplat(&v22);
  mlir::ArrayAttr::getValue(&v22);
  mlir::DenseElementsAttr::getNumElements(&v22);
  v15 = *(v13 + 4 * (isSplat ^ 1u));
  v24 = &v26;
  v26 = vdupq_n_s64(1uLL);
  v27 = v12;
  v28 = v15;
  v25 = 0x600000004;
  IntegerType = mlir::Builder::getIntegerType((a1 + 8), 64, 0);
  v29[0] = 4;
  v17 = mlir::RankedTensorType::get(v29, 1, IntegerType, 0);
  if (v17)
  {
    v18 = v17;
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v17 = v18;
  }

  else
  {
    v19 = 0;
  }

  *a6 = mlir::DenseElementsAttr::getFromRawBuffer(v17, v19, v24, 8 * v25, 8, 1, 0);
  if (v24 != &v26)
  {
    free(v24);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PoolMaxOp,mlir::Value,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL &,BOOL &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, uint64_t *a8, char *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PoolMaxOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL,mlir::mps::PoolIndicesMode,mlir::TypeAttr>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::PoolMaxOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id)
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

void anonymous namespace::AvgPool2dOpPattern::~AvgPool2dOpPattern(_anonymous_namespace_::AvgPool2dOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::PoolPattern<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::mps::PoolAvgOp>::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v8 = *(a3 + 16);
  *v39 = *a3;
  v40 = v8;
  v41 = *(a3 + 32);
  v42 = *(a3 + 48);
  if (((*(*a1 + 88))(a1, a4, a2, v39) & 1) == 0)
  {
    return 0;
  }

  v39[0] = *(a3 + 40);
  v39[1] = 1;
  v39[0] = mlir::ValueRange::offset_base(v39, 1);
  v39[1] = 0;
  v9 = mlir::ValueRange::dereference_iterator(v39, 0);
  {
    return 0;
  }

  v39[0] = *(a3 + 40);
  v39[1] = 2;
  v39[0] = mlir::ValueRange::offset_base(v39, 2);
  v39[1] = 0;
  v10 = mlir::ValueRange::dereference_iterator(v39, 0);
  {
    return 0;
  }

  v39[0] = *(a3 + 40);
  v39[1] = 3;
  v39[0] = mlir::ValueRange::offset_base(v39, 3);
  v39[1] = 0;
  v11 = mlir::ValueRange::dereference_iterator(v39, 0);
  *&v36 = 0;
  {
    return 0;
  }

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  {
    return 0;
  }

  v13 = v32;
  v12 = v33;
  v15 = v34;
  v14 = v35;
  v39[0] = &v40;
  v39[1] = 0x600000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(v39, &v40, 8uLL, 8);
  v16 = v39[0] + 8 * LODWORD(v39[1]);
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = v12;
  *(v16 + 5) = v13;
  *(v16 + 6) = v14;
  *(v16 + 7) = v15;
  LODWORD(v39[1]) += 8;
  IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v38 = 8;
  v18 = mlir::RankedTensorType::get(&v38, 1, IntegerType, 0);
  if (v18)
  {
    v19 = v18;
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v18 = v19;
  }

  else
  {
    v20 = 0;
  }

  v38 = mlir::DenseElementsAttr::getFromRawBuffer(v18, v20, v39[0], 8 * LODWORD(v39[1]), 8, 1, 0);
  if (v39[0] != &v40)
  {
    free(v39[0]);
  }

  v39[0] = *(a3 + 40);
  v39[1] = 4;
  v39[0] = mlir::ValueRange::offset_base(v39, 4);
  v39[1] = 0;
  v21 = mlir::ValueRange::dereference_iterator(v39, 0);
  {
    return 0;
  }

  v22 = *(a3 + 16);
  *v39 = *a3;
  v40 = v22;
  v41 = *(a3 + 32);
  v42 = *(a3 + 48);
  if (((*(*a1 + 96))(a1, a4, a2, v39, &v29) & 1) == 0)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *v39 = *a3;
  v40 = v23;
  v41 = *(a3 + 32);
  v42 = *(a3 + 48);
  if (((*(*a1 + 104))(a1, a4, a2, v39, &v27) & 1) == 0)
  {
    return 0;
  }

  mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v28, v39);
  v36 = *v39;
  v37 = v40;
  LOBYTE(v35) = mlir::DenseElementsAttr::BoolElementIterator::operator*(&v36);
  v24 = *(a2 + 24);
  v39[0] = *(a3 + 40);
  v39[1] = 0;
  v39[0] = mlir::ValueRange::dereference_iterator(v39, 0);
  LODWORD(v36) = 0;
  v39[0] = (mlir::OpBuilder::create<mlir::mps::PoolAvgOp,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyle,mlir::DenseIntElementsAttr &,BOOL,BOOL>((a4 + 8), v24, v39, &v31, &v30, &v29, &v36, &v38, &v35, &v27) - 16);
  v25 = 1;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v39, 1);
  return v25;
}

uint64_t anonymous namespace::AvgPool2dOpPattern::check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v12 = *(a4 + 40);
  v13 = 6;
  v12 = mlir::ValueRange::offset_base(&v12, 6);
  v13 = 0;
  v6 = mlir::ValueRange::dereference_iterator(&v12, 0);
  {
    mlir::DenseElementsAttr::isValidIntOrFloat(&v10, 4, 1, 1u);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v10);
    mlir::DenseElementsAttr::isSplat(&v10);
    mlir::ArrayAttr::getValue(&v10);
    mlir::DenseElementsAttr::getNumElements(&v10);
    if (!*RawStringData)
    {
      return 1;
    }

    v14 = 259;
    v11 = &v12;
    v12 = "failed: divisor_override value not supported";
    v8 = *(a2 + 16);
    if (v8)
    {
      if (mlir::RewriterBase::Listener::classof(v8))
      {
        (*(*v8 + 88))(v8, *(a3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Operation *&>(mlir::Operation *&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v11);
      }
    }
  }

  return 0;
}

uint64_t anonymous namespace::AvgPool2dOpPattern::getDilation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  IntegerType = mlir::Builder::getIntegerType((a2 + 8), 64, 0);
  v11[0] = 4;
  v7 = mlir::RankedTensorType::get(v11, 1, IntegerType, 0);
  if (v7)
  {
    v8 = v7;
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  v11[0] = v12;
  v12[0] = xmmword_1E0999AF8;
  v12[1] = unk_1E0999B08;
  v11[1] = 0x600000004;
  *a5 = mlir::DenseElementsAttr::getFromRawBuffer(v7, v9, v12, 32, 8, 1, 0);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return 1;
}

uint64_t anonymous namespace::AvgPool2dOpPattern::getIncludeZeroPad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  *&v13 = *(a4 + 40);
  *(&v13 + 1) = 5;
  v13 = mlir::ValueRange::offset_base(&v13, 5);
  v8 = mlir::ValueRange::dereference_iterator(&v13, 0);
  {
    return 0;
  }

  mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v10, &v13);
  v11 = v13;
  v12 = v14;
  *a5 = mlir::DenseElementsAttr::BoolElementIterator::operator*(&v11);
  return 1;
}

void anonymous namespace::InvokeOpPattern::~InvokeOpPattern(_anonymous_namespace_::InvokeOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::InvokeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::InvokeOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::StringAttr **a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  v8 = a2 - 16;
  if (!v7)
  {
    v8 = 0;
  }

  v20 = a2;
  v21 = v8;
  v22 = v7;
  mlir::OperandRange::getTypes(&v21, v19);
  ODSOperandIndexAndLength = mlir::scf::detail::YieldOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 64));
  v10 = *(a3 + 56);
  v21 = v10;
  v22 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v21, ODSOperandIndexAndLength);
    v11 = v22;
  }

  else
  {
    v11 = 0;
  }

  v21 = v10;
  v22 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - v11;
  ResolvedCallee = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(&v20);
  LeafReference = mlir::SymbolRefAttr::getLeafReference(&ResolvedCallee);
  v18[0] = mlir::OpaqueAttr::getAttrData(&LeafReference);
  v18[1] = v12;
  v15 = 0;
  v13 = mlir::OpBuilder::create<mlir::mps::CallOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::ValueRange,llvm::StringRef,mlir::mps::CallInlineMode>(a4 + 1, *(a2 + 24), v19, &v21, v18, &v15);
  (*(*a4 + 1))(a4, a2, v13);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CallOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::ValueRange,llvm::StringRef,mlir::mps::CallInlineMode>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, unsigned int *a6)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CallOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::ValueRange,llvm::StringRef,mlir::mps::CallInlineMode>(v22, v24, v23);
  }

  mlir::OperationState::OperationState(v22, a2, v13);
  NextResultAtOffset = *a3;
  v16 = a3[1];
  v17 = a3[3];
  if (v16)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v16);
  }

  mlir::ValueRange::ValueRange(v24, NextResultAtOffset, v17 - v16);
  mlir::TypeRange::TypeRange(v23, v24[0], v24[1]);
  mlir::mps::CallOp::build(a1, v22, v23[0], v23[1], *a4, *(a4 + 8), *a5, a5[1], *a6);
  v18 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v19;
}

void *anonymous namespace::QuantizeBaseOpPattern<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::mps::QuantizeOp>::~QuantizeBaseOpPattern(void *a1)
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

void anonymous namespace::QuantizeBaseOpPattern<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::mps::QuantizeOp>::~QuantizeBaseOpPattern(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::QuantizeBaseOpPattern<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::mps::QuantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v21 = *(a3 + 40);
  v22 = 3;
  v21 = mlir::ValueRange::offset_base(&v21, 3);
  v22 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v21, 0);
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::getNumElements(&v19) < 0 || mlir::DenseElementsAttr::getNumElements(&v19) >= 2)
  {
    v23 = 259;
    v20 = &v21;
    v21 = "failed: axis rank not supported";
    v8 = *(a4 + 16);
    if (v8 && mlir::RewriterBase::Listener::classof(v8))
    {
      (*(*v8 + 88))(v8, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp &>(mlir::ODIE::Compiler::CoreMLAX::QuantizeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v20);
    }

    return 0;
  }

  NumElements = mlir::DenseElementsAttr::getNumElements(&v19);
  if (NumElements)
  {
    mlir::DenseElementsAttr::isValidIntOrFloat(&v19, 4, 1, 1u);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v19);
    mlir::DenseElementsAttr::isSplat(&v19);
    mlir::ArrayAttr::getValue(&v19);
    mlir::DenseElementsAttr::getNumElements(&v19);
    NumElements = mlir::Builder::getSI32IntegerAttr((a4 + 8), *RawStringData);
  }

  v13 = *(a3 + 40);
  v20 = NumElements;
  v21 = v13;
  v22 = 0;
  v18 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v9 = 1;
  v21 = *(a3 + 40);
  v22 = 1;
  v21 = mlir::ValueRange::offset_base(&v21, 1);
  v22 = 0;
  v17 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v21 = *(a3 + 40);
  v22 = 2;
  v21 = mlir::ValueRange::offset_base(&v21, 2);
  v22 = 0;
  v21 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v15 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v15);
  v14 = mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>((a4 + 8), *(a2 + 24), &v18, &v17, &v21, &ElementType, &v20);
  (*(*a4 + 8))(a4, a2, v14);
  return v9;
}

uint64_t mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::QuantizeOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id)
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

void *anonymous namespace::QuantizeBaseOpPattern<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::mps::DequantizeOp>::~QuantizeBaseOpPattern(void *a1)
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

void anonymous namespace::QuantizeBaseOpPattern<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::mps::DequantizeOp>::~QuantizeBaseOpPattern(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::QuantizeBaseOpPattern<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::mps::DequantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v21 = *(a3 + 40);
  v22 = 3;
  v21 = mlir::ValueRange::offset_base(&v21, 3);
  v22 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v21, 0);
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::getNumElements(&v19) < 0 || mlir::DenseElementsAttr::getNumElements(&v19) >= 2)
  {
    v23 = 259;
    v20 = &v21;
    v21 = "failed: axis rank not supported";
    v8 = *(a4 + 16);
    if (v8 && mlir::RewriterBase::Listener::classof(v8))
    {
      (*(*v8 + 88))(v8, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp &>(mlir::ODIE::Compiler::CoreMLAX::DequantizeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v20);
    }

    return 0;
  }

  NumElements = mlir::DenseElementsAttr::getNumElements(&v19);
  if (NumElements)
  {
    mlir::DenseElementsAttr::isValidIntOrFloat(&v19, 4, 1, 1u);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v19);
    mlir::DenseElementsAttr::isSplat(&v19);
    mlir::ArrayAttr::getValue(&v19);
    mlir::DenseElementsAttr::getNumElements(&v19);
    NumElements = mlir::Builder::getSI32IntegerAttr((a4 + 8), *RawStringData);
  }

  v13 = *(a3 + 40);
  v20 = NumElements;
  v21 = v13;
  v22 = 0;
  v18 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v9 = 1;
  v21 = *(a3 + 40);
  v22 = 1;
  v21 = mlir::ValueRange::offset_base(&v21, 1);
  v22 = 0;
  v17 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v21 = *(a3 + 40);
  v22 = 2;
  v21 = mlir::ValueRange::offset_base(&v21, 2);
  v22 = 0;
  v21 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v15 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v15);
  v14 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>((a4 + 8), *(a2 + 24), &v18, &v17, &v21, &ElementType, &v20);
  (*(*a4 + 8))(a4, a2, v14);
  return v9;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::mps::PermuteOp &,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::DequantizeOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
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

void anonymous namespace::ConstexprLutToDenseOpPattern::~ConstexprLutToDenseOpPattern(_anonymous_namespace_::ConstexprLutToDenseOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::ConstexprLutToDenseOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v24 = *(*(a2 + 48) + 8);
  mlir::OpaqueAttr::getAttrData(&v24);
  v21 = 0;
  v24 = *(a3 + 40);
  v25 = 2;
  v24 = mlir::ValueRange::offset_base(&v24, 2);
  v25 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&v24, 0);
  {
    if ((mlir::DenseElementsAttr::getNumElements(&v21) & 0x8000000000000000) == 0 && mlir::DenseElementsAttr::getNumElements(&v21) < 2)
    {
      NumElements = mlir::DenseElementsAttr::getNumElements(&v21);
      if (NumElements)
      {
        mlir::DenseElementsAttr::isValidIntOrFloat(&v21, 4, 1, 1u);
        RawStringData = mlir::DenseElementsAttr::getRawStringData(&v21);
        mlir::DenseElementsAttr::isSplat(&v21);
        mlir::ArrayAttr::getValue(&v21);
        mlir::DenseElementsAttr::getNumElements(&v21);
        NumElements = mlir::Builder::getSI32IntegerAttr((a4 + 8), *RawStringData);
      }

      v12 = *(a3 + 40);
      v23 = NumElements;
      v24 = v12;
      v25 = 0;
      v20 = mlir::ValueRange::dereference_iterator(&v24, 0);
      v24 = *(a3 + 40);
      v25 = 1;
      v24 = mlir::ValueRange::offset_base(&v24, 1);
      v25 = 0;
      v13 = mlir::ValueRange::dereference_iterator(&v24, 0);
      v19 = v13;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v13);
      if (mlir::Type::isInteger(&ElementTypeOrSelf, 8))
      {
        v14 = *(a2 + 24);
        v24 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
        Context = mlir::Attribute::getContext(&v24);
        v24 = mlir::Float16Type::get(Context, v16);
        v19 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v14, &v19, &v24) - 16;
      }

      else if (!mlir::Type::isBF16(&ElementTypeOrSelf) && !mlir::Type::isF16(&ElementTypeOrSelf) && !mlir::Type::isF32(&ElementTypeOrSelf))
      {
        v24 = "failed: lut types not supported";
        v26 = 259;
        return mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp &>(a4, &v22, &v24);
      }

      v17 = mlir::OpBuilder::create<mlir::mps::DequantizeLUTOp,mlir::Value &,mlir::Value &,mlir::IntegerAttr &>((a4 + 8), *(a2 + 24), &v20, &v19, &v23);
      (*(*a4 + 8))(a4, a2, v17);
      return 1;
    }

    v26 = 259;
    v23 = &v24;
    v24 = "failed: axis rank not supported";
    v8 = *(a4 + 16);
    if (v8)
    {
      if (mlir::RewriterBase::Listener::classof(v8))
      {
        (*(*v8 + 88))(v8, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp &>(mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v23);
      }
    }
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v6 = a3;
  v4 = *(a1 + 16);
  if (v4 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v4 + 88))(v4, *(v3 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp &>(mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v6);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeLUTOp,mlir::Value &,mlir::Value &,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DequantizeLUTOp,mlir::Value &,mlir::Value &,mlir::IntegerAttr &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::DequantizeLUTOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id)
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

void anonymous namespace::ConstexprBlockwiseShiftScaleOpPattern::~ConstexprBlockwiseShiftScaleOpPattern(_anonymous_namespace_::ConstexprBlockwiseShiftScaleOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::ConstexprBlockwiseShiftScaleOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  Constant = *(a3 + 40);
  v27 = 0;
  v24 = mlir::ValueRange::dereference_iterator(&Constant, 0);
  Constant = *(a3 + 40);
  v27 = 1;
  Constant = mlir::ValueRange::offset_base(&Constant, 1);
  v27 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&Constant, 0);
  v23 = v7;
  Constant = *(a3 + 40);
  v27 = 2;
  Constant = mlir::ValueRange::offset_base(&Constant, 2);
  v27 = 0;
  v22 = mlir::ValueRange::dereference_iterator(&Constant, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
  v20 = 0;
  v21 = ElementTypeOrSelf;
  v19 = mlir::getElementTypeOrSelf(v22);
  if (mlir::Type::isInteger(&v19))
  {
    v9 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>((a4 + 8), *(a2 + 24), &v24, &v23, &v22, &v21, &v20);
    (*(*a4 + 8))(a4, a2, v9);
    return 1;
  }

  else
  {
    v11 = mlir::getElementTypeOrSelf(v7);
    if (v19 == v11)
    {
      v13 = *(a2 + 24);
      v14 = mlir::getElementTypeOrSelf(v24);
      v10 = 1;
      Constant = 1;
      v15 = mlir::RankedTensorType::get(&Constant, 1, v14, 0);
      Constant = mlir::mps::getConstantAttr<int>(v15, 0);
      Constant = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v13, &Constant);
      v18 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>((a4 + 8), v13, &v22, &v23);
      p_Constant = mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::mps::MultiplyOp>((a4 + 8), v13, &v18);
      v16 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::NegativeOp &,mlir::Type &,mlir::IntegerAttr &>((a4 + 8), *(a2 + 24), &v24, &v23, &Constant, &p_Constant, &v21, &v20);
      (*(*a4 + 8))(a4, a2, v16);
    }

    else
    {
      v28 = 259;
      p_Constant = &Constant;
      Constant = "failed: offset type not supported";
      v12 = *(a4 + 16);
      if (v12 && mlir::RewriterBase::Listener::classof(v12))
      {
        (*(*v12 + 88))(v12, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp &>(mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &p_Constant);
      }

      return 0;
    }
  }

  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::mps::MultiplyOp>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::NegativeOp &,mlir::Type &,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6, uint64_t *a7, uint64_t *a8)
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
  mlir::mps::DequantizeOp::build(a1, v25, *a3, *a4, *a5 - 16, *a6 - 16, *a7, *a8);
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

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::mps::CreateComplexOp>::~TrivialPattern(void *a1)
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

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::mps::CreateComplexOp>::~TrivialPattern(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateComplexOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateComplexOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::mps::CreateComplexOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float32Type **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::CreateComplexOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), &v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CreateComplexOp,mlir::ValueRange>(mlir::Float32Type **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CreateComplexOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::CreateComplexOp::build(a1, v15, *a3, *(a3 + 8), 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id)
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

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::mps::RealPartOp>::~TrivialPattern(void *a1)
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

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::mps::RealPartOp>::~TrivialPattern(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::RealPartOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::RealPartOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::mps::RealPartOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnknownLoc **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  *v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::RealPartOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::RealPartOp,mlir::ValueRange>(mlir::UnknownLoc **a1, uint64_t a2, unint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RealPartOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::RealPartOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::RealPartOp::build(a1, v15, *a3, a3[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::RealPartOp,void>::id)
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

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::mps::ImaginaryPartOp>::~TrivialPattern(void *a1)
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

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::mps::ImaginaryPartOp>::~TrivialPattern(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::mps::ImaginaryPartOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnknownLoc **a4)
{
  v9 = *MEMORY[0x1E69E9840];
  *v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::mps::ImaginaryPartOp,mlir::ValueRange>(a4 + 1, *(a2 + 24), v8);
  (*(*a4 + 1))(a4, a2, v6);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ImaginaryPartOp,mlir::ValueRange>(mlir::UnknownLoc **a1, uint64_t a2, unint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ImaginaryPartOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ImaginaryPartOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ImaginaryPartOp::build(a1, v15, *a3, a3[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ImaginaryPartOp,void>::id)
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

void anonymous namespace::IfOpPattern::~IfOpPattern(_anonymous_namespace_::IfOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::IfOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 24);
  v15[0] = *(a3 + 40);
  v15[1] = 0;
  v15[0] = mlir::ValueRange::dereference_iterator(v15, 0);
  v7 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value>((a4 + 8), v6, v15);
  v8 = *(a2 + 24);
  v9 = *(a2 + 36);
  v10 = a2 - 16;
  if (!v9)
  {
    v10 = 0;
  }

  v13 = v7;
  v14[0] = v10;
  v14[1] = v9;
  mlir::OperandRange::getTypes(v14, v15);
  LOBYTE(v14[0]) = 1;
  v11 = mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::tensor::ExtractOp &,BOOL>((a4 + 8), v8, v15, &v13, v14);
  mlir::Region::takeBody((((&v11[4 * ((v11[11] >> 23) & 1) + 17] + ((v11[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v11[10]), (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)));
  mlir::Region::takeBody((((&v11[4 * ((v11[11] >> 23) & 1) + 17] + ((v11[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v11[10] + 24), (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24));
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v11);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::tensor::ExtractOp &,BOOL>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, unsigned __int8 *a5)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(v20, v22, v21);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  NextResultAtOffset = *a3;
  v14 = a3[1];
  v15 = a3[3];
  if (v14)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v14);
  }

  mlir::ValueRange::ValueRange(v22, NextResultAtOffset, v15 - v14);
  mlir::TypeRange::TypeRange(v21, v22[0], v22[1]);
  mlir::scf::IfOp::build(a1, v20, v21[0], v21[1], *a4 - 16, *a5);
  v16 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v17;
}

void *anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::YieldOp,mlir::scf::YieldOp>::~TrivialPattern(void *a1)
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

void anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::YieldOp,mlir::scf::YieldOp>::~TrivialPattern(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::TrivialPattern<mlir::ODIE::Compiler::CoreML::YieldOp,mlir::scf::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 40);
  v6 = mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v8);
  (*(*a4 + 8))(a4, a2, v6);
  return 1;
}

void anonymous namespace::WhileOpPattern::~WhileOpPattern(_anonymous_namespace_::WhileOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::WhileOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  v8 = *(a2 + 36);
  v9 = a2 - 16;
  if (!v8)
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = v8;
  mlir::OperandRange::getTypes(&v16, v15);
  ODSOperandIndexAndLength = mlir::scf::detail::YieldOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48));
  v11 = *(a3 + 40);
  v16 = v11;
  v17 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v16, ODSOperandIndexAndLength);
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  v16 = v11;
  v17 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - v12;
  v13 = mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::ValueRange>((a4 + 8), v7, v15, &v16);
  mlir::Region::takeBody((((&v13[4 * ((v13[11] >> 23) & 1) + 17] + ((v13[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v13[10]), (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)));
  mlir::Region::takeBody((((&v13[4 * ((v13[11] >> 23) & 1) + 17] + ((v13[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v13[10] + 24), (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24));
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v13);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  NextResultAtOffset = *a3;
  v12 = a3[1];
  v13 = a3[3];
  if (v12)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v12);
  }

  mlir::ValueRange::ValueRange(v20, NextResultAtOffset, v13 - v12);
  mlir::TypeRange::TypeRange(v19, v20[0], v20[1]);
  mlir::scf::WhileOp::build(a1, v18, v19[0], v19[1], *a4, *(a4 + 8), 0, 0);
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

void anonymous namespace::ConditionOpOpPattern::~ConditionOpOpPattern(_anonymous_namespace_::ConditionOpOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::ConditionOpOpPattern::matchAndRewrite(int a1, uint64_t a2, mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 12), a4, a5);
  v11 = *(this + 5);
  v20 = v11;
  v21 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v20, ODSOperandIndexAndLength);
  }

  v20 = v11;
  v21 = 0;
  v20 = mlir::ValueRange::dereference_iterator(&v20, 0);
  v19 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value>((a6 + 8), v9, &v20);
  v14 = mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 12), v12, v13);
  v15 = *(this + 5);
  v20 = v15;
  v21 = v14;
  if (v14)
  {
    v15 = mlir::ValueRange::offset_base(&v20, v14);
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v20 = v15;
  v21 = (HIDWORD(v14) + v14) - v16;
  v17 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::tensor::ExtractOp &,mlir::ValueRange>((a6 + 8), *(a2 + 24), &v19, &v20);
  (*(*a6 + 8))(a6, a2, v17);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::tensor::ExtractOp &,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::ReplaceOp::build(a1, v17, *a3 - 16, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
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

void anonymous namespace::CreateTokenOpPattern::~CreateTokenOpPattern(_anonymous_namespace_::CreateTokenOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateTokenOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::CreateTokenOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void anonymous namespace::WriteHandleOpPattern::~WriteHandleOpPattern(_anonymous_namespace_::WriteHandleOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WriteHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WriteHandleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::WriteHandleOpPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = *(*(a2 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v13);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  v14 = *(a3 + 40);
  v15 = 0;
  v14 = mlir::ValueRange::dereference_iterator(&v14, 0);
  v12 = mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>((a4 + 8), v8, &v14);
  v9 = *(a2 + 24);
  v10 = 1;
  v14 = *(a3 + 40);
  v15 = 1;
  v14 = mlir::ValueRange::offset_base(&v14, 1);
  v15 = 0;
  v14 = mlir::ValueRange::dereference_iterator(&v14, 0);
  mlir::OpBuilder::create<mlir::mps::AssignVariableOp,mlir::mps::VariableFromTensorOp &,mlir::Value>((a4 + 8), v9, &v12, &v14);
  v14 = *(a3 + 40);
  v15 = 2;
  v14 = mlir::ValueRange::offset_base(&v14, 2);
  v15 = 0;
  v14 = mlir::ValueRange::dereference_iterator(&v14, 0);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v14, 1);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::mps::AssignVariableOp,mlir::mps::VariableFromTensorOp &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AssignVariableOp,mlir::OpResult,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::AssignVariableOp::build(a1, v17, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
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

void anonymous namespace::ReadHandleOpPattern::~ReadHandleOpPattern(_anonymous_namespace_::ReadHandleOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReadHandleOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ReadHandleOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::ReadHandleOpPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 16);
  if (v8 && *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id)
  {
    return 0;
  }

  v9 = *(a2 + 24);
  v15 = *(a3 + 40);
  v16 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v13 = mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>((a4 + 8), v9, &v15);
  v14[0] = mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::mps::VariableFromTensorOp &>((a4 + 8), *(a2 + 24), &v13) - 16;
  v10 = *(a3 + 40);
  v11 = 1;
  v15 = v10;
  v16 = 1;
  v15 = mlir::ValueRange::offset_base(&v15, 1);
  v16 = 0;
  v14[1] = mlir::ValueRange::dereference_iterator(&v15, 0);
  mlir::ValueRange::ValueRange(&v15, v14, 2uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v15, v16);
  return v11;
}

void anonymous namespace::WriteHandleWithConstraintsPattern::~WriteHandleWithConstraintsPattern(_anonymous_namespace_::WriteHandleWithConstraintsPattern *this)
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

uint64_t anonymous namespace::WriteHandleWithConstraintsPattern::matchAndRewrite(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17 = *(a2[9] + 56);
  result = mlir::Value::getDefiningOp(&v17);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
    {
      v16 = *(*(result + 72) + 24);
      v7 = **(a2[9] + 24);
      if (!v7)
      {
        return 0;
      }

      while (1)
      {
        v8 = v7[2];
        if (v8)
        {
          if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id)
          {
            break;
          }
        }

        v7 = *v7;
        if (!v7)
        {
          return 0;
        }
      }

      v9 = *(v8 - 16);
      if (!v9)
      {
        return 0;
      }

      while (1)
      {
        v10 = v9[2];
        if (v10)
        {
          if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id)
          {
            break;
          }
        }

        v9 = *v9;
        if (!v9)
        {
          return 0;
        }
      }

      v11 = *(v10 - 16);
      if (!v11)
      {
        return 0;
      }

      while (1)
      {
        v13 = v11[2];
        if (v13)
        {
          if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id)
          {
            break;
          }
        }

        v12 = 0;
        v11 = *v11;
        if (!v11)
        {
          return v12;
        }
      }

      v15 = v13 - 16;
      v14 = result;
      mlir::OpBuilder::create<mlir::mps::AssignVariableOp,mlir::OpResult,mlir::Value &>((a4 + 8), a2[3], &v15, &v16);
      mlir::ConversionPatternRewriter::eraseOp(a4, a2);
      mlir::ConversionPatternRewriter::eraseOp(a4, v14);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void anonymous namespace::CopyDiscardingConstraintsOpPattern::~CopyDiscardingConstraintsOpPattern(_anonymous_namespace_::CopyDiscardingConstraintsOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::CopyDiscardingConstraintsOpPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v76[6] = *MEMORY[0x1E69E9840];
  v60 = *(*(a2 + 72) + 24);
  if (mlir::Value::getDefiningOp(&v60))
  {
    DefiningOp = mlir::Value::getDefiningOp(&v60);
    if (DefiningOp)
    {
      if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + 104);
  v75[0] = v60;
  v59 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>,mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>::operator[](v8, v75);
  if (!v59)
  {
    return 0;
  }

  v58 = v60[1] & 0xFFFFFFFFFFFFFFF8;
  Values = mlir::SparseElementsAttr::getValues(&v59);
  if (Values)
  {
    if (*(*Values + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
      v10 = Values;
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

  v57 = v10;
  RawData = mlir::DenseArrayAttr::getRawData(&v57);
  v14 = v13;
  mlir::ArrayAttr::getValue(&v59);
  v16 = v15;
  Value = mlir::ArrayAttr::getValue(&v59);
  v49 = v18;
  v50 = Value;
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v57, Value, v75);
  v72 = v74;
  v73 = 0x500000000;
  if (v16 < 1)
  {
    mlir::ArrayAttr::getValue(&v58);
    v22 = 0xFFFFFFFFLL;
    v23 = 1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(v75[0] + v20 + 1);
      if (v19 >= HIDWORD(v73))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v19 + 1, 8);
        v19 = v73;
      }

      ++v20;
      v72[v19] = v21;
      v19 = v73 + 1;
      LODWORD(v73) = v73 + 1;
    }

    while (v16 != v20);
    mlir::ArrayAttr::getValue(&v58);
    v22 = 0;
    v23 = 1;
    while (1)
    {
      v24 = RawData[v22];
      v23 *= v24;
      if (v24 >= 2)
      {
        break;
      }

      if (v16 == ++v22)
      {
        v22 = 0xFFFFFFFFLL;
        break;
      }
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf((v60[1] & 0xFFFFFFFFFFFFFFF8));
  v56 = mlir::TypeAttr::get(ElementTypeOrSelf);
  v26 = mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::detail::TypedValue<mlir::TensorType>>((a4 + 8), *(a2 + 24), &v60);
  v55 = v26 - 16;
  v69 = &v71;
  v70 = 0x100000000;
  v51 = v14;
  if (v23 > 1)
  {
    v66 = v68;
    v67 = 0x500000000;
    v27 = v73;
    if (!v73)
    {
      goto LABEL_33;
    }

    if (v73 < 6)
    {
      v29 = v68;
      v28 = v73;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v73, 8);
      v28 = v73;
      if (!v73)
      {
LABEL_32:
        LODWORD(v67) = v27;
LABEL_33:
        v34 = v70;
        if (v70 >= HIDWORD(v70))
        {
          v47 = InterleaveAffineExpr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, &v71, v70 + 1, 8);
          InterleaveAffineExpr = v47;
          v34 = v70;
        }

        v69[v34] = InterleaveAffineExpr;
        LODWORD(v70) = v70 + 1;
        v35 = v66;
        if (v66 == v68)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      v29 = v66;
    }

    memcpy(v29, v72, 8 * v28);
    goto LABEL_32;
  }

  v63 = v65;
  v64 = 0x500000000;
  v30 = v73;
  if (v73)
  {
    if (v73 < 6)
    {
      v32 = v65;
      v31 = v73;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v73, 8);
      v31 = v73;
      if (!v73)
      {
LABEL_39:
        LODWORD(v64) = v30;
        goto LABEL_40;
      }

      v32 = v63;
    }

    memcpy(v32, v72, 8 * v31);
    goto LABEL_39;
  }

LABEL_40:
  v37 = v70;
  if (v70 >= HIDWORD(v70))
  {
    v48 = StridedAffineExpr;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, &v71, v70 + 1, 8);
    StridedAffineExpr = v48;
    v37 = v70;
  }

  v69[v37] = StridedAffineExpr;
  LODWORD(v70) = v70 + 1;
  v35 = v63;
  if (v63 == v65)
  {
    goto LABEL_44;
  }

LABEL_43:
  free(v35);
LABEL_44:
  v38 = v69;
  v39 = v70;
  v61[0] = (v60[1] & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext(v61);
  v41 = mlir::AffineMap::get(v16, 0, v38, v39, Context);
  v54 = *(v26 - 8) & 0xFFFFFFFFFFFFFFF8;
  v42 = mlir::ArrayAttr::getValue(&v54);
  v44 = v43;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v54);
  *(v26 - 8) = *(v26 - 8) & 7 | mlir::MemRefType::get(v42, v44, RHS, v41, 0);
  v46 = *(a2 + 24);
  v53 = 1;
  v52 = 1;
  v62 = mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>((a4 + 8), v46, &v55, v61, &v56, &v62, &v53, &v52) - 16;
  mlir::ValueRange::ValueRange(v61, &v62, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v61[0], v61[1]);
  if (v69 != &v71)
  {
    free(v69);
  }

  if (v72 != v74)
  {
    free(v72);
  }

  if (v75[0] != v76)
  {
    free(v75[0]);
  }

  return 1;
}

mlir::MLIRContext **anonymous namespace::getInterleaveAffineExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, mlir *a5)
{
  v29 = (*(*a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext(&v29);
  AffineDimExpr = mlir::getAffineDimExpr(0, Context, v11);
  if (!a5)
  {
    AffineDimExpr = mlir::AffineExpr::floorDiv(&AffineDimExpr, a3);
  }

  result = mlir::AffineExpr::operator*(&AffineDimExpr, **a4);
  AffineDimExpr = result;
  v13 = a2 - 2;
  if (a2 >= 2)
  {
    v14 = 0;
    v15 = (a2 - 1);
    do
    {
      if (v13 == v14)
      {
        v29 = (*(*a1 + 8) & 0xFFFFFFFFFFFFFFF8);
        v16 = mlir::Attribute::getContext(&v29);
        v29 = mlir::getAffineDimExpr(v15, v16, v17);
        v18 = mlir::AffineExpr::operator*(&v29, (*a4)[v15]);
        v19 = mlir::AffineExpr::operator+(&AffineDimExpr, v18);
        v20 = (*(*a1 + 8) & 0xFFFFFFFFFFFFFFF8);
        AffineDimExpr = v19;
        v29 = v20;
        v21 = mlir::Attribute::getContext(&v29);
        v29 = mlir::getAffineDimExpr(a5, v21, v22);
        v23 = mlir::AffineExpr::operator%(&v29, a3);
      }

      else
      {
        v29 = (*(*a1 + 8) & 0xFFFFFFFFFFFFFFF8);
        v24 = mlir::Attribute::getContext(&v29);
        if ((a5 - 1) == v14)
        {
          v27 = mlir::getAffineDimExpr(a5, v24, v25);
          v29 = mlir::AffineExpr::floorDiv(&v27, a3);
          v26 = (*a4)[a5];
        }

        else
        {
          v29 = mlir::getAffineDimExpr((v14 + 1), v24, v25);
          v26 = (*a4)[v14 + 1];
        }

        v23 = mlir::AffineExpr::operator*(&v29, v26);
      }

      result = mlir::AffineExpr::operator+(&AffineDimExpr, v23);
      AffineDimExpr = result;
      v14 = (v14 + 1);
    }

    while (v15 != v14);
  }

  return result;
}

uint64_t anonymous namespace::getStridedAffineExpr(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v14 = *(*a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  Context = mlir::Attribute::getContext(&v14);
  AffineDimExpr = mlir::getAffineDimExpr(0, Context, v7);
  result = mlir::AffineExpr::operator*(&AffineDimExpr, **a3);
  AffineDimExpr = result;
  if (a2 >= 2)
  {
    v9 = 1;
    do
    {
      v14 = *(*a1 + 8) & 0xFFFFFFFFFFFFFFF8;
      v10 = mlir::Attribute::getContext(&v14);
      v14 = mlir::getAffineDimExpr(v9, v10, v11);
      v12 = mlir::AffineExpr::operator*(&v14, (*a3)[v9]);
      result = mlir::AffineExpr::operator+(&AffineDimExpr, v12);
      AffineDimExpr = result;
      ++v9;
    }

    while (a2 != v9);
  }

  return result;
}

uint64_t anonymous namespace::arrayToU64Attr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19[6] = *MEMORY[0x1E69E9840];
  IntegerType = mlir::Builder::getIntegerType((a1 + 8), 64, 0);
  v7 = operator new(8uLL);
  *v7 = a4;
  v8 = mlir::RankedTensorType::get(v7, 1, IntegerType, 0);
  v17 = v19;
  v18 = 0x600000000;
  for (i = 0; a4; --a4)
  {
    v11 = *a2++;
    v10 = v11;
    if (i >= HIDWORD(v18))
    {
      v12 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, i + 1, 8);
      v8 = v12;
      i = v18;
    }

    *(v17 + i) = v10;
    i = v18 + 1;
    LODWORD(v18) = v18 + 1;
  }

  if (v8)
  {
    v13 = v8;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v8 = v13;
    i = v18;
  }

  else
  {
    v14 = 0;
  }

  v15 = mlir::DenseElementsAttr::getFromRawBuffer(v8, v14, v17, 8 * i, 8, 1, 0);
  if (v17 != v19)
  {
    free(v17);
  }

  operator delete(v7);
  return v15;
}

void anonymous namespace::ReadHandleWithConstraintsPattern::~ReadHandleWithConstraintsPattern(_anonymous_namespace_::ReadHandleWithConstraintsPattern *this)
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

uint64_t anonymous namespace::ReadHandleWithConstraintsPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, mlir::UnknownLoc **a4)
{
  v82[6] = *MEMORY[0x1E69E9840];
  v66 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  v7 = *(*(result + 48) + 16);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
  {
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
  {
    return 0;
  }

  v9 = *(*(result + 72) + 24);
  v10 = (*(v66 + 8) & 0xFFFFFFFFFFFFFFF8) == 0;
  v64 = *(v66 + 8) & 0xFFFFFFFFFFFFFFF8;
  v65 = v9;
  if (v10)
  {
    return 0;
  }

  v11 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v11 = 0;
  }

  v63 = v11;
  Values = mlir::SparseElementsAttr::getValues(&v64);
  if (Values)
  {
    if (*(*Values + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
      v13 = Values;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v62 = v13;
  RawData = mlir::DenseArrayAttr::getRawData(&v62);
  v55 = v15;
  mlir::ArrayAttr::getValue(&v64);
  v17 = v16;
  Value = mlir::ArrayAttr::getValue(&v64);
  v53 = v19;
  v54 = Value;
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v62, Value, &v81);
  v78 = v80;
  v79 = 0x500000000;
  if (v17 < 1)
  {
    mlir::ArrayAttr::getValue(&v63);
    v23 = 0xFFFFFFFFLL;
    v24 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = v81[v21 + 1];
      if (v20 >= HIDWORD(v79))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v20 + 1, 8);
        v20 = v79;
      }

      ++v21;
      v78[v20] = v22;
      v20 = v79 + 1;
      LODWORD(v79) = v79 + 1;
    }

    while (v17 != v21);
    mlir::ArrayAttr::getValue(&v63);
    v23 = 0;
    v24 = 1;
    while (1)
    {
      v25 = RawData[v23];
      v24 *= v25;
      if (v25 >= 2)
      {
        break;
      }

      if (v17 == ++v23)
      {
        v23 = 0xFFFFFFFFLL;
        break;
      }
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v9 + 8) & 0xFFFFFFFFFFFFFFF8));
  v61 = mlir::TypeAttr::get(ElementTypeOrSelf);
  v27 = mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::detail::TypedValue<mlir::TensorType>>(a4 + 1, *(a2 + 24), &v65);
  v60 = v27 - 16;
  v75 = &v77;
  v76 = 0x100000000;
  if (v24 > 1)
  {
    v52 = v8;
    v72 = v74;
    v73 = 0x500000000;
    v28 = v79;
    if (!v79)
    {
      goto LABEL_37;
    }

    if (v79 < 6)
    {
      v30 = v74;
      v29 = v79;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v79, 8);
      v29 = v79;
      if (!v79)
      {
LABEL_36:
        LODWORD(v73) = v28;
LABEL_37:
        v35 = v76;
        if (v76 >= HIDWORD(v76))
        {
          v50 = InterleaveAffineExpr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, &v77, v76 + 1, 8);
          InterleaveAffineExpr = v50;
          v35 = v76;
        }

        v75[v35] = InterleaveAffineExpr;
        LODWORD(v76) = v76 + 1;
        v36 = v72;
        v8 = v52;
        if (v72 == v74)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v30 = v72;
    }

    memcpy(v30, v78, 8 * v29);
    goto LABEL_36;
  }

  v69 = v71;
  v70 = 0x500000000;
  v31 = v79;
  if (v79)
  {
    if (v79 < 6)
    {
      v33 = v71;
      v32 = v79;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v71, v79, 8);
      v32 = v79;
      if (!v79)
      {
LABEL_43:
        LODWORD(v70) = v31;
        goto LABEL_44;
      }

      v33 = v69;
    }

    memcpy(v33, v78, 8 * v32);
    goto LABEL_43;
  }

LABEL_44:
  v38 = v76;
  if (v76 >= HIDWORD(v76))
  {
    v51 = StridedAffineExpr;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, &v77, v76 + 1, 8);
    StridedAffineExpr = v51;
    v38 = v76;
  }

  v75[v38] = StridedAffineExpr;
  LODWORD(v76) = v76 + 1;
  v36 = v69;
  if (v69 == v71)
  {
    goto LABEL_48;
  }

LABEL_47:
  free(v36);
LABEL_48:
  v39 = v75;
  v40 = v76;
  v68[0] = (*(v65 + 8) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext(v68);
  v42 = mlir::AffineMap::get(v17, 0, v39, v40, Context);
  v59 = *(v27 - 8) & 0xFFFFFFFFFFFFFFF8;
  v43 = mlir::ArrayAttr::getValue(&v59);
  v45 = v44;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v59);
  *(v27 - 8) = *(v27 - 8) & 7 | mlir::MemRefType::get(v43, v45, RHS, v42, 0);
  v47 = *(a2 + 24);
  LOBYTE(v67) = 1;
  v56 = 1;
  v58 = mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>(a4 + 1, v47, &v60, v68, &v61, &v57, &v67, &v56) - 16;
  v48 = mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>((a4 + 1), *(a2 + 24), &v58);
  v57 = v48 - 16;
  v49 = *(a2 + 24);
  v68[0] = (*(v48 - 8) & 0xFFFFFFFFFFFFFFF8);
  v67 = mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::Type,mlir::Value &>((a4 + 1), v49, v68, &v57) - 16;
  mlir::ValueRange::ValueRange(v68, &v67, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v68[0], v68[1]);
  mlir::ConversionPatternRewriter::eraseOp(a4, v8);
  if (v75 != &v77)
  {
    free(v75);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  if (v81 != v82)
  {
    free(v81);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::Type,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReadVariableOp,mlir::detail::TypedValue<mlir::TensorType> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id)
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

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_117lowerCompositeOpsENS1_8ModuleOpEE3__0NS1_4ODIE8Compiler6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(int a1, mlir::Operation *this)
{
  if (this && *(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    if (!*(this + 47) || (v82.var0 = "composite_op", v82.var1 = 12, InherentAttr = mlir::Operation::getInherentAttr(this, v82), (v4 & 1) == 0))
    {
      v83.var0 = "composite_op";
      v83.var1 = 12;
      InherentAttr = mlir::DictionaryAttr::get((this + 56), v83);
    }

    if (InherentAttr)
    {
      if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v5 = InherentAttr;
      }

      else
      {
        v5 = 0;
      }

      v76 = v5;
      AttrData = mlir::OpaqueAttr::getAttrData(&v76);
      if (v7 == 11 && (*AttrData == 0x4E534D525F4D4641 ? (v8 = *(AttrData + 3) == 0x6D726F4E534D525FLL) : (v8 = 0), v8))
      {
        Context = mlir::Attribute::getContext((this + 24));
        v39 = *(this + 10);
        v38 = *(this + 11);
        v76 = Context;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v40 = *(((this + 16 * ((v38 >> 23) & 1) + ((v38 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v39 + 8);
        if (v40)
        {
          v41 = (v40 - 8);
        }

        else
        {
          v41 = 0;
        }

        Terminator = mlir::Block::getTerminator(v41, v37);
        if (*(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
        {
          v43 = Terminator;
        }

        else
        {
          v43 = 0;
        }

        if ((*(v43 + 46) & 0x80) != 0)
        {
          v44 = *(v43 + 68);
          if (v44)
          {
            v45 = (*(v43 + 72) + 24);
            do
            {
              v75 = *v45;
              DefiningOp = mlir::Value::getDefiningOp(&v75);
              if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
              {
                v57 = DefiningOp;
              }

              else
              {
                v57 = 0;
              }

              v80 = *(*(v57 + 72) + 24);
              v58 = mlir::Value::getDefiningOp(&v80);
              if (v58)
              {
                if (*(*(v58 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
                {
                  v59 = v58;
                }

                else
                {
                  v59 = 0;
                }
              }

              else
              {
                v59 = 0;
              }

              v80 = *(*(v59 + 72) + 56);
              v60 = mlir::Value::getDefiningOp(&v80);
              if (*(*(v60 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
              {
                v61 = v60;
              }

              else
              {
                v61 = 0;
              }

              v80 = *(*(v61 + 72) + 24);
              v62 = mlir::Value::getDefiningOp(&v80);
              if (*(*(v62 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SqrtOp,void>::id)
              {
                v63 = v62;
              }

              else
              {
                v63 = 0;
              }

              v80 = *(*(v63 + 72) + 24);
              v64 = mlir::Value::getDefiningOp(&v80);
              if (v64)
              {
                if (*(*(v64 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
                {
                  v65 = v64;
                }

                else
                {
                  v65 = 0;
                }
              }

              else
              {
                v65 = 0;
              }

              v80 = *(*(v65 + 72) + 24);
              v66 = mlir::Value::getDefiningOp(&v80);
              if (v66)
              {
                if (*(*(v66 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id)
                {
                  v46 = v66;
                }

                else
                {
                  v46 = 0;
                }
              }

              else
              {
                v46 = 0;
              }

              v80 = *(*(v46 + 72) + 24);
              v47 = mlir::Value::getDefiningOp(&v80);
              if (*(*(v47 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
              {
                v49 = v47;
              }

              else
              {
                v49 = 0;
              }

              v50 = *(*(v49 + 72) + 24);
              v73 = *(*(v65 + 72) + 56);
              v74 = v50;
              v72 = *(*(v46 + 72) + 56);
              v51 = *(v59 + 16);
              v52 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v59, v48) + 8);
              v78 = v51;
              v79 = v52;
              v53 = mlir::OpBuilder::create<mlir::mps_spi::RMSNormOp,mlir::Value &,mlir::Value &,mlir::Value &>(&v76, *(v59 + 24), &v74, &v73, &v72);
              v54 = *(v59 + 36);
              v55 = v59 - 16;
              if (!v54)
              {
                v55 = 0;
              }

              v80 = v55;
              v81 = v54;
              mlir::ResultRange::replaceAllUsesWith(&v80, v53);
              v45 += 4;
              --v44;
            }

            while (v44);
          }
        }
      }

      else
      {
        v76 = v5;
        v9 = mlir::OpaqueAttr::getAttrData(&v76);
        if (v10 == 4 && *v9 == 1634755699)
        {
          v11 = mlir::Attribute::getContext((this + 24));
          v14 = *(this + 10);
          v13 = *(this + 11);
          v76 = v11;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v15 = *(((this + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v14 + 8);
          if (v15)
          {
            v16 = (v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = mlir::Block::getTerminator(v16, v12);
          if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }

          v75 = v18;
          ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v75, 0);
          v80 = *(*(v75 + 72) + 32 * ODSOperandIndexAndLength + 24);
          v20 = mlir::Value::getDefiningOp(&v80);
          v22 = *(((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
          if (v22)
          {
            v23 = v22 - 8;
          }

          else
          {
            v23 = 0;
          }

          v24 = *(v23 + 48);
          v25 = *v24;
          v73 = v24[1];
          v74 = v25;
          v26 = v24[2];
          v71 = v24[3];
          v72 = v26;
          v27 = *(v25 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
          {
            v27 = 0;
          }

          v70 = v27;
          if (v27)
          {
            v28 = *(v20 + 16);
            v29 = v20;
            v30 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v20, v21) + 8);
            v78 = v28;
            v79 = v30;
            v31 = *(this + 3);
            mlir::ArrayAttr::getValue(&v70);
            v69 = *(mlir::ArrayAttr::getValue(&v70) + 8 * (v32 - 1));
            v68 = mlir::OpBuilder::create<mlir::mps::ConstantOp,float>(&v76, v31, &v69);
            v67 = mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::mps::AddOp &>(&v76, v31, &v68);
            v33 = mlir::OpBuilder::create<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::BlockArgument &,mlir::BlockArgument &,mlir::BlockArgument &,mlir::BlockArgument &,mlir::mps::ReciprocalSquareRootOp &>(&v76, v31, &v74, &v73, &v72, &v71, &v67);
            v34 = *(v29 + 36);
            v35 = v29 - 16;
            if (!v34)
            {
              v35 = 0;
            }

            v80 = v35;
            v81 = v34;
            mlir::ResultRange::replaceAllUsesWith(&v80, v33);
          }
        }
      }
    }
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::BlockArgument &,mlir::BlockArgument &,mlir::BlockArgument &,mlir::BlockArgument &,mlir::mps::ReciprocalSquareRootOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7)
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
  mlir::mps_spi::ScaledDotProductAttentionOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7 - 16);
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

void anonymous namespace::CopyWithConstraintsOpPattern::~CopyWithConstraintsOpPattern(_anonymous_namespace_::CopyWithConstraintsOpPattern *this)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t anonymous namespace::CopyWithConstraintsOpPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v74[6] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = *(*(a2 + 72) + 24);
  v58 = v9;
  v10 = *(a1 + 104);
  v73[0] = NextResultAtOffset;
  v57 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>,mlir::Value,mlir::RankedTensorType,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::RankedTensorType>>::operator[](v10, v73);
  if (!v57)
  {
    return 0;
  }

  v56 = NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8;
  Values = mlir::SparseElementsAttr::getValues(&v57);
  if (Values)
  {
    if (*(*Values + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
      v12 = Values;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v55 = v12;
  RawData = mlir::DenseArrayAttr::getRawData(&v55);
  v51 = v15;
  mlir::ArrayAttr::getValue(&v57);
  v17 = v16;
  Value = mlir::ArrayAttr::getValue(&v57);
  v20 = v19;
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v55, Value, v73);
  __src = v72;
  v71 = 0x500000000;
  if (v17 < 1)
  {
    mlir::ArrayAttr::getValue(&v56);
    v24 = 0xFFFFFFFFLL;
    v25 = 1;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(v73[0] + v22 + 1);
      if (v21 >= HIDWORD(v71))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v72, v21 + 1, 8);
        v21 = v71;
      }

      ++v22;
      *(__src + v21) = v23;
      v21 = v71 + 1;
      LODWORD(v71) = v71 + 1;
    }

    while (v17 != v22);
    mlir::ArrayAttr::getValue(&v56);
    v24 = 0;
    v25 = 1;
    while (1)
    {
      v26 = RawData[v24];
      v25 *= v26;
      if (v26 >= 2)
      {
        break;
      }

      if (v17 == ++v24)
      {
        v24 = 0xFFFFFFFFLL;
        break;
      }
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v9 + 8) & 0xFFFFFFFFFFFFFFF8));
  v54 = mlir::TypeAttr::get(ElementTypeOrSelf);
  v28 = *(a2 + 24);
  LOBYTE(v52) = 1;
  LOBYTE(v59) = 1;
  v29 = mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::Value,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>((a4 + 8), v28, &v58, &v67, &v54, v60, &v52, &v59);
  v53 = v29 - 16;
  v67 = &v69;
  v68 = 0x100000000;
  if (v25 > 1)
  {
    v64 = v66;
    v65 = 0x500000000;
    v30 = v71;
    if (!v71)
    {
      goto LABEL_33;
    }

    if (v71 < 6)
    {
      v32 = v66;
      v31 = v71;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v71, 8);
      v31 = v71;
      if (!v71)
      {
LABEL_32:
        LODWORD(v65) = v30;
LABEL_33:
        v37 = v68;
        if (v68 >= HIDWORD(v68))
        {
          v49 = InterleaveAffineExpr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, &v69, v68 + 1, 8);
          InterleaveAffineExpr = v49;
          v37 = v68;
        }

        *(v67 + v37) = InterleaveAffineExpr;
        LODWORD(v68) = v68 + 1;
        v38 = v64;
        if (v64 == v66)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      v32 = v64;
    }

    memcpy(v32, __src, 8 * v31);
    goto LABEL_32;
  }

  v61 = v63;
  v62 = 0x500000000;
  v33 = v71;
  if (v71)
  {
    if (v71 < 6)
    {
      v35 = v63;
      v34 = v71;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v71, 8);
      v34 = v71;
      if (!v71)
      {
LABEL_39:
        LODWORD(v62) = v33;
        goto LABEL_40;
      }

      v35 = v61;
    }

    memcpy(v35, __src, 8 * v34);
    goto LABEL_39;
  }

LABEL_40:
  v40 = v68;
  if (v68 >= HIDWORD(v68))
  {
    v50 = StridedAffineExpr;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, &v69, v68 + 1, 8);
    StridedAffineExpr = v50;
    v40 = v68;
  }

  *(v67 + v40) = StridedAffineExpr;
  LODWORD(v68) = v68 + 1;
  v38 = v61;
  if (v61 == v63)
  {
    goto LABEL_44;
  }

LABEL_43:
  free(v38);
LABEL_44:
  v41 = v67;
  v42 = v68;
  v60[0] = (*(v58 + 8) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext(v60);
  v44 = mlir::AffineMap::get(v17, 0, v41, v42, Context);
  v52 = *(v29 - 8) & 0xFFFFFFFFFFFFFFF8;
  v45 = mlir::ArrayAttr::getValue(&v52);
  v47 = v46;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v52);
  *(v29 - 8) = *(v29 - 8) & 7 | mlir::MemRefType::get(v45, v47, RHS, v44, 0);
  v59 = mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &>((a4 + 8), *(a2 + 24), &v53) - 16;
  mlir::ValueRange::ValueRange(v60, &v59, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v60[0], v60[1]);
  if (v67 != &v69)
  {
    free(v67);
  }

  if (__src != v72)
  {
    free(__src);
  }

  if (v73[0] != v74)
  {
    free(v73[0]);
  }

  return 1;
}

void anonymous namespace::WriteHandleWithConstraintsWithNoReadPattern::~WriteHandleWithConstraintsWithNoReadPattern(_anonymous_namespace_::WriteHandleWithConstraintsWithNoReadPattern *this)
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

uint64_t anonymous namespace::WriteHandleWithConstraintsWithNoReadPattern::matchAndRewrite(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::UnknownLoc **a4)
{
  v81[6] = *MEMORY[0x1E69E9840];
  v66 = *(a2[9] + 56);
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
    return 0;
  }

  v7 = *(*(result + 72) + 24);
  v8 = *(a2[9] + 24);
  v64 = v8;
  v65 = v7;
  v9 = *(v66 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = 0;
  }

  v63 = v9;
  if (!v9)
  {
    return 0;
  }

  v53 = result;
  if (*(*(*(v8 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = *(v8 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = 0;
  }

  v62 = v10;
  Values = mlir::SparseElementsAttr::getValues(&v63);
  if (Values)
  {
    if (*(*Values + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
      v12 = Values;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v61 = v12;
  RawData = mlir::DenseArrayAttr::getRawData(&v61);
  v15 = v14;
  mlir::ArrayAttr::getValue(&v63);
  v17 = v16;
  Value = mlir::ArrayAttr::getValue(&v63);
  v50 = v19;
  v51 = Value;
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v61, Value, &v80);
  v77 = v79;
  v78 = 0x500000000;
  if (v17 < 1)
  {
    mlir::ArrayAttr::getValue(&v62);
    v23 = 0xFFFFFFFFLL;
    v24 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = v80[v21 + 1];
      if (v20 >= HIDWORD(v78))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, v20 + 1, 8);
        v20 = v78;
      }

      ++v21;
      v77[v20] = v22;
      v20 = v78 + 1;
      LODWORD(v78) = v78 + 1;
    }

    while (v17 != v21);
    mlir::ArrayAttr::getValue(&v62);
    v23 = 0;
    v24 = 1;
    while (1)
    {
      v25 = RawData[v23];
      v24 *= v25;
      if (v25 >= 2)
      {
        break;
      }

      if (v17 == ++v23)
      {
        v23 = 0xFFFFFFFFLL;
        break;
      }
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v8 + 8) & 0xFFFFFFFFFFFFFFF8));
  v60 = mlir::TypeAttr::get(ElementTypeOrSelf);
  v27 = mlir::OpBuilder::create<mlir::mpsx::TensorToBufferOp,mlir::detail::TypedValue<mlir::TensorType>>(a4 + 1, a2[3], &v64);
  v59 = v27 - 16;
  v74 = &v76;
  v75 = 0x100000000;
  v52 = v15;
  if (v24 > 1)
  {
    v71 = v73;
    v72 = 0x500000000;
    v28 = v78;
    if (!v78)
    {
      goto LABEL_37;
    }

    if (v78 < 6)
    {
      v30 = v73;
      v29 = v78;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v78, 8);
      v29 = v78;
      if (!v78)
      {
LABEL_36:
        LODWORD(v72) = v28;
LABEL_37:
        v35 = v75;
        if (v75 >= HIDWORD(v75))
        {
          v48 = InterleaveAffineExpr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, &v76, v75 + 1, 8);
          InterleaveAffineExpr = v48;
          v35 = v75;
        }

        v74[v35] = InterleaveAffineExpr;
        LODWORD(v75) = v75 + 1;
        v36 = v71;
        if (v71 == v73)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v30 = v71;
    }

    memcpy(v30, v77, 8 * v29);
    goto LABEL_36;
  }

  v68 = v70;
  v69 = 0x500000000;
  v31 = v78;
  if (v78)
  {
    if (v78 < 6)
    {
      v33 = v70;
      v32 = v78;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v78, 8);
      v32 = v78;
      if (!v78)
      {
LABEL_43:
        LODWORD(v69) = v31;
        goto LABEL_44;
      }

      v33 = v68;
    }

    memcpy(v33, v77, 8 * v32);
    goto LABEL_43;
  }

LABEL_44:
  v38 = v75;
  if (v75 >= HIDWORD(v75))
  {
    v49 = StridedAffineExpr;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, &v76, v75 + 1, 8);
    StridedAffineExpr = v49;
    v38 = v75;
  }

  v74[v38] = StridedAffineExpr;
  LODWORD(v75) = v75 + 1;
  v36 = v68;
  if (v68 == v70)
  {
    goto LABEL_48;
  }

LABEL_47:
  free(v36);
LABEL_48:
  v39 = v74;
  v40 = v75;
  v67 = *(v64 + 8) & 0xFFFFFFFFFFFFFFF8;
  Context = mlir::Attribute::getContext(&v67);
  v42 = mlir::AffineMap::get(v17, 0, v39, v40, Context);
  v67 = *(v27 - 8) & 0xFFFFFFFFFFFFFFF8;
  v43 = mlir::ArrayAttr::getValue(&v67);
  v45 = v44;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v67);
  *(v27 - 8) = *(v27 - 8) & 7 | mlir::MemRefType::get(v43, v45, RHS, v42, 0);
  v47 = a2[3];
  v55 = 1;
  v54 = 1;
  v58 = mlir::OpBuilder::create<mlir::mpsx::BufferToTensorOp,mlir::Value &,mlir::DenseIntElementsAttr,mlir::TypeAttr,mlir::DenseIntElementsAttr,BOOL,BOOL>(a4 + 1, v47, &v59, &v57, &v60, &v56, &v55, &v54) - 16;
  v57 = mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>((a4 + 1), a2[3], &v58) - 16;
  mlir::OpBuilder::create<mlir::mps::AssignVariableOp,mlir::OpResult,mlir::Value &>((a4 + 1), a2[3], &v57, &v65);
  mlir::ConversionPatternRewriter::eraseOp(a4, a2);
  mlir::ConversionPatternRewriter::eraseOp(a4, v53);
  if (v74 != &v76)
  {
    free(v74);
  }

  if (v77 != v79)
  {
    free(v77);
  }

  if (v80 != v81)
  {
    free(v80);
  }

  return 1;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_111CoreMLToMPS14runOnOperationEvEUlNS1_4func6FuncOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *a1, uint64_t a2)
{
  v24[6] = *MEMORY[0x1E69E9840];
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v2 = *a1;
    v19 = a2;
    ParentOp = *(a2 + 16);
    if (ParentOp)
    {
      v4 = a2;
      ParentOp = mlir::Block::getParentOp(ParentOp);
      a2 = v4;
    }

    if (ParentOp == **v2)
    {
      ArgumentTypes = mlir::Region::getArgumentTypes((((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)));
      v7 = v6;
      FunctionType = mlir::func::FuncOp::getFunctionType(&v19);
      Results = mlir::FunctionType::getResults(&FunctionType);
      FunctionType = v24;
      v23 = 0x600000000;
      if (ArgumentTypes != v7)
      {
        v10 = ArgumentTypes;
        while (*(*(*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
        {
          v10 += 8;
          if (v10 == v7)
          {
            return;
          }
        }

        if (v10 != v7)
        {
          v11 = v9;
          v12 = Results;
          v13 = 0;
          do
          {
            v14 = *(*ArgumentTypes + 8) & 0xFFFFFFFFFFFFFFF8;
            if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
            {
              if (v13 >= HIDWORD(v23))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&FunctionType, v24, v13 + 1, 8);
                v13 = v23;
              }

              *(FunctionType + v13) = v14;
              v13 = v23 + 1;
              LODWORD(v23) = v23 + 1;
            }

            ArgumentTypes += 8;
          }

          while (ArgumentTypes != v7);
          v15 = *(v2 + 8);
          mlir::ValueRange::ValueRange(v21, FunctionType, v13);
          mlir::ValueRange::ValueRange(v20, v12, v11);
          v16 = mlir::FunctionType::get(v15, v21[0], v21[1], v20[0], v20[1]);
          mlir::func::FuncOp::setFunctionType(&v19, v16);
          v17 = *(((v19 + 16 * ((*(v19 + 44) >> 23) & 1) + ((*(v19 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v19 + 40) + 8);
          if (v17)
          {
            v18 = v17 - 8;
          }

          else
          {
            v18 = 0;
          }

          if (FunctionType != v24)
          {
            free(FunctionType);
          }
        }
      }
    }
  }
}

uint64_t *mlir::ODIE::Compiler::CoreML::CoreMLDialect::initialize(int32x2_t *this)
{
  mlir::Dialect::addOperations<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ODIE::Compiler::CoreML::AllOp,mlir::ODIE::Compiler::CoreML::AndOp,mlir::ODIE::Compiler::CoreML::AnyOp,mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::ODIE::Compiler::CoreML::CallOp,mlir::ODIE::Compiler::CoreML::CastOp,mlir::ODIE::Compiler::CoreML::ClassOp,mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::ODIE::Compiler::CoreML::ConditionOp,mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ODIE::Compiler::CoreML::Conv2dOp,mlir::ODIE::Compiler::CoreML::CosOp,mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ODIE::Compiler::CoreML::CreateTokenOp,mlir::ODIE::Compiler::CoreML::DelegateOp,mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ODIE::Compiler::CoreML::EqualOp,mlir::ODIE::Compiler::CoreML::ErrorOp,mlir::ODIE::Compiler::CoreML::ExpOp,mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::ODIE::Compiler::CoreML::FillOp,mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::ODIE::Compiler::CoreML::FuncOp,mlir::ODIE::Compiler::CoreML::GELUOp,mlir::ODIE::Compiler::CoreML::GatherNdOp,mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::ODIE::Compiler::CoreML::IfOp,mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ODIE::Compiler::CoreML::ImportOp,mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::ODIE::Compiler::CoreML::JoinTokenOp,mlir::ODIE::Compiler::CoreML::LogOp,mlir::ODIE::Compiler::CoreML::MaxPool2dOp,mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::ODIE::Compiler::CoreML::MemberOp,mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::ODIE::Compiler::CoreML::ModuleOp,mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::ODIE::Compiler::CoreML::MulOp,mlir::ODIE::Compiler::CoreML::NonZeroOp,mlir::ODIE::Compiler::CoreML::NotEqualOp,mlir::ODIE::Compiler::CoreML::NotOp,mlir::ODIE::Compiler::CoreML::OrOp,mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ODIE::Compiler::CoreML::PlaceholderOp,mlir::ODIE::Compiler::CoreML::PowOp,mlir::ODIE::Compiler::CoreML::RangeOp,mlir::ODIE::Compiler::CoreML::ReLUOp,mlir::ODIE::Compiler::CoreML::ReadHandleOp,mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ODIE::Compiler::CoreML::ReduceMaxOp,mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::ODIE::Compiler::CoreML::ReduceSumOp,mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::ODIE::Compiler::CoreML::ReturnOp,mlir::ODIE::Compiler::CoreML::RsqrtOp,mlir::ODIE::Compiler::CoreML::ScatterNdOp,mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::ODIE::Compiler::CoreML::SigmoidOp,mlir::ODIE::Compiler::CoreML::SiluOp,mlir::ODIE::Compiler::CoreML::SinOp,mlir::ODIE::Compiler::CoreML::SliceOp,mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::ODIE::Compiler::CoreML::SoftmaxOp,mlir::ODIE::Compiler::CoreML::SplitOp,mlir::ODIE::Compiler::CoreML::SqrtOp,mlir::ODIE::Compiler::CoreML::StackOp,mlir::ODIE::Compiler::CoreML::SubOp,mlir::ODIE::Compiler::CoreML::TanhOp,mlir::ODIE::Compiler::CoreML::TileOp,mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::ODIE::Compiler::CoreML::WhereOp,mlir::ODIE::Compiler::CoreML::WhileOp,mlir::ODIE::Compiler::CoreML::WriteHandleOp,mlir::ODIE::Compiler::CoreML::YieldOp>(this);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::TransformCastOp>(this);
  mlir::Dialect::addInterfaces<mlir::ODIE::Compiler::CoreML::CoreInlinerInterface,mlir::ODIE::Compiler::CoreML::CoreMLBytecodeInterface>(this);
  mlir::Dialect::addAttributes<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,mlir::ODIE::Compiler::CoreML::ExternAttr,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::ODIE::Compiler::CoreML::ParamDeclAttr,mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,mlir::ODIE::Compiler::CoreML::ParamRefAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamConstantAttr,mlir::ODIE::Compiler::CoreML::IntentAttr,mlir::ODIE::Compiler::CoreML::TargetSpecAttr,mlir::ODIE::Compiler::CoreML::ApproximateAttr>(this);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::OpaqueType>(this);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::TypeType>(this);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::SymbolType>(this);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::ArrayType>(this);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::ParamRefType>(this);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::SymbolRefType>(this);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::HandleType>(this);
  mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::TokenType>(this);

  return mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::AsyncValueType>(this);
}

mlir::ODIE::Compiler::CoreML::CoreMLDialect *mlir::ODIE::Compiler::CoreML::CoreMLDialect::CoreMLDialect(mlir::ODIE::Compiler::CoreML::CoreMLDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "coreml", 6, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id);
  *v3 = &unk_1F5B38188;
  v3[12] = 3;
  mlir::ODIE::Compiler::CoreML::CoreMLDialect::initialize(v3);
  return this;
}

void sub_1E049F7C0(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 24))(a1, "coreml", 6);
  if (v4)
  {
    v5 = *(result + 8);
    *a2 = &unk_1F5B38220;
    a2[1] = v5;
  }

  else
  {
    *a2 = &unk_1F5B38220;
    a2[1] = 0;
  }

  return result;
}

uint64_t mlir::Dialect::addOperations<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ODIE::Compiler::CoreML::AllOp,mlir::ODIE::Compiler::CoreML::AndOp,mlir::ODIE::Compiler::CoreML::AnyOp,mlir::ODIE::Compiler::CoreML::AvgPool2dOp,mlir::ODIE::Compiler::CoreML::AwaitOp,mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,mlir::ODIE::Compiler::CoreML::BroadcastToOp,mlir::ODIE::Compiler::CoreML::CallOp,mlir::ODIE::Compiler::CoreML::CastOp,mlir::ODIE::Compiler::CoreML::ClassOp,mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::ODIE::Compiler::CoreML::ConditionOp,mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ODIE::Compiler::CoreML::Conv2dOp,mlir::ODIE::Compiler::CoreML::CosOp,mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ODIE::Compiler::CoreML::CreateTokenOp,mlir::ODIE::Compiler::CoreML::DelegateOp,mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ODIE::Compiler::CoreML::EqualOp,mlir::ODIE::Compiler::CoreML::ErrorOp,mlir::ODIE::Compiler::CoreML::ExpOp,mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::ODIE::Compiler::CoreML::FillOp,mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::ODIE::Compiler::CoreML::FuncOp,mlir::ODIE::Compiler::CoreML::GELUOp,mlir::ODIE::Compiler::CoreML::GatherNdOp,mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::ODIE::Compiler::CoreML::IfOp,mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ODIE::Compiler::CoreML::ImportOp,mlir::ODIE::Compiler::CoreML::InvokeOp,mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,mlir::ODIE::Compiler::CoreML::JoinTokenOp,mlir::ODIE::Compiler::CoreML::LogOp,mlir::ODIE::Compiler::CoreML::MaxPool2dOp,mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::ODIE::Compiler::CoreML::MemberOp,mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::ODIE::Compiler::CoreML::ModuleOp,mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::ODIE::Compiler::CoreML::MulOp,mlir::ODIE::Compiler::CoreML::NonZeroOp,mlir::ODIE::Compiler::CoreML::NotEqualOp,mlir::ODIE::Compiler::CoreML::NotOp,mlir::ODIE::Compiler::CoreML::OrOp,mlir::ODIE::Compiler::CoreML::OutputOp,mlir::ODIE::Compiler::CoreML::PlaceholderOp,mlir::ODIE::Compiler::CoreML::PowOp,mlir::ODIE::Compiler::CoreML::RangeOp,mlir::ODIE::Compiler::CoreML::ReLUOp,mlir::ODIE::Compiler::CoreML::ReadHandleOp,mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ODIE::Compiler::CoreML::ReduceMaxOp,mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::ODIE::Compiler::CoreML::ReduceSumOp,mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::ODIE::Compiler::CoreML::ReturnOp,mlir::ODIE::Compiler::CoreML::RsqrtOp,mlir::ODIE::Compiler::CoreML::ScatterNdOp,mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::ODIE::Compiler::CoreML::SigmoidOp,mlir::ODIE::Compiler::CoreML::SiluOp,mlir::ODIE::Compiler::CoreML::SinOp,mlir::ODIE::Compiler::CoreML::SliceOp,mlir::ODIE::Compiler::CoreML::SliceUpdateOp,mlir::ODIE::Compiler::CoreML::SoftmaxOp,mlir::ODIE::Compiler::CoreML::SplitOp,mlir::ODIE::Compiler::CoreML::SqrtOp,mlir::ODIE::Compiler::CoreML::StackOp,mlir::ODIE::Compiler::CoreML::SubOp,mlir::ODIE::Compiler::CoreML::TanhOp,mlir::ODIE::Compiler::CoreML::TileOp,mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::ODIE::Compiler::CoreML::WhereOp,mlir::ODIE::Compiler::CoreML::WhileOp,mlir::ODIE::Compiler::CoreML::WriteHandleOp,mlir::ODIE::Compiler::CoreML::YieldOp>(uint64_t a1)
{
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AddOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AllOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AndOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AnyOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AvgPool2dOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::AwaitOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BatchNormOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CallOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CastOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ClassOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ConditionOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::Conv2dOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CosOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::CreateTokenOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::DelegateOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::DivideOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::EqualOp>(a1);
  v2 = operator new(0x70uLL);
  v8 = mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::ErrorOp>::Model(v2, a1);
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::ErrorOp::getAttributeNames(void)::attrNames, 1);
  v3 = v8;
  v8 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ExpOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::FillOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::FuncOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GELUOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GatherNdOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GetShapeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GraphOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::GreaterOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::IfOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ImportOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::InvokeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::JoinTokenOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::LogOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MaxPool2dOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MaximumOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MemberOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MinimumOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ModuleOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ModuloOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::MulOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::NonZeroOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::NotEqualOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::NotOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::OrOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::OutputOp>(a1);
  v4 = operator new(0x70uLL);
  v8 = mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::PlaceholderOp>::Model(v4, a1);
  mlir::RegisteredOperationName::insert(&v8, &mlir::ODIE::Compiler::CoreML::PlaceholderOp::getAttributeNames(void)::attrNames, 1);
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::PowOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::RangeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReLUOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReadHandleOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::RealPartOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ReturnOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::RsqrtOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ScatterNdOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SelectOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SigmoidOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SiluOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SinOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SliceOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SoftmaxOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SplitOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SqrtOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::StackOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::SubOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::TanhOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::TileOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::TransposeOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::WhereOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::WhileOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::ODIE::Compiler::CoreML::WriteHandleOp>(a1);
  v6 = operator new(0x70uLL);
  v8 = mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::CoreML::YieldOp>::Model(v6, a1);
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::Dialect::addInterfaces<mlir::ODIE::Compiler::CoreML::CoreInlinerInterface,mlir::ODIE::Compiler::CoreML::CoreMLBytecodeInterface>(int32x2_t *a1)
{
  v2 = operator new(0x18uLL);
  {
    v8 = v2;
    mlir::Dialect::addInterfaces<mlir::ODIE::Compiler::CoreML::CoreInlinerInterface,mlir::ODIE::Compiler::CoreML::CoreMLBytecodeInterface>();
    v2 = v8;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v2[1] = a1;
  v2[2] = v3;
  *v2 = &unk_1F5B3CE78;
  v11 = v2;
  mlir::Dialect::addInterface(a1, &v11);
  v4 = operator new(0x18uLL);
  {
    v9 = v4;
    mlir::Dialect::addInterfaces<mlir::ODIE::Compiler::CoreML::CoreInlinerInterface,mlir::ODIE::Compiler::CoreML::CoreMLBytecodeInterface>();
    v4 = v9;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id;
  v4[1] = a1;
  v4[2] = v5;
  *v4 = &unk_1F5B3CF00;
  v10 = v4;
  mlir::Dialect::addInterface(a1, &v10);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t *mlir::Dialect::addAttributes<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,mlir::ODIE::Compiler::CoreML::ExternAttr,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::ODIE::Compiler::CoreML::ParamDeclAttr,mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,mlir::ODIE::Compiler::CoreML::ParamRefAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamConstantAttr,mlir::ODIE::Compiler::CoreML::IntentAttr,mlir::ODIE::Compiler::CoreML::TargetSpecAttr,mlir::ODIE::Compiler::CoreML::ApproximateAttr>(uint64_t a1)
{
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::ExternAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::ParamRefAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::IntentAttr>(a1);
  mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>(a1);

  return mlir::Dialect::addAttribute<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(a1);
}

void *mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a3);
  v23[0] = result;
  v23[1] = v10;
  if (result)
  {
    if (mlir::CallOpInterface::getCallableForCallee(v23) == a4)
    {
      if (a3)
      {
        v11 = *a3;
        {
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        v15 = v13;
        v16 = v14;
        do
        {
          v17 = v16 >> 1;
          v18 = &v15[2 * (v16 >> 1)];
          v20 = *v18;
          v19 = v18 + 2;
          v16 += ~(v16 >> 1);
          if (v20 < v12)
          {
            v15 = v19;
          }

          else
          {
            v16 = v17;
          }
        }

        while (v16);
        if (v15 != &v13[2 * v14] && *v15 == v12)
        {
          v21 = v15[1];
          goto LABEL_19;
        }
      }

LABEL_18:
      v21 = 0;
LABEL_19:
      v22[0] = a3;
      v22[1] = v21;
      return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(a2, a5, &v24, v22);
    }

    return 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v17, *a3, *a4, a4[1]);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
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

void *mlir::ODIE::Compiler::CoreML::createElementsAttr(void (*a1)(std::string *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, size_t a6)
{
  v208 = *MEMORY[0x1E69E9840];
  *&v182 = a3;
  *(&v182 + 1) = a4;
  v197.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(&v182);
  if (mlir::Type::getIntOrFloatBitWidth(&v197) > 7)
  {
    v10 = 0;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v182);
    if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v14) > 255)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v197.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(&v182);
    v10 = mlir::Type::getIntOrFloatBitWidth(&v197) != 1;
    v11 = mlir::CallableOpInterface::getArgAttrsAttr(&v182);
    if (mlir::ShapedType::getNumElements(v11, v12) > 255)
    {
LABEL_8:
      v197.__r_.__value_.__r.__words[0] = mlir::Attribute::getContext(&v182);
      Dialect = mlir::MLIRContext::getOrLoadDialect(v197.__r_.__value_.__l.__data_, "builtin", 7, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::BuiltinDialect * mlir::MLIRContext::getOrLoadDialect<mlir::BuiltinDialect>(void)::{lambda(void)#1}>, &v197);
      v17 = *(mlir::Dialect::getRegisteredInterface<mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>>(Dialect) + 24);
      v18 = llvm::hashing::detail::hash_combine_range_impl<char const>(a5, a5 + a6);
      std::to_string(&v197, v18);
      v19 = std::string::insert(&v197, 0, "resource_");
      v20 = v19->__r_.__value_.__r.__words[2];
      *v180 = *&v19->__r_.__value_.__l.__data_;
      v181 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }

      if (v181 >= 0)
      {
        v21 = v180;
      }

      else
      {
        v21 = v180[0];
      }

      if (v181 >= 0)
      {
        v22 = SHIBYTE(v181);
      }

      else
      {
        v22 = v180[1];
      }

      v23 = mlir::DialectResourceBlobManager::lookup(v17, v21, v22);
      if (v23)
      {
        v24 = v23;
        Context = mlir::Attribute::getContext(&v182);
        LoadedDialect = mlir::MLIRContext::getLoadedDialect(Context, "builtin", 7);
        v28 = *(&v182 + 1);
        v27 = v182;
        {
          v153 = v27;
          v154 = v28;
          mlir::ODIE::Compiler::CoreML::createElementsAttr();
          v28 = v154;
          v27 = v153;
        }

        v197.__r_.__value_.__r.__words[0] = v24;
        v197.__r_.__value_.__l.__size_ = mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id;
        v197.__r_.__value_.__r.__words[2] = LoadedDialect;
        result = mlir::DenseResourceElementsAttr::get(v27, v28, &v197);
        if (!result)
        {
          goto LABEL_246;
        }

        v30 = *result;
        {
          v31 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v32 = *(v30 + 8);
          v33 = *(v30 + 16);
          if (v33)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v155 = result;
          mlir::ODIE::Compiler::CoreML::createElementsAttr();
          result = v155;
          v31 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v32 = *(v30 + 8);
          v33 = *(v30 + 16);
          if (v33)
          {
LABEL_22:
            v34 = v32;
            v35 = v33;
            do
            {
              v36 = v35 >> 1;
              v37 = &v34[2 * (v35 >> 1)];
              v39 = *v37;
              v38 = v37 + 2;
              v35 += ~(v35 >> 1);
              if (v39 < v31)
              {
                v34 = v38;
              }

              else
              {
                v35 = v36;
              }
            }

            while (v35);
          }
        }

LABEL_246:
        if (SHIBYTE(v181) < 0)
        {
          v168 = result;
          operator delete(v180[0]);
          return v168;
        }

        return result;
      }

      v43 = getpagesize();
      if ((v43 & 0x80000000) != 0)
      {
        a1(&v197, a2);
        if (v197.__r_.__value_.__r.__words[0])
        {
          LODWORD(v190) = 3;
          *(&v190 + 1) = "could not get the page size of the current system";
          v191 = 49;
          v76 = &v190;
          v77 = v198;
          if (v199 >= v200)
          {
            if (v198 <= &v190 && v198 + 24 * v199 > &v190)
            {
              v170 = &v190 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v77 = v198;
              v76 = (v198 + v170);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v76 = &v190;
              v77 = v198;
            }
          }

          v78 = &v77[24 * v199];
          v79 = *v76;
          *(v78 + 2) = *(v76 + 2);
          *v78 = v79;
          ++v199;
          LOBYTE(v190) = 0;
          v196 = 0;
          if (v197.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v197);
          }
        }

        else
        {
          LOBYTE(v190) = 0;
          v196 = 0;
        }

        if (v207 == 1)
        {
          if (v206 != &v207)
          {
            free(v206);
          }

          v94 = __p;
          if (__p)
          {
            v95 = v205;
            v96 = __p;
            if (v205 != __p)
            {
              do
              {
                v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
              }

              while (v95 != v94);
              v96 = __p;
            }

            v205 = v94;
            operator delete(v96);
          }

          v89 = v202;
          if (!v202)
          {
            goto LABEL_155;
          }

          v97 = v203;
          v91 = v202;
          if (v203 == v202)
          {
            goto LABEL_154;
          }

          do
          {
            v99 = *--v97;
            v98 = v99;
            *v97 = 0;
            if (v99)
            {
              operator delete[](v98);
            }
          }

          while (v97 != v89);
          goto LABEL_153;
        }
      }

      else
      {
        v44 = v43;
        if (v43 > 7)
        {
          v80 = mmap(0, a6, 3, 4098, 0, 0);
          if (v80 == -1)
          {
            a1(&v197, a2);
            if (v197.__r_.__value_.__r.__words[0])
            {
              LODWORD(v190) = 3;
              *(&v190 + 1) = "failed to mmap ";
              v191 = 15;
              v100 = &v190;
              v101 = v198;
              if (v199 >= v200)
              {
                if (v198 <= &v190 && v198 + 24 * v199 > &v190)
                {
                  v175 = &v190 - v198;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
                  v101 = v198;
                  v100 = (v198 + v175);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
                  v100 = &v190;
                  v101 = v198;
                }
              }

              v102 = &v101[24 * v199];
              v103 = *v100;
              *(v102 + 2) = *(v100 + 2);
              *v102 = v103;
              v104 = ++v199;
              if (v197.__r_.__value_.__r.__words[0])
              {
                LODWORD(v190) = 5;
                *(&v190 + 1) = a6;
                v105 = &v190;
                v106 = v198;
                if (v104 >= v200)
                {
                  if (v198 <= &v190 && v198 + 24 * v104 > &v190)
                  {
                    v178 = &v190 - v198;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v104 + 1, 24);
                    v106 = v198;
                    v105 = (v198 + v178);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v104 + 1, 24);
                    v105 = &v190;
                    v106 = v198;
                  }
                }

                v107 = &v106[24 * v199];
                v108 = *v105;
                *(v107 + 2) = *(v105 + 2);
                *v107 = v108;
                v109 = ++v199;
                if (v197.__r_.__value_.__r.__words[0])
                {
                  LODWORD(v190) = 3;
                  *(&v190 + 1) = " bytes: ";
                  v191 = 8;
                  v110 = &v190;
                  v111 = v198;
                  if (v109 >= v200)
                  {
                    if (v198 <= &v190 && v198 + 24 * v109 > &v190)
                    {
                      v179 = &v190 - v198;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v109 + 1, 24);
                      v111 = v198;
                      v110 = (v198 + v179);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v109 + 1, 24);
                      v110 = &v190;
                      v111 = v198;
                    }
                  }

                  v112 = &v111[24 * v199];
                  v113 = *v110;
                  *(v112 + 2) = *(v110 + 2);
                  *v112 = v113;
                  ++v199;
                }
              }
            }

            v114 = __error();
            v115 = strerror(*v114);
            if (v197.__r_.__value_.__r.__words[0])
            {
              v116 = v115;
              if (v115)
              {
                v117 = strlen(v115);
              }

              else
              {
                v117 = 0;
              }

              LODWORD(v190) = 3;
              *(&v190 + 1) = v116;
              v191 = v117;
              v124 = &v190;
              v125 = v198;
              if (v199 >= v200)
              {
                if (v198 <= &v190 && v198 + 24 * v199 > &v190)
                {
                  v176 = &v190 - v198;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
                  v125 = v198;
                  v124 = (v198 + v176);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
                  v124 = &v190;
                  v125 = v198;
                }
              }

              v126 = &v125[24 * v199];
              v127 = *v124;
              *(v126 + 2) = *(v124 + 2);
              *v126 = v127;
              ++v199;
              LOBYTE(v190) = 0;
              v196 = 0;
              if (v197.__r_.__value_.__r.__words[0])
              {
                mlir::InFlightDiagnostic::report(&v197);
              }
            }

            else
            {
              LOBYTE(v190) = 0;
              v196 = 0;
            }

            if (v207 == 1)
            {
              if (v206 != &v207)
              {
                free(v206);
              }

              v128 = __p;
              if (__p)
              {
                v129 = v205;
                v130 = __p;
                if (v205 != __p)
                {
                  do
                  {
                    v129 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v129 - 1);
                  }

                  while (v129 != v128);
                  v130 = __p;
                }

                v205 = v128;
                operator delete(v130);
              }

              v89 = v202;
              if (!v202)
              {
                goto LABEL_155;
              }

              v131 = v203;
              v91 = v202;
              if (v203 == v202)
              {
                goto LABEL_154;
              }

              do
              {
                v133 = *--v131;
                v132 = v133;
                *v131 = 0;
                if (v133)
                {
                  operator delete[](v132);
                }
              }

              while (v131 != v89);
              goto LABEL_153;
            }
          }

          else
          {
            v81 = v80;
            if (a6)
            {
              memmove(v80, a5, a6);
            }

            if (!mprotect(v81, a6, 1))
            {
              *&v190 = v81;
              *(&v190 + 1) = a6;
              v194 = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<void (*)(void *,unsigned long,unsigned long),void (*)(void *,unsigned long,unsigned long),void>::Callbacks + 2;
              v191 = v44;
              v195 = 0;
              v196 = 1;
              goto LABEL_157;
            }

            a1(&v197, a2);
            if (v197.__r_.__value_.__r.__words[0])
            {
              LODWORD(v190) = 3;
              *(&v190 + 1) = "failed to mprotect the data to read-only";
              v191 = 40;
              v82 = &v190;
              v83 = v198;
              if (v199 >= v200)
              {
                if (v198 <= &v190 && v198 + 24 * v199 > &v190)
                {
                  v174 = &v190 - v198;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
                  v83 = v198;
                  v82 = (v198 + v174);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
                  v82 = &v190;
                  v83 = v198;
                }
              }

              v84 = &v83[24 * v199];
              v85 = *v82;
              *(v84 + 2) = *(v82 + 2);
              *v84 = v85;
              ++v199;
              LOBYTE(v190) = 0;
              v196 = 0;
              if (v197.__r_.__value_.__r.__words[0])
              {
                mlir::InFlightDiagnostic::report(&v197);
              }
            }

            else
            {
              LOBYTE(v190) = 0;
              v196 = 0;
            }

            if (v207 == 1)
            {
              if (v206 != &v207)
              {
                free(v206);
              }

              v118 = __p;
              if (__p)
              {
                v119 = v205;
                v120 = __p;
                if (v205 != __p)
                {
                  do
                  {
                    v119 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v119 - 1);
                  }

                  while (v119 != v118);
                  v120 = __p;
                }

                v205 = v118;
                operator delete(v120);
              }

              v89 = v202;
              if (!v202)
              {
                goto LABEL_155;
              }

              v121 = v203;
              v91 = v202;
              if (v203 == v202)
              {
                goto LABEL_154;
              }

              do
              {
                v123 = *--v121;
                v122 = v123;
                *v121 = 0;
                if (v123)
                {
                  operator delete[](v122);
                }
              }

              while (v121 != v89);
              goto LABEL_153;
            }
          }
        }

        else
        {
          a1(&v197, a2);
          if (!v197.__r_.__value_.__r.__words[0])
          {
            goto LABEL_72;
          }

          LODWORD(v190) = 3;
          *(&v190 + 1) = "align: ";
          v191 = 7;
          v45 = &v190;
          v46 = v198;
          if (v199 >= v200)
          {
            if (v198 <= &v190 && v198 + 24 * v199 > &v190)
            {
              v171 = &v190 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v46 = v198;
              v45 = (v198 + v171);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v45 = &v190;
              v46 = v198;
            }
          }

          v47 = &v46[24 * v199];
          v48 = *v45;
          *(v47 + 2) = *(v45 + 2);
          *v47 = v48;
          v49 = ++v199;
          if (!v197.__r_.__value_.__r.__words[0])
          {
            goto LABEL_72;
          }

          LODWORD(v190) = 5;
          *(&v190 + 1) = 8;
          v50 = &v190;
          v51 = v198;
          if (v49 >= v200)
          {
            if (v198 <= &v190 && v198 + 24 * v49 > &v190)
            {
              v172 = &v190 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v49 + 1, 24);
              v51 = v198;
              v50 = (v198 + v172);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v49 + 1, 24);
              v50 = &v190;
              v51 = v198;
            }
          }

          v52 = &v51[24 * v199];
          v53 = *v50;
          *(v52 + 2) = *(v50 + 2);
          *v52 = v53;
          v54 = ++v199;
          if (!v197.__r_.__value_.__r.__words[0])
          {
            goto LABEL_72;
          }

          LODWORD(v190) = 3;
          *(&v190 + 1) = " was greater than page size: ";
          v191 = 29;
          v55 = &v190;
          v56 = v198;
          if (v54 >= v200)
          {
            if (v198 <= &v190 && v198 + 24 * v54 > &v190)
            {
              v173 = &v190 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v54 + 1, 24);
              v56 = v198;
              v55 = (v198 + v173);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v54 + 1, 24);
              v55 = &v190;
              v56 = v198;
            }
          }

          v57 = &v56[24 * v199];
          v58 = *v55;
          *(v57 + 2) = *(v55 + 2);
          *v57 = v58;
          v59 = ++v199;
          if (v197.__r_.__value_.__r.__words[0])
          {
            LODWORD(v190) = 2;
            *(&v190 + 1) = v44;
            v60 = &v190;
            v61 = v198;
            if (v59 >= v200)
            {
              if (v198 <= &v190 && v198 + 24 * v59 > &v190)
              {
                v177 = &v190 - v198;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v59 + 1, 24);
                v61 = v198;
                v60 = (v198 + v177);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v59 + 1, 24);
                v60 = &v190;
                v61 = v198;
              }
            }

            v62 = &v61[24 * v199];
            v63 = *v60;
            *(v62 + 2) = *(v60 + 2);
            *v62 = v63;
            ++v199;
            LOBYTE(v190) = 0;
            v196 = 0;
            if (v197.__r_.__value_.__r.__words[0])
            {
              mlir::InFlightDiagnostic::report(&v197);
            }
          }

          else
          {
LABEL_72:
            LOBYTE(v190) = 0;
            v196 = 0;
          }

          if (v207 == 1)
          {
            if (v206 != &v207)
            {
              free(v206);
            }

            v86 = __p;
            if (__p)
            {
              v87 = v205;
              v88 = __p;
              if (v205 != __p)
              {
                do
                {
                  v87 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v87 - 1);
                }

                while (v87 != v86);
                v88 = __p;
              }

              v205 = v86;
              operator delete(v88);
            }

            v89 = v202;
            if (!v202)
            {
              goto LABEL_155;
            }

            v90 = v203;
            v91 = v202;
            if (v203 == v202)
            {
LABEL_154:
              v203 = v89;
              operator delete(v91);
LABEL_155:
              if (v198 != v201)
              {
                free(v198);
              }

              goto LABEL_157;
            }

            do
            {
              v93 = *--v90;
              v92 = v93;
              *v90 = 0;
              if (v93)
              {
                operator delete[](v92);
              }
            }

            while (v90 != v89);
LABEL_153:
            v91 = v202;
            goto LABEL_154;
          }
        }
      }

LABEL_157:
      if (v196 != 1)
      {
        v138 = 0;
        result = 0;
        goto LABEL_233;
      }

      v135 = *(&v182 + 1);
      v134 = v182;
      if (v181 >= 0)
      {
        v136 = v180;
      }

      else
      {
        v136 = v180[0];
      }

      if (v181 >= 0)
      {
        v137 = SHIBYTE(v181);
      }

      else
      {
        v137 = v180[1];
      }

      v184 = v190;
      v185 = v191;
      v188 = v194;
      if (v194 >= 8)
      {
        if ((v194 & 2) != 0 && (v194 & 4) != 0)
        {
          v139 = *(&v182 + 1);
          v140 = v182;
          v141 = v136;
          v142 = v137;
          (*((v194 & 0xFFFFFFFFFFFFFFF8) + 8))(&v186, &v192);
          (*((v188 & 0xFFFFFFFFFFFFFFF8) + 16))(&v192);
          v137 = v142;
          v136 = v141;
          v135 = v139;
          v134 = v140;
        }

        else
        {
          v186 = v192;
          v187 = v193;
        }

        v194 = 0;
      }

      v189 = v195;
      result = mlir::DenseResourceElementsAttr::get(v134, v135, v136, v137, &v184);
      if (!result)
      {
        goto LABEL_220;
      }

      v143 = *result;
      {
        v144 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v145 = *(v143 + 8);
        v146 = *(v143 + 16);
        if (!v146)
        {
          goto LABEL_220;
        }
      }

      else
      {
        v156 = result;
        mlir::ODIE::Compiler::CoreML::createElementsAttr();
        result = v156;
        v144 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v145 = *(v143 + 8);
        v146 = *(v143 + 16);
        if (!v146)
        {
          goto LABEL_220;
        }
      }

      v147 = v145;
      v148 = v146;
      do
      {
        v149 = v148 >> 1;
        v150 = &v147[2 * (v148 >> 1)];
        v152 = *v150;
        v151 = v150 + 2;
        v148 += ~(v148 >> 1);
        if (v152 < v144)
        {
          v147 = v151;
        }

        else
        {
          v148 = v149;
        }
      }

      while (v148);
      if (v147 != &v145[2 * v146] && *v147 == v144)
      {
        v138 = v147[1];
        v157 = v188;
        if (v188 >= 8)
        {
          goto LABEL_221;
        }

        goto LABEL_233;
      }

LABEL_220:
      v138 = 0;
      v157 = v188;
      if (v188 >= 8)
      {
LABEL_221:
        v158 = v138;
        v159 = result;
        if ((v157 & 2) != 0)
        {
          v160 = &v186;
        }

        else
        {
          v160 = v186;
        }

        (*(v157 & 0xFFFFFFFFFFFFFFF8))(v160, v184, *(&v184 + 1), v185);
        v161 = v188;
        if (v188 >= 8)
        {
          if ((v188 & 4) != 0)
          {
            if ((v188 & 2) != 0)
            {
              v162 = &v186;
            }

            else
            {
              v162 = v186;
            }

            (*((v188 & 0xFFFFFFFFFFFFFFF8) + 16))(v162);
          }

          if ((v161 & 2) == 0)
          {
            llvm::deallocate_buffer(v186, *(&v186 + 1));
          }
        }

        result = v159;
        v138 = v158;
      }

LABEL_233:
      if (v196 == 1 && v194 >= 8)
      {
        v163 = (v194 & 2) != 0 ? &v192 : v192;
        v164 = result;
        v165 = v138;
        (*(v194 & 0xFFFFFFFFFFFFFFF8))(v163, v190, *(&v190 + 1), v191);
        result = v164;
        v166 = v194;
        if (v194 >= 8)
        {
          if ((v194 & 4) != 0)
          {
            if ((v194 & 2) != 0)
            {
              v167 = &v192;
            }

            else
            {
              v167 = v192;
            }

            (*((v194 & 0xFFFFFFFFFFFFFFF8) + 16))(v167, v165);
            result = v164;
          }

          if ((v166 & 2) == 0)
          {
            llvm::deallocate_buffer(v192, *(&v192 + 1));
          }
        }
      }

      goto LABEL_246;
    }
  }

  if (v10)
  {
    goto LABEL_8;
  }

  *v180 = v182;
  v197.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(v180);
  if (mlir::Type::isInteger(&v197, 1))
  {
    v15 = mlir::DenseElementsAttr::get(v180[0], v180[1], a5, a6);
  }

  else
  {
    v183 = 0;
    if (mlir::DenseElementsAttr::isValidRawBuffer(v180[0], v180[1], a5, a6, &v183))
    {
      v15 = mlir::DenseElementsAttr::getFromRawBuffer(v180[0], v180[1], a5, a6, v40, v41, v42);
    }

    else
    {
      a1(&v197, a2);
      if (v197.__r_.__value_.__r.__words[0])
      {
        LODWORD(v190) = 3;
        *(&v190 + 1) = "invalid raw buffer";
        v191 = 18;
        v64 = &v190;
        v65 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v190 && v198 + 24 * v199 > &v190)
          {
            v169 = &v190 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v65 = v198;
            v64 = (v198 + v169);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v64 = &v190;
            v65 = v198;
          }
        }

        v66 = &v65[24 * v199];
        v67 = *v64;
        *(v66 + 2) = *(v64 + 2);
        *v66 = v67;
        ++v199;
        if (v197.__r_.__value_.__r.__words[0])
        {
          mlir::InFlightDiagnostic::report(&v197);
        }
      }

      if (v207 == 1)
      {
        if (v206 != &v207)
        {
          free(v206);
        }

        v68 = __p;
        if (__p)
        {
          v69 = v205;
          v70 = __p;
          if (v205 != __p)
          {
            do
            {
              v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
            }

            while (v69 != v68);
            v70 = __p;
          }

          v205 = v68;
          operator delete(v70);
        }

        v71 = v202;
        if (v202)
        {
          v72 = v203;
          v73 = v202;
          if (v203 != v202)
          {
            do
            {
              v75 = *--v72;
              v74 = v75;
              *v72 = 0;
              if (v75)
              {
                operator delete[](v74);
              }
            }

            while (v72 != v71);
            v73 = v202;
          }

          v203 = v71;
          operator delete(v73);
        }

        if (v198 != v201)
        {
          free(v198);
        }
      }

      v15 = 0;
    }
  }

  v197.__r_.__value_.__r.__words[0] = v15;
  return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v197);
}

void *mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(mlir::ODIE::Compiler::CoreML::ParamDeclAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v15 = *(*this + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v15);
  (*(*a2 + 72))(a2, AttrData, v7);
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 8250;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ": ", 2uLL);
  }

  (*(*a2 + 32))(a2, *(*this + 16));
  v10 = *(*this + 24);
  if (v10)
  {
    v11 = (*(*a2 + 16))(a2);
    v12 = v11[4];
    if ((v11[3] - v12) > 2)
    {
      *(v12 + 2) = 32;
      *v12 = 15648;
      v11[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v11, " = ", 3uLL);
    }

    (*(*a2 + 48))(a2, v10);
  }

  result = (*(*a2 + 16))(a2);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v14 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  v19 = 0;
  if ((*(*a1 + 152))(a1) & 1) == 0 || (mlir::AsmParser::parseKeywordOrString(a1) & 1) == 0 || ((*(*a1 + 576))(a1, &v19) & 1) == 0 || (v17 = 0, v18 = 0, ((*(*a1 + 144))(a1)) && !mlir::AsmParser::parseAttribute<mlir::TypedAttr>(a1, &v17, v19) || ((*(*a1 + 168))(a1) & 1) == 0)
  {
    result = 0;
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v2 = v17;
  v3 = (*(*a1 + 32))(a1);
  if (!v2)
  {
    v16 = 260;
    v15[0] = __p;
    StringAttr = mlir::Builder::getStringAttr(v3, v15);
    v22 = v19;
    Context = mlir::Attribute::getContext(&v22);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v23[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
    v23[1] = Context;
    v29[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrERNS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
    v29[1] = v23;
    v26 = StringAttr;
    v27 = v22;
    v28 = 0;
    v9 = (v27 >> 4) ^ (v27 >> 9);
    v10 = 0xB492B66FBE98F273 * ((StringAttr >> 4) ^ (StringAttr >> 9));
    v11 = __ROR8__(v10 - v9, 43) - 0x3C5A37A36834CED9 * v9 - 0x4AA9CCC802B940A1;
    v12 = v10 + __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA731BLL;
    v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v12)));
    v24[0] = &v26;
    v24[1] = v29;
    v25 = &v26;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v24);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_13:
    v14 = result;
    operator delete(__p[0]);
    return v14;
  }

  v16 = 260;
  v15[0] = __p;
  v4 = mlir::Builder::getStringAttr(v3, v15);
  result = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(v4, v17, v18);
  if (SHIBYTE(v21) < 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t mlir::AsmParser::parseKeywordOrString(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 432))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 40))(a1);
  v19 = 257;
  (*(*a1 + 24))(v23, a1, v3, v18);
  if (v23[0])
  {
    v20 = 3;
    v21 = "expected valid keyword or string";
    v22 = 32;
    v4 = &v20;
    v5 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v17 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v5 = v24;
        v4 = (v24 + v17);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v4 = &v20;
        v5 = v24;
      }
    }

    v6 = &v5[24 * v25];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v25;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v31;
      v10 = __p;
      if (v31 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v31 = v8;
      operator delete(v10);
    }

    v11 = v28;
    if (v28)
    {
      v12 = v29;
      v13 = v28;
      if (v29 != v28)
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
        v13 = v28;
      }

      v29 = v11;
      operator delete(v13);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return v2;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamDeclAttr::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a2;
  v14[1] = a3;
  Context = mlir::Attribute::getContext(v14);
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v14);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v15[1] = Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrENS1_4TypeERNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v19[1] = v15;
  v18[0] = a1;
  v18[1] = CallableForCallee;
  v18[2] = v14[0];
  v7 = (CallableForCallee >> 4) ^ (CallableForCallee >> 9);
  v8 = 0xB492B66FBE98F273 * ((a1 >> 4) ^ (a1 >> 9));
  v9 = 0x9AE16A3B2F90404FLL * ((LODWORD(v14[0]) >> 4) ^ (LODWORD(v14[0]) >> 9));
  v10 = __ROR8__(v7 ^ 0xC949D7C7509E6557, 20);
  v11 = __ROR8__(v8 - v7, 43) - 0x3C5A37A36834CED9 * v7 + __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30);
  v12 = 0x9DDFEA08EB382D69 * ((v8 + v10 - 0xAE502812AA7333 - v9 + 24) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v8 + v10 - 0xAE502812AA7333 - v9 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v8 + v10 - 0xAE502812AA7333 - v9 + 24))));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v12 >> 47) ^ v12), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

void *mlir::ODIE::Compiler::CoreML::ParamRefAttr::print(mlir::ODIE::Compiler::CoreML::ParamRefAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v10 = *(*this + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  (*(*a2 + 72))(a2, AttrData, v7);
  result = (*(*a2 + 16))(a2);
  v9 = result[4];
  if (result[3] == v9)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v9 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefAttr::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v17 = 0;
  v18 = a2;
  __p[0] = 0;
  __p[1] = 0;
  if ((*(*a1 + 152))(a1) & 1) != 0 && (mlir::AsmParser::parseKeywordOrString(a1) & 1) != 0 && ((*(*a1 + 168))(a1) & 1) != 0 && (a2 || ((*(*a1 + 576))(a1, &v18)))
  {
    Context = mlir::AsmParser::getContext(a1);
    v5 = (*(*a1 + 32))(a1);
    v15 = 260;
    v14 = __p;
    StringAttr = mlir::Builder::getStringAttr(v5, &v14);
    v7 = v18;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v19[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
    v19[1] = Context;
    v23[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
    v23[1] = v19;
    v22[0] = StringAttr;
    v22[1] = v7;
    v9 = (v7 >> 4) ^ (v7 >> 9);
    v10 = __ROR8__(v9 + 16, 16);
    v11 = 0x9DDFEA08EB382D69 * (v10 ^ 0xFF51AFD7ED558CCDLL ^ (StringAttr >> 4) ^ (StringAttr >> 9));
    v21 = v22;
    v20[0] = v22;
    v20[1] = v23;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11)))) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = 0;
  if (SHIBYTE(v17) < 0)
  {
LABEL_7:
    v13 = result;
    operator delete(__p[0]);
    return v13;
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(uint64_t a1, uint64_t a2)
{
  if (*(**(a2 + 8) + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = v4[4];
    if (v4[3] == v5)
    {
      llvm::raw_ostream::write(v4, "<", 1uLL);
    }

    else
    {
      *v5 = 60;
      ++v4[4];
    }

    (*(*a1 + 40))(a1, a2);
    goto LABEL_9;
  }

  (*(*a1 + 40))(a1);
  v6 = (*(*a1 + 16))(a1);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "<", 1uLL);
    v8 = *(a2 + 32);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *v7 = 60;
    ++v6[4];
    v8 = *(a2 + 32);
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  v11 = *(a2 + 24);
  mlir::ODIE::Compiler::CoreML::printSingleBinding(a1, *v11, v11[1]);
  if (v8 != 1)
  {
    v12 = &v11[2 * v8];
    v13 = v11 + 2;
    do
    {
      while (1)
      {
        v16 = (*(*a1 + 16))(a1);
        v17 = v16[4];
        if (v16[3] - v17 <= 1uLL)
        {
          break;
        }

        *v17 = 8236;
        v16[4] += 2;
        v14 = *v13;
        v15 = v13[1];
        v13 += 2;
        mlir::ODIE::Compiler::CoreML::printSingleBinding(a1, v14, v15);
        if (v13 == v12)
        {
          goto LABEL_9;
        }
      }

      llvm::raw_ostream::write(v16, ", ", 2uLL);
      v18 = *v13;
      v19 = v13[1];
      v13 += 2;
      mlir::ODIE::Compiler::CoreML::printSingleBinding(a1, v18, v19);
    }

    while (v13 != v12);
  }

LABEL_9:
  result = (*(*a1 + 16))(a1);
  v10 = result[4];
  if (result[3] == v10)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v10 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(uint64_t a1, uint64_t *a2)
{
  v20[6] = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (((*(*a1 + 440))(a1, &v16) & 1) == 0)
  {
    return 0;
  }

  if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = v16;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    *a2 = v16;
    return 1;
  }

  v18 = v20;
  v19 = 0x300000000;
  v15[0] = a1;
  v15[1] = &v18;
  if ((*(*a1 + 392))(a1, 7, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(mlir::AsmParser &,mlir::Attribute &,mlir::Type)::$_0>, v15, 0, 0))
  {
    if (v19)
    {
      v5 = (*(*a1 + 32))(a1);
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v5);
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id);
      v8 = v18;
      v9 = v19;
      v17 = v4;
      Context = mlir::Attribute::getContext(&v17);
      v11 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v17, SingletonImpl, v8, v9);
    }

    else
    {
      v11 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v4);
    }

    *a2 = v11;
    result = 1;
    v13 = v18;
    if (v18 != v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = 0;
    v13 = v18;
    if (v18 != v20)
    {
LABEL_15:
      v14 = result;
      free(v13);
      return v14;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  v2 = mlir::Attribute::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v2);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_13SymbolRefAttrENS4_10SymbolTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = SingletonImpl;
  v6 = (SingletonImpl >> 4) ^ (SingletonImpl >> 9);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

{
  v11 = a1;
  Context = mlir::Attribute::getContext(&v11);
  v2 = mlir::TypeAttr::get(v11);
  v3 = mlir::Attribute::getContext(&v11);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v3);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJNS1_8TypeAttrENS4_8TypeTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v16[1] = v12;
  v15[0] = v2;
  v15[1] = SingletonImpl;
  v7 = (SingletonImpl >> 4) ^ (SingletonImpl >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v2 >> 4) ^ (v2 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::print(mlir::ODIE::Compiler::CoreML::ParamBindAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  (*(*a2 + 48))(a2, *(*this + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 2)
  {
    *(v7 + 2) = 91;
    *v7 = 8236;
    v6[4] += 3;
    v8 = *this;
    v9 = *(*this + 32);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    llvm::raw_ostream::write(v6, ", [", 3uLL);
    v8 = *this;
    v9 = *(*this + 32);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v10 = *(v8 + 24);
  mlir::ODIE::Compiler::CoreML::printSingleBinding(a2, *v10);
  if (v9 != 1)
  {
    v11 = &v10[2 * v9];
    v12 = v10 + 2;
    do
    {
      while (1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v14[4];
        if (v14[3] - v15 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(v14, ", ", 2uLL);
        v13 = *v12;
        v12 += 2;
        mlir::ODIE::Compiler::CoreML::printSingleBinding(a2, v13);
        if (v12 == v11)
        {
          goto LABEL_13;
        }
      }

      *v15 = 8236;
      v14[4] += 2;
      v16 = *v12;
      v12 += 2;
      mlir::ODIE::Compiler::CoreML::printSingleBinding(a2, v16);
    }

    while (v12 != v11);
  }

LABEL_13:
  result = (*(*a2 + 16))(a2);
  v18 = result[4];
  if (result[3] - v18 > 1uLL)
  {
    *v18 = 15965;
    result[4] += 2;
  }

  else
  {

    return llvm::raw_ostream::write(result, "]>", 2uLL);
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(uint64_t a1, void **a2)
{
  v2 = a2;
  v16[6] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x300000000;
  v10 = 0;
  v11[0] = a1;
  v11[1] = &v14;
  v12 = a2;
  if ((*(*a1 + 152))(a1) & 1) != 0 && ((*(*a1 + 440))(a1, &v10, 0) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 392))(a1, 2, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ParamBindAttr::parse(mlir::AsmParser &,mlir::Type)::$_0>, v11, 0, 0) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    if (v2)
    {
      goto LABEL_9;
    }

    if ((*(*a1 + 576))(a1, &v12))
    {
      v2 = v12;
LABEL_9:
      v4 = v14;
      v5 = v15;
      v13 = v10;
      Context = mlir::Attribute::getContext(&v13);
      v7 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v13, v2, v4, v5);
      v8 = v14;
      if (v14 == v16)
      {
        return v7;
      }

      goto LABEL_12;
    }
  }

  v7 = 0;
  v8 = v14;
  if (v14 != v16)
  {
LABEL_12:
    free(v8);
  }

  return v7;
}

void *mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(mlir::MLIRContext *a1, void *a2, void **a3, _DWORD *a4, uint64_t a5)
{
  if (a5)
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
    v46 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
    v47 = a1;
    v55 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJRNS1_9AttributeERNS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS7_;
    v56 = &v46;
    v11 = (a2 >> 4) ^ (a2 >> 9);
    v51 = a2;
    v52 = a3;
    v53 = a4;
    v54 = a5;
    v12 = (a3 >> 4) ^ (a3 >> 9);
    v13 = llvm::hashing::detail::hash_combine_range_impl<mlir::TypedAttr const*>(a4, &a4[4 * a5]);
    v14 = 0xB492B66FBE98F273 * v11 + __ROR8__(v12 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * v13 + 24;
    v15 = (__ROR8__(0xB492B66FBE98F273 * v11 - v12, 43) - 0x3C5A37A36834CED9 * v12 + __ROR8__((0x9AE16A3B2F90404FLL * v13) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v14;
    v16 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * v15) >> 47) ^ (0x9DDFEA08EB382D69 * v15));
    v48 = &v51;
    v49 = &v55;
    v50 = &v51;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v50, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v48);
    if (!result)
    {
      return result;
    }

    v18 = *result;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (!v21)
      {
        return result;
      }
    }

    else
    {
      v43 = result;
      mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
      result = v43;
      v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (!v21)
      {
        return result;
      }
    }

    v22 = v20;
    v23 = v21;
    do
    {
      v24 = v23 >> 1;
      v25 = &v22[2 * (v23 >> 1)];
      v27 = *v25;
      v26 = v25 + 2;
      v23 += ~(v23 >> 1);
      if (v27 < v19)
      {
        v22 = v26;
      }

      else
      {
        v23 = v24;
      }
    }

    while (v23);
  }

  else
  {
    result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
    if (!result)
    {
      v45 = a2;
      Context = mlir::Attribute::getContext(&v45);
      v29 = mlir::MLIRContext::getAttributeUniquer(Context);
      v46 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
      v47 = Context;
      v51 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
      v52 = &v46;
      v55 = v45;
      v56 = a3;
      v30 = (a3 >> 4) ^ (a3 >> 9);
      v31 = __ROR8__(v30 + 16, 16);
      v32 = 0x9DDFEA08EB382D69 * (v31 ^ 0xFF51AFD7ED558CCDLL ^ (v45 >> 4) ^ (v45 >> 9));
      v48 = &v55;
      v49 = &v51;
      v50 = &v55;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(v29, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) >> 32) >> 15) ^ (-348639895 * (v31 ^ (v32 >> 47) ^ v32)))) ^ v30, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v50, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v48);
      if (result)
      {
        v33 = *result;
        {
          v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v35 = *(v33 + 8);
          v36 = *(v33 + 16);
          if (!v36)
          {
            return result;
          }
        }

        else
        {
          v44 = result;
          mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
          result = v44;
          v34 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v35 = *(v33 + 8);
          v36 = *(v33 + 16);
          if (!v36)
          {
            return result;
          }
        }

        v37 = v35;
        v38 = v36;
        do
        {
          v39 = v38 >> 1;
          v40 = &v37[2 * (v38 >> 1)];
          v42 = *v40;
          v41 = v40 + 2;
          v38 += ~(v38 >> 1);
          if (v42 < v34)
          {
            v37 = v41;
          }

          else
          {
            v38 = v39;
          }
        }

        while (v38);
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

{
  v9[0] = a1;
  v9[1] = a2;
  Context = mlir::Attribute::getContext(v9);
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v10[1] = Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9TypedAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v14[1] = v10;
  v13[0] = v9[0];
  v13[1] = CallableForCallee;
  v5 = (CallableForCallee >> 4) ^ (CallableForCallee >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (LODWORD(v9[0]) >> 4) ^ (LODWORD(v9[0]) >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamConstantAttr::parse(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = 0;
  v12 = a2;
  if ((*(*a1 + 152))(a1) & 1) != 0 && ((*(*a1 + 440))(a1, &v11, 0) & 1) != 0 && ((*(*a1 + 168))(a1))
  {
    v4 = *(*v11 + 136);
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }

    v10 = v5;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      Value = mlir::AffineMapAttr::getValue(&v10);
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(Value);
    }

    if (v4 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11);
    }

    v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v11);
    if (v6)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v6, v7);
    }

    if (v2)
    {
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11, v2);
    }

    if ((*(*a1 + 576))(a1, &v12))
    {
      v2 = v12;
      return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v11, v2);
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(mlir::ODIE::Compiler::CoreML::TargetSpecAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 9)
  {
    *(v7 + 8) = 8736;
    *v7 = *"triple = ";
    v6[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v6, "triple = ", 0xAuLL);
  }

  v9 = *(*this + 8);
  v8 = *(*this + 16);
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (v8)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if ((v12[3] - v13) > 9)
  {
    *(v13 + 8) = 8736;
    *v13 = *", soc = ";
    v12[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v12, ", soc = ", 0xAuLL);
  }

  v15 = *(*this + 24);
  v14 = *(*this + 32);
  v16 = (*(*a2 + 16))(a2);
  if (v14 <= *(v16 + 24) - *(v16 + 32))
  {
    if (v14)
    {
      v17 = v16;
      memcpy(*(v16 + 32), v15, v14);
      *(v17 + 32) += v14;
    }
  }

  else
  {
    llvm::raw_ostream::write(v16, v15, v14);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if ((v18[3] - v19) > 0x11)
  {
    *(v19 + 16) = 8736;
    *v19 = *", data_layout = ";
    v18[4] += 18;
  }

  else
  {
    llvm::raw_ostream::write(v18, ", data_layout = ", 0x12uLL);
  }

  v21 = *(*this + 40);
  v20 = *(*this + 48);
  v22 = (*(*a2 + 16))(a2);
  if (v20 <= *(v22 + 24) - *(v22 + 32))
  {
    if (v20)
    {
      v23 = v22;
      memcpy(*(v22 + 32), v21, v20);
      *(v23 + 32) += v20;
    }
  }

  else
  {
    llvm::raw_ostream::write(v22, v21, v20);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] - v25 > 0xDuLL)
  {
    qmemcpy(v25, ", delegate = ", 14);
    v24[4] += 14;
    if (*(*this + 56))
    {
      goto LABEL_27;
    }
  }

  else
  {
    llvm::raw_ostream::write(v24, ", delegate = ", 0xEuLL);
    if (*(*this + 56))
    {
LABEL_27:
      (*(*a2 + 40))(a2);
      goto LABEL_32;
    }
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] - v27 > 1uLL)
  {
    *v27 = 32123;
    v26[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "{}", 2uLL);
  }

LABEL_32:
  result = (*(*a2 + 16))(a2);
  v29 = result[4];
  if (result[3] == v29)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v29 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(mlir::AsmParser *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 176))(a1))
  {
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    __p = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
    v17 = Context;
    v19 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJRA1_KcSH_SH_NS1_14DictionaryAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
    p_p = &__p;
    v23 = "";
    v24 = 0;
    v25[0] = "";
    v25[1] = 0;
    v26[1] = 0;
    v27 = 0;
    v26[0] = "";
    v30 = 0u;
    memset(v31, 0, sizeof(v31));
    v29 = 0u;
    memset(v28, 0, sizeof(v28));
    v32 = 0;
    v33 = 0xFF51AFD7ED558CCDLL;
    v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(v28, 0, v28, v31, &v23, v25, v26, &v27);
    v22 = &v23;
    *&v28[0] = &v23;
    *(&v28[0] + 1) = &v19;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v28);
  }

  v23 = 0;
  v24 = 0;
  v25[0] = 0;
  v19 = 0;
  p_p = 0;
  v21 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  LOWORD(v29) = 257;
  if ((*(*a1 + 400))(a1, "triple", 6, v28) & 1) != 0 && ((*(*a1 + 136))(a1) & 1) != 0 && (mlir::AsmParser::parseString(a1, &v23) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (LOWORD(v29) = 257, ((*(*a1 + 400))(a1, "soc", 3, v28)) && ((*(*a1 + 136))(a1) & 1) != 0 && (mlir::AsmParser::parseString(a1, &v19) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (LOWORD(v29) = 257, ((*(*a1 + 400))(a1, "data_layout", 11, v28)) && ((*(*a1 + 136))(a1) & 1) != 0 && (mlir::AsmParser::parseString(a1, &__p) & 1) != 0 && (v22 = 0, ((*(*a1 + 120))(a1)) && (LOWORD(v29) = 257, ((*(*a1 + 400))(a1, "delegate", 8, v28)) && ((*(*a1 + 136))(a1) & 1) != 0 && mlir::AsmParser::parseAttribute<mlir::DictionaryAttr>(a1, &v22, 0))
  {
    v6 = mlir::AsmParser::getContext(a1);
    if (v25[0] >= 0)
    {
      v7 = &v23;
    }

    else
    {
      v7 = v23;
    }

    if (v25[0] >= 0)
    {
      v8 = SHIBYTE(v25[0]);
    }

    else
    {
      v8 = v24;
    }

    if (v21 >= 0)
    {
      v9 = &v19;
    }

    else
    {
      v9 = v19;
    }

    if (v21 >= 0)
    {
      v10 = SHIBYTE(v21);
    }

    else
    {
      v10 = p_p;
    }

    if (v18 >= 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p;
    }

    if (v18 >= 0)
    {
      v12 = SHIBYTE(v18);
    }

    else
    {
      v12 = v17;
    }

    result = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::get(v6, v7, v8, v9, v10, v11, v12, v22);
  }

  else
  {
    result = 0;
  }

  if (SHIBYTE(v18) < 0)
  {
    v13 = result;
    operator delete(__p);
    result = v13;
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v25[0]) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_46:
      v15 = result;
      operator delete(v23);
      return v15;
    }
  }

  else if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  v14 = result;
  operator delete(v19);
  result = v14;
  if (SHIBYTE(v25[0]) < 0)
  {
    goto LABEL_46;
  }

  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::DictionaryAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v19[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
  v19[1] = a1;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJNS_9StringRefESF_SF_NS1_14DictionaryAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v25[1] = v19;
  v21[0] = a2;
  v21[1] = a3;
  v22[0] = a4;
  v22[1] = a5;
  v23[0] = a6;
  v23[1] = a7;
  v24 = a8;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  v28 = 0;
  v29 = 0xFF51AFD7ED558CCDLL;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(v26, 0, v26, v27, v21, v22, v23, &v24);
  v20 = v21;
  *&v26[0] = v21;
  *(&v26[0] + 1) = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v26);
}

void *mlir::ODIE::Compiler::CoreML::ArrayType::print(mlir::ODIE::Compiler::CoreML::ArrayType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (v6)
  {
    v7 = *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6[1];
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v8 = 0;
    }

    v15 = v8;
    if (v9 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      Value = mlir::AffineMapAttr::getValue(&v15);
      (*(*a2 + 32))(a2, Value);
    }
  }

  else
  {
    (*(*a2 + 40))(a2);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] - v12 > 1uLL)
  {
    *v12 = 8250;
    v11[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, ": ", 2uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  result = (*(*a2 + 16))(a2);
  v14 = result[4];
  if (result[3] == v14)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v14 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ArrayType::parse(mlir::ODIE::Compiler::CoreML::ArrayType *this, mlir::AsmParser *a2)
{
  v43 = 0;
  v44 = 0;
  v42 = (*(*this + 40))(this, a2);
  v41[0] = this;
  v41[1] = &v42;
  if (((*(*this + 152))(this) & 1) == 0 || ((*(*this + 440))(this, &v44, 0) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || ((*(*this + 440))(this, &v43, 0) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v3 = v44;
  if (*(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = (*(*this + 32))(this);
    v5 = mlir::Builder::getType<mlir::ODIE::Compiler::CoreML::TypeType>(v4);
    v44 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v3, v5);
  }

  Context = mlir::AsmParser::getContext(this);
  v7 = Context;
  v8 = v44;
  if (!v44)
  {
    goto LABEL_22;
  }

  v9 = *v44;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_19:
    v12 = 0;
    v13 = v11;
    goto LABEL_20;
  }

  v37 = v9;
  v39 = Context;
  v35 = v8;
  mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
  v8 = v35;
  v7 = v39;
  v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v11 = *(v37 + 8);
  v12 = *(v37 + 16);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
LABEL_20:
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v20 = v13[1];
    v21 = v43;
    if (!v43)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

LABEL_22:
  v20 = 0;
  v21 = v43;
  if (!v43)
  {
    goto LABEL_37;
  }

LABEL_23:
  v22 = *v21;
  {
    v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_34:
    v25 = 0;
    v26 = v24;
    goto LABEL_35;
  }

  v38 = v20;
  v40 = v7;
  v32 = v8;
  v34 = v21;
  v36 = v22;
  mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
  v21 = v34;
  v20 = v38;
  v7 = v40;
  v8 = v32;
  v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v24 = *(v36 + 8);
  v25 = *(v36 + 16);
  if (!v25)
  {
    goto LABEL_34;
  }

LABEL_25:
  v26 = v24;
  v27 = v25;
  do
  {
    v28 = v27 >> 1;
    v29 = &v26[2 * (v27 >> 1)];
    v31 = *v29;
    v30 = v29 + 2;
    v27 += ~(v27 >> 1);
    if (v31 < v23)
    {
      v26 = v30;
    }

    else
    {
      v27 = v28;
    }
  }

  while (v27);
LABEL_35:
  if (v26 != &v24[2 * v25] && *v26 == v23)
  {
    v33 = v26[1];
    return mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ArrayType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ArrayType::parse(mlir::AsmParser &)::$_0>, v41, v7, v8, v20, v21, v33);
  }

LABEL_37:
  v33 = 0;
  return mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ArrayType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ArrayType::parse(mlir::AsmParser &)::$_0>, v41, v7, v8, v20, v21, v33);
}

uint64_t mlir::Builder::getType<mlir::ODIE::Compiler::CoreML::TypeType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id);
}

uint64_t mlir::ODIE::Compiler::CoreML::ArrayType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = *MEMORY[0x1E69E9840];
  v45[0] = a3;
  v45[1] = a4;
  v44[0] = a5;
  v44[1] = a6;
  if (*(*mlir::CallOpInterface::getCallableForCallee(v45) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (*(*mlir::CallOpInterface::getCallableForCallee(v44) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      return 1;
    }

    a1(v49, a2);
    if (v49[0])
    {
      v46 = 3;
      v47 = "expected a size expression of any integer type, got ";
      v48 = 52;
      v25 = &v46;
      v26 = v50;
      if (v51 >= v52)
      {
        if (v50 <= &v46 && v50 + 24 * v51 > &v46)
        {
          v42 = &v46 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
          v26 = v50;
          v25 = (v50 + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
          v25 = &v46;
          v26 = v50;
        }
      }

      v27 = &v26[24 * v51];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v51;
      if (v49[0])
      {
        v29 = &v46;
        mlir::DiagnosticArgument::DiagnosticArgument(&v46, v44[0]);
        v30 = v50;
        if (v51 >= v52)
        {
          if (v50 <= &v46 && v50 + 24 * v51 > &v46)
          {
            v43 = &v46 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v30 = v50;
            v29 = (v50 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v29 = &v46;
            v30 = v50;
          }
        }

        v31 = &v30[24 * v51];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v51;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v57;
        v35 = __p;
        if (v57 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v57 = v33;
        operator delete(v35);
      }

      v20 = v54;
      if (!v54)
      {
        goto LABEL_47;
      }

      v36 = v55;
      v22 = v54;
      if (v55 == v54)
      {
        goto LABEL_46;
      }

      do
      {
        v38 = *--v36;
        v37 = v38;
        *v36 = 0;
        if (v38)
        {
          operator delete[](v37);
        }
      }

      while (v36 != v20);
      goto LABEL_45;
    }
  }

  else
  {
    a1(v49, a2);
    if (v49[0])
    {
      v46 = 3;
      v48 = 56;
      v8 = &v46;
      v9 = v50;
      if (v51 >= v52)
      {
        if (v50 <= &v46 && v50 + 24 * v51 > &v46)
        {
          v40 = &v46 - v50;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
          v9 = v50;
          v8 = (v50 + v40);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
          v8 = &v46;
          v9 = v50;
        }
      }

      v10 = &v9[24 * v51];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v51;
      if (v49[0])
      {
        v12 = &v46;
        mlir::DiagnosticArgument::DiagnosticArgument(&v46, v45[0]);
        v13 = v50;
        if (v51 >= v52)
        {
          if (v50 <= &v46 && v50 + 24 * v51 > &v46)
          {
            v41 = &v46 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v13 = v50;
            v12 = (v50 + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v12 = &v46;
            v13 = v50;
          }
        }

        v14 = &v13[24 * v51];
        v15 = *v12;
        *(v14 + 2) = *(v12 + 2);
        *v14 = v15;
        ++v51;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v57;
        v19 = __p;
        if (v57 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v57 = v17;
        operator delete(v19);
      }

      v20 = v54;
      if (!v54)
      {
        goto LABEL_47;
      }

      v21 = v55;
      v22 = v54;
      if (v55 == v54)
      {
LABEL_46:
        v55 = v20;
        operator delete(v22);
LABEL_47:
        if (v50 != v53)
        {
          free(v50);
        }

        return v16;
      }

      do
      {
        v24 = *--v21;
        v23 = v24;
        *v21 = 0;
        if (v24)
        {
          operator delete[](v23);
        }
      }

      while (v21 != v20);
LABEL_45:
      v22 = v54;
      goto LABEL_46;
    }
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = a2[1];
    v6 = *(*v5 + 136);
    if (v6 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v5 = 0;
    }

    v15[0] = v5;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return mlir::AffineMapAttr::getValue(v15);
    }
  }

  v11 = a1;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
  v10[1] = &v11;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v15[1] = v10;
  v14[0] = a2;
  v14[1] = a3;
  v8 = 0x9DDFEA08EB382D69 * ((8 * ((a2 >> 4) ^ (a2 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v8 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::ParamRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  *&v27 = a4;
  *(&v27 + 1) = a5;
  if (*(*mlir::CallOpInterface::getCallableForCallee(&v27) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id)
  {
    if (v27)
    {
      v20 = *(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
      goto LABEL_28;
    }

    v21 = *(v27 + 8);
    v22 = *(*v21 + 136);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v21 = 0;
    }

    v34[0] = v21;
    if (v22 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return mlir::AffineMapAttr::getValue(v34);
    }

    else
    {
LABEL_28:
      v31 = a3;
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
      v30[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
      v30[1] = &v31;
      v34[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
      v34[1] = v30;
      v28 = v27;
      v24 = 0x9DDFEA08EB382D69 * ((8 * ((v27 >> 4) ^ (v27 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
      v32[0] = &v28;
      v32[1] = v34;
      v33 = &v28;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v24 ^ (v24 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v33, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v32);
    }
  }

  else
  {
    a1(v34, a2);
    if (v34[0])
    {
      LODWORD(v28) = 3;
      v29 = 46;
      v8 = &v28;
      v9 = v35;
      if (v36 >= v37)
      {
        if (v35 <= &v28 && v35 + 24 * v36 > &v28)
        {
          v26 = &v28 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
          v9 = v35;
          v8 = v35 + v26;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
          v8 = &v28;
          v9 = v35;
        }
      }

      v10 = &v9[24 * v36];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v42;
        v14 = __p;
        if (v42 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v42 = v12;
        operator delete(v14);
      }

      v15 = v39;
      if (v39)
      {
        v16 = v40;
        v17 = v39;
        if (v40 != v39)
        {
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
          v17 = v39;
        }

        v40 = v15;
        operator delete(v17);
      }

      if (v35 != v38)
      {
        free(v35);
      }
    }

    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::print(mlir::ODIE::Compiler::CoreML::SymbolRefType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  v7 = (*v6)[17];
  if (v6)
  {
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (*(*v6[1] + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v6)
    {
      v9 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v6);
      goto LABEL_16;
    }
  }

  (*(*a2 + 40))(a2);
LABEL_16:
  result = (*(*a2 + 16))(a2);
  v11 = result[4];
  if (result[3] == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++result[4];
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(mlir::ODIE::Compiler::CoreML::SymbolRefType *this, mlir::AsmParser *a2)
{
  v11 = 0;
  v3 = (*(*this + 40))(this, a2);
  v9[0] = this;
  v9[1] = &v10;
  v10 = v3;
  if (((*(*this + 152))(this) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v11) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v11);
  if (result)
  {
    v6 = result;
    v7 = v5;
    Context = mlir::AsmParser::getContext(this);
    return mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SymbolRefType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::TypedAttr>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(mlir::AsmParser &)::$_0>, v9, Context, v6, v7);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SymbolRefType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v21[0] = a3;
  v21[1] = a4;
  if (*(*mlir::CallOpInterface::getCallableForCallee(v21) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    return 1;
  }

  a1(v25, a2);
  if (v25[0])
  {
    v22 = 3;
    v24 = 48;
    v6 = &v22;
    v7 = v26;
    if (v27 >= v28)
    {
      if (v26 <= &v22 && v26 + 24 * v27 > &v22)
      {
        v20 = &v22 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v7 = v26;
        v6 = (v26 + v20);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v29, v27 + 1, 24);
        v6 = &v22;
        v7 = v26;
      }
    }

    v8 = &v7[24 * v27];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v27;
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v33;
      v13 = __p;
      if (v33 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v33 = v11;
      operator delete(v13);
    }

    v14 = v30;
    if (v30)
    {
      v15 = v31;
      v16 = v30;
      if (v31 != v30)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            operator delete[](v17);
          }
        }

        while (v15 != v14);
        v16 = v30;
      }

      v31 = v14;
      operator delete(v16);
    }

    if (v26 != v29)
    {
      free(v26);
    }
  }

  return v10;
}

uint64_t mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>::getChecked<llvm::ArrayRef<mlir::StringAttr>>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, _DWORD *a4, uint64_t a5)
{
  if ((mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::verify(a1, a2, a4, a5) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id;
  v13[1] = a3;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail30TorchLocationExtrasAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23TorchLocationExtrasAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v17[1] = v13;
  v16[0] = a4;
  v16[1] = a5;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(a4, &a4[2 * a5]);
  v10 = HIDWORD(v9) ^ 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v9 + 8) ^ v10);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    return 1;
  }

  a1(v22, a2);
  if (v22[0])
  {
    v19 = 3;
    v20 = "stack trace must not be empty";
    v21 = 29;
    v5 = &v19;
    v6 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v18 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v6 = v23;
        v5 = (v23 + v18);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v5 = &v19;
        v6 = v23;
      }
    }

    v7 = &v6[24 * v24];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v24;
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v30;
      v11 = __p;
      if (v30 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v30 = v9;
      operator delete(v11);
    }

    v12 = v27;
    if (v27)
    {
      v13 = v28;
      v14 = v27;
      if (v28 != v27)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            operator delete[](v15);
          }
        }

        while (v13 != v12);
        v14 = v27;
      }

      v28 = v12;
      operator delete(v14);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(mlir::AsmParser *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v36) = 0;
  v39 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(a1, &v32);
  if (v39 == v35)
  {
    if (v39)
    {
      v3 = v32;
      if (v32 != v34)
      {
        if (v36 != v38)
        {
          free(v36);
          v3 = v32;
        }

        v36 = v3;
        v37 = v33;
        v32 = v34;
        v33 = 0;
        if (v35 != 1)
        {
          goto LABEL_29;
        }

LABEL_27:
        if (v32 != v34)
        {
          free(v32);
        }

        goto LABEL_29;
      }

      v5 = v33;
      v6 = v37;
      if (v37 >= v33)
      {
        if (v33)
        {
          memmove(v36, v32, 8 * v33);
        }

LABEL_64:
        LODWORD(v37) = v5;
        LODWORD(v33) = 0;
        if (v35 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (HIDWORD(v37) >= v33)
      {
        if (v37)
        {
          memmove(v36, v32, 8 * v37);
          goto LABEL_62;
        }
      }

      else
      {
        LODWORD(v37) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v33, 8);
      }

      v6 = 0;
LABEL_62:
      v21 = v33 - v6;
      if (v21)
      {
        memcpy(&v36[8 * v6], &v32[8 * v6], 8 * v21);
      }

      goto LABEL_64;
    }

LABEL_26:
    if (v35 != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (!v39)
  {
    v36 = v38;
    v37 = 0x600000000;
    v4 = v33;
    if (v33)
    {
      if (v32 == v34)
      {
        v7 = v33;
        if (v33 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v33, 8), (v7 = v33) != 0))
        {
          memcpy(v36, v32, 8 * v7);
        }

        LODWORD(v37) = v4;
      }

      else
      {
        v36 = v32;
        v37 = v33;
        v32 = v34;
        HIDWORD(v33) = 0;
      }

      LODWORD(v33) = 0;
    }

    v39 = 1;
    goto LABEL_26;
  }

  if (v36 != v38)
  {
    free(v36);
  }

  v39 = 0;
  if (v35 == 1)
  {
    goto LABEL_27;
  }

LABEL_29:
  v8 = *a1;
  if ((v39 & 1) == 0)
  {
    v11 = (*(v8 + 40))(a1);
    v34[8] = 259;
    (*(*a1 + 24))(v23, a1, v11, &v32);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v29;
        v14 = __p;
        if (v29 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v29 = v12;
        operator delete(v14);
      }

      v15 = v26;
      if (v26)
      {
        v16 = v27;
        v17 = v26;
        if (v27 != v26)
        {
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
          v17 = v26;
        }

        v27 = v15;
        operator delete(v17);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

LABEL_53:
    result = 0;
    if (v39 != 1)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (((*(v8 + 296))(a1) & 1) == 0)
  {
    goto LABEL_53;
  }

  Context = mlir::AsmParser::getContext(a1);
  v22 = v2;
  v32 = a1;
  v33 = &v22;
  result = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>::getChecked<llvm::ArrayRef<mlir::StringAttr>>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrEJPNS1_11MLIRContextENS_8ArrayRefINS1_10StringAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &v32, Context, v36, v37);
  if (v39 != 1)
  {
    return result;
  }

LABEL_54:
  if (v36 != v38)
  {
    v20 = result;
    free(v36);
    return v20;
  }

  return result;
}