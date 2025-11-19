void sub_1E0631DA0(_Unwind_Exception *a1)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void MILToMLIR::QuantizePattern::matchAndRewrite(MILToMLIR::QuantizePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = (*(*a2 + 56))(a2);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v22.__r_.__value_.__r.__words[2] = *(v5 + 16);
    *&v22.__r_.__value_.__l.__data_ = v6;
  }

  MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "input");
  v19 = 0;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v22;
  }

  else
  {
    v8 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  v9 = v8 + size;
  if (size >= 10)
  {
    v10 = v8;
    do
    {
      v11 = memchr(v10, 100, size - 9);
      if (!v11)
      {
        break;
      }

      if (*v11 == 0x69746E6175716564 && v11[4] == 25978)
      {
        break;
      }

      v10 = (v11 + 1);
      size = v9 - v10;
    }

    while (v9 - v10 > 9);
  }

  MEMORY[0x1E12E59E0](&v13);
  v14 = std::locale::use_facet(&v13, MEMORY[0x1E69E5318]);
  v15 = std::locale::use_facet(&v13, MEMORY[0x1E69E5340]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_1E06352D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::locale a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{
  std::deque<std::__state<char>>::~deque[abi:ne200100](&a46);
  if (STACK[0x208])
  {
    operator delete(STACK[0x208]);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a28);
  v47 = a1;
  if (a44 < 0)
  {
    operator delete(a39);
    v47 = a1;
  }

  _Unwind_Resume(v47);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    v24 = 1283;
    v23[2] = "mps.quantize";
    v23[3] = 12;
    v22 = 259;
    llvm::operator+(v23, &v21, v25);
    llvm::report_fatal_error(v25, 1);
  }

  mlir::OperationState::OperationState(v26, a2, v15);
  mlir::mps::QuantizeOp::build(a1, v26, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    v24 = 1283;
    v23[2] = "mps.dequantize";
    v23[3] = 14;
    v22 = 259;
    llvm::operator+(v23, &v21, v25);
    llvm::report_fatal_error(v25, 1);
  }

  mlir::OperationState::OperationState(v26, a2, v15);
  mlir::mps::DequantizeOp::build(a1, v26, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v18;
}

uint64_t mlir::OpBuilder::create<mlir::mps::AbsoluteOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AbsoluteOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.absolute";
    v15[3] = 12;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AbsoluteOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MaximumOp,mlir::Value &,mlir::mps::ConstantOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.maximum";
    v17[3] = 11;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::RoundOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RoundOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.round";
    v15[3] = 9;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::RoundOp,void>::id)
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

void MILToMLIR::TensorBufferPattern::matchAndRewrite(MILToMLIR::TensorBufferPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = (*(*a2 + 56))(a2);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v26.__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&v26.__r_.__value_.__l.__data_ = v7;
  }

  MILToMLIRRewriter::getLocationForOp(a3, a2);
  MILToMLIRRewriter::getArgValue(a3, a2, "input");
  if (*(this + 31) < 0 && *(this + 2) == 23)
  {
    v8 = *(this + 1);
    if (*v8 == 0x625F726F736E6574 && v8[1] == 0x6F745F7265666675 && *(v8 + 15) == 0x726F736E65745F6FLL)
    {
      HIBYTE(v28) = 5;
      strcpy(&v27, "input");
      ParameterType = MIL::IROperation::GetParameterType();
      if (SHIBYTE(v28) < 0)
      {
        v25 = ParameterType;
        operator delete(v27);
        ParameterType = v25;
      }

LABEL_21:
      v17 = MIL::IRValueType::TryCastAsMemoryLayoutType(ParameterType);
      if (v17)
      {
        v18 = MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v17);
        v19 = v18;
        if (v18)
        {
          InterleaveFactors = MIL::IRTensorBufferValueType::GetInterleaveFactors(v18);
          v21 = InterleaveFactors[1];
          if (v21 != *InterleaveFactors)
          {
            if (((v21 - *InterleaveFactors) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          Shape = MIL::IRTensorBufferValueType::GetShape(v19);
          v23 = Shape[1];
          if (v23 != *Shape)
          {
            if (((v23 - *Shape) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          Strides = MIL::IRTensorBufferValueType::TryGetStrides(v19);
          if (!Strides || Strides[1] == *Strides)
          {
            (*(*a2 + 200))(&v27);
            operator new();
          }

          operator new();
        }
      }

      operator new();
    }

    v11 = *v8;
    v12 = v8[1];
    v13 = *(v8 + 15);
    if (v11 == 0x745F726F736E6574 && v12 == 0x726F736E65745F6FLL && v13 == 0x7265666675625F72)
    {
      ParameterType = MIL::IROperation::GetOutputType(a2);
      goto LABEL_21;
    }
  }

  ParameterType = 0;
  goto LABEL_21;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PermuteOp,mlir::Value &,mlir::mps::ConstantOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.permute";
    v17[3] = 11;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::PermuteOp::build(a1, v20, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
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

void MILToMLIR::arrayToU64Attr(uint64_t **this, mlir::OpBuilder *a2, int *a3)
{
  v3 = *MEMORY[0x1E69E9840];
  mlir::Builder::getIntegerType(this, 64, 0);
  operator new();
}

void sub_1E0637494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v11)
  {
    free(a10);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

void MILToMLIR::ResamplePattern::matchAndRewrite(MILToMLIR::ResamplePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v60[5] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v52 = MILToMLIRRewriter::getArgValue(a3, a2, "coordinates");
  v50 = MILToMLIRRewriter::getArgValue(a3, a2, "padding_value");
  v59 = 18;
  strcpy(__p, "coordinates_format");
  if (MIL::IROperation::TryGetParameterValue())
  {
    MIL::IRValue::GetScalar<std::string>();
    if (v59 < 0)
    {
      if (*&__p[8] == 2)
      {
        if (**__p == 30841)
        {
          operator new();
        }
      }

      else
      {
        operator delete(*__p);
      }
    }
  }

  v59 = 16;
  strcpy(__p, "coordinates_type");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v59 < 0)
  {
    v7 = ParameterValue;
    operator delete(*__p);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else if (!ParameterValue)
  {
    goto LABEL_14;
  }

  MIL::IRValue::GetScalar<std::string>();
  if (v59 < 0)
  {
    v8 = *&__p[8] == 8 && **__p == 0x65766974616C6572;
    operator delete(*__p);
LABEL_19:
    v59 = 13;
    strcpy(__p, "sampling_mode");
    v9 = MIL::IROperation::TryGetParameterValue();
    if (v59 < 0)
    {
      v10 = v9;
      operator delete(*__p);
      if (!v10)
      {
        goto LABEL_31;
      }
    }

    else if (!v9)
    {
      goto LABEL_31;
    }

    MIL::IRValue::GetScalar<std::string>();
    if (v59 < 0)
    {
      v12 = *&__p[8] != 7 || **__p != 1918985582 || *(*__p + 3) != 1953719666;
      operator delete(*__p);
LABEL_41:
      v59 = 12;
      strcpy(__p, "padding_mode");
      v14 = MIL::IROperation::TryGetParameterValue();
      if (v59 < 0)
      {
        v15 = v14;
        operator delete(*__p);
        if (!v15)
        {
LABEL_71:
          v16 = 0;
          goto LABEL_96;
        }
      }

      else if (!v14)
      {
        goto LABEL_71;
      }

      MIL::IRValue::GetScalar<std::string>();
      if ((v59 & 0x80000000) == 0)
      {
        v16 = 0;
        if (v59 > 8u)
        {
          if (v59 != 9)
          {
            if (v59 != 10)
            {
              goto LABEL_96;
            }

            if (*__p == 0x697463656C666572 && *&__p[8] == 28271)
            {
              v16 = 1;
              goto LABEL_96;
            }

            goto LABEL_71;
          }

          v22 = *__p == 0x697274656D6D7973 && __p[8] == 99;
          v16 = 2 * v22;
        }

        else if (v59 == 6)
        {
          if (*__p != 1685221218 || *&__p[4] != 29285)
          {
            goto LABEL_71;
          }

          v16 = 3;
        }

        else if (v59 == 8)
        {
          v16 = 0;
        }

LABEL_96:
        v59 = 16;
        strcpy(__p, "coordinates_mode");
        v26 = MIL::IROperation::TryGetParameterValue();
        if (v59 < 0)
        {
          v27 = v26;
          operator delete(*__p);
          if (!v27)
          {
LABEL_138:
            v33 = 1;
LABEL_139:
            v59 = 13;
            strcpy(__p, "align_corners");
            MIL::IROperation::GetParameterValue();
            if (v59 < 0)
            {
              operator delete(*__p);
            }

            v45 = MIL::IRValue::GetScalar<BOOL>();
            v46 = mlir::mps::NearestRoundingModeAttr::get(a3[23], 0);
            v53 = LocationForOp;
            Context = mlir::Attribute::getContext(&v53);
            v48 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SampleGridOp,void>::id, Context);
            if (v49)
            {
              mlir::OperationState::OperationState(__p, LocationForOp, v48);
              mlir::mps::SampleGridOp::build(a3 + 23, __p, ArgValue, v52, v50, v33, v8, v45, v16, v12, 0, v46);
              mlir::OpBuilder::create((a3 + 23), __p);
              mlir::OperationState::~OperationState(__p);
              (*(*a2 + 200))(__p, a2);
              operator new();
            }

            v57 = 1283;
            v56[2] = "mps.sample_grid";
            v56[3] = 15;
            v55 = 259;
            llvm::operator+(v56, &v54, v60);
            llvm::report_fatal_error(v60, 1);
          }
        }

        else if (!v26)
        {
          goto LABEL_138;
        }

        MIL::IRValue::GetScalar<std::string>();
        if ((v59 & 0x80000000) == 0)
        {
          if (v59 != 12)
          {
            if (v59 != 22)
            {
              goto LABEL_138;
            }

            v28 = *__p == 0x7A696C616D726F6ELL && *&__p[8] == 0x5F6F72657A5F6465;
            if (!v28 || *&__p[14] != 0x656E6F5F6F745F6FLL)
            {
              goto LABEL_138;
            }

            goto LABEL_136;
          }

          if (*__p != 0x6C616D726F6E6E75 || *&__p[8] != 1684372073)
          {
            goto LABEL_138;
          }

LABEL_124:
          v33 = 0;
          goto LABEL_139;
        }

        if (*&__p[8] == 12)
        {
          v30 = *__p;
          if (**__p == 0x6C616D726F6E6E75 && *(*__p + 8) == 1684372073)
          {
            operator delete(*__p);
            goto LABEL_124;
          }
        }

        else
        {
          v30 = *__p;
          if (*&__p[8] == 22)
          {
            v36 = **__p != 0x7A696C616D726F6ELL || *(*__p + 8) != 0x5F6F72657A5F6465 || *(*__p + 14) != 0x656E6F5F6F745F6FLL;
            operator delete(*__p);
            if (v36)
            {
              goto LABEL_138;
            }

LABEL_136:
            *__p = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
            v37 = mlir::Attribute::getContext(__p);
            v39 = mlir::Float32Type::get(v37, v38);
            *__p = 1;
            v40 = mlir::RankedTensorType::get(__p, 1, v39, 0);
            *__p = mlir::mps::getConstantAttr<float>(v40, 1.0);
            v60[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __p) - 16;
            *__p = *(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8;
            v41 = mlir::Attribute::getContext(__p);
            v43 = mlir::Float32Type::get(v41, v42);
            *__p = 1;
            v44 = mlir::RankedTensorType::get(__p, 1, v43, 0);
            *__p = mlir::mps::getConstantAttr<float>(v44, 2.0);
            *__p = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, __p) - 16;
            v52 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &v52, __p) - 16;
            v52 = mlir::OpBuilder::create<mlir::mps::SubtractOp,mlir::Value &,mlir::Value &>(a3 + 23, LocationForOp, &v52, v60) - 16;
            goto LABEL_138;
          }
        }

        operator delete(v30);
        goto LABEL_138;
      }

      switch(*&__p[8])
      {
        case 6:
          v17 = *__p;
          if (**__p != 1685221218 || *(*__p + 4) != 29285)
          {
            goto LABEL_94;
          }

          v16 = 3;
          break;
        case 8:
          v16 = 0;
          v17 = *__p;
          break;
        case 0xALL:
          v17 = *__p;
          if (**__p != 0x697463656C666572 || *(*__p + 8) != 28271)
          {
LABEL_94:
            v16 = 0;
            break;
          }

          v16 = 1;
          break;
        default:
          v17 = *__p;
          if (*&__p[8] == 9)
          {
            v25 = **__p == 0x697274656D6D7973 && *(*__p + 8) == 99;
            v16 = 2 * v25;
            break;
          }

          goto LABEL_94;
      }

      operator delete(v17);
      goto LABEL_96;
    }

    if (v59 == 7)
    {
      v12 = *__p != 1918985582 || *&__p[3] != 1953719666;
      goto LABEL_41;
    }

LABEL_31:
    v12 = 1;
    goto LABEL_41;
  }

  if (v59 == 8)
  {
    v8 = *__p == 0x65766974616C6572;
    goto LABEL_19;
  }

LABEL_14:
  v8 = 0;
  goto LABEL_19;
}

void sub_1E0637FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  operator delete(v32);
  if (a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReverseOp,mlir::Value &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReverseOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.reverse";
    v17[3] = 11;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ReverseOp::build(a1, v20, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReverseOp,void>::id)
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

void MILToMLIR::ArgSortPattern::matchAndRewrite(MILToMLIR::ArgSortPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "axis");
  v25 = 9;
  strcpy(__p, "ascending");
  MIL::IROperation::GetParameterValue();
  v8 = MIL::IRValue::GetScalar<BOOL>();
  v18 = LocationForOp;
  Context = mlir::Attribute::getContext(&v18);
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SortOp,void>::id, Context);
  if (v11)
  {
    mlir::OperationState::OperationState(__p, LocationForOp, v10);
    mlir::mps::SortOp::build(a3 + 23, __p, ArgValue, v7, v8 ^ 1);
    v12 = mlir::OpBuilder::create((a3 + 23), __p);
    v13 = *(*(v12 + 48) + 16);
    mlir::OperationState::~OperationState(__p);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::mps::SortOp,void>::id)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v14 + 36);
    v16 = v14 - 16;
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 1);
    (*(*a2 + 200))(__p, a2);
    operator new();
  }

  v22 = 1283;
  v21[2] = "mps.sort";
  v21[3] = 8;
  v20 = 259;
  llvm::operator+(v21, &v19, v23);
  llvm::report_fatal_error(v23, 1);
}

void sub_1E06384C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E06384E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  operator delete(v26);
  std::vector<std::string>::~vector[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

uint64_t MILToMLIR::ReadStatePattern::matchAndRewrite(MILToMLIR::ReadStatePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "input");
  HIBYTE(v25) = 5;
  strcpy(&__p, "input");
  ParameterType = MIL::IROperation::GetParameterType();
  v7 = MIL::IRValueType::TryCastAsStateType(ParameterType);
  v10 = v7 && (WrappedType = MIL::IRStateValueType::GetWrappedType(v7), (v9 = MIL::IRValueType::TryCastAsMemoryLayoutType(WrappedType)) != 0) && MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v9) != 0;
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  if (!v10)
  {
    v11 = mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue);
    v12 = *(v11 - 8);
    v18 = LocationForOp;
    Context = mlir::Attribute::getContext(&v18);
    v14 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id, Context);
    if (v15)
    {
      mlir::OperationState::OperationState(&__p, LocationForOp, v14);
      mlir::arith::BitcastOp::build((a3 + 23), &__p, v12 & 0xFFFFFFFFFFFFFFF8, v11 - 16);
      mlir::OpBuilder::create((a3 + 23), &__p);
      mlir::OperationState::~OperationState(&__p);
      (*(*a2 + 200))(&__p, a2);
      operator new();
    }

    v22 = 1283;
    v21[2] = "mps.read_variable";
    v21[3] = 17;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  return 0;
}

void sub_1E06388CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MILToMLIR::WriteStatePattern::matchAndRewrite(MILToMLIR::WriteStatePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "input");
  v6 = MILToMLIRRewriter::getArgValue(a3, a2, "data");
  v25 = 5;
  strcpy(__p, "input");
  ParameterType = MIL::IROperation::GetParameterType();
  v8 = MIL::IRValueType::TryCastAsStateType(ParameterType);
  v11 = v8 && (WrappedType = MIL::IRStateValueType::GetWrappedType(v8), (v10 = MIL::IRValueType::TryCastAsMemoryLayoutType(WrappedType)) != 0) && MIL::IRMemoryLayoutValueType::TryAsTensorBufferType(v10) != 0;
  if ((*(*a2 + 192))(a2))
  {
    operator new();
  }

  if (v11)
  {
    return 0;
  }

  v13 = mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>((a3 + 23), LocationForOp, &ArgValue);
  v18 = LocationForOp;
  Context = mlir::Attribute::getContext(&v18);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.assign_variable";
    v21[3] = 19;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v15);
  mlir::mps::AssignVariableOp::build((a3 + 23), __p, v13 - 16, v6);
  mlir::OpBuilder::create((a3 + 23), __p);
  mlir::OperationState::~OperationState(__p);
  return 1;
}

void sub_1E0638BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MILToMLIR::SDPAPattern::matchAndRewrite(MILToMLIR::SDPAPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  __p[38] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "query");
  v64 = MILToMLIRRewriter::getArgValue(a3, a2, "key");
  v6 = MILToMLIRRewriter::getArgValue(a3, a2, "value");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "attn_mask");
  v63 = OptionalArgValue;
  v8 = (*(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8))
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v61 = v8;
    v62 = v9;
    if (v8)
    {
      LODWORD(__p[0]) = -1;
      v10 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(a3 + 23, LocationForOp, __p);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8));
      if (*(*(*(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v61);
        v20 = *(ArgAttrsAttr + 8 * v19 - 8);
        __p[0] = 1;
        v21 = mlir::RankedTensorType::get(__p, 1, ElementTypeOrSelf, 0);
        __p[0] = mlir::mps::getConstantAttr<float>(v21, 1.0 / sqrtf(v20));
        v17 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, __p);
      }

      else
      {
        v66 = LocationForOp;
        Context = mlir::Attribute::getContext(&v66);
        v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DimensionSizeOp,void>::id, Context);
        if ((v13 & 1) == 0)
        {
          v72 = 1283;
          v70 = "mps.dimension_size";
          v71 = 18;
          v68 = 259;
          llvm::operator+(v69, v67, v73);
          llvm::report_fatal_error(v73, 1);
        }

        mlir::OperationState::OperationState(__p, LocationForOp, v12);
        mlir::mps::DimensionSizeOp::build(a3 + 184, __p, ArgValue, v10 - 16);
        v14 = mlir::OpBuilder::create((a3 + 184), __p);
        v15 = *(*(v14 + 48) + 16);
        mlir::OperationState::~OperationState(__p);
        if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::DimensionSizeOp,void>::id)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0;
        }

        __p[0] = (v16 - 16);
        __p[0] = (mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 23, LocationForOp, __p, &ElementTypeOrSelf) - 16);
        v17 = mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value &>((a3 + 184), LocationForOp, __p);
      }

      v22 = v17;
      if ((*(*a2 + 192))(a2) == 1)
      {
        LOBYTE(__p[0]) = 0;
        v73[0] = 1;
        v23 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v64, __p, v73);
        v66 = LocationForOp;
        v24 = mlir::Attribute::getContext(&v66);
        v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, v24);
        if (v26)
        {
          mlir::OperationState::OperationState(__p, LocationForOp, v25);
          mlir::mps::ATan2Op::build(a3 + 23, __p, v23 - 16, v22 - 16);
          v27 = mlir::OpBuilder::create((a3 + 184), __p);
          v28 = *(*(v27 + 48) + 16);
          mlir::OperationState::~OperationState(__p);
          if (v28 == &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          v59 = v29;
          if (OptionalArgValue)
          {
            v58 = mlir::getElementTypeOrSelf((*(OptionalArgValue + 8) & 0xFFFFFFFFFFFFFFF8));
            if (ElementTypeOrSelf != v58)
            {
              if (mlir::Type::isInteger(&v58, 1))
              {
                if (mlir::Type::isF16(&ElementTypeOrSelf))
                {
                  __p[0] = 1;
                  v30 = mlir::RankedTensorType::get(__p, 1, ElementTypeOrSelf, 0);
                  __p[0] = mlir::mps::getConstantAttr<double>(v30, -40000.0);
                  v31 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, __p);
                }

                else if (mlir::Type::isF32(&ElementTypeOrSelf))
                {
                  v31 = mlir::mps::getConstant<int,float>((a3 + 184), LocationForOp, ElementTypeOrSelf);
                }

                else if (mlir::Type::isBF16(&ElementTypeOrSelf))
                {
                  v31 = mlir::mps::getConstant<int,double>((a3 + 184), LocationForOp, ElementTypeOrSelf, -3.4e38);
                }

                else
                {
                  v31 = mlir::mps::getConstant<int,double>((a3 + 184), LocationForOp, ElementTypeOrSelf, -40000.0);
                }

                v40 = v31;
                __p[0] = 1;
                v41 = mlir::RankedTensorType::get(__p, 1, ElementTypeOrSelf, 0);
                __p[0] = mlir::mps::getConstantAttr<float>(v41, 0.0);
                v42 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, __p);
                v66 = LocationForOp;
                v43 = mlir::Attribute::getContext(&v66);
                v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, v43);
                if ((v45 & 1) == 0)
                {
                  v72 = 1283;
                  v70 = "mps.select";
                  v71 = 10;
                  v68 = 259;
                  llvm::operator+(v69, v67, v73);
                  llvm::report_fatal_error(v73, 1);
                }

                mlir::OperationState::OperationState(__p, LocationForOp, v44);
                mlir::mps::SelectOp::build(a3 + 184, __p, v63, v42 - 16, v40 - 16);
                v46 = mlir::OpBuilder::create((a3 + 184), __p);
                v47 = *(*(v46 + 48) + 16);
                mlir::OperationState::~OperationState(__p);
                if (v47 == &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id)
                {
                  v48 = v46;
                }

                else
                {
                  v48 = 0;
                }

                v39 = v48 - 16;
              }

              else
              {
                v39 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type>(a3 + 23, LocationForOp, &v63, &ElementTypeOrSelf) - 16;
              }

              v63 = v39;
            }

            v37 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::MultiplyOp &,mlir::Value>(a3 + 23, LocationForOp, &v59, &v63);
          }

          else
          {
            __p[0] = 1;
            v32 = mlir::RankedTensorType::get(__p, 1, ElementTypeOrSelf, 0);
            __p[0] = mlir::mps::getConstantAttr<float>(v32, 0.0);
            v33 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, __p);
            v66 = LocationForOp;
            v34 = mlir::Attribute::getContext(&v66);
            v35 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, v34);
            if ((v36 & 1) == 0)
            {
              v72 = 1283;
              v70 = "mps.add";
              v71 = 7;
              v68 = 259;
              llvm::operator+(v69, v67, v73);
              llvm::report_fatal_error(v73, 1);
            }

            mlir::OperationState::OperationState(__p, LocationForOp, v35);
            mlir::mps::ATan2Op::build(a3 + 23, __p, v59 - 16, v33 - 16);
            v37 = mlir::OpBuilder::create((a3 + 184), __p);
            v38 = *(*(v37 + 48) + 16);
            mlir::OperationState::~OperationState(__p);
            if (v38 != &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
            {
              v37 = 0;
            }
          }

          v66 = LocationForOp;
          v49 = mlir::Attribute::getContext(&v66);
          v50 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id, v49);
          if (v51)
          {
            mlir::OperationState::OperationState(__p, LocationForOp, v50);
            mlir::mps::SoftmaxOp::build(a3 + 184, __p, v37 - 16, v10 - 16);
            v52 = mlir::OpBuilder::create((a3 + 184), __p);
            v53 = *(*(v52 + 48) + 16);
            mlir::OperationState::~OperationState(__p);
            v66 = LocationForOp;
            v54 = mlir::Attribute::getContext(&v66);
            v55 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, v54);
            if (v56)
            {
              if (v53 == &mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id)
              {
                v57 = v52;
              }

              else
              {
                v57 = 0;
              }

              mlir::OperationState::OperationState(__p, LocationForOp, v55);
              mlir::mps::MatMulOp::build(a3 + 23, __p, v57 - 16, v6, 0, 0);
              mlir::OpBuilder::create((a3 + 184), __p);
              mlir::OperationState::~OperationState(__p);
              (*(*a2 + 200))(__p, a2);
              operator new();
            }

            v72 = 1283;
            v70 = "mps.matmul";
            v71 = 10;
            v68 = 259;
            llvm::operator+(v69, v67, v73);
            llvm::report_fatal_error(v73, 1);
          }

          v72 = 1283;
          v70 = "mps.softmax";
          v71 = 11;
          v68 = 259;
          llvm::operator+(v69, v67, v73);
          llvm::report_fatal_error(v73, 1);
        }

        v72 = 1283;
        v70 = "mps.multiply";
        v71 = 12;
        v68 = 259;
        llvm::operator+(v69, v67, v73);
        llvm::report_fatal_error(v73, 1);
      }

      operator new();
    }
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  operator new();
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.reciprocal_square_root";
    v15[3] = 26;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.matmul";
    v21[3] = 10;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::MatMulOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
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

void MILToMLIR::ConvolutionPattern::~ConvolutionPattern(void **this)
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

void MILToMLIR::PadPattern::~PadPattern(void **this)
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

void MILToMLIR::CropPattern::~CropPattern(void **this)
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

void MILToMLIR::UpsampleBilinearPattern::~UpsampleBilinearPattern(void **this)
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

void MILToMLIR::ResizePattern::~ResizePattern(void **this)
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

void MILToMLIR::UpsampleNearestNeighborPattern::~UpsampleNearestNeighborPattern(void **this)
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

void MILToMLIR::SplitPattern::~SplitPattern(void **this)
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

void MILToMLIR::StackPattern::~StackPattern(void **this)
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

void MILToMLIR::InversePattern::~InversePattern(void **this)
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

void MILToMLIR::LogarithmPattern::~LogarithmPattern(void **this)
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

void MILToMLIR::RsqrtPattern::~RsqrtPattern(void **this)
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

void MILToMLIR::Range1dPattern::~Range1dPattern(void **this)
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

void MILToMLIR::RandomPattern::~RandomPattern(void **this)
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

void MILToMLIR::ReversePattern::~ReversePattern(void **this)
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

void MILToMLIR::Flatten2DPattern::~Flatten2DPattern(void **this)
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

void MILToMLIR::TopKPattern::~TopKPattern(void **this)
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

void MILToMLIR::CropResizePattern::~CropResizePattern(void **this)
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

void MILToMLIR::ConstExpressionPattern::~ConstExpressionPattern(void **this)
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

void MILToMLIR::ReshapeLikePattern::~ReshapeLikePattern(void **this)
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

void MILToMLIR::QuantizePattern::~QuantizePattern(void **this)
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

void MILToMLIR::TensorBufferPattern::~TensorBufferPattern(void **this)
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

void MILToMLIR::ResamplePattern::~ResamplePattern(void **this)
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

void MILToMLIR::ArgSortPattern::~ArgSortPattern(void **this)
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

void MILToMLIR::ReadStatePattern::~ReadStatePattern(void **this)
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

void MILToMLIR::WriteStatePattern::~WriteStatePattern(void **this)
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

void MILToMLIR::SDPAPattern::~SDPAPattern(void **this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DOp,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle &,int &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, int *a9)
{
  v29[38] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    v27 = 1283;
    v26[2] = "mps.depthwise_conv_3d";
    v26[3] = 21;
    v25 = 259;
    llvm::operator+(v26, &v24, v28);
    llvm::report_fatal_error(v28, 1);
  }

  mlir::OperationState::OperationState(v29, a2, v18);
  mlir::mps::DepthwiseConv3DOp::build(a1, v29, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
  v20 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v21;
}

uint64_t mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value &,mlir::Value &,int &,int &,int &,int &,int &,int &,int &,int &,int &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, int *a6, int *a7, int *a8, int *a9, int *a10, int *a11, int *a12, int *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16)
{
  v36[38] = *MEMORY[0x1E69E9840];
  v30 = a2;
  Context = mlir::Attribute::getContext(&v30);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    v34 = 1283;
    v33[2] = "mps.conv_2d";
    v33[3] = 11;
    v32 = 259;
    llvm::operator+(v33, &v31, v35);
    llvm::report_fatal_error(v35, 1);
  }

  mlir::OperationState::OperationState(v36, a2, v25);
  mlir::mps::Conv2DOp::build(a1, v36, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14, *a15, *a16);
  v27 = mlir::OpBuilder::create(a1, v36);
  if (*(*(v27 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  mlir::OperationState::~OperationState(v36);
  return v28;
}

uint64_t mlir::OpBuilder::create<mlir::mps::BiasAddOp,mlir::Value &,mlir::Value &,mlir::mps::TensorDataLayout>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BiasAddOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.bias_add";
    v19[3] = 12;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::BiasAddOp::build(a1, v22, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BiasAddOp,void>::id)
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

void *llvm::SmallVector<int,4u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v6 = (4 * a3) >> 2;
  if (v6 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v6, 4);
    v7 = *(a1 + 2);
    v8 = 4 * a3;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 4 * a3;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 4 * v7), a2, v8);
    v7 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v7 + (v8 >> 2);
  return a1;
}

void sub_1E063B868(_Unwind_Exception *exception_object)
{
  if (*v1 != v2)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DDataGradientOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle &,int &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unsigned int *a9, int *a10)
{
  v30[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    v28 = 1283;
    v27[2] = "mps.depthwise_conv_3d_data_gradient";
    v27[3] = 35;
    v26 = 259;
    llvm::operator+(v27, &v25, v29);
    llvm::report_fatal_error(v29, 1);
  }

  mlir::OperationState::OperationState(v30, a2, v19);
  mlir::mps::DepthwiseConv3DDataGradientOp::build(a1, v30, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v30);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v30);
  return v22;
}

uint64_t mlir::OpBuilder::create<mlir::mps::Conv2DDataGradientOp,mlir::Value &,mlir::Value &,mlir::Value &,int &,int &,int &,int &,int &,int &,int &,int &,int &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int *a6, int *a7, int *a8, int *a9, int *a10, int *a11, int *a12, int *a13, int *a14, unsigned int *a15, unsigned int *a16, unsigned int *a17)
{
  v37[38] = *MEMORY[0x1E69E9840];
  v31 = a2;
  Context = mlir::Attribute::getContext(&v31);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v35 = 1283;
    v34[2] = "mps.conv_2d_data_gradient";
    v34[3] = 25;
    v33 = 259;
    llvm::operator+(v34, &v32, v36);
    llvm::report_fatal_error(v36, 1);
  }

  mlir::OperationState::OperationState(v37, a2, v26);
  mlir::mps::Conv2DDataGradientOp::build(a1, v37, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14, *a15, *a16, *a17);
  v28 = mlir::OpBuilder::create(a1, v37);
  if (*(*(v28 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  mlir::OperationState::~OperationState(v37);
  return v29;
}

void *llvm::SmallVector<int,1u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  v6 = (4 * a3) >> 2;
  if (v6 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v6, 4);
    v7 = *(a1 + 2);
    v8 = 4 * a3;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 4 * a3;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 4 * v7), a2, v8);
    v7 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v7 + (v8 >> 2);
  return a1;
}

void sub_1E063BCAC(_Unwind_Exception *exception_object)
{
  if (*v1 != v2)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DOp,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "mps.depthwise_conv_3d";
    v25[3] = 21;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  mlir::mps::DepthwiseConv3DOp::build(a1, v28, *a3, *a4, *a5, *a6, *a7, *a8, -4);
  v19 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id)
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

void *llvm::SmallVector<int,5u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x500000000;
  v6 = (4 * a3) >> 2;
  if (v6 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v6, 4);
    v7 = *(a1 + 2);
    v8 = 4 * a3;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 4 * a3;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 4 * v7), a2, v8);
    v7 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v7 + (v8 >> 2);
  return a1;
}

void sub_1E063BF08(_Unwind_Exception *exception_object)
{
  if (*v1 != v2)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DDataGradientOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::mps::PaddingStyle &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unsigned int *a9)
{
  v29[38] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    v27 = 1283;
    v26[2] = "mps.depthwise_conv_3d_data_gradient";
    v26[3] = 35;
    v25 = 259;
    llvm::operator+(v26, &v24, v28);
    llvm::report_fatal_error(v28, 1);
  }

  mlir::OperationState::OperationState(v29, a2, v18);
  mlir::mps::DepthwiseConv3DDataGradientOp::build(a1, v29, *a3, *a4, *a5, *a6, *a7, *a8, *a9, -4);
  v20 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v21;
}

uint64_t mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, int *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.transpose";
    v19[3] = 13;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::TransposeOp::build(a1, v22, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value &,mlir::Value &,int &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,unsigned long &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, unint64_t *a6, unint64_t *a7, uint64_t *a8, uint64_t *a9, unint64_t *a10, unint64_t *a11, unint64_t *a12, unint64_t *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16)
{
  v36[38] = *MEMORY[0x1E69E9840];
  v30 = a2;
  Context = mlir::Attribute::getContext(&v30);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    v34 = 1283;
    v33[2] = "mps.conv_2d";
    v33[3] = 11;
    v32 = 259;
    llvm::operator+(v33, &v31, v35);
    llvm::report_fatal_error(v35, 1);
  }

  mlir::OperationState::OperationState(v36, a2, v25);
  mlir::mps::Conv2DOp::build(a1, v36, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14, *a15, *a16);
  v27 = mlir::OpBuilder::create(a1, v36);
  if (*(*(v27 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  mlir::OperationState::~OperationState(v36);
  return v28;
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E063C4AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlir::OpBuilder::create<mlir::mps::Conv3DOp,mlir::Value &,mlir::Value &,int &,std::vector<unsigned long long> &,std::vector<unsigned long long> &,std::vector<unsigned long long> &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, unsigned int *a10, unsigned int *a11)
{
  v32[38] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "mps.conv_3d";
    v29[3] = 11;
    v28 = 259;
    llvm::operator+(v29, &v27, v31);
    llvm::report_fatal_error(v31, 1);
  }

  mlir::OperationState::OperationState(v32, a2, v20);
  mlir::mps::Conv3DOp::build(a1, v32, *a3, *a4, *a5, *a6, (*(a6 + 8) - *a6) >> 3, v22, *a7, (*(a7 + 8) - *a7) >> 3, *a8, (*(a8 + 8) - *a8) >> 3, *a9, *a10, *a11);
  v23 = mlir::OpBuilder::create(a1, v32);
  if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv3DOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v32);
  return v24;
}

uint64_t mlir::OpBuilder::create<mlir::mps::Conv3DDataGradientOp,mlir::Value &,mlir::Value &,mlir::Value &,int &,std::vector<unsigned long long> &,std::vector<unsigned long long> &,std::vector<unsigned long long> &,mlir::mps::PaddingStyle &,mlir::mps::TensorDataLayout &,mlir::mps::TensorDataLayout &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, unsigned int *a11, unsigned int *a12)
{
  v32[38] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id, Context);
  if ((v22 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "mps.conv_3d_data_gradient";
    v29[3] = 25;
    v28 = 259;
    llvm::operator+(v29, &v27, v31);
    llvm::report_fatal_error(v31, 1);
  }

  mlir::OperationState::OperationState(v32, a2, v21);
  mlir::mps::Conv3DDataGradientOp::build(a1, v32, *a3, *a4, *a5, *a6, *a7, (*(a7 + 8) - *a7) >> 3, *a8, (*(a8 + 8) - *a8) >> 3, *a9, (*(a9 + 8) - *a9) >> 3, *a10, *a11, *a12);
  v23 = mlir::OpBuilder::create(a1, v32);
  if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv3DDataGradientOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v32);
  return v24;
}

void *llvm::SmallVector<long long,4u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v6 = (8 * a3) >> 3;
  if (v6 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v6, 8);
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

void sub_1E063C910(_Unwind_Exception *exception_object)
{
  if (*v1 != v2)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_20;
  }

  v10 = *(a2 + 55);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = a2[5];
  }

  if (v10 >= 0)
  {
    v15 = a2 + 4;
  }

  else
  {
    v15 = a2[4];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
LABEL_20:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
LABEL_53:
      if (v19)
      {
        *a3 = v21;
        return v21 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v19)
    {
      v20 = *a2;
      do
      {
        v21 = v20;
        v20 = v20[1];
      }

      while (v20);
    }

    else
    {
      v26 = a2;
      do
      {
        v21 = v26[2];
        v27 = *v21 == v26;
        v26 = v21;
      }

      while (v27);
    }

    v28 = *(a5 + 23);
    v29 = *(v21 + 55);
    if (v29 >= 0)
    {
      v30 = *(v21 + 55);
    }

    else
    {
      v30 = v21[5];
    }

    if (v29 >= 0)
    {
      v31 = v21 + 4;
    }

    else
    {
      v31 = v21[4];
    }

    if (v28 >= 0)
    {
      v32 = *(a5 + 23);
    }

    else
    {
      v32 = a5[1];
    }

    if (v28 >= 0)
    {
      v33 = a5;
    }

    else
    {
      v33 = *a5;
    }

    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    v35 = memcmp(v31, v33, v34);
    v36 = v30 < v32;
    if (v35)
    {
      v36 = v35 < 0;
    }

    if (v36)
    {
      goto LABEL_53;
    }

    v37 = *v8;
    if (*v8)
    {
      do
      {
        while (1)
        {
          v38 = v37;
          v41 = v37[4];
          v39 = v37 + 4;
          v40 = v41;
          v42 = *(v39 + 23);
          if (v42 >= 0)
          {
            v43 = *(v39 + 23);
          }

          else
          {
            v43 = v39[1];
          }

          if (v42 >= 0)
          {
            v44 = v39;
          }

          else
          {
            v44 = v40;
          }

          if (v43 >= v32)
          {
            v45 = v32;
          }

          else
          {
            v45 = v43;
          }

          v46 = memcmp(v33, v44, v45);
          v47 = v32 < v43;
          if (v46)
          {
            v47 = v46 < 0;
          }

          if (!v47)
          {
            break;
          }

          v37 = *v38;
          v8 = v38;
          if (!*v38)
          {
            goto LABEL_74;
          }
        }

        v48 = memcmp(v44, v33, v45);
        v49 = v43 < v32;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          break;
        }

        v8 = v38 + 1;
        v37 = v38[1];
      }

      while (v37);
    }

    else
    {
      v38 = v8;
    }

LABEL_74:
    *a3 = v38;
    return v8;
  }

  v22 = memcmp(v15, v13, v16);
  v23 = v14 < v12;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (!v23)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v24 = a2[1];
  if (v24)
  {
    v25 = a2[1];
    do
    {
      a4 = v25;
      v25 = *v25;
    }

    while (v25);
  }

  else
  {
    v50 = a2;
    do
    {
      a4 = v50[2];
      v27 = *a4 == v50;
      v50 = a4;
    }

    while (!v27);
  }

  if (a4 != v8)
  {
    v51 = *(a4 + 55);
    if (v51 >= 0)
    {
      v52 = *(a4 + 55);
    }

    else
    {
      v52 = a4[5];
    }

    if (v51 >= 0)
    {
      v53 = (a4 + 4);
    }

    else
    {
      v53 = a4[4];
    }

    if (v52 >= v12)
    {
      v54 = v12;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v13, v53, v54);
    v56 = v12 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      v57 = *v8;
      if (*v8)
      {
        v58 = a3;
        do
        {
          while (1)
          {
            v59 = v57;
            v62 = v57[4];
            v60 = v57 + 4;
            v61 = v62;
            v63 = *(v60 + 23);
            if (v63 >= 0)
            {
              v64 = *(v60 + 23);
            }

            else
            {
              v64 = v60[1];
            }

            if (v63 >= 0)
            {
              v65 = v60;
            }

            else
            {
              v65 = v61;
            }

            if (v64 >= v12)
            {
              v66 = v12;
            }

            else
            {
              v66 = v64;
            }

            v67 = memcmp(v13, v65, v66);
            v68 = v12 < v64;
            if (v67)
            {
              v68 = v67 < 0;
            }

            if (!v68)
            {
              break;
            }

            v57 = *v59;
            v8 = v59;
            if (!*v59)
            {
              goto LABEL_119;
            }
          }

          v69 = memcmp(v65, v13, v66);
          v70 = v64 < v12;
          if (v69)
          {
            v70 = v69 < 0;
          }

          if (!v70)
          {
            break;
          }

          v8 = v59 + 1;
          v57 = v59[1];
        }

        while (v57);
      }

      else
      {
        v59 = v8;
        v58 = a3;
      }

LABEL_119:
      *v58 = v59;
      return v8;
    }
  }

  if (v24)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1E063CE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<std::shared_ptr<MIL::IRArgument>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  if (*(v10 + 55) < 0)
  {
    operator delete(*(v10 + 32));
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<std::shared_ptr<MIL::IRArgument>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        v4 = *(v2 + 64);
        v5 = *(v2 + 56);
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 8);
            if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }

            v4 -= 16;
          }

          while (v4 != v3);
          v5 = *(v2 + 56);
        }

        *(v2 + 64) = v3;
        operator delete(v5);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 7);
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 8);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v5 -= 16;
        }

        while (v5 != v4);
        v6 = *(a2 + 7);
      }

      *(a2 + 8) = v4;
      operator delete(v6);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *std::complex<llvm::APFloat>::~complex(void *a1)
{
  v2 = (a1 + 5);
  v3 = a1[5];
  v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v4 == v3)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    v5 = (a1 + 1);
    if (v4 != a1[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v2);
    v5 = (a1 + 1);
    if (v4 != a1[1])
    {
LABEL_3:
      llvm::detail::IEEEFloat::~IEEEFloat(v5);
      return a1;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
  return a1;
}

void *std::vector<mlir::Value>::vector[abi:ne200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E063D274(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<MIL::IRValue const>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1E063DB94(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 17);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  while (1)
  {
    v7 = result;
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, result, a3);
    if (result == v7)
    {
      break;
    }

LABEL_2:
    if (result == v7)
    {
      goto LABEL_7;
    }
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v7, a3);
  if (v10 != v7)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v10, a3, end, marked_count + 1, a1->__marked_count_ + 1);
    goto LABEL_2;
  }

  result = v7;
LABEL_7:
  if (v7 == a2)
  {
    operator new();
  }

  if (v7 != a3 && *result == 124)
  {
    v11 = result + 1;
    v12 = result + 1;
    while (1)
    {
      v13 = v12;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, v12, a3);
      if (v12 == v13)
      {
        v14 = a1->__end_;
        v15 = a1->__marked_count_;
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, v13, a3);
        if (v16 == v13)
        {
LABEL_18:
          if (v13 == v11)
          {
            operator new();
          }

          operator new();
        }

        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v16, a3, v14, v15 + 1, a1->__marked_count_ + 1);
      }

      if (v12 == v13)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (LOBYTE(a2->__traits_.__loc_.__locale_) == 94)
    {
      operator new();
    }

    if (a2 == a3)
    {
      v9 = a2;
    }

    else
    {
      while (1)
      {
        if (v3 == a3)
        {
          v9 = v3;
LABEL_11:
          if (v9 == a3)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        end = a1->__end_;
        marked_count = a1->__marked_count_;
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v3, a3);
        if (v8 == v3)
        {
          break;
        }

        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v8, a3, end, marked_count + 1, a1->__marked_count_ + 1);
        v10 = v9 == v3;
        v3 = v9;
        if (v10)
        {
          goto LABEL_11;
        }
      }

      v9 = v3;
      if (v3 == a3)
      {
        goto LABEL_18;
      }

LABEL_14:
      if ((&v9->__traits_.__loc_.__locale_ + 1) == a3 && LOBYTE(v9->__traits_.__loc_.__locale_) == 36)
      {
        operator new();
      }
    }

LABEL_18:
    v3 = v9;
    if (v9 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    goto LABEL_11;
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  if (v7 == a2)
  {
    goto LABEL_11;
  }

  if (v7 != a3 && *v7 == 124)
  {
    v8 = v7 + 1;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v7 + 1, a3);
    if (v9 != v7 + 1)
    {
      do
      {
        v10 = v9;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v9, a3);
      }

      while (v9 != v10);
      if (v10 != v8)
      {
        operator new();
      }
    }

LABEL_11:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  return v7;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 14);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E09A0705)
  {
    if (((v2 & 0x80000001E09A0705 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09A0705))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09A0705 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(this->__first_);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(this->__first_);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      if (a2 + 1 != a3)
      {
        v7 = a2[1];
        if (v7 == 66)
        {
          operator new();
        }

        if (v7 == 98)
        {
          operator new();
        }
      }
    }

    else if (v3 == 94)
    {
      operator new();
    }

    return a2;
  }

  if (v3 == 36)
  {
    operator new();
  }

  v5 = v3 == 40;
  v4 = a2 + 1;
  v5 = !v5 || v4 == a3;
  if (v5)
  {
    return a2;
  }

  v5 = *v4 == 63;
  v8 = a2 + 2;
  if (!v5 || v8 == a3)
  {
    return a2;
  }

  v10 = *v8;
  if (v10 == 33)
  {
    v18 = a2;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v22);
    v20 = a1;
    v22.__flags_ = a1->__flags_;
    v21 = a3;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v22, v18 + 3, a3);
    LODWORD(v18) = v22.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v20, &v22, 1, v20->__marked_count_);
    v20->__marked_count_ += v18;
    if (v16 == v21 || *v16 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_30;
  }

  if (v10 != 61)
  {
    return a2;
  }

  v12 = a2;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v22);
  v14 = a1;
  v22.__flags_ = a1->__flags_;
  v15 = a3;
  v16 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v22, v12 + 3, a3);
  LODWORD(v12) = v22.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v14, &v22, 0, v14->__marked_count_);
  v14->__marked_count_ += v12;
  if (v16 == v15 || *v16 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_30:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v22.__traits_.__loc_);
  return v16 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 <= 0x3E)
  {
    if (*a2 > 0x28u)
    {
      if (v3 != 41)
      {
        if (v3 == 46)
        {
          operator new();
        }

        if (v3 - 42 < 2)
        {
LABEL_68:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
        }

        goto LABEL_47;
      }

      return a2;
    }

    if (v3 == 36)
    {
      return a2;
    }

    if (v3 == 40)
    {
      v9 = a2 + 1;
      if (a2 + 1 == a3)
      {
        goto LABEL_69;
      }

      if (a2 + 2 != a3 && *v9 == 63 && a2[2] == 58)
      {
        v10 = (a1 + 36);
        ++*(a1 + 36);
        v11 = a3;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, a2 + 3, a3);
        if (v12 == v11)
        {
          goto LABEL_69;
        }

        v13 = v12;
        if (*v12 != 41)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        v10 = (a1 + 36);
        ++*(a1 + 36);
        v14 = a1;
        v15 = a3;
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(a1, v9, a3);
        if (v16 == v15 || (v13 = v16, *v16 != 41))
        {
LABEL_69:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(v14 + 24) & 2) == 0)
        {
          operator new();
        }
      }

      --*v10;
      return v13 + 1;
    }

LABEL_47:
    v22 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return v22 + 1;
  }

  v4 = v3 - 92;
  if (v4 > 0x21)
  {
    goto LABEL_42;
  }

  if (((1 << (v3 - 92)) & 0x300000006) != 0)
  {
    return a2;
  }

  if (v3 != 92)
  {
    if (v4 == 31)
    {
      goto LABEL_68;
    }

LABEL_42:
    if (v3 != 91)
    {
      if (v3 == 63)
      {
        goto LABEL_68;
      }

      goto LABEL_47;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
  }

  v5 = (a2 + 1);
  if (a2 + 1 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *v5;
  if (v6 == 48)
  {
    v7 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
    return v7 + 2;
  }

  if ((v6 - 49) > 8)
  {
    goto LABEL_52;
  }

  v17 = (v6 - 48);
  v18 = a2 + 2;
  if (a2 + 2 == a3)
  {
    v20 = a3;
    v21 = a2;
  }

  else
  {
    while (1)
    {
      v19 = *v18;
      if ((v19 - 48) > 9)
      {
        break;
      }

      if (v17 >= 0x19999999)
      {
        goto LABEL_70;
      }

      v17 = v19 + 10 * v17 - 48;
      if (++v18 == a3)
      {
        v18 = a3;
        break;
      }
    }

    v20 = a3;
    v21 = a2;
    if (!v17)
    {
LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
    }
  }

  if (v17 > *(a1 + 28))
  {
    goto LABEL_70;
  }

  v23 = a1;
  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v17);
  result = v18;
  if (v18 == v5)
  {
    v6 = *v5;
    a1 = v23;
    a2 = v21;
    a3 = v20;
LABEL_52:
    v24 = a2;
    if (v6 > 99)
    {
      switch(v6)
      {
        case 'w':
          operator new();
        case 's':
          operator new();
        case 'd':
          operator new();
      }
    }

    else
    {
      switch(v6)
      {
        case 'D':
          operator new();
        case 'S':
          operator new();
        case 'W':
          operator new();
      }
    }

    result = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v5, a3, 0);
    if (result == v5)
    {
      return v24;
    }
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  v6 = *(a1 + 24) & 0x1F0;
  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low <= 0x3E)
  {
    if (locale_low == 42)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (v6)
      {
        v19 = 1;
      }

      else
      {
        v19 = v8 == a3;
      }

      if (!v19 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 0;
        goto LABEL_34;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 0;
      goto LABEL_43;
    }

    if (locale_low == 43)
    {
      v8 = (&this->__traits_.__loc_.__locale_ + 1);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v9 = &this->__traits_.__loc_.__locale_ + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v10 = 1;
LABEL_34:
        std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v10, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 0);
        return v9;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v23 = 1;
      goto LABEL_43;
    }

    return this;
  }

  if (locale_low == 63)
  {
    v20 = (&this->__traits_.__loc_.__locale_ + 1);
    if (v6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (v21 || LOBYTE(v20->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 1);
      return v20;
    }

    else
    {
      v22 = &this->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 1uLL, a4, __mexp_begin, __mexp_end, 0);
      return v22;
    }
  }

  else
  {
    if (locale_low != 123)
    {
      return this;
    }

    if ((&this->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v11 = BYTE1(this->__traits_.__loc_.__locale_);
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      goto LABEL_69;
    }

    v12 = v11 - 48;
    v13 = (&this->__traits_.__loc_.__locale_ + 2);
    if ((&this->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v14 = LOBYTE(v13->__traits_.__loc_.__locale_);
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          break;
        }

        if (v12 >= 214748364)
        {
          goto LABEL_69;
        }

        v12 = v14 + 10 * v12 - 48;
        v13 = (v13 + 1);
        if (v13 == a3)
        {
          v13 = a3;
          break;
        }
      }
    }

    if (v13 == a3)
    {
      goto LABEL_70;
    }

    v15 = LOBYTE(v13->__traits_.__loc_.__locale_);
    if (v15 != 44)
    {
      if (v15 == 125)
      {
        v16 = (&v13->__traits_.__loc_.__locale_ + 1);
        if (v6 || v16 == a3 || LOBYTE(v16->__traits_.__loc_.__locale_) != 63)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 1);
          return v16;
        }

        else
        {
          v17 = &v13->__traits_.__loc_.__locale_ + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v12, a4, __mexp_begin, __mexp_end, 0);
          return v17;
        }
      }

LABEL_69:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

    if ((&v13->__traits_.__loc_.__locale_ + 1) == a3)
    {
      goto LABEL_69;
    }

    v24 = BYTE1(v13->__traits_.__loc_.__locale_);
    if (v24 == 125)
    {
      v8 = (&v13->__traits_.__loc_.__locale_ + 2);
      if (!v6 && v8 != a3 && LOBYTE(v8->__traits_.__loc_.__locale_) == 63)
      {
        v10 = v12;
        v9 = &v13->__traits_.__loc_.__locale_ + 3;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_34;
      }

      v23 = v12;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
LABEL_43:
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v23, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
      return v8;
    }

    if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
    {
      goto LABEL_70;
    }

    v25 = v24 - 48;
    v26 = (&v13->__traits_.__loc_.__locale_ + 2);
    if (v26 != a3)
    {
      while (1)
      {
        v27 = LOBYTE(v26->__traits_.__loc_.__locale_);
        if ((v27 & 0xF8) != 0x30 && (v27 & 0xFE) != 0x38)
        {
          break;
        }

        if (v25 >= 214748364)
        {
          goto LABEL_69;
        }

        v25 = v27 + 10 * v25 - 48;
        v26 = (v26 + 1);
        if (v26 == a3)
        {
          v26 = a3;
          break;
        }
      }
    }

    if (v26 == a3 || LOBYTE(v26->__traits_.__loc_.__locale_) != 125)
    {
LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

    if (v25 < v12)
    {
      goto LABEL_69;
    }

    v28 = (&v26->__traits_.__loc_.__locale_ + 1);
    if (v6 || v28 == a3 || LOBYTE(v28->__traits_.__loc_.__locale_) != 63)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 1);
      return v28;
    }

    else
    {
      v29 = &v26->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v12, v25, a4, __mexp_begin, __mexp_end, 0);
      return v29;
    }
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1)
{
  v2 = MEMORY[0x1E12E59E0]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x1E69E5318]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x1E69E5340]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 6);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B433B8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B433B8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B43400;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B43400;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1E12E5B90);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  memset(&v21, 0, 17);
  v22 = 0;
  v23 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v17.first = *(a2 + 24);
  v17.second = v17.first;
  v17.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v17);
  v18 = v5;
  v19 = v5;
  v20 = 0;
  v21 = v17;
  v23 = v5;
  v22 = 1;
  v6 = *(a2 + 16);
  if (v6 == *(a2 + 8))
  {
    v7 = *(a2 + 92);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v6, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v7))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v9 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v10 = *(a1 + 80);
  v11 = *(a2 + 32);
  v12 = 2;
  v13 = 1;
  do
  {
    v14 = &begin[v13];
    v15 = v11 + 24 * v10;
    *v15 = v14->std::pair<const char *, const char *>;
    *(v15 + 16) = v14->matched;
    v13 = v12;
    ++v10;
    ++v12;
  }

  while (v9 > v13);
LABEL_11:

  operator delete(begin);
}

void sub_1E063FEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v46 = 0;
  memset(&v46[8], 0, 48);
  *__p = 0u;
  memset(v48, 0, 21);
  v13 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v46);
  v51 = v13;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v46[32])
  {
    operator delete(*&v46[32]);
  }

  v14 = *(v13 - 64);
  *(v13 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 56) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 56) = v14 + 24 * v15;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v13 - 64), v15 - v16, &__x);
  }

  v18 = *(v13 - 40);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 32) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 32) = v18 + 16 * v19;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v13 - 40), v19 - v20);
  }

  *(v13 - 16) = v6;
  *(v13 - 8) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v23 = (v13 - 96);
    v24 = *(v13 - 16);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 96);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          std::__state<char>::__state(v46, (v13 - 96));
          (*(**(v13 - 16) + 24))(*(v13 - 16), 1, v13 - 96);
          (*(*v48[1] + 24))(v48[1], 0, v46);
          v30 = v51;
          if (v51 >= v52)
          {
            v51 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v46);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v31 = *&v46[16];
            *v51 = *v46;
            v30[1] = v31;
            *(v30 + 6) = 0;
            *(v30 + 7) = 0;
            *(v30 + 4) = 0;
            *(v30 + 5) = 0;
            v30[2] = *&v46[32];
            *(v30 + 6) = *&v46[48];
            *&v46[32] = 0;
            *&v46[40] = 0;
            *(v30 + 8) = 0;
            *(v30 + 9) = 0;
            *(v30 + 56) = *__p;
            *(v30 + 9) = v48[0];
            *&v46[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v48[0] = 0;
            v32 = v48[1];
            *(v30 + 85) = *(&v48[1] + 5);
            *(v30 + 10) = v32;
            v51 = v30 + 6;
          }

          if (*&v46[32])
          {
            *&v46[40] = *&v46[32];
            operator delete(*&v46[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_59;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v50;
    v13 = v51;
    ++v21;
    if (v50 == v51)
    {
      v17 = 0;
      if (!v50)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_59:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
  }

  v26 = *(v13 - 80);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v51;
    v28 = *(v51 - 5);
    if (v28)
    {
      *(v51 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v51 = v27 - 6;
    goto LABEL_17;
  }

  v37 = *a4;
  *v37 = a2;
  *(v37 + 8) = v26;
  *(v37 + 16) = 1;
  v38 = *(v13 - 64);
  v39 = *(v13 - 56) - v38;
  if (v39)
  {
    v40 = 0xAAAAAAAAAAAAAAABLL * (v39 >> 3);
    v41 = (v38 + 16);
    v42 = 1;
    do
    {
      v43 = v37 + 24 * v42;
      *v43 = *(v41 - 1);
      v44 = *v41;
      v41 += 24;
      *(v43 + 16) = v44;
    }

    while (v40 > v42++);
  }

  v17 = 1;
  v22 = v50;
  if (v50)
  {
LABEL_44:
    for (i = v51; i != v22; i -= 6)
    {
      v34 = *(i - 5);
      if (v34)
      {
        *(i - 4) = v34;
        operator delete(v34);
      }

      v35 = *(i - 8);
      if (v35)
      {
        *(i - 7) = v35;
        operator delete(v35);
      }
    }

    operator delete(v22);
  }

  return v17;
}

void sub_1E0640310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__state<char>::~__state(&a9);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v9 - 104));
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  v7 = begin;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= __n)
    {
      v9 = __n;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v12 >= __n)
  {
    v13 = __n;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v13)
  {
    first = __u->first;
    second = __u->second;
    v16 = v13;
    matched = __u->matched;
    if (v13 == 1)
    {
      goto LABEL_28;
    }

    v7 = &begin[v13 & 0xFFFFFFFFFFFFFFFELL];
    v16 = v13 & 1;
    v18 = begin + 1;
    v19 = v13 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v18[-1].first = first;
      v18[-1].second = second;
      v18->first = first;
      v18->second = second;
      v18[-1].matched = matched;
      v18->matched = matched;
      v18 += 2;
      v19 -= 2;
    }

    while (v19);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_28:
      do
      {
        v7->first = first;
        v7->second = second;
        v7->matched = matched;
        ++v7;
        --v16;
      }

      while (v16);
    }
  }

  if (__n <= v12)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v20 = &end[__n - v12];
    v21 = 24 * __n - 24 * v12;
    do
    {
      v22 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v22;
      ++end;
      v21 -= 24;
    }

    while (v21);
    this->__end_ = v20;
  }
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void **std::vector<std::__state<char>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = *(a2 + 16);
  v7 = 32 * ((a1[1] - *a1) >> 5);
  *v7 = *a2;
  *(v7 + 16) = v6;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 72) = v8;
  *(v7 + 80) = v9;
  v10 = 96 * v2 + 96;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v7 + *a1 - v12;
    do
    {
      v16 = *(v14 + 1);
      *v15 = *v14;
      *(v15 + 16) = v16;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 32) = *(v14 + 2);
      *(v15 + 48) = v14[6];
      v14[4] = 0;
      v14[5] = 0;
      v14[6] = 0;
      *(v15 + 64) = 0;
      *(v15 + 72) = 0;
      *(v15 + 56) = *(v14 + 7);
      *(v15 + 72) = v14[9];
      v14[7] = 0;
      v14[8] = 0;
      v14[9] = 0;
      v17 = v14[10];
      *(v15 + 85) = *(v14 + 85);
      *(v15 + 80) = v17;
      v14 += 12;
      v15 += 96;
    }

    while (v14 != v12);
    do
    {
      v18 = v11[7];
      if (v18)
      {
        v11[8] = v18;
        operator delete(v18);
      }

      v19 = v11[4];
      if (v19)
      {
        v11[5] = v19;
        operator delete(v19);
      }

      v11 += 12;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v9 = &end[__n];
      v10 = 24 * __n;
      do
      {
        v11 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v11;
        ++end;
        v10 -= 24;
      }

      while (v10);
      end = v9;
    }

    this->__end_ = end;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v6 = v5 + __n;
    if (v5 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 24 * __n;
    v13 = 24 * v5;
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *(v13 + 16) = *&__x->matched;
      *v13 = v14;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    begin = this->__begin_;
    v16 = this->__end_;
    v17 = (24 * v5 + this->__begin_ - v16);
    if (v16 != this->__begin_)
    {
      v18 = (24 * v5 + this->__begin_ - v16);
      do
      {
        v19 = begin->std::pair<const char *, const char *>;
        *(v18 + 2) = *&begin->matched;
        *v18 = v19;
        v18 += 24;
        ++begin;
      }

      while (begin != v16);
      begin = this->__begin_;
    }

    this->__begin_ = v17;
    this->__end_ = (24 * v5 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = 16 * __n;
      bzero(this->__end_, 16 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 4) + __n;
    if (v7 >> 60)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * __n;
    bzero(v11, 16 * __n);
    memcpy(0, begin, v6);
    this->__begin_ = 0;
    this->__end_ = &v11[v12];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::__state<char>::__state(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(result + 32) = 0;
  *result = v2;
  *(result + 16) = v3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  v5 = *(a2 + 4);
  v4 = *(a2 + 5);
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a2 + 10);
  *(result + 85) = *(a2 + 85);
  *(result + 80) = v8;
  return result;
}

void sub_1E0640D28(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      operator new();
    }

    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  return a2;
}

void sub_1E0641CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  *(v46 + 144) = v47;
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 11);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 3);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (this)
        {
          std::string::operator=(this, 12);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
        }

        return (v4 + 1);
      }

      if (v5 == 110)
      {
        if (this)
        {
          std::string::operator=(this, 10);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
        }

        return (v4 + 1);
      }

LABEL_70:
      if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
      {
        goto LABEL_74;
      }

      v18 = *a2;
      if (this)
      {
        std::string::operator=(this, v5);
        return (v4 + 1);
      }

LABEL_62:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
      return (v4 + 1);
    }

    if (v5 == 48)
    {
      if (this)
      {
        std::string::operator=(this, 0);
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      }

      return (v4 + 1);
    }

    if (v5 != 99)
    {
      if (v5 == 95)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }

    if (a2 + 1 == a3)
    {
      goto LABEL_74;
    }

    v7 = a2[1];
    if (((v7 & 0xDF) - 65) > 0x19u)
    {
      goto LABEL_74;
    }

    v8 = v7 & 0x1F;
    if (!this)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
      return (v4 + 2);
    }

    std::string::operator=(this, v8);
    v4 += 2;
    return v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 == 114)
    {
      if (this)
      {
        std::string::operator=(this, 13);
        return (v4 + 1);
      }

      v18 = 13;
      goto LABEL_62;
    }

    if (v5 == 116)
    {
      if (this)
      {
        std::string::operator=(this, 9);
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
      }

      return (v4 + 1);
    }

    goto LABEL_70;
  }

  if (v5 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_74;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_74;
    }

    v4 = a2 + 2;
    if (a2 + 2 == a3)
    {
      goto LABEL_74;
    }

    v11 = *v4;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_74;
      }

      v12 = -87;
    }

    v6 = 16 * (v12 + v11);
LABEL_44:
    if (v4 + 1 == a3)
    {
      goto LABEL_74;
    }

    v13 = v4[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_74;
      }

      v14 = -87;
    }

    if (v4 + 2 != a3)
    {
      v15 = v4[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
LABEL_54:
        v17 = v15 + 16 * (v6 + v14 + v13) + v16;
        if (this)
        {
          std::string::operator=(this, v17);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
        }

        return (v4 + 3);
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
        goto LABEL_54;
      }
    }

LABEL_74:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v5 != 118)
  {
    if (v5 == 120)
    {
      v6 = 0;
      goto LABEL_44;
    }

    goto LABEL_70;
  }

  if (this)
  {
    std::string::operator=(this, 11);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
  }

  return (v4 + 1);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1E06425A8(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x1E12E5B90](v1, v2);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 4);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B43490;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B43490;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B434D8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B434D8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B43568;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B43568;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  if (v4 >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v7));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v7));
      if (v8 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v7)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B435B0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_1F5B435B0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__back_ref<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) == 1 && (v6 = v4, v5 = *v4, v7 = *(v6 + 8) - v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (v9 = result, v10 = a2, result = memcmp(v5, *(a2 + 16), v7), a2 = v10, !result))
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    if (v7 < v6)
    {
      *v7 = a2;
      *(a1 + 48) = v7 + 1;
      return;
    }

    v8 = *(a1 + 40);
    v13 = (v7 - v8);
    v14 = v7 - v8 + 1;
    if (v14 >= 0)
    {
      v15 = v6 - v8;
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        operator new();
      }

      v19 = v7 - v8;
      *v13 = a2;
      v18 = v13 + 1;
      memcpy(0, v8, v19);
      *(a1 + 40) = 0;
      *(a1 + 48) = v13 + 1;
      *(a1 + 56) = 0;
      if (v8)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 48) = v5 + 1;
    return;
  }

  v8 = *(a1 + 40);
  v9 = (v5 - v8);
  v10 = v5 - v8 + 1;
  if (v10 < 0)
  {
    goto LABEL_26;
  }

  v11 = v4 - v8;
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    operator new();
  }

  v17 = v5 - v8;
  *v9 = v3;
  v18 = v9 + 1;
  memcpy(0, v8, v17);
  *(a1 + 40) = 0;
  *(a1 + 48) = v9 + 1;
  *(a1 + 56) = 0;
  if (v8)
  {
LABEL_23:
    operator delete(v8);
    *(a1 + 48) = v18;
    return;
  }

LABEL_25:
  *(a1 + 48) = v18;
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_1E06435A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  std::vector<std::string>::~vector[abi:ne200100]((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x1E12E5B90);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  v2 = a2;
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_92;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_67;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v116, &__s);
  __p = v116;
  size = HIBYTE(v116.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v116.__r_.__value_.__r.__words[2]);
  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v116.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v116);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v116;
  if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v116.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v116.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_185;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_185:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_67:
    negate = 0;
    v9 = 1;
    goto LABEL_68;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_67;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_239;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    *(&__s.__r_.__value_.__s + 23) = 2;
    LOWORD(__s.__r_.__value_.__l.__data_) = __src;
    __s.__r_.__value_.__s.__data_[2] = 0;
    (*(*this->__traits_.__col_ + 32))(&v116);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v16 = this->__ranges_.__begin_;
    v17 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
    v18 = this->__ranges_.__end_ - v16;
    if (v18)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 4);
      v111 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      v20 = (v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v116.__r_.__value_.__r.__words[2]) : v116.__r_.__value_.__l.__size_;
      v21 = (v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v116 : v116.__r_.__value_.__r.__words[0];
      v22 = v19 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v18 >> 4);
      v23 = &v16->second.__r_.__value_.__r.__words[2] + 7;
      v24 = 1;
      v25 = 1;
      do
      {
        v26 = *(v23 - 24);
        if (v26 >= 0)
        {
          v27 = *(v23 - 24);
        }

        else
        {
          v27 = *(v23 - 39);
        }

        if (v26 >= 0)
        {
          v28 = (v23 - 47);
        }

        else
        {
          v28 = *(v23 - 47);
        }

        if (v27 >= v20)
        {
          v29 = v20;
        }

        else
        {
          v29 = v27;
        }

        v30 = memcmp(v21, v28, v29);
        v31 = v20 >= v27;
        if (v30)
        {
          v31 = v30 >= 0;
        }

        if (v31)
        {
          v32 = *v23;
          if (v32 >= 0)
          {
            v33 = *v23;
          }

          else
          {
            v33 = *(v23 - 15);
          }

          if (v32 >= 0)
          {
            v34 = (v23 - 23);
          }

          else
          {
            v34 = *(v23 - 23);
          }

          if (v20 >= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v20;
          }

          v36 = memcmp(v34, v21, v35);
          v37 = v33 >= v20;
          if (v36)
          {
            v37 = v36 >= 0;
          }

          if (v37)
          {
            v38 = 5;
            goto LABEL_187;
          }
        }

        v25 = v24++ < v19;
        v23 += 48;
        --v22;
      }

      while (v22);
      v38 = 0;
LABEL_187:
      v17 = v111;
    }

    else
    {
      v25 = 0;
      v38 = 0;
    }

    if (v17 < 0)
    {
      operator delete(v116.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      v90 = 1;
      goto LABEL_219;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v90 = 0;
    goto LABEL_221;
  }

  p_s = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v116);
  v92 = this->__equivalences_.__begin_;
  v93 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v94 = this->__equivalences_.__end_ - v92;
  if (v94)
  {
    v95 = 0xAAAAAAAAAAAAAAABLL * (v94 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v96 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v96 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v95 <= 1)
    {
      v97 = 1;
    }

    else
    {
      v97 = 0xAAAAAAAAAAAAAAABLL * (v94 >> 3);
    }

    v98 = 1;
    v99 = 1;
    while (1)
    {
      v100 = HIBYTE(v92->__r_.__value_.__r.__words[2]);
      v101 = v100;
      if ((v100 & 0x80u) != 0)
      {
        v100 = v92->__r_.__value_.__l.__size_;
      }

      if (v96 == v100)
      {
        v102 = v101 >= 0 ? v92 : v92->__r_.__value_.__r.__words[0];
        if (!memcmp(p_s, v102, v96))
        {
          break;
        }
      }

      v99 = v98++ < v95;
      ++v92;
      if (!--v97)
      {
        goto LABEL_215;
      }
    }

    v90 = 1;
    v38 = 5;
  }

  else
  {
    v99 = 0;
LABEL_215:
    v38 = 0;
    v90 = 0;
  }

  if (v93 < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (!v99)
  {
LABEL_221:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v105 = tab[__src];
      if (((v105 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_239;
      }

      neg_mask = this->__neg_mask_;
      if ((neg_mask & v105) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_238:
        negate = v90;
LABEL_240:
        v9 = 2;
        goto LABEL_92;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_240;
        }
      }

      goto LABEL_238;
    }

LABEL_239:
    negate = 1;
    goto LABEL_240;
  }

LABEL_219:
  v9 = 2;
  negate = v90;
  if (v38)
  {
    goto LABEL_92;
  }

LABEL_68:
  v40 = *v2->__current_;
  __p.__r_.__value_.__s.__data_[0] = *v2->__current_;
  if (this->__icase_)
  {
    LODWORD(v40) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v40);
    __p.__r_.__value_.__s.__data_[0] = v40;
  }

  v41 = this->__chars_.__begin_;
  v42 = this->__chars_.__end_ - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_91;
      }
    }

    while (--v42);
  }

  v44 = this->__neg_mask_;
  if (v44 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v40 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v40] & v44) == 0)
    {
      v46 = (v44 >> 7) & 1;
      v45 = v40 == 95 ? v46 : 0;
    }

    else
    {
      v45 = 1;
    }

    end = this->__neg_chars_.__end_;
    v48 = memchr(this->__neg_chars_.__begin_, v40, end - this->__neg_chars_.__begin_);
    v49 = !v48 || v48 == end;
    v50 = !v49;
    if ((v45 & 1) == 0 && !v50)
    {
LABEL_91:
      negate = 1;
      goto LABEL_92;
    }
  }

  v53 = this->__ranges_.__begin_;
  v54 = this->__ranges_.__end_;
  if (v53 != v54)
  {
    v112 = negate;
    if (this->__collate_)
    {
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = v40;
      (*(*this->__traits_.__col_ + 32))(&v116);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      v53 = this->__ranges_.__begin_;
      v55 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      v56 = this->__ranges_.__end_ - v53;
      if (!v56)
      {
LABEL_101:
        v57 = 0;
        if ((v55 & 0x80) == 0)
        {
          goto LABEL_143;
        }

        goto LABEL_142;
      }
    }

    else
    {
      v55 = 1;
      *(&v116.__r_.__value_.__s + 23) = 1;
      LOWORD(v116.__r_.__value_.__l.__data_) = v40;
      v56 = v54 - v53;
      if (!v56)
      {
        goto LABEL_101;
      }
    }

    v108 = v2;
    v109 = v9;
    v58 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
    v107 = v55;
    if ((v55 & 0x80u) == 0)
    {
      v59 = v55;
    }

    else
    {
      v59 = v116.__r_.__value_.__l.__size_;
    }

    if ((v55 & 0x80u) == 0)
    {
      v60 = &v116;
    }

    else
    {
      v60 = v116.__r_.__value_.__r.__words[0];
    }

    if (v58 <= 1)
    {
      v61 = 1;
    }

    else
    {
      v61 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4);
    }

    v62 = &v53->second.__r_.__value_.__r.__words[2] + 7;
    v63 = 1;
    v57 = 1;
    do
    {
      v64 = *(v62 - 24);
      if (v64 >= 0)
      {
        v65 = *(v62 - 24);
      }

      else
      {
        v65 = *(v62 - 39);
      }

      if (v64 >= 0)
      {
        v66 = (v62 - 47);
      }

      else
      {
        v66 = *(v62 - 47);
      }

      if (v65 >= v59)
      {
        v67 = v59;
      }

      else
      {
        v67 = v65;
      }

      v68 = memcmp(v60, v66, v67);
      v69 = v59 >= v65;
      if (v68)
      {
        v69 = v68 >= 0;
      }

      if (v69)
      {
        v70 = *v62;
        if (v70 >= 0)
        {
          v71 = *v62;
        }

        else
        {
          v71 = *(v62 - 15);
        }

        if (v70 >= 0)
        {
          v72 = (v62 - 23);
        }

        else
        {
          v72 = *(v62 - 23);
        }

        if (v59 >= v71)
        {
          v73 = v71;
        }

        else
        {
          v73 = v59;
        }

        v74 = memcmp(v72, v60, v73);
        v75 = v71 >= v59;
        if (v74)
        {
          v75 = v74 >= 0;
        }

        if (v75)
        {
          negate = 1;
          v2 = v108;
          goto LABEL_141;
        }
      }

      v57 = v63++ < v58;
      v62 += 48;
      --v61;
    }

    while (v61);
    v2 = v108;
    negate = v112;
LABEL_141:
    v9 = v109;
    if ((v107 & 0x80) == 0)
    {
LABEL_143:
      if (v57)
      {
        goto LABEL_92;
      }

      goto LABEL_144;
    }

LABEL_142:
    operator delete(v116.__r_.__value_.__l.__data_);
    goto LABEL_143;
  }

LABEL_144:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_169;
  }

  v76 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__p, &__p.__r_.__value_.__s.__data_[1]);
  v77 = this->__equivalences_.__begin_;
  v78 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v79 = this->__equivalences_.__end_ - v77;
  if (v79)
  {
    v110 = v9;
    v113 = negate;
    v80 = 0xAAAAAAAAAAAAAAABLL * (v79 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v81 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v76 = __s.__r_.__value_.__r.__words[0];
    }

    if (v80 <= 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = 0xAAAAAAAAAAAAAAABLL * (v79 >> 3);
    }

    v83 = 1;
    v84 = 1;
    do
    {
      v85 = HIBYTE(v77->__r_.__value_.__r.__words[2]);
      v86 = v85;
      if ((v85 & 0x80u) != 0)
      {
        v85 = v77->__r_.__value_.__l.__size_;
      }

      if (v81 == v85)
      {
        v87 = v86 >= 0 ? v77 : v77->__r_.__value_.__r.__words[0];
        if (!memcmp(v76, v87, v81))
        {
          negate = 1;
          v9 = v110;
          if ((v78 & 0x80) == 0)
          {
            goto LABEL_167;
          }

          goto LABEL_166;
        }
      }

      v84 = v83++ < v80;
      ++v77;
      --v82;
    }

    while (v82);
    negate = v113;
    v9 = v110;
    if ((v78 & 0x80) == 0)
    {
      goto LABEL_167;
    }
  }

  else
  {
    v84 = 0;
    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_167;
    }
  }

LABEL_166:
  operator delete(__s.__r_.__value_.__l.__data_);
LABEL_167:
  if (v84)
  {
    goto LABEL_92;
  }

  LOBYTE(v40) = __p.__r_.__value_.__s.__data_[0];
LABEL_169:
  v88 = this->__mask_;
  if ((v40 & 0x80) == 0 && (this->__traits_.__ct_->__tab_[v40] & v88) != 0)
  {
    goto LABEL_91;
  }

  v89 = (v88 >> 7) & 1;
  if (v40 != 95)
  {
    LOBYTE(v89) = 0;
  }

  negate |= v89;
LABEL_92:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v52 = -993;
  }

  else
  {
    v2->__current_ += v9;
    first = this->__first_;
    v52 = -995;
  }

  v2->__do_ = v52;
  v2->__node_ = first;
}

void sub_1E06440A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if (a28 < 0)
    {
LABEL_5:
      operator delete(a23);
      _Unwind_Resume(a1);
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void ***std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  v13 = a4 - __src;
  if (a4 != __src)
  {
    memcpy(__dst, __src, v4);
  }

  *(__dst + v4) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v8, v8 + v7);
  v9 = *(a1 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 8);
  }

  if (v9 == 1)
  {
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v9 == 12)
  {
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v11[11] = v11[3];
    if (v13 < 0)
    {
      goto LABEL_24;
    }

    return;
  }

  if ((v10 & 0x80000000) == 0)
  {
    *a1 = 0;
    *(a1 + 23) = 0;
    goto LABEL_23;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
  if (v13 < 0)
  {
LABEL_24:
    operator delete(__dst[0]);
  }
}

void sub_1E0644520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 5);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, char *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  v7 = __src + 1;
  if (*__src != 46)
  {
    goto LABEL_4;
  }

LABEL_3:
  if (*v7 != 93)
  {
LABEL_4:
    while (v4)
    {
      --v4;
      v6 = v7;
      v8 = *v7++;
      if (v8 == 46)
      {
        goto LABEL_3;
      }
    }

LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (v6 == a3)
  {
    goto LABEL_14;
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, std::basic_regex<char>::value_type *a2, std::basic_regex<char>::value_type *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x61)
  {
    if (*a2 <= 0x52u)
    {
      if (*a2)
      {
        if (v5 == 68)
        {
          *(a5 + 164) |= 0x400u;
          return (a2 + 1);
        }

        goto LABEL_25;
      }

      v14 = this;
      v13 = a2;
      v15 = 0;
      goto LABEL_21;
    }

    if (v5 == 83)
    {
      *(a5 + 164) |= 0x4000u;
      return (a2 + 1);
    }

    if (v5 != 87)
    {
      goto LABEL_25;
    }

    *(a5 + 164) |= 0x500u;
    if (*(a5 + 169) == 1)
    {
      v6 = a2;
      v7 = a5;
      v8 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v9 = v7;
      v11 = v7[9];
      v10 = v7[10];
      if (v11 < v10)
      {
        *v11 = v8;
        v12 = v11 + 1;
LABEL_49:
        a2 = v6;
        v9[9] = v12;
        return (a2 + 1);
      }

      v20 = v7[8];
      v21 = (v11 - v20);
      v22 = v11 - v20 + 1;
      if (v22 >= 0)
      {
        v23 = v10 - v20;
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          operator new();
        }

        v31 = v11 - v20;
        *v21 = v8;
        v12 = v21 + 1;
        memcpy(0, v20, v31);
        v7[8] = 0;
        v7[9] = v21 + 1;
        v7[10] = 0;
        if (v20)
        {
          operator delete(v20);
        }

        v9 = v7;
        goto LABEL_49;
      }

LABEL_56:
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v18 = *(a5 + 72);
    v17 = *(a5 + 80);
    if (v18 >= v17)
    {
      v25 = *(a5 + 64);
      v26 = (v18 - v25);
      v27 = v18 - v25 + 1;
      if (v27 < 0)
      {
        goto LABEL_56;
      }

      v28 = a2;
      v29 = v17 - v25;
      if (2 * v29 > v27)
      {
        v27 = 2 * v29;
      }

      if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v27;
      }

      if (v30)
      {
        operator new();
      }

      v32 = a5;
      v33 = v18 - v25;
      *v26 = 95;
      v19 = v26 + 1;
      memcpy(0, v25, v33);
      a5 = v32;
      v32[8] = 0;
      v32[9] = v26 + 1;
      v32[10] = 0;
      if (v25)
      {
        operator delete(v25);
        a5 = v32;
      }

      a2 = v28;
    }

    else
    {
      *v18 = 95;
      v19 = v18 + 1;
    }

    *(a5 + 72) = v19;
    return (a2 + 1);
  }

  if (*a2 > 0x72u)
  {
    if (v5 == 115)
    {
      *(a5 + 160) |= 0x4000u;
      return (a2 + 1);
    }

    if (v5 != 119)
    {
      goto LABEL_25;
    }

    *(a5 + 160) |= 0x500u;
    v13 = a2;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
    return (v13 + 1);
  }

  if (v5 == 98)
  {
    v14 = this;
    v13 = a2;
    v15 = 8;
LABEL_21:
    std::string::operator=(v14, v15);
    return (v13 + 1);
  }

  if (v5 == 100)
  {
    *(a5 + 160) |= 0x400u;
    return (a2 + 1);
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65u)
  {
    if (v5 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_40;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          std::string::operator=(this, 7);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
        }

        return a2 + 1;
      }

      if (v5 == 98)
      {
        if (this)
        {
          std::string::operator=(this, 8);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
        }

        return a2 + 1;
      }

      goto LABEL_40;
    }

    if (this)
    {
      std::string::operator=(this, v5);
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    }

    return a2 + 1;
  }

  if (v5 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        std::string::operator=(this, 12);
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
      }

      return a2 + 1;
    }

    if (v5 == 110)
    {
      if (this)
      {
        std::string::operator=(this, 10);
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
      }

      return a2 + 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          std::string::operator=(this, 13);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
        }

        return a2 + 1;
      case 't':
        if (this)
        {
          std::string::operator=(this, 9);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
        }

        return a2 + 1;
      case 'v':
        if (this)
        {
          std::string::operator=(this, 11);
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
        }

        return a2 + 1;
    }
  }

LABEL_40:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_57;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 1);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::regex_traits<char>::__lookup_collatename<char const*>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = a4 - __src;
  if (a4 != __src)
  {
    memcpy(&__dst, __src, v4);
  }

  __dst.__r_.__value_.__s.__data_[v4] = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__dst.__r_.__value_.__l.__size_)
    {
      goto LABEL_15;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__dst.__r_.__value_.__s + 23))
    {
      return;
    }

    p_dst = &__dst;
  }

  std::__get_collation_name(&v12, p_dst);
  *a1 = *&v12.__r_.__value_.__l.__data_;
  v8 = v12.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v12.__r_.__value_.__l + 2);
  v9 = HIBYTE(v8);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__dst.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_15;
    }
  }

  else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v12);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v12;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v10 = *(a1 + 23);
    if (v10 != 12 && v10 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v11 = *(a1 + 8);
  if (v11 == 1 || v11 == 12)
  {
LABEL_29:
    std::string::operator=(a1, &__dst);
    goto LABEL_15;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_15:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1E0644F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 2);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 48 * v8;
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *a2 = 0;
  *(a2 + 1) = 0;
  v13 = *(a2 + 24);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(v12 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v7 = 48 * v8 + 48;
  v14 = *a1;
  v15 = a1[1] - *a1;
  *(v12 + 24) = v13;
  v16 = v12 - v15;
  memcpy((v12 - v15), v14, v15);
  *a1 = v16;
  a1[1] = v7;
  a1[2] = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  a1[1] = v7;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  v9 = a4 - __src;
  if (a4 != __src)
  {
    memmove(__dst, __src, v4);
  }

  *(__dst + v4) = 0;
  v6 = v9;
  if ((v9 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if ((v9 & 0x80u) != 0)
  {
    v6 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E0645278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 9);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 8);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 7);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void (__cdecl ***std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F5B43778;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  *a1 = &unk_1F5B43778;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__loop<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t std::__loop<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F5B43778;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  *a1 = &unk_1F5B43778;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_1F5B43778;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  *a1 = &unk_1F5B43778;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1E12E5560](exception, 15);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  if (a2 != a3)
  {
    v6 = (&a2->__traits_.__loc_.__locale_ + 1);
    locale_low = LOBYTE(a2->__traits_.__loc_.__locale_);
    if ((&a2->__traits_.__loc_.__locale_ + 1) != a3 || locale_low != 36)
    {
      v11 = (locale_low - 46) > 0x2E || ((1 << (locale_low - 46)) & 0x600000000001) == 0;
      if (v11)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale_low);
        return (&a2->__traits_.__loc_.__locale_ + 1);
      }

      if (v6 == a3 || locale_low != 92)
      {
        if (locale_low == 46)
        {
          operator new();
        }
      }

      else
      {
        v12 = LOBYTE(v6->__traits_.__loc_.__locale_);
        if ((v12 - 36) <= 0x3A && ((1 << (v12 - 36)) & 0x580000000000441) != 0)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v12);
          return (&a2->__traits_.__loc_.__locale_ + 2);
        }
      }
    }
  }

  result = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
  if (result == a2 && result != a3 && (&result->__traits_.__loc_.__locale_ + 1) != a3 && LOBYTE(result->__traits_.__loc_.__locale_) == 92)
  {
    v9 = BYTE1(result->__traits_.__loc_.__locale_);
    if (v9 == 40)
    {
      v10 = (&result->__traits_.__loc_.__locale_ + 2);
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }

      while (v10 != a3)
      {
        v14 = *(a1 + 56);
        v15 = *(a1 + 28);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, v10, a3);
        if (v16 == v10)
        {
          break;
        }

        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v16, a3, v14, (v15 + 1), (*(a1 + 28) + 1));
        v11 = v17 == v10;
        v10 = v17;
        if (v11)
        {
          goto LABEL_34;
        }
      }

      v17 = v10;
LABEL_34:
      if (v17 == a3 || (&v17->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v17->__traits_.__loc_.__locale_) != 92 || BYTE1(v17->__traits_.__loc_.__locale_) != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      result = (v17 + 2 * (BYTE1(v17->__traits_.__loc_.__locale_) == 41));
      if ((*(a1 + 24) & 2) == 0)
      {
        operator new();
      }
    }

    else if (((v9 & 0xF8) == 0x30 || (v9 & 0xFE) == 0x38) && (v9 - 49) <= 8)
    {
      if ((v9 - 48) > *(a1 + 28))
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      v13 = result;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v9 - 48);
      return (&v13->__traits_.__loc_.__locale_ + 2);
    }
  }

  return result;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = this;
  if (this == a3)
  {
    return v6;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (v6 + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92 || BYTE1(this->__traits_.__loc_.__locale_) != 123)
  {
    return v6;
  }

  v9 = (this + 2 * (BYTE1(this->__traits_.__loc_.__locale_) == 123));
  if (v9 == a3)
  {
    goto LABEL_41;
  }

  v10 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
  {
    goto LABEL_41;
  }

  v11 = v10 - 48;
  v12 = (&v9->__traits_.__loc_.__locale_ + 1);
  if ((&v9->__traits_.__loc_.__locale_ + 1) != a3)
  {
    while (1)
    {
      v13 = LOBYTE(v12->__traits_.__loc_.__locale_);
      if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
      {
        break;
      }

      if (v11 >= 214748364)
      {
        goto LABEL_41;
      }

      v11 = v13 + 10 * v11 - 48;
      v12 = (v12 + 1);
      if (v12 == a3)
      {
        v12 = a3;
        break;
      }
    }
  }

  if (v12 == a3)
  {
    goto LABEL_42;
  }

  v14 = (&v12->__traits_.__loc_.__locale_ + 1);
  v15 = LOBYTE(v12->__traits_.__loc_.__locale_);
  if (v15 != 44)
  {
    if (v14 != a3 && v15 == 92 && LOBYTE(v14->__traits_.__loc_.__locale_) == 125)
    {
      v19 = &v12->__traits_.__loc_.__locale_ + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v11, a4, __mexp_begin, __mexp_end, 1);
      return v19;
    }

LABEL_42:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v14 != a3 && ((v16 = LOBYTE(v14->__traits_.__loc_.__locale_), (v16 & 0xF8) == 0x30) || (v16 & 0xFE) == 0x38))
  {
    v17 = v16 - 48;
    v14 = (&v12->__traits_.__loc_.__locale_ + 2);
    if ((&v12->__traits_.__loc_.__locale_ + 2) != a3)
    {
      while (1)
      {
        v20 = LOBYTE(v14->__traits_.__loc_.__locale_);
        if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_41;
        }

        v17 = v20 + 10 * v17 - 48;
        v14 = (v14 + 1);
        if (v14 == a3)
        {
          v14 = a3;
          break;
        }
      }
    }
  }

  else
  {
    v17 = -1;
  }

  if (v14 == a3 || (&v14->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v14->__traits_.__loc_.__locale_) != 92 || BYTE1(v14->__traits_.__loc_.__locale_) != 125)
  {
    goto LABEL_42;
  }

  v18 = v14 + 2 * (BYTE1(v14->__traits_.__loc_.__locale_) == 125);
  if (v17 != -1)
  {
    if (v17 >= v11)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, v17, a4, __mexp_begin, __mexp_end, 1);
      return v18;
    }

LABEL_41:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v11, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
  return v18;
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1E12E5B90);
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 != a3)
  {
    v8 = *a2;
    v9 = (v8 - 36);
    if (v9 > 0x3A)
    {
      goto LABEL_21;
    }

    if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
    {
      goto LABEL_4;
    }

    if (v9 == 5)
    {
      if (!*(a1 + 36))
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_21:
      if ((v8 - 123) >= 2)
      {
LABEL_22:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
        v11 = a2 + 1;
        goto LABEL_29;
      }
    }

LABEL_4:
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
    v11 = v10;
    if (v10 == a2)
    {
      if (*v10 == 46)
      {
        operator new();
      }

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  if (v11 == a2)
  {
LABEL_8:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
  }

LABEL_9:
  if (v11 == a2 && v11 != a3)
  {
    v12 = *v11;
    switch(v12)
    {
      case '$':
        operator new();
      case '(':
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        ++*(a1 + 36);
        v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v11 + 1, a3);
        if (v13 == a3 || *v13 != 41)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        --*(a1 + 36);
        v11 = v13 + 1;
        break;
      case '^':
        operator new();
    }
  }

  if (v11 == a2)
  {
    return v11;
  }

LABEL_29:
  v14 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v11, a3, v6, (v7 + 1), v14);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v3 = a2[1];
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    v5 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return v5 + 2;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v7 = a2 + 1;

    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v7, a3, 0);
  }

  else
  {
    v8 = a2;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v3);
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    return &v8[v10];
  }
}

void *std::deque<std::__state<char>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v11);
}

void sub_1E064700C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(*(a1 + 40) + v4) / 0x2A] + 96 * ((*(a1 + 40) + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 21;
    goto LABEL_19;
  }

  if (v11 == 2)
  {
    v12 = 42;
LABEL_19:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<MIL::IRProperty const*>::vector[abi:ne200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E06475B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

void sub_1E064764C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **GPU::EncodeCPUWorkHelper::EncodeCPUWorkHelper(void **a1, void *a2)
{
  v3 = a2;
  *a1 = 0;
  a1[1] = 0;
  v4 = objc_alloc_init(MEMORY[0x1E6974178]);
  v5 = *a1;
  *a1 = v4;

  v6 = [v3 newSharedEvent];
  v7 = a1[1];
  a1[1] = v6;

  a1[2] = 0;
  return a1;
}

void ___ZN3GPU19EncodeCPUWorkHelper6encodeEPNS_16EncodeDescriptorENSt3__18functionIFvvEEE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = v3;
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4);
  [v5 setSignaledValue:*(a1 + 64)];
}

uint64_t __copy_helper_block_ea8_32c27_ZTSNSt3__18functionIFvvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    if (result == a2 + 32)
    {
      *(a1 + 56) = a1 + 32;
      v4 = *(**(a2 + 56) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 56) = result;
    }
  }

  else
  {
    *(a1 + 56) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_ea8_32c27_ZTSNSt3__18functionIFvvEEE(uint64_t a1)
{
  v1 = a1 + 32;
  result = *(a1 + 56);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

GPU::BaseOpHandler *GPU::BaseOpHandler::BaseOpHandler(GPU::BaseOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *this = &unk_1F5B43988;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  v32 = this + 112;
  *(this + 11) = this + 112;
  v5 = (this + 88);
  *(this + 6) = xmmword_1E09700F0;
  if ((*(a3 + 46) & 0x80) == 0 || (v6 = *(a3 + 17), !v6))
  {
    v9 = 1;
    v15 = *(a3 + 9);
    if (!v15)
    {
      goto LABEL_34;
    }

LABEL_17:
    v16 = 0;
    *(this + 57) = *(*(a3 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
    v17 = a3 - 16;
    v18 = 1;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, v16);
      v20 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8))
      {
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
        v33 = v20;
        v34 = v21;
        if (!v20)
        {
          goto LABEL_30;
        }

        if (!mlir::CallOpInterface::getArgOperands(&v33))
        {
          goto LABEL_29;
        }

        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
        if (v23)
        {
          v24 = 8 * v23;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_30;
            }
          }

LABEL_29:
          v18 = 0;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

LABEL_30:
      if (!GPURegionRuntime::isSmallIntType(*(this + 2), (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 1))
      {
        *(this + 57) = 0;
      }

      if (++v16 == v15)
      {
        v25 = *(*(this + 3) + 36) != 0;
        goto LABEL_35;
      }
    }
  }

  v7 = 0;
  v8 = *(a3 + 9);
  v9 = 1;
  do
  {
    v10 = (*(*(v8 + 32 * v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      v33 = v10;
      v34 = v11;
      if (v10)
      {
        if (!mlir::CallOpInterface::getArgOperands(&v33))
        {
          goto LABEL_4;
        }

        v12 = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
        if (v13)
        {
          v14 = 8 * v13;
          while (*v12 != 0x8000000000000000)
          {
            ++v12;
            v14 -= 8;
            if (!v14)
            {
              goto LABEL_5;
            }
          }

LABEL_4:
          v9 = 0;
        }
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

LABEL_5:
    ++v7;
  }

  while (v7 != v6);
  a3 = *(this + 3);
  v15 = *(a3 + 9);
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_34:
  v25 = 0;
  *(this + 57) = 0;
  v18 = 1;
LABEL_35:
  v26 = v9 & v18 & 1;
  *(this + 40) = v26;
  *(this + 56) = v25 & (v18 ^ 1);
  *(this + 41) = v26;
  v27 = *(this + 6);
  *(this + 6) = 0;

  *(this + 9) = 0;
  v28 = *(*(this + 3) + 36);
  v29 = *(this + 12);
  if (v29 != v28)
  {
    if (v29 <= v28)
    {
      if (*(this + 13) < v28)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v5, v32, *(*(this + 3) + 36), 1);
        v29 = *(this + 12);
      }

      if (v28 != v29)
      {
        bzero((*v5 + v29), v28 - v29);
      }
    }

    *(this + 12) = v28;
  }

  v30 = **(*(this + 2) + 648) == 1 && *(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id;
  *(this + 58) = v30;
  return this;
}

void sub_1E0647BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id **a9, void *a10)
{
  if (*v11 != a10)
  {
    free(*v11);
  }

  std::unique_ptr<GPU::EncodeCPUWorkHelper>::~unique_ptr[abi:ne200100](a9);

  _Unwind_Resume(a1);
}

void GPU::BaseOpHandler::encodeOp(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2)
{
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 3);
  v5 = *(v4 + 36);
  v6 = v4 - 16;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, i);
      v10 = *(this + 2);
      if (*(this + 58) == 1)
      {
        v11 = v10[81];
        v12 = *(v11 + 208);
        if (!v12)
        {
          goto LABEL_10;
        }

        v13 = *(v11 + 192);
        v14 = 0x9DDFEA08EB382D69 * ((8 * NextResultAtOffset - 0xAE502812AA7333) ^ HIDWORD(NextResultAtOffset));
        v15 = 0x9DDFEA08EB382D69 * (HIDWORD(NextResultAtOffset) ^ (v14 >> 47) ^ v14);
        v16 = (v12 - 1) & (-348639895 * ((v15 >> 47) ^ v15));
        v17 = *(v13 + 16 * v16);
        if (v17 != NextResultAtOffset)
        {
          v20 = 1;
          while (v17 != -4096)
          {
            v21 = v16 + v20++;
            v16 = v21 & (v12 - 1);
            v17 = *(v13 + 16 * v16);
            if (v17 == NextResultAtOffset)
            {
              goto LABEL_9;
            }
          }

LABEL_10:
          v18 = 0;
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          goto LABEL_16;
        }

LABEL_9:
        if (v16 == v12)
        {
          goto LABEL_10;
        }

        v19 = *(v13 + 16 * v16 + 8);
        if (!v19)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v19 = (*(*v10 + 80))(v10, NextResultAtOffset, *(a2 + 1), 0, 0, 1);
      }

      v18 = v19;
LABEL_16:
      [v22 addObject:v18];
    }
  }

  (*(*this + 16))(this, a2, v22);
}

uint64_t GPU::BaseOpHandler::_inferJITOutputTypes(uint64_t this, GPU::EncodeDescriptor *a2)
{
  if ((*(this + 40) & 1) == 0)
  {
    v2 = this;
    v3 = *(this + 24);
    v4 = *(v3 + 36);
    if (v4)
    {
      v6 = 0;
      v7 = v3 - 16;
      do
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, v6);
        v9 = *(*(v2[2] + 592) + 32);
        this = (*(*v9 + 24))(v9, NextResultAtOffset);
        if ((this & 1) == 0)
        {
          v10 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
          this = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
          if (this)
          {
            this = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
            v60 = v10;
            v61 = this;
            if (v10)
            {
              if (!mlir::CallOpInterface::getArgOperands(&v60))
              {
                goto LABEL_16;
              }

              this = mlir::CallableOpInterface::getArgAttrsAttr(&v60);
              if (v11)
              {
                v12 = 8 * v11;
                while (*this != 0x8000000000000000)
                {
                  this += 8;
                  v12 -= 8;
                  if (!v12)
                  {
                    goto LABEL_4;
                  }
                }

LABEL_16:
                v13 = v2[3];
                Context = mlir::Attribute::getContext((v13 + 24));
                v70 = 0;
                v71 = 0;
                v69[0] = Context;
                v69[1] = 0;
                v59 = a2;
                v15 = *(v13 + 16);
                v17 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v13, v16);
                v18 = 0;
                v60 = 0;
                v70 = v15;
                v71 = v17;
                v61 = 0;
                v62 = 0;
                v63 = 0;
                v64 = 0;
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = 0;
                while (2)
                {
                  v23 = v2[3];
                  if ((*(v23 + 46) & 0x80) == 0 || v18 >= *(v23 + 68))
                  {
                    v27 = mlir::OpBuilder::clone(v69, v23, &v60);
                    mlir::mps::inferTypes(v27, v28);
                    v29 = mlir::verify(v27, 1);
                    if ((v29 & 1) == 0)
                    {
                      v30 = llvm::errs(v29);
                      v31 = v30;
                      v32 = *(v30 + 4);
                      if ((*(v30 + 3) - v32) > 2)
                      {
                        *(v32 + 2) = 32;
                        *v32 = 8224;
                        *(v30 + 4) += 3;
                      }

                      else
                      {
                        v31 = llvm::raw_ostream::write(v30, "   ", 3uLL);
                      }

                      mlir::OpPrintingFlags::OpPrintingFlags(&v72);
                      v33 = mlir::OpPrintingFlags::useLocalScope(&v72);
                      mlir::Operation::print(v27, v31, v33);
                      v34 = *(v31 + 4);
                      if (*(v31 + 3) == v34)
                      {
                        llvm::raw_ostream::write(v31, "\n", 1uLL);
                      }

                      else
                      {
                        *v34 = 10;
                        ++*(v31 + 4);
                      }
                    }

                    v35 = v2[3];
                    if (!*(v35 + 36))
                    {
LABEL_65:
                      mlir::Operation::erase(v27);
                      llvm::deallocate_buffer(v66, (16 * v68));
                    }

                    v36 = 0;
                    while (2)
                    {
                      v37 = ~v36;
                      v38 = v35 + 16 * ~v36;
                      v39 = 5 - v36;
                      v40 = v35 + 24 * (5 - v36) - 96;
                      if (v36 >= 6)
                      {
                        v41 = v40;
                      }

                      else
                      {
                        v41 = v38;
                      }

                      v42 = *(*(v2[2] + 592) + 32);
                      if ((*(*v42 + 24))(v42, v41))
                      {
                        goto LABEL_53;
                      }

                      v43 = (*(v41 + 8) & 0xFFFFFFFFFFFFFFF8);
                      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8))
                      {
                        v72 = 0;
                        v73 = 0;
                        goto LABEL_53;
                      }

                      v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
                      v72 = v43;
                      v73 = v44;
                      if (v43)
                      {
                        if (mlir::CallOpInterface::getArgOperands(&v72))
                        {
                          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v72);
                          if (!v46)
                          {
                            goto LABEL_53;
                          }

                          v47 = 8 * v46;
                          while (*ArgAttrsAttr != 0x8000000000000000)
                          {
                            ++ArgAttrsAttr;
                            v47 -= 8;
                            if (!v47)
                            {
                              goto LABEL_53;
                            }
                          }
                        }

                        v54 = v2[2];
                        v53 = v2[3];
                        v55 = v53 + 16 * v37;
                        v56 = v27 + 16 * v37;
                        v57 = v53 + 24 * v39 - 96;
                        if (v36 >= 6)
                        {
                          v56 = v27 + 24 * v39 - 96;
                        }

                        else
                        {
                          v57 = v55;
                        }

                        v74[1] = *(v56 + 8) & 0xFFFFFFFFFFFFFFF8;
                        v75 = v57;
                        v74[0] = *(mlir::Value::getParentRegion(&v75) + 2);
                        v72 = v74;
                        v58 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,mlir::Type>>>>::__emplace_unique_key_args<mlir::Operation *,std::piecewise_construct_t const&,std::tuple<mlir::Operation * const&>,std::tuple<>>((v54 + 288), v74);
                        v72 = v75;
                        std::__hash_table<std::__hash_value_type<void *,mlir::Type>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,mlir::Type>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,mlir::Type>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,mlir::Type>>>::__emplace_unique_key_args<void *,void *,mlir::Type&>(v58 + 3, &v72);
                      }

                      else
                      {
LABEL_53:
                        v48 = v2[3];
                        v49 = v48 + 16 * v37;
                        v50 = v48 + 24 * v39 - 96;
                        if (v36 < 6)
                        {
                          v50 = v49;
                        }

                        v51 = (*(v50 + 8) & 0xFFFFFFFFFFFFFFF8);
                        if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8))
                        {
                          v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
                          v72 = v51;
                          v73 = v52;
                          if (v51 && mlir::CallOpInterface::getArgOperands(&v72))
                          {
                            mlir::CallableOpInterface::getArgAttrsAttr(&v72);
                          }
                        }

                        else
                        {
                          v72 = 0;
                          v73 = 0;
                        }
                      }

                      ++v36;
                      v35 = v2[3];
                      if (v36 >= *(v35 + 36))
                      {
                        goto LABEL_65;
                      }

                      continue;
                    }
                  }

                  v24 = *(*(v23 + 72) + 32 * v18 + 24);
                  if (v62)
                  {
                    v19 = 0x9DDFEA08EB382D69 * ((8 * v24 - 0xAE502812AA7333) ^ HIDWORD(v24));
                    v20 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v19 >> 47) ^ v19);
                    v21 = (-348639895 * ((v20 >> 47) ^ v20)) & (v62 - 1);
                    v22 = *(v60 + 2 * v21);
                    if (v22 != v24)
                    {
                      v25 = 1;
                      while (v22 != -4096)
                      {
                        v26 = v21 + v25++;
                        v21 = v26 & (v62 - 1);
                        v22 = *(v60 + 2 * v21);
                        if (v22 == v24)
                        {
                          goto LABEL_18;
                        }
                      }

                      goto LABEL_22;
                    }
                  }

                  else
                  {
LABEL_22:
                    v75 = (*(*v2 + 48))(v2, v59, v69, v18);
                    v72 = v24;
                    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v60, &v72) = v75;
                    if (v24 != v75)
                    {
                      if (mlir::Value::getDefiningOp(&v75))
                      {
                        mlir::Value::getDefiningOp(&v75);
                        operator new();
                      }
                    }
                  }

LABEL_18:
                  ++v18;
                  continue;
                }
              }
            }
          }

          else
          {
            v60 = 0;
            v61 = 0;
          }
        }

LABEL_4:
        ++v6;
      }

      while (v6 != v4);
    }
  }

  return this;
}

void sub_1E06485B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, llvm *a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlir::IRMapping::~IRMapping(&a11);
}

void GPU::BaseOpHandler::encodeConstantOp(GPU::BaseOpHandler *this, id *a2, const mlir::mps::CPUNDArray *a3, int a4)
{
  v109 = *MEMORY[0x1E69E9840];
  v8 = *(this + 3) - 16;
  v9 = *(this + 6);
  if (!v9)
  {
    v101 = v8;
    MPSDataType = getMPSDataType(*a3);
    (*(**(this + 2) + 48))(*(this + 2), v8, 0);
    v98 = v99 = a4;
    v11 = [v98 mpsndarray];
    v102 = v98;
    v100 = MPSDataType;
    if (v11 && ([v11 buffer], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "storageMode"), v12, v13 != 2))
    {
      v20 = 1;
      v103 = v11;
      v9 = v102;
    }

    else
    {
      v14 = MEMORY[0x1E6974490];
      v15 = getMPSShapeFromMLIR(*a3);
      v16 = adaptForMPS(v15);
      v17 = [v14 descriptorWithDataType:MPSDataType shape:v16];

      [v17 setPreferPackedRows:1];
      if ((*(a3 + 58) & 1) != 0 || *(a3 + 57) != 1 || (*(a3 + 56) & 1) != 0 || mlir::mps::CPUNDArray::getNumElements(a3) < 1 || ([a2[1] device], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "hasUnifiedMemory"), v21, !v22))
      {
        v18 = objc_alloc(MEMORY[0x1E6974488]);
        v19 = [a2[1] device];
        v103 = [v18 initWithDevice:v19 descriptor:v17];
        v20 = 1;
      }

      else
      {
        BufferByteSize = mlir::mps::CPUNDArray::getBufferByteSize(a3);
        v24 = [a2[1] device];
        v19 = [v24 newBufferWithBytesNoCopy:*(a3 + 5) length:BufferByteSize options:0x100000 deallocator:0];

        v103 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:v19 descriptor:v17];
        v20 = 0;
      }

      v9 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v103 device:*(*(this + 2) + 48)];
    }

    if (v11 == v103)
    {
      v25 = **(this + 11);
    }

    else
    {
      v25 = 0;
    }

    if (!mlir::mps::CPUNDArray::getNumElements(a3) || !(v20 | v25))
    {
      goto LABEL_78;
    }

    NumElements = mlir::mps::CPUNDArray::getNumElements(a3);
    v27 = mlir::mps::CPUNDArray::getBufferByteSize(a3);
    if (*(a3 + 58) != 1)
    {
      if (!v25 || *(a3 + 57) == 1 && (*(a3 + 56) & 1) == 0 && (v35 = v27, [a2[1] device], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "hasUnifiedMemory"), v36, v27 = v35, (v37 & 1) != 0))
      {
        LODWORD(v34) = 0;
        v32 = *(a3 + 5);
        v33 = v100;
        if (v25)
        {
          goto LABEL_49;
        }

        goto LABEL_76;
      }

      v34 = v27;
      v32 = malloc_type_malloc(v27, 0x100004077774924uLL);
      memcpy(v32, *(a3 + 5), v34);
      v27 = v34;
      LOBYTE(v34) = 1;
      v33 = v100;
      goto LABEL_49;
    }

    v28 = *(a3 + 5);
    v96 = v27;
    v29 = malloc_type_malloc(v27, 0x100004077774924uLL);
    v30 = v29;
    if (v100 != 2)
    {
      if (v100 == 4)
      {
        v31 = *v28 & 0xF;
        v32 = v29;
        if ((NumElements + 1) >= 3)
        {
          memset(v29, v31 | (16 * v31), NumElements / 2);
        }

        v33 = v100;
        v27 = v96;
        if (NumElements)
        {
          v30[v96 - 1] = v31;
          LODWORD(v34) = 1;
          if (v25)
          {
            goto LABEL_49;
          }

LABEL_76:
          [v103 writeBytes:v32 strideBytes:0];
          if (v34)
          {
            free(v32);
          }

LABEL_78:
          v85 = a2[11];
          if (v85)
          {
            v86 = [v103 buffer];
            [v85 setConstantBuffer:v86];
          }

          if (v11)
          {
            v87 = [v11 buffer];
            v88 = [v87 storageMode] == 2;

            if (v88)
            {
              v89 = objc_alloc(MEMORY[0x1E6974740]);
              v90 = [a2[1] device];
              v91 = [v89 initWithDevice:v90];

              [v91 setLabel:&stru_1F5B58250];
              v92 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
              v93 = a2[1];
              v106[0] = v103;
              v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:1];
              [v91 encodeToMPSCommandEncoder:v92 commandBuffer:v93 sourceArrays:v94 destinationArray:v11];

LABEL_85:
            }
          }

          else if (v99)
          {
            v95 = v9;
            v91 = *(this + 6);
            *(this + 6) = v95;
            goto LABEL_85;
          }

          v8 = v101;
          goto LABEL_87;
        }

        goto LABEL_48;
      }

      ElementDataSize = mlir::mps::CPUNDArray::getElementDataSize(a3);
      LODWORD(v34) = 1;
      if (ElementDataSize <= 3)
      {
        if (ElementDataSize == 1)
        {
          v62 = *v28;
          v32 = v30;
          memset(v30, v62, NumElements);
          v33 = v100;
          v27 = v96;
          if (v25)
          {
            goto LABEL_49;
          }

          goto LABEL_76;
        }

        if (ElementDataSize == 2)
        {
          __pattern4[0] = *v28;
          __pattern4[1] = __pattern4[0];
          v32 = v30;
          memset_pattern4(v30, __pattern4, 2 * NumElements);
          v33 = v100;
          v27 = v96;
          if (v25)
          {
            goto LABEL_49;
          }

          goto LABEL_76;
        }

LABEL_60:
        v33 = v100;
        v32 = v30;
        v27 = v96;
        if (v25)
        {
          goto LABEL_49;
        }

        goto LABEL_76;
      }

      if (ElementDataSize != 4)
      {
        if (ElementDataSize == 8)
        {
          v60 = v28;
          v32 = v30;
          memset_pattern8(v30, v60, 8 * NumElements);
          v33 = v100;
          v27 = v96;
          if (v25)
          {
            goto LABEL_49;
          }

          goto LABEL_76;
        }

        goto LABEL_60;
      }

      v63 = v28;
      v32 = v30;
      memset_pattern4(v30, v63, 4 * NumElements);
      v33 = v100;
      v27 = v96;
      if (!v25)
      {
        goto LABEL_76;
      }

LABEL_49:
      if ((v33 & 0xFFF8) == 0)
      {
        if (!*(this + 10))
        {
          [*(*(this + 2) + 48) metalDevice];
          objc_claimAutoreleasedReturnValue();
          operator new();
        }

        v59 = v103;
        v106[4] = 0;
        operator new();
      }

      v46 = v27;
      v47 = [a2[1] device];
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = ___ZN3GPU13BaseOpHandler16encodeConstantOpEPNS_16EncodeDescriptorERKN4mlir3mps10CPUNDArrayEb_block_invoke;
      v104[3] = &__block_descriptor_33_e12_v24__0_v8Q16l;
      v105 = v34;
      v48 = [v47 newBufferWithBytesNoCopy:v32 length:v46 options:0x100000 deallocator:v104];

      v49 = objc_alloc(MEMORY[0x1E6974740]);
      v50 = [a2[1] device];
      v97 = [v49 initWithDevice:v50];

      v51 = MEMORY[0x1E6974490];
      v52 = [v103 descriptor];
      v53 = [v52 getShape];
      v54 = [v51 descriptorWithDataType:v33 shape:v53];

      [v54 setPreferPackedRows:1];
      v55 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:v48 offset:0 descriptor:v54];
      v56 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v57 = a2[1];
      v107 = v55;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
      [v97 encodeToMPSCommandEncoder:v56 commandBuffer:v57 sourceArrays:v58 destinationArray:v103];

      goto LABEL_78;
    }

    v38 = *v28;
    v39 = v38 & 3;
    v40 = NumElements + 3;
    v32 = v29;
    if ((NumElements + 3) >= 7)
    {
      v41 = (4 * v39) | (16 * v39) | (v38 << 6);
      if (NumElements >= 0)
      {
        v40 = NumElements;
      }

      memset(v29, v41 | v39, v40 >> 2);
    }

    if (NumElements <= 0)
    {
      v42 = -(-NumElements & 3);
    }

    else
    {
      v42 = NumElements & 3;
    }

    v33 = v100;
    v27 = v96;
    if (!v42)
    {
LABEL_48:
      LODWORD(v34) = 1;
      if (!v25)
      {
        goto LABEL_76;
      }

      goto LABEL_49;
    }

    if (v42 < 4)
    {
      v43 = 0;
      v44 = 0;
      goto LABEL_73;
    }

    v61 = vdupq_n_s32(v39);
    if (v42 >= 0x20)
    {
      v43 = v42 & 0xFFFFFFFFFFFFFFE0;
      v64 = xmmword_1E09A0AB0;
      v65 = xmmword_1E09A0AC0;
      v66 = xmmword_1E09A0AD0;
      v67 = xmmword_1E0970050;
      v68 = 0uLL;
      v69.i64[0] = 0x2000000020;
      v69.i64[1] = 0x2000000020;
      v70 = v42 & 0xFFFFFFFFFFFFFFE0;
      v71 = 0uLL;
      do
      {
        v72 = vaddq_s32(v67, v67);
        v73 = vaddq_s32(v66, v66);
        v74 = vaddq_s32(v65, v65);
        v75 = vaddq_s32(v64, v64);
        v111.val[0] = vshlq_u32(v61, v72);
        v111.val[1] = vshlq_u32(v61, v73);
        v111.val[2] = vshlq_u32(v61, v74);
        v111.val[3] = vshlq_u32(v61, v75);
        v110.val[0] = vshlq_u32(v61, vaddq_s32(v72, v69));
        v110.val[1] = vshlq_u32(v61, vaddq_s32(v73, v69));
        v110.val[2] = vshlq_u32(v61, vaddq_s32(v74, v69));
        v110.val[3] = vshlq_u32(v61, vaddq_s32(v75, v69));
        v68 = vorrq_s8(v68, vqtbl4q_s8(v111, xmmword_1E09A0AE0));
        v71 = vorrq_s8(v71, vqtbl4q_s8(v110, xmmword_1E09A0AE0));
        v67 = vaddq_s32(v67, v69);
        v66 = vaddq_s32(v66, v69);
        v65 = vaddq_s32(v65, v69);
        v64 = vaddq_s32(v64, v69);
        v70 -= 32;
      }

      while (v70);
      v76 = vorrq_s8(v71, v68);
      *v76.i8 = vorr_s8(*v76.i8, *&vextq_s8(v76, v76, 8uLL));
      v77 = v76.i64[0] | HIDWORD(v76.i64[0]) | ((v76.i64[0] | HIDWORD(v76.i64[0])) >> 16);
      v44 = v77 | (v77 >> 8);
      if (v42 == v43)
      {
        goto LABEL_75;
      }

      if ((v42 & 0x1C) == 0)
      {
LABEL_73:
        v83 = v42 - v43;
        v84 = 2 * v43;
        do
        {
          v44 |= v39 << v84;
          v84 += 2;
          --v83;
        }

        while (v83);
        goto LABEL_75;
      }
    }

    else
    {
      LOWORD(v44) = 0;
      v43 = 0;
    }

    v78 = v43;
    v43 = v42 & 0xFFFFFFFFFFFFFFFCLL;
    v79 = v44;
    v80 = vorrq_s8(vdupq_n_s32(v78), xmmword_1E0970050);
    v81 = v78 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
    v82.i64[0] = 0x400000004;
    v82.i64[1] = 0x400000004;
    do
    {
      v79 = vorr_s8(v79, vmovn_s32(vshlq_u32(v61, vaddq_s32(v80, v80))));
      v80 = vaddq_s32(v80, v82);
      v81 += 4;
    }

    while (v81);
    v44 = v79.i32[0] | v79.i32[1] | ((*&v79 | HIDWORD(*&v79)) >> 16);
    if (v42 != v43)
    {
      goto LABEL_73;
    }

LABEL_75:
    v30[v96 - 1] = v44;
    LODWORD(v34) = 1;
    if (!v25)
    {
      goto LABEL_76;
    }

    goto LABEL_49;
  }

LABEL_87:
  BaseRuntime::setTensorDataToDataMap(*(this + 2), v8, v9);
}