uint64_t mlir::mps::anonymous namespace::LowerBiasAddGradNHWC::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v26 = *(*(a2 + 9) + 24);
  v27 = a2;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v27) != 1)
  {
    return 0;
  }

  v25 = mlir::OpBuilder::create<mlir::mps::RankOp,mlir::Value &>((a4 + 8), *(v27 + 3), &v26);
  v6 = *(v27 + 3);
  IntegerType = mlir::Builder::getIntegerType((a4 + 8), 32, 1);
  v8 = mlir::RankedTensorType::get(0, 0, IntegerType, 0);
  if (v8)
  {
    v9 = v8;
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  LODWORD(v22) = 0;
  v11 = 1;
  v23 = mlir::DenseElementsAttr::getFromRawBuffer(v8, v10, &v22, 4, 4, 1, 1);
  v24 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v6, &v23);
  v23 = mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::mps::RankOp &,mlir::mps::ConstantOp &>((a4 + 8), *(v27 + 3), &v25, &v24);
  v12 = *(v27 + 3);
  v13 = mlir::Builder::getIntegerType((a4 + 8), 32, 1);
  v14 = mlir::RankedTensorType::get(0, 0, v13, 0);
  if (v14)
  {
    v15 = v14;
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
    v14 = v15;
  }

  else
  {
    v16 = 0;
  }

  v20 = 1;
  v21 = mlir::DenseElementsAttr::getFromRawBuffer(v14, v16, &v20, 4, 4, 1, 1);
  v22 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v12, &v21);
  v21 = mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>((a4 + 8), *(v27 + 3), &v23, &v24, &v24, &v22);
  v17 = *(v27 + 3);
  LOBYTE(v20) = 0;
  v18 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::mps::ConcatOp &,BOOL>((a4 + 8), v17, &v26, &v21, &v20);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v18);
  return v11;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(mlir::Float32Type **a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp &,int,int,int>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::CropOp::build(a1, v21, *a3 - 16, *a4 - 16, *a5 - 16, *a6 - 16);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id)
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

void mlir::mps::anonymous namespace::LowerBiasAddNCHW::~LowerBiasAddNCHW(mlir::mps::_anonymous_namespace_::LowerBiasAddNCHW *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::BiasAddOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::BiasAddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::mps::anonymous namespace::LowerBiasAddNCHW::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::UnknownLoc **a4)
{
  v6 = *(a2 + 9);
  v7 = *(v6 + 24);
  v44 = v7;
  v45 = a2;
  v43 = *(v6 + 56);
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v45))
  {
    return 0;
  }

  v9 = *(v45 + 3);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v7);
  v42 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a4 + 1, v9, &v43, &ElementTypeOrSelf);
  ElementTypeOrSelf = mlir::OpBuilder::create<mlir::mps::RankOp,mlir::Value &>((a4 + 1), *(v45 + 3), &v44);
  v10 = *(v45 + 3);
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 32, 1);
  v12 = mlir::RankedTensorType::get(0, 0, IntegerType, 0);
  if (v12)
  {
    v13 = v12;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v12 = v13;
  }

  else
  {
    v14 = 0;
  }

  LODWORD(v38) = 0;
  v39 = mlir::DenseElementsAttr::getFromRawBuffer(v12, v14, &v38, 4, 4, 1, 1);
  v40 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v10, &v39);
  v39 = mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::mps::RankOp &,mlir::mps::ConstantOp &>(a4 + 1, *(v45 + 3), &ElementTypeOrSelf, &v40);
  v15 = *(v45 + 3);
  v16 = mlir::Builder::getIntegerType(a4 + 1, 32, 1);
  v17 = mlir::RankedTensorType::get(0, 0, v16, 0);
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

  LODWORD(v36) = 1;
  v37 = mlir::DenseElementsAttr::getFromRawBuffer(v17, v19, &v36, 4, 4, 1, 1);
  v38 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v15, &v37);
  v37 = mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(a4 + 1, *(v45 + 3), &v39, &v40, &v40, &v38);
  v36 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::mps::CastOp &,mlir::mps::CropOp &>((a4 + 1), *(v45 + 3), &v42, &v37);
  v20 = *(v45 + 3);
  v21 = mlir::Builder::getIntegerType(a4 + 1, 32, 1);
  v22 = mlir::RankedTensorType::get(0, 0, v21, 0);
  if (v22)
  {
    v23 = v22;
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    v22 = v23;
  }

  else
  {
    v24 = 0;
  }

  LODWORD(v33) = -1;
  v34 = mlir::DenseElementsAttr::getFromRawBuffer(v22, v24, &v33, 4, 4, 1, 1);
  v35 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v20, &v34);
  v25 = *(v45 + 3);
  v26 = mlir::Builder::getIntegerType(a4 + 1, 32, 1);
  v27 = mlir::RankedTensorType::get(0, 0, v26, 0);
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

  v32 = -3;
  v8 = 1;
  v33 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v29, &v32, 4, 4, 1, 1);
  v34 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v25, &v33);
  v33 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::mps::ExpandDimsOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(a4 + 1, *(v45 + 3), &v36, &v34, &v35);
  v30 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value &,mlir::mps::TransposeOp &>(a4 + 1, *(v45 + 3), &v44, &v33);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v30);
  return v8;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::mps::CastOp &,mlir::mps::CropOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::mps::CastOp &,mlir::mps::CropOp &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ExpandDimsOp::build(a1, v17, *a3 - 16, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::mps::ExpandDimsOp &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(mlir::Float32Type **a1, uint64_t a2, void *a3, void *a4, void *a5)
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
  mlir::mps::TransposeOp::build(a1, v19, *a3 - 16, *a4 - 16, *a5 - 16);
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

uint64_t mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value &,mlir::mps::TransposeOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
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
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4 - 16);
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

void mlir::mps::anonymous namespace::LowerReductionMean::~LowerReductionMean(mlir::mps::_anonymous_namespace_::LowerReductionMean *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMeanOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMeanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpBuilder::create<mlir::mps::DimensionSizeOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DimensionSizeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DimensionSizeOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::DimensionSizeOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DimensionSizeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::Value &,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::mps::ConcatOp &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionSumOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionProdOp,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionProdOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ReductionProdOp::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,mlir::mps::ReductionProdOp &,mlir::TypeAttr>(mlir::UnknownLoc **a1, uint64_t a2, void *a3, uint64_t *a4)
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
  mlir::mps::CastOp::build(a1, v17, *a3 - 16, *a4);
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

uint64_t mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::mps::ReductionSumOp &,mlir::mps::CastOp &>(mlir::Float32Type **a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::mps::DivideOp,mlir::Value,mlir::mps::ConstantOp>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3 - 16, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id)
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

void mlir::mps::anonymous namespace::LowerReductionVariance::~LowerReductionVariance(mlir::mps::_anonymous_namespace_::LowerReductionVariance *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionVarianceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionVarianceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionMeanOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::mps::ReductionMeanOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
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
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4 - 16);
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

uint64_t mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::mps::SubtractOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
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
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::mps::SquareOp &,mlir::Value &,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, void *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionMeanOp::build(a1, v19, *a3 - 16, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id)
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

void mlir::mps::anonymous namespace::LowerSoftplus::~LowerSoftplus(mlir::mps::_anonymous_namespace_::LowerSoftplus *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SoftplusOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SoftplusOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::mps::anonymous namespace::LowerSoftplus::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v18 = *(*(a2 + 9) + 24);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
  v6 = *(a2 + 3);
  v16 = mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::Value &>((a4 + 8), v6, &v18);
  Constant = 1;
  v7 = mlir::RankedTensorType::get(&Constant, 1, ElementTypeOrSelf, 0);
  Constant = mlir::mps::getConstantAttr<int>(v7, 1);
  v15 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v6, &Constant);
  v14 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::SubtractOp &,mlir::mps::ConstantOp>((a4 + 8), v6, &v16, &v15);
  v13 = mlir::OpBuilder::create<mlir::mps::LogarithmOp,mlir::mps::AddOp &>((a4 + 8), v6, &v14);
  if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) >= 0x11)
  {
    v8 = 20.0;
  }

  else
  {
    v8 = 10.0;
  }

  Constant = 1;
  v9 = mlir::RankedTensorType::get(&Constant, 1, ElementTypeOrSelf, 0);
  Constant = mlir::mps::getConstantAttr<float>(v9, v8);
  Constant = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v6, &Constant);
  v12 = mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), v6, &v18, &Constant);
  v10 = mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::mps::GreaterThanOp &,mlir::Value &,mlir::mps::LogarithmOp &>((a4 + 8), v6, &v12, &v18, &v13);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v10);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExponentOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::LogarithmOp,mlir::mps::AddOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::LogarithmOp,mlir::mps::AddOp &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::mps::ConstantOp &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::EqualToOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::mps::GreaterThanOp &,mlir::Value &,mlir::mps::LogarithmOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::mps::GreaterThanOp &,mlir::Value &,mlir::mps::LogarithmOp &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::SelectOp::build(a1, v19, *a3 - 16, *a4, *a5 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id)
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

uint64_t mlir::mps::getConstantAttr<int>(void *a1, int a2)
{
  v27 = a2;
  v28 = 0;
  if (a1)
  {
    v2 = a1;
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8);
    a1 = v2;
  }

  else
  {
    v3 = 0;
  }

  v26[0] = a1;
  v26[1] = v3;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v25[0] = &v28;
  v25[1] = v26;
  v25[2] = &v27;
  v5 = *(*ElementTypeOrSelf + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    v21 = v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
    if (!ElementTypeOrSelf || v21)
    {
      goto LABEL_58;
    }

LABEL_49:
    mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::Type)#1}::operator()(v25, ElementTypeOrSelf);
    return v28;
  }

  if (ElementTypeOrSelf)
  {
    goto LABEL_49;
  }

LABEL_58:
  v24[0] = &v28;
  v24[1] = v26;
  v24[2] = &v27;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::Type)#2}::operator()(v24, ElementTypeOrSelf);
  }

  else
  {
    v23[0] = &v28;
    v23[1] = v26;
    v23[2] = &v27;
    mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::ComplexType)#1}::operator()(v23, ElementTypeOrSelf);
  }

  return v28;
}

void mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::Type)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v22 = a2;
  isF16 = mlir::Type::isF16(&v22);
  if (isF16)
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = llvm::APFloatBase::IEEEhalf(isF16);
  }

  else
  {
    isBF16 = mlir::Type::isBF16(&v22);
    if (!isBF16)
    {
      if (mlir::Type::isF32(&v22))
      {
        v15 = *(a1 + 8);
        *&v23 = **(a1 + 16);
        v16 = *v15;
        v17 = v15[1];
        v18 = 4;
        v19 = 4;
      }

      else
      {
        mlir::Type::isF64(&v22);
        v20 = *(a1 + 8);
        v23 = **(a1 + 16);
        v16 = *v20;
        v17 = v20[1];
        v18 = 8;
        v19 = 8;
      }

      **a1 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v17, &v23, v18, v19, 0, 1);
      return;
    }

    v9 = *(a1 + 8);
    v5 = *v9;
    v6 = *(v9 + 8);
    v7 = llvm::APFloatBase::BFloat(isBF16);
  }

  v10 = v7;
  std::to_string(&v21, **(a1 + 16));
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v21;
  }

  else
  {
    v11 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  llvm::APFloat::APFloat(&v23, v10, v11, size);
  v13 = mlir::DenseElementsAttr::get(v5, v6, &v23, 1);
  **a1 = v13;
  v14 = v24[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v13) == v14)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v24);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v24);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  operator delete(v21.__r_.__value_.__l.__data_);
}

void mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::Type)#2}::operator()(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  isInteger = mlir::Type::isInteger(&v11, 1);
  v4 = *(a1 + 8);
  if (isInteger)
  {
    LOBYTE(__p) = **(a1 + 16) != 0;
    **a1 = mlir::DenseElementsAttr::get(*v4, v4[1], &__p, 1);
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
    v6 = **(a1 + 16);
    isSignedInteger = mlir::Type::isSignedInteger(&v11);
    v10 = IntOrFloatBitWidth;
    if (IntOrFloatBitWidth > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v6, isSignedInteger);
    }

    else
    {
      v8 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
      if (!IntOrFloatBitWidth)
      {
        v8 = 0;
      }

      __p = (v8 & v6);
    }

    **a1 = mlir::DenseElementsAttr::get(*v4, v4[1], &__p, 1);
    if (v10 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }
}

void mlir::mps::getConstantAttr<int>(mlir::Type,int)::{lambda(mlir::ComplexType)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Value = mlir::AffineMapAttr::getValue(&v24);
  if (mlir::Type::isF32(&Value))
  {
    v3 = *(a1 + 8);
    v27[0] = **(a1 + 16);
    v27[1] = 0.0;
    **a1 = mlir::DenseElementsAttr::getFromRawBuffer(*v3, v3[1], v27, 8, 8, 0, 1);
    return;
  }

  isF16 = mlir::Type::isF16(&Value);
  v5 = *(a1 + 8);
  _S0 = **(a1 + 16);
  __asm { FCVT            H8, S0 }

  v12 = llvm::APFloatBase::IEEEhalf(isF16);
  __asm { FCVT            S0, H8; __val }

  std::to_string(&v22, _S0);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v22;
  }

  else
  {
    v14 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  llvm::APFloat::APFloat(v27, v12, v14, size);
  std::to_string(&v21, 0.0);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v21.__r_.__value_.__l.__size_;
  }

  v18 = llvm::APFloat::APFloat(v25, v12, v16, v17);
  v19 = v28[0];
  v20 = llvm::APFloatBase::PPCDoubleDouble(v18);
  if (v20 == v19)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v30, v28);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v30, v28);
  }

  if (v20 == v26[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v31, v26);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v31, v26);
  }

  **a1 = mlir::DenseElementsAttr::get(*v5, *(v5 + 8), v29, 1);
  if (v20 == v31[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v31);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v31);
  }

  if (v20 == v30[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v30);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v30);
  }

  if (v20 != v26[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v26);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_29:
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (v20 != v28[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v28);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v28);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

uint64_t mlir::mps::getConstantAttr<float>(void *a1, float a2)
{
  v27 = a2;
  v28 = 0;
  if (a1)
  {
    v2 = a1;
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8);
    a1 = v2;
  }

  else
  {
    v3 = 0;
  }

  v26[0] = a1;
  v26[1] = v3;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v25[0] = &v28;
  v25[1] = v26;
  v25[2] = &v27;
  v5 = *(*ElementTypeOrSelf + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    v21 = v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
    if (!ElementTypeOrSelf || v21)
    {
      goto LABEL_58;
    }

LABEL_49:
    mlir::mps::getConstantAttr<float>(mlir::Type,float)::{lambda(mlir::Type)#1}::operator()(v25, ElementTypeOrSelf);
    return v28;
  }

  if (ElementTypeOrSelf)
  {
    goto LABEL_49;
  }

LABEL_58:
  v24[0] = &v28;
  v24[1] = v26;
  v24[2] = &v27;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    mlir::mps::getConstantAttr<float>(mlir::Type,float)::{lambda(mlir::Type)#2}::operator()(v24, ElementTypeOrSelf);
  }

  else
  {
    v23[0] = &v28;
    v23[1] = v26;
    v23[2] = &v27;
    mlir::mps::getConstantAttr<float>(mlir::Type,float)::{lambda(mlir::ComplexType)#1}::operator()(v23, ElementTypeOrSelf);
  }

  return v28;
}

void mlir::mps::getConstantAttr<float>(mlir::Type,float)::{lambda(mlir::Type)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v22 = a2;
  isF16 = mlir::Type::isF16(&v22);
  if (isF16)
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = llvm::APFloatBase::IEEEhalf(isF16);
  }

  else
  {
    isBF16 = mlir::Type::isBF16(&v22);
    if (!isBF16)
    {
      if (mlir::Type::isF32(&v22))
      {
        v15 = *(a1 + 8);
        LODWORD(v23) = **(a1 + 16);
        v16 = *v15;
        v17 = v15[1];
        v18 = 4;
        v19 = 4;
      }

      else
      {
        mlir::Type::isF64(&v22);
        v20 = *(a1 + 8);
        v23 = **(a1 + 16);
        v16 = *v20;
        v17 = v20[1];
        v18 = 8;
        v19 = 8;
      }

      **a1 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v17, &v23, v18, v19, 0, 1);
      return;
    }

    v9 = *(a1 + 8);
    v5 = *v9;
    v6 = *(v9 + 8);
    v7 = llvm::APFloatBase::BFloat(isBF16);
  }

  v10 = v7;
  std::to_string(&v21, **(a1 + 16));
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v21;
  }

  else
  {
    v11 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  llvm::APFloat::APFloat(&v23, v10, v11, size);
  v13 = mlir::DenseElementsAttr::get(v5, v6, &v23, 1);
  **a1 = v13;
  v14 = v24[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v13) == v14)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v24);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v24);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  operator delete(v21.__r_.__value_.__l.__data_);
}

void mlir::mps::getConstantAttr<float>(mlir::Type,float)::{lambda(mlir::Type)#2}::operator()(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  isInteger = mlir::Type::isInteger(&v11, 1);
  v4 = *(a1 + 8);
  if (isInteger)
  {
    LOBYTE(__p) = **(a1 + 16) != 0.0;
    **a1 = mlir::DenseElementsAttr::get(*v4, v4[1], &__p, 1);
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
    v6 = **(a1 + 16);
    isSignedInteger = mlir::Type::isSignedInteger(&v11);
    v10 = IntOrFloatBitWidth;
    if (IntOrFloatBitWidth > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v6, isSignedInteger);
    }

    else
    {
      v8 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
      if (!IntOrFloatBitWidth)
      {
        v8 = 0;
      }

      __p = (v8 & v6);
    }

    **a1 = mlir::DenseElementsAttr::get(*v4, v4[1], &__p, 1);
    if (v10 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }
}

void mlir::mps::getConstantAttr<float>(mlir::Type,float)::{lambda(mlir::ComplexType)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Value = mlir::AffineMapAttr::getValue(&v24);
  if (mlir::Type::isF32(&Value))
  {
    v3 = *(a1 + 8);
    v27[0] = **(a1 + 16);
    v27[1] = 0;
    **a1 = mlir::DenseElementsAttr::getFromRawBuffer(*v3, v3[1], v27, 8, 8, 0, 1);
    return;
  }

  isF16 = mlir::Type::isF16(&Value);
  v5 = *(a1 + 8);
  _S0 = **(a1 + 16);
  __asm { FCVT            H8, S0 }

  v12 = llvm::APFloatBase::IEEEhalf(isF16);
  __asm { FCVT            S0, H8; __val }

  std::to_string(&v22, _S0);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v22;
  }

  else
  {
    v14 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  llvm::APFloat::APFloat(v27, v12, v14, size);
  std::to_string(&v21, 0.0);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v21;
  }

  else
  {
    v16 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v21.__r_.__value_.__l.__size_;
  }

  v18 = llvm::APFloat::APFloat(v25, v12, v16, v17);
  v19 = v28[0];
  v20 = llvm::APFloatBase::PPCDoubleDouble(v18);
  if (v20 == v19)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v30, v28);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v30, v28);
  }

  if (v20 == v26[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v31, v26);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v31, v26);
  }

  **a1 = mlir::DenseElementsAttr::get(*v5, *(v5 + 8), v29, 1);
  if (v20 == v31[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v31);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v31);
  }

  if (v20 == v30[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v30);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v30);
  }

  if (v20 != v26[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v26);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v26);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_29:
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (v20 != v28[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v28);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v28);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void mlir::mps::anonymous namespace::LowerSoftplusParametric::~LowerSoftplusParametric(mlir::mps::_anonymous_namespace_::LowerSoftplusParametric *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SoftplusParametricOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SoftplusParametricOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::mps::anonymous namespace::LowerSoftplusParametric::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = *(a3 + 40);
  v45 = mlir::ValueRange::dereference_iterator(&v47, 0);
  *&v47 = *(a3 + 40);
  *(&v47 + 1) = 3;
  v47 = mlir::ValueRange::offset_base(&v47, 3);
  v44 = mlir::ValueRange::dereference_iterator(&v47, 0);
  *&v47 = *(a3 + 40);
  *(&v47 + 1) = 1;
  v47 = mlir::ValueRange::offset_base(&v47, 1);
  v43 = mlir::ValueRange::dereference_iterator(&v47, 0);
  *&v47 = *(a3 + 40);
  *(&v47 + 1) = 2;
  v47 = mlir::ValueRange::offset_base(&v47, 2);
  v42 = mlir::ValueRange::dereference_iterator(&v47, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v45);
  v41 = ElementTypeOrSelf;
  v40 = mlir::getElementTypeOrSelf(v44);
  v8 = mlir::OpBuilder::create<mlir::mps::RankOp,mlir::Value &>((a4 + 8), *(a2 + 24), &v45) - 16;
  v39 = v8;
  v9 = *(a2 + 24);
  v10 = *(a4 + 24);
  v47 = *(a4 + 8);
  v48 = v10;
  LODWORD(v36) = 0;
  SI32TensorAttr = mlir::getSI32TensorAttr(&v47, &v36, 1);
  v11 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v9, &SI32TensorAttr) - 16);
  v38 = v11;
  v12 = *(a4 + 24);
  v47 = *(a4 + 8);
  v48 = v12;
  LODWORD(v35) = 1;
  v36 = mlir::getSI32TensorAttr(&v47, &v35, 1);
  v13 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v9, &v36) - 16);
  SI32TensorAttr = v13;
  v14 = *(a4 + 24);
  v47 = *(a4 + 8);
  v48 = v14;
  LODWORD(v34) = -1;
  v35 = mlir::getSI32TensorAttr(&v47, &v34, 1);
  v15 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v9, &v35);
  v35 = v11;
  v36 = (v15 - 16);
  v33 = v8;
  v34 = v13;
  if (!mlir::Type::isInteger(&v40, 32) || !mlir::Type::isSignedInteger(&v40))
  {
    v35 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v9, &v38, &v40) - 16);
    v34 = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v9, &SI32TensorAttr, &v40) - 16);
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v9, &v36, &v40);
  }

  v16 = mlir::getElementTypeOrSelf(v8);
  if (v40 != v16)
  {
    v33 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v9, &v39, &v40) - 16;
  }

  v32 = mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>((a4 + 8), v9, &v44, &v35) - 16;
  v31 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>((a4 + 8), v9, &v44, &v33) - 16;
  v30 = mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a4 + 8), v9, &v32, &v31, &v44) - 16;
  v29 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>((a4 + 8), v9, &v33, &v30) - 16;
  v28 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>((a4 + 8), v9, &v29, &v34) - 16;
  v27 = mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::Value &,mlir::Value &>((a4 + 8), v9, &v28, &v38) - 16;
  v26 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>((a4 + 8), v9, &v27, &SI32TensorAttr) - 16;
  v25 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((a4 + 8), v9, &v43, &v26) - 16;
  v17 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((a4 + 8), v9, &v42, &v26) - 16;
  v23 = v25;
  v24 = v17;
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(v25))
  {
    v23 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v9, &v25, &v41) - 16;
  }

  v22 = v17;
  v18 = mlir::getElementTypeOrSelf(v17);
  if (v41 != v18)
  {
    v22 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v9, &v24, &v41) - 16;
  }

  v21 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>((a4 + 8), v9, &v22, &v45) - 16;
  v20 = mlir::OpBuilder::create<mlir::mps::SoftplusOp,mlir::Value &>((a4 + 8), v9, &v21) - 16;
  v46 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>((a4 + 8), v9, &v23, &v20) - 16;
  mlir::ValueRange::ValueRange(&v47, &v46, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v47, *(&v47 + 1));
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LessThanOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::EqualToOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LessThanOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::mps::GreaterThanOp &,mlir::Value &,mlir::mps::LogarithmOp &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::SelectOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4);
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

uint64_t mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::Value &,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::mps::RankOp &,mlir::mps::ConstantOp &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::GetCoordOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::mps::CastOp &,mlir::mps::CropOp &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ExpandDimsOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SoftplusOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftplusOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SoftplusOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SoftplusOp,void>::id)
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

void mlir::mps::anonymous namespace::LowerNonZero::~LowerNonZero(mlir::mps::_anonymous_namespace_::LowerNonZero *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NonZeroOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NonZeroOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::mps::anonymous namespace::LowerNonZero::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v56 = *(a3 + 40);
  v7 = (*(mlir::ValueRange::dereference_iterator(&v56, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v54[0] = v7;
  v54[1] = v8;
  if (mlir::CallOpInterface::getArgOperands(v54))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v54);
    v10 = v9;
    v11 = *(a2 + 24);
    v56 = *(a4 + 8);
    v57 = *(a4 + 24);
    LODWORD(v52) = -1;
    v55[0] = mlir::getSI32TensorAttr(&v56, &v52, 1);
    v53 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v11, v55) - 16;
    v12 = *(a2 + 24);
    v56 = *(a4 + 8);
    v57 = *(a4 + 24);
    LODWORD(v51) = 0;
    v55[0] = mlir::getSI32TensorAttr(&v56, &v51, 1);
    v52 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v12, v55) - 16;
    v13 = *(a2 + 24);
    v56 = *(a4 + 8);
    v57 = *(a4 + 24);
    LODWORD(v50) = 1;
    v55[0] = mlir::getSI32TensorAttr(&v56, &v50, 1);
    v51 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v13, v55) - 16;
    v14 = *(a2 + 24);
    v56 = *(a4 + 8);
    v57 = *(a4 + 24);
    LODWORD(v49) = -1;
    v55[0] = mlir::getSI32TensorAttr(&v56, &v49, 1);
    v50 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v14, v55) - 16;
    v15 = *(a2 + 24);
    v56 = *(a3 + 40);
    v16 = mlir::ValueRange::dereference_iterator(&v56, 0);
    *&v56 = mlir::getElementTypeOrSelf(v16);
    v49 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v15, &v52, &v56) - 16;
    v17 = *(a2 + 24);
    v56 = *(a3 + 40);
    *&v56 = mlir::ValueRange::dereference_iterator(&v56, 0);
    v48 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>((a4 + 8), v17, &v56, &v53) - 16;
    v47 = mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v48, &v49) - 16;
    v46 = mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v47, &v51, &v52) - 16;
    v18 = *(a2 + 24);
    *&v56 = mlir::Builder::getIntegerType((a4 + 8), 32, 1);
    v45 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v18, &v46, &v56) - 16;
    v19 = *(a2 + 24);
    LOBYTE(v56) = 0;
    v44 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::Value &,BOOL &>((a4 + 8), v19, &v45, &v52, &v56) - 16;
    v20 = *(a2 + 24);
    v56 = *(a3 + 40);
    *&v56 = mlir::ValueRange::dereference_iterator(&v56, 0);
    v43 = mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a4 + 8), v20, &v56) - 16;
    v42 = 0;
    if (v10 < 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0;
      do
      {
        v24 = *(a2 + 24);
        v56 = *(a4 + 8);
        v57 = *(a4 + 24);
        v55[0] = mlir::getSI32TensorAttr(&v56, &v42, 1);
        v41 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v24, v55) - 16;
        v40 = mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v43, &v41) - 16;
        v39 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>((a4 + 8), *(a2 + 24), &v40, &v53) - 16;
        v25 = *(a2 + 24);
        LOBYTE(v56) = 1;
        LOBYTE(v55[0]) = 0;
        v38 = mlir::OpBuilder::create<mlir::mps::CumulativeSumOp,mlir::Value &,mlir::Value &,BOOL,BOOL>((a4 + 8), v25, &v46, &v52, &v56, v55) - 16;
        v37 = mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v47, &v38, &v50) - 16;
        v36 = mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v52, &v44) - 16;
        v26 = *(a2 + 24);
        *&v56 = mlir::getElementTypeOrSelf(v39);
        v36 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v26, &v36, &v56) - 16;
        v27 = *(a2 + 24);
        LODWORD(v56) = 6;
        v35 = mlir::OpBuilder::create<mlir::mps::ScatterOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::mps::ScatterMode>((a4 + 8), v27, &v36, &v39, &v37, &v52, &v56) - 16;
        v35 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v35, &v51) - 16;
        v28 = *(a2 + 24);
        *&v56 = mlir::getElementTypeOrSelf((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
        v29 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a4 + 8), v28, &v35, &v56);
        v35 = v29 - 16;
        if (v42)
        {
          v22 = *(a2 + 24);
          v55[0] = v21;
          v55[1] = (v29 - 16);
          mlir::ValueRange::ValueRange(&v56, v55, 2uLL);
          v34 = 0;
          v21 = (mlir::OpBuilder::create<mlir::mps::ConcatOp,mlir::ValueRange,mlir::Value &,BOOL>((a4 + 8), v22, &v56, &v51, &v34) - 16);
          v23 = v42 + 1;
        }

        else
        {
          v23 = 1;
          v21 = (v29 - 16);
        }

        v42 = v23;
      }

      while (v10 > v23);
    }

    v55[0] = v21;
    v32 = 1;
    mlir::ValueRange::ValueRange(&v56, v55, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v56, *(&v56 + 1));
  }

  else
  {
    v30 = *(a2 + 24);
    *&v56 = "failed: NonZeroOp is currently supported with ranked inputs only.";
    v58 = 259;
    v55[0] = &v56;
    v31 = *(a4 + 16);
    if (v31 && mlir::RewriterBase::Listener::classof(v31))
    {
      (*(*v31 + 88))(v31, v30, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v55);
    }

    return 0;
  }

  return v32;
}

uint64_t mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotEqualToOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::EqualToOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NotEqualToOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CumulativeSumOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CumulativeSumOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CumulativeSumOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::CumulativeSumOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CumulativeSumOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  mlir::mps::BroadcastToOp::build(a1, v17, *a3, *a4);
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

uint64_t mlir::OpBuilder::create<mlir::mps::ScatterOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::mps::ScatterMode>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ScatterOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::mps::ScatterMode>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::ScatterOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ConcatOp,mlir::ValueRange,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConcatOp,llvm::SmallVector<mlir::Value,4u> &,mlir::Value,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ConcatOp::build(a1, v19, *a3, *(a3 + 8), *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
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

void mlir::mps::anonymous namespace::LowerSigmoid::~LowerSigmoid(mlir::mps::_anonymous_namespace_::LowerSigmoid *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SigmoidOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SigmoidOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::mps::anonymous namespace::LowerSigmoid::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  LODWORD(v16[0]) = 1;
  v8 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(a4 + 1, v7, v16);
  v9 = *(a3 + 40);
  v15 = v8;
  v16[0] = v9;
  v16[1] = 0;
  v14 = mlir::ValueRange::dereference_iterator(v16, 0);
  v16[0] = mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::Value>((a4 + 1), v7, &v14);
  v14 = mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::mps::NegativeOp &>((a4 + 1), v7, v16);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v14 - 16);
  v13 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::mps::ConstantOp &,mlir::Type>(a4 + 1, v7, &v15, &ElementTypeOrSelf);
  ElementTypeOrSelf = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::SubtractOp &,mlir::mps::ConstantOp>(a4 + 1, v7, &v14, &v13);
  v10 = mlir::OpBuilder::create<mlir::mps::ReciprocalOp,mlir::mps::AddOp &>((a4 + 1), *(a2 + 24), &ElementTypeOrSelf);
  ((*a4)[1])(a4, a2, v10);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
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
  mlir::mps::ACosOp::build(a1, v15, *a3);
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

uint64_t mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::mps::NegativeOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExponentOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,mlir::mps::ConstantOp &,mlir::Type>(mlir::UnknownLoc **a1, uint64_t a2, void *a3, uint64_t *a4)
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
  mlir::mps::CastOp::build(a1, v17, *a3 - 16, *a4);
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReciprocalOp,mlir::mps::AddOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
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
  mlir::mps::ACosOp::build(a1, v15, *a3 - 16);
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

void mlir::mps::anonymous namespace::LowerArithSelect::~LowerArithSelect(mlir::mps::_anonymous_namespace_::LowerArithSelect *this)
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

uint64_t mlir::OpConversionPattern<mlir::arith::SelectOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::arith::SelectOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::mps::anonymous namespace::LowerArithSelect::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v14 = *(*(a2 + 72) + 24);
  v13 = (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
  {
    goto LABEL_4;
  }

  if (mlir::Type::isInteger(&v13, 1))
  {
    Loc = mlir::Value::getLoc(&v14);
    v14 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::Value &>((a4 + 1), Loc, &v14) - 16;
    v7 = mlir::Value::getLoc(&v14);
    v15[0] = 0;
    v15[1] = 0;
    v14 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::ArrayRef<long long>>(a4 + 1, v7, &v14, v15) - 16;
LABEL_4:
    v8 = *(a2 + 72);
    v15[0] = *(v8 + 56);
    v17 = *(v8 + 88);
    v9 = mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a4 + 1), *(a2 + 24), &v14, v15, &v17);
    ((*a4)[1])(a4, a2, v9);
    return 1;
  }

  v11 = *(a2 + 24);
  v15[0] = "failed: only scalar BOOLean conditionals are valid";
  v16 = 259;
  v17 = v15;
  v12 = a4[2];
  if (v12)
  {
    if (mlir::RewriterBase::Listener::classof(v12))
    {
      (*(*v12 + 88))(v12, v11, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v17);
    }
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::tensor::FromElementsOp::build(a1, v15, a3, 1uLL);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::ArrayRef<long long>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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

void *mlir::mps::anonymous namespace::LowerInterleave<mlir::mpsx::DeinterleaveOp>::~LowerInterleave(void *a1)
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

void mlir::mps::anonymous namespace::LowerInterleave<mlir::mpsx::DeinterleaveOp>::~LowerInterleave(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::DeinterleaveOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::DeinterleaveOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

BOOL mlir::mps::anonymous namespace::LowerInterleave<mlir::mpsx::DeinterleaveOp>::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v50 = *(a3 + 40);
  v5 = *(a2 + 3);
  InterleaveFactor = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v39);
  if (mlir::getANENextSupportedInterleaveValue(InterleaveFactor) == InterleaveFactor)
  {
    v41[0] = 1;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 32, 1);
    v8 = mlir::RankedTensorType::get(v41, 1, IntegerType, 0);
    v9 = v8;
    if (v8)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v10 = 0;
    }

    LODWORD(v40[0]) = -1;
    v37[0] = mlir::DenseElementsAttr::getFromRawBuffer(v9, v10, v40, 4, 4, 1, 1);
    v41[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v5, v37) - 16;
    if (v9)
    {
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    }

    else
    {
      v27 = 0;
    }

    LODWORD(v36) = -3;
    v18 = 1;
    v40[0] = mlir::DenseElementsAttr::getFromRawBuffer(v9, v27, &v36, 4, 4, 1, 1);
    v37[0] = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v5, v40) - 16);
    if (v9)
    {
      v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    }

    else
    {
      v28 = 0;
    }

    v35 = InterleaveFactor;
    v36 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v28, &v35, 4, 4, 1, 1);
    v40[0] = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v5, &v36) - 16);
    v36 = mlir::ValueRange::dereference_iterator(&v50, 0);
    v29 = v39;
    LOBYTE(v35) = 1;
    v30 = mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(a4 + 1, *(v39 + 3), &v36, v41, v37, v40, &v35);
    ((*a4)[1])(a4, v29, v30);
  }

  else
  {
    v38 = 257;
    mlir::OpState::emitOpError(&v39, v37, v41);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v41, "Unsupported interleave factor ");
    if (*v11)
    {
      v12 = *(v11 + 24);
      LODWORD(v40[0]) = 2;
      v40[1] = InterleaveFactor;
      v13 = *(v11 + 32);
      v14 = v40;
      if (v13 >= *(v11 + 36))
      {
        if (v12 <= v40 && v12 + 24 * v13 > v40)
        {
          v33 = v40 - v12;
          v34 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v13 + 1, 24);
          v11 = v34;
          v12 = *(v34 + 24);
          v14 = &v33[v12];
        }

        else
        {
          v32 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v13 + 1, 24);
          v11 = v32;
          v12 = *(v32 + 24);
          v14 = v40;
        }
      }

      v15 = v12 + 24 * *(v11 + 32);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      ++*(v11 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, ": the model must be placed on ANE to work properly");
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v19 = v46;
      if (v46)
      {
        v20 = v47;
        v21 = v46;
        if (v47 != v46)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = v46;
        }

        v47 = v19;
        operator delete(v21);
      }

      v22 = v44;
      if (v44)
      {
        v23 = v45;
        v24 = v44;
        if (v45 != v44)
        {
          do
          {
            v26 = *--v23;
            v25 = v26;
            *v23 = 0;
            if (v26)
            {
              operator delete[](v25);
            }
          }

          while (v23 != v22);
          v24 = v44;
        }

        v45 = v22;
        operator delete(v24);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned __int8 *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::SpaceToBatchOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id)
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

void *mlir::mps::anonymous namespace::LowerInterleave<mlir::mpsx::InterleaveOp>::~LowerInterleave(void *a1)
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

void mlir::mps::anonymous namespace::LowerInterleave<mlir::mpsx::InterleaveOp>::~LowerInterleave(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::InterleaveOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::InterleaveOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

BOOL mlir::mps::anonymous namespace::LowerInterleave<mlir::mpsx::InterleaveOp>::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v50 = *(a3 + 40);
  v5 = *(a2 + 3);
  InterleaveFactor = mlir::mpsx::DeinterleaveOp::getInterleaveFactor(&v39);
  if (mlir::getANENextSupportedInterleaveValue(InterleaveFactor) == InterleaveFactor)
  {
    v41[0] = 1;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 32, 1);
    v8 = mlir::RankedTensorType::get(v41, 1, IntegerType, 0);
    v9 = v8;
    if (v8)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    }

    else
    {
      v10 = 0;
    }

    LODWORD(v40[0]) = -1;
    v37[0] = mlir::DenseElementsAttr::getFromRawBuffer(v9, v10, v40, 4, 4, 1, 1);
    v41[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v5, v37) - 16;
    if (v9)
    {
      v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    }

    else
    {
      v27 = 0;
    }

    LODWORD(v36) = -3;
    v18 = 1;
    v40[0] = mlir::DenseElementsAttr::getFromRawBuffer(v9, v27, &v36, 4, 4, 1, 1);
    v37[0] = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v5, v40) - 16);
    if (v9)
    {
      v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    }

    else
    {
      v28 = 0;
    }

    v35 = InterleaveFactor;
    v36 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v28, &v35, 4, 4, 1, 1);
    v40[0] = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 1), v5, &v36) - 16);
    v36 = mlir::ValueRange::dereference_iterator(&v50, 0);
    v29 = v39;
    LOBYTE(v35) = 1;
    v30 = mlir::OpBuilder::create<mlir::mps::BatchToSpaceOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(a4 + 1, *(v39 + 3), &v36, v41, v37, v40, &v35);
    ((*a4)[1])(a4, v29, v30);
  }

  else
  {
    v38 = 257;
    mlir::OpState::emitOpError(&v39, v37, v41);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v41, "Unsupported interleave factor ");
    if (*v11)
    {
      v12 = *(v11 + 24);
      LODWORD(v40[0]) = 2;
      v40[1] = InterleaveFactor;
      v13 = *(v11 + 32);
      v14 = v40;
      if (v13 >= *(v11 + 36))
      {
        if (v12 <= v40 && v12 + 24 * v13 > v40)
        {
          v33 = v40 - v12;
          v34 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v13 + 1, 24);
          v11 = v34;
          v12 = *(v34 + 24);
          v14 = &v33[v12];
        }

        else
        {
          v32 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v13 + 1, 24);
          v11 = v32;
          v12 = *(v32 + 24);
          v14 = v40;
        }
      }

      v15 = v12 + 24 * *(v11 + 32);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      ++*(v11 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, ": the model must be placed on ANE to work properly");
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v19 = v46;
      if (v46)
      {
        v20 = v47;
        v21 = v46;
        if (v47 != v46)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = v46;
        }

        v47 = v19;
        operator delete(v21);
      }

      v22 = v44;
      if (v44)
      {
        v23 = v45;
        v24 = v44;
        if (v45 != v44)
        {
          do
          {
            v26 = *--v23;
            v25 = v26;
            *v23 = 0;
            if (v26)
            {
              operator delete[](v25);
            }
          }

          while (v23 != v22);
          v24 = v44;
        }

        v45 = v22;
        operator delete(v24);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::mps::BatchToSpaceOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned __int8 *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BatchToSpaceOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::BatchToSpaceOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::mps::BatchToSpaceOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BatchToSpaceOp,void>::id)
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

void mlir::mps::anonymous namespace::LowerDequantize::~LowerDequantize(mlir::mps::_anonymous_namespace_::LowerDequantize *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DequantizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DequantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::mps::anonymous namespace::LowerDequantize::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  if (mlir::mps::DequantizeOp::hasNDParams(&v26))
  {
    v5 = *(v26 + 24);
    v27[0] = "failed to satisfy constraint: dequantize has 0D / 1D parameters";
    v28 = 259;
    v29 = v27;
    v6 = *(a4 + 16);
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v8 = *(*(v26 + 72) + 24);
  v27[0] = mlir::getElementTypeOrSelf(v8);
  if (*(*v27[0] + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::Type::getIntOrFloatBitWidth(v27) == 4)
  {
    v5 = *(v26 + 24);
    v27[0] = "is a native dequantize type supported by MPS";
    v28 = 259;
    v29 = v27;
    v6 = *(a4 + 16);
    if (v6)
    {
LABEL_3:
      if (mlir::RewriterBase::Listener::classof(v6))
      {
        (*(*v6 + 88))(v6, v5, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v29);
      }
    }

    return 0;
  }

  v9 = *(v26 + 72);
  v10 = v9[7];
  v11 = v9[11];
  v12 = v9[15];
  v13 = *(v26 + 24);
  FunctionType = mlir::func::FuncOp::getFunctionType(&v26);
  v27[0] = v15;
  v19 = *(v26 + 16 * ((*(v26 + 44) >> 23) & 1) + 64);
  v23 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>((a4 + 8), v13, v27, &v25);
  v22 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::InstanceNormOp &,mlir::Value>((a4 + 8), v13, &v23, &v29);
  v20 = v26;
  v21 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::MultiplyOp &,mlir::Value>((a4 + 8), *(v26 + 24), &v22, &v24);
  (*(*a4 + 8))(a4, v20, v21);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::createOrFoldConstant(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a3;
  v16 = 0;
  v17 = a4;
  v14 = &v15;
  v15 = 0;
  v13[0] = a3;
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v14, DefiningOp) && (v8 = mlir::mps::foldCastAttribute(v15, v16, a4, 0), (v8 & 4) == 0))
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v10 = 0;
    }

    v13[0] = v9;
    v13[1] = v10;
    v11 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>((a1 + 8), a2, v13);
  }

  else
  {
    v11 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>((a1 + 8), a2, &v18, &v17);
  }

  return v11 - 16;
}

uint64_t mlir::mps::anonymous namespace::reshapeQuantizeScaleZp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v43 = a3;
  v44 = a2;
  v42 = a4;
  Loc = mlir::Value::getLoc(&v44);
  v8 = (*(v44 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v40 = v8;
    v41 = v9;
    if (!a3)
    {
      return v44;
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
    if (!a3)
    {
      return v44;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(&v40))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v40);
    if (v11)
    {
      v12 = 8 * v11;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_12;
    }

LABEL_10:
    v13 = mlir::CallableOpInterface::getArgAttrsAttr(&v40);
    if (mlir::ShapedType::getNumElements(v13, v14) == 1)
    {
      return v44;
    }
  }

LABEL_12:
  v16 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  __p = v16;
  v47 = v17;
  if (mlir::CallOpInterface::getArgOperands(&__p))
  {
    v18 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v18)
    {
      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    __p = v18;
    v47 = v19;
    mlir::CallableOpInterface::getArgAttrsAttr(&__p);
    v22 = v21;
    mlir::IntegerAttr::getValue(&v43, &__p);
    if (v47 > 0x40)
    {
      v23 = *__p;
    }

    else if (v47)
    {
      v23 = (__p << -v47) >> -v47;
    }

    else
    {
      v23 = 0;
    }

    PositiveAxis = mlir::getPositiveAxis(v23, v22);
    if (v47 >= 0x41 && __p)
    {
      v25 = PositiveAxis;
      operator delete[](__p);
      PositiveAxis = v25;
    }

    v26 = v22 + ~PositiveAxis;
    __p = v48;
    v47 = 0x500000000;
    if (v26 >= 1)
    {
      v27 = 0;
      v28 = v22 - PositiveAxis;
      v29 = 1;
      do
      {
        if (v27 >= HIDWORD(v47))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v48, v27 + 1, 4);
          v27 = v47;
        }

        *(__p + v27) = v29;
        v27 = v47 + 1;
        LODWORD(v47) = v47 + 1;
        ++v29;
      }

      while (v28 != v29);
    }

    v45 = v26;
    IntegerType = mlir::Builder::getIntegerType((a1 + 8), 32, 1);
    v31 = mlir::RankedTensorType::get(&v45, 1, IntegerType, 0);
    v32 = mlir::Value::getLoc(&v44);
    if (v31)
    {
      v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    }

    else
    {
      v33 = 0;
    }

    v39 = mlir::DenseElementsAttr::getFromRawBuffer(v31, v33, __p, 4 * v47, 4, 1, 1);
    v45 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a1 + 8), v32, &v39);
    result = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::mps::ConstantOp &>((a1 + 8), Loc, &v44, &v45) - 16;
    if (__p != v48)
    {
      v34 = result;
      free(__p);
      return v34;
    }
  }

  else
  {
    LODWORD(__p) = 0;
    v45 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a1 + 8), Loc, &__p) - 16;
    LODWORD(__p) = 1;
    v39 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a1 + 8), Loc, &__p) - 16);
    LODWORD(__p) = -1;
    v38 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a1 + 8), Loc, &__p) - 16;
    mlir::IntegerAttr::getValue(&v43, &__p);
    if (v47 > 0x40)
    {
      v20 = *__p;
    }

    else if (v47)
    {
      v20 = (__p << -v47) >> -v47;
    }

    else
    {
      LODWORD(v20) = 0;
    }

    LODWORD(v36) = v20;
    v37 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>((a1 + 8), Loc, &v36) - 16;
    if (v47 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    __p = (mlir::OpBuilder::create<mlir::mps::RankOp,mlir::Value &>((a1 + 8), Loc, &v42) - 16);
    v35 = mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::Value &,mlir::Value &>((a1 + 8), Loc, &__p, &v45);
    v36 = mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp,mlir::Value &,mlir::Value &,mlir::Value &>((a1 + 8), Loc, &v35, &v45, &v45, &v39) - 16;
    v35 = mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((a1 + 8), Loc, &v44, &v36) - 16;
    return mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,mlir::Value &,mlir::Value &>((a1 + 8), Loc, &v35, &v38, &v37) - 16;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::mps::CastOp &,mlir::mps::CropOp &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ExpandDimsOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp &,int,int,int>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::CropOp::build(a1, v21, *a3 - 16, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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
  mlir::mps::TransposeOp::build(a1, v19, *a3, *a4, *a5);
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

void mlir::mps::anonymous namespace::LowerDequantizeLUT::~LowerDequantizeLUT(mlir::mps::_anonymous_namespace_::LowerDequantizeLUT *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DequantizeLUTOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DequantizeLUTOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::mps::anonymous namespace::LowerDequantizeLUT::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v203 = *MEMORY[0x1E69E9840];
  v202 = *(a3 + 48);
  v171 = 0;
  v172 = 0;
  v200[0] = v201;
  v200[1] = 0xC00000000;
  v194 = &v171;
  v197 = mlir::ValueRange::dereference_iterator(&v202, 0);
  DefiningOp = mlir::Value::getDefiningOp(&v197);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v194, DefiningOp))
    {
      v8 = mlir::ValueRange::dereference_iterator(&v202, 1);
      if (mlir::matchConstantWithFloatVector<float>(v8, v200))
      {
        v9 = (*(mlir::ValueRange::dereference_iterator(&v202, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v9)
        {
          v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
        }

        else
        {
          v10 = 0;
        }

        v170[0] = v9;
        v170[1] = v10;
        v15 = (*(mlir::ValueRange::dereference_iterator(&v202, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v15)
        {
          v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
        }

        else
        {
          v16 = 0;
        }

        v169[0] = v15;
        v169[1] = v16;
        if (*(a2 + 36))
        {
          v17 = a2 - 16;
        }

        else
        {
          v17 = 0;
        }

        v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v18)
        {
          v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        }

        else
        {
          v19 = 0;
        }

        v167 = v18;
        v168 = v19;
        mlir::CallableOpInterface::getArgAttrsAttr(v170);
        v21 = v20;
        mlir::CallableOpInterface::getArgAttrsAttr(v169);
        v23 = v22;
        Axis = mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::getAxis(a3);
        if (v23 == 1)
        {
          v25 = 1;
          if ((Axis & 0x100000000) != 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ((Axis & 0x100000000) != 0)
          {
            v25 = *(mlir::CallableOpInterface::getArgAttrsAttr(v169) + 8 * (v23 - 1));
          }

          else
          {
            v25 = 1;
          }

          if ((mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::getAxis(a3) & 0x100000000) != 0)
          {
            if (v23 < 3)
            {
LABEL_34:
              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v169);
LABEL_35:
              v160 = *ArgAttrsAttr;
              if (*(a3 + 24))
              {
                v28 = mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::getAxis(a3);
                PositiveAxis = mlir::getPositiveAxis(v28, v21);
              }

              else
              {
                PositiveAxis = v21 - 1;
              }

              v157 = PositiveAxis;
              v30 = ~PositiveAxis;
              if ((mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::getAxis(a3) & 0x100000000) != 0)
              {
                v31 = -2;
              }

              else
              {
                v31 = -1;
              }

              v32 = mlir::CallableOpInterface::getArgAttrsAttr(v170);
              NumElements = mlir::ShapedType::getNumElements(v32, v33);
              v197 = v199;
              v198 = 0xC00000000;
              if (!NumElements)
              {
LABEL_48:
                v164 = v21 + v30;
                v38 = mlir::CallableOpInterface::getArgAttrsAttr(v170);
                v40 = mlir::ShapedType::getNumElements(v38, v39);
                v41 = v40 * v25;
                v194 = v196;
                v195 = 0xC00000000;
                if (!(v40 * v25))
                {
                  goto LABEL_55;
                }

                if (v41 < 0xD)
                {
                  v42 = 0;
                  v43 = v40 * v25;
                  if (!v41)
                  {
LABEL_54:
                    LODWORD(v195) = v41;
LABEL_55:
                    mlir::getIntValues<int>(v171, v172, &v197, 1);
                    v191 = v193;
                    v192 = 0x600000000;
                    v159 = a4;
                    v158 = a2;
                    if (!v21)
                    {
                      v188 = v190;
                      v189 = 0x600000000;
                      v185 = v187;
                      v186 = 0x600000000;
                      v182 = v184;
                      v183 = 0x600000000;
                      v179 = v181;
                      v180 = 0x600000000;
                      v176 = v178;
                      v177 = 0x600000000;
                      v173 = v175;
                      v174 = 0x600000000;
                      goto LABEL_90;
                    }

                    if (v21 < 7)
                    {
                      v44 = 0;
                      v45 = v21;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v193, v21, 8);
                      v44 = v192;
                      v45 = v21 - v192;
                      if (v21 == v192)
                      {
LABEL_62:
                        LODWORD(v192) = v21;
                        v188 = v190;
                        v189 = 0x600000000;
                        if (v21 < 7)
                        {
                          v46 = 0;
                          v47 = v21;
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v188, v190, v21, 8);
                          v46 = v189;
                          v47 = v21 - v189;
                          if (v21 == v189)
                          {
LABEL_67:
                            LODWORD(v189) = v21;
                            v185 = v187;
                            v186 = 0x600000000;
                            if (v21 < 7)
                            {
                              v48 = 0;
                              v49 = v21;
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v185, v187, v21, 8);
                              v48 = v186;
                              v49 = v21 - v186;
                              if (v21 == v186)
                              {
LABEL_72:
                                LODWORD(v186) = v21;
                                v182 = v184;
                                v183 = 0x600000000;
                                if (v21 < 7)
                                {
                                  v50 = 0;
                                  v51 = v21;
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v184, v21, 8);
                                  v50 = v183;
                                  v51 = v21 - v183;
                                  if (v21 == v183)
                                  {
LABEL_77:
                                    LODWORD(v183) = v21;
                                    v179 = v181;
                                    v180 = 0x600000000;
                                    if (v21 < 7)
                                    {
                                      v52 = 0;
                                      v53 = v21;
                                    }

                                    else
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v179, v181, v21, 8);
                                      v52 = v180;
                                      v53 = v21 - v180;
                                      if (v21 == v180)
                                      {
LABEL_82:
                                        LODWORD(v180) = v21;
                                        v176 = v178;
                                        v177 = 0x600000000;
                                        if (v21 < 7)
                                        {
                                          v54 = 0;
                                          v55 = v21;
                                        }

                                        else
                                        {
                                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v21, 8);
                                          v54 = v177;
                                          v55 = v21 - v177;
                                          if (v21 == v177)
                                          {
LABEL_87:
                                            LODWORD(v177) = v21;
                                            v173 = v175;
                                            v174 = 0x600000000;
                                            if (v21 < 7)
                                            {
                                              v56 = 0;
                                              v57 = v21;
                                            }

                                            else
                                            {
                                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v175, v21, 8);
                                              v56 = v174;
                                              v57 = v21 - v174;
                                              if (v21 == v174)
                                              {
                                                LODWORD(v174) = v21;
                                                goto LABEL_94;
                                              }
                                            }

                                            bzero(v173 + 8 * v56, 8 * v57);
                                            LODWORD(v174) = v21;
                                            if (v21 < 1)
                                            {
LABEL_90:
                                              v58 = 0;
                                              v59 = 0;
                                              v60 = v164;
                                              v61 = *(v182 + v164);
                                              if (!v198)
                                              {
                                                goto LABEL_160;
                                              }

LABEL_109:
                                              v85 = 0;
                                              v86 = v58 & v59;
                                              v165 = 4 * v25;
                                              v87 = v21 & 0xFFFFFFFFFFFFFFFELL;
                                              v89 = v25 > 0xB && v61 == 1;
                                              v163 = v89;
                                              v90 = 4 * v61;
                                              while (1)
                                              {
                                                if (!v21)
                                                {
                                                  v92 = 0;
                                                  goto LABEL_136;
                                                }

                                                if (v21 == 1)
                                                {
                                                  break;
                                                }

                                                v94 = 0;
                                                v95 = 0;
                                                v96 = 0;
                                                v97 = v188 + 8;
                                                v98 = v182 + 8;
                                                v99 = v60;
                                                do
                                                {
                                                  if (v99)
                                                  {
                                                    v100 = 1;
                                                  }

                                                  else
                                                  {
                                                    v100 = v25;
                                                  }

                                                  if ((v94 | 1) == v60)
                                                  {
                                                    v101 = v25;
                                                  }

                                                  else
                                                  {
                                                    v101 = 1;
                                                  }

                                                  v95 += *(v97 - 1) * v100 * *(v98 - 1);
                                                  v96 += *v97 * v101 * *v98;
                                                  v94 += 2;
                                                  v97 += 2;
                                                  v98 += 2;
                                                  v99 -= 2;
                                                }

                                                while (v94 != v87);
                                                v92 = v96 + v95;
                                                v93 = v21 & 0xFFFFFFFFFFFFFFFELL;
                                                if (v21 != v87)
                                                {
                                                  goto LABEL_131;
                                                }

LABEL_136:
                                                if (!v86)
                                                {
                                                  v111 = 0;
                                                  goto LABEL_145;
                                                }

                                                if (v21 < 2)
                                                {
                                                  v110 = 0;
                                                  v111 = 0;
LABEL_143:
                                                  v118 = (v176 + 8 * v110);
                                                  v119 = (v173 + 8 * v110);
                                                  v120 = (v188 + 8 * v110);
                                                  v121 = v21 - v110;
                                                  do
                                                  {
                                                    v123 = *v120++;
                                                    v122 = v123;
                                                    v124 = *v119++;
                                                    v125 = v122 / v124;
                                                    v126 = *v118++;
                                                    v111 += v126 * v125;
                                                    --v121;
                                                  }

                                                  while (v121);
                                                  goto LABEL_145;
                                                }

                                                v112 = 0;
                                                v113 = 0;
                                                v114 = (v173 + 8);
                                                v115 = v176 + 8;
                                                v116 = v188 + 8;
                                                v117 = v21 & 0xFFFFFFFFFFFFFFFELL;
                                                do
                                                {
                                                  v112 += *(v115 - 1) * (*(v116 - 1) / *(v114 - 1));
                                                  v113 += *v115 * (*v116 / *v114);
                                                  v114 += 2;
                                                  v115 += 2;
                                                  v116 += 2;
                                                  v117 -= 2;
                                                }

                                                while (v117);
                                                v111 = v113 + v112;
                                                v110 = v21 & 0xFFFFFFFFFFFFFFFELL;
                                                if (v21 != v87)
                                                {
                                                  goto LABEL_143;
                                                }

LABEL_145:
                                                if (v25 >= 1)
                                                {
                                                  v127 = *&v197[4 * v85];
                                                  v128 = v200[0];
                                                  v129 = v194;
                                                  if (v163 && (v194 + 4 * v92 - (v200[0] + v165 * v127) - 4 * v111) >= 0x20)
                                                  {
                                                    v139 = (v200[0] + 4 * v111 + v165 * v127 + 16);
                                                    v140 = v194 + 4 * v92 + 16;
                                                    v141 = v25 & 0x7FFFFFFFFFFFFFF8;
                                                    do
                                                    {
                                                      v142 = *v139;
                                                      *(v140 - 1) = *(v139 - 1);
                                                      *v140 = v142;
                                                      v139 += 2;
                                                      v140 += 2;
                                                      v141 -= 8;
                                                    }

                                                    while (v141);
                                                    v130 = v25 & 0x7FFFFFFFFFFFFFF8;
                                                    if (v25 == (v25 & 0x7FFFFFFFFFFFFFF8))
                                                    {
                                                      goto LABEL_151;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v130 = 0;
                                                  }

                                                  v131 = v25 - v130;
                                                  v132 = &v129[4 * v92 + v90 * v130];
                                                  v133 = &v128[4 * v111 + 4 * v130 + v165 * v127];
                                                  do
                                                  {
                                                    v134 = *v133;
                                                    v133 += 4;
                                                    *v132 = v134;
                                                    v132 += v90;
                                                    --v131;
                                                  }

                                                  while (v131);
                                                }

LABEL_151:
                                                v135 = 0;
                                                if (v59)
                                                {
                                                  v136 = v188;
                                                  v137 = v191;
                                                  do
                                                  {
                                                    v138 = v136[v135] + 1;
                                                    if (v138 < v137[v135])
                                                    {
                                                      v136[v135] = v138;
                                                      goto LABEL_117;
                                                    }

                                                    v136[v135++] = 0;
                                                  }

                                                  while (v21 != v135);
                                                  v135 = v21;
                                                }

LABEL_117:
                                                ++v85;
                                                mlir::CallableOpInterface::getArgAttrsAttr(v170);
                                                if (v91 == v135)
                                                {
                                                  goto LABEL_160;
                                                }
                                              }

                                              v92 = 0;
                                              v93 = 0;
LABEL_131:
                                              v102 = v21 - v93;
                                              v103 = 8 * v93;
                                              v104 = (v188 + v103);
                                              v105 = (v182 + v103);
                                              do
                                              {
                                                v107 = *v104++;
                                                v106 = v107;
                                                if (v157 + 1 == v102)
                                                {
                                                  v108 = v25;
                                                }

                                                else
                                                {
                                                  v108 = 1;
                                                }

                                                v109 = *v105++;
                                                v92 += v106 * v108 * v109;
                                                --v102;
                                              }

                                              while (v102);
                                              goto LABEL_136;
                                            }

LABEL_94:
                                            v62 = 0;
                                            v162 = v31 + v23;
                                            v63 = v23 + v31 - 1;
                                            v64 = -1;
                                            v65 = 1;
                                            v66 = 1;
                                            v161 = v160 * v25;
                                            v67 = v161;
                                            do
                                            {
                                              v69 = mlir::CallableOpInterface::getArgAttrsAttr(v170);
                                              v70 = v191;
                                              *(v191 + v62) = *(v69 + 8 * (v21 + v64));
                                              *(v185 + v62) = v65;
                                              *(v182 + v62) = v66;
                                              v71 = v70[v62];
                                              if (v164 == v62)
                                              {
                                                v72 = v25;
                                              }

                                              else
                                              {
                                                v72 = 1;
                                              }

                                              if (v62 < v162)
                                              {
                                                v68 = *(mlir::CallableOpInterface::getArgAttrsAttr(v169) + 8 * v63);
                                              }

                                              else
                                              {
                                                v68 = 1;
                                              }

                                              v65 *= v71;
                                              *(v179 + v62) = v68;
                                              *(v176 + v62) = v67;
                                              v66 *= v72 * v71;
                                              v67 *= v68;
                                              ++v62;
                                              --v63;
                                              --v64;
                                            }

                                            while (v21 != v62);
                                            v60 = v164;
                                            v61 = *(v182 + v164);
                                            v58 = v67 > v161;
                                            if (v67 <= v161)
                                            {
LABEL_108:
                                              v59 = 1;
                                              if (!v198)
                                              {
LABEL_160:
                                                v143 = mlir::CallableOpInterface::getArgAttrsAttr(&v167);
                                                v145 = v144;
                                                F32Type = mlir::Builder::getF32Type(v159 + 1, v144);
                                                v147 = mlir::RankedTensorType::get(v143, v145, F32Type, 0);
                                                RawElementsAttr = mlir::createRawElementsAttr(v147, v194, 4 * v195);
                                                v166[0] = mlir::rewriteElementsAttr(RawElementsAttr, v149, v167, v168, 0);
                                                v166[1] = v150;
                                                v151 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>((v159 + 1), *(v158 + 24), v166);
                                                (*(*v159 + 1))(v159, v158, v151);
                                                if (v173 != v175)
                                                {
                                                  free(v173);
                                                }

                                                if (v176 != v178)
                                                {
                                                  free(v176);
                                                }

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

                                                if (v188 != v190)
                                                {
                                                  free(v188);
                                                }

                                                if (v191 != v193)
                                                {
                                                  free(v191);
                                                }

                                                if (v194 != v196)
                                                {
                                                  free(v194);
                                                }

                                                if (v197 != v199)
                                                {
                                                  free(v197);
                                                }

                                                v13 = 1;
                                                goto LABEL_10;
                                              }

                                              goto LABEL_109;
                                            }

                                            v73 = v191;
                                            v74 = v179;
                                            v75 = v173;
                                            if (v21 > 3)
                                            {
                                              v76 = 0;
                                              if ((v173 - v191) >= 0x20 && (v173 - v179) >= 0x20)
                                              {
                                                v76 = v21 & 0xFFFFFFFFFFFFFFFCLL;
                                                v152 = (v191 + 16);
                                                v153 = (v179 + 16);
                                                v154 = (v173 + 16);
                                                v155 = v21 & 0xFFFFFFFFFFFFFFFCLL;
                                                do
                                                {
                                                  v156 = vcvtq_s64_f64(vrndpq_f64(vdivq_f64(vcvtq_f64_s64(*v152), vcvtq_f64_s64(*v153))));
                                                  v154[-1] = vcvtq_s64_f64(vrndpq_f64(vdivq_f64(vcvtq_f64_s64(v152[-1]), vcvtq_f64_s64(v153[-1]))));
                                                  *v154 = v156;
                                                  v152 += 2;
                                                  v153 += 2;
                                                  v154 += 2;
                                                  v155 -= 4;
                                                }

                                                while (v155);
                                                if (v21 == v76)
                                                {
                                                  goto LABEL_107;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              v76 = 0;
                                            }

                                            v77 = v21 - v76;
                                            v78 = 8 * v76;
                                            v79 = &v73[v78];
                                            v80 = &v74[v78];
                                            v81 = &v75[v78];
                                            do
                                            {
                                              v82 = *v79++;
                                              v83 = v82;
                                              v84 = *v80++;
                                              *v81 = vcvtpd_s64_f64(v83 / v84);
                                              v81 += 8;
                                              --v77;
                                            }

                                            while (v77);
LABEL_107:
                                            v58 = 1;
                                            goto LABEL_108;
                                          }
                                        }

                                        bzero(v176 + 8 * v54, 8 * v55);
                                        goto LABEL_87;
                                      }
                                    }

                                    bzero(v179 + 8 * v52, 8 * v53);
                                    goto LABEL_82;
                                  }
                                }

                                bzero(v182 + 8 * v50, 8 * v51);
                                goto LABEL_77;
                              }
                            }

                            bzero(v185 + 8 * v48, 8 * v49);
                            goto LABEL_72;
                          }
                        }

                        bzero(v188 + 8 * v46, 8 * v47);
                        goto LABEL_67;
                      }
                    }

                    bzero(v191 + 8 * v44, 8 * v45);
                    goto LABEL_62;
                  }
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v194, v196, v41, 4);
                  v42 = v195;
                  v43 = v41 - v195;
                  if (v41 == v195)
                  {
                    goto LABEL_54;
                  }
                }

                bzero(v194 + 4 * v42, 4 * v43);
                goto LABEL_54;
              }

              v35 = NumElements;
              if (NumElements < 0xD)
              {
                v36 = 0;
                v37 = NumElements;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v197, v199, NumElements, 4);
                v36 = v198;
                v37 = v35 - v198;
                if (v35 == v198)
                {
                  goto LABEL_47;
                }
              }

              bzero(&v197[4 * v36], 4 * v37);
LABEL_47:
              LODWORD(v198) = v35;
              goto LABEL_48;
            }

            v26 = v23 - 2;
LABEL_31:
            ArgAttrsAttr = (mlir::CallableOpInterface::getArgAttrsAttr(v169) + 8 * v26);
            goto LABEL_35;
          }
        }

        v26 = v23 - 1;
        goto LABEL_31;
      }
    }
  }

  v11 = *(a2 + 24);
  v197 = "failed: only DequantizeLUT with constant operands is supported";
  v199[8] = 259;
  v194 = &v197;
  v12 = *(a4 + 16);
  if (v12 && mlir::RewriterBase::Listener::classof(*(a4 + 16)))
  {
    (*(*v12 + 88))(v12, v11, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v194);
  }

  v13 = 0;
LABEL_10:
  if (v200[0] != v201)
  {
    free(v200[0]);
  }

  return v13;
}

uint64_t mlir::matchConstantWithFloatVector<float>(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  if (!a1)
  {
    return 0;
  }

  v22 = &v23;
  v25 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v25);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v22, DefiningOp))
  {
    return 0;
  }

  v21[0] = mlir::CallOpInterface::getArgOperands(&v23);
  v21[1] = v4;
  v5 = *(*mlir::ElementsAttr::isSplat(v21) + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v7 = v6 || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v8 = v7 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v9 = v8 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v10 = v9 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v11 = v10 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v12 = v11 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v13 = v12 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v14 = v13 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v15 = v14 || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v16 = v15 || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v17 = v16 || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v18 = v17 || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  v19 = v18 || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (!v19 && v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  mlir::getFloatValues<float>(v23, v24, a2, 1);
  return 1;
}

float mlir::getIntValues<int>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v91[5] = *MEMORY[0x1E69E9840];
  *&v86 = a1;
  *(&v86 + 1) = a2;
  if (!mlir::ElementsAttr::isSplat(&v86) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v86, *(&v86 + 1));
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
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, NumElements, 4);
        v7 = *(a3 + 8);
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 4 * v7), 4 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  v8 = *a3;
  v89 = v86;
  Type = mlir::ElementsAttr::getType(&v89);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v88[0] = v10;
  v88[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v88);
  v11 = mlir::ElementsAttr::isSplat(&v89);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v89);
  v14 = v13;
  if (!v11 || a4)
  {
    v16 = mlir::ElementsAttr::getNumElements(v89, *(&v89 + 1));
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_31;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      if (v16 >= 2)
      {
        v22 = 0;
        v21 = v16 & 0x7FFFFFFFFFFFFFFELL;
        v23 = v8 + 1;
        do
        {
          if (v11)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          if (v11)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 + 1;
          }

          v26 = *&ElementsAttrRawData[2 * v25];
          *(v23 - 1) = *&ElementsAttrRawData[2 * v24];
          *v23 = v26;
          v23 += 2;
          v22 += 2;
        }

        while (v22 != v21);
        goto LABEL_198;
      }

      goto LABEL_40;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_57;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_64;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_84;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_95;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_102;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_118;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_134;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_150;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_165;
    }

LABEL_167:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v11)
      {
        v63 = 1;
      }

      else
      {
        v63 = v16;
      }

      llvm::SmallVector<char,40u>::SmallVector(v90, v63);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v14, v90[0], v90[1]);
      v64 = v90[0];
      if (v16 >= 1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (v11)
          {
            v66 = 0;
          }

          else
          {
            v66 = i;
          }

          v8[i] = v64[v66];
        }
      }

      if (v64 != v91)
      {
        free(v64);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<int>(ElementsAttrRawData, v14, v8, v16, IntOrFloatBitWidth);
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    v16 = 1;
LABEL_20:
    for (j = 0; j != v16; ++j)
    {
      if (v11)
      {
        v18 = 0;
      }

      else
      {
        v18 = j;
      }

      v8[j] = ElementsAttrRawData[v18];
    }

    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    v16 = 1;
LABEL_31:
    for (k = 0; k != v16; ++k)
    {
      if (v11)
      {
        v20 = 0;
      }

      else
      {
        v20 = k;
      }

      v8[k] = ElementsAttrRawData[v20];
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    v16 = 1;
LABEL_40:
    v21 = 0;
    do
    {
      if (v11)
      {
        v77 = 0;
      }

      else
      {
        v77 = v21;
      }

      v8[v21++] = *&ElementsAttrRawData[2 * v77];
LABEL_198:
      ;
    }

    while (v16 != v21);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    v16 = 1;
LABEL_57:
    if (v16 >= 2)
    {
      v30 = 0;
      v27 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v31 = v8 + 1;
      do
      {
        if (v11)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }

        if (v11)
        {
          v33 = 0;
        }

        else
        {
          v33 = v30 + 1;
        }

        v34 = *&ElementsAttrRawData[2 * v33];
        *(v31 - 1) = *&ElementsAttrRawData[2 * v32];
        *v31 = v34;
        v31 += 2;
        v30 += 2;
      }

      while (v30 != v27);
      goto LABEL_203;
    }

    v27 = 0;
    do
    {
      if (v11)
      {
        v78 = 0;
      }

      else
      {
        v78 = v27;
      }

      v8[v27++] = *&ElementsAttrRawData[2 * v78];
LABEL_203:
      ;
    }

    while (v16 != v27);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    v16 = 1;
LABEL_64:
    for (m = 0; m != v16; ++m)
    {
      if (v11)
      {
        v29 = 0;
      }

      else
      {
        v29 = m;
      }

      v8[m] = *&ElementsAttrRawData[4 * v29];
    }

    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    v16 = 1;
LABEL_84:
    for (n = 0; n != v16; ++n)
    {
      if (v11)
      {
        v36 = 0;
      }

      else
      {
        v36 = n;
      }

      v8[n] = *&ElementsAttrRawData[4 * v36];
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_95:
    if (v16 >= 2)
    {
      v39 = 0;
      v37 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v40 = v8 + 1;
      do
      {
        if (v11)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        if (v11)
        {
          v42 = 0;
        }

        else
        {
          v42 = v39 + 1;
        }

        v43 = *&ElementsAttrRawData[8 * v42];
        *(v40 - 1) = *&ElementsAttrRawData[8 * v41];
        *v40 = v43;
        v40 += 2;
        v39 += 2;
      }

      while (v39 != v37);
      goto LABEL_208;
    }

    v37 = 0;
    do
    {
      if (v11)
      {
        v79 = 0;
      }

      else
      {
        v79 = v37;
      }

      v8[v37++] = *&ElementsAttrRawData[8 * v79];
LABEL_208:
      ;
    }

    while (v16 != v37);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_102:
    if (v16 >= 2)
    {
      v45 = 0;
      v38 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v46 = v8 + 1;
      do
      {
        if (v11)
        {
          v47 = 0;
        }

        else
        {
          v47 = v45;
        }

        if (v11)
        {
          v48 = 0;
        }

        else
        {
          v48 = v45 + 1;
        }

        v49 = *&ElementsAttrRawData[8 * v48];
        *(v46 - 1) = *&ElementsAttrRawData[8 * v47];
        *v46 = v49;
        v46 += 2;
        v45 += 2;
      }

      while (v45 != v38);
      goto LABEL_213;
    }

    v38 = 0;
    do
    {
      if (v11)
      {
        v80 = 0;
      }

      else
      {
        v80 = v38;
      }

      v8[v38++] = *&ElementsAttrRawData[8 * v80];
LABEL_213:
      ;
    }

    while (v16 != v38);
    return *&v15;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    v16 = 1;
LABEL_118:
    if (v16 >= 2)
    {
      v51 = 0;
      v44 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v52 = v8 + 1;
      do
      {
        if (v11)
        {
          v53 = 0;
        }

        else
        {
          v53 = v51;
        }

        if (v11)
        {
          v54 = 0;
        }

        else
        {
          v54 = v51 + 1;
        }

        LOWORD(v15) = *&ElementsAttrRawData[2 * v53];
        v55 = *&ElementsAttrRawData[2 * v54];
        *(v52 - 1) = *&v15;
        *v52 = v55;
        v52 += 2;
        v51 += 2;
      }

      while (v51 != v44);
      goto LABEL_218;
    }

    v44 = 0;
    do
    {
      if (v11)
      {
        v81 = 0;
      }

      else
      {
        v81 = v44;
      }

      LOWORD(v15) = *&ElementsAttrRawData[2 * v81];
      v8[v44++] = *&v15;
LABEL_218:
      ;
    }

    while (v16 != v44);
    return *&v15;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    v16 = 1;
LABEL_134:
    if (v16 >= 2)
    {
      v57 = 0;
      v50 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v58 = v8 + 1;
      do
      {
        if (v11)
        {
          v59 = 0;
        }

        else
        {
          v59 = v57;
        }

        if (v11)
        {
          v60 = 0;
        }

        else
        {
          v60 = v57 + 1;
        }

        LODWORD(v15) = *&ElementsAttrRawData[4 * v59];
        v61 = *&ElementsAttrRawData[4 * v60];
        *(v58 - 1) = *&v15;
        *v58 = v61;
        v58 += 2;
        v57 += 2;
      }

      while (v57 != v50);
      goto LABEL_223;
    }

    v50 = 0;
    do
    {
      if (v11)
      {
        v82 = 0;
      }

      else
      {
        v82 = v50;
      }

      LODWORD(v15) = *&ElementsAttrRawData[4 * v82];
      v8[v50++] = *&v15;
LABEL_223:
      ;
    }

    while (v16 != v50);
    return *&v15;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    v16 = 1;
LABEL_150:
    if (v16 >= 2)
    {
      v67 = 0;
      v56 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v68 = v8 + 1;
      do
      {
        if (v11)
        {
          v69 = 0;
        }

        else
        {
          v69 = v67;
        }

        if (v11)
        {
          v70 = 0;
        }

        else
        {
          v70 = v67 + 1;
        }

        v15 = *&ElementsAttrRawData[8 * v69];
        v71 = *&ElementsAttrRawData[8 * v70];
        *(v68 - 1) = v15;
        *v68 = v71;
        v68 += 2;
        v67 += 2;
      }

      while (v67 != v56);
      goto LABEL_228;
    }

    v56 = 0;
    do
    {
      if (v11)
      {
        v83 = 0;
      }

      else
      {
        v83 = v56;
      }

      v15 = *&ElementsAttrRawData[8 * v83];
      v8[v56++] = v15;
LABEL_228:
      ;
    }

    while (v16 != v56);
    return *&v15;
  }

  v16 = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_167;
  }

LABEL_165:
  if (v16 >= 2)
  {
    v73 = 0;
    v62 = v16 & 0x7FFFFFFFFFFFFFFELL;
    v74 = v8;
    do
    {
      if (v11)
      {
        v75 = 0;
      }

      else
      {
        v75 = v73;
      }

      if (v11)
      {
        v76 = 0;
      }

      else
      {
        v76 = v73 + 1;
      }

      LOWORD(v15) = *&ElementsAttrRawData[2 * v75];
      WORD2(v15) = *&ElementsAttrRawData[2 * v76];
      v15 = COERCE_DOUBLE(vcvt_s32_f32(vshl_n_s32(*&v15, 0x10uLL)));
      *v74++ = v15;
      v73 += 2;
    }

    while (v73 != v62);
    goto LABEL_233;
  }

  v62 = 0;
  do
  {
    if (v11)
    {
      v84 = 0;
    }

    else
    {
      v84 = v62;
    }

    LODWORD(v15) = *&ElementsAttrRawData[2 * v84] << 16;
    v8[v62++] = *&v15;
LABEL_233:
    ;
  }

  while (v16 != v62);
  return *&v15;
}

void mlir::getFloatValues<float>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a1;
  v9 = a2;
  if (!mlir::ElementsAttr::isSplat(&v8) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v8, v9);
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
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, NumElements, 4);
        v7 = *(a3 + 8);
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 4 * v7), 4 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  mlir::copyElementsAttrData<float>(v8, v9, *a3, a4);
}

unsigned __int8 *mlir::detail::unpackQuantizedData<int>(unsigned __int8 *result, unint64_t a2, int *a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      do
      {
        v7 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v8 = (v5 >> 3) + 1;
          if (v8 < a2)
          {
            v7 |= result[v8] << (8 - (v5 & 7));
          }
        }

        *a3++ = v7 & ~(-1 << a5);
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    do
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (v12)
      {
        v13 = *result;
        v14 = vdupq_n_s64(v12 - 1);
        v15 = &a3[v9 * v11];
        v16 = vmovn_s64(vcgeq_u64(v14, xmmword_1E09700F0));
        if (vuzp1_s16(v16, 0).u8[0])
        {
          *v15 = v10 & v13;
        }

        if (vuzp1_s16(v16, 0).i8[2])
        {
          v15[1] = (v13 >> a5) & v10;
        }

        if (vuzp1_s16(0, vmovn_s64(vcgeq_u64(v14, xmmword_1E096E650))).i32[1])
        {
          v15[2] = (v13 >> (2 * a5)) & v10;
          v15[3] = (v13 >> (3 * a5)) & v10;
        }

        if (((v12 + 3) & 0x1C) != 4)
        {
          v17 = vmovn_s64(vcgtq_u64(v14, xmmword_1E0970230));
          if (vuzp1_s16(v17, 0).u8[0])
          {
            v15[4] = (v13 >> (4 * a5)) & v10;
          }

          if (vuzp1_s16(v17, 0).i8[2])
          {
            v15[5] = (v13 >> (5 * a5)) & v10;
          }

          if (vuzp1_s16(0, vmovn_s64(vcgtq_u64(v14, xmmword_1E0971C10))).i32[1])
          {
            v15[6] = (v13 >> (6 * a5)) & v10;
            v15[7] = (v13 >> (7 * a5)) & v10;
          }
        }
      }

      ++v9;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

void mlir::mps::anonymous namespace::LowerDequantizeND::~LowerDequantizeND(mlir::mps::_anonymous_namespace_::LowerDequantizeND *this)
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

uint64_t mlir::mps::anonymous namespace::LowerDequantizeND::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v127 = *MEMORY[0x1E69E9840];
  v109 = a2;
  if (!mlir::mps::DequantizeOp::hasNDParams(&v109))
  {
    return 0;
  }

  v5 = *(v109 + 72);
  v6 = v5[3];
  v7 = v5[7];
  v8 = v5[11];
  v9 = v5[15];
  FunctionType = mlir::func::FuncOp::getFunctionType(&v109);
  v11 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v108[0] = v11;
  v108[1] = v12;
  v13 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v107[0] = v13;
  v107[1] = v14;
  v15 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v106[0] = v15;
  v106[1] = v16;
  v17 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v105[0] = v17;
  v105[1] = v18;
  v19 = *(v109 + 24);
  if (!mlir::CallOpInterface::getArgOperands(v108))
  {
    goto LABEL_36;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v108);
  if (v21)
  {
    v22 = 8 * v21;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_36;
  }

LABEL_19:
  if (!mlir::CallOpInterface::getArgOperands(v107))
  {
    goto LABEL_36;
  }

  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v107);
  if (v24)
  {
    v25 = 8 * v24;
    while (*v23 != 0x8000000000000000)
    {
      ++v23;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_36;
  }

LABEL_24:
  if (!mlir::CallOpInterface::getArgOperands(v106))
  {
    goto LABEL_36;
  }

  v26 = mlir::CallableOpInterface::getArgAttrsAttr(v106);
  if (v27)
  {
    v28 = 8 * v27;
    while (*v26 != 0x8000000000000000)
    {
      ++v26;
      v28 -= 8;
      if (!v28)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_36;
  }

LABEL_29:
  if (!mlir::CallOpInterface::getArgOperands(v105))
  {
LABEL_36:
    v38 = *(v109 + 24);
    v124 = "failed: DequantizeND with dynamic shapes not supported";
    v126[8] = 259;
    v121 = &v124;
    v39 = *(a4 + 16);
    if (v39 && mlir::RewriterBase::Listener::classof(v39))
    {
      (*(*v39 + 88))(v39, v38, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v121);
    }

    return 0;
  }

  v29 = mlir::CallableOpInterface::getArgAttrsAttr(v105);
  if (v30)
  {
    v31 = 8 * v30;
    while (*v29 != 0x8000000000000000)
    {
      ++v29;
      v31 -= 8;
      if (!v31)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_36;
  }

LABEL_34:
  v119 = v32;
  v120 = v19;
  v118 = v34;
  v36 = (*(v32 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v36)
  {
    v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  v116 = v36;
  v117 = v37;
  v42 = (*(v34 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v42)
  {
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
  }

  else
  {
    v43 = 0;
  }

  v114 = v42;
  v115 = v43;
  v44 = mlir::CallableOpInterface::getArgAttrsAttr(&v114);
  if (mlir::ShapedType::getNumElements(v44, v45) == 1)
  {
    v46 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>((a4 + 8), v19, &v119, &v118) - 16;
  }

  else
  {
    v104 = v35;
    v124 = v126;
    v125 = 0x600000000;
    v121 = v123;
    v122 = 0x600000000;
    mlir::CallableOpInterface::getArgAttrsAttr(&v116);
    if (v47)
    {
      for (i = 0; i < v57; ++i)
      {
        v49 = 8 * i;
        v50 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v116) + v49);
        v51 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v114) + v49);
        v52 = v125;
        if (v50 == v51)
        {
          if (v125 >= HIDWORD(v125))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v125 + 1, 8);
            v52 = v125;
          }

          *&v124[8 * v52] = v50;
          LODWORD(v125) = v125 + 1;
          v53 = v122;
          v54 = HIDWORD(v122);
        }

        else
        {
          if (v125 >= HIDWORD(v125))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v125 + 1, 8);
            v52 = v125;
          }

          *&v124[8 * v52] = v51;
          v55 = (v125 + 1);
          LODWORD(v125) = v55;
          if (v55 >= HIDWORD(v125))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v55 + 1, 8);
            LODWORD(v55) = v125;
          }

          *&v124[8 * v55] = v50 / v51;
          LODWORD(v125) = v125 + 1;
          v56 = v122;
          if (v122 >= HIDWORD(v122))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v122 + 1, 8);
            v56 = v122;
          }

          *(v121 + v56) = v51;
          v54 = HIDWORD(v122);
          v53 = v122 + 1;
          LODWORD(v122) = v122 + 1;
          v50 = 1;
        }

        if (v53 >= v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v53 + 1, 8);
          v53 = v122;
        }

        *(v121 + v53) = v50;
        LODWORD(v122) = v122 + 1;
        mlir::CallableOpInterface::getArgAttrsAttr(&v116);
      }
    }

    v112 = a4;
    v113 = &v120;
    v58 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>((a4 + 8), v120, &v111, &v110) - 16;
    v59 = mlir::CallableOpInterface::getArgAttrsAttr(&v116);
    if (v121 != v123)
    {
      free(v121);
    }

    if (v124 != v126)
    {
      free(v124);
    }

    v35 = v104;
  }

  v119 = v46;
  v120 = v19;
  v118 = v33;
  v61 = (*(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v61)
  {
    v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v61 + 8);
  }

  else
  {
    v62 = 0;
  }

  v116 = v61;
  v117 = v62;
  v63 = (*(v33 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v63)
  {
    v64 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
  }

  else
  {
    v64 = 0;
  }

  v114 = v63;
  v115 = v64;
  v65 = mlir::CallableOpInterface::getArgAttrsAttr(&v114);
  if (mlir::ShapedType::getNumElements(v65, v66) == 1)
  {
    v67 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>((a4 + 8), v19, &v119, &v118) - 16;
  }

  else
  {
    v124 = v126;
    v125 = 0x600000000;
    v121 = v123;
    v122 = 0x600000000;
    mlir::CallableOpInterface::getArgAttrsAttr(&v116);
    if (v68)
    {
      for (j = 0; j < v78; ++j)
      {
        v70 = 8 * j;
        v71 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v116) + v70);
        v72 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v114) + v70);
        v73 = v125;
        if (v71 == v72)
        {
          if (v125 >= HIDWORD(v125))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v125 + 1, 8);
            v73 = v125;
          }

          *&v124[8 * v73] = v71;
          LODWORD(v125) = v125 + 1;
          v74 = v122;
          v75 = HIDWORD(v122);
        }

        else
        {
          if (v125 >= HIDWORD(v125))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v125 + 1, 8);
            v73 = v125;
          }

          *&v124[8 * v73] = v72;
          v76 = (v125 + 1);
          LODWORD(v125) = v76;
          if (v76 >= HIDWORD(v125))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v76 + 1, 8);
            LODWORD(v76) = v125;
          }

          *&v124[8 * v76] = v71 / v72;
          LODWORD(v125) = v125 + 1;
          v77 = v122;
          if (v122 >= HIDWORD(v122))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v122 + 1, 8);
            v77 = v122;
          }

          *(v121 + v77) = v72;
          v75 = HIDWORD(v122);
          v74 = v122 + 1;
          LODWORD(v122) = v122 + 1;
          v71 = 1;
        }

        if (v74 >= v75)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v74 + 1, 8);
          v74 = v122;
        }

        *(v121 + v74) = v71;
        LODWORD(v122) = v122 + 1;
        mlir::CallableOpInterface::getArgAttrsAttr(&v116);
      }
    }

    v112 = a4;
    v113 = &v120;
    v79 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>((a4 + 8), v120, &v111, &v110) - 16;
    v80 = mlir::CallableOpInterface::getArgAttrsAttr(&v116);
    if (v121 != v123)
    {
      free(v121);
    }

    if (v124 != v126)
    {
      free(v124);
    }
  }

  v119 = v67;
  v120 = v19;
  v118 = v35;
  v82 = (*(v67 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v82)
  {
    v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
  }

  else
  {
    v83 = 0;
  }

  v116 = v82;
  v117 = v83;
  v84 = (*(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v84)
  {
    v85 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v84 + 8);
  }

  else
  {
    v85 = 0;
  }

  v114 = v84;
  v115 = v85;
  v86 = mlir::CallableOpInterface::getArgAttrsAttr(&v114);
  if (mlir::ShapedType::getNumElements(v86, v87) == 1)
  {
    v88 = (mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>((a4 + 8), v19, &v119, &v118) - 16);
  }

  else
  {
    v124 = v126;
    v125 = 0x600000000;
    v121 = v123;
    v122 = 0x600000000;
    mlir::CallableOpInterface::getArgAttrsAttr(&v116);
    if (v89)
    {
      for (k = 0; k < v99; ++k)
      {
        v91 = 8 * k;
        v92 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v116) + v91);
        v93 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v114) + v91);
        v94 = v125;
        if (v92 == v93)
        {
          if (v125 >= HIDWORD(v125))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v125 + 1, 8);
            v94 = v125;
          }

          *&v124[8 * v94] = v92;
          LODWORD(v125) = v125 + 1;
          v95 = v122;
          v96 = HIDWORD(v122);
        }

        else
        {
          if (v125 >= HIDWORD(v125))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v125 + 1, 8);
            v94 = v125;
          }

          *&v124[8 * v94] = v93;
          v97 = (v125 + 1);
          LODWORD(v125) = v97;
          if (v97 >= HIDWORD(v125))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v97 + 1, 8);
            LODWORD(v97) = v125;
          }

          *&v124[8 * v97] = v92 / v93;
          LODWORD(v125) = v125 + 1;
          v98 = v122;
          if (v122 >= HIDWORD(v122))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v122 + 1, 8);
            v98 = v122;
          }

          *(v121 + v98) = v93;
          v96 = HIDWORD(v122);
          v95 = v122 + 1;
          LODWORD(v122) = v122 + 1;
          v92 = 1;
        }

        if (v95 >= v96)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v95 + 1, 8);
          v95 = v122;
        }

        *(v121 + v95) = v92;
        LODWORD(v122) = v122 + 1;
        mlir::CallableOpInterface::getArgAttrsAttr(&v116);
      }
    }

    v112 = a4;
    v113 = &v120;
    v100 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>((a4 + 8), v120, &v111, &v110) - 16;
    v101 = mlir::CallableOpInterface::getArgAttrsAttr(&v116);
    if (v121 != v123)
    {
      free(v121);
    }

    if (v124 != v126)
    {
      free(v124);
    }
  }

  v103 = v109;
  v121 = v88;
  v40 = 1;
  mlir::ValueRange::ValueRange(&v124, &v121, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, v103, v124, v125);
  return v40;
}

uint64_t mlir::mps::anonymous namespace::LowerDequantizeND::broadcastGrouped<mlir::mps::SubtractOp>(mlir::ConversionPatternRewriter &,mlir::Location,mlir::Value,mlir::Value)const::{lambda(mlir::Value,llvm::ArrayRef<long long>)#1}::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = a2;
  v7 = *a1;
  v8 = *a1[1];
  v17[0] = a4;
  IntegerType = mlir::Builder::getIntegerType(v7 + 1, 64, 1);
  v10 = mlir::RankedTensorType::get(v17, 1, IntegerType, 0);
  if (v10)
  {
    v11 = v10;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  v14 = mlir::DenseElementsAttr::getFromRawBuffer(v10, v12, a3, 8 * a4, 8, 1, 1);
  v15 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((v7 + 1), v8, &v14);
  return mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(*a1 + 1, *a1[1], &v16, &v15) - 16;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, void *a4)
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
  mlir::mps::ReshapeOp::build(a1, v17, *a3, *a4 - 16, 0);
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

void mlir::mps::anonymous namespace::LowerPerAxisDequantize::~LowerPerAxisDequantize(mlir::mps::_anonymous_namespace_::LowerPerAxisDequantize *this)
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

uint64_t mlir::mps::anonymous namespace::LowerPerAxisDequantize::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *(*(a2 + 72) + 24);
  v40 = v6;
  v41 = a2;
  __b = mlir::getElementTypeOrSelf(v6);
  if (*(*__b + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || mlir::Type::getIntOrFloatBitWidth(&__b) != 4 || !*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    return 0;
  }

  v7 = *(a2 + 72);
  v8 = v7[7];
  v9 = v7[11];
  v10 = v7[15];
  v11 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v39[0] = v11;
  v39[1] = v12;
  if ((mlir::CallOpInterface::getArgOperands(v39) & 1) == 0)
  {
    v18 = *(a2 + 24);
    __b = "failed: Dequantize cannot be converted to N-D since input rank is unknown";
    v45[8] = 259;
    v37[0] = &__b;
    v19 = a4[2];
    if (v19 && mlir::RewriterBase::Listener::classof(v19))
    {
      (*(*v19 + 88))(v19, v18, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v37);
    }

    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v39);
  v14 = v13;
  Axis = mlir::mps::DequantizeLUTOp::getAxis(&v41);
  PositiveAxis = mlir::getPositiveAxis(Axis, v14);
  v38 = PositiveAxis;
  __b = v45;
  v44 = 4;
  if (v14 < 5)
  {
    if (v14)
    {
      memset_pattern16(v45, &unk_1E096FAE0, 8 * v14);
    }

    v17 = v45;
  }

  else
  {
    v43 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v45, v14, 8);
    v17 = __b;
    memset_pattern16(__b, &unk_1E096FAE0, 8 * v14);
  }

  v43 = v14;
  *&v17[4 * PositiveAxis] = -1;
  v37[0] = a4;
  v37[1] = &v41;
  v37[2] = &__b;
  v37[3] = &v38;
  v23 = v22;
  v35 = v21;
  v36 = v22;
  v26 = v25;
  v33 = v24;
  v34 = v25;
  result = 0;
  v31 = v28;
  v32 = v27;
  if (v23 & 1) != 0 && (v26 & 1) != 0 && (v27)
  {
    v30 = *(v41 + 16 * ((*(v41 + 44) >> 23) & 1) + 72);
    mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,decltype(nullptr)>(a4, v41, &v40, &v35, &v33, &v31, &v30);
    result = 1;
  }

  if (__b != v45)
  {
    v29 = result;
    free(__b);
    return v29;
  }

  return result;
}

unint64_t mlir::mps::anonymous namespace::LowerPerAxisDequantize::matchAndRewrite(mlir::mps::DequantizeOp,mlir::mps::DequantizeOpAdaptor,mlir::ConversionPatternRewriter &)const::{lambda(mlir::Value)#1}::operator()(void **a1, uint64_t a2)
{
  v2 = a2;
  v38 = a2;
  v4 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v37[0] = v4;
  v37[1] = v5;
  if (mlir::CallOpInterface::getArgOperands(v37))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v37);
    if (v7)
    {
      v8 = 8 * v7;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v9 = mlir::CallableOpInterface::getArgAttrsAttr(v37);
      if (mlir::ShapedType::getNumElements(v9, v10) == 1)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF00;
        return v11 | v2;
      }
    }
  }

  *&v39 = mlir::ElementsAttr::isSplat(v37);
  if (*(*v39 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && mlir::Type::getIntOrFloatBitWidth(&v39) == 4)
  {
    v35 = 0;
    v36 = 0;
    v34[0] = &v35;
    *&v39 = v2;
    DefiningOp = mlir::Value::getDefiningOp(&v39);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v34, DefiningOp) & 1) != 0)
    {
      *(*a1[2] + 8 * *a1[3]) = mlir::ElementsAttr::getNumElements(v35, v36);
      v13 = v35;
      v14 = v36;
      Type = mlir::ElementsAttr::getType(&v35);
      v16 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v34[0] = v16;
      v34[1] = Type;
      v17 = a1[2];
      v18 = *v17;
      v19 = *(v17 + 2);
      *&v39 = v18;
      *(&v39 + 1) = v19;
      v40 = 1;
      isSplat = mlir::ElementsAttr::isSplat(v34);
      v21 = mlir::ShapedType::cloneWith(v34, &v39, isSplat);
      v35 = mlir::reshapeElementsAttr(v13, v14, v21, v22);
      v36 = v23;
      v24 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ElementsAttr>((*a1 + 1), *(*a1[1] + 24), &v35);
      if (*(v24 + 36))
      {
        v25 = v24 - 16;
      }

      else
      {
        v25 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
      LOBYTE(v2) = NextResultAtOffset;
      v11 = NextResultAtOffset & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v31 = *a1;
      v32 = *(*a1[1] + 24);
      *&v39 = "failed: cannot reshape a non-constant quantized value";
      v41 = 259;
      v34[0] = &v39;
      v33 = *(v31 + 16);
      if (v33 && mlir::RewriterBase::Listener::classof(*(v31 + 16)))
      {
        (*(*v33 + 88))(v33, v32, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v34);
      }

      LOBYTE(v2) = 0;
      v11 = 0;
    }
  }

  else
  {
    v27 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,llvm::SmallVector<long long,6u>>(*a1 + 1, *(*a1[1] + 24), &v38, a1[2]);
    if (*(v27 + 36))
    {
      v28 = v27 - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0);
    LOBYTE(v2) = v29;
    v11 = v29 & 0xFFFFFFFFFFFFFF00;
  }

  return v11 | v2;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,decltype(nullptr)>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,decltype(nullptr)>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7);
  (*(*a1 + 1))(a1, a2, v9);
  return v9;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr,decltype(nullptr)>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
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
  mlir::mps::DequantizeOp::build(a1, v23, *a3, *a4, *a5, *a6, *a7, 0);
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

void mlir::mps::anonymous namespace::LowerQuantizedMatmul::~LowerQuantizedMatmul(mlir::mps::_anonymous_namespace_::LowerQuantizedMatmul *this)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::QuantizedMatMulOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::QuantizedMatMulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::mps::anonymous namespace::LowerQuantizedMatmul::convertParamToND(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a2;
  v48[4] = *MEMORY[0x1E69E9840];
  v42 = a2;
  v8 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  __b = v8;
  v47 = v9;
  if (mlir::CallOpInterface::getArgOperands(&__b))
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&__b);
    if (a3 != 1 && v10 == 1)
    {
      v11 = (a3 & (a4 >> 63)) + a4;
      __b = v48;
      HIDWORD(v47) = 4;
      if (a3 < 5)
      {
        if (a3)
        {
          memset_pattern16(v48, &unk_1E096FAE0, 8 * a3);
        }

        v12 = v48;
      }

      else
      {
        LODWORD(v47) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v48, a3, 8);
        v12 = __b;
        memset_pattern16(__b, &unk_1E096FAE0, 8 * a3);
      }

      LODWORD(v47) = a3;
      v12[v11] = -1;
      v40 = 0;
      v41 = 0;
      v39[0] = &v40;
      *&v43 = v6;
      DefiningOp = mlir::Value::getDefiningOp(&v43);
      if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v39, DefiningOp))
      {
        Type = mlir::ElementsAttr::getType(&v40);
        v15 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v39[0] = v15;
        v39[1] = Type;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v39);
        NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v17);
        v19 = __b;
        *(__b + v11) = NumElements;
        v20 = v40;
        v21 = v41;
        *&v43 = v19;
        *(&v43 + 1) = v47;
        v44 = 1;
        isSplat = mlir::ElementsAttr::isSplat(v39);
        v23 = mlir::ShapedType::cloneWith(v39, &v43, isSplat);
        v40 = mlir::reshapeElementsAttr(v20, v21, v23, v24);
        v41 = v25;
        Loc = mlir::Value::getLoc(&v42);
        v27 = (*(v42 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v27)
        {
          v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
        }

        else
        {
          v28 = 0;
        }

        v45[0] = v27;
        v45[1] = v28;
        *&v43 = __b;
        *(&v43 + 1) = v47;
        v44 = 1;
        v36 = mlir::ElementsAttr::isSplat(v45);
        *&v43 = mlir::ShapedType::cloneWith(v45, &v43, v36);
        *(&v43 + 1) = v37;
        v35 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), Loc, &v43, &v40);
      }

      else
      {
        v29 = mlir::Value::getLoc(&v42);
        v45[0] = a3;
        IntegerType = mlir::Builder::getIntegerType((a1 + 8), 64, 1);
        v31 = mlir::RankedTensorType::get(v45, 1, IntegerType, 0);
        if (v31)
        {
          v32 = v31;
          v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
          v31 = v32;
        }

        else
        {
          v33 = 0;
        }

        v39[0] = mlir::DenseElementsAttr::getFromRawBuffer(v31, v33, __b, 8 * v47, 8, 1, 1);
        *&v43 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a1 + 8), v29, v39) - 16;
        v34 = mlir::Value::getLoc(&v42);
        v35 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>((a1 + 8), v34, &v42, &v43);
      }

      v6 = v35 - 16;
      if (__b != v48)
      {
        free(__b);
      }
    }
  }

  return v6;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::QuantizedMatMulOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::IntegerAttr &,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::IntegerAttr &,mlir::Value,mlir::Value &,mlir::Value &,mlir::Type,BOOL,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, unsigned __int8 *a17, unsigned __int8 *a18)
{
  v35[38] = *MEMORY[0x1E69E9840];
  v32 = a2;
  Context = mlir::Attribute::getContext(&v32);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedMatMulOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::QuantizedMatMulOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::IntegerAttr &,mlir::detail::TypedValue<mlir::TensorType>,mlir::Value &,mlir::Value &,mlir::Value &,mlir::IntegerAttr &,mlir::Value,mlir::Value &,mlir::Value &,mlir::Type,BOOL,BOOL>(v35, v34, v33);
  }

  mlir::OperationState::OperationState(v35, a2, v27);
  mlir::mpsx::QuantizedMatMulOp::build(a1, v35, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14, *a15, *a16, *a17, *a18);
  v29 = mlir::OpBuilder::create(a1, v35);
  if (*(*(v29 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedMatMulOp,void>::id)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  mlir::OperationState::~OperationState(v35);
  return v30;
}

void mlir::mps::anonymous namespace::MPS_LowerBiasAddNHWC::~MPS_LowerBiasAddNHWC(mlir::mps::_anonymous_namespace_::MPS_LowerBiasAddNHWC *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::AddOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_LowerBiasAddNHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'data_format' failed to satisfy constraint: 'is NHWC'";
  v13 = 62;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_LowerDegamma::~MPS_LowerDegamma(mlir::mps::_anonymous_namespace_::MPS_LowerDegamma *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::PowerOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PowerOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

uint64_t mlir::mps::getConstantAttr<double>(void *a1, double a2)
{
  v27 = a2;
  v28 = 0;
  if (a1)
  {
    v2 = a1;
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8);
    a1 = v2;
  }

  else
  {
    v3 = 0;
  }

  v26[0] = a1;
  v26[1] = v3;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v25[0] = &v28;
  v25[1] = v26;
  v25[2] = &v27;
  v5 = *(*ElementTypeOrSelf + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    v21 = v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
    if (!ElementTypeOrSelf || v21)
    {
      goto LABEL_58;
    }

LABEL_49:
    mlir::mps::getConstantAttr<double>(mlir::Type,double)::{lambda(mlir::Type)#1}::operator()(v25, ElementTypeOrSelf);
    return v28;
  }

  if (ElementTypeOrSelf)
  {
    goto LABEL_49;
  }

LABEL_58:
  v24[0] = &v28;
  v24[1] = v26;
  v24[2] = &v27;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    mlir::mps::getConstantAttr<double>(mlir::Type,double)::{lambda(mlir::Type)#2}::operator()(v24, ElementTypeOrSelf);
  }

  else
  {
    v23[0] = &v28;
    v23[1] = v26;
    v23[2] = &v27;
    mlir::mps::getConstantAttr<double>(mlir::Type,double)::{lambda(mlir::ComplexType)#1}::operator()(v23, ElementTypeOrSelf);
  }

  return v28;
}

void mlir::mps::getConstantAttr<double>(mlir::Type,double)::{lambda(mlir::Type)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v23 = a2;
  isF16 = mlir::Type::isF16(&v23);
  if (isF16)
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = llvm::APFloatBase::IEEEhalf(isF16);
  }

  else
  {
    isBF16 = mlir::Type::isBF16(&v23);
    if (!isBF16)
    {
      if (mlir::Type::isF32(&v23))
      {
        v15 = *(a1 + 8);
        v16 = **(a1 + 16);
        *&v24 = v16;
        v17 = *v15;
        v18 = v15[1];
        v19 = 4;
        v20 = 4;
      }

      else
      {
        mlir::Type::isF64(&v23);
        v21 = *(a1 + 8);
        v24 = **(a1 + 16);
        v17 = *v21;
        v18 = v21[1];
        v19 = 8;
        v20 = 8;
      }

      **a1 = mlir::DenseElementsAttr::getFromRawBuffer(v17, v18, &v24, v19, v20, 0, 1);
      return;
    }

    v9 = *(a1 + 8);
    v5 = *v9;
    v6 = *(v9 + 8);
    v7 = llvm::APFloatBase::BFloat(isBF16);
  }

  v10 = v7;
  std::to_string(&v22, **(a1 + 16));
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v22;
  }

  else
  {
    v11 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  llvm::APFloat::APFloat(&v24, v10, v11, size);
  v13 = mlir::DenseElementsAttr::get(v5, v6, &v24, 1);
  **a1 = v13;
  v14 = v25[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v13) == v14)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v25);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v25);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }
  }

  operator delete(v22.__r_.__value_.__l.__data_);
}

void mlir::mps::getConstantAttr<double>(mlir::Type,double)::{lambda(mlir::Type)#2}::operator()(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  isInteger = mlir::Type::isInteger(&v11, 1);
  v4 = *(a1 + 8);
  if (isInteger)
  {
    LOBYTE(__p) = **(a1 + 16) != 0.0;
    **a1 = mlir::DenseElementsAttr::get(*v4, v4[1], &__p, 1);
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
    v6 = **(a1 + 16);
    isSignedInteger = mlir::Type::isSignedInteger(&v11);
    v10 = IntOrFloatBitWidth;
    if (IntOrFloatBitWidth > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v6, isSignedInteger);
    }

    else
    {
      v8 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
      if (!IntOrFloatBitWidth)
      {
        v8 = 0;
      }

      __p = (v8 & v6);
    }

    **a1 = mlir::DenseElementsAttr::get(*v4, v4[1], &__p, 1);
    if (v10 >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }
  }
}

void mlir::mps::getConstantAttr<double>(mlir::Type,double)::{lambda(mlir::ComplexType)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v32[3] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Value = mlir::AffineMapAttr::getValue(&v25);
  if (mlir::Type::isF32(&Value))
  {
    v3 = *(a1 + 8);
    v4 = **(a1 + 16);
    *v28 = v4;
    v28[1] = 0;
    **a1 = mlir::DenseElementsAttr::getFromRawBuffer(*v3, v3[1], v28, 8, 8, 0, 1);
    return;
  }

  isF16 = mlir::Type::isF16(&Value);
  v6 = *(a1 + 8);
  _S0 = **(a1 + 16);
  __asm { FCVT            H8, S0 }

  v13 = llvm::APFloatBase::IEEEhalf(isF16);
  __asm { FCVT            S0, H8; __val }

  std::to_string(&v23, _S0);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v23;
  }

  else
  {
    v15 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  llvm::APFloat::APFloat(v28, v13, v15, size);
  std::to_string(&v22, 0.0);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v22;
  }

  else
  {
    v17 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v22.__r_.__value_.__l.__size_;
  }

  v19 = llvm::APFloat::APFloat(v26, v13, v17, v18);
  v20 = v29[0];
  v21 = llvm::APFloatBase::PPCDoubleDouble(v19);
  if (v21 == v20)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v31, v29);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v31, v29);
  }

  if (v21 == v27[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v32, v27);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v32, v27);
  }

  **a1 = mlir::DenseElementsAttr::get(*v6, *(v6 + 8), v30, 1);
  if (v21 == v32[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v32);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v32);
  }

  if (v21 == v31[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v31);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v31);
  }

  if (v21 != v27[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v27);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v27);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_29:
    operator delete(v22.__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (v21 != v29[0])
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v29);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v29);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void mlir::mps::anonymous namespace::MPS_LowerDirac::~MPS_LowerDirac(mlir::mps::_anonymous_namespace_::MPS_LowerDirac *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EqualToOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::EqualToOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::EqualToOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SelectOp,mlir::mps::GreaterThanOp &,mlir::Value &,mlir::mps::LogarithmOp &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

void mlir::mps::anonymous namespace::MPS_LowerElu::~MPS_LowerElu(mlir::mps::_anonymous_namespace_::MPS_LowerElu *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::GreaterThanOrEqualToOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::GreaterThanOrEqualToOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::EqualToOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ExponentOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::Value &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExponentOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

void mlir::mps::anonymous namespace::MPS_LowerFloorDiv::~MPS_LowerFloorDiv(mlir::mps::_anonymous_namespace_::MPS_LowerFloorDiv *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::mps::DivideOp,mlir::Value,mlir::mps::ConstantOp>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::FloorOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::FloorOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

void mlir::mps::anonymous namespace::MPS_LowerGelu::~MPS_LowerGelu(mlir::mps::_anonymous_namespace_::MPS_LowerGelu *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SquareRootOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ErfOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ErfOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ErfOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ErfOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::MultiplyOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

void mlir::mps::anonymous namespace::MPS_LowerInstanceNorm::~MPS_LowerInstanceNorm(mlir::mps::_anonymous_namespace_::MPS_LowerInstanceNorm *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,mlir::UnitAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionMeanOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,mlir::UnitAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,mlir::UnitAttr>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionVarianceOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::NormalizationOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::NormalizationOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::mps::NormalizationOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

void mlir::mps::anonymous namespace::MPS_LowerLPNorm::~MPS_LowerLPNorm(mlir::mps::_anonymous_namespace_::MPS_LowerLPNorm *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::AbsoluteOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AbsoluteOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::AbsoluteOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AbsoluteOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PowerOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PowerOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::Value &,mlir::UnitAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::mps::ConcatOp &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionSumOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReciprocalOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReciprocalOp,mlir::Value>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DivideOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::mps::DivideOp,mlir::Value,mlir::mps::ConstantOp>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

void mlir::mps::anonymous namespace::MPS_LowerLeakyRelu::~MPS_LowerLeakyRelu(mlir::mps::_anonymous_namespace_::MPS_LowerLeakyRelu *this)
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

void mlir::mps::anonymous namespace::MPS_LowerNRelu::~MPS_LowerNRelu(mlir::mps::_anonymous_namespace_::MPS_LowerNRelu *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id)
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

void mlir::mps::anonymous namespace::MPS_LowerNormalization::~MPS_LowerNormalization(mlir::mps::_anonymous_namespace_::MPS_LowerNormalization *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_LowerNormalization::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.normalization' to have attribute 'epsilon' of type '::mlir::FloatAttr'";
  v13 = 87;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_LowerPRelu::~MPS_LowerPRelu(mlir::mps::_anonymous_namespace_::MPS_LowerPRelu *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::Value &,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
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

void mlir::mps::anonymous namespace::MPS_LowerQuantize::~MPS_LowerQuantize(mlir::mps::_anonymous_namespace_::MPS_LowerQuantize *this)
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

uint64_t mlir::mps::anonymous namespace::MPS_LowerQuantize::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_LowerQuantize *this, mlir::Operation *a2, mlir::UnknownLoc **a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v17 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v16[0] = v5;
  v16[1] = v6;
  v15[0] = v5;
  v15[1] = v6;
  v13[1] = v6;
  v14 = 0;
  v12 = 0;
  v13[0] = v5;
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  {
    v7 = *(*(v15[0] + 24) + 8);
    if (*(v14 + 9))
    {
      v8 = v14 - 16;
    }

    else
    {
      v8 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    if (!mlir::mpsx::FPToIntClampedOp::isSupportedForTypes((v7 & 0xFFFFFFFFFFFFFFF8), (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8)))
    {
      v18 = *(*v19 + 24);
      mlir::Builder::getFusedLoc(a3 + 1, &v18, 1, 0);
    }

    v10 = a3[2];
    if (v10 && mlir::RewriterBase::Listener::classof(v10))
    {
    }
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::static_dag_matcher_0(uint64_t a1, mlir::Operation *this, uint64_t *a3, void *a4, void *a5, mlir::Operation **a6, void *a7, uint64_t *a8)
{
  if (*(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id)
  {
    v10 = this;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v19 = *(a1 + 16);
    if (v19 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  *a6 = v10;
  if ((*(v10 + 46) & 0x80) != 0)
  {
    v13 = *(v10 + 9);
  }

  else
  {
    v13 = 0;
  }

  *a5 = v13;
  a5[1] = 1;
  if ((*(v10 + 46) & 0x80) != 0)
  {
    v14 = *(v10 + 9);
  }

  else
  {
    v14 = 0;
  }

  *a7 = v14 + 32;
  a7[1] = 1;
  if ((*(v10 + 46) & 0x80) != 0)
  {
    v15 = *(v10 + 9);
  }

  else
  {
    v15 = 0;
  }

  *a4 = v15 + 64;
  a4[1] = 1;
  if (!*(this + 47) || (v26.var0 = "dtype", v26.var1 = 5, InherentAttr = mlir::Operation::getInherentAttr(this, v26), (v17 & 1) == 0))
  {
    v27.var0 = "dtype";
    v27.var1 = 5;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v27);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      if (mlir::RewriterBase::Listener::classof(*(a1 + 16)))
      {
      }
    }

    return 0;
  }

  *a8 = InherentAttr;
  if (!*(this + 47) || (v28.var0 = "axis", v28.var1 = 4, v21 = mlir::Operation::getInherentAttr(this, v28), (v22 & 1) == 0))
  {
    v29.var0 = "axis";
    v29.var1 = 4;
    v21 = mlir::DictionaryAttr::get((this + 56), v29);
  }

  if (v21)
  {
    if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  *a3 = v23;
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::RoundOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RoundOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::RoundOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::RoundOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

uint64_t mlir::mps::anonymous namespace::getBoundDatatypeValue(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a2;
  if (mlir::Type::isUnsignedInteger(&v16, 8))
  {
    if (a4)
    {
      v6 = 255;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    mlir::Type::isInteger(&v16, 8);
    if (a4)
    {
      v6 = 127;
    }

    else
    {
      v6 = -128;
    }
  }

  v15 = v6;
  v18[0] = 1;
  IntegerType = mlir::Builder::getIntegerType((a1 + 8), 32, 1);
  v8 = mlir::RankedTensorType::get(v18, 1, IntegerType, 0);
  Loc = mlir::Value::getLoc(&v17);
  if (v8)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v10 = 0;
  }

  v14 = mlir::DenseElementsAttr::getFromRawBuffer(v8, v10, &v15, 4, 4, 1, 1);
  v18[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a1 + 8), Loc, &v14);
  v11 = mlir::Value::getLoc(&v17);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v17);
  v14 = mlir::TypeAttr::get(ElementTypeOrSelf);
  return mlir::OpBuilder::create<mlir::mps::CastOp,mlir::mps::ReductionProdOp &,mlir::TypeAttr>((a1 + 8), v11, v18, &v14) - 16;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ClampOp,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ClampOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ClampOp,mlir::Value &,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ClampOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ClampOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::mps::CastOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::mps::QuantizeOp &,mlir::OperandRange &,mlir::TypeAttr &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::mps::QuantizeOp type";
  v13 = 45;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::mps::QuantizeOp &,mlir::OperandRange &,mlir::TypeAttr &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.quantize' to have attribute 'dtype' of type '::mlir::TypeAttr'";
  v13 = 79;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_LowerQuantize::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'input, old' failed to satisfy constraint: 'mpsx dag op for quantize not supported'";
  v13 = 92;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_LowerQuantizeWithMPSXQuantDAG::~MPS_LowerQuantizeWithMPSXQuantDAG(mlir::mps::_anonymous_namespace_::MPS_LowerQuantizeWithMPSXQuantDAG *this)
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

uint64_t mlir::mps::anonymous namespace::MPS_LowerQuantizeWithMPSXQuantDAG::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_LowerQuantizeWithMPSXQuantDAG *this, mlir::Operation *a2, mlir::UnknownLoc **a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v17 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v16[0] = v5;
  v16[1] = v6;
  v15[0] = v5;
  v15[1] = v6;
  v13[1] = v6;
  v14 = 0;
  v12 = 0;
  v13[0] = v5;
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  {
    v7 = *(*(v15[0] + 24) + 8);
    if (*(v14 + 9))
    {
      v8 = v14 - 16;
    }

    else
    {
      v8 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    if (mlir::mpsx::FPToIntClampedOp::isSupportedForTypes((v7 & 0xFFFFFFFFFFFFFFF8), (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8)))
    {
      v18 = *(*v19 + 24);
      mlir::Builder::getFusedLoc(a3 + 1, &v18, 1, 0);
    }

    v10 = a3[2];
    if (v10 && mlir::RewriterBase::Listener::classof(v10))
    {
    }
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::FPToIntClampedOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FPToIntClampedOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::FPToIntClampedOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FPToIntClampedOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_LowerQuantizeWithMPSXQuantDAG::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'input, old' failed to satisfy constraint: 'mpsx dag op for quantize supported'";
  v13 = 88;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_LowerReductionLogSumExp::~MPS_LowerReductionLogSumExp(mlir::mps::_anonymous_namespace_::MPS_LowerReductionLogSumExp *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionMaxOp,mlir::Value &,mlir::Value &,mlir::UnitAttr,mlir::UnitAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionMaxOp,mlir::Value &,mlir::Value &,mlir::UnitAttr,mlir::UnitAttr>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReductionMaxOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::LogarithmOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::LogarithmOp,mlir::mps::AddOp &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

void mlir::mps::anonymous namespace::MPS_LowerRelu::~MPS_LowerRelu(mlir::mps::_anonymous_namespace_::MPS_LowerRelu *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MaximumOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MaximumOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

void mlir::mps::anonymous namespace::MPS_LowerRelu6::~MPS_LowerRelu6(mlir::mps::_anonymous_namespace_::MPS_LowerRelu6 *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReluOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::mps::MatMulOp &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::mps::MinimumOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::Value &,mlir::Value &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

void mlir::mps::anonymous namespace::MPS_LowerReluGrad::~MPS_LowerReluGrad(mlir::mps::_anonymous_namespace_::MPS_LowerReluGrad *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::mps::ConstantOp &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::EqualToOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id)
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

void mlir::mps::anonymous namespace::MPS_LowerSigmoidGradient::~MPS_LowerSigmoidGradient(mlir::mps::_anonymous_namespace_::MPS_LowerSigmoidGradient *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SigmoidOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SigmoidOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

void mlir::mps::anonymous namespace::MPS_LowerSigmoidGradientWithSigmoid::~MPS_LowerSigmoidGradientWithSigmoid(mlir::mps::_anonymous_namespace_::MPS_LowerSigmoidGradientWithSigmoid *this)
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

void mlir::mps::anonymous namespace::MPS_LowerSigmoidHard::~MPS_LowerSigmoidHard(mlir::mps::_anonymous_namespace_::MPS_LowerSigmoidHard *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MaximumOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MaximumOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ATan2Op::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id)
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

void mlir::mps::anonymous namespace::MPS_LowerSoftmax::~MPS_LowerSoftmax(mlir::mps::_anonymous_namespace_::MPS_LowerSoftmax *this)
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

void mlir::mps::anonymous namespace::MPS_LowerSoftsign::~MPS_LowerSoftsign(mlir::mps::_anonymous_namespace_::MPS_LowerSoftsign *this)
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

void mlir::mps::anonymous namespace::MPS_LowerSwish::~MPS_LowerSwish(mlir::mps::_anonymous_namespace_::MPS_LowerSwish *this)
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

void mlir::mps::anonymous namespace::MPS_LowerTruncate::~MPS_LowerTruncate(mlir::mps::_anonymous_namespace_::MPS_LowerTruncate *this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CeilOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CeilOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CeilOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CeilOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

void OUTLINED_FUNCTION_3_11(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 112) = a2;
  *(v2 - 160) = v2 - 144;
  *(v2 - 144) = a1;
}

uint64_t OUTLINED_FUNCTION_4_11()
{
  if (*(v0 + 36))
  {
    return v0 - 16;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_21_7()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = v19;

  return mlir::RankedTensorType::get(&a19, 1, a1, 0);
}

void OUTLINED_FUNCTION_26_6(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a20, v20, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_33_2()
{
  if (*(v0 + 36))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

uint64_t OUTLINED_FUNCTION_39_1()
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

void OUTLINED_FUNCTION_40_1(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a22, v22, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_42_2()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_48_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  mlir::Builder::getFusedLoc((v8 + 8), va, 1, 0);
}

uint64_t OUTLINED_FUNCTION_50_2@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

void OUTLINED_FUNCTION_51_1(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v2, a2 + 1, 8);
}

void OUTLINED_FUNCTION_55_2(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v3, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

uint64_t OUTLINED_FUNCTION_57_2@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a17 = 1;

  return mlir::RankedTensorType::get(&a17, 1, a1, 0);
}

void OUTLINED_FUNCTION_59_1(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = a1;

  mlir::Builder::getFusedLoc((v12 + 8), &a12, 1, 0);
}

void OUTLINED_FUNCTION_60_1(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v2, a2 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_63_0@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

void OUTLINED_FUNCTION_73_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  mlir::Builder::getFusedLoc((v10 + 8), va, 1, 0);
}

void OUTLINED_FUNCTION_76_1(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v2, a2 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return mlir::RankedTensorType::get(va, 1, a3, 0);
}

void OUTLINED_FUNCTION_80_1(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v2, a2 + 1, 8);
}

unint64_t *OUTLINED_FUNCTION_85_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34)
{
  v35 = a33;
  v36 = a34;

  return mlir::ValueRange::ValueRange(&a17, v35, v36);
}

uint64_t OUTLINED_FUNCTION_94_1@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

uint64_t OUTLINED_FUNCTION_96_1()
{
  if (*(v0 + 36))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

unint64_t *OUTLINED_FUNCTION_99_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36)
{
  v37 = a35;
  v38 = a36;

  return mlir::ValueRange::ValueRange(&a19, v37, v38);
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1)
{

  return mlir::detail::OpResultImpl::getNextResultAtOffset(a1, 0);
}

uint64_t OUTLINED_FUNCTION_111_0@<X0>(unsigned int a1@<W8>, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(a2 + 8 * a1) = v20;
  ++a3;

  return mlir::OpBuilder::create<mlir::mps::MultiplyOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((v18 + 8), v19, &a2, &a18, &a8);
}

uint64_t OUTLINED_FUNCTION_112_1@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(a8 + 8 * a1) = v26;
  ++a9;

  return mlir::OpBuilder::create<mlir::mps::AddOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((v24 + 8), v25, &a8, &a24, &a14);
}

void OUTLINED_FUNCTION_113_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = *(**(v22 - 160) + 24);

  mlir::Builder::getFusedLoc((v21 + 8), &a21, 1, 0);
}

uint64_t OUTLINED_FUNCTION_114_1(void *a1, uint64_t a2, uint64_t a3)
{

  return mlir::RankedTensorType::get(a1, 1, a3, 0);
}

void OUTLINED_FUNCTION_115_0(mlir::UnknownLoc **a1, uint64_t **a2)
{

  mlir::Builder::getFusedLoc(a1, a2, 1, 0);
}