uint64_t mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::mps::SquareOp &,mlir::Value &,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, void *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.reduction_sum";
    v19[3] = 17;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::ReductionSumOp::build(a1, v22, *a3 - 16, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v14;
}

void anonymous namespace::ReduceLogSumExpPattern::~ReduceLogSumExpPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionLogSumExpOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionLogSumExpOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_logsumexp";
    v21[3] = 23;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionLogSumExpOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 48) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionLogSumExpOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void anonymous namespace::ReduceLogSumPattern::~ReduceLogSumPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t anonymous namespace::ReduceLogSumPattern::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  v17 = a5;
  v8 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::Value &,BOOL &>(a2, *a6, &v19, &v18, &v17);
  v9 = *a6;
  v20 = *a6;
  Context = mlir::Attribute::getContext(&v20);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v24 = 1283;
    v23[2] = "mps.logarithm";
    v23[3] = 13;
    v22 = 259;
    llvm::operator+(v23, &v21, v25);
    llvm::report_fatal_error(v25, 1);
  }

  mlir::OperationState::OperationState(v26, v9, v11);
  mlir::mps::ACosOp::build(a2, v26, v8 - 16);
  v13 = mlir::OpBuilder::create(a2, v26);
  v14 = *(*(v13 + 48) + 16);
  v15 = v13 - 16;
  mlir::OperationState::~OperationState(v26);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id)
  {
    return v15;
  }

  else
  {
    return -16;
  }
}

void anonymous namespace::ReduceMaxPattern::~ReduceMaxPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionMaxOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_max";
    v21[3] = 17;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionMaxOp::build(a2, v24, a3, a4, a5, 0);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 48) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void anonymous namespace::ReduceMeanPattern::~ReduceMeanPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionMeanOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_mean";
    v21[3] = 18;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionMeanOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 48) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void anonymous namespace::ReduceMinPattern::~ReduceMinPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionMinOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_min";
    v21[3] = 17;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionMinOp::build(a2, v24, a3, a4, a5, 0);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 48) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void anonymous namespace::ReduceProdPattern::~ReduceProdPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionProdOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_prod";
    v21[3] = 18;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionProdOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 48) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void anonymous namespace::ReduceSumPattern::~ReduceSumPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionSumOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6)
{
  v9 = a3;
  v8 = a4;
  v7 = a5;
  return mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::Value &,BOOL &>(a2, *a6, &v9, &v8, &v7) - 16;
}

void anonymous namespace::ReduceSumSquarePattern::~ReduceSumSquarePattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t anonymous namespace::ReduceSumSquarePattern::lower(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6)
{
  v11 = a4;
  v12 = a3;
  v10 = a5;
  v9 = mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value &>(a2, *a6, &v12);
  return mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::mps::SquareOp &,mlir::Value &,BOOL &>(a2, *a6, &v9, &v11, &v10) - 16;
}

void anonymous namespace::ReshapePattern::~ReshapePattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::ReshapePattern::matchAndRewrite(_anonymous_namespace_::ReshapePattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  v19 = 0;
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  HIBYTE(v18) = 5;
  strcpy(&__p, "shape");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    HIBYTE(v18) = 1;
    LOWORD(__p) = 120;
    ParameterType = MIL::IROperation::GetParameterType();
    v8 = MIL::IRValueType::AsTensorType(ParameterType);
    v9 = (*(*v8 + 96))(v8);
    v10 = v9[1];
    if (v10 != *v9)
    {
      if (((v10 - *v9) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v11 = MIL::IRValue::AsTensor(ParameterValue);
    MEMORY[0x1E12E5220](&__p, v11);
    v12 = MIL::IRValue::AsTensor(ParameterValue);
    MEMORY[0x1E12E5230](v16, v12);
    v13 = MIL::IRValue::AsTensor(ParameterValue);
    MEMORY[0x1E12E5210](v15, v13);
    if (__p == 1)
    {
      if (*(&v18 + 1))
      {
        operator new();
      }
    }

    else if (LOBYTE(v16[0]) == 1)
    {
      if (v16[2])
      {
        operator new();
      }
    }

    else if (LOBYTE(v15[0]) == 1 && v15[2])
    {
      operator new();
    }
  }

  if (!v19)
  {
    v19 = MILToMLIRRewriter::getArgValue(a3, a2, "shape");
    __p = mlir::getElementTypeOrSelf(v19);
    if (!mlir::Type::isSignedInteger(&__p, 32))
    {
      IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
      __p = mlir::TypeAttr::get(IntegerType);
      v19 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v19, &__p) - 16;
    }
  }

  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &ArgValue, &v19);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068650C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v34)
  {
    operator delete(v34);
  }

  operator delete(v33);
  if (!a13)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void anonymous namespace::SpaceToBatchPattern::~SpaceToBatchPattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::SpaceToBatchPattern::matchAndRewrite(_anonymous_namespace_::SpaceToBatchPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v91[1] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v87 = MILToMLIRRewriter::getArgValue(a3, a2, "block_shape");
  v5 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v85, v5);
  HIBYTE(v90[0]) = 8;
  strcpy(&__s2, "paddings");
  v6 = v86[0];
  if (!v86[0])
  {
    goto LABEL_35;
  }

  v7 = v86;
  do
  {
    v8 = v7;
    v9 = (v6 + 32);
    v10 = *(v6 + 55);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v6 + 40);
    }

    if (v11 >= 0)
    {
      v12 = (v6 + 32);
    }

    else
    {
      v12 = *(v6 + 32);
    }

    if (v10 >= 8)
    {
      v13 = 8;
    }

    else
    {
      v13 = v10;
    }

    v14 = v10 < 8;
    v15 = memcmp(v12, &__s2, v13);
    v16 = v15 < 0;
    if (!v15)
    {
      v16 = v14;
    }

    if (v16)
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v7 = v8;
    }

    else
    {
      v7 = v6;
    }

    v6 = *(v6 + v17);
  }

  while (v6);
  if (v7 == v86)
  {
    goto LABEL_35;
  }

  if (v16)
  {
    v18 = (v8 + 4);
  }

  else
  {
    v18 = v9;
  }

  v19 = *(v7 + 55);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = v7[5];
  }

  if (v20 >= 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = *v18;
  }

  if (v19 >= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = v19;
  }

  v23 = v19 > 8;
  v24 = memcmp(&__s2, v21, v22);
  v25 = v24 < 0;
  if (!v24)
  {
    v25 = v23;
  }

  if (v25)
  {
LABEL_35:
    operator new();
  }

  if (v7[8] - v7[7] != 16)
  {
    operator new();
  }

  HIBYTE(v90[0]) = 8;
  strcpy(&__s2, "paddings");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v90[0]) < 0)
  {
    v27 = ParameterValue;
    operator delete(__s2);
    ParameterValue = v27;
  }

  (*(*ParameterValue + 40))(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>();
  v30 = v29;
  HIBYTE(v90[0]) = 11;
  strcpy(&__s2, "block_shape");
  v31 = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v90[0]) < 0)
  {
    v32 = v31;
    operator delete(__s2);
    v31 = v32;
  }

  (*(*v31 + 40))(v31);
  MIL::IRTensorValue::GetDataView<int>();
  v34 = v33;
  HIBYTE(v90[0]) = 1;
  LOWORD(__s2) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  v36 = MIL::IRValueType::AsTensorType(ParameterType);
  v37 = MIL::IRTensorValueType::Rank(v36);
  if (SHIBYTE(v90[0]) < 0)
  {
    operator delete(__s2);
    v38 = (2 * v34);
    if (v30 == v38)
    {
LABEL_43:
      v90[2] = v91;
      v91[0] = v34;
      v90[3] = 0x100000001;
      *&__s2 = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
      Context = mlir::Attribute::getContext(&__s2);
      v40 = mlir::IntegerType::get(Context, 32, 1u);
      v41 = mlir::RankedTensorType::get(v91, 1, v40, 0);
      v42 = v41;
      if (v41)
      {
        v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
        v83 = v42;
        v84 = v43;
        if (v34 << 32)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v83 = 0;
        v84 = 0;
        if (v34 << 32)
        {
LABEL_45:
          if (!(v34 >> 62))
          {
            operator new();
          }

          std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
        }
      }

      if (v34)
      {
        if (v34 <= 7uLL)
        {
          v44 = 0;
LABEL_57:
          v53 = v34 - v44;
          v54 = (4 * v44);
          v55 = v44 - v34;
          do
          {
            *v54++ = v55++;
            --v53;
          }

          while (v53);
          goto LABEL_59;
        }

        v44 = v34 - (v34 & 7);
        v45 = vdupq_n_s64(v34);
        v46 = xmmword_1E096E650;
        v47 = xmmword_1E09700F0;
        v48 = 16;
        v49.i64[0] = 0x400000004;
        v49.i64[1] = 0x400000004;
        v50 = vdupq_n_s64(8uLL);
        v51 = v44;
        do
        {
          v52 = vuzp1q_s32(vsubq_s64(v47, v45), vsubq_s64(v46, v45));
          *(v48 - 16) = v52;
          *v48 = vaddq_s32(v52, v49);
          v46 = vaddq_s64(v46, v50);
          v47 = vaddq_s64(v47, v50);
          v48 += 32;
          v51 -= 8;
        }

        while (v51);
        if ((v34 & 7) != 0)
        {
          goto LABEL_57;
        }
      }

LABEL_59:
      *&__s2 = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
      v56 = mlir::Attribute::getContext(&__s2);
      v57 = mlir::IntegerType::get(v56, 32, 1u);
      v58 = mlir::RankedTensorType::get(0, 0, v57, 0);
      v90[0] = v37;
      v90[1] = 2;
      *&__s2 = v90;
      *(&__s2 + 1) = 0x200000002;
      v80.__begin_ = (*(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8);
      v59 = mlir::Attribute::getContext(&v80);
      v60 = mlir::IntegerType::get(v59, 32, 1u);
      v61 = mlir::RankedTensorType::get(v90, 2, v60, 0);
      v62 = v61;
      if (v61)
      {
        v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v61 + 8);
        v81 = v62;
        v82 = v63;
        memset(&v80, 0, sizeof(v80));
        __x[0] = 0;
        if (!v37)
        {
LABEL_64:
          if (v34 >= 1)
          {
            v64 = 0;
            v65 = 0;
            v66 = 2 * (v37 - v34);
            if (v37 <= 0)
            {
              v66 = 0;
            }

            begin = v80.__begin_;
            v68 = &v80.__begin_[v66];
            do
            {
              while (1)
              {
                v69 = *(Data + 4 * v64);
                if (v69 <= 0)
                {
                  break;
                }

                v68[v64] = v69;
                v65 = 1;
                if (v38 - 1 == v64++)
                {
                  goto LABEL_75;
                }
              }

              ++v64;
            }

            while (v38 != v64);
            if (v65)
            {
LABEL_75:
              v79 = mlir::DenseElementsAttr::getFromRawBuffer(v81, v82, begin, v80.__end_ - begin, 4, 1, 1);
              v78 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &v81, &v79) - 16;
              ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
              *__x = 1;
              v72 = mlir::RankedTensorType::get(__x, 1, ElementTypeOrSelf, 0);
              *__x = mlir::mps::getConstantAttr<int>(v72, 0);
              v77 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __x);
              __x[0] = 0;
              ArgValue = mlir::OpBuilder::create<mlir::mps::PadOp,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::PaddingMode>(a3 + 23, LocationForOp, &ArgValue, &v78, &v77, __x) - 16;
            }
          }

          v79 = mlir::DenseElementsAttr::getFromRawBuffer(v83, v84, 0, 0, 4, 1, 1);
          v78 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &v83, &v79) - 16;
          if (v58)
          {
            v73 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
          }

          else
          {
            v73 = 0;
          }

          v76 = 0;
          *__x = mlir::DenseElementsAttr::getFromRawBuffer(v58, v73, &v76, 4, 4, 1, 1);
          v77 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __x) - 16;
          LOBYTE(__x[0]) = 0;
          mlir::OpBuilder::create<mlir::mps::SpaceToBatchOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v78, &v77, &v87, __x);
          if ((*(*a2 + 192))(a2) == 1)
          {
            (*(*a2 + 200))(__x, a2);
            MILToMLIRRewriter::setValue();
          }

          operator new();
        }
      }

      else
      {
        v81 = 0;
        v82 = 0;
        memset(&v80, 0, sizeof(v80));
        __x[0] = 0;
        if (!v37)
        {
          goto LABEL_64;
        }
      }

      std::vector<int>::__append(&v80, 2 * v37, __x);
      goto LABEL_64;
    }
  }

  else
  {
    v38 = (2 * v34);
    if (v30 == v38)
    {
      goto LABEL_43;
    }
  }

  operator new();
}

void sub_1E06870D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, char *a31)
{
  if (__p)
  {
    operator delete(__p);
    v34 = *(v33 - 152);
    if (v34 != a11)
    {
LABEL_8:
      free(v34);
      if (v32)
      {
LABEL_9:
        operator delete(v32);
        v35 = *(v33 - 120);
        if (v35 != v31)
        {
LABEL_10:
          free(v35);
          std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a30, a31);
          _Unwind_Resume(a1);
        }

LABEL_11:
        std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a30, a31);
        _Unwind_Resume(a1);
      }

LABEL_4:
      v35 = *(v33 - 120);
      if (v35 != v31)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v34 = *(v33 - 152);
    if (v34 != a11)
    {
      goto LABEL_8;
    }
  }

  if (v32)
  {
    goto LABEL_9;
  }

  goto LABEL_4;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PadOp,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::PaddingMode>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, unsigned int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.pad";
    v21[3] = 7;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::PadOp::build(a1, v24, *a3, *a4, *a5 - 16, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v16;
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = &end[__n];
      v11 = *__x;
      v12 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &end[v13 & 0x7FFFFFFFFFFFFFF8];
      v15 = vdupq_n_s32(v11);
      v16 = (end + 4);
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      end = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *end++ = v11;
        }

        while (end != v10);
      }

      end = v10;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = v6 + __n;
    if ((v6 + __n) >> 62)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = 4 * v6;
    v19 = (4 * v6 + 4 * __n);
    v20 = *__x;
    v21 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = (4 * v6);
    if (v21 < 7)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
    v24 = vdupq_n_s32(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    begin = this->__begin_;
    v28 = this->__end_ - this->__begin_;
    v29 = (v18 - v28);
    memcpy((v18 - v28), this->__begin_, v28);
    this->__begin_ = v29;
    this->__end_ = v19;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void anonymous namespace::SqueezePattern::~SqueezePattern(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::SqueezePattern::matchAndRewrite(_anonymous_namespace_::SqueezePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "axes");
  v11 = OptionalArgValue;
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    if (OptionalArgValue)
    {
      mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v11);
    }

    else
    {
      v12 = LocationForOp;
      Context = mlir::Attribute::getContext(&v12);
      v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, Context);
      if ((v9 & 1) == 0)
      {
        v16 = 1283;
        v15[2] = "mps.squeeze";
        v15[3] = 11;
        v14 = 259;
        llvm::operator+(v15, &v13, v17);
        llvm::report_fatal_error(v17, 1);
      }

      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::SqueezeOp::build((a3 + 23), __p, &ArgValue, 1uLL, 0, 0);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
    }

    (*(*a2 + 200))(__p, a2);
    operator new();
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter0::~GeneratedRewriter0(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter0::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter0 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v16 = ArgValue;
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v17 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v14 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v15, __p);
    v8 = mlir::OpBuilder::create<mlir::mps::LeakyReluOp,mlir::Value &,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v16, &v14);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v17, __p);
    v18 = LocationForOp;
    Context = mlir::Attribute::getContext(&v18);
    v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id, Context);
    if (v13)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v12);
      mlir::mps::ATan2Op::build(a3 + 23, __p, v8 - 16, v10 - 16);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v22 = 1283;
    v21[2] = "mps.minimum";
    v21[3] = 11;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  operator new();
}

uint64_t mlir::OpBuilder::create<mlir::mps::LeakyReluOp,mlir::Value &,mlir::mps::CastOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LeakyReluOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.leaky_relu";
    v17[3] = 14;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LeakyReluOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void anonymous namespace::GeneratedRewriter1::~GeneratedRewriter1(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter1::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter1 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v12 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v12, __p);
    v13 = LocationForOp;
    Context = mlir::Attribute::getContext(&v13);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EluOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::ATan2Op::build(a3 + 23, __p, ArgValue, v8 - 16);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v17 = 1283;
    v16[2] = "mps.elu";
    v16[3] = 7;
    v15 = 259;
    llvm::operator+(v16, &v14, v18);
    llvm::report_fatal_error(v18, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter2::~GeneratedRewriter2(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter2::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter2 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ErfOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0688808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ErfOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ErfOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.erf";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ErfOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter3::~GeneratedRewriter3(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter3::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter3 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v11 = ArgValue;
  v10 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v10, &__p);
    mlir::OpBuilder::create<mlir::mps::LeakyReluOp,mlir::Value &,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v11, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0688CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter4::~GeneratedRewriter4(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter4::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter4 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v16 = ArgValue;
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v17 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v14 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v15, __p);
    v8 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v16, &v14);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v17, __p);
    v18 = LocationForOp;
    Context = mlir::Attribute::getContext(&v18);
    v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
    if (v13)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v12);
      mlir::mps::ATan2Op::build(a3 + 23, __p, v8 - 16, v10 - 16);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v22 = 1283;
    v21[2] = "mps.add";
    v21[3] = 7;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  operator new();
}

uint64_t mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::CastOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.multiply";
    v17[3] = 12;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void anonymous namespace::GeneratedRewriter5::~GeneratedRewriter5(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter5::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter5 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0689684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.relu";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter6::~GeneratedRewriter6(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter6::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter6 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v10 = LocationForOp;
    Context = mlir::Attribute::getContext(&v10);
    v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Relu6Op,void>::id, Context);
    if (v9)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::ACosOp::build((a3 + 23), __p, ArgValue);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v14 = 1283;
    v13[2] = "mps.relu6";
    v13[3] = 9;
    v12 = 259;
    llvm::operator+(v13, &v11, v15);
    llvm::report_fatal_error(v15, 1);
  }

  operator new();
}

void sub_1E0689C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E0689C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter7::~GeneratedRewriter7(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter7::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter7 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v17 = ArgValue;
  v16 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v18 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v15 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v18, __p);
    v14 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v17, &v15);
    v8 = mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::mps::MultiplyOp &>((a3 + 23), LocationForOp, &v14);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v16, __p);
    v19 = LocationForOp;
    Context = mlir::Attribute::getContext(&v19);
    v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, Context);
    if (v13)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v12);
      mlir::mps::ATan2Op::build(a3 + 23, __p, v8 - 16, v10 - 16);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v23 = 1283;
    v22[2] = "mps.multiply";
    v22[3] = 12;
    v21 = 259;
    llvm::operator+(v22, &v20, v24);
    llvm::report_fatal_error(v24, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter8::~GeneratedRewriter8(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter8::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter8 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068A468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.sigmoid";
    v15[3] = 11;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter9::~GeneratedRewriter9(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter9::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter9 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v14 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v14, __p);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v15, __p);
    v16 = LocationForOp;
    Context = mlir::Attribute::getContext(&v16);
    v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SigmoidHardOp,void>::id, Context);
    if (v13)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v12);
      mlir::mps::ClampOp::build((a3 + 23), __p, ArgValue, v8 - 16, v10 - 16);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v20 = 1283;
    v19[2] = "mps.sigmoid_hard";
    v19[3] = 16;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter10::~GeneratedRewriter10(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter10::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter10 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v10 = LocationForOp;
    Context = mlir::Attribute::getContext(&v10);
    v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SwishOp,void>::id, Context);
    if (v9)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::ACosOp::build((a3 + 23), __p, ArgValue);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v14 = 1283;
    v13[2] = "mps.swish";
    v13[3] = 9;
    v12 = 259;
    llvm::operator+(v13, &v11, v15);
    llvm::report_fatal_error(v15, 1);
  }

  operator new();
}

void sub_1E068AEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E068AEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter11::~GeneratedRewriter11(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter11::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter11 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v11 = LocationForOp;
    Context = mlir::Attribute::getContext(&v11);
    v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id, Context);
    if (v10)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v9);
      mlir::mps::SoftmaxOp::build((a3 + 23), __p, ArgValue, v7);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v15 = 1283;
    v14[2] = "mps.softmax";
    v14[3] = 11;
    v13 = 259;
    llvm::operator+(v14, &v12, v16);
    llvm::report_fatal_error(v16, 1);
  }

  operator new();
}

void sub_1E068B344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E068B360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter12::~GeneratedRewriter12(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter12::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter12 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SoftplusOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068B688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter13::~GeneratedRewriter13(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter13::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter13 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v19 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v20 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v19, __p);
    v9 = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(v9);
    v10 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v20, __p);
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v11);
    v13 = mlir::IntegerType::get(a3[23], 32, 1u);
    v14 = mlir::RankedTensorType::get(0, 0, v13, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v14, 1);
    v15 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
    v21 = LocationForOp;
    Context = mlir::Attribute::getContext(&v21);
    v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftplusParametricOp,void>::id, Context);
    if (v18)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v17);
      mlir::mps::LPNormOp::build((a3 + 23), __p, ArgValue, v8 - 16, v10 - 16, v15 - 16);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v25 = 1283;
    v24[2] = "mps.softplus_parametric";
    v24[3] = 23;
    v23 = 259;
    llvm::operator+(v24, &v22, v26);
    llvm::report_fatal_error(v26, 1);
  }

  operator new();
}

void sub_1E068BBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E068BBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  operator delete(v28);
  std::vector<std::string>::~vector[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter14::~GeneratedRewriter14(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter14::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter14 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v10 = LocationForOp;
    Context = mlir::Attribute::getContext(&v10);
    v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftsignOp,void>::id, Context);
    if (v9)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::ACosOp::build((a3 + 23), __p, ArgValue);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v14 = 1283;
    v13[2] = "mps.softsign";
    v13[3] = 12;
    v12 = 259;
    llvm::operator+(v13, &v11, v15);
    llvm::report_fatal_error(v15, 1);
  }

  operator new();
}

void sub_1E068C008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E068C024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter15::~GeneratedRewriter15(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter15::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter15 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v25 = ArgValue;
  v24 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
    __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
    v8 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v24, __p);
    v26 = LocationForOp;
    Context = mlir::Attribute::getContext(&v26);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::EqualToOp::build((a3 + 23), __p, ArgValue, v8 - 16);
      v12 = mlir::OpBuilder::create((a3 + 23), __p);
      v13 = *(*(v12 + 48) + 16);
      mlir::OperationState::~OperationState(__p);
      v14 = mlir::getElementTypeOrSelf(ArgValue);
      v15 = mlir::TypeAttr::get(v14);
      v26 = LocationForOp;
      v16 = mlir::Attribute::getContext(&v26);
      v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, v16);
      if (v18)
      {
        if (v13 == &mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id)
        {
          v19 = v12;
        }

        else
        {
          v19 = 0;
        }

        mlir::OperationState::OperationState(__p, LocationForOp, v17);
        mlir::mps::CastOp::build(a3 + 23, __p, v19 - 16, v15);
        v20 = mlir::OpBuilder::create((a3 + 23), __p);
        v21 = *(*(v20 + 48) + 16);
        mlir::OperationState::~OperationState(__p);
        if (v21 == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::CastOp &,mlir::Value &>(a3 + 23, LocationForOp, &v23, &v25);
        (*(*a2 + 200))(__p, a2);
        operator new();
      }

      v32 = 1283;
      v30 = "mps.cast";
      v31 = 8;
      v28 = 259;
      llvm::operator+(v29, v27, v33);
      llvm::report_fatal_error(v33, 1);
    }

    v32 = 1283;
    v30 = "mps.greater_equal";
    v31 = 17;
    v28 = 259;
    llvm::operator+(v29, v27, v33);
    llvm::report_fatal_error(v33, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter16::~GeneratedRewriter16(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter16::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter16 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068C910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter17::~GeneratedRewriter17(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter17::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter17 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068CC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter18::~GeneratedRewriter18(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter18::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter18 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::EqualToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068CFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter19::~GeneratedRewriter19(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter19::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter19 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068D33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter20::~GeneratedRewriter20(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter20::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter20 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::PowerOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068D6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter21::~GeneratedRewriter21(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter21::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter21 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::MinimumOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068DA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter22::~GeneratedRewriter22(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter22::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter22 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::MaximumOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068DD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter23::~GeneratedRewriter23(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter23::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter23 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ModuloOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068E0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter24::~GeneratedRewriter24(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter24::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter24 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::DivideOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068E430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter25::~GeneratedRewriter25(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter25::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter25 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::GreaterThanOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068E794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter26::~GeneratedRewriter26(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter26::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter26 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::GreaterThanOrEqualToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068EAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter27::~GeneratedRewriter27(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter27::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter27 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068EE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter28::~GeneratedRewriter28(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter28::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter28 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::LessThanOrEqualToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068F1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::LessThanOrEqualToOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LessThanOrEqualToOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.less_equal";
    v17[3] = 14;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::EqualToOp::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LessThanOrEqualToOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void anonymous namespace::GeneratedRewriter29::~GeneratedRewriter29(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter29::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter29 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v13 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v6 = mlir::OpBuilder::create<mlir::mps::AndOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v13);
    v7 = mlir::IntegerType::get(a3[23], 1, 0);
    v8 = mlir::TypeAttr::get(v7);
    v14 = LocationForOp;
    Context = mlir::Attribute::getContext(&v14);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::CastOp::build(a3 + 23, __p, v6 - 16, v8);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v18 = 1283;
    v17[2] = "mps.cast";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  operator new();
}

uint64_t mlir::OpBuilder::create<mlir::mps::AndOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AndOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.and";
    v17[3] = 7;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AndOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void anonymous namespace::GeneratedRewriter30::~GeneratedRewriter30(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter30::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter30 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::NonZeroOp,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E068FC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::NonZeroOp,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NonZeroOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.non_zero";
    v15[3] = 12;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::NonZeroOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NonZeroOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter31::~GeneratedRewriter31(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter31::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter31 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::NotEqualToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069011C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter32::~GeneratedRewriter32(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter32::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter32 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v13 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v6 = mlir::OpBuilder::create<mlir::mps::OrOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v13);
    v7 = mlir::IntegerType::get(a3[23], 1, 0);
    v8 = mlir::TypeAttr::get(v7);
    v14 = LocationForOp;
    Context = mlir::Attribute::getContext(&v14);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::CastOp::build(a3 + 23, __p, v6 - 16, v8);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v18 = 1283;
    v17[2] = "mps.cast";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  operator new();
}

uint64_t mlir::OpBuilder::create<mlir::mps::OrOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::OrOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.or";
    v17[3] = 6;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::OrOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void anonymous namespace::GeneratedRewriter33::~GeneratedRewriter33(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter33::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter33 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v13 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v6 = mlir::OpBuilder::create<mlir::mps::XorOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &ArgValue, &v13);
    v7 = mlir::IntegerType::get(a3[23], 1, 0);
    v8 = mlir::TypeAttr::get(v7);
    v14 = LocationForOp;
    Context = mlir::Attribute::getContext(&v14);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
    if (v11)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v10);
      mlir::mps::CastOp::build(a3 + 23, __p, v6 - 16, v8);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v18 = 1283;
    v17[2] = "mps.cast";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  operator new();
}

uint64_t mlir::OpBuilder::create<mlir::mps::XorOp,mlir::Value &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::XorOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.xor";
    v17[3] = 7;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::XorOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void anonymous namespace::GeneratedRewriter34::~GeneratedRewriter34(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter34::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter34 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v11 = LocationForOp;
    Context = mlir::Attribute::getContext(&v11);
    v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorDivideOp,void>::id, Context);
    if (v10)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v9);
      mlir::mps::ATan2Op::build(a3 + 23, __p, ArgValue, v7);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v15 = 1283;
    v14[2] = "mps.floor_divide";
    v14[3] = 16;
    v13 = 259;
    llvm::operator+(v14, &v12, v16);
    llvm::report_fatal_error(v16, 1);
  }

  operator new();
}

void sub_1E0691168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E0691184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter35::~GeneratedRewriter35(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter35::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter35 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::AbsoluteOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06914AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter36::~GeneratedRewriter36(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter36::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter36 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ACosOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06917F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ACosOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ACosOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.acos";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ACosOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter37::~GeneratedRewriter37(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter37::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter37 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ACoshOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0691C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ACoshOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ACoshOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.acosh";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ACoshOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter38::~GeneratedRewriter38(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter38::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter38 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ASinOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069213C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ASinOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ASinOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.asin";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ASinOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter39::~GeneratedRewriter39(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter39::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter39 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ASinhOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06925E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ASinhOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ASinhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.asinh";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ASinhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter40::~GeneratedRewriter40(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter40::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter40 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ATanOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0692A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ATanOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ATanOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.atan";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ATanOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter41::~GeneratedRewriter41(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter41::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter41 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ATanhOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0692F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ATanhOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ATanhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.atanh";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ATanhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter42::~GeneratedRewriter42(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter42::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter42 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::CeilOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06933CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter43::~GeneratedRewriter43(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter43::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter43 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::CosOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0693714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::CosOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CosOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.cos";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CosOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter44::~GeneratedRewriter44(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter44::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter44 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::CoshOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0693BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::CoshOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CoshOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.cosh";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CoshOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter45::~GeneratedRewriter45(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter45::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter45 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v9 = MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ClampOp,mlir::Value &,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v7, &v9);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0694094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter46::~GeneratedRewriter46(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter46::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter46 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ExponentOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06943DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter47::~GeneratedRewriter47(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter47::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter47 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ExponentBase2Op,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0694724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ExponentBase2Op,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExponentBase2Op,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.exponent_base_2";
    v15[3] = 19;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ExponentBase2Op,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter48::~GeneratedRewriter48(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter48::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter48 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0694BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::FloorOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.floor";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter49::~GeneratedRewriter49(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter49::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter49 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::NotOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069506C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::NotOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.not";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter50::~GeneratedRewriter50(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter50::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter50 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::RoundOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0695510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter51::~GeneratedRewriter51(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter51::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter51 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SignOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0695858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SignOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SignOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.sign";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SignOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter52::~GeneratedRewriter52(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter52::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter52 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SinOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0695CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SinOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SinOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.sin";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SinOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter53::~GeneratedRewriter53(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter53::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter53 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SinhOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06961A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SinhOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SinhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.sinh";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SinhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter54::~GeneratedRewriter54(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter54::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter54 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0696644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SquareRootOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.square_root";
    v15[3] = 15;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter55::~GeneratedRewriter55(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter55::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter55 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0696AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter56::~GeneratedRewriter56(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter56::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter56 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::TanOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0696E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::TanOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TanOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.tan";
    v15[3] = 7;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TanOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter57::~GeneratedRewriter57(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter57::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter57 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06972D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.tanh";
    v15[3] = 8;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v10;
}

void anonymous namespace::GeneratedRewriter58::~GeneratedRewriter58(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter58::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter58 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v10 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v6 = mlir::OpBuilder::create<mlir::mps::LessThanOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v10);
    v12 = LocationForOp;
    Context = mlir::Attribute::getContext(&v12);
    v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, Context);
    if (v9)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v8);
      mlir::mps::SelectOp::build((a3 + 23), __p, v6 - 16, v10, ArgValue);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v16 = 1283;
    v15[2] = "mps.select";
    v15[3] = 10;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter59::~GeneratedRewriter59(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter59::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter59 *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "cond");
  v6 = MILToMLIRRewriter::getArgValue(a3, a2, "a");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "b");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v8 = mlir::IntegerType::get(*(a3 + 23), 1, 0);
    __p[0] = mlir::TypeAttr::get(v8);
    v9 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &ArgValue, __p);
    v14 = LocationForOp;
    Context = mlir::Attribute::getContext(&v14);
    v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, Context);
    if (v12)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v11);
      mlir::mps::SelectOp::build(a3 + 184, __p, v9 - 16, v6, v7);
      mlir::OpBuilder::create((a3 + 184), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v18 = 1283;
    v17[2] = "mps.select";
    v17[3] = 10;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter60::~GeneratedRewriter60(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter60::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter60 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E06980A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter61::~GeneratedRewriter61(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter61::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter61 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  MILToMLIRRewriter::getLocationForOp(a3, a2);
  MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  MILToMLIRRewriter::getArgValue(a3, a2, "one_hot_vector_size");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  MILToMLIRRewriter::getArgValue(a3, a2, "on_value");
  MILToMLIRRewriter::getArgValue(a3, a2, "off_value");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::Builder::getUnknownLoc(a3 + 23, v5);
    operator new();
  }

  operator new();
}

void sub_1E06987D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  mlir::OperationState::~OperationState(&a29);
  operator delete(v29);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter62::~GeneratedRewriter62(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter62::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter62 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0698B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter63::~GeneratedRewriter63(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter63::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter63 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "reps");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::TileOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0698EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::TileOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.tile";
    v17[3] = 8;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::TileOp::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v12;
}

void anonymous namespace::GeneratedRewriter64::~GeneratedRewriter64(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter64::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter64 *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "data");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "updates");
  MILToMLIRRewriter::getArgValue(a3, a2, "mode");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  v26 = 3;
  LODWORD(v25) = 6579297;
  v29 = 3;
  v27 = 0;
  LODWORD(v28) = 6452595;
  v32 = 3;
  v30 = 1;
  LODWORD(v31) = 7107949;
  v35 = 3;
  v33 = 2;
  LODWORD(v34) = 7760228;
  v38 = 3;
  v36 = 3;
  LODWORD(v37) = 7235949;
  v39 = 4;
  v41 = 3;
  strcpy(v40, "max");
  v44 = 6;
  v42 = 5;
  strcpy(v43, "update");
  v45 = 6;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, &v25);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, &v28);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, &v31);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, &v34);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, &v37);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, v40);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v17, v18, v43);
  v14 = 4;
  strcpy(v13, "mode");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  __p[0] = v15;
  v9 = *(std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v17, v15) + 14);
  v19 = LocationForOp;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v23 = 1283;
    v22[2] = "mps.scatter_nd";
    v22[3] = 14;
    v21 = 259;
    llvm::operator+(v22, &v20, v24);
    llvm::report_fatal_error(v24, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v11);
  mlir::mps::ScatterNDOp::build(a3 + 23, __p, ArgValue, v8, v7, 0, v9);
  mlir::OpBuilder::create((a3 + 184), __p);
  mlir::OperationState::~OperationState(__p);
  if (v16 < 0)
  {
    operator delete(v15[0]);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v13[0]);
LABEL_5:
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v18[0]);
  (*(*a2 + 200))(__p, a2);
  operator new();
}

void sub_1E0699668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mlir::OperationState::~OperationState(&a68);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
LABEL_3:
    std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(a22);
    _Unwind_Resume(a1);
  }

  operator delete(a9);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(a22);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(void *result, uint64_t *a2, const void **a3)
{
  v5 = result;
  v6 = result + 1;
  if (result + 1 == a2)
  {
    goto LABEL_20;
  }

  v7 = *(a2 + 55);
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if (v8 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v7 >= 0)
  {
    v11 = *(a2 + 55);
  }

  else
  {
    v11 = a2[5];
  }

  if (v7 >= 0)
  {
    v12 = a2 + 4;
  }

  else
  {
    v12 = a2[4];
  }

  if (v11 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  result = memcmp(v10, v12, v13);
  v14 = v9 < v11;
  if (result)
  {
    v14 = result < 0;
  }

  if (v14)
  {
LABEL_20:
    v15 = *a2;
    if (*v5 == a2)
    {
      v17 = a2;
    }

    else
    {
      if (v15)
      {
        v16 = *a2;
        do
        {
          v17 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        v22 = a2;
        do
        {
          v17 = v22[2];
          v23 = *v17 == v22;
          v22 = v17;
        }

        while (v23);
      }

      v24 = *(a3 + 23);
      v25 = *(v17 + 55);
      if (v25 >= 0)
      {
        v26 = *(v17 + 55);
      }

      else
      {
        v26 = v17[5];
      }

      if (v25 >= 0)
      {
        v27 = v17 + 4;
      }

      else
      {
        v27 = v17[4];
      }

      if (v24 >= 0)
      {
        v28 = *(a3 + 23);
      }

      else
      {
        v28 = a3[1];
      }

      if (v24 >= 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = *a3;
      }

      if (v28 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v28;
      }

      result = memcmp(v27, v29, v30);
      v31 = v26 < v28;
      if (result)
      {
        v31 = result < 0;
      }

      if (!v31)
      {
        v33 = *v6;
        if (!*v6)
        {
          goto LABEL_93;
        }

        while (1)
        {
          while (1)
          {
            v34 = v33;
            v37 = v33[4];
            v35 = v33 + 4;
            v36 = v37;
            v38 = *(v35 + 23);
            if (v38 >= 0)
            {
              v39 = *(v35 + 23);
            }

            else
            {
              v39 = v35[1];
            }

            if (v38 >= 0)
            {
              v40 = v35;
            }

            else
            {
              v40 = v36;
            }

            if (v39 >= v28)
            {
              v41 = v28;
            }

            else
            {
              v41 = v39;
            }

            v42 = memcmp(v29, v40, v41);
            v43 = v28 < v39;
            if (v42)
            {
              v43 = v42 < 0;
            }

            if (!v43)
            {
              break;
            }

            v33 = *v34;
            if (!*v34)
            {
              goto LABEL_93;
            }
          }

          result = memcmp(v40, v29, v41);
          v44 = v39 < v28;
          if (result)
          {
            v44 = result < 0;
          }

          if (!v44)
          {
            return result;
          }

          v33 = v34[1];
          if (!v33)
          {
            goto LABEL_93;
          }
        }
      }
    }

    if (v15)
    {
      v32 = v17 + 1;
    }

    else
    {
      v32 = a2;
    }

    if (!*v32)
    {
      goto LABEL_93;
    }
  }

  else
  {
    result = memcmp(v12, v10, v13);
    v18 = v11 < v9;
    if (result)
    {
      v18 = result < 0;
    }

    if (v18)
    {
      v19 = a2[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
          v21 = v20;
        }

        while (v19);
      }

      else
      {
        v21 = a2;
        do
        {
          v45 = v21;
          v21 = v21[2];
        }

        while (*v21 != v45);
      }

      if (v21 == v6)
      {
        goto LABEL_93;
      }

      v48 = v21[4];
      v46 = v21 + 4;
      v47 = v48;
      v49 = *(v46 + 23);
      if (v49 >= 0)
      {
        v50 = *(v46 + 23);
      }

      else
      {
        v50 = v46[1];
      }

      if (v49 >= 0)
      {
        v51 = v46;
      }

      else
      {
        v51 = v47;
      }

      if (v50 >= v9)
      {
        v52 = v9;
      }

      else
      {
        v52 = v50;
      }

      v53 = memcmp(v10, v51, v52);
      v54 = v9 < v50;
      if (v53)
      {
        v54 = v53 < 0;
      }

      if (v54 || (v55 = *v6) == 0)
      {
LABEL_93:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v56 = v55;
          v59 = v55[4];
          v57 = v55 + 4;
          v58 = v59;
          v60 = *(v57 + 23);
          if (v60 >= 0)
          {
            v61 = *(v57 + 23);
          }

          else
          {
            v61 = v57[1];
          }

          if (v60 >= 0)
          {
            v62 = v57;
          }

          else
          {
            v62 = v58;
          }

          if (v61 >= v9)
          {
            v63 = v9;
          }

          else
          {
            v63 = v61;
          }

          v64 = memcmp(v10, v62, v63);
          v65 = v9 < v61;
          if (v64)
          {
            v65 = v64 < 0;
          }

          if (!v65)
          {
            break;
          }

          v55 = *v56;
          if (!*v56)
          {
            goto LABEL_93;
          }
        }

        result = memcmp(v62, v10, v63);
        v66 = v61 < v9;
        if (result)
        {
          v66 = result < 0;
        }

        if (!v66)
        {
          break;
        }

        v55 = v56[1];
        if (!v55)
        {
          goto LABEL_93;
        }
      }
    }
  }

  return result;
}

void sub_1E0699B4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,mlir::mps::ScatterMode>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,mlir::mps::ScatterMode>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__tree_node<std::__value_type<std::string,mlir::mps::ScatterMode>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,mlir::mps::ScatterMode>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void *std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void anonymous namespace::GeneratedRewriter65::~GeneratedRewriter65(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter65::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter65 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "data");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "updates");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  MILToMLIRRewriter::getArgValue(a3, a2, "mode");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v9);
  v11 = mlir::IntegerType::get(a3[23], 32, 1u);
  v26 = 4;
  strcpy(v25, "axis");
  MIL::IROperation::TryGetParameterValue();
  v12 = MIL::IRValue::GetScalar<int>();
  v13 = mlir::RankedTensorType::get(0, 0, v11, 0);
  __p[0] = mlir::mps::getConstantAttr<int>(v13, v12);
  v14 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
  v34 = 3;
  LODWORD(v33) = 6579297;
  v37 = 3;
  v35 = 0;
  LODWORD(v36) = 6452595;
  v40 = 3;
  v38 = 1;
  LODWORD(v39) = 7107949;
  v43 = 3;
  v41 = 2;
  LODWORD(v42) = 7760228;
  v46 = 3;
  v44 = 3;
  LODWORD(v45) = 7235949;
  v47 = 4;
  v49 = 3;
  strcpy(v48, "max");
  v52 = 6;
  v50 = 5;
  strcpy(v51, "update");
  v53 = 6;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v33);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v36);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v39);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v42);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v45);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v48);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v51);
  v20 = 4;
  strcpy(v19, "mode");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  __p[0] = v21;
  v15 = *(std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v23, v21) + 14);
  v27 = LocationForOp;
  Context = mlir::Attribute::getContext(&v27);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "mps.scatter";
    v30[3] = 11;
    v29 = 259;
    llvm::operator+(v30, &v28, v32);
    llvm::report_fatal_error(v32, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v17);
  mlir::mps::ScatterOp::build(a3 + 23, __p, ArgValue, v8, v7, v14 - 16, v15);
  mlir::OpBuilder::create((a3 + 23), __p);
  mlir::OperationState::~OperationState(__p);
  if (v22 < 0)
  {
    operator delete(v21[0]);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_5:
      std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v24[0]);
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(v25[0]);
LABEL_6:
      (*(*a2 + 200))(__p, a2);
      operator new();
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v19[0]);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v24[0]);
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_10;
}

void sub_1E069A49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mlir::OperationState::~OperationState(&a72);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(a23);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter66::~GeneratedRewriter66(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter66::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter66 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "data");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "updates");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  MILToMLIRRewriter::getArgValue(a3, a2, "mode");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v9);
  v11 = mlir::IntegerType::get(a3[23], 32, 1u);
  v26 = 4;
  strcpy(v25, "axis");
  MIL::IROperation::TryGetParameterValue();
  v12 = MIL::IRValue::GetScalar<int>();
  v13 = mlir::RankedTensorType::get(0, 0, v11, 0);
  __p[0] = mlir::mps::getConstantAttr<int>(v13, v12);
  v14 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
  v34 = 3;
  LODWORD(v33) = 6579297;
  v37 = 3;
  v35 = 0;
  LODWORD(v36) = 6452595;
  v40 = 3;
  v38 = 1;
  LODWORD(v39) = 7107949;
  v43 = 3;
  v41 = 2;
  LODWORD(v42) = 7760228;
  v46 = 3;
  v44 = 3;
  LODWORD(v45) = 7235949;
  v47 = 4;
  v49 = 3;
  strcpy(v48, "max");
  v52 = 6;
  v50 = 5;
  strcpy(v51, "update");
  v53 = 6;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v33);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v36);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v39);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v42);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, &v45);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v48);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,mlir::mps::ScatterMode> const&>(&v23, v24, v51);
  v20 = 4;
  strcpy(v19, "mode");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  __p[0] = v21;
  v15 = *(std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v23, v21) + 14);
  v27 = LocationForOp;
  Context = mlir::Attribute::getContext(&v27);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterAlongAxisOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "mps.scatter_along_axis";
    v30[3] = 22;
    v29 = 259;
    llvm::operator+(v30, &v28, v32);
    llvm::report_fatal_error(v32, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v17);
  mlir::mps::ScatterAlongAxisOp::build(a3 + 23, __p, ArgValue, v8, v7, v14 - 16, v15);
  mlir::OpBuilder::create((a3 + 23), __p);
  mlir::OperationState::~OperationState(__p);
  if (v22 < 0)
  {
    operator delete(v21[0]);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_5:
      std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v24[0]);
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(v25[0]);
LABEL_6:
      (*(*a2 + 200))(__p, a2);
      operator new();
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v19[0]);
  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(v24[0]);
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_10;
}

void sub_1E069AC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char *a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  mlir::OperationState::~OperationState(&a72);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::__tree<std::__value_type<std::string,mlir::mps::ScatterMode>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::mps::ScatterMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::mps::ScatterMode>>>::destroy(a23);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter67::~GeneratedRewriter67(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter67::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter67 *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  if ((*(*a2 + 192))(a2) == 1)
  {
    IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 0);
    v9 = mlir::IntegerAttr::get(IntegerType, 0);
    UnitAttr = mlir::Builder::getUnitAttr(a3 + 23, v10);
    v15 = LocationForOp;
    Context = mlir::Attribute::getContext(&v15);
    v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id, Context);
    if (v14)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v13);
      mlir::mps::GatherNDOp::build(a3 + 23, __p, ArgValue, v7, v9, UnitAttr);
      mlir::OpBuilder::create((a3 + 184), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v19 = 1283;
    v18[2] = "mps.gather_nd";
    v18[3] = 13;
    v17 = 259;
    llvm::operator+(v18, &v16, v20);
    llvm::report_fatal_error(v20, 1);
  }

  operator new();
}

void sub_1E069B12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E069B148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void anonymous namespace::GeneratedRewriter68::~GeneratedRewriter68(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter68::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter68 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v29[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v8);
    v10 = mlir::IntegerType::get(a3[23], 32, 1u);
    v22 = 4;
    strcpy(__p, "axis");
    MIL::IROperation::TryGetParameterValue();
    v11 = MIL::IRValue::GetScalar<int>();
    v12 = mlir::RankedTensorType::get(0, 0, v10, 0);
    v29[0] = mlir::mps::getConstantAttr<int>(v12, v11);
    v13 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, v29);
    IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 0);
    v15 = mlir::IntegerAttr::get(IntegerType, 0);
    UnitAttr = mlir::Builder::getUnitAttr(a3 + 23, v16);
    v23 = LocationForOp;
    Context = mlir::Attribute::getContext(&v23);
    v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id, Context);
    if (v20)
    {
      mlir::OperationState::OperationState(v29, LocationForOp, v19);
      mlir::mps::GatherOp::build(a3 + 23, v29, ArgValue, v7, v13 - 16, v15, UnitAttr);
      mlir::OpBuilder::create((a3 + 23), v29);
      mlir::OperationState::~OperationState(v29);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*a2 + 200))(v29, a2);
      operator new();
    }

    v27 = 1283;
    v26[2] = "mps.gather";
    v26[3] = 10;
    v25 = 259;
    llvm::operator+(v26, &v24, v28);
    llvm::report_fatal_error(v28, 1);
  }

  operator new();
}

void sub_1E069B654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  mlir::OperationState::~OperationState(&a31);
  v37 = a1;
  if (a14 < 0)
  {
    operator delete(__p);
    v37 = a1;
  }

  _Unwind_Resume(v37);
}

void anonymous namespace::GeneratedRewriter69::~GeneratedRewriter69(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter69::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter69 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v27[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "indices");
  MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v8);
    v10 = mlir::IntegerType::get(a3[23], 32, 1u);
    v20 = 4;
    strcpy(__p, "axis");
    MIL::IROperation::TryGetParameterValue();
    v11 = MIL::IRValue::GetScalar<int>();
    v12 = mlir::RankedTensorType::get(0, 0, v10, 0);
    v27[0] = mlir::mps::getConstantAttr<int>(v12, v11);
    v13 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, v27);
    UnitAttr = mlir::Builder::getUnitAttr(a3 + 23, v14);
    v21 = LocationForOp;
    Context = mlir::Attribute::getContext(&v21);
    v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherAlongAxisOp,void>::id, Context);
    if (v18)
    {
      mlir::OperationState::OperationState(v27, LocationForOp, v17);
      mlir::mps::GatherAlongAxisOp::build((a3 + 23), v27, ArgValue, v7, v13 - 16, UnitAttr);
      mlir::OpBuilder::create((a3 + 23), v27);
      mlir::OperationState::~OperationState(v27);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*a2 + 200))(v27, a2);
      operator new();
    }

    v25 = 1283;
    v24[2] = "mps.gather_along_axis";
    v24[3] = 21;
    v23 = 259;
    llvm::operator+(v24, &v22, v26);
    llvm::report_fatal_error(v26, 1);
  }

  operator new();
}

void sub_1E069BB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  mlir::OperationState::~OperationState(&a31);
  v37 = a1;
  if (a14 < 0)
  {
    operator delete(__p);
    v37 = a1;
  }

  _Unwind_Resume(v37);
}

void anonymous namespace::GeneratedRewriter70::~GeneratedRewriter70(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter70::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter70 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "axes");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::ExpandDimsOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069BF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter71::~GeneratedRewriter71(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter71::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter71 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "shape");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "value");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::BroadcastToOp,mlir::Value &,mlir::Value &>((a3 + 23), LocationForOp, &v8, &ArgValue);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069C294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter72::~GeneratedRewriter72(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter72::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter72 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "ref_tensor");
  v6 = MILToMLIRRewriter::getArgValue(a3, a2, "value");
  if ((*(*a2 + 192))(a2) == 1)
  {
    v7 = mlir::OpBuilder::create<mlir::mps::ShapeOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue);
    v12 = LocationForOp;
    Context = mlir::Attribute::getContext(&v12);
    v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BroadcastToOp,void>::id, Context);
    if (v10)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v9);
      mlir::mps::BroadcastToOp::build((a3 + 23), __p, v6, v7 - 16);
      mlir::OpBuilder::create((a3 + 23), __p);
      mlir::OperationState::~OperationState(__p);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v16 = 1283;
    v15[2] = "mps.broadcast_to";
    v15[3] = 16;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  operator new();
}

void anonymous namespace::GeneratedRewriter73::~GeneratedRewriter73(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter73::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter73 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v8 = MILToMLIRRewriter::getArgValue(a3, a2, "perm");
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value,mlir::Value>(a3 + 23, LocationForOp, &ArgValue, &v8);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069CA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter74::~GeneratedRewriter74(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter74::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter74 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "block_size");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v6);
    v8 = mlir::IntegerType::get(a3[23], 32, 1u);
    v9 = mlir::RankedTensorType::get(0, 0, v8, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v9, -1);
    v25 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
    v11 = mlir::Builder::getUnknownLoc(a3 + 23, v10);
    v12 = mlir::IntegerType::get(a3[23], 32, 1u);
    v13 = mlir::RankedTensorType::get(0, 0, v12, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v13, -2);
    v21 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v11, __p);
    v15 = mlir::Builder::getUnknownLoc(a3 + 23, v14);
    v16 = mlir::IntegerType::get(a3[23], 32, 1u);
    v17 = mlir::RankedTensorType::get(0, 0, v16, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v17, -3);
    v20 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v15, __p);
    v23 = 10;
    strcpy(__p, "block_size");
    MIL::IROperation::TryGetParameterValue();
    v19 = MIL::IRValue::GetScalar<int>();
    v18 = 0;
    mlir::OpBuilder::create<mlir::mps::DepthToSpace2DOp,mlir::Value &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,int,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v25, &v21, &v20, &v19, &v18);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    (*(*a2 + 200))(__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069CF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E069CF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::DepthToSpace2DOp,mlir::Value &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, unsigned int *a7, unsigned __int8 *a8)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "mps.depth_to_space_2d";
    v25[3] = 21;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  mlir::mps::DepthToSpace2DOp::build(a1, v28, *a3, *a4 - 16, *a5 - 16, *a6 - 16, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v20;
}

void anonymous namespace::GeneratedRewriter75::~GeneratedRewriter75(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter75::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter75 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v34[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "block_size");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v7);
    v9 = mlir::IntegerType::get(a3[23], 32, 1u);
    v10 = mlir::RankedTensorType::get(0, 0, v9, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v10, -1);
    v11 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, v34);
    v13 = mlir::Builder::getUnknownLoc(a3 + 23, v12);
    v14 = mlir::IntegerType::get(a3[23], 32, 1u);
    v15 = mlir::RankedTensorType::get(0, 0, v14, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v15, -2);
    v16 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v13, v34);
    v18 = mlir::Builder::getUnknownLoc(a3 + 23, v17);
    v19 = mlir::IntegerType::get(a3[23], 32, 1u);
    v20 = mlir::RankedTensorType::get(0, 0, v19, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v20, -3);
    v21 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v18, v34);
    v27 = 10;
    strcpy(__p, "block_size");
    MIL::IROperation::TryGetParameterValue();
    v22 = MIL::IRValue::GetScalar<int>();
    v28 = LocationForOp;
    Context = mlir::Attribute::getContext(&v28);
    v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToDepth2DOp,void>::id, Context);
    if (v25)
    {
      mlir::OperationState::OperationState(v34, LocationForOp, v24);
      mlir::mps::SpaceToDepth2DOp::build(a3 + 23, v34, ArgValue, v11 - 16, v16 - 16, v21 - 16, v22, 0);
      mlir::OpBuilder::create((a3 + 23), v34);
      mlir::OperationState::~OperationState(v34);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*a2 + 200))(v34, a2);
      operator new();
    }

    v32 = 1283;
    v31[2] = "mps.space_to_depth_2d";
    v31[3] = 21;
    v30 = 259;
    llvm::operator+(v31, &v29, v33);
    llvm::report_fatal_error(v33, 1);
  }

  operator new();
}

void sub_1E069D684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  mlir::OperationState::~OperationState(&a31);
  v37 = a1;
  if (a14 < 0)
  {
    operator delete(__p);
    v37 = a1;
  }

  _Unwind_Resume(v37);
}

void anonymous namespace::GeneratedRewriter76::~GeneratedRewriter76(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter76::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter76 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "upscale_factor");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v6);
    v8 = mlir::IntegerType::get(a3[23], 32, 1u);
    v9 = mlir::RankedTensorType::get(0, 0, v8, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v9, -1);
    v25 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
    v11 = mlir::Builder::getUnknownLoc(a3 + 23, v10);
    v12 = mlir::IntegerType::get(a3[23], 32, 1u);
    v13 = mlir::RankedTensorType::get(0, 0, v12, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v13, -2);
    v21 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v11, __p);
    v15 = mlir::Builder::getUnknownLoc(a3 + 23, v14);
    v16 = mlir::IntegerType::get(a3[23], 32, 1u);
    v17 = mlir::RankedTensorType::get(0, 0, v16, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v17, -3);
    v20 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v15, __p);
    v23 = 14;
    strcpy(__p, "upscale_factor");
    MIL::IROperation::TryGetParameterValue();
    v19 = MIL::IRValue::GetScalar<int>();
    v18 = 1;
    mlir::OpBuilder::create<mlir::mps::DepthToSpace2DOp,mlir::Value &,mlir::mps::ConstantOp,mlir::mps::ConstantOp,mlir::mps::ConstantOp,int,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v25, &v21, &v20, &v19, &v18);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    (*(*a2 + 200))(__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E069DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E069DB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GeneratedRewriter77::~GeneratedRewriter77(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter77::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter77 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v34[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "downscale_factor");
  if ((*(*a2 + 192))(a2) == 1)
  {
    UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v7);
    v9 = mlir::IntegerType::get(a3[23], 32, 1u);
    v10 = mlir::RankedTensorType::get(0, 0, v9, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v10, -1);
    v11 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, v34);
    v13 = mlir::Builder::getUnknownLoc(a3 + 23, v12);
    v14 = mlir::IntegerType::get(a3[23], 32, 1u);
    v15 = mlir::RankedTensorType::get(0, 0, v14, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v15, -2);
    v16 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v13, v34);
    v18 = mlir::Builder::getUnknownLoc(a3 + 23, v17);
    v19 = mlir::IntegerType::get(a3[23], 32, 1u);
    v20 = mlir::RankedTensorType::get(0, 0, v19, 0);
    v34[0] = mlir::mps::getConstantAttr<int>(v20, -3);
    v21 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v18, v34);
    v27 = 16;
    strcpy(__p, "downscale_factor");
    MIL::IROperation::TryGetParameterValue();
    v22 = MIL::IRValue::GetScalar<unsigned int>();
    v28 = LocationForOp;
    Context = mlir::Attribute::getContext(&v28);
    v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SpaceToDepth2DOp,void>::id, Context);
    if (v25)
    {
      mlir::OperationState::OperationState(v34, LocationForOp, v24);
      mlir::mps::SpaceToDepth2DOp::build(a3 + 23, v34, ArgValue, v11 - 16, v16 - 16, v21 - 16, v22, 1);
      mlir::OpBuilder::create((a3 + 23), v34);
      mlir::OperationState::~OperationState(v34);
      if (v27 < 0)
      {
        operator delete(*__p);
      }

      (*(*a2 + 200))(v34, a2);
      operator new();
    }

    v32 = 1283;
    v31[2] = "mps.space_to_depth_2d";
    v31[3] = 21;
    v30 = 259;
    llvm::operator+(v31, &v29, v33);
    llvm::report_fatal_error(v33, 1);
  }

  operator new();
}

void sub_1E069E134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  mlir::OperationState::~OperationState(&a31);
  v37 = a1;
  if (a14 < 0)
  {
    operator delete(__p);
    v37 = a1;
  }

  _Unwind_Resume(v37);
}

void anonymous namespace::GeneratedRewriter78::~GeneratedRewriter78(void **this)
{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5B431B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12E5B90);
}

void anonymous namespace::GeneratedRewriter78::matchAndRewrite(_anonymous_namespace_::GeneratedRewriter78 *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "lower");
  MILToMLIRRewriter::getArgValue(a3, a2, "upper");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  UnknownLoc = mlir::Builder::getUnknownLoc(a3 + 23, v7);
  v9 = mlir::IntegerType::get(a3[23], 32, 1u);
  v25 = 5;
  strcpy(v24, "lower");
  MIL::IROperation::TryGetParameterValue();
  v10 = MIL::IRValue::GetScalar<int>();
  v11 = mlir::RankedTensorType::get(0, 0, v9, 0);
  __p[0] = mlir::mps::getConstantAttr<int>(v11, v10);
  v12 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), UnknownLoc, __p);
  v14 = mlir::Builder::getUnknownLoc(a3 + 23, v13);
  v15 = mlir::IntegerType::get(a3[23], 32, 1u);
  v23 = 5;
  strcpy(v22, "upper");
  MIL::IROperation::TryGetParameterValue();
  v16 = MIL::IRValue::GetScalar<int>();
  v17 = mlir::RankedTensorType::get(0, 0, v15, 0);
  __p[0] = mlir::mps::getConstantAttr<int>(v17, v16);
  v18 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v14, __p);
  v26 = LocationForOp;
  Context = mlir::Attribute::getContext(&v26);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BandPartOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "mps.band_part";
    v29[3] = 13;
    v28 = 259;
    llvm::operator+(v29, &v27, v31);
    llvm::report_fatal_error(v31, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v20);
  mlir::mps::BandPartOp::build((a3 + 23), __p, ArgValue, v12 - 16, v18 - 16);
  mlir::OpBuilder::create((a3 + 23), __p);
  mlir::OperationState::~OperationState(__p);
  if (v23 < 0)
  {
    operator delete(v22[0]);
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v24[0]);
LABEL_5:
  (*(*a2 + 200))(__p, a2);
  operator new();
}

void sub_1E069E70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  mlir::OperationState::~OperationState(&a38);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void MILToMLIRRewriter::~MILToMLIRRewriter(MILToMLIRRewriter *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    do
    {
      v10 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v10;
    }

    while (v10);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    do
    {
      v11 = *v4;
      if (*(v4 + 63) < 0)
      {
        operator delete(v4[5]);
        if (*(v4 + 39) < 0)
        {
LABEL_22:
          operator delete(v4[2]);
        }
      }

      else if (*(v4 + 39) < 0)
      {
        goto LABEL_22;
      }

      operator delete(v4);
      v4 = v11;
    }

    while (v11);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    do
    {
      v12 = *v6;
      v13 = *(v6 + 5);
      if (v13)
      {
        *(v6 + 6) = v13;
        operator delete(v13);
      }

      if (v6[39] < 0)
      {
        operator delete(*(v6 + 2));
      }

      operator delete(v6);
      v6 = v12;
    }

    while (v12);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    do
    {
      v14 = *v8;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v14;
    }

    while (v14);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

GPU::FusionOpHandler *GPU::FusionOpHandler::FusionOpHandler(GPU::FusionOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4, int a5)
{
  v8 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v8 = &unk_1F5B466D0;
  *(v8 + 15) = a3;
  *(this + 32) = mlir::mpsx::FusionOp::getFusionType(v8 + 15);
  *(this + 17) = 0;
  v9 = (((*(this + 15) + 16 * ((*(*(this + 15) + 44) >> 23) & 1) + ((*(*(this + 15) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 15) + 40));
  *(this + 18) = v9;
  if ((*v9 == v9 || *(v9[1] + 8) != v9) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = *(*(this + 18) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  *(this + 19) = v11;
  if (a5)
  {
    v12 = *(this + 32);
    switch(v12)
    {
      case 3:
        operator new();
      case 2:
        operator new();
      case 1:
        operator new();
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  return this;
}

void sub_1E069FCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  GPU::FusionOpHandler::~FusionOpHandler(v20);
  MEMORY[0x1E12E5B90](v20, 0x10A1C40A54699C3);
  GPU::BaseOpHandler::~BaseOpHandler(v19);
  _Unwind_Resume(a1);
}

void GPU::FusionReturnOpHandler::encodeNDArrayOp(GPU::FusionReturnOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v26 = a3;
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength((this + 120), 0);
  v5 = ODSResultIndexAndLength;
  v6 = *(this + 15);
  v7 = *(v6 + 36);
  v8 = v6 - 16;
  if (v7)
  {
    NextResultAtOffset = v8;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  v10 = ODSResultIndexAndLength;
  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength((this + 128), 0);
  v12 = (HIDWORD(v5) + v5);
  v13 = *(this + 16);
  if ((*(v13 + 46) & 0x80) != 0)
  {
    v14 = *(v13 + 72);
    if (v12 == v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    if (v12 == v5)
    {
      goto LABEL_17;
    }
  }

  v15 = 0;
  v16 = v12 - v10;
  v17 = v14 + 32 * ODSOperandIndexAndLength;
  v18 = MEMORY[0x1E69744E8];
  do
  {
    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v15);
    v20 = (*(**(this + 2) + 48))(*(this + 2), *(v17 + 32 * v15 + 24), 0);
    v21 = [v20 mpsndarray];
    v22 = v21;
    if (*(v21 + *v18) == 1)
    {
      v23 = *v19;
      if (*v19)
      {
        v24 = 0;
        do
        {
          ++v24;
          v23 = *v23;
        }

        while (v23);
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      [v21 setReadCount:{objc_msgSend(v21, "readCount") + v25}];
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), v19, v20);

    ++v15;
  }

  while (v15 != v16);
LABEL_17:
}

void GPU::FusionOpHandler::~FusionOpHandler(GPU::FusionOpHandler *this)
{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::QuantizedConv2DFusionOpHandler::encodeNDArrayOp(GPU::QuantizedConv2DFusionOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v55 = a3;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength((this + 120), 0);
  v6 = *(this + 15);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 72);
    v8 = *(this + 19);
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v54 = *(this + 19);
    v9 = *(v54 + 48);
    v10 = *(v54 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
  v12 = v7 + 32 * ODSOperandIndexAndLength;
  v13 = MEMORY[0x1E69744E8];
  do
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), *(v12 + 32 * v11 + 24), 0);
    v15 = [v14 mpsndarray];
    v16 = v15;
    if (*(v15 + *v13) == 1)
    {
      v17 = **v9;
      if (v17)
      {
        v18 = 0;
        do
        {
          ++v18;
          v17 = *v17;
        }

        while (v17);
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      [v15 setReadCount:{objc_msgSend(v15, "readCount") + v19}];
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), *v9, v14);

    ++v11;
    ++v9;
  }

  while (v9 != v10);
LABEL_12:
  if (*(this + 4))
  {
    v20 = [(NSArray *)v55 objectAtIndexedSubscript:0];
    v21 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v22 = *(this + 1);
    v23 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v24 = *(a2 + 1);
    v25 = [v20 mpsndarray];
    v26 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v22 encodeToMPSCommandEncoder:v23 commandBuffer:v24 sourceArrays:v21 resultState:0 destinationArray:v25 kernelDAGObject:v26];
  }

  else
  {
    v27 = *(*(this + 21) + 72);
    v28 = *(v27 + 24);
    v29 = *(v27 + 56);
    v30 = *(*(this + 22) + 72);
    v31 = *(v30 + 24);
    v32 = *(v30 + 56);
    v20 = [MEMORY[0x1E695DF70] array];
    v33 = (*(**(this + 2) + 48))(*(this + 2), v28, 0);
    v34 = [v33 mpsndarray];
    [v20 addObject:v34];

    v35 = (*(**(this + 2) + 48))(*(this + 2), v31, 0);
    v36 = [v35 mpsndarray];
    [v20 addObject:v36];

    v37 = (*(**(this + 2) + 48))(*(this + 2), v29, 0);
    v38 = [v37 mpsndarray];
    [v20 addObject:v38];

    v39 = (*(**(this + 2) + 48))(*(this + 2), v32, 0);
    v40 = [v39 mpsndarray];
    [v20 addObject:v40];

    ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength((this + 120), 0);
    v42 = ODSResultIndexAndLength;
    v43 = *(this + 15);
    v44 = *(v43 + 36);
    v45 = v43 - 16;
    if (v44)
    {
      NextResultAtOffset = v45;
    }

    else
    {
      NextResultAtOffset = 0;
    }

    if (ODSResultIndexAndLength)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
    }

    v47 = (HIDWORD(v42) + v42);
    v48 = v47 - v42;
    if (v47 == v42)
    {
      v21 = 0;
    }

    else
    {
      v49 = 0;
      v50 = 0;
      do
      {
        v51 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v50);
        v21 = (*(**(this + 2) + 80))(*(this + 2), v51, *(a2 + 1), 0, 0, 1);

        ++v50;
        v49 = v21;
      }

      while (v48 != v50);
    }

    v52 = *(this + 1);
    v23 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v53 = *(a2 + 1);
    v25 = [v21 mpsndarray];
    [v52 encodeToMPSCommandEncoder:v23 commandBuffer:v53 sourceArrays:v20 resultState:0 destinationArray:v25 kernelDAGObject:0];
  }
}

void GPU::QuantizedMatMulFusionOpHandler::encodeNDArrayOp(GPU::QuantizedMatMulFusionOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v81 = a3;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength((this + 120), 0);
  v6 = *(this + 15);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 72);
    v8 = *(this + 19);
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v77 = *(this + 19);
    v9 = *(v77 + 48);
    v10 = *(v77 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
  v12 = v7 + 32 * ODSOperandIndexAndLength;
  v13 = MEMORY[0x1E69744E8];
  do
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), *(v12 + 32 * v11 + 24), 0);
    v15 = [v14 mpsndarray];
    v16 = v15;
    if (*(v15 + *v13) == 1)
    {
      v17 = **v9;
      if (v17)
      {
        v18 = 0;
        do
        {
          ++v18;
          v17 = *v17;
        }

        while (v17);
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      [v15 setReadCount:{objc_msgSend(v15, "readCount") + v19}];
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), *v9, v14);

    ++v11;
    ++v9;
  }

  while (v9 != v10);
LABEL_12:
  v20 = *(*(this + 21) + 72);
  v21 = *(v20 + 24);
  v82 = *(v20 + 56);
  v22 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v82 = *(*(*(this + 21) + 72) + 88);
  v23 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v82 = *(*(*(this + 21) + 72) + 120);
  v24 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v25 = *(*(this + 22) + 72);
  v26 = *(v25 + 24);
  v82 = *(v25 + 56);
  v80 = v24;
  v27 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v82 = *(*(*(this + 22) + 72) + 88);
  v28 = *(*(mlir::Value::getDefiningOp(&v82) + 72) + 24);
  v82 = *(*(*(this + 22) + 72) + 120);
  DefiningOp = mlir::Value::getDefiningOp(&v82);
  if (*(this + 4))
  {
    v30 = [(NSArray *)v81 objectAtIndexedSubscript:0];
    v31 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v32 = [MEMORY[0x1E695DF70] array];
    v33 = [v31 objectAtIndexedSubscript:0];
    if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated((this + 160)))
    {
      v34 = [v33 descriptor];
      [v34 transposeDimension:0 withDimension:1];
      v35 = [v33 arrayViewWithDescriptor:v34];

      v33 = v35;
    }

    v36 = [v31 objectAtIndexedSubscript:1];
    if (mlir::mps::MatMulOp::getTransposeRhs((this + 160)))
    {
      v37 = [v36 descriptor];
      [v37 transposeDimension:0 withDimension:1];
      v38 = [v36 arrayViewWithDescriptor:v37];

      v36 = v38;
    }

    [v32 addObject:v33];
    [v32 addObject:v36];
    for (i = 2; i < [v31 count]; ++i)
    {
      v40 = [v31 objectAtIndexedSubscript:i];
      [v32 addObject:v40];
    }

    v41 = *(this + 1);
    v42 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v43 = *(a2 + 1);
    v44 = [v30 mpsndarray];
    v45 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v41 encodeToMPSCommandEncoder:v42 commandBuffer:v43 sourceArrays:v32 resultState:0 destinationArray:v44 kernelDAGObject:v45];
  }

  else
  {
    v78 = *(*(DefiningOp + 72) + 24);
    v79 = v28;
    v30 = [MEMORY[0x1E695DF70] array];
    v46 = (*(**(this + 2) + 48))(*(this + 2), v21, 0);
    v31 = [v46 mpsndarray];

    if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated((this + 160)))
    {
      v47 = [v31 descriptor];
      [v47 transposeDimension:0 withDimension:1];
      v48 = [v31 arrayViewWithDescriptor:v47];

      v31 = v48;
    }

    v49 = (*(**(this + 2) + 48))(*(this + 2), v26, 0);
    v32 = [v49 mpsndarray];

    if (mlir::mps::MatMulOp::getTransposeRhs((this + 160)))
    {
      v50 = [v32 descriptor];
      [v50 transposeDimension:0 withDimension:1];
      v51 = [v32 arrayViewWithDescriptor:v50];

      v32 = v51;
    }

    [v30 addObject:v31];
    [v30 addObject:v32];
    v52 = (*(**(this + 2) + 48))(*(this + 2), v22, 0);
    v53 = [v52 mpsndarray];
    [v30 addObject:v53];

    v54 = (*(**(this + 2) + 48))(*(this + 2), v23, 0);
    v55 = [v54 mpsndarray];
    [v30 addObject:v55];

    v56 = (*(**(this + 2) + 48))(*(this + 2), v80, 0);
    v57 = [v56 mpsndarray];
    [v30 addObject:v57];

    v58 = (*(**(this + 2) + 48))(*(this + 2), v27, 0);
    v59 = [v58 mpsndarray];
    [v30 addObject:v59];

    v60 = (*(**(this + 2) + 48))(*(this + 2), v79, 0);
    v61 = [v60 mpsndarray];
    [v30 addObject:v61];

    v62 = (*(**(this + 2) + 48))(*(this + 2), v78, 0);
    v63 = [v62 mpsndarray];
    [v30 addObject:v63];

    ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength((this + 120), 0);
    v65 = ODSResultIndexAndLength;
    v66 = *(this + 15);
    v67 = *(v66 + 36);
    v68 = v66 - 16;
    if (v67)
    {
      NextResultAtOffset = v68;
    }

    else
    {
      NextResultAtOffset = 0;
    }

    if (ODSResultIndexAndLength)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
    }

    v70 = (HIDWORD(v65) + v65);
    v71 = v70 - v65;
    if (v70 == v65)
    {
      v33 = 0;
    }

    else
    {
      v72 = 0;
      v73 = 0;
      do
      {
        v74 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v73);
        v33 = (*(**(this + 2) + 80))(*(this + 2), v74, *(a2 + 1), 0, 0, 1);

        ++v73;
        v72 = v33;
      }

      while (v71 != v73);
    }

    v75 = *(this + 1);
    v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v76 = *(a2 + 1);
    v42 = [v33 mpsndarray];
    [v75 encodeToMPSCommandEncoder:v36 commandBuffer:v76 sourceArrays:v30 resultState:0 destinationArray:v42 kernelDAGObject:0];
  }
}

void GPU::QuantizedGatherNDFusionOpHandler::encodeNDArrayOp(GPU::QuantizedGatherNDFusionOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v51 = a3;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength((this + 120), 0);
  v6 = *(this + 15);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 72);
    v8 = *(this + 19);
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v32 = *(this + 19);
    v9 = *(v32 + 48);
    v10 = *(v32 + 56);
    if (v9 == v10)
    {
      goto LABEL_12;
    }
  }

  v11 = 0;
  v12 = v7 + 32 * ODSOperandIndexAndLength;
  v13 = MEMORY[0x1E69744E8];
  do
  {
    v14 = (*(**(this + 2) + 48))(*(this + 2), *(v12 + 32 * v11 + 24), 0);
    v15 = [v14 mpsndarray];
    v16 = v15;
    if (*(v15 + *v13) == 1)
    {
      v17 = **v9;
      if (v17)
      {
        v18 = 0;
        do
        {
          ++v18;
          v17 = *v17;
        }

        while (v17);
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      [v15 setReadCount:{objc_msgSend(v15, "readCount", v51) + v19}];
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), *v9, v14);

    ++v11;
    ++v9;
  }

  while (v9 != v10);
LABEL_12:
  v20 = *(*(this + 21) + 72);
  v21 = *(v20 + 56);
  v22 = *(*(*(this + 20) + 72) + 56);
  v23 = (*(**(this + 2) + 48))(*(this + 2), *(v20 + 24), 0);
  v24 = [v23 mpsndarray];

  v54 = v24;
  v25 = (*(**(this + 2) + 48))(*(this + 2), v21, 0);
  v55 = [v25 mpsndarray];

  v26 = (*(**(this + 2) + 48))(*(this + 2), v22, 0);
  v27 = [v26 mpsndarray];

  if (v24)
  {
    v28 = v27 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28 || v55 == 0;
  if (v29 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(this + 176) != 1)
  {
LABEL_29:
    v53 = 0;
    if (*(this + 177) != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v30 = (*(**(this + 2) + 48))(*(this + 2), *(*(*(this + 21) + 72) + 88), 0);
  v31 = [v30 mpsndarray];

  if (!v31)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_29;
  }

  v53 = v31;
  if (*(this + 177) != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v33 = (*(**(this + 2) + 48))(*(this + 2), *(*(*(this + 21) + 72) + 120), 0);
  v34 = [v33 mpsndarray];

  if (v34)
  {
    goto LABEL_34;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_33:
  v34 = 0;
LABEL_34:
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength((this + 120), 0);
  v36 = ODSResultIndexAndLength;
  v37 = *(this + 15);
  v38 = *(v37 + 36);
  v39 = v37 - 16;
  if (v38)
  {
    NextResultAtOffset = v39;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v41 = (HIDWORD(v36) + v36);
  v42 = v41 - v36;
  if (v41 == v36)
  {
    v43 = 0;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v45);
      v43 = (*(**(this + 2) + 80))(*(this + 2), v46, *(a2 + 1), 0, 0, 1);

      ++v45;
      v44 = v43;
    }

    while (v42 != v45);
  }

  v47 = [v43 mpsndarray];
  v48 = *(this + 1);
  [v48 setBatchDimensions:mlir::pdl_interp::CheckOperandCountOp::getCount((this + 160))];
  [v48 setAllowNegativeIndices:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes((this + 160))];
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v49 addObject:v54];
  [v49 addObject:v27];
  [v49 addObject:v55];
  if (*(this + 176) == 1)
  {
    [v49 addObject:v53];
  }

  if (*(this + 177) == 1)
  {
    [v49 addObject:v34];
  }

  v50 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v48 encodeToMPSCommandEncoder:v50 commandBuffer:*(a2 + 1) sourceArrays:v49 destinationArray:v47];
}

uint64_t GPU::FusionOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 128) | 2) == 3)
  {
    v5 = *(a1 + 136);
    v11 = 0;
    v12 = 0;
    __p = 0;
    v6 = a3[1];
    if (v6 != *a3)
    {
      if (((v6 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    result = (*(*v5 + 24))(v5, a2, &__p, a4, a5);
    if (__p)
    {
      v11 = __p;
      v8 = result;
      operator delete(__p);
      return v8;
    }
  }

  else
  {
    v9 = MTLReportFailureTypeEnabled();
    result = 0;
    if (v9)
    {
      MTLReportFailure();
      return 0;
    }
  }

  return result;
}

void sub_1E06A1CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GPU::FusionReturnOpHandler::~FusionReturnOpHandler(GPU::FusionReturnOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::QuantizedConv2DFusionOpHandler::kernelDAGOp(void *a1, uint64_t a2)
{
  v11 = a1[3];
  v4 = *(a1[21] + 72);
  v5 = *(v4 + 24);
  v6 = *(v4 + 56);
  v7 = *(a1[22] + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  mlir::func::ReturnOp::getODSOperandIndexAndLength(&v11, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v5, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v8, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v6, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v9, 0);
  result = MPSKernelDAG::quartaryCoreOp();
  *(a2 + 104) = a1[3];
  return result;
}

void GPU::QuantizedConv2DFusionOpHandler::~QuantizedConv2DFusionOpHandler(GPU::QuantizedConv2DFusionOpHandler *this)
{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::QuantizedMatMulFusionOpHandler::kernelDAGOp(void *a1, uint64_t a2)
{
  v4 = *(a1[21] + 72);
  v5 = *(v4 + 24);
  v19 = *(v4 + 56);
  v6 = *(*(mlir::Value::getDefiningOp(&v19) + 72) + 24);
  v19 = *(*(a1[21] + 72) + 88);
  v7 = *(*(mlir::Value::getDefiningOp(&v19) + 72) + 24);
  v19 = *(*(a1[21] + 72) + 120);
  v8 = *(*(mlir::Value::getDefiningOp(&v19) + 72) + 24);
  v9 = *(a1[22] + 72);
  v10 = *(v9 + 24);
  v19 = *(v9 + 56);
  v11 = *(*(mlir::Value::getDefiningOp(&v19) + 72) + 24);
  v19 = *(*(a1[22] + 72) + 88);
  v15 = *(*(mlir::Value::getDefiningOp(&v19) + 72) + 24);
  v19 = *(*(a1[22] + 72) + 120);
  v14 = *(*(mlir::Value::getDefiningOp(&v19) + 72) + 24);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated((a1 + 20)))
  {
    operator new();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  if (mlir::mps::MatMulOp::getTransposeRhs((a1 + 20)))
  {
    operator new();
  }

  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v5, &v19);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v10, &__p);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v6, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v7, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v8, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v11, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v15, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v14, 0);
  v12 = MPSKernelDAG::octonaryCoreOp();
  *(a2 + 104) = a1[3];
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v12;
}

void sub_1E06A2344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    v24 = a22;
    if (!a22)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v24 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  _Unwind_Resume(exception_object);
}

void GPU::QuantizedMatMulFusionOpHandler::~QuantizedMatMulFusionOpHandler(GPU::QuantizedMatMulFusionOpHandler *this)
{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::QuantizedGatherNDFusionOpHandler::~QuantizedGatherNDFusionOpHandler(GPU::QuantizedGatherNDFusionOpHandler *this)
{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 40))(*(this + 17));
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B466D0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void EmitViewerSPI::initializeOps(EmitViewerSPI *this)
{
  MEMORY[0x1EEE9AC00](this);
  v63 = *MEMORY[0x1E69E9840];
  v1[23] = 14;
  strcpy(v1, "anec.A11Legacy");
  v2 = 1;
  v3[23] = 8;
  strcpy(v3, "anec.A12");
  v4 = 2;
  v5[23] = 8;
  strcpy(v5, "anec.A13");
  v6 = 3;
  v7[23] = 8;
  strcpy(v7, "anec.A14");
  v8 = 4;
  v9[23] = 8;
  strcpy(v9, "anec.A15");
  v10 = 5;
  v11[23] = 8;
  strcpy(v11, "anec.A16");
  v12 = 6;
  v13[23] = 8;
  strcpy(v13, "anec.A17");
  v14 = 7;
  v15[23] = 8;
  strcpy(v15, "anec.A18");
  v16 = 8;
  v17[23] = 16;
  strcpy(v17, "anec.arg_min_max");
  v18 = 9;
  v19[23] = 17;
  strcpy(v19, "anec.average_pool");
  v20 = 10;
  v21[23] = 15;
  strcpy(v21, "anec.batch_norm");
  v22 = 11;
  v23[23] = 19;
  strcpy(v23, "anec.batch_to_space");
  v24 = 12;
  v25[23] = 14;
  strcpy(v25, "anec.broadcast");
  v26 = 13;
  v27[23] = 9;
  strcpy(v27, "anec.cast");
  v28 = 14;
  v29[23] = 9;
  strcpy(v29, "anec.ceil");
  v30 = 15;
  v31[23] = 21;
  strcpy(v31, "anec.channel_to_space");
  v32 = 16;
  v33[23] = 17;
  strcpy(v33, "anec.clamped_relu");
  v34 = 17;
  v35[23] = 11;
  strcpy(v35, "anec.concat");
  v36 = 18;
  v37[23] = 16;
  strcpy(v37, "anec.convolution");
  v38 = 19;
  v39[23] = 8;
  strcpy(v39, "anec.cos");
  v40 = 20;
  v41[23] = 16;
  strcpy(v41, "anec.crop_resize");
  v42 = 21;
  v43[23] = 12;
  strcpy(v43, "anec.dequant");
  v44 = 22;
  v45[23] = 18;
  strcpy(v45, "anec.deconvolution");
  v46 = 23;
  v47[23] = 12;
  strcpy(v47, "anec.degamma");
  v48 = 24;
  v49[23] = 10;
  strcpy(v49, "anec.dirac");
  v50 = 25;
  v51[23] = 8;
  strcpy(v51, "anec.abs");
  v52 = 26;
  v53[23] = 8;
  strcpy(v53, "anec.add");
  v54 = 27;
  v55[23] = 8;
  strcpy(v55, "anec.div");
  v56 = 28;
  v57[23] = 10;
  strcpy(v57, "anec.equal");
  v58 = 29;
  v59[23] = 15;
  strcpy(v59, "anec.equal_zero");
  v60 = 30;
  v61[23] = 17;
  strcpy(v61, "anec.greater_than");
  v62 = 31;
  operator new();
}

void sub_1E06A7F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21);
    mlir::PassManager::~PassManager(&a36);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E06A827CLL);
}

void sub_1E06A8024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::~function(&a28);
  std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::~function(&a32);
  mlir::PassManager::~PassManager(&a36);
  _Unwind_Resume(a1);
}

void sub_1E06A8054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  while (1)
  {
    v38 = *(v36 - 9);
    v36 -= 4;
    if (v38 < 0)
    {
      operator delete(*v36);
    }

    if (v36 == &a36)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_1E06A8158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::__deallocate_node(v39);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1E06A81C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_end_catch();
  v9 = (a9 + 3651);
  v10 = -11872;
  v11 = (a9 + 3651);
  while (1)
  {
    v12 = *v11;
    v11 -= 32;
    if (v12 < 0)
    {
      operator delete(*(v9 - 23));
    }

    v9 = v11;
    v10 += 32;
    if (!v10)
    {
      JUMPOUT(0x1E06A821CLL);
    }
  }
}

void sub_1E06A81CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1E06A81D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1E06A8224(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1E06A8228);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(mlir::Pass *,mlir::Operation *)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

MPSGraphViewerNodePortSPI *EmitViewerSPI::emitNodeOutputPort(uint64_t a1, void *a2, MPSGraphViewerNodePortSPI *a3)
{
  v5 = a2;
  if (a3)
  {
    MPSDataType = getMPSDataType((*&a3->_dataType & 0xFFFFFFFFFFFFFFF8));
    v7 = getMPSShapeFromMLIR(*&a3->_dataType & 0xFFFFFFFFFFFFFFF8);
    a3 = [[MPSGraphViewerNodePortSPI alloc] initWithName:v5 dataType:MPSDataType shape:v7 valueRef:(*(*a1 + 32))(a1, a3)];
  }

  return a3;
}

MPSGraphViewerNodeSPI *EmitViewerSPI::emitNode(int8x8_t *this, MPSGraphViewerNodePortSPI *a2)
{
  __p = *(*&a2[1]._dataType + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&__p);
  v5 = strlen(AttrData);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v69 = v5;
  if (v5)
  {
    memmove(&__dst, AttrData, v5);
  }

  *(&__dst + v6) = 0;
  if ((v69 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v69 & 0x80u) == 0)
  {
    v8 = v69;
  }

  else
  {
    v8 = v68;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&__p, p_dst, v8);
  v10 = this[24];
  if (!*&v10)
  {
    goto LABEL_434;
  }

  v11 = v9;
  v12 = vcnt_s8(v10);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v9;
    if (v9 >= *&v10)
    {
      v13 = v9 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v9;
  }

  v14 = *(*&this[23] + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_434:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if ((v69 & 0x80u) == 0)
  {
    v16 = v69;
  }

  else
  {
    v16 = v68;
  }

  if ((v69 & 0x80u) == 0)
  {
    v17 = &__dst;
  }

  else
  {
    v17 = __dst;
  }

  if (v12.u32[0] < 2uLL)
  {
    v18 = *&v10 - 1;
    while (1)
    {
      v23 = v15[1];
      if (v23 == v11)
      {
        v24 = *(v15 + 39);
        v25 = v24;
        if ((v24 & 0x80u) != 0)
        {
          v24 = v15[3];
        }

        if (v24 == v16)
        {
          v26 = v25 >= 0 ? v15 + 2 : v15[2];
          if (!memcmp(v26, v17, v16))
          {
            goto LABEL_51;
          }
        }
      }

      else if ((v23 & v18) != v13)
      {
        goto LABEL_434;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_434;
      }
    }
  }

  while (1)
  {
    v19 = v15[1];
    if (v19 == v11)
    {
      break;
    }

    if (v19 >= *&v10)
    {
      v19 %= *&v10;
    }

    if (v19 != v13)
    {
      goto LABEL_434;
    }

LABEL_29:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_434;
    }
  }

  v20 = *(v15 + 39);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = v15[3];
  }

  if (v20 != v16)
  {
    goto LABEL_29;
  }

  v22 = v21 >= 0 ? v15 + 2 : v15[2];
  if (memcmp(v22, v17, v16))
  {
    goto LABEL_29;
  }

LABEL_51:
  switch(*(v15 + 10))
  {
    case 1:
      EmitterViewerSPI::ANECA11LegacyOpHandler::ANECA11LegacyOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 2:
      EmitterViewerSPI::ANECA12OpHandler::ANECA12OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 3:
      EmitterViewerSPI::ANECA13OpHandler::ANECA13OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 4:
      EmitterViewerSPI::ANECA14OpHandler::ANECA14OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 5:
      EmitterViewerSPI::ANECA15OpHandler::ANECA15OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 6:
      EmitterViewerSPI::ANECA16OpHandler::ANECA16OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 7:
      EmitterViewerSPI::ANECA17OpHandler::ANECA17OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 8:
      EmitterViewerSPI::ANECA18OpHandler::ANECA18OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 9:
      EmitterViewerSPI::ANECArgMinMaxOpHandler::ANECArgMinMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA:
      EmitterViewerSPI::ANECAveragePoolOpHandler::ANECAveragePoolOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB:
      EmitterViewerSPI::ANECBatchNormOpHandler::ANECBatchNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC:
      EmitterViewerSPI::ANECBatchToSpaceOpHandler::ANECBatchToSpaceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD:
      EmitterViewerSPI::ANECBroadcastOpHandler::ANECBroadcastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE:
      EmitterViewerSPI::ANECCastOpHandler::ANECCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF:
      EmitterViewerSPI::ANECCeilOpHandler::ANECCeilOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10:
      EmitterViewerSPI::ANECChannelToSpaceOpHandler::ANECChannelToSpaceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11:
      EmitterViewerSPI::ANECClampedReluOpHandler::ANECClampedReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12:
      EmitterViewerSPI::ANECConcatOpHandler::ANECConcatOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13:
      EmitterViewerSPI::ANECConvolutionOpHandler::ANECConvolutionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14:
      EmitterViewerSPI::ANECCosOpHandler::ANECCosOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15:
      EmitterViewerSPI::ANECCropResizeOpHandler::ANECCropResizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16:
      EmitterViewerSPI::ANECDeQuantOpHandler::ANECDeQuantOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x17:
      EmitterViewerSPI::ANECDeconvolutionOpHandler::ANECDeconvolutionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x18:
      EmitterViewerSPI::ANECDegammaOpHandler::ANECDegammaOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x19:
      EmitterViewerSPI::ANECDiracOpHandler::ANECDiracOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1A:
      EmitterViewerSPI::ANECElementwiseAbsOpHandler::ANECElementwiseAbsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1B:
      EmitterViewerSPI::ANECElementwiseAddOpHandler::ANECElementwiseAddOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1C:
      EmitterViewerSPI::ANECElementwiseDivOpHandler::ANECElementwiseDivOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1D:
      EmitterViewerSPI::ANECElementwiseEqualOpHandler::ANECElementwiseEqualOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1E:
      EmitterViewerSPI::ANECElementwiseEqualZeroOpHandler::ANECElementwiseEqualZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x1F:
      EmitterViewerSPI::ANECElementwiseGreaterThanOpHandler::ANECElementwiseGreaterThanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x20:
      EmitterViewerSPI::ANECElementwiseGreaterThanEqualOpHandler::ANECElementwiseGreaterThanEqualOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x21:
      EmitterViewerSPI::ANECElementwiseGreaterThanEqualZeroOpHandler::ANECElementwiseGreaterThanEqualZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x22:
      EmitterViewerSPI::ANECElementwiseGreaterThanZeroOpHandler::ANECElementwiseGreaterThanZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x23:
      EmitterViewerSPI::ANECElementwiseLessThanOpHandler::ANECElementwiseLessThanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x24:
      EmitterViewerSPI::ANECElementwiseLessThanEqualOpHandler::ANECElementwiseLessThanEqualOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x25:
      EmitterViewerSPI::ANECElementwiseLessThanEqualZeroOpHandler::ANECElementwiseLessThanEqualZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x26:
      EmitterViewerSPI::ANECElementwiseLessThanZeroOpHandler::ANECElementwiseLessThanZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x27:
      EmitterViewerSPI::ANECElementwiseMaxOpHandler::ANECElementwiseMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x28:
      EmitterViewerSPI::ANECElementwiseMinOpHandler::ANECElementwiseMinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x29:
      EmitterViewerSPI::ANECElementwiseMultOpHandler::ANECElementwiseMultOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2A:
      EmitterViewerSPI::ANECElementwiseNotEqualOpHandler::ANECElementwiseNotEqualOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2B:
      EmitterViewerSPI::ANECElementwiseNotEqualZeroOpHandler::ANECElementwiseNotEqualZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2C:
      EmitterViewerSPI::ANECElementwisePowerOpHandler::ANECElementwisePowerOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2D:
      EmitterViewerSPI::ANECElementwiseSquareOpHandler::ANECElementwiseSquareOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2E:
      EmitterViewerSPI::ANECElementwiseSubOpHandler::ANECElementwiseSubOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x2F:
      EmitterViewerSPI::ANECEluOpHandler::ANECEluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x30:
      EmitterViewerSPI::ANECErfOpHandler::ANECErfOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x31:
      EmitterViewerSPI::ANECExp2OpHandler::ANECExp2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x32:
      EmitterViewerSPI::ANECFlattenOpHandler::ANECFlattenOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x33:
      EmitterViewerSPI::ANECFloorOpHandler::ANECFloorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x34:
      EmitterViewerSPI::ANECGOCOpHandler::ANECGOCOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x35:
      EmitterViewerSPI::ANECGatherNDOpHandler::ANECGatherNDOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x36:
      EmitterViewerSPI::ANECGeluOpHandler::ANECGeluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x37:
      EmitterViewerSPI::ANECGlobalArgMinMaxOpHandler::ANECGlobalArgMinMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x38:
      EmitterViewerSPI::ANECHighPrecisionSigmoidOpHandler::ANECHighPrecisionSigmoidOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x39:
      EmitterViewerSPI::ANECInputViewOpHandler::ANECInputViewOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3A:
      EmitterViewerSPI::ANECInstanceNormOpHandler::ANECInstanceNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3B:
      EmitterViewerSPI::ANECInvertOpHandler::ANECInvertOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3C:
      EmitterViewerSPI::ANECL2NormPoolOpHandler::ANECL2NormPoolOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3D:
      EmitterViewerSPI::ANECLayerNormOpHandler::ANECLayerNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3E:
      EmitterViewerSPI::ANECLeakyReluOpHandler::ANECLeakyReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x3F:
      EmitterViewerSPI::ANECLinearOpHandler::ANECLinearOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x40:
      EmitterViewerSPI::ANECLog2OpHandler::ANECLog2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x41:
      EmitterViewerSPI::ANECMatMulOpHandler::ANECMatMulOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x42:
      EmitterViewerSPI::ANECMaxPoolOpHandler::ANECMaxPoolOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x43:
      EmitterViewerSPI::ANECNReluOpHandler::ANECNReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x44:
      EmitterViewerSPI::ANECPaddingOpHandler::ANECPaddingOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x45:
      EmitterViewerSPI::ANECPixelShuffleOpHandler::ANECPixelShuffleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x46:
      EmitterViewerSPI::ANECPixelUnshuffleOpHandler::ANECPixelUnshuffleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x47:
      EmitterViewerSPI::ANECQuantOpHandler::ANECQuantOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x48:
      EmitterViewerSPI::ANECReduceAvgOpHandler::ANECReduceAvgOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x49:
      EmitterViewerSPI::ANECReduceMaxOpHandler::ANECReduceMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4A:
      EmitterViewerSPI::ANECReduceMinOpHandler::ANECReduceMinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4B:
      EmitterViewerSPI::ANECReduceSumOpHandler::ANECReduceSumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4C:
      EmitterViewerSPI::ANECRegionReturnOpHandler::ANECRegionReturnOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4D:
      EmitterViewerSPI::ANECReluOpHandler::ANECReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4E:
      EmitterViewerSPI::ANECResampleOpHandler::ANECResampleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x4F:
      EmitterViewerSPI::ANECReshapeOpHandler::ANECReshapeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x50:
      EmitterViewerSPI::ANECResizeOpHandler::ANECResizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x51:
      EmitterViewerSPI::ANECRingBufferReaderOpHandler::ANECRingBufferReaderOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x52:
      EmitterViewerSPI::ANECRingBufferWriterOpHandler::ANECRingBufferWriterOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x53:
      EmitterViewerSPI::ANECRoundNearestOpHandler::ANECRoundNearestOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x54:
      EmitterViewerSPI::ANECRsqrtOpHandler::ANECRsqrtOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x55:
      EmitterViewerSPI::ANECScaledElementWiseOpHandler::ANECScaledElementWiseOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x56:
      EmitterViewerSPI::ANECSigmoidOpHandler::ANECSigmoidOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x57:
      EmitterViewerSPI::ANECSignOpHandler::ANECSignOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x58:
      EmitterViewerSPI::ANECSinOpHandler::ANECSinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x59:
      EmitterViewerSPI::ANECSoftmaxOpHandler::ANECSoftmaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5A:
      EmitterViewerSPI::ANECSpaceToBatchOpHandler::ANECSpaceToBatchOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5B:
      EmitterViewerSPI::ANECSpaceToChannelOpHandler::ANECSpaceToChannelOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5C:
      EmitterViewerSPI::ANECSqrOpHandler::ANECSqrOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5D:
      EmitterViewerSPI::ANECSqrtOpHandler::ANECSqrtOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5E:
      EmitterViewerSPI::ANECStateOpHandler::ANECStateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x5F:
      EmitterViewerSPI::ANECSwishOpHandler::ANECSwishOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x60:
      EmitterViewerSPI::ANECTanhOpHandler::ANECTanhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x61:
      EmitterViewerSPI::ANECTensorBufferToTensorOpHandler::ANECTensorBufferToTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x62:
      EmitterViewerSPI::ANECTensorToTensorBufferOpHandler::ANECTensorToTensorBufferOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x63:
      EmitterViewerSPI::ANECTileOpHandler::ANECTileOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x64:
      EmitterViewerSPI::ANECTransposeOpHandler::ANECTransposeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x65:
      EmitterViewerSPI::ANECTruncOpHandler::ANECTruncOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x66:
      EmitterViewerSPI::ANECUnflattenOpHandler::ANECUnflattenOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x67:
      EmitterViewerSPI::ANECUnrealizedConversionCastOpHandler::ANECUnrealizedConversionCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x68:
      EmitterViewerSPI::MPSACosOpHandler::MPSACosOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x69:
      EmitterViewerSPI::MPSACoshOpHandler::MPSACoshOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6A:
      EmitterViewerSPI::MPSASinOpHandler::MPSASinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6B:
      EmitterViewerSPI::MPSASinhOpHandler::MPSASinhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6C:
      EmitterViewerSPI::MPSATan2OpHandler::MPSATan2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6D:
      EmitterViewerSPI::MPSATanOpHandler::MPSATanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6E:
      EmitterViewerSPI::MPSATanhOpHandler::MPSATanhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x6F:
      EmitterViewerSPI::MPSAbsoluteOpHandler::MPSAbsoluteOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x70:
      EmitterViewerSPI::MPSAbsoluteSquareOpHandler::MPSAbsoluteSquareOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x71:
      EmitterViewerSPI::MPSAddOpHandler::MPSAddOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x72:
      EmitterViewerSPI::MPSAndOpHandler::MPSAndOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x73:
      EmitterViewerSPI::MPSAssignVariableOpHandler::MPSAssignVariableOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x74:
      EmitterViewerSPI::MPSBandPartOpHandler::MPSBandPartOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x75:
      EmitterViewerSPI::MPSBatchToSpaceOpHandler::MPSBatchToSpaceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x76:
      EmitterViewerSPI::MPSBiasAddGradOpHandler::MPSBiasAddGradOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x77:
      EmitterViewerSPI::MPSBiasAddOpHandler::MPSBiasAddOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x78:
      EmitterViewerSPI::MPSBitwiseAndOpHandler::MPSBitwiseAndOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x79:
      EmitterViewerSPI::MPSBitwiseLeftShiftOpHandler::MPSBitwiseLeftShiftOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7A:
      EmitterViewerSPI::MPSBitwiseNotOpHandler::MPSBitwiseNotOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7B:
      EmitterViewerSPI::MPSBitwiseOrOpHandler::MPSBitwiseOrOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7C:
      EmitterViewerSPI::MPSBitwisePopcountOpHandler::MPSBitwisePopcountOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7D:
      EmitterViewerSPI::MPSBitwiseRightShiftOpHandler::MPSBitwiseRightShiftOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7E:
      EmitterViewerSPI::MPSBitwiseXorOpHandler::MPSBitwiseXorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x7F:
      EmitterViewerSPI::MPSBroadcastGradientArgsOpHandler::MPSBroadcastGradientArgsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x80:
      EmitterViewerSPI::MPSBroadcastToOpHandler::MPSBroadcastToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x81:
      EmitterViewerSPI::MPSCallOpHandler::MPSCallOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x82:
      EmitterViewerSPI::MPSCastOpHandler::MPSCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x83:
      EmitterViewerSPI::MPSCeilOpHandler::MPSCeilOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x84:
      EmitterViewerSPI::MPSClampOpHandler::MPSClampOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x85:
      EmitterViewerSPI::MPSColToImOpHandler::MPSColToImOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x86:
      EmitterViewerSPI::MPSConcatOpHandler::MPSConcatOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x87:
      EmitterViewerSPI::MPSConjugateOpHandler::MPSConjugateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x88:
      EmitterViewerSPI::MPSConstantOpHandler::MPSConstantOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x89:
      EmitterViewerSPI::MPSConv2DDataGradientOpHandler::MPSConv2DDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8A:
      EmitterViewerSPI::MPSConv2DOpHandler::MPSConv2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8B:
      EmitterViewerSPI::MPSConv2DWeightsGradientOpHandler::MPSConv2DWeightsGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8C:
      EmitterViewerSPI::MPSConv3DDataGradientOpHandler::MPSConv3DDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8D:
      EmitterViewerSPI::MPSConv3DOpHandler::MPSConv3DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8E:
      EmitterViewerSPI::MPSConv3DWeightsGradientOpHandler::MPSConv3DWeightsGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x8F:
      EmitterViewerSPI::MPSCosOpHandler::MPSCosOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x90:
      EmitterViewerSPI::MPSCoshOpHandler::MPSCoshOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x91:
      EmitterViewerSPI::MPSCostVolumeOpHandler::MPSCostVolumeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x92:
      EmitterViewerSPI::MPSCreateComplexOpHandler::MPSCreateComplexOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x93:
      EmitterViewerSPI::MPSCreateTextureTensorOpHandler::MPSCreateTextureTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x94:
      EmitterViewerSPI::MPSCropOpHandler::MPSCropOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x95:
      EmitterViewerSPI::MPSCropResizeOpHandler::MPSCropResizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x96:
      EmitterViewerSPI::MPSCumulativeMaximumOpHandler::MPSCumulativeMaximumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x97:
      EmitterViewerSPI::MPSCumulativeMinimumOpHandler::MPSCumulativeMinimumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x98:
      EmitterViewerSPI::MPSCumulativeProductOpHandler::MPSCumulativeProductOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x99:
      EmitterViewerSPI::MPSCumulativeSumOpHandler::MPSCumulativeSumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9A:
      EmitterViewerSPI::MPSDegammaOpHandler::MPSDegammaOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9B:
      EmitterViewerSPI::MPSDepthToSpace2DOpHandler::MPSDepthToSpace2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9C:
      EmitterViewerSPI::MPSDepthwiseConv2DDataGradientOpHandler::MPSDepthwiseConv2DDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9D:
      EmitterViewerSPI::MPSDepthwiseConv2DOpHandler::MPSDepthwiseConv2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9E:
      EmitterViewerSPI::MPSDepthwiseConv2DWeightsGradientOpHandler::MPSDepthwiseConv2DWeightsGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x9F:
      EmitterViewerSPI::MPSDepthwiseConv3DDataGradientOpHandler::MPSDepthwiseConv3DDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA0:
      EmitterViewerSPI::MPSDepthwiseConv3DOpHandler::MPSDepthwiseConv3DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA1:
      EmitterViewerSPI::MPSDepthwiseConv3DWeightsGradientOpHandler::MPSDepthwiseConv3DWeightsGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA2:
      EmitterViewerSPI::MPSDequantizeLUTOpHandler::MPSDequantizeLUTOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA3:
      EmitterViewerSPI::MPSDequantizeOpHandler::MPSDequantizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA4:
      EmitterViewerSPI::MPSDimensionSizeOpHandler::MPSDimensionSizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA5:
      EmitterViewerSPI::MPSDiracOpHandler::MPSDiracOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA6:
      EmitterViewerSPI::MPSDivideOpHandler::MPSDivideOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA7:
      EmitterViewerSPI::MPSDynamicShapeCastOpHandler::MPSDynamicShapeCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA8:
      EmitterViewerSPI::MPSEluOpHandler::MPSEluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xA9:
      EmitterViewerSPI::MPSEqualToOpHandler::MPSEqualToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAA:
      EmitterViewerSPI::MPSErfOpHandler::MPSErfOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAB:
      EmitterViewerSPI::MPSExpandDimsOpHandler::MPSExpandDimsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAC:
      EmitterViewerSPI::MPSExponentBase2OpHandler::MPSExponentBase2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAD:
      EmitterViewerSPI::MPSExponentBase10OpHandler::MPSExponentBase10OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAE:
      EmitterViewerSPI::MPSExponentOpHandler::MPSExponentOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xAF:
      EmitterViewerSPI::MPSFastFourierTransformOpHandler::MPSFastFourierTransformOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB0:
      EmitterViewerSPI::MPSFlatten2DOpHandler::MPSFlatten2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB1:
      EmitterViewerSPI::MPSFloorDivideOpHandler::MPSFloorDivideOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB2:
      EmitterViewerSPI::MPSFloorOpHandler::MPSFloorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB3:
      EmitterViewerSPI::MPSGRUGradientOpHandler::MPSGRUGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB4:
      EmitterViewerSPI::MPSGRUOpHandler::MPSGRUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB5:
      EmitterViewerSPI::MPSGatherAlongAxisOpHandler::MPSGatherAlongAxisOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB6:
      EmitterViewerSPI::MPSGatherNDOpHandler::MPSGatherNDOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB7:
      EmitterViewerSPI::MPSGatherOpHandler::MPSGatherOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB8:
      EmitterViewerSPI::MPSGeluOpHandler::MPSGeluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xB9:
      EmitterViewerSPI::MPSGetCoordOpHandler::MPSGetCoordOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBA:
      EmitterViewerSPI::MPSGreaterThanOpHandler::MPSGreaterThanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBB:
      EmitterViewerSPI::MPSGreaterThanOrEqualToOpHandler::MPSGreaterThanOrEqualToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBC:
      EmitterViewerSPI::MPSHammingDistanceOpHandler::MPSHammingDistanceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBD:
      EmitterViewerSPI::MPSHermiteanToRealFFTOpHandler::MPSHermiteanToRealFFTOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBE:
      EmitterViewerSPI::MPSIdentityOpHandler::MPSIdentityOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xBF:
      EmitterViewerSPI::MPSImToColOpHandler::MPSImToColOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC0:
      EmitterViewerSPI::MPSImaginaryPartOpHandler::MPSImaginaryPartOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC1:
      EmitterViewerSPI::MPSInitRandomPhiloxStateOpHandler::MPSInitRandomPhiloxStateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC2:
      EmitterViewerSPI::MPSInstanceNormOpHandler::MPSInstanceNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC3:
      EmitterViewerSPI::MPSIsFiniteOpHandler::MPSIsFiniteOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC4:
      EmitterViewerSPI::MPSIsInfiniteOpHandler::MPSIsInfiniteOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC5:
      EmitterViewerSPI::MPSIsNaNOpHandler::MPSIsNaNOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC6:
      EmitterViewerSPI::MPSLPNormOpHandler::MPSLPNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC7:
      EmitterViewerSPI::MPSLSTMGradientOpHandler::MPSLSTMGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC8:
      EmitterViewerSPI::MPSLSTMOpHandler::MPSLSTMOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xC9:
      EmitterViewerSPI::MPSLeakyReluOpHandler::MPSLeakyReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCA:
      EmitterViewerSPI::MPSLessThanOpHandler::MPSLessThanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCB:
      EmitterViewerSPI::MPSLessThanOrEqualToOpHandler::MPSLessThanOrEqualToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCC:
      EmitterViewerSPI::MPSLocalConvolutionDataGradientOpHandler::MPSLocalConvolutionDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCD:
      EmitterViewerSPI::MPSLocalConvolutionOpHandler::MPSLocalConvolutionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCE:
      EmitterViewerSPI::MPSLocalConvolutionWeightGradientOpHandler::MPSLocalConvolutionWeightGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xCF:
      EmitterViewerSPI::MPSLogarithmBase2OpHandler::MPSLogarithmBase2OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD0:
      EmitterViewerSPI::MPSLogarithmBase10OpHandler::MPSLogarithmBase10OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD1:
      EmitterViewerSPI::MPSLogarithmOpHandler::MPSLogarithmOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD2:
      EmitterViewerSPI::MPSMatMulOpHandler::MPSMatMulOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD3:
      EmitterViewerSPI::MPSMaterializeSparseTensorOpHandler::MPSMaterializeSparseTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD4:
      EmitterViewerSPI::MPSMatrixDecompositionLUOpHandler::MPSMatrixDecompositionLUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD5:
      EmitterViewerSPI::MPSMatrixInverseOpHandler::MPSMatrixInverseOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD6:
      EmitterViewerSPI::MPSMatrixSolverLUOpHandler::MPSMatrixSolverLUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD7:
      EmitterViewerSPI::MPSMaximumOpHandler::MPSMaximumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD8:
      EmitterViewerSPI::MPSMinimumOpHandler::MPSMinimumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xD9:
      EmitterViewerSPI::MPSModuloOpHandler::MPSModuloOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDA:
      EmitterViewerSPI::MPSMultiplyOpHandler::MPSMultiplyOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDB:
      EmitterViewerSPI::MPSNReluOpHandler::MPSNReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDC:
      EmitterViewerSPI::MPSNandOpHandler::MPSNandOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDD:
      EmitterViewerSPI::MPSNegativeOpHandler::MPSNegativeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDE:
      EmitterViewerSPI::MPSNonMaximumSuppressionOpHandler::MPSNonMaximumSuppressionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xDF:
      EmitterViewerSPI::MPSNonZeroOpHandler::MPSNonZeroOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE0:
      EmitterViewerSPI::MPSNorOpHandler::MPSNorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE1:
      EmitterViewerSPI::MPSNormalizationOpHandler::MPSNormalizationOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE2:
      EmitterViewerSPI::MPSNotEqualToOpHandler::MPSNotEqualToOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE3:
      EmitterViewerSPI::MPSNotOpHandler::MPSNotOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE4:
      EmitterViewerSPI::MPSOneHotOpHandler::MPSOneHotOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE5:
      EmitterViewerSPI::MPSOrOpHandler::MPSOrOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE6:
      EmitterViewerSPI::MPSPReluOpHandler::MPSPReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE7:
      EmitterViewerSPI::MPSPadGradientOpHandler::MPSPadGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE8:
      EmitterViewerSPI::MPSPadOpHandler::MPSPadOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xE9:
      EmitterViewerSPI::MPSPermuteOpHandler::MPSPermuteOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEA:
      EmitterViewerSPI::MPSPlaceholderOpHandler::MPSPlaceholderOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEB:
      EmitterViewerSPI::MPSPoolAvgGradientOpHandler::MPSPoolAvgGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEC:
      EmitterViewerSPI::MPSPoolAvgOpHandler::MPSPoolAvgOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xED:
      EmitterViewerSPI::MPSPoolL2NormGradientOpHandler::MPSPoolL2NormGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEE:
      EmitterViewerSPI::MPSPoolL2NormOpHandler::MPSPoolL2NormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xEF:
      EmitterViewerSPI::MPSPoolMaxGradientOpHandler::MPSPoolMaxGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF0:
      EmitterViewerSPI::MPSPoolMaxOpHandler::MPSPoolMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF1:
      EmitterViewerSPI::MPSPowerOpHandler::MPSPowerOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF2:
      EmitterViewerSPI::MPSPruningGradientOpHandler::MPSPruningGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF3:
      EmitterViewerSPI::MPSPruningOpHandler::MPSPruningOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF4:
      EmitterViewerSPI::MPSQuantizeOpHandler::MPSQuantizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF5:
      EmitterViewerSPI::MPSRandomNormalOpHandler::MPSRandomNormalOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF6:
      EmitterViewerSPI::MPSRandomTruncatedNormalOpHandler::MPSRandomTruncatedNormalOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF7:
      EmitterViewerSPI::MPSRandomUniformOpHandler::MPSRandomUniformOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF8:
      EmitterViewerSPI::MPSRankOpHandler::MPSRankOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xF9:
      EmitterViewerSPI::MPSReadDataFromFileOpHandler::MPSReadDataFromFileOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFA:
      EmitterViewerSPI::MPSReadVariableOpHandler::MPSReadVariableOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFB:
      EmitterViewerSPI::MPSRealPartOpHandler::MPSRealPartOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFC:
      EmitterViewerSPI::MPSRealToHermiteanFFTOpHandler::MPSRealToHermiteanFFTOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFD:
      EmitterViewerSPI::MPSReciprocalOpHandler::MPSReciprocalOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFE:
      EmitterViewerSPI::MPSReciprocalSquareRootOpHandler::MPSReciprocalSquareRootOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0xFF:
      EmitterViewerSPI::MPSReductionAndOpHandler::MPSReductionAndOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x100:
      EmitterViewerSPI::MPSReductionArgMaxOpHandler::MPSReductionArgMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x101:
      EmitterViewerSPI::MPSReductionArgMinOpHandler::MPSReductionArgMinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x102:
      EmitterViewerSPI::MPSReductionLogSumExpOpHandler::MPSReductionLogSumExpOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x103:
      EmitterViewerSPI::MPSReductionMaxOpHandler::MPSReductionMaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x104:
      EmitterViewerSPI::MPSReductionMeanOpHandler::MPSReductionMeanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x105:
      EmitterViewerSPI::MPSReductionMinOpHandler::MPSReductionMinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x106:
      EmitterViewerSPI::MPSReductionOrOpHandler::MPSReductionOrOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x107:
      EmitterViewerSPI::MPSReductionProdOpHandler::MPSReductionProdOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x108:
      EmitterViewerSPI::MPSReductionSumOpHandler::MPSReductionSumOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x109:
      EmitterViewerSPI::MPSReductionVarianceOpHandler::MPSReductionVarianceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10A:
      EmitterViewerSPI::MPSReinterpretCastOpHandler::MPSReinterpretCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10B:
      EmitterViewerSPI::MPSRelu6OpHandler::MPSRelu6OpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10C:
      EmitterViewerSPI::MPSReluGradOpHandler::MPSReluGradOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10D:
      EmitterViewerSPI::MPSReluOpHandler::MPSReluOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10E:
      EmitterViewerSPI::MPSReshapeOpHandler::MPSReshapeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x10F:
      EmitterViewerSPI::MPSResizeGradientOpHandler::MPSResizeGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x110:
      EmitterViewerSPI::MPSResizeOpHandler::MPSResizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x111:
      EmitterViewerSPI::MPSReverseOpHandler::MPSReverseOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x112:
      EmitterViewerSPI::MPSRintOpHandler::MPSRintOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x113:
      EmitterViewerSPI::MPSRoundOpHandler::MPSRoundOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x114:
      EmitterViewerSPI::MPSSampleGridDataGradientOpHandler::MPSSampleGridDataGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x115:
      EmitterViewerSPI::MPSSampleGridOpHandler::MPSSampleGridOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x116:
      EmitterViewerSPI::MPSScatterAlongAxisOpHandler::MPSScatterAlongAxisOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x117:
      EmitterViewerSPI::MPSScatterNDOpHandler::MPSScatterNDOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x118:
      EmitterViewerSPI::MPSScatterOpHandler::MPSScatterOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x119:
      EmitterViewerSPI::MPSSelectOpHandler::MPSSelectOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11A:
      EmitterViewerSPI::MPSShapeOpHandler::MPSShapeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11B:
      EmitterViewerSPI::MPSSigmoidGradientOpHandler::MPSSigmoidGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11C:
      EmitterViewerSPI::MPSSigmoidGradientWithSigmoidOpHandler::MPSSigmoidGradientWithSigmoidOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11D:
      EmitterViewerSPI::MPSSigmoidHardOpHandler::MPSSigmoidHardOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11E:
      EmitterViewerSPI::MPSSigmoidOpHandler::MPSSigmoidOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x11F:
      EmitterViewerSPI::MPSSignOpHandler::MPSSignOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x120:
      EmitterViewerSPI::MPSSignbitOpHandler::MPSSignbitOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x121:
      EmitterViewerSPI::MPSSinOpHandler::MPSSinOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x122:
      EmitterViewerSPI::MPSSingleGateRNNGradientOpHandler::MPSSingleGateRNNGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x123:
      EmitterViewerSPI::MPSSingleGateRNNOpHandler::MPSSingleGateRNNOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x124:
      EmitterViewerSPI::MPSSinhOpHandler::MPSSinhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x125:
      EmitterViewerSPI::MPSSizeOpHandler::MPSSizeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x126:
      EmitterViewerSPI::MPSSliceOpHandler::MPSSliceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x127:
      EmitterViewerSPI::MPSSoftmaxOpHandler::MPSSoftmaxOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x128:
      EmitterViewerSPI::MPSSoftplusOpHandler::MPSSoftplusOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x129:
      EmitterViewerSPI::MPSSoftplusParametricOpHandler::MPSSoftplusParametricOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12A:
      EmitterViewerSPI::MPSSoftsignOpHandler::MPSSoftsignOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12B:
      EmitterViewerSPI::MPSSortOpHandler::MPSSortOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12C:
      EmitterViewerSPI::MPSSpaceToBatchOpHandler::MPSSpaceToBatchOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12D:
      EmitterViewerSPI::MPSSpaceToDepth2DOpHandler::MPSSpaceToDepth2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12E:
      EmitterViewerSPI::MPSSplitOpHandler::MPSSplitOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x12F:
      EmitterViewerSPI::MPSSquareOpHandler::MPSSquareOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x130:
      EmitterViewerSPI::MPSSquareRootOpHandler::MPSSquareRootOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x131:
      EmitterViewerSPI::MPSSqueezeOpHandler::MPSSqueezeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x132:
      EmitterViewerSPI::MPSStencilOpHandler::MPSStencilOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x133:
      EmitterViewerSPI::MPSStridedSliceGradientOpHandler::MPSStridedSliceGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x134:
      EmitterViewerSPI::MPSStridedSliceOpHandler::MPSStridedSliceOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x135:
      EmitterViewerSPI::MPSStridedSliceUpdateOpHandler::MPSStridedSliceUpdateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x136:
      EmitterViewerSPI::MPSSubtractOpHandler::MPSSubtractOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x137:
      EmitterViewerSPI::MPSSwishOpHandler::MPSSwishOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x138:
      EmitterViewerSPI::MPSTanOpHandler::MPSTanOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x139:
      EmitterViewerSPI::MPSTanhOpHandler::MPSTanhOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13A:
      EmitterViewerSPI::MPSTileGradientOpHandler::MPSTileGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13B:
      EmitterViewerSPI::MPSTileOpHandler::MPSTileOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13C:
      EmitterViewerSPI::MPSTopKGradientOpHandler::MPSTopKGradientOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13D:
      EmitterViewerSPI::MPSTopKOpHandler::MPSTopKOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13E:
      EmitterViewerSPI::MPSTransposeOpHandler::MPSTransposeOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x13F:
      EmitterViewerSPI::MPSTruncateOpHandler::MPSTruncateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x140:
      EmitterViewerSPI::MPSTypeConstraintOpHandler::MPSTypeConstraintOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x141:
      EmitterViewerSPI::MPSUnrealizedFoldOpHandler::MPSUnrealizedFoldOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x142:
      EmitterViewerSPI::MPSUpdateRandomStateOpHandler::MPSUpdateRandomStateOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x143:
      EmitterViewerSPI::MPSVariableFromTensorOpHandler::MPSVariableFromTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x144:
      EmitterViewerSPI::MPSXnorOpHandler::MPSXnorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x145:
      EmitterViewerSPI::MPSXorOpHandler::MPSXorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x146:
      EmitterViewerSPI::ConditionOpHandler::ConditionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x147:
      EmitterViewerSPI::ForOpHandler::ForOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x148:
      EmitterViewerSPI::IfOpHandler::IfOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x149:
      EmitterViewerSPI::MPSExtractOpHandler::MPSExtractOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14A:
      EmitterViewerSPI::MPSFromElementsOpHandler::MPSFromElementsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14B:
      EmitterViewerSPI::MPSFuncOpHandler::MPSFuncOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14C:
      EmitterViewerSPI::MPSModuleOpHandler::MPSModuleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14D:
      EmitterViewerSPI::MPSReturnOpHandler::MPSReturnOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14E:
      EmitterViewerSPI::WhileOpHandler::WhileOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x14F:
      EmitterViewerSPI::YieldOpHandler::YieldOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x150:
      EmitterViewerSPI::MPSXANEOpHandler::MPSXANEOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x151:
      EmitterViewerSPI::MPSXBufferToTensorOpHandler::MPSXBufferToTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x152:
      EmitterViewerSPI::MPSXCPUOpHandler::MPSXCPUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x153:
      EmitterViewerSPI::MPSXDeinterleaveOpHandler::MPSXDeinterleaveOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x154:
      EmitterViewerSPI::MPSXFPToIntClampedOpHandler::MPSXFPToIntClampedOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x155:
      EmitterViewerSPI::MPSXFusionOpHandler::MPSXFusionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x156:
      EmitterViewerSPI::MPSXFusionReturnOpHandler::MPSXFusionReturnOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x157:
      EmitterViewerSPI::MPSXGPUOpHandler::MPSXGPUOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x158:
      EmitterViewerSPI::MPSXInterleaveOpHandler::MPSXInterleaveOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x159:
      EmitterViewerSPI::MPSXListPopBackOpHandler::MPSXListPopBackOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15A:
      EmitterViewerSPI::MPSXListPushBackOpHandler::MPSXListPushBackOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15B:
      EmitterViewerSPI::MPSXMakeListOpHandler::MPSXMakeListOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15C:
      EmitterViewerSPI::MPSXMemrefBackedOpHandler::MPSXMemrefBackedOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15D:
      EmitterViewerSPI::MPSXQuantizedConv2DOpHandler::MPSXQuantizedConv2DOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15E:
      EmitterViewerSPI::MPSXQuantizedGatherOpHandler::MPSXQuantizedGatherOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x15F:
      EmitterViewerSPI::MPSXQuantizedMatMulOpHandler::MPSXQuantizedMatMulOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x160:
      EmitterViewerSPI::MPSXRegionReturnOpHandler::MPSXRegionReturnOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x161:
      EmitterViewerSPI::MPSXReturnStitchedOpHandler::MPSXReturnStitchedOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x162:
      EmitterViewerSPI::MPSXSparseDenseMatMulOpHandler::MPSXSparseDenseMatMulOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x163:
      EmitterViewerSPI::MPSXStitchedOpHandler::MPSXStitchedOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x164:
      EmitterViewerSPI::MPSXTensorToBufferOpHandler::MPSXTensorToBufferOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x165:
      EmitterViewerSPI::MPSXUseMemrefOpHandler::MPSXUseMemrefOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x166:
      EmitterViewerSPI::MPSXVarHandleOpHandler::MPSXVarHandleOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x167:
      EmitterViewerSPI::PlacementANEIOCastOpHandler::PlacementANEIOCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x168:
      EmitterViewerSPI::PlacementHostTypeCastOpHandler::PlacementHostTypeCastOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x169:
      EmitterViewerSPI::PlacementMemrefToTensorOpHandler::PlacementMemrefToTensorOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16A:
      EmitterViewerSPI::PlacementRegionCallOpHandler::PlacementRegionCallOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16B:
      EmitterViewerSPI::PlacementReplacedOpsOpHandler::PlacementReplacedOpsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16C:
      EmitterViewerSPI::PlacementReplacedOpsLiveOutsOpHandler::PlacementReplacedOpsLiveOutsOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16D:
      EmitterViewerSPI::PlacementStartTimerOpHandler::PlacementStartTimerOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16E:
      EmitterViewerSPI::PlacementStopTimerOpHandler::PlacementStopTimerOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x16F:
      EmitterViewerSPI::PlacementTensorToMemrefOpHandler::PlacementTensorToMemrefOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x170:
      EmitterViewerSPI::MPSSPIRMSNormOpHandler::MPSSPIRMSNormOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x171:
      EmitterViewerSPI::MPSSPIScaledDotProductAttentionOpHandler::MPSSPIScaledDotProductAttentionOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x172:
      EmitterViewerSPI::MPSSPIStridedArrayViewOpHandler::MPSSPIStridedArrayViewOpHandler(&__p, this, a2);
      goto LABEL_423;
    case 0x173:
      EmitterViewerSPI::ReturnOpHandler::ReturnOpHandler(&__p, this, a2);
LABEL_423:
      v27 = v74;

      break;
    default:
      if (MTLReportFailureTypeEnabled())
      {
        v32 = &__dst;
        if ((v69 & 0x80u) != 0)
        {
          v32 = __dst;
        }

        v64 = v32;
        MTLReportFailure();
      }

      v79[0] = *(*&a2[1]._dataType + 8);
      v33 = mlir::OpaqueAttr::getAttrData(v79);
      std::string::basic_string[abi:ne200100]<0>(&__p, v33);
      if (v73 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v66 = [MEMORY[0x1E696AEC0] stringWithCString:p_p encoding:{4, v64}];
      v65 = [MEMORY[0x1E695DF70] array];
      v35 = [MEMORY[0x1E695DF70] array];
      if ((BYTE6(a2[1].super.super.isa) & 0x80) != 0)
      {
        shape_high = HIDWORD(a2[1]._shape);
        if (shape_high)
        {
          v37 = 0;
          v38 = 24;
          do
          {
            v39 = *(a2[1]._valueRef + v38);
            v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"in%d", v37];
            v41 = EmitViewerSPI::emitNodeInputPort(this, v40, v39);

            if (v41)
            {
              [v35 addObject:v41];
            }

            ++v37;
            v38 += 32;
          }

          while (shape_high != v37);
        }
      }

      v42 = [MEMORY[0x1E695DF70] array];
      valueRef_high = HIDWORD(a2->_valueRef);
      if (valueRef_high)
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 0];
        v45 = EmitViewerSPI::emitNodeOutputPort(this, v44, (a2 - 16));

        if (v45)
        {
          [v42 addObject:v45];
        }

        if (valueRef_high != 1)
        {
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 1];
          v47 = EmitViewerSPI::emitNodeOutputPort(this, v46, (a2 - 32));

          if (v47)
          {
            [v42 addObject:v47];
          }

          if (valueRef_high != 2)
          {
            v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 2];
            v49 = EmitViewerSPI::emitNodeOutputPort(this, v48, (a2 - 48));

            if (v49)
            {
              [v42 addObject:v49];
            }

            if (valueRef_high != 3)
            {
              v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 3];
              v51 = EmitViewerSPI::emitNodeOutputPort(this, v50, (a2 - 64));

              if (v51)
              {
                [v42 addObject:v51];
              }

              if (valueRef_high != 4)
              {
                v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 4];
                v53 = EmitViewerSPI::emitNodeOutputPort(this, v52, a2 - 2);

                if (v53)
                {
                  [v42 addObject:v53];
                }

                if (valueRef_high != 5)
                {
                  v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", 5];
                  v55 = EmitViewerSPI::emitNodeOutputPort(this, v54, (a2 - 96));

                  if (v55)
                  {
                    [v42 addObject:v55];
                  }

                  if (valueRef_high != 6)
                  {
                    v60 = a2 - 3;
                    for (i = 6; i != valueRef_high; ++i)
                    {
                      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"out%d", i];
                      v63 = EmitViewerSPI::emitNodeOutputPort(this, v62, v60);

                      if (v63)
                      {
                        [v42 addObject:v63];
                      }

                      v60 = (v60 - 24);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v56 = [MPSGraphViewerNodeSPI alloc];
      v57 = [MEMORY[0x1E695DEC8] arrayWithArray:v35];
      v58 = [MEMORY[0x1E695DEC8] arrayWithArray:v42];
      v59 = [MEMORY[0x1E695DEC8] arrayWithArray:v65];
      v27 = [(MPSGraphViewerNodeSPI *)v56 initWithType:v66 inputs:v57 outputs:v58 properties:v59 regions:MEMORY[0x1E695E0F0]];

      if (SHIBYTE(v73) < 0)
      {
        operator delete(__p);
      }

      break;
  }

  v79[0] = 0;
  v79[1] = 0;
  v80 = 0;
  v72 = 0;
  v76 = 0;
  v77 = 1;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  __p = &unk_1F5B3FB30;
  v78 = v79;
  llvm::raw_ostream::SetBufferAndMode(&__p, 0, 0, 0);
  shape = a2->_shape;
  v28 = mlir::Attribute::print(&shape, &__p, 0);
  if (v80 >= 0)
  {
    v29 = v79;
  }

  else
  {
    v29 = v79[0];
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v29, v28}];
  llvm::raw_ostream::~raw_ostream(&__p);
  if (SHIBYTE(v80) < 0)
  {
    operator delete(v79[0]);
  }

  [(MPSGraphViewerNodeSPI *)v27 setLocation:v30];

  if (v69 < 0)
  {
    operator delete(__dst);
  }

  return v27;
}