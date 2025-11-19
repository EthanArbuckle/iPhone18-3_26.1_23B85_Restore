void sub_1E065C300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  if (a37 >= 0x41)
  {
    if (a36)
    {
      MEMORY[0x1E12E5B60](a36, v37);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

EmitterObjC::DepthwiseConv3DOpHandler *EmitterObjC::DepthwiseConv3DOpHandler::DepthwiseConv3DOpHandler(EmitterObjC::DepthwiseConv3DOpHandler *this, id *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B43EF0;
  v56[0] = a3;
  v5 = *(a3 + 9);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  if (*(a3 + 9))
  {
    v8 = a3 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  Strides = mlir::mps::ColToImOp::getStrides(v56);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v56);
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(v56);
  ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(v56);
  v44 = MEMORY[0x1E696AEC0];
  v13 = v54;
  (*(*a2 + 4))(v54, a2, NextResultAtOffset);
  if (v55 < 0)
  {
    v13 = v54[0];
  }

  if (Strides)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
  }

  else
  {
    v14 = 0;
  }

  v46 = EmitterObjC::elementsAttrToObjcArray(Strides, v14);
  if (InputAttributeNames)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = EmitterObjC::elementsAttrToObjcArray(InputAttributeNames, v15);
  if (Rewriter)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = EmitterObjC::elementsAttrToObjcArray(Rewriter, v17);
  PaddingStyle = mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(v56);
  v42 = this;
  if (PaddingStyle >= 5)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v20 = v6;
    v21 = v7;
    v22 = 0;
  }

  else
  {
    v20 = v6;
    v21 = v7;
    v22 = off_1E86D4A08[PaddingStyle];
  }

  (*(*a2 + 4))(v52, a2, NextResultAtOffset);
  if (v53 >= 0)
  {
    v23 = v52;
  }

  else
  {
    v23 = v52[0];
  }

  v24 = [v44 stringWithFormat:@"\n    MPSGraphDepthwiseConvolution3DOpDescriptor *%sDWConvDescriptor = \n    [MPSGraphDepthwiseConvolution3DOpDescriptor descriptorWithStrides:%@\n                                                        dilationRates:%@\n                                                        paddingValues:%@\n                                                         paddingStyle:%s]\n    %sDWConvDescriptor.channelDimensionIndex = %d;\n    ", v13, v46, v16, v18, v22, v23, ChannelAxis];;
  v25 = v20;
  if (v53 < 0)
  {
    operator delete(v52[0]);

    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  operator delete(v54[0]);
LABEL_25:
  v45 = v24;
  v26 = [a2[27] stringByAppendingString:v24];
  v27 = a2[27];
  a2[27] = v26;

  v28 = MEMORY[0x1E696AEC0];
  (*(*a2 + 4))(v54, a2, NextResultAtOffset);
  if (v55 >= 0)
  {
    v29 = v54;
  }

  else
  {
    v29 = v54[0];
  }

  v51 = v25;
  v52[0] = &v51;
  v30 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v51);
  v31 = v30 + 3;
  if (*(v30 + 47) < 0)
  {
    v31 = *v31;
  }

  v50 = v21;
  v52[0] = &v50;
  v32 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v50);
  v33 = v32 + 3;
  if (*(v32 + 47) < 0)
  {
    v33 = *v33;
  }

  (*(*a2 + 4))(v52, a2, NextResultAtOffset);
  v34 = v53;
  v35 = v52[0];
  v48 = 0;
  LOBYTE(v47) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v47, &__p);
  v36 = v52;
  if (v34 < 0)
  {
    v36 = v35;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v38 = [v28 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph depthwiseConvolution3DWithSourceTensor:%s\n                                    weightsTensor:%s\n                                       descriptor:%sDWConvDescriptor\n                                             name:%s]\n    ", v29, v31, v33, v36, p_p];;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v48 & 0x80000000) == 0)
    {
LABEL_39:
      if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

LABEL_46:
      operator delete(v52[0]);
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

LABEL_47:
      operator delete(v54[0]);
      goto LABEL_41;
    }
  }

  else if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(v47);
  if (v53 < 0)
  {
    goto LABEL_46;
  }

LABEL_40:
  if (v55 < 0)
  {
    goto LABEL_47;
  }

LABEL_41:
  v39 = [a2[27] stringByAppendingString:v38];
  v40 = a2[27];
  a2[27] = v39;

  return v42;
}

void sub_1E065C8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (*(v22 - 121) < 0)
  {
    operator delete(*(v22 - 144));
  }

  if (*(v22 - 97) < 0)
  {
    operator delete(*(v22 - 120));
  }

  _Unwind_Resume(a1);
}

id EmitterObjC::elementsAttrToObjcArray(uint64_t a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x400000000;
  *&v2 = mlir::getIntValues<long long>(a1, a2, &v14, 1);
  v3 = v15;
  if (v15)
  {
    v4 = v14;
    v5 = [@"@[" stringByAppendingFormat:@"@%ld", v2, *v14];
    v6 = v5;
    if (v3 == 1)
    {
      v7 = v5;
    }

    else
    {
      v8 = (v4 + 8);
      v9 = 8 * v3 - 8;
      do
      {
        v10 = *v8;
        v11 = [v6 stringByAppendingString:{@", "}];

        v7 = [v11 stringByAppendingFormat:@"@%ld", v10];

        ++v8;
        v6 = v7;
        v9 -= 8;
      }

      while (v9);
    }
  }

  else
  {
    v7 = @"@[";
  }

  v12 = [(__CFString *)v7 stringByAppendingString:@"]"];

  if (v14 != v16)
  {
    free(v14);
  }

  return v12;
}

{
  v16[4] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = 0x400000000;
  *&v2 = mlir::getIntValues<long long>(a1, a2, &v14, 1);
  v3 = v15;
  if (v15)
  {
    v4 = v14;
    v5 = [@"@[" stringByAppendingFormat:@"@%ld", v2, *v14];
    v6 = v5;
    if (v3 == 1)
    {
      v7 = v5;
    }

    else
    {
      v8 = (v4 + 8);
      v9 = 8 * v3 - 8;
      do
      {
        v10 = *v8;
        v11 = [v6 stringByAppendingString:{@", "}];

        v7 = [v11 stringByAppendingFormat:@"@%ld", v10];

        ++v8;
        v6 = v7;
        v9 -= 8;
      }

      while (v9);
    }
  }

  else
  {
    v7 = @"@[";
  }

  v12 = [(__CFString *)v7 stringByAppendingString:@"]"];

  if (v14 != v16)
  {
    free(v14);
  }

  return v12;
}

void sub_1E065CAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void __mpsGraphLazyInit(void)
{
  if (__mpsGraphLazyInit(void)::once != -1)
  {
    dispatch_once_f(&__mpsGraphLazyInit(void)::once, 0, static_init);
  }
}

uint64_t static_init(uint64_t result)
{
  v1 = &dword_1E0966670;
  if (&OBJC_CLASS_METHODS_MPSGraph != &dword_1E0966670)
  {
    if (((&OBJC_CLASS_METHODS_MPSGraph - &dword_1E0966670) >> 2) <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = (&OBJC_CLASS_METHODS_MPSGraph - &dword_1E0966670) >> 2;
    }

    do
    {
      v3 = *v1++;
      result = ((&dword_1DF9BF000 + v3))(result);
      --v2;
    }

    while (v2);
  }

  return result;
}

void MILToMLIR::SingleGateRNNPattern::matchAndRewrite(MILToMLIR::SingleGateRNNPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v12 = *MEMORY[0x1E69E9840];
  MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "initial_h");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "bias");
  v7 = MILToMLIRRewriter::getArgValue(a3, a2, "weight_ih");
  MILToMLIRRewriter::getArgValue(a3, a2, "weight_hh");
  v5 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v6, v5);
  v11 = 9;
  strcpy(__p, "direction");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = 10;
  strcpy(__p, "activation");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = 15;
  strcpy(__p, "output_sequence");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<BOOL>();
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_1E065D4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, char *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  operator delete(v55);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a27, a28);
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.squeeze";
    v17[3] = 11;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::SqueezeOp::build(a1, v20, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::MatMulOp &,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.add";
    v17[3] = 7;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
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

uint64_t MILToMLIR::activationStringToAttr(void *a1, unsigned __int8 a2)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v2 = 0;
    v3 = *(a1 + 23);
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        if (*a1 ^ 0x6D676973 | *(a1 + 3) ^ 0x64696F6D)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }

      if (v3 != 11)
      {
        if (v3 != 12)
        {
          return v2;
        }

        goto LABEL_46;
      }

      v8 = *a1 ^ 0x745F64656C616373 | *(a1 + 3) ^ 0x686E61745F64656CLL;
      if (((v8 == 0) & a2) != 0)
      {
        v2 = 2;
      }

      else
      {
        v2 = 5;
      }

      if (!v8)
      {
        return v2;
      }

      return 0;
    }

    if (v3 != 4)
    {
      if (v3 == 6)
      {
        return 0;
      }

      return v2;
    }

    if (*a1 != 1970038130)
    {
      if (*a1 == 1752064372)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }

  v4 = a1[1];
  if (v4 > 6)
  {
    if (v4 == 7)
    {
      if (**a1 == 1835493747 && *(*a1 + 3) == 1684631405)
      {
        return 3;
      }
    }

    else if (v4 == 11)
    {
      v7 = **a1 ^ 0x745F64656C616373 | *(*a1 + 3) ^ 0x686E61745F64656CLL;
      v2 = ((v7 == 0) & a2) != 0 ? 2 : 5;
      if (!v7)
      {
        return v2;
      }
    }
  }

  else if (v4 == 4)
  {
    if (**a1 == 1970038130)
    {
      return 1;
    }

    if (**a1 == 1752064372)
    {
      return 2;
    }
  }

  else if (v4 == 6 && **a1 == 1701734764 && *(*a1 + 4) == 29281)
  {
    return 0;
  }

  if (a1[1] != 12)
  {
    return 0;
  }

  a1 = *a1;
LABEL_46:
  v10 = 0x686172645F736967;
  v11 = bswap64(*a1);
  if (v11 == 0x686172645F736967)
  {
    v10 = 1836018020;
    v11 = bswap32(*(a1 + 2));
    if (v11 == 1836018020)
    {
      return 4;
    }
  }

  if (v11 < v10)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  return 4 * (v12 == 0);
}

void MILToMLIR::LSTMPattern::matchAndRewrite(MILToMLIR::LSTMPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  v20[43] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v18 = MILToMLIRRewriter::getArgValue(a3, a2, "initial_h");
  v17 = MILToMLIRRewriter::getArgValue(a3, a2, "initial_c");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "bias");
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "weight_ih");
  v14 = MILToMLIRRewriter::getArgValue(a3, a2, "weight_hh");
  v13 = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "peephole");
  v12 = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "clip");
  v6 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v11, v6);
  HIBYTE(v20[2]) = 9;
  strcpy(v20, "direction");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (SHIBYTE(v20[2]) < 0)
  {
    operator delete(v20[0]);
  }

  HIBYTE(v20[2]) = 10;
  strcpy(v20, "activation");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (SHIBYTE(v20[2]) < 0)
  {
    operator delete(v20[0]);
  }

  HIBYTE(v20[2]) = 20;
  strcpy(v20, "recurrent_activation");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (SHIBYTE(v20[2]) < 0)
  {
    operator delete(v20[0]);
  }

  HIBYTE(v20[2]) = 15;
  strcpy(v20, "cell_activation");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  if (SHIBYTE(v20[2]) < 0)
  {
    operator delete(v20[0]);
  }

  HIBYTE(v20[2]) = 15;
  strcpy(v20, "output_sequence");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<BOOL>();
  if (SHIBYTE(v20[2]) < 0)
  {
    operator delete(v20[0]);
  }

  v7 = mlir::IntegerType::get(*(a3 + 23), 32, 1u);
  v8 = mlir::RankedTensorType::get(0, 0, v7, 0);
  v20[0] = mlir::mps::getConstantAttr<int>(v8, 0);
  mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, v20);
  v9 = mlir::IntegerType::get(*(a3 + 23), 32, 1u);
  v10 = mlir::RankedTensorType::get(0, 0, v9, 0);
  v20[0] = mlir::mps::getConstantAttr<int>(v10, -1);
  mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, v20);
  operator new();
}

void sub_1E065F140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, int a63)
{
  if (*(v76 - 121) < 0)
  {
    operator delete(*v74);
  }

  v78 = *v75;
  if (*v75)
  {
    *(v75 + 8) = v78;
    operator delete(v78);
  }

  if (a54 < 0)
  {
    operator delete(*(v73 + 96));
  }

  if (a60 < 0)
  {
    operator delete(*(v73 + 120));
  }

  if (a66 < 0)
  {
    operator delete(*(v73 + 144));
  }

  if (a72 < 0)
  {
    operator delete(*(v73 + 168));
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a73, *(v73 + 200));
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int,long long,long long>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.slice";
    v21[3] = 9;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::SliceOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int,int,long long>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.slice";
    v21[3] = 9;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::SliceOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int,long long &,long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.slice";
    v21[3] = 9;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::SliceOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::Value &,int,int,long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, int *a5, int *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.slice";
    v21[3] = 9;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::SliceOp::build(a1, v24, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::LSTMOp,mlir::Value &,mlir::Value &,mlir::mps::RNNActivation &,mlir::mps::RNNActivation &,mlir::mps::RNNActivation &,mlir::mps::RNNActivation &,mlir::mps::RNNActivation &,mlir::mps::LSTMGateLayout,BOOL,mlir::Value &,mlir::Value &,decltype(nullptr),mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, char *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15)
{
  v35[38] = *MEMORY[0x1E69E9840];
  v29 = a2;
  Context = mlir::Attribute::getContext(&v29);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v33 = 1283;
    v32[2] = "mps.lstm";
    v32[3] = 8;
    v31 = 259;
    llvm::operator+(v32, &v30, v34);
    llvm::report_fatal_error(v34, 1);
  }

  mlir::OperationState::OperationState(v35, a2, v24);
  mlir::mps::LSTMOp::build(a1, v35, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, 0, *a14, *a15);
  v26 = mlir::OpBuilder::create(a1, v35);
  if (*(*(v26 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  mlir::OperationState::~OperationState(v35);
  return v27;
}

void MILToMLIR::GRUPattern::matchAndRewrite(MILToMLIR::GRUPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v18 = MILToMLIRRewriter::getArgValue(a3, a2, "initial_h");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "bias");
  v16 = MILToMLIRRewriter::getArgValue(a3, a2, "weight_ih");
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "weight_hh");
  v6 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v14, v6);
  v13[24] = 9;
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  strcpy(v13, "\ndirection");
  strcpy(v12, "activation");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  strcpy(v11, "recurrent_activation");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  HIBYTE(v11[2]) = 15;
  strcpy(v11, "output_sequence");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<BOOL>();
  v7 = mlir::IntegerType::get(*(a3 + 23), 32, 1u);
  v8 = mlir::RankedTensorType::get(0, 0, v7, 0);
  v11[0] = mlir::mps::getConstantAttr<int>(v8, 0);
  mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, v11);
  v9 = mlir::IntegerType::get(*(a3 + 23), 32, 1u);
  v10 = mlir::RankedTensorType::get(0, 0, v9, 0);
  v11[0] = mlir::mps::getConstantAttr<int>(v10, -1);
  mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, v11);
  operator new();
}

void sub_1E0660AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v45 + 200));
  }

  v48 = *(v45 + 40);
  if (v48)
  {
    *(v45 + 48) = v48;
    operator delete(v48);
  }

  if (a45 < 0)
  {
    operator delete(*(v45 + 64));
  }

  if (*(v46 - 217) < 0)
  {
    operator delete(*(v45 + 88));
  }

  if (*(v46 - 193) < 0)
  {
    operator delete(*(v45 + 112));
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v46 - 192, *(v45 + 144));
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::GRUOp,mlir::Value &,mlir::Value &,mlir::mps::RNNActivation &,mlir::mps::RNNActivation &,mlir::mps::RNNActivation &,mlir::mps::GRUGateLayout,BOOL,BOOL,BOOL,mlir::Value &,decltype(nullptr),decltype(nullptr)>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, char *a9, unsigned __int8 *a10, unsigned __int8 *a11, uint64_t *a12)
{
  v32[38] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GRUOp,void>::id, Context);
  if ((v22 & 1) == 0)
  {
    v30 = 1283;
    v29[2] = "mps.gru";
    v29[3] = 7;
    v28 = 259;
    llvm::operator+(v29, &v27, v31);
    llvm::report_fatal_error(v31, 1);
  }

  mlir::OperationState::OperationState(v32, a2, v21);
  mlir::mps::GRUOp::build(a1, v32, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, 0, 0);
  v23 = mlir::OpBuilder::create(a1, v32);
  if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GRUOp,void>::id)
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

void MILToMLIR::SingleGateRNNPattern::~SingleGateRNNPattern(void **this)
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

void MILToMLIR::LSTMPattern::~LSTMPattern(void **this)
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

void MILToMLIR::GRUPattern::~GRUPattern(void **this)
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

void sub_1E0661B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, char a48)
{
  operator delete(v51);
  operator delete(v50);
  operator delete(v49);
  operator delete(v48);

  _Unwind_Resume(a1);
}

void sub_1E06621F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, char a48)
{
  operator delete(v51);
  operator delete(v50);
  operator delete(v49);
  operator delete(v48);

  _Unwind_Resume(a1);
}

uint64_t GPU::ScatterGenericOpHandler<mlir::mps::ScatterOp>::ScatterGenericOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *v5 = &unk_1F5B44190;
  *(v5 + 15) = 0;
  v6 = *(v5 + 3);
  v7 = objc_alloc(MEMORY[0x1E6974870]);
  v8 = [*(*(a1 + 16) + 48) metalDevice];
  v16 = *(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 64);
  v9 = [v7 initWithDevice:v8 operation:mlir::arith::FastMathFlagsAttr::getValue(&v16)];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = objc_alloc(MEMORY[0x1E6974740]);
  v12 = [*(*(a1 + 16) + 48) metalDevice];
  v13 = [v11 initWithDevice:v12];
  v14 = *(a1 + 120);
  *(a1 + 120) = v13;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  [*(a1 + 120) setOptions:{objc_msgSend(*(a1 + 120), "options") | 1}];
  return a1;
}

void GPU::ScatterOpHandler::encodeNDArrayOp(GPU::ScatterOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v34 = a3;
  v5 = *(this + 3);
  v6 = *(v5 + 72);
  v7 = v6[7];
  v8 = v6[11];
  v9 = (*(**(this + 2) + 48))(*(this + 2), v6[3], 0);
  v32 = [v9 mpsndarray];

  v10 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v35 = [v10 mpsndarray];

  v11 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v12 = [v11 mpsndarray];

  v31 = [(NSArray *)v34 objectAtIndexedSubscript:0];
  v30 = [v31 mpsndarray];
  if (!v30 || (v32 ? (v13 = v35 == 0) : (v13 = 1), !v13 ? (v14 = v12 == 0) : (v14 = 1), v14))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v33 = [v12 descriptor];
  v29 = [v35 descriptor];
  Axis = RuntimeUtils::getAxis(*(*(v5 + 72) + 120), [v29 numberOfDimensions]);
  v28 = [v33 getShape];
  v16 = RuntimeUtils::expandShape(v28, 1, 1);
  v17 = RuntimeUtils::expandShape(v16, 0, Axis);

  v18 = *(this + 15);
  v19 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v20 = [v18 reshapeWithCommandEncoder:v19 commandBuffer:*(a2 + 1) sourceArray:v12 shape:v17 destinationArray:0];

  if (!v20)
  {
    v21 = [MEMORY[0x1E6974490] descriptorWithDataType:objc_msgSend(v12 shape:{"dataType", v28), v17}];
    [v21 setPreferPackedRows:1];
    v20 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a2 + 1) descriptor:v21];
    v22 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v23 = [v18 reshapeWithCommandEncoder:v22 commandBuffer:*(a2 + 1) sourceArray:v12 shape:v17 destinationArray:v20];
  }

  v24 = *(this + 1);
  [v24 setBatchDimensions:Axis];
  v25 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v26 = *(a2 + 1);
  v36[0] = v32;
  v36[1] = v35;
  v36[2] = v20;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  [v24 encodeToMPSCommandEncoder:v25 commandBuffer:v26 sourceArrays:v27 destinationArray:v30];
}

uint64_t GPU::ScatterGenericOpHandler<mlir::mps::ScatterAlongAxisOp>::ScatterGenericOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *v5 = &unk_1F5B441E0;
  *(v5 + 15) = 0;
  v6 = *(v5 + 3);
  v7 = objc_alloc(MEMORY[0x1E6974870]);
  v8 = [*(*(a1 + 16) + 48) metalDevice];
  v16 = *(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 64);
  v9 = [v7 initWithDevice:v8 operation:mlir::arith::FastMathFlagsAttr::getValue(&v16)];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = objc_alloc(MEMORY[0x1E6974740]);
  v12 = [*(*(a1 + 16) + 48) metalDevice];
  v13 = [v11 initWithDevice:v12];
  v14 = *(a1 + 120);
  *(a1 + 120) = v13;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  [*(a1 + 120) setOptions:{objc_msgSend(*(a1 + 120), "options") | 1}];
  return a1;
}

void GPU::ScatterAlongAxisOpHandler::encodeNDArrayOp(GPU::ScatterAlongAxisOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v53[3] = *MEMORY[0x1E69E9840];
  v46 = a3;
  v5 = *(this + 3);
  v6 = *(v5 + 72);
  v7 = v6[7];
  v8 = v6[11];
  v9 = (*(**(this + 2) + 48))(*(this + 2), v6[3], 0);
  v10 = [v9 mpsndarray];

  v11 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v12 = [v11 mpsndarray];

  v13 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v14 = [v13 mpsndarray];

  v49 = v14;
  v43 = [(NSArray *)v46 objectAtIndexedSubscript:0];
  v15 = [v43 mpsndarray];
  v52 = v15;
  if (!v15 || (v10 ? (v16 = v12 == 0) : (v16 = 1), !v16 ? (v17 = v14 == 0) : (v17 = 1), v17))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v47 = [v10 descriptor];
  v50 = [v12 descriptor];
  v51 = [v14 descriptor];
  v48 = [v15 descriptor];
  v44 = [v48 numberOfDimensions];
  v18 = [v50 numberOfDimensions];
  v19 = v18 + ~RuntimeUtils::getAxis(*(*(v5 + 72) + 120), v18);
  if (v19)
  {
    [v47 transposeDimension:0 withDimension:v19];
    [v50 transposeDimension:0 withDimension:v19];
    [v51 transposeDimension:0 withDimension:v19];
    [v48 transposeDimension:0 withDimension:v19];
    v20 = *(a2 + 1);
    v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v22 = [v10 safeArrayViewWithCommandBuffer:v20 computeEncoder:v21 descriptor:v47 aliasing:1];

    v23 = *(a2 + 1);
    v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v25 = [v12 safeArrayViewWithCommandBuffer:v23 computeEncoder:v24 descriptor:v50 aliasing:1];

    if (*(v52 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v52 setReadCount:{objc_msgSend(v52, "readCount") + 1}];
    }

    v26 = *(a2 + 1);
    v27 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v28 = [v52 safeArrayViewWithCommandBuffer:v26 computeEncoder:v27 descriptor:v48 aliasing:1];

    v52 = v28;
  }

  else
  {
    v25 = v12;
    v22 = v10;
  }

  v42 = [v51 getShape];
  v29 = RuntimeUtils::expandShape(v42, [v42 count], 1);
  v30 = *(a2 + 1);
  v31 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v45 = [v49 safeArrayViewWithCommandBuffer:v30 computeEncoder:v31 descriptor:v51 aliasing:1];

  v32 = *(this + 15);
  v33 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v34 = [v32 reshapeWithCommandEncoder:v33 commandBuffer:*(a2 + 1) sourceArray:v45 shape:v29 destinationArray:0];

  if (!v34)
  {
    v35 = [MEMORY[0x1E6974490] descriptorWithDataType:objc_msgSend(v49 shape:{"dataType"), v29}];
    [v35 setPreferPackedRows:1];
    v34 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a2 + 1) descriptor:v35];
    v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v37 = [v32 reshapeWithCommandEncoder:v36 commandBuffer:*(a2 + 1) sourceArray:v49 shape:v29 destinationArray:v34];
  }

  v38 = *(this + 1);
  [v38 setBatchDimensions:v44 - 1];
  v39 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v40 = *(a2 + 1);
  v53[0] = v22;
  v53[1] = v25;
  v53[2] = v34;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
  [v38 encodeToMPSCommandEncoder:v39 commandBuffer:v40 sourceArrays:v41 destinationArray:v52];
}

uint64_t GPU::ScatterGenericOpHandler<mlir::mps::ScatterNDOp>::ScatterGenericOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4);
  *v5 = &unk_1F5B44230;
  *(v5 + 15) = 0;
  v6 = *(v5 + 3);
  v7 = objc_alloc(MEMORY[0x1E6974870]);
  v8 = [*(*(a1 + 16) + 48) metalDevice];
  v16 = *(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 72);
  v9 = [v7 initWithDevice:v8 operation:mlir::arith::FastMathFlagsAttr::getValue(&v16)];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = objc_alloc(MEMORY[0x1E6974740]);
  v12 = [*(*(a1 + 16) + 48) metalDevice];
  v13 = [v11 initWithDevice:v12];
  v14 = *(a1 + 120);
  *(a1 + 120) = v13;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  [*(a1 + 120) setOptions:{objc_msgSend(*(a1 + 120), "options") | 1}];
  return a1;
}

void GPU::ScatterNDOpHandler::encodeNDArrayOp(GPU::ScatterNDOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(this + 2);
  v24 = *(this + 3);
  v7 = *(v24 + 72);
  v8 = v7[7];
  v9 = v7[11];
  v10 = (*(*v6 + 48))(v6, v7[3], 0);
  v11 = [v10 mpsndarray];

  v12 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  v13 = [v12 mpsndarray];

  v14 = (*(**(this + 2) + 48))(*(this + 2), v9, 0);
  v15 = [v14 mpsndarray];

  v16 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v17 = [v16 mpsndarray];
  if (!v17 || (v11 ? (v18 = v13 == 0) : (v18 = 1), !v18 ? (v19 = v15 == 0) : (v19 = 1), v19))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v20 = *(this + 1);
  [v20 setBatchDimensions:mlir::pdl::ResultOp::getIndex(&v24)];
  v21 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v22 = *(a2 + 1);
  v25[0] = v11;
  v25[1] = v13;
  v25[2] = v15;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  [v20 encodeToMPSCommandEncoder:v21 commandBuffer:v22 sourceArrays:v23 destinationArray:v17];
}

void GPU::ScatterOpHandler::~ScatterOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ScatterAlongAxisOpHandler::~ScatterAlongAxisOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ScatterNDOpHandler::~ScatterNDOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ScatterGenericOpHandler<mlir::mps::ScatterOp>::~ScatterGenericOpHandler(id *a1)
{

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ScatterGenericOpHandler<mlir::mps::ScatterAlongAxisOp>::~ScatterGenericOpHandler(id *a1)
{

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ScatterGenericOpHandler<mlir::mps::ScatterNDOp>::~ScatterGenericOpHandler(id *a1)
{

  GPU::BaseOpHandler::~BaseOpHandler(a1);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeSumOp,(MPSNDArrayScanOperation)0>::BaseCumulativeOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B44480;
  v12 = a3;
  v6 = objc_alloc(MEMORY[0x1E6974868]);
  v7 = [*(*(a1 + 16) + 48) metalDevice];
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v12);
  v9 = [v6 initWithDevice:v7 axis:0 operation:0 exclusive:InferredResultTypes reverse:mlir::mps::StridedSliceOp::getEndIsSize(&v12)];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeProductOp,(MPSNDArrayScanOperation)1>::BaseCumulativeOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B444D0;
  v12 = a3;
  v6 = objc_alloc(MEMORY[0x1E6974868]);
  v7 = [*(*(a1 + 16) + 48) metalDevice];
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v12);
  v9 = [v6 initWithDevice:v7 axis:0 operation:1 exclusive:InferredResultTypes reverse:mlir::mps::StridedSliceOp::getEndIsSize(&v12)];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMaximumOp,(MPSNDArrayScanOperation)2>::BaseCumulativeOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B44520;
  v12 = a3;
  v6 = objc_alloc(MEMORY[0x1E6974868]);
  v7 = [*(*(a1 + 16) + 48) metalDevice];
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v12);
  v9 = [v6 initWithDevice:v7 axis:0 operation:2 exclusive:InferredResultTypes reverse:mlir::mps::StridedSliceOp::getEndIsSize(&v12)];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

uint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMinimumOp,(MPSNDArrayScanOperation)3>::BaseCumulativeOpHandler(uint64_t a1, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(a1, a2, a3, a4) = &unk_1F5B44570;
  v12 = a3;
  v6 = objc_alloc(MEMORY[0x1E6974868]);
  v7 = [*(*(a1 + 16) + 48) metalDevice];
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v12);
  v9 = [v6 initWithDevice:v7 axis:0 operation:3 exclusive:InferredResultTypes reverse:mlir::mps::StridedSliceOp::getEndIsSize(&v12)];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
  return a1;
}

void GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeSumOp,(MPSNDArrayScanOperation)0>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = *(a1 + 24);
  v6 = *(v22 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v11 = [v10 mpsndarray];
  v12 = [v9 mpsndarray];
  v13 = *(a1 + 8);
  Axis = RuntimeUtils::getAxis(*(a1 + 16), a2, v8, [v11 numberOfDimensions]);
  v15 = [v11 numberOfDimensions];
  if (Axis >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v13 setAxis:v16 + ~Axis];
  [v13 setExclusive:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v22)];
  [v13 setReverse:mlir::mps::StridedSliceOp::getEndIsSize(&v22)];
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v18 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v19 = *(a2 + 1);
    v20 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v13 encodeToMPSCommandEncoder:v18 commandBuffer:v19 sourceArrays:v17 resultState:0 destinationArray:v12 kernelDAGObject:v20];
  }

  else
  {
    if (!v11 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v21 = *(a2 + 1);
    v23[0] = v11;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v13 encodeToMPSCommandEncoder:v17 commandBuffer:v21 sourceArrays:v18 destinationArray:v12];
  }
}

uint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeSumOp,(MPSNDArrayScanOperation)0>::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::CumulativeSumOpHandler::~CumulativeSumOpHandler(GPU::CumulativeSumOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

unint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeSumOp,(MPSNDArrayScanOperation)0>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeProductOp,(MPSNDArrayScanOperation)1>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = *(a1 + 24);
  v6 = *(v22 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v11 = [v10 mpsndarray];
  v12 = [v9 mpsndarray];
  v13 = *(a1 + 8);
  Axis = RuntimeUtils::getAxis(*(a1 + 16), a2, v8, [v11 numberOfDimensions]);
  v15 = [v11 numberOfDimensions];
  if (Axis >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v13 setAxis:v16 + ~Axis];
  [v13 setExclusive:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v22)];
  [v13 setReverse:mlir::mps::StridedSliceOp::getEndIsSize(&v22)];
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v18 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v19 = *(a2 + 1);
    v20 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v13 encodeToMPSCommandEncoder:v18 commandBuffer:v19 sourceArrays:v17 resultState:0 destinationArray:v12 kernelDAGObject:v20];
  }

  else
  {
    if (!v11 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v21 = *(a2 + 1);
    v23[0] = v11;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v13 encodeToMPSCommandEncoder:v17 commandBuffer:v21 sourceArrays:v18 destinationArray:v12];
  }
}

uint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeProductOp,(MPSNDArrayScanOperation)1>::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::CumulativeProductOpHandler::~CumulativeProductOpHandler(GPU::CumulativeProductOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

unint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeProductOp,(MPSNDArrayScanOperation)1>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMaximumOp,(MPSNDArrayScanOperation)2>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = *(a1 + 24);
  v6 = *(v22 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v11 = [v10 mpsndarray];
  v12 = [v9 mpsndarray];
  v13 = *(a1 + 8);
  Axis = RuntimeUtils::getAxis(*(a1 + 16), a2, v8, [v11 numberOfDimensions]);
  v15 = [v11 numberOfDimensions];
  if (Axis >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v13 setAxis:v16 + ~Axis];
  [v13 setExclusive:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v22)];
  [v13 setReverse:mlir::mps::StridedSliceOp::getEndIsSize(&v22)];
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v18 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v19 = *(a2 + 1);
    v20 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v13 encodeToMPSCommandEncoder:v18 commandBuffer:v19 sourceArrays:v17 resultState:0 destinationArray:v12 kernelDAGObject:v20];
  }

  else
  {
    if (!v11 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v21 = *(a2 + 1);
    v23[0] = v11;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v13 encodeToMPSCommandEncoder:v17 commandBuffer:v21 sourceArrays:v18 destinationArray:v12];
  }
}

uint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMaximumOp,(MPSNDArrayScanOperation)2>::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::CumulativeMaximumOpHandler::~CumulativeMaximumOpHandler(GPU::CumulativeMaximumOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

unint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMaximumOp,(MPSNDArrayScanOperation)2>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMinimumOp,(MPSNDArrayScanOperation)3>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = *(a1 + 24);
  v6 = *(v22 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v11 = [v10 mpsndarray];
  v12 = [v9 mpsndarray];
  v13 = *(a1 + 8);
  Axis = RuntimeUtils::getAxis(*(a1 + 16), a2, v8, [v11 numberOfDimensions]);
  v15 = [v11 numberOfDimensions];
  if (Axis >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v13 setAxis:v16 + ~Axis];
  [v13 setExclusive:mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v22)];
  [v13 setReverse:mlir::mps::StridedSliceOp::getEndIsSize(&v22)];
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(*(a1 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v18 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v19 = *(a2 + 1);
    v20 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
    [v13 encodeToMPSCommandEncoder:v18 commandBuffer:v19 sourceArrays:v17 resultState:0 destinationArray:v12 kernelDAGObject:v20];
  }

  else
  {
    if (!v11 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v21 = *(a2 + 1);
    v23[0] = v11;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v13 encodeToMPSCommandEncoder:v17 commandBuffer:v21 sourceArrays:v18 destinationArray:v12];
  }
}

uint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMinimumOp,(MPSNDArrayScanOperation)3>::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::CumulativeMinimumOpHandler::~CumulativeMinimumOpHandler(GPU::CumulativeMinimumOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

unint64_t GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMinimumOp,(MPSNDArrayScanOperation)3>::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeSumOp,(MPSNDArrayScanOperation)0>::~BaseCumulativeOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeProductOp,(MPSNDArrayScanOperation)1>::~BaseCumulativeOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMaximumOp,(MPSNDArrayScanOperation)2>::~BaseCumulativeOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BaseCumulativeOpHandler<mlir::mps::CumulativeMinimumOp,(MPSNDArrayScanOperation)3>::~BaseCumulativeOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

GPU::TensorToMemrefOpHandler *GPU::TensorToMemrefOpHandler::TensorToMemrefOpHandler(GPU::TensorToMemrefOpHandler *this, GPU::ANEHelper **a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v7 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  v46 = v7 + 144;
  *(v7 + 16) = v7 + 144;
  v8 = v7 + 128;
  *v7 = &unk_1F5B445C0;
  *(v7 + 17) = 0x600000000;
  v9 = objc_alloc(MEMORY[0x1E6974740]);
  v10 = [*(*(this + 2) + 48) metalDevice];
  v11 = [v9 initWithDevice:v10];
  v12 = *(this + 1);
  *(this + 1) = v11;

  v13 = (a3 - 16);
  if (*(a3 + 9))
  {
    v14 = a3 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  *(this + 15) = getMemRefRowBytes((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  *(this + 48) = 2;
  v16 = *v13;
  if (*v13)
  {
    while (1)
    {
      v18 = *(v16 + 2);
      if (!v18)
      {
        goto LABEL_8;
      }

      v19 = *(*(v18 + 6) + 16);
      if (v19 != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
      {
        v18 = 0;
      }

      v47 = v18;
      if (v19 != &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id || mlir::placement::RegionCall::getRegionType(&v47) != 1)
      {
        goto LABEL_8;
      }

      v20 = *(this + 34);
      if (v20 >= *(this + 35))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v46, v20 + 1, 8);
        v20 = *(this + 34);
      }

      *(*(this + 16) + 8 * v20) = v16;
      ++*(this + 34);
      OperandNumber = mlir::OpOperand::getOperandNumber(v16);
      BaseCompiledProduct = GPU::ANEHelper::getBaseCompiledProduct(a2[75], v47);
      v23 = *(BaseCompiledProduct + 4);
      v24 = *(BaseCompiledProduct + 12);
      if (!v24)
      {
        goto LABEL_22;
      }

      v25 = 0x9DDFEA08EB382D69 * ((8 * v47 - 0xAE502812AA7333) ^ (v47 >> 32));
      v26 = 0x9DDFEA08EB382D69 * ((v47 >> 32) ^ (v25 >> 47) ^ v25);
      v27 = (-348639895 * ((v26 >> 47) ^ v26)) & (v24 - 1);
      v28 = (v23 + 352 * v27);
      v29 = *v28;
      if (*v28 != v47)
      {
        break;
      }

LABEL_23:
      if (v28 == (v23 + 352 * v24) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      GPU::ANEHelper::ProcedureInfo::ProcedureInfo(v48, (v28 + 1));
      if (v51[1])
      {
        v32 = v51[0];
        if (v51[0])
        {
          v33 = v51;
          do
          {
            v34 = v32[4];
            v35 = v34 >= OperandNumber;
            v36 = v34 < OperandNumber;
            if (v35)
            {
              v33 = v32;
            }

            v32 = v32[v36];
          }

          while (v32);
          if (v33 != v51 && v33[4] <= OperandNumber)
          {
            goto LABEL_40;
          }
        }
      }

      else if (v50)
      {
        v37 = v49;
        v38 = 8 * v50;
        while (*v37 != OperandNumber)
        {
          ++v37;
          v38 -= 8;
          if (!v38)
          {
            goto LABEL_41;
          }
        }

        if (v38)
        {
LABEL_40:
          v17 = 0;
          goto LABEL_7;
        }
      }

LABEL_41:
      if (v53[1])
      {
        v39 = v53[0];
        if (v53[0])
        {
          v40 = v53;
          do
          {
            v41 = v39[4];
            v35 = v41 >= OperandNumber;
            v42 = v41 < OperandNumber;
            if (v35)
            {
              v40 = v39;
            }

            v39 = v39[v42];
          }

          while (v39);
          if (v40 != v53 && v40[4] <= OperandNumber)
          {
            goto LABEL_57;
          }
        }
      }

      else if (v52)
      {
        v43 = v51[2];
        v44 = 8 * v52;
        while (*v43 != OperandNumber)
        {
          ++v43;
          v44 -= 8;
          if (!v44)
          {
            goto LABEL_6;
          }
        }

        if (v44)
        {
LABEL_57:
          v17 = 1;
          goto LABEL_7;
        }
      }

LABEL_6:
      v17 = 2;
LABEL_7:
      *(this + 48) = v17;
      GPU::ANEHelper::ProcedureInfo::~ProcedureInfo(v48);
LABEL_8:
      v16 = *v16;
      if (!v16)
      {
        return this;
      }
    }

    v30 = 1;
    while (v29 != -4096)
    {
      v31 = v27 + v30++;
      v27 = v31 & (v24 - 1);
      v28 = (v23 + 352 * v27);
      v29 = *v28;
      if (*v28 == v47)
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    v28 = (v23 + 352 * v24);
    goto LABEL_23;
  }

  return this;
}

void sub_1E06657C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (*v11 != a10)
  {
    free(*v11);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v10);
  _Unwind_Resume(a1);
}

uint64_t GPU::TensorToMemrefOpHandler::inputRequiresCopy(GPU::TensorToMemrefOpHandler *this, MPSGraphTensorData *a2, unint64_t *a3)
{
  v5 = a2;
  v6 = [(MPSGraphTensorData *)v5 mpsndarray];
  v7 = v6;
  if ((vminvq_u8(vceqq_s8(*&v6[*MEMORY[0x1E69744D8]], xmmword_1E09A14C0)) & 0x80) != 0)
  {
    v22 = [(MPSGraphTensorData *)v5 mpsndarray];
    v23 = &v22[*MEMORY[0x1E69744D0]];
    v30 = v23[1];
    v31 = v23[3];
    v28 = *v23;
    v29 = v23[2];
    v24 = [(MPSGraphTensorData *)v5 mpsndarray];
    v25 = v24;
    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_s32(v28, *&v24[*MEMORY[0x1E6974508]]), vceqq_s32(v29, *&v24[*MEMORY[0x1E6974508] + 32])), vandq_s8(vceqq_s32(v30, *&v24[*MEMORY[0x1E6974508] + 16]), vceqq_s32(v31, *&v24[*MEMORY[0x1E6974508] + 48])))) & 0x80000000) != 0)
    {
      v27 = [(MPSGraphTensorData *)v5 mpsndarray];
      v8 = (vminvq_u32(vceqzq_s32(vorrq_s8(vorrq_s8(*&v27[*MEMORY[0x1E6974510]], *&v27[*MEMORY[0x1E6974510] + 32]), vorrq_s8(*&v27[*MEMORY[0x1E6974510] + 16], *&v27[*MEMORY[0x1E6974510] + 48])))) & 0x80000000) == 0;

      v9 = *(this + 34);
      if (v9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v8 = 1;

      v9 = *(this + 34);
      if (v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    v8 = 1;

    v9 = *(this + 34);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v11 = *(this + 16);
      v12 = 8 * v9;
      do
      {
        v13 = *v11;
        v14 = *(this + 2);
        v32 = *(*v11 + 2);
        v15 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>((v14 + 248), &v32);
        if (!v15)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        CurrentProcedureInfo = GPU::ANERegionCallOpHandler::getCurrentProcedureInfo(*(v15[3] + 120));
        OperandNumber = mlir::OpOperand::getOperandNumber(v13);
        v18 = *(CurrentProcedureInfo[16] + OperandNumber) | v10 & 1;
        v10 = *(CurrentProcedureInfo[16] + OperandNumber) & 1 | v10 & 1;
        ++v11;
        v12 -= 8;
      }

      while (v12);
      v19 = (v18 != 0) << 14;
      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  v19 = 0;
  if (a3)
  {
LABEL_7:
    *a3 = v19;
  }

LABEL_8:
  v20 = [(MPSGraphTensorData *)v5 mpsndarray];
  if (*&v20[*MEMORY[0x1E6974500]] == *(this + 15))
  {
    if (v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = v8;
    }
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

void GPU::TensorToMemrefOpHandler::encodeOp(GPU::TensorToMemrefOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v62[5] = *MEMORY[0x1E69E9840];
  v58 = *(this + 3);
  v4 = *(*(v58 + 9) + 24);
  if (*(v58 + 9))
  {
    v5 = v58 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v7 = (*(**(this + 2) + 48))(*(this + 2), v4, 0);
  v8 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  alignment = 0;
  v9 = GPU::TensorToMemrefOpHandler::inputRequiresCopy(this, v7, &alignment);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    __s2 = mlir::Operation::getAttrDictionary(v58);
    Value = mlir::ArrayAttr::getValue(&__s2);
    __s2 = mlir::Operation::getAttrDictionary(v58);
    v12 = mlir::ArrayAttr::getValue(&__s2);
    v14 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13), **(*(v58 + 6) + 96));
    if (v14)
    {
      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        Interleave = mlir::placement::MemrefToTensor::getInterleave(&v58);
        ANENextSupportedInterleaveValue = mlir::getANENextSupportedInterleaveValue(Interleave);
        if (ANENextSupportedInterleaveValue != mlir::placement::MemrefToTensor::getInterleave(&v58))
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }
        }
      }
    }

    v17 = *(*(this + 2) + 408);
    if (v17)
    {
      v18 = *(this + 3);
      v19 = *(v17 + 136);
      if (v19 >= *(v17 + 140))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 128, v17 + 144, v19 + 1, 8);
        LODWORD(v19) = *(v17 + 136);
      }

      *(*(v17 + 128) + 8 * v19) = v18;
      ++*(v17 + 136);
    }

    v20 = [(MPSGraphTensorData *)v7 mpsndarray];
    if (!v20 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v20 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v20 setReadCount:{objc_msgSend(v20, "readCount") + 1}];
    }

    mlir::placement::TensorToMemref::getOutputShapeBeforeInterleave(&v58, &__s2);
    v21 = MEMORY[0x1E6974490];
    v22 = [v20 dataType];
    v23 = getMPSShapeFromMLIR(__s2, v61);
    v55 = [v21 descriptorWithDataType:v22 shape:v23];

    v25 = *(this + 48);
    if (v25)
    {
      if (v25 == 2)
      {
        *(v55 + *MEMORY[0x1E6974548]) = *(this + 15);
      }

      if (alignment == 0x4000)
      {
        memptr[0] = 0;
        v26 = GPU::calculateNDArrayAllocationSize(v55, v24);
        if ((malloc_type_posix_memalign(memptr, alignment, v26, 0x9A47BFFAuLL) || !memptr[0]) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v27 = [*(*(this + 2) + 48) metalDevice];
        v28 = [v27 newBufferWithBytesNoCopy:memptr[0] length:v26 options:0 deallocator:&__block_literal_global_0];

        v29 = [objc_alloc(MEMORY[0x1E6974488]) initWithBuffer:v28 descriptor:v55];
      }

      else
      {
        v50 = objc_alloc(MEMORY[0x1E6974488]);
        v51 = [*(*(this + 2) + 48) metalDevice];
        v29 = [v50 initWithDevice:v51 descriptor:v55];
      }

      v30 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v29 = 0;
      v30 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
LABEL_28:
        v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v30 + 8);
        goto LABEL_36;
      }
    }

    v31 = 0;
LABEL_36:
    memptr[0] = v30;
    memptr[1] = v31;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(memptr);
    if (v40 == v61 && !memcmp(ArgAttrsAttr, __s2, 8 * v61))
    {
      if ((*(this + 48) - 1) > 1)
      {
        v42 = v29;
        v29 = v20;
      }

      else
      {
        v52 = *(this + 1);
        v42 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
        v53 = *(a2 + 1);
        v59 = v20;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        [v52 encodeToMPSCommandEncoder:v42 commandBuffer:v53 sourceArrays:v54 destinationArray:v29];
      }
    }

    else
    {
      v41 = *(this + 1);
      if ((*(this + 48) - 1) > 1)
      {
        v42 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
        v46 = *(a2 + 1);
        v47 = getMPSShapeFromMLIR(__s2, v61);
        v48 = [v41 reshapeWithCommandEncoder:v42 commandBuffer:v46 sourceArray:v20 shape:v47 destinationArray:0];

        v29 = v48;
      }

      else
      {
        v42 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
        v43 = *(a2 + 1);
        v44 = getMPSShapeFromMLIR(__s2, v61);
        v45 = [v41 reshapeWithCommandEncoder:v42 commandBuffer:v43 sourceArray:v20 shape:v44 destinationArray:v29];
      }
    }

    v49 = [[MPSGraphTensorData alloc] initWithMPSNDArray:v29 device:*(*(this + 2) + 48)];
    BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v49);

    if (__s2 != v62)
    {
      free(__s2);
    }

    goto LABEL_48;
  }

  v32 = [(MPSGraphTensorData *)v7 mpsndarray];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v34 = [(MPSGraphTensorData *)v7 mpsndarray];
    v35 = v34;
    v36 = *NextResultAtOffset;
    if (*NextResultAtOffset)
    {
      v37 = 0;
      do
      {
        ++v37;
        v36 = *v36;
      }

      while (v36);
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    [v34 setReadCount:{objc_msgSend(v34, "readCount") + v38}];
  }

  BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v7);
LABEL_48:
}

GPU::MemrefToTensorOpHandler *GPU::MemrefToTensorOpHandler::MemrefToTensorOpHandler(GPU::MemrefToTensorOpHandler *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B44630;
  v6 = objc_alloc(MEMORY[0x1E6974740]);
  v7 = [*(*(this + 2) + 48) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = *(this + 1);
  *(this + 1) = v8;

  *(this + 15) = getMemRefRowBytes((*(*(*(a3 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  return this;
}

void GPU::MemrefToTensorOpHandler::encodeOp(GPU::MemrefToTensorOpHandler *this, void **a2)
{
  v41[5] = *MEMORY[0x1E69E9840];
  v38 = *(this + 3);
  v4 = *(*(v38 + 9) + 24);
  if (*(v38 + 9))
  {
    v5 = v38 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v7 = (*(**(this + 2) + 48))(*(this + 2), v4, 0);
  v8 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v9 = v8;
  if (v7 != v8)
  {
    v10 = v8;
    if ([v10 iosurface])
    {
      v11 = [v10 mpsndarray];
      v12 = *&v11[*MEMORY[0x1E6974500]];
      v13 = *(this + 15);

      if (v12 == v13)
      {
        v14 = [v7 mpsndarray];

        if (!v14)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
    }

    __s2 = mlir::Operation::getAttrDictionary(v38);
    Value = mlir::ArrayAttr::getValue(&__s2);
    __s2 = mlir::Operation::getAttrDictionary(v38);
    v16 = mlir::ArrayAttr::getValue(&__s2);
    v18 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v16 + 16 * v17), **(*(v38 + 6) + 96));
    if (v18)
    {
      if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        Interleave = mlir::placement::MemrefToTensor::getInterleave(&v38);
        ANENextSupportedInterleaveValue = mlir::getANENextSupportedInterleaveValue(Interleave);
        if (ANENextSupportedInterleaveValue != mlir::placement::MemrefToTensor::getInterleave(&v38))
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }
        }
      }
    }

    v21 = *(*(this + 2) + 408);
    if (v21)
    {
      v22 = *(this + 3);
      v23 = *(v21 + 136);
      if (v23 >= *(v21 + 140))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 128, v21 + 144, v23 + 1, 8);
        LODWORD(v23) = *(v21 + 136);
      }

      *(*(v21 + 128) + 8 * v23) = v22;
      ++*(v21 + 136);
    }

    v24 = [v7 mpsndarray];
    if (!v24 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    mlir::placement::MemrefToTensor::getInputShapeAfterInterleave(&v38, &__s2);
    v25 = (NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8);
    if (v25)
    {
      v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    }

    else
    {
      v26 = 0;
    }

    v37[0] = v25;
    v37[1] = v26;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v37);
    if (v28 == v40 && !memcmp(ArgAttrsAttr, __s2, 8 * v40))
    {
      v36 = *(this + 2);
      v29 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      GPURegionRuntime::copyNDArrayToTarget(v36, v29, a2[1], this + 1, v24, v10, NextResultAtOffset, 0);
    }

    else
    {
      v29 = [v10 mpsndarray];
      if (!v29 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(v24 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v24 setReadCount:{objc_msgSend(v24, "readCount") + 1}];
      }

      v30 = *(this + 1);
      v31 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v32 = a2[1];
      v33 = getMPSShapeFromMLIR(NextResultAtOffset);
      v34 = adaptForMPS(v33);
      v35 = [v30 reshapeWithCommandEncoder:v31 commandBuffer:v32 sourceArray:v24 shape:v34 destinationArray:v29];
    }

    if (__s2 != v41)
    {
      free(__s2);
    }
  }

LABEL_32:
}

void GPU::TensorToMemrefOpHandler::~TensorToMemrefOpHandler(GPU::TensorToMemrefOpHandler *this)
{
  *this = &unk_1F5B445C0;
  v2 = *(this + 16);
  if (v2 != this + 144)
  {
    v3 = this;
    free(v2);
    this = v3;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B445C0;
  v2 = *(this + 16);
  if (v2 != this + 144)
  {
    free(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MemrefToTensorOpHandler::~MemrefToTensorOpHandler(GPU::MemrefToTensorOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

GPU::ANEHelper::ProcedureInfo *GPU::ANEHelper::ProcedureInfo::ProcedureInfo(GPU::ANEHelper::ProcedureInfo *this, const GPU::ANEHelper::ProcedureInfo *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  *(this + 2) = this + 32;
  *(this + 3) = 0x400000000;
  if (this != a2)
  {
    v5 = *(a2 + 6);
    if (v5)
    {
      if (v5 < 5)
      {
        v7 = this + 32;
        v6 = *(a2 + 6);
      }

      else
      {
        *(this + 6) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 16, this + 32, v5, 8);
        v6 = *(a2 + 6);
        if (!v6)
        {
LABEL_8:
          *(this + 6) = v5;
          goto LABEL_9;
        }

        v7 = *(this + 2);
      }

      memcpy(v7, *(a2 + 2), 8 * v6);
      goto LABEL_8;
    }
  }

LABEL_9:
  *(this + 8) = this + 80;
  *(this + 9) = 0x400000000;
  if (this != a2)
  {
    v8 = *(a2 + 18);
    if (v8)
    {
      if (v8 < 5)
      {
        v10 = this + 80;
        v9 = *(a2 + 18);
      }

      else
      {
        *(this + 18) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 64, this + 80, v8, 8);
        v9 = *(a2 + 18);
        if (!v9)
        {
LABEL_16:
          *(this + 18) = v8;
          goto LABEL_17;
        }

        v10 = *(this + 8);
      }

      memcpy(v10, *(a2 + 8), 8 * v9);
      goto LABEL_16;
    }
  }

LABEL_17:
  *(this + 14) = *(a2 + 14);
  *(this + 15) = *(a2 + 15);
  *(this + 16) = this + 152;
  *(this + 136) = xmmword_1E09700D0;
  if (this != a2)
  {
    v11 = *(a2 + 17);
    if (v11)
    {
      if (v11 < 0x29)
      {
        v13 = this + 152;
        v12 = *(a2 + 17);
      }

      else
      {
        *(this + 17) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(this + 128, this + 152, v11, 1);
        v12 = *(a2 + 17);
        if (!v12)
        {
LABEL_24:
          *(this + 17) = v11;
          goto LABEL_25;
        }

        v13 = *(this + 16);
      }

      memcpy(v13, *(a2 + 16), v12);
      goto LABEL_24;
    }
  }

LABEL_25:
  *(this + 24) = *(a2 + 24);
  llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::SmallSet(this + 25, a2 + 200);
  llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::SmallSet(this + 34, a2 + 272);
  return this;
}

void sub_1E0666BD0(_Unwind_Exception *a1)
{
  if (*v6 != v5)
  {
    free(*v6);
  }

  v8 = *(v1 + 64);
  if (v8 == v4)
  {
    v9 = *v3;
    if (*v3 == v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    free(v8);
    v9 = *v3;
    if (*v3 == v2)
    {
LABEL_5:

      _Unwind_Resume(a1);
    }
  }

  free(v9);

  _Unwind_Resume(a1);
}

void *llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::SmallSet(void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 < 5)
      {
        v6 = a1 + 2;
        v5 = *(a2 + 8);
      }

      else
      {
        *(a1 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v4, 8);
        v5 = *(a2 + 8);
        if (!v5)
        {
LABEL_8:
          *(a1 + 2) = v4;
          goto LABEL_9;
        }

        v6 = *a1;
      }

      memcpy(v6, *a2, 8 * v5);
      goto LABEL_8;
    }
  }

LABEL_9:
  a1[7] = 0;
  a1[6] = a1 + 7;
  a1[8] = 0;
  v7 = *(a2 + 48);
  if (v7 != (a2 + 56))
  {
    do
    {
      if (!*std::__tree<unsigned long long>::__find_equal<unsigned long long>(a1 + 6, a1 + 7, &v13, &v12, v7 + 4))
      {
        operator new();
      }

      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != (a2 + 56));
  }

  return a1;
}

void sub_1E0666E28(_Unwind_Exception *exception_object)
{
  if (*v1 != v2)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<unsigned long long>::__find_equal<unsigned long long>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

uint64_t llvm::SmallSet<unsigned long long,4u,std::less<unsigned long long>>::~SmallSet(uint64_t a1)
{
  std::__tree<unsigned long long>::destroy(a1 + 48, *(a1 + 56));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

void sub_1E066738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E06673C4);
}

void sub_1E06673A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a13) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);

  if ((SHIBYTE(a13) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E0667410);
}

void sub_1E06673FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    JUMPOUT(0x1E0667410);
  }

  JUMPOUT(0x1E06673C4);
}

unint64_t GPU::ResizeOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

unint64_t GPU::ResizeGradientOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::MultiaryKernelOpHandler<GPU::ResizeOpHandler,mlir::mps::ResizeOp,MPSNDArrayResample,1ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v110 = *MEMORY[0x1E69E9840];
  v91 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::MultiaryKernelOpHandler<GPU::ResizeOpHandler,mlir::mps::ResizeOp,MPSNDArrayResample,1ul>::_createNDArrayMultiaryKernel(a1);
  }

  v4 = [v91 objectAtIndexedSubscript:0];
  v5 = [v4 mpsndarray];

  if (!v5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v6 = v5;
  v97 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v97, 0);
  v8 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v97 + 9) + 32 * ODSOperandIndexAndLength + 24), 0);
  v95 = a1;
  v9 = [v8 mpsndarray];

  v90 = v9;
  if ((!v6 || !v9) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v97, 2u);
  v11 = a1;
  if ((*(v97 + 46) & 0x80) != 0)
  {
    v12 = *(v97 + 9);
    v13 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
LABEL_15:
      v19 = 0.0;
      v93 = 0.0;
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    v13 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
      goto LABEL_15;
    }
  }

  if (!*(v12 + 32 * v13 + 24))
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 16);
  v15 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v97, 2u);
  if ((*(v97 + 46) & 0x80) == 0)
  {
    v16 = 0;
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
      goto LABEL_11;
    }

LABEL_19:
    v18 = *(v16 + 32 * v17 + 24);
    goto LABEL_20;
  }

  v16 = *(v97 + 9);
  v17 = v15;
  if (HIDWORD(v15) + v15 != v15)
  {
    goto LABEL_19;
  }

LABEL_11:
  v18 = 0;
LABEL_20:
  GPURegionRuntime::waitAndReadFPTensorData(v14, a2, v18, &v101);
  v19 = v102;
  v93 = v101;
LABEL_21:
  v20 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v97, 3u);
  if ((*(v97 + 46) & 0x80) != 0)
  {
    v22 = *(v97 + 9);
    v23 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v22 = 0;
    v23 = v20;
    if (HIDWORD(v20) + v20 == v20)
    {
      goto LABEL_28;
    }
  }

  if (*(v22 + 32 * v23 + 24))
  {
    v24 = *(a1 + 16);
    v25 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v97, 3u);
    if ((*(v97 + 46) & 0x80) != 0)
    {
      v26 = *(v97 + 9);
      v27 = v25;
      if (HIDWORD(v25) + v25 == v25)
      {
LABEL_26:
        v28 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v26 = 0;
      v27 = v25;
      if (HIDWORD(v25) + v25 == v25)
      {
        goto LABEL_26;
      }
    }

    v28 = *(v26 + 32 * v27 + 24);
LABEL_32:
    GPURegionRuntime::waitAndReadFPTensorData(v24, a2, v28, &v101);
    v29 = v102;
    __p = v101;
    if (*(a1 + 8))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_28:
  v29 = 0.0;
  __p = 0.0;
  if (*(a1 + 8))
  {
    goto LABEL_34;
  }

LABEL_33:
  v30 = objc_alloc(MEMORY[0x1E6974850]);
  v31 = [*(*(a1 + 16) + 48) metalDevice];
  v32 = [v30 initWithDevice:v31];
  v33 = *(a1 + 8);
  *(a1 + 8) = v32;

  v11 = a1;
LABEL_34:
  v34 = v97;
  ResizeLayout = mlir::mps::getResizeLayout(v97, v21);
  v36 = ResizeLayout;
  if ((ResizeLayout & 0x100000000) == 0)
  {
    v99[0] = mlir::Attribute::getContext((v34 + 24));
    v99[1] = 0;
    v37 = *(v34 + 2);
    v39 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v34, v38);
    v40 = 0;
    v99[2] = v37;
    v99[3] = v39;
    v101 = 0.0;
    v102 = 0.0;
    LODWORD(v103) = 0;
    v104 = 0.0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    while (1)
    {
      if ((*(v34 + 46) & 0x80) == 0 || v40 >= *(v34 + 17))
      {
        v48 = mlir::OpBuilder::clone(v99, v34, &v101);
        mlir::mps::inferTypes(v48, v49);
        v50 = mlir::verify(v48, 1);
        if ((v50 & 1) == 0)
        {
          v52 = llvm::errs(v50);
          v53 = v52;
          v54 = *(v52 + 4);
          if ((*(v52 + 3) - v54) > 2)
          {
            *(v54 + 2) = 32;
            *v54 = 8224;
            *(v52 + 4) += 3;
          }

          else
          {
            v53 = llvm::raw_ostream::write(v52, "   ", 3uLL);
          }

          mlir::OpPrintingFlags::OpPrintingFlags(v100);
          v55 = mlir::OpPrintingFlags::useLocalScope(v100);
          mlir::Operation::print(v48, v53, v55);
          v56 = *(v53 + 4);
          if (*(v53 + 3) == v56)
          {
            llvm::raw_ostream::write(v53, "\n", 1uLL);
          }

          else
          {
            *v56 = 10;
            ++*(v53 + 4);
          }
        }

        mlir::mps::getResizeLayout(v48, v51);
        mlir::Operation::erase(v48);
        llvm::deallocate_buffer(v107, (16 * v109));
      }

      v45 = *(*(v34 + 9) + 32 * v40 + 24);
      if (LODWORD(v103))
      {
        v41 = 0x9DDFEA08EB382D69 * ((8 * v45 - 0xAE502812AA7333) ^ HIDWORD(v45));
        v42 = 0x9DDFEA08EB382D69 * (HIDWORD(v45) ^ (v41 >> 47) ^ v41);
        v43 = (-348639895 * ((v42 >> 47) ^ v42)) & (LODWORD(v103) - 1);
        v44 = *(*&v101 + 16 * v43);
        if (v44 == v45)
        {
          goto LABEL_37;
        }

        v46 = 1;
        while (v44 != -4096)
        {
          v47 = v43 + v46++;
          v43 = v47 & (LODWORD(v103) - 1);
          v44 = *(*&v101 + 16 * v43);
          if (v44 == v45)
          {
            goto LABEL_37;
          }
        }
      }

      v98 = (*(*v11 + 6))(v11, a2, v99, v40);
      v100[0] = v45;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v101, v100) = v98;
      if (v45 != v98)
      {
        if (mlir::Value::getDefiningOp(&v98))
        {
          mlir::Value::getDefiningOp(&v98);
          operator new();
        }
      }

LABEL_37:
      ++v40;
    }
  }

  v89 = v11[1];
  v57 = v97;
  mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v97, 1u);
  v86 = [v9 descriptor];
  v87 = [v6 descriptor];
  if (*&v19 != *&v93)
  {
    if (((*&v19 - *&v93) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*&v29 != *&__p)
  {
    if (((*&v29 - *&__p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v100[0] = v57;
  v58 = v89;
  v59 = v86;
  __src = v87;
  v88 = v59;
  if (v36 <= 6 && ((1 << v36) & 0x51) != 0)
  {
    goto LABEL_65;
  }

  if ((v36 & 0xFFFFFFFB) != 1)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_65:
    [v59 sliceRangeForDimension:0];
    v61 = v60;
    [v59 sliceRangeForDimension:1];
    v63 = v62;
    [__src sliceRangeForDimension:0];
    v65 = v64;
    [__src sliceRangeForDimension:1];
    v67 = v66;
    v85 = 0;
    goto LABEL_66;
  }

  [v59 sliceRangeForDimension:1];
  v61 = v74;
  [v59 sliceRangeForDimension:2];
  v63 = v75;
  [__src sliceRangeForDimension:1];
  v65 = v76;
  [__src sliceRangeForDimension:2];
  v67 = v77;
  v85 = 1;
LABEL_66:
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(v100);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(v100);
  v70 = v67 / v63;
  v71 = v65 / v61;
  if (InferredResultTypes || !IsSize)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = (v70 + -1.0) * 0.5;
  }

  if (InferredResultTypes || !IsSize)
  {
    v73 = 0.0;
  }

  else
  {
    v73 = (v71 + -1.0) * 0.5;
  }

  if (InferredResultTypes)
  {
    v70 = (v67 - 1) / (v63 - 1);
    v71 = (v65 - 1) / (v61 - 1);
  }

  if ((mlir::mps::ResizeGradientOp::getNearestRoundingMode(v100) & 0x100000000) != 0)
  {
    NearestRoundingMode = mlir::mps::ResizeGradientOp::getNearestRoundingMode(v100);
    if (NearestRoundingMode - 1 >= 5)
    {
      v78 = 0;
    }

    else
    {
      v78 = NearestRoundingMode;
    }
  }

  else
  {
    v78 = 0;
  }

  v101 = v71;
  v102 = v70;
  v103 = v73;
  v104 = v72;
  [v58 setScaleTransform:&v101];
  [v58 setResampleMode:mlir::mps::LSTMOp::getGateLayout(v100) != 0];
  [v58 setNearestMode:v78];
  [v58 setDataFormat:v85];
  [v58 setOptions:{objc_msgSend(v58, "options") | 1}];

  if (*(v95 + 32))
  {
    mlir::Block::getParentOp(*(*(v95 + 24) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(v95 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v80 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(v95 + 32), *(v95 + 16));
    v81 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v82 = *(a2 + 1);
    v83 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(v95 + 32));
    [v58 encodeToMPSCommandEncoder:v81 commandBuffer:v82 sourceArrays:v80 resultState:0 destinationArray:v6 kernelDAGObject:v83];
  }

  else
  {
    v80 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v84 = *(a2 + 1);
    v101 = *&v90;
    v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    [v58 encodeToMPSCommandEncoder:v80 commandBuffer:v84 sourceArrays:v81 destinationArray:v6];
  }

  if (__p != 0.0)
  {
    operator delete(*&__p);
  }

  if (v93 != 0.0)
  {
    operator delete(*&v93);
  }
}

void sub_1E0669CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *__p, id a18, void *a19, void *a20, void *a21)
{
  if (v21)
  {
    operator delete(v21);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t GPU::ResizeOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v6, 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v6 + 72) + 32 * ODSOperandIndexAndLength + 24), 0);
  result = MPSKernelDAG::unaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::ResizeOpHandler::~ResizeOpHandler(GPU::ResizeOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::ResizeGradientOpHandler,mlir::mps::ResizeGradientOp,MPSNDArrayResampleGradient,1ul>::encodeNDArrayOp(uint64_t a1, void **a2, void *a3)
{
  v117 = *MEMORY[0x1E69E9840];
  v94 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::MultiaryKernelOpHandler<GPU::ResizeGradientOpHandler,mlir::mps::ResizeGradientOp,MPSNDArrayResampleGradient,1ul>::_createNDArrayMultiaryKernel(a1);
  }

  v4 = [v94 objectAtIndexedSubscript:0];
  v5 = [v4 mpsndarray];

  v87 = v5;
  if (!v5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v95 = v5;
  v104 = *(a1 + 24);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v104, 0);
  v7 = *(*(v104 + 9) + 32 * ODSOperandIndexAndLength + 24);
  mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v104, 1u);
  v8 = (*(**(a1 + 16) + 48))(*(a1 + 16), v7, 0);
  v92 = [v8 mpsndarray];

  if ((!v95 || !v92) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v104, 2u);
  if ((*(v104 + 46) & 0x80) != 0)
  {
    v10 = *(v104 + 9);
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
LABEL_8:
      v12 = 0.0;
      v13 = 0.0;
      goto LABEL_22;
    }
  }

  else
  {
    v10 = 0;
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
      goto LABEL_8;
    }
  }

  v13 = *(v10 + 32 * v11 + 24);
  if (v13 == 0.0)
  {
    v12 = 0.0;
    goto LABEL_22;
  }

  v14 = *(a1 + 16);
  v15 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v104, 2u);
  if ((*(v104 + 46) & 0x80) == 0)
  {
    v16 = 0;
    v17 = v15;
    if (HIDWORD(v15) + v15 == v15)
    {
      goto LABEL_15;
    }

LABEL_20:
    v18 = *(v16 + 32 * v17 + 24);
    goto LABEL_21;
  }

  v16 = *(v104 + 9);
  v17 = v15;
  if (HIDWORD(v15) + v15 != v15)
  {
    goto LABEL_20;
  }

LABEL_15:
  v18 = 0;
LABEL_21:
  GPURegionRuntime::waitAndReadFPTensorData(v14, a2, v18, &v108);
  v13 = v108;
  v12 = v109;
LABEL_22:
  __src = v13;
  v19 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v104, 3u);
  v21 = v104;
  if ((*(v104 + 46) & 0x80) != 0)
  {
    v22 = *(v104 + 9);
    v23 = v19;
    if (HIDWORD(v19) + v19 == v19)
    {
LABEL_29:
      v29 = 0.0;
      v30 = 0.0;
      goto LABEL_33;
    }
  }

  else
  {
    v22 = 0;
    v23 = v19;
    if (HIDWORD(v19) + v19 == v19)
    {
      goto LABEL_29;
    }
  }

  if (!*(v22 + 32 * v23 + 24))
  {
    goto LABEL_29;
  }

  v24 = *(a1 + 16);
  v25 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v104, 3u);
  if ((*(v104 + 46) & 0x80) == 0)
  {
    v26 = 0;
    v27 = v25;
    if (HIDWORD(v25) + v25 == v25)
    {
      goto LABEL_27;
    }

LABEL_31:
    v28 = *(v26 + 32 * v27 + 24);
    goto LABEL_32;
  }

  v26 = *(v104 + 9);
  v27 = v25;
  if (HIDWORD(v25) + v25 != v25)
  {
    goto LABEL_31;
  }

LABEL_27:
  v28 = 0;
LABEL_32:
  GPURegionRuntime::waitAndReadFPTensorData(v24, a2, v28, &v108);
  v30 = v108;
  v29 = v109;
  v21 = v104;
LABEL_33:
  __p = v30;
  ResizeLayout = mlir::mps::getResizeLayout(v21, v20);
  if ((ResizeLayout & 0x100000000) == 0)
  {
    v106[0] = mlir::Attribute::getContext((v21 + 24));
    v106[1] = 0;
    v31 = *(v21 + 2);
    v33 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v21, v32);
    v34 = 0;
    v106[2] = v31;
    v106[3] = v33;
    v108 = 0.0;
    v109 = 0.0;
    LODWORD(v110) = 0;
    v111 = 0.0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    while (1)
    {
      if ((*(v21 + 46) & 0x80) == 0 || v34 >= *(v21 + 17))
      {
        v42 = mlir::OpBuilder::clone(v106, v21, &v108);
        mlir::mps::inferTypes(v42, v43);
        v44 = mlir::verify(v42, 1);
        if ((v44 & 1) == 0)
        {
          v46 = llvm::errs(v44);
          v47 = v46;
          v48 = *(v46 + 4);
          if ((*(v46 + 3) - v48) > 2)
          {
            *(v48 + 2) = 32;
            *v48 = 8224;
            *(v46 + 4) += 3;
          }

          else
          {
            v47 = llvm::raw_ostream::write(v46, "   ", 3uLL);
          }

          mlir::OpPrintingFlags::OpPrintingFlags(v107);
          v49 = mlir::OpPrintingFlags::useLocalScope(v107);
          mlir::Operation::print(v42, v47, v49);
          v50 = *(v47 + 4);
          if (*(v47 + 3) == v50)
          {
            llvm::raw_ostream::write(v47, "\n", 1uLL);
          }

          else
          {
            *v50 = 10;
            ++*(v47 + 4);
          }
        }

        mlir::mps::getResizeLayout(v42, v45);
        mlir::Operation::erase(v42);
        llvm::deallocate_buffer(v114, (16 * v116));
      }

      v39 = *(*(v21 + 9) + 32 * v34 + 24);
      if (LODWORD(v110))
      {
        v35 = 0x9DDFEA08EB382D69 * ((8 * v39 - 0xAE502812AA7333) ^ HIDWORD(v39));
        v36 = 0x9DDFEA08EB382D69 * (HIDWORD(v39) ^ (v35 >> 47) ^ v35);
        v37 = (-348639895 * ((v36 >> 47) ^ v36)) & (LODWORD(v110) - 1);
        v38 = *(*&v108 + 16 * v37);
        if (v38 == v39)
        {
          goto LABEL_36;
        }

        v40 = 1;
        while (v38 != -4096)
        {
          v41 = v37 + v40++;
          v37 = v41 & (LODWORD(v110) - 1);
          v38 = *(*&v108 + 16 * v37);
          if (v38 == v39)
          {
            goto LABEL_36;
          }
        }
      }

      v105 = (*(*a1 + 48))(a1, a2, v106, v34);
      v107[0] = v39;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](&v108, v107) = v105;
      if (v39 != v105)
      {
        if (mlir::Value::getDefiningOp(&v105))
        {
          mlir::Value::getDefiningOp(&v105);
          operator new();
        }
      }

LABEL_36:
      ++v34;
    }
  }

  v51 = v92;
  v52 = v95;
  v53 = v52;
  v96 = v51;
  if (*(v52 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v52 setReadCount:{objc_msgSend(v52, "readCount") + 1}];
  }

  v54 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v101 = RuntimeUtils::convertNDArrayLayout(ResizeLayout, 6u, v96, 0, 1, v54, a2[1]);

  if (!v101)
  {
    v55 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v101 = RuntimeUtils::convertNDArrayLayout(ResizeLayout, 6u, v96, 0, 4, v55, a2[1]);
  }

  v56 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  RuntimeUtils::convertNDArrayLayout(ResizeLayout, 6u, v53, 0, 1, v56, a2[1]);
  *&v93 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  v57 = v93;
  if (*&v93 == 0.0)
  {
    v58 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    RuntimeUtils::convertNDArrayLayout(ResizeLayout, 6u, v53, 0, 4, v58, a2[1]);
    *&v59 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v57 = v59;
  }

  v91 = *(a1 + 8);
  v60 = v104;
  v89 = [(MPSTemporaryNDArray *)v57 descriptor];
  v90 = [v101 descriptor];
  if (*&v12 != *&__src)
  {
    if (((*&v12 - *&__src) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*&v29 != *&__p)
  {
    if (((*&v29 - *&__p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v107[0] = v60;
  v61 = v91;
  v99 = v89;
  v100 = v90;
  if (ResizeLayout <= 6 && ((1 << ResizeLayout) & 0x51) != 0)
  {
    goto LABEL_70;
  }

  if ((ResizeLayout & 0xFFFFFFFB) != 1)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_70:
    [v99 sliceRangeForDimension:0];
    v63 = v62;
    [v99 sliceRangeForDimension:1];
    v65 = v64;
    [v100 sliceRangeForDimension:0];
    v67 = v66;
    [v100 sliceRangeForDimension:1];
    v69 = v68;
    v88 = 0;
    goto LABEL_71;
  }

  [v99 sliceRangeForDimension:1];
  v63 = v76;
  [v99 sliceRangeForDimension:2];
  v65 = v77;
  [v100 sliceRangeForDimension:1];
  v67 = v78;
  [v100 sliceRangeForDimension:2];
  v69 = v79;
  v88 = 1;
LABEL_71:
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(v107);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(v107);
  v72 = v69 / v65;
  v73 = v67 / v63;
  if (InferredResultTypes || !IsSize)
  {
    v74 = 0.0;
  }

  else
  {
    v74 = (v72 + -1.0) * 0.5;
  }

  if (InferredResultTypes || !IsSize)
  {
    v75 = 0.0;
  }

  else
  {
    v75 = (v73 + -1.0) * 0.5;
  }

  if (InferredResultTypes)
  {
    v72 = (v69 - 1) / (v65 - 1);
    v73 = (v67 - 1) / (v63 - 1);
  }

  if ((mlir::mps::ResizeGradientOp::getNearestRoundingMode(v107) & 0x100000000) != 0)
  {
    NearestRoundingMode = mlir::mps::ResizeGradientOp::getNearestRoundingMode(v107);
    if (NearestRoundingMode - 1 >= 5)
    {
      v80 = 0;
    }

    else
    {
      v80 = NearestRoundingMode;
    }
  }

  else
  {
    v80 = 0;
  }

  v108 = v73;
  v109 = v72;
  v110 = v75;
  v111 = v74;
  [v61 setScaleTransform:&v108];
  [v61 setResampleMode:mlir::mps::LSTMOp::getGateLayout(v107) != 0];
  [v61 setNearestMode:v80];
  [v61 setDataFormat:v88];
  [v61 setOptions:{objc_msgSend(v61, "options") | 1}];

  if (*(&v57->super.super.isa + *MEMORY[0x1E69744E8]) == 1)
  {
    [(MPSTemporaryNDArray *)v57 setReadCount:[(MPSTemporaryNDArray *)v57 readCount]+ 1];
  }

  v82 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v83 = a2[1];
  v108 = *&v57;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  [v61 encodeToMPSCommandEncoder:v82 commandBuffer:v83 sourceArrays:v84 sourceGradient:v101 gradientState:0 destinationArray:v57 kernelDAGObject:{0, v87}];

  if (*&v93 == 0.0)
  {
    v85 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v86 = RuntimeUtils::convertNDArrayLayout(6u, ResizeLayout, v57, v53, 4, v85, a2[1]);
  }

  else if (*(&v57->super.super.isa + *MEMORY[0x1E69744E8]) == 1)
  {
    MPSDecrementReadCount(v57);
  }

  if (__p != 0.0)
  {
    operator delete(*&__p);
  }

  if (__src != 0.0)
  {
    operator delete(*&__src);
  }
}

void sub_1E066AE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *__p, id a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25)
{
  if (v26)
  {
    operator delete(v26);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void GPU::ResizeGradientOpHandler::~ResizeGradientOpHandler(GPU::ResizeGradientOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::ResizeOpHandler,mlir::mps::ResizeOp,MPSNDArrayResample,1ul>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6974850]);
  v3 = [*(*(a1 + 16) + 48) metalDevice];
  obj = [v2 initWithDevice:v3];

  objc_storeStrong((a1 + 8), obj);
  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
}

void GPU::MultiaryKernelOpHandler<GPU::ResizeOpHandler,mlir::mps::ResizeOp,MPSNDArrayResample,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::ResizeGradientOpHandler,mlir::mps::ResizeGradientOp,MPSNDArrayResampleGradient,1ul>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6974858]);
  v3 = [*(*(a1 + 16) + 48) metalDevice];
  obj = [v2 initWithDevice:v3];

  objc_storeStrong((a1 + 8), obj);
  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
}

void GPU::MultiaryKernelOpHandler<GPU::ResizeGradientOpHandler,mlir::mps::ResizeGradientOp,MPSNDArrayResampleGradient,1ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

EmitterObjC::ReductionMeanOpHandler *EmitterObjC::ReductionMeanOpHandler::ReductionMeanOpHandler(EmitterObjC::ReductionMeanOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  v4 = this;
  v53[4] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B44850;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v49 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v49, 0);
  v7 = *(*(v49 + 9) + 32 * ODSOperandIndexAndLength + 24);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v49, 1u);
  if ((*(v49 + 46) & 0x80) != 0)
  {
    v9 = *(v49 + 9);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_6:
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_6;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_9:
  if (*(v49 + 9))
  {
    v12 = v49 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  *(&__p.__r_.__value_.__s + 23) = 2;
  strcpy(&__p, "@[");
  v51 = v53;
  v52 = 0x400000000;
  if ((mlir::matchConstantWithIntVector<long long>(v11, &v51) & 1) == 0)
  {
    goto LABEL_80;
  }

  v14 = v52;
  if (v52)
  {
    v47.__r_.__value_.__r.__words[2] = 0x300000000000000;
    *&v47.__r_.__value_.__l.__data_ = 0x405B40uLL;
    std::to_string(&v46, *v51);
    v43 = v4;
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v46;
    }

    else
    {
      v15 = v46.__r_.__value_.__r.__words[0];
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v46.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v47, v15, size);
    v18 = v17->__r_.__value_.__r.__words[0];
    *v50 = v17->__r_.__value_.__l.__size_;
    *&v50[7] = *(&v17->__r_.__value_.__r.__words[1] + 7);
    v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
    v17->__r_.__value_.__r.__words[0] = 0;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    __p.__r_.__value_.__r.__words[0] = v18;
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *&v50[7];
    __p.__r_.__value_.__l.__size_ = *v50;
    *(&__p.__r_.__value_.__s + 23) = v19;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_22:
        if (v52 < 2)
        {
          goto LABEL_65;
        }

LABEL_27:
        v20 = 1;
        while (1)
        {
          v21 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = __p.__r_.__value_.__l.__size_;
          }

          if (v19 + 2 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 + 2 >= 0x17)
          {
            operator new();
          }

          memset(&v47, 0, sizeof(v47));
          *(&v47.__r_.__value_.__s + 23) = v19 + 2;
          if (v19)
          {
            if (v21 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = v18;
            }

            memmove(&v47, p_p, v19);
          }

          strcpy(&v47 + v19, ", ");
          if (v21 < 0)
          {
            operator delete(v18);
          }

          __p = v47;
          v23 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = v47.__r_.__value_.__l.__size_;
          }

          if (v24 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v24 + 1 >= 0x17)
          {
            operator new();
          }

          memset(&v47, 0, sizeof(v47));
          *(&v47.__r_.__value_.__s + 23) = v24 + 1;
          if (v24)
          {
            if (v23 >= 0)
            {
              v25 = &__p;
            }

            else
            {
              v25 = __p.__r_.__value_.__r.__words[0];
            }

            memmove(&v47, v25, v24);
          }

          *(&v47.__r_.__value_.__l.__data_ + v24) = 64;
          std::to_string(&v46, v51[v20]);
          if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v46;
          }

          else
          {
            v26 = v46.__r_.__value_.__r.__words[0];
          }

          if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v46.__r_.__value_.__l.__size_;
          }

          v28 = std::string::append(&v47, v26, v27);
          v18 = v28->__r_.__value_.__r.__words[0];
          *v50 = v28->__r_.__value_.__l.__size_;
          *&v50[7] = *(&v28->__r_.__value_.__r.__words[1] + 7);
          v19 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
          v28->__r_.__value_.__r.__words[0] = 0;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          if (v23 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p.__r_.__value_.__r.__words[0] = v18;
          __p.__r_.__value_.__l.__size_ = *v50;
          *(&__p.__r_.__value_.__r.__words[1] + 7) = *&v50[7];
          *(&__p.__r_.__value_.__s + 23) = v19;
          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_64:
              operator delete(v47.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_64;
          }

          if (++v20 >= v52)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v47.__r_.__value_.__l.__data_);
    if (v52 < 2)
    {
LABEL_65:
      v14 = __p.__r_.__value_.__l.__size_;
      v4 = v43;
      goto LABEL_66;
    }

    goto LABEL_27;
  }

  v19 = 2;
LABEL_66:
  if ((v19 & 0x80u) == 0)
  {
    v29 = v19;
  }

  else
  {
    v29 = v14;
  }

  if (v29 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v29 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v47, 0, sizeof(v47));
  *(&v47.__r_.__value_.__s + 23) = v29 + 1;
  if (v29)
  {
    if ((v19 & 0x80u) == 0)
    {
      v30 = &__p;
    }

    else
    {
      v30 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(&v47, v30, v29);
  }

  *(&v47.__r_.__value_.__l.__data_ + v29) = 93;
  if (v19 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v47;
LABEL_80:
  v31 = MEMORY[0x1E696AEC0];
  v32 = &v47;
  (*(*a2 + 32))(&v47, a2, NextResultAtOffset);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = v47.__r_.__value_.__r.__words[0];
  }

  *v50 = v7;
  v46.__r_.__value_.__r.__words[0] = v50;
  v33 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v50);
  v34 = v33 + 3;
  if (*(v33 + 47) < 0)
  {
    v34 = *v34;
  }

  v35 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v36 = __p.__r_.__value_.__r.__words[0];
  v45 = 0;
  LOBYTE(v44) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v44, &v46);
  v37 = &__p;
  if (v35 < 0)
  {
    v37 = v36;
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v46;
  }

  else
  {
    v38 = v46.__r_.__value_.__r.__words[0];
  }

  v39 = [v31 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph meanOfTensor:%s\n                   axes:%s\n                   name:%s]\n    ", v32, v34, v37, v38];;
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

LABEL_98:
    operator delete(v44);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_99;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if (v45 < 0)
  {
    goto LABEL_98;
  }

LABEL_91:
  if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_92;
  }

LABEL_99:
  operator delete(v47.__r_.__value_.__l.__data_);
LABEL_92:
  v40 = [*(a2 + 27) stringByAppendingString:v39];
  v41 = *(a2 + 27);
  *(a2 + 27) = v40;

  if (v51 != v53)
  {
    free(v51);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1E066B9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
    v43 = *(v41 - 144);
    if (v43 == a15)
    {
LABEL_5:
      if ((a41 & 0x80000000) == 0)
      {
LABEL_10:
        _Unwind_Resume(exception_object);
      }

LABEL_9:
      operator delete(a36);
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v43 = *(v41 - 144);
    if (v43 == a15)
    {
      goto LABEL_5;
    }
  }

  free(v43);
  if ((a41 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

EmitterObjC::ReductionVarianceOpHandler *EmitterObjC::ReductionVarianceOpHandler::ReductionVarianceOpHandler(EmitterObjC::ReductionVarianceOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  v4 = this;
  v53[4] = *MEMORY[0x1E69E9840];
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B44868;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v49 = v5;
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v49, 0);
  v7 = *(*(v49 + 9) + 32 * ODSOperandIndexAndLength + 24);
  v8 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v49, 1u);
  if ((*(v49 + 46) & 0x80) != 0)
  {
    v9 = *(v49 + 9);
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
LABEL_6:
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
    if (HIDWORD(v8) + v8 == v8)
    {
      goto LABEL_6;
    }
  }

  v11 = *(v9 + 32 * v10 + 24);
LABEL_9:
  if (*(v49 + 9))
  {
    v12 = v49 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  *(&__p.__r_.__value_.__s + 23) = 2;
  strcpy(&__p, "@[");
  v51 = v53;
  v52 = 0x400000000;
  if ((mlir::matchConstantWithIntVector<long long>(v11, &v51) & 1) == 0)
  {
    goto LABEL_80;
  }

  v14 = v52;
  if (v52)
  {
    v47.__r_.__value_.__r.__words[2] = 0x300000000000000;
    *&v47.__r_.__value_.__l.__data_ = 0x405B40uLL;
    std::to_string(&v46, *v51);
    v43 = v4;
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v46;
    }

    else
    {
      v15 = v46.__r_.__value_.__r.__words[0];
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v46.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v47, v15, size);
    v18 = v17->__r_.__value_.__r.__words[0];
    *v50 = v17->__r_.__value_.__l.__size_;
    *&v50[7] = *(&v17->__r_.__value_.__r.__words[1] + 7);
    v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
    v17->__r_.__value_.__r.__words[0] = 0;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    __p.__r_.__value_.__r.__words[0] = v18;
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *&v50[7];
    __p.__r_.__value_.__l.__size_ = *v50;
    *(&__p.__r_.__value_.__s + 23) = v19;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_22:
        if (v52 < 2)
        {
          goto LABEL_65;
        }

LABEL_27:
        v20 = 1;
        while (1)
        {
          v21 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = __p.__r_.__value_.__l.__size_;
          }

          if (v19 + 2 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 + 2 >= 0x17)
          {
            operator new();
          }

          memset(&v47, 0, sizeof(v47));
          *(&v47.__r_.__value_.__s + 23) = v19 + 2;
          if (v19)
          {
            if (v21 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = v18;
            }

            memmove(&v47, p_p, v19);
          }

          strcpy(&v47 + v19, ", ");
          if (v21 < 0)
          {
            operator delete(v18);
          }

          __p = v47;
          v23 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = v47.__r_.__value_.__l.__size_;
          }

          if (v24 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v24 + 1 >= 0x17)
          {
            operator new();
          }

          memset(&v47, 0, sizeof(v47));
          *(&v47.__r_.__value_.__s + 23) = v24 + 1;
          if (v24)
          {
            if (v23 >= 0)
            {
              v25 = &__p;
            }

            else
            {
              v25 = __p.__r_.__value_.__r.__words[0];
            }

            memmove(&v47, v25, v24);
          }

          *(&v47.__r_.__value_.__l.__data_ + v24) = 64;
          std::to_string(&v46, v51[v20]);
          if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v46;
          }

          else
          {
            v26 = v46.__r_.__value_.__r.__words[0];
          }

          if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v46.__r_.__value_.__l.__size_;
          }

          v28 = std::string::append(&v47, v26, v27);
          v18 = v28->__r_.__value_.__r.__words[0];
          *v50 = v28->__r_.__value_.__l.__size_;
          *&v50[7] = *(&v28->__r_.__value_.__r.__words[1] + 7);
          v19 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
          v28->__r_.__value_.__r.__words[0] = 0;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          if (v23 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p.__r_.__value_.__r.__words[0] = v18;
          __p.__r_.__value_.__l.__size_ = *v50;
          *(&__p.__r_.__value_.__r.__words[1] + 7) = *&v50[7];
          *(&__p.__r_.__value_.__s + 23) = v19;
          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_64:
              operator delete(v47.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_64;
          }

          if (++v20 >= v52)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v47.__r_.__value_.__l.__data_);
    if (v52 < 2)
    {
LABEL_65:
      v14 = __p.__r_.__value_.__l.__size_;
      v4 = v43;
      goto LABEL_66;
    }

    goto LABEL_27;
  }

  v19 = 2;
LABEL_66:
  if ((v19 & 0x80u) == 0)
  {
    v29 = v19;
  }

  else
  {
    v29 = v14;
  }

  if (v29 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v29 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v47, 0, sizeof(v47));
  *(&v47.__r_.__value_.__s + 23) = v29 + 1;
  if (v29)
  {
    if ((v19 & 0x80u) == 0)
    {
      v30 = &__p;
    }

    else
    {
      v30 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(&v47, v30, v29);
  }

  *(&v47.__r_.__value_.__l.__data_ + v29) = 93;
  if (v19 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v47;
LABEL_80:
  v31 = MEMORY[0x1E696AEC0];
  v32 = &v47;
  (*(*a2 + 32))(&v47, a2, NextResultAtOffset);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = v47.__r_.__value_.__r.__words[0];
  }

  *v50 = v7;
  v46.__r_.__value_.__r.__words[0] = v50;
  v33 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, v50);
  v34 = v33 + 3;
  if (*(v33 + 47) < 0)
  {
    v34 = *v34;
  }

  v35 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  v36 = __p.__r_.__value_.__r.__words[0];
  v45 = 0;
  LOBYTE(v44) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v44, &v46);
  v37 = &__p;
  if (v35 < 0)
  {
    v37 = v36;
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v46;
  }

  else
  {
    v38 = v46.__r_.__value_.__r.__words[0];
  }

  v39 = [v31 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph varianceOfTensor:%s\n                       axes:%s\n                       name:%s]\n    ", v32, v34, v37, v38];;
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

LABEL_98:
    operator delete(v44);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_99;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if (v45 < 0)
  {
    goto LABEL_98;
  }

LABEL_91:
  if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_92;
  }

LABEL_99:
  operator delete(v47.__r_.__value_.__l.__data_);
LABEL_92:
  v40 = [*(a2 + 27) stringByAppendingString:v39];
  v41 = *(a2 + 27);
  *(a2 + 27) = v40;

  if (v51 != v53)
  {
    free(v51);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1E066C214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
    v43 = *(v41 - 144);
    if (v43 == a15)
    {
LABEL_5:
      if ((a41 & 0x80000000) == 0)
      {
LABEL_10:
        _Unwind_Resume(exception_object);
      }

LABEL_9:
      operator delete(a36);
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v43 = *(v41 - 144);
    if (v43 == a15)
    {
      goto LABEL_5;
    }
  }

  free(v43);
  if ((a41 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

EmitterObjC::SoftmaxOpHandler *EmitterObjC::SoftmaxOpHandler::SoftmaxOpHandler(EmitterObjC::SoftmaxOpHandler *this, EmitObjC *a2, mlir::Operation *a3)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = &unk_1F5B44880;
  if (*(*(a3 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  LODWORD(v6) = *(v5 + 9);
  v9 = v5 - 16;
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  v28 = 0;
  v29 = 0;
  v31 = &v28;
  __p.__r_.__value_.__r.__words[0] = v8;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v31, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<long long>(v28, v29);
    if (v14)
    {
      v15 = SingleInt;
    }

    else
    {
      v15 = -1;
    }
  }

  else
  {
    v15 = -1;
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = &v28;
  (*(*a2 + 32))(&v28, a2, NextResultAtOffset);
  if (v30 < 0)
  {
    v17 = v28;
  }

  v31 = v7;
  __p.__r_.__value_.__r.__words[0] = &v31;
  v18 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(a2 + 32, &v31);
  v19 = v18 + 3;
  if (*(v18 + 47) < 0)
  {
    v19 = *v19;
  }

  v26 = 0;
  LOBYTE(v25) = 0;
  EmitObjC::emitTensorName(a2, NextResultAtOffset, &v25, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v21 = [v16 stringWithFormat:@"\n    MPSGraphTensor *%s = \n    [graph softMaxWithTensor:%s\n                        axis:%ld\n                        name:%s]\n    ", v17, v19, v15, p_p];;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    operator delete(v25);
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    operator delete(v28);
    goto LABEL_23;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v26 < 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v30 < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v22 = [*(a2 + 27) stringByAppendingString:v21];
  v23 = *(a2 + 27);
  *(a2 + 27) = v22;

  return this;
}

void sub_1E066C5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(a20);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if (a31 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if (a31 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

id *GPU::PermuteOpHandler::PermuteOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *(v5 + 120) = 0u;
  v6 = v5 + 120;
  *v5 = &unk_1F5B448E0;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 33) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [*(this[2] + 6) metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v11 = this[3];
  v14 = v16;
  v15 = 0x400000000;
  if (mlir::matchConstantWithIntVector<long long>(*(v11[9] + 56), &v14))
  {
    if (v15)
    {
      operator new();
    }

    v13 = *v6;
    if (*v6)
    {
      this[16] = v13;
      operator delete(v13);
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
    }

    this[15] = 0;
    this[16] = 0;
    this[17] = 0;
  }

  if (v14 != v16)
  {
    free(v14);
  }

  return this;
}

void sub_1E066C874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 == v12)
  {
    v14 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    free(a10);
    v14 = *v11;
    if (!*v11)
    {
LABEL_3:
      GPU::BaseOpHandler::~BaseOpHandler(v10);
      _Unwind_Resume(a1);
    }
  }

  *(v10 + 16) = v14;
  operator delete(v14);
  GPU::BaseOpHandler::~BaseOpHandler(v10);
  _Unwind_Resume(a1);
}

unint64_t GPU::PermuteOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 == 1)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, 1u);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }
}

void GPU::PermuteOpHandler::encodeOp(GPU::PermuteOpHandler *this, void **a2)
{
  v66 = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 3);
  if (*(v4 + 36))
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v7 = *(*(v4 + 72) + 24);
  v60 = NextResultAtOffset;
  v59 = (*(**(this + 2) + 48))(*(this + 2));
  v58 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v8 = [v58 mpsndarray];
  v9 = *(this + 1);
  v63 = v9;
  v61 = v8;
  if (!v8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = *(this + 15);
  v11 = *(this + 16);
  if (v10 == v11)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v4 + 72) + 56), v64);
    v13 = v64[0];
    v12 = v64[1];
    v10 = *(this + 15);
    v11 = *(this + 16);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v10 == v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  if (v10 == v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v7);
  v17 = StaticType;
  if (StaticType)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v18 = 0;
  }

  v62[0] = v17;
  v62[1] = v18;
  v64[0] = v65;
  v64[1] = 0x400000000;
  mlir::CallableOpInterface::getArgAttrsAttr(v62);
  if (mlir::getPositiveAxes(v14, v15 - v14, v19, v64, 0, 0, 0))
  {
    v20 = v64[0];
    v21 = LODWORD(v64[1]);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v62);
    if (v21)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = &v20[v21];
      v27 = vdupq_n_s64(1uLL);
      while (1)
      {
        while (1)
        {
          if (*v20 > v24)
          {
            v24 = *v20;
          }

          if (v25 == v24)
          {
            break;
          }

          ++v25;
          if (++v20 == v26)
          {
            goto LABEL_36;
          }
        }

        v28 = ArgAttrsAttr + 8 * v23;
        v29 = ArgAttrsAttr + 8 * v25;
        if (v28 != v29 + 8)
        {
          break;
        }

LABEL_35:
        v24 = ++v25;
        v23 = v25;
        if (++v20 == v26)
        {
          goto LABEL_36;
        }
      }

      v30 = (v25 - v23) & 0x1FFFFFFFFFFFFFFFLL;
      if (v30 >= 3)
      {
        v32 = v30 + 1;
        v28 += 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL);
        v33 = (ArgAttrsAttr + 16 + 8 * v23);
        v34 = 0uLL;
        v35 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        v36 = 0uLL;
        do
        {
          v34 = vsubq_s64(v34, vmvnq_s8(vceqq_s64(v33[-1], v27)));
          v36 = vsubq_s64(v36, vmvnq_s8(vceqq_s64(*v33, v27)));
          v33 += 2;
          v35 -= 4;
        }

        while (v35);
        v31 = vaddvq_s64(vaddq_s64(v36, v34));
        if (v32 == (v32 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v31 = 0;
      }

      v37 = v28 - 8;
      do
      {
        v38 = *(v37 + 8);
        v37 += 8;
        if (v38 != 1)
        {
          ++v31;
        }
      }

      while (v37 != v29);
LABEL_34:
      if (v31 > 1)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

LABEL_36:
    v39 = *(this + 2);
    v40 = GPURegionRuntime::getStaticType(v39, v60);
    v41 = getMPSShapeFromMLIR(v40);
    v42 = v59;
    GPU::encodeReshape(v60, v39, a2, v9, v8, v41, v59);

    if (v64[0] != v65)
    {
      free(v64[0]);
    }
  }

  else
  {
LABEL_38:
    if (v64[0] != v65)
    {
      free(v64[0]);
    }

    v43 = [v8 descriptor];
    v44 = v43;
    v42 = v59;
    if (*(this + 15) == *(this + 16))
    {
      [v43 numberOfDimensions];
      *v64 = 0u;
      memset(v65, 0, sizeof(v65));
      v45 = v12 - v13;
      if (v12 != v13)
      {
        v46 = v45 >> 3;
        v47 = ((v45 >> 3) - 1);
        v48 = v13;
        do
        {
          v50 = *v48++;
          v49 = v50;
          if (v50 >= 0)
          {
            v51 = v46;
          }

          else
          {
            v51 = 0;
          }

          v52 = v51 + ~v49;
          if ((v52 < 0 || v52 >= v46) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v64[v52] = v47--;
        }

        while (v47 != -1);
      }

      [v44 permuteWithDimensionOrder:v64];
      v42 = v59;
    }

    else
    {
      [v43 permuteWithDimensionOrder:this + 144];
    }

    v53 = a2[1];
    v54 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v55 = [v61 safeArrayViewWithCommandBuffer:v53 computeEncoder:v54 descriptor:v44 aliasing:0];

    v56 = *(this + 2);
    v57 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    GPURegionRuntime::copyNDArrayToTarget(v56, v57, a2[1], &v63, v55, v42, v60, 0);
  }

  if (v13)
  {
    operator delete(v13);
  }
}

id *GPU::TransposeOpHandler::TransposeOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B44930;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  v6 = objc_alloc(MEMORY[0x1E6974740]);
  v7 = [*(this[2] + 6) metalDevice];
  v8 = [v6 initWithDevice:v7];
  v9 = this[1];
  this[1] = v8;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v10 = this[3];
  v11 = *(v10[9] + 56);
  v21 = 0;
  v22 = 0;
  v20 = &v21;
  v23 = v11;
  DefiningOp = mlir::Value::getDefiningOp(&v23);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v20, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v21, v22);
      if (v14)
      {
        this[15] = SingleInt;
        *(this + 128) = 1;
      }
    }
  }

  v15 = *(v10[9] + 88);
  v21 = 0;
  v22 = 0;
  v20 = &v21;
  v23 = v15;
  v16 = mlir::Value::getDefiningOp(&v23);
  if (v16)
  {
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v20, v16))
    {
      v17 = mlir::getSingleIntValue<long long>(v21, v22);
      if (v18)
      {
        this[17] = v17;
        *(this + 144) = 1;
      }
    }
  }

  return this;
}

unint64_t GPU::TransposeOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, 0);
  }
}

void GPU::TransposeOpHandler::encodeOp(GPU::TransposeOpHandler *this, void **a2)
{
  v74[4] = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 3);
  if (*(v4 + 36))
  {
    v5 = v4 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v7 = *(*(v4 + 72) + 24);
  v69 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v68 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v8 = [v68 mpsndarray];
  v67 = *(this + 1);
  v71 = v67;
  if (!v8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v7);
  v10 = StaticType;
  if (StaticType)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v11 = 0;
  }

  v70[0] = v10;
  v70[1] = v11;
  mlir::CallableOpInterface::getArgAttrsAttr(v70);
  v13 = v12;
  if (*(this + 128) == 1)
  {
    PositiveAxis = mlir::getPositiveAxis(*(this + 15), v12);
  }

  else
  {
    PositiveAxis = RuntimeUtils::getAxis(*(this + 2), a2, *(*(v4 + 72) + 56), v12);
  }

  v15 = PositiveAxis;
  if (*(this + 144) == 1)
  {
    Axis = mlir::getPositiveAxis(*(this + 17), v13);
  }

  else
  {
    Axis = RuntimeUtils::getAxis(*(this + 2), a2, *(*(v4 + 72) + 88), v13);
  }

  v17 = Axis;
  mlir::CallableOpInterface::getArgAttrsAttr(v70);
  v19 = v18;
  v72 = v74;
  v73 = 0x400000000;
  if (!v18)
  {
    v23 = 1;
    v24 = v74;
    v21 = v74;
    goto LABEL_30;
  }

  if (v18 < 5)
  {
    v20 = 0;
    v21 = v74;
    v22 = v18;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v18, 8);
    v20 = v73;
    v21 = v72;
    v22 = v19 - v73;
    if (v19 == v73)
    {
      goto LABEL_21;
    }
  }

  bzero(v21 + 8 * v20, 8 * v22);
LABEL_21:
  LODWORD(v73) = v19;
  v24 = (v21 + 8 * v19);
  if (v19)
  {
    v25 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v25 >= 3)
    {
      v28 = v25 + 1;
      v26 = (v25 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v27 = (v21 + 8 * v26);
      v29 = xmmword_1E09700F0;
      v30 = v21 + 1;
      v31 = vdupq_n_s64(2uLL);
      v32 = vdupq_n_s64(4uLL);
      v33 = v26;
      do
      {
        v30[-1] = v29;
        *v30 = vaddq_s64(v29, v31);
        v29 = vaddq_s64(v29, v32);
        v30 += 2;
        v33 -= 4;
      }

      while (v33);
      if (v28 == v26)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v26 = 0;
      v27 = v21;
    }

    do
    {
      v27->i64[0] = v26;
      v27 = (v27 + 8);
      ++v26;
    }

    while (v27 != v24);
LABEL_29:
    v23 = 0;
    goto LABEL_30;
  }

  v23 = 1;
LABEL_30:
  v34 = v21->i64[v15];
  v21->i64[v15] = v21->i64[v17];
  v21->i64[v17] = v34;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v70);
  if (v23)
  {
LABEL_48:
    v51 = *(this + 2);
    v52 = GPURegionRuntime::getStaticType(v51, NextResultAtOffset);
    v53 = getMPSShapeFromMLIR(v52);
    v54 = v51;
    v55 = v67;
    v56 = v69;
    v57 = v8;
    GPU::encodeReshape(NextResultAtOffset, v54, a2, v67, v8, v53, v69);

    if (v72 != v74)
    {
      free(v72);
    }

    goto LABEL_50;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = vdupq_n_s64(1uLL);
  while (1)
  {
    while (1)
    {
      if (v21->i64[0] > v37)
      {
        v37 = v21->i64[0];
      }

      if (v38 == v37)
      {
        break;
      }

      ++v38;
      v21 = (v21 + 8);
      if (v21 == v24)
      {
        goto LABEL_48;
      }
    }

    v40 = ArgAttrsAttr + 8 * v36;
    v41 = ArgAttrsAttr + 8 * v38;
    if (v40 == v41 + 8)
    {
      goto LABEL_47;
    }

    v42 = (v38 - v36) & 0x1FFFFFFFFFFFFFFFLL;
    if (v42 >= 3)
    {
      v44 = v42 + 1;
      v40 += 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
      v45 = (ArgAttrsAttr + 16 + 8 * v36);
      v46 = 0uLL;
      v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
      v48 = 0uLL;
      do
      {
        v46 = vsubq_s64(v46, vmvnq_s8(vceqq_s64(v45[-1], v39)));
        v48 = vsubq_s64(v48, vmvnq_s8(vceqq_s64(*v45, v39)));
        v45 += 2;
        v47 -= 4;
      }

      while (v47);
      v43 = vaddvq_s64(vaddq_s64(v48, v46));
      if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_46;
      }
    }

    else
    {
      v43 = 0;
    }

    v49 = v40 - 8;
    do
    {
      v50 = *(v49 + 8);
      v49 += 8;
      if (v50 != 1)
      {
        ++v43;
      }
    }

    while (v49 != v41);
LABEL_46:
    if (v43 > 1)
    {
      break;
    }

LABEL_47:
    v37 = ++v38;
    v36 = v38;
    v21 = (v21 + 8);
    if (v21 == v24)
    {
      goto LABEL_48;
    }
  }

  if (v72 != v74)
  {
    free(v72);
  }

  v58 = [v8 descriptor];
  v59 = v58;
  if (v17 >= 0)
  {
    v60 = v13;
  }

  else
  {
    v60 = 0;
  }

  if (v15 >= 0)
  {
    v61 = v13;
  }

  else
  {
    v61 = 0;
  }

  [v58 transposeDimension:v61 + ~v15 withDimension:v60 + ~v17];
  v62 = a2[1];
  v56 = v69;
  v57 = v8;
  v63 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v64 = [v8 safeArrayViewWithCommandBuffer:v62 computeEncoder:v63 descriptor:v59 aliasing:0];

  v65 = *(this + 2);
  v66 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v65, v66, a2[1], &v71, v64, v69, NextResultAtOffset, 0);

  v55 = v71;
LABEL_50:
}

void GPU::PermuteOpHandler::~PermuteOpHandler(GPU::PermuteOpHandler *this)
{
  *this = &unk_1F5B448E0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B448E0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::TransposeOpHandler::~TransposeOpHandler(GPU::TransposeOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::ReinterpretCastOpHandler::ReinterpretCastOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  *GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4) = &unk_1F5B449B0;
  v5 = objc_alloc(MEMORY[0x1E6974740]);
  v6 = [*(this[2] + 6) metalDevice];
  v7 = [v5 initWithDevice:v6];
  v8 = this[1];
  this[1] = v7;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::ReinterpretCastOpHandler::encodeOp(id *this, void **a2)
{
  v57[1] = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = this[1];
  v56 = v4;
  v5 = this[3];
  if (v5[9])
  {
    v6 = (v5 - 4);
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = *(*(v5 + 9) + 24);
  MPSDataType = getMPSDataType((NextResultAtOffset[1] & 0xFFFFFFFFFFFFFFF8));
  v52 = (*(*this[2] + 48))(this[2], NextResultAtOffset, 0);
  v51 = (*(*this[2] + 48))(this[2], v8, 0);
  [v51 dataType];
  if ([v51 dataType] == -2147483640 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v52 dataType];
  if ([v52 dataType] == -2147483640 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v53 = [v51 mpsndarray];
  if (!v53 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = [v51 mpsndarray];
  v50 = [v10 descriptor];

  v11 = a2[1];
  v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v13 = [v53 safeArrayViewWithCommandBuffer:v11 computeEncoder:v12 descriptor:v50 aliasing:1];

  v47 = NextResultAtOffset;
  if (!v13)
  {
    v15 = (*(*this[2] + 80))(this[2], NextResultAtOffset, a2[1], 0, 0, 1);

    v52 = v15;
  }

  v16 = *&v50[*MEMORY[0x1E6974520]] >> 3;
  v49 = MPSDataType;
  v17 = MPSDataType >> 3;
  v18 = MEMORY[0x1E69744D8];
  v48 = this;
  if (!v13)
  {
    goto LABEL_27;
  }

  if (v16 >= v17)
  {
    if (*&v50[*MEMORY[0x1E6974530]])
    {
      v21 = v16 == v17;
    }

    else
    {
      v21 = 1;
    }

    v20 = !v21;
  }

  else
  {
    if (*&v50[*MEMORY[0x1E6974530]])
    {
      v19 = v16 == v17;
    }

    else
    {
      v19 = 1;
    }

    v20 = !v19;
    if (*&v53[4 * (*&v50[*MEMORY[0x1E6974530]] & 0xF) + *MEMORY[0x1E6974510]] % v17)
    {
      goto LABEL_27;
    }
  }

  if (!v20)
  {
    v22 = MEMORY[0x1E69744C8];
    v23 = v13;
    goto LABEL_31;
  }

LABEL_27:
  v46 = v4;
  v45[1] = v45;
  MEMORY[0x1EEE9AC00](v14);
  v27 = v45 - v26;
  if (v24)
  {
    v28 = 0;
    v29 = &v53[*MEMORY[0x1E6974508]];
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    v33 = *v29;
    v32 = *(v29 + 1);
    v34 = *&v53[*v18];
    do
    {
      v54 = v34;
      v55[0] = v33;
      v55[1] = v32;
      v55[2] = v31;
      v55[3] = v30;
      *&v27[8 * v28] = *(v55 + (*(&v54 | v28 & 0xF) & 0xF));
      ++v28;
    }

    while (v24 != v28);
  }

  v22 = v25;
  v35 = [MEMORY[0x1E6974490] descriptorWithDataType:*&v53[*v25] dimensionCount:? dimensionSizes:?];
  v23 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:a2[1] descriptor:v35];

  v36 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v37 = a2[1];
  v57[0] = v53;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
  [v46 encodeToMPSCommandEncoder:v36 commandBuffer:v37 sourceArrays:v38 destinationArray:v23];

LABEL_31:
  *&v23[*v22] = v49;
  v39 = *&v23[*v18];
  if (v16 > v17)
  {
    v40 = v39 & 0xF;
    *&v23[4 * v40 + *MEMORY[0x1E69744D0]] *= v16 / v17;
    *&v23[4 * v40 + *MEMORY[0x1E6974508]] *= v16 / v17;
    v41 = &v23[*MEMORY[0x1E6974510]];
    v42 = *&v41[4 * v40] * (v16 / v17);
LABEL_35:
    *&v41[4 * v40] = v42;
    goto LABEL_36;
  }

  if (v16 < v17)
  {
    v40 = v39 & 0xF;
    *&v23[4 * v40 + *MEMORY[0x1E69744D0]] /= v17 / v16;
    *&v23[4 * v40 + *MEMORY[0x1E6974508]] /= v17 / v16;
    v41 = &v23[*MEMORY[0x1E6974510]];
    v42 = *&v41[4 * v40] / (v17 / v16);
    goto LABEL_35;
  }

LABEL_36:
  [v23 updateStrides];
  v43 = v48[2];
  v44 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v43, v44, a2[1], &v56, v23, v52, v47, 0);
}

void GPU::ReinterpretCastOpHandler::~ReinterpretCastOpHandler(GPU::ReinterpretCastOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void lowerMILProgram()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  fillMILToMLIRRewritePatterns();
}

void sub_1E066E0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MILToMLIRRewriter::~MILToMLIRRewriter(&a9);
  std::vector<std::unique_ptr<MILToMLIRRewritePattern>>::~vector[abi:ne200100]((v9 - 72));
  _Unwind_Resume(a1);
}

void sub_1E0673B70(_Unwind_Exception *a1)
{
  operator delete(v3);
  MEMORY[0x1E12E5B90](v2, v1);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<MILToMLIRRewritePattern>>::~vector[abi:ne200100](void *a1)
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
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1E0674178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MILToMLIRRewriter::~MILToMLIRRewriter(va);
  if (*(v2 - 113) < 0)
  {
    operator delete(*(v2 - 136));
    std::vector<std::unique_ptr<MILToMLIRRewritePattern>>::~vector[abi:ne200100]((v2 - 96));
    mlir::MLIRContext::~MLIRContext((v2 - 72));
    _Unwind_Resume(a1);
  }

  std::vector<std::unique_ptr<MILToMLIRRewritePattern>>::~vector[abi:ne200100]((v2 - 96));
  mlir::MLIRContext::~MLIRContext((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1E06743B4(_Unwind_Exception *a1)
{
  operator delete(v3);
  MEMORY[0x1E12E5B90](v1, v2);
  _Unwind_Resume(a1);
}

void sub_1E06745B0(_Unwind_Exception *a1)
{
  operator delete(v3);
  MEMORY[0x1E12E5B90](v1, v2);
  _Unwind_Resume(a1);
}

void anonymous namespace::BatchNormPattern::~BatchNormPattern(void **this)
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

void anonymous namespace::BatchNormPattern::matchAndRewrite(_anonymous_namespace_::BatchNormPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v73 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v69 = ArgValue;
  v68 = MILToMLIRRewriter::getArgValue(a3, a2, "mean");
  v67 = MILToMLIRRewriter::getArgValue(a3, a2, "variance");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "beta");
  v64 = 0;
  v65 = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "gamma");
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  if (!OptionalArgValue)
  {
    v8 = mlir::Float32Type::get(a3[23], v7);
    Constant = 1;
    v9 = mlir::RankedTensorType::get(&Constant, 1, v8, 0);
    Constant = mlir::mps::getConstantAttr<float>(v9, 0.0);
    OptionalArgValue = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &Constant) - 16;
    if (!mlir::Type::isF32(&ElementTypeOrSelf))
    {
      v10 = mlir::getElementTypeOrSelf(ArgValue);
      Constant = mlir::TypeAttr::get(v10);
      OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &OptionalArgValue, &Constant) - 16;
    }
  }

  if (!v65)
  {
    v11 = mlir::Float32Type::get(a3[23], v7);
    Constant = 1;
    v12 = mlir::RankedTensorType::get(&Constant, 1, v11, 0);
    Constant = mlir::mps::getConstantAttr<float>(v12, 1.0);
    v65 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &Constant) - 16;
    if (!mlir::Type::isF32(&ElementTypeOrSelf))
    {
      v13 = mlir::getElementTypeOrSelf(ArgValue);
      Constant = mlir::TypeAttr::get(v13);
      v65 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v65, &Constant) - 16;
    }
  }

  v72 = 1;
  v71 = 0xFFFFFFFF00000001;
  v70 = xmmword_1E097BD40;
  v14 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](&Constant, v14);
  HIBYTE(v60) = 7;
  strcpy(&__s2, "epsilon");
  v15 = v62[0];
  if (v62[0])
  {
    v16 = v62;
    do
    {
      v17 = v16;
      v18 = (v15 + 32);
      v19 = *(v15 + 55);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v15 + 40);
      }

      if (v20 >= 0)
      {
        v21 = (v15 + 32);
      }

      else
      {
        v21 = *(v15 + 32);
      }

      if (v19 >= 7)
      {
        v22 = 7;
      }

      else
      {
        v22 = v19;
      }

      v23 = v19 < 7;
      v24 = memcmp(v21, &__s2, v22);
      v25 = v24 < 0;
      if (!v24)
      {
        v25 = v23;
      }

      if (v25)
      {
        v26 = 8;
      }

      else
      {
        v26 = 0;
      }

      if (v25)
      {
        v16 = v17;
      }

      else
      {
        v16 = v15;
      }

      v15 = *(v15 + v26);
    }

    while (v15);
    if (v16 != v62)
    {
      if (v25)
      {
        v27 = (v17 + 4);
      }

      else
      {
        v27 = v18;
      }

      v28 = *(v16 + 55);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = v16[5];
      }

      if (v29 >= 0)
      {
        v30 = v27;
      }

      else
      {
        v30 = *v27;
      }

      if (v28 >= 7)
      {
        v31 = 7;
      }

      else
      {
        v31 = v28;
      }

      v32 = v28 > 7;
      v33 = memcmp(&__s2, v30, v31);
      v34 = v33 < 0;
      if (!v33)
      {
        v34 = v32;
      }

      if (!v34)
      {
        if (v16[8] - v16[7] == 16)
        {
          HIBYTE(v60) = 7;
          strcpy(&__s2, "epsilon");
          ParameterValue = MIL::IROperation::GetParameterValue();
          v36 = (*(*ParameterValue + 40))(ParameterValue);
          if (SHIBYTE(v60) < 0)
          {
            v37 = v36;
            operator delete(__s2);
            v36 = v37;
          }

          if (v36)
          {
            v38 = (*(*v36 + 32))(v36);
            v39 = (*(*v38 + 88))(v38);
            if (v39 == 4)
            {
              HIBYTE(v60) = 7;
              strcpy(&__s2, "epsilon");
              MIL::IROperation::GetParameterValue();
              LOWORD(v58) = MIL::IRValue::GetScalar<MIL::Fp16>();
              MIL::Fp16::GetFloat(&v58);
              F32FloatAttr = mlir::Builder::getF32FloatAttr(a3 + 23, v44, v43);
            }

            else
            {
              if (v39 != 5)
              {
                operator new();
              }

              HIBYTE(v60) = 7;
              strcpy(&__s2, "epsilon");
              MIL::IROperation::GetParameterValue();
              MIL::IRValue::GetScalar<float>();
              F32FloatAttr = mlir::Builder::getF32FloatAttr(a3 + 23, v41, v40);
            }

            v64 = F32FloatAttr;
            if (SHIBYTE(v60) < 0)
            {
              operator delete(__s2);
            }

            if ((*(*a2 + 192))(a2) == 1)
            {
              HIBYTE(v60) = 1;
              LOWORD(__s2) = 120;
              ParameterType = MIL::IROperation::GetParameterType();
              if (SHIBYTE(v60) < 0)
              {
                v46 = ParameterType;
                operator delete(__s2);
                ParameterType = v46;
              }

              v47 = MIL::IRValueType::AsTensorType(ParameterType);
              v58 = MIL::IRTensorValueType::Rank(v47);
              IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
              v49 = mlir::RankedTensorType::get(&v58, 1, IntegerType, 0);
              if (v49)
              {
                v50 = v49;
                v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
                v49 = v50;
              }

              else
              {
                v51 = 0;
              }

              if (v58 == 3)
              {
                v52 = &v71;
              }

              else
              {
                v52 = &v70;
              }

              if (v58 == 3)
              {
                v53 = 12;
              }

              else
              {
                v53 = 16;
              }

              __s2 = mlir::DenseElementsAttr::getFromRawBuffer(v49, v51, v52, v53, 4, 1, 1);
              v57 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &__s2);
              __s2 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, LocationForOp, &v68, &v57);
              v56 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, LocationForOp, &v67, &v57);
              v55 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, LocationForOp, &v65, &v57);
              v54 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, LocationForOp, &OptionalArgValue, &v57);
              mlir::OpBuilder::create<mlir::mps::NormalizationOp,mlir::Value &,mlir::mps::ReshapeOp,mlir::mps::ReshapeOp,mlir::mps::ReshapeOp,mlir::mps::ReshapeOp,mlir::FloatAttr &>((a3 + 23), LocationForOp, &v69, &__s2, &v56, &v55, &v54, &v64);
              (*(*a2 + 200))(&__s2, a2);
              MILToMLIRRewriter::setValue();
            }

            operator new();
          }

          operator new();
        }

        operator new();
      }
    }
  }

  operator new();
}

uint64_t mlir::OpBuilder::create<mlir::mps::NormalizationOp,mlir::Value &,mlir::mps::ReshapeOp,mlir::mps::ReshapeOp,mlir::mps::ReshapeOp,mlir::mps::ReshapeOp,mlir::FloatAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, uint64_t *a8)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "mps.normalization";
    v25[3] = 17;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  mlir::mps::NormalizationOp::build(a1, v28, *a3, *a4 - 16, *a5 - 16, *a6 - 16, *a7 - 16, *a8);
  v19 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
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

void anonymous namespace::BatchToSpacePattern::~BatchToSpacePattern(void **this)
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

void anonymous namespace::BatchToSpacePattern::matchAndRewrite(_anonymous_namespace_::BatchToSpacePattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v84[1] = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v81 = MILToMLIRRewriter::getArgValue(a3, a2, "block_shape");
  v6 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v79, v6);
  HIBYTE(v84[0]) = 5;
  strcpy(__s2, "crops");
  v7 = v80[0];
  if (!v80[0])
  {
    goto LABEL_35;
  }

  v8 = v80;
  do
  {
    v9 = v8;
    v10 = (v7 + 32);
    v11 = *(v7 + 55);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v7 + 40);
    }

    if (v12 >= 0)
    {
      v13 = (v7 + 32);
    }

    else
    {
      v13 = *(v7 + 32);
    }

    if (v11 >= 5)
    {
      v14 = 5;
    }

    else
    {
      v14 = v11;
    }

    v15 = v11 < 5;
    v16 = memcmp(v13, __s2, v14);
    v17 = v16 < 0;
    if (!v16)
    {
      v17 = v15;
    }

    if (v17)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v8 = v9;
    }

    else
    {
      v8 = v7;
    }

    v7 = *(v7 + v18);
  }

  while (v7);
  if (v8 == v80)
  {
    goto LABEL_35;
  }

  if (v17)
  {
    v19 = (v9 + 4);
  }

  else
  {
    v19 = v10;
  }

  v20 = *(v8 + 55);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = v8[5];
  }

  if (v21 >= 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = *v19;
  }

  if (v20 >= 5)
  {
    v23 = 5;
  }

  else
  {
    v23 = v20;
  }

  v24 = v20 > 5;
  v25 = memcmp(__s2, v22, v23);
  v26 = v25 < 0;
  if (!v25)
  {
    v26 = v24;
  }

  if (v26)
  {
LABEL_35:
    operator new();
  }

  if (v8[8] - v8[7] != 16)
  {
    operator new();
  }

  HIBYTE(v84[0]) = 5;
  strcpy(__s2, "crops");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (SHIBYTE(v84[0]) < 0)
  {
    v28 = ParameterValue;
    operator delete(__s2[0]);
    ParameterValue = v28;
  }

  (*(*ParameterValue + 40))(ParameterValue);
  Data = MIL::IRTensorValue::GetDataView<int>();
  v31 = v30;
  HIBYTE(v84[0]) = 1;
  LOWORD(__s2[0]) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  v33 = MIL::IRValueType::AsTensorType(ParameterType);
  v34 = MIL::IRTensorValueType::Rank(v33);
  if (SHIBYTE(v84[0]) < 0)
  {
    v37 = v34;
    operator delete(__s2[0]);
    v34 = v37;
    v35 = v31 >> 1;
    v36 = v31 >> 1 << 32;
    if (v34 < (v36 + 0x100000000) >> 32)
    {
LABEL_41:
      operator new();
    }
  }

  else
  {
    v35 = v31 >> 1;
    v36 = v31 >> 1 << 32;
    if (v34 < (v36 + 0x100000000) >> 32)
    {
      goto LABEL_41;
    }
  }

  v67 = Data;
  v38 = v36 >> 32;
  if (v34 <= 0)
  {
    v39 = 0;
  }

  else
  {
    v39 = v34 - v35;
  }

  __s2[0] = v84;
  v84[0] = v36 >> 32;
  __s2[1] = 0x100000001;
  __p = (*(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext(&__p);
  v41 = mlir::IntegerType::get(Context, 32, 1u);
  v42 = mlir::RankedTensorType::get(v84, 1, v41, 0);
  v43 = v42;
  if (v42)
  {
    v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
    v77 = v43;
    v78 = v44;
    if (v36)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v77 = 0;
    v78 = 0;
    if (v36)
    {
LABEL_49:
      if (!(v38 >> 62))
      {
        operator new();
      }

      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }
  }

  __p = (*(ArgValue + 8) & 0xFFFFFFFFFFFFFFF8);
  v45 = mlir::Attribute::getContext(&__p);
  v46 = mlir::IntegerType::get(v45, 32, 1u);
  v47 = mlir::RankedTensorType::get(0, 0, v46, 0);
  if ((v31 & 0x1FFFFFFFELL) != 0)
  {
    v48 = (v31 >> 1);
    if (v48 > 7)
    {
      v50 = (v31 >> 1) & 7;
      v49 = v48 - v50;
      v51 = vdupq_n_s64(v35);
      v52 = xmmword_1E096E650;
      v53 = xmmword_1E09700F0;
      v54 = 16;
      v55.i64[0] = 0x400000004;
      v55.i64[1] = 0x400000004;
      v56 = vdupq_n_s64(8uLL);
      v57 = v48 - v50;
      do
      {
        v58 = vuzp1q_s32(vsubq_s64(v53, v51), vsubq_s64(v52, v51));
        *(v54 - 16) = v58;
        *v54 = vaddq_s32(v58, v55);
        v52 = vaddq_s64(v52, v56);
        v53 = vaddq_s64(v53, v56);
        v54 += 32;
        v57 -= 8;
      }

      while (v57);
      if (!v50)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v49 = 0;
    }

    v59 = v48 - v49;
    v60 = (4 * v49);
    v61 = v49 - v35;
    do
    {
      *v60++ = v61++;
      --v59;
    }

    while (v59);
  }

LABEL_60:
  v76 = mlir::DenseElementsAttr::getFromRawBuffer(v77, v78, 0, 0, 4, 1, 1);
  v75 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &v77, &v76) - 16;
  if (v47)
  {
    v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
  }

  else
  {
    v62 = 0;
  }

  LODWORD(v72) = 0;
  __p = mlir::DenseElementsAttr::getFromRawBuffer(v47, v62, &v72, 4, 4, 1, 1);
  v74 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &__p) - 16;
  if ((*(*a2 + 192))(a2) == 1)
  {
    LOBYTE(__p) = 0;
    v72 = mlir::OpBuilder::create<mlir::mps::BatchToSpaceOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v75, &v74, &v81, &__p) - 16;
    if (v38 >= 1)
    {
      v63 = (v67 + 4);
      do
      {
        v71 = *(v63 - 1);
        v64 = *v63;
        v70 = *v63;
        if (v71 > 0 || v64 >= 1)
        {
          if (v47)
          {
            v66 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
          }

          else
          {
            v66 = 0;
          }

          v68 = v39;
          v69 = mlir::DenseElementsAttr::getFromRawBuffer(v47, v66, &v68, 4, 4, 1, 1);
          __p = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &v69) - 16);
          v72 = mlir::OpBuilder::create<mlir::mps::CropOp,mlir::Value &,mlir::Value &,int &,int &>(a3 + 23, LocationForOp, &v72, &__p, &v71, &v70) - 16;
        }

        v63 += 2;
        ++v39;
        --v38;
      }

      while (v38);
    }

    (*(*a2 + 200))(&__p, a2);
    MILToMLIRRewriter::setValue();
  }

  operator new();
}

void sub_1E067B468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, char *a29)
{
  v30 = (v29 - 120);
  std::vector<std::string>::~vector[abi:ne200100](&a17);
  if (__p)
  {
    operator delete(__p);
    v32 = *v30;
    if (*v30 == a12)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v32 = *v30;
    if (*v30 == a12)
    {
LABEL_6:
      std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a28, a29);
      _Unwind_Resume(a1);
    }
  }

  free(v32);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a28, a29);
  _Unwind_Resume(a1);
}

void anonymous namespace::CallPattern::~CallPattern(void **this)
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

uint64_t anonymous namespace::CallPattern::matchAndRewrite(_anonymous_namespace_::CallPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v38 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  v33 = 8;
  strcpy(__p, "function");
  MIL::IRObject::GetAttribute();
  MIL::IRValue::GetScalar<std::string>();
  v6 = (*(**a3 + 56))(*a3, v27);
  v7 = v6;
  if (!v6)
  {
    operator new();
  }

  v8 = (*(*v6 + 128))(v6);
  v23 = v7;
  v9 = *v8;
  if (*v8 != v8 + 1)
  {
    v10 = (v9 + 4);
    if (*(v9 + 55) < 0)
    {
      v10 = *v10;
    }

    MILToMLIRRewriter::getArgValue(a3, a2, v10);
    operator new();
  }

  v24 = 0;
  __dst = 0;
  v26 = 0;
  (*(*v23 + 160))(__p);
  v13 = __p[0];
  v12 = __p[1];
  if (__p[0] == __p[1])
  {
    if (!__p[0])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  do
  {
    getMLIRTypes(*v13, a3[23], &v36);
    std::vector<mlir::Type>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlir::Type*>,std::__wrap_iter<mlir::Type*>>(&v24, __dst, v36, v37, (v37 - v36) >> 3);
    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    ++v13;
  }

  while (v13 != v12);
  v13 = __p[0];
  if (__p[0])
  {
LABEL_10:
    __p[1] = v13;
    operator delete(v13);
  }

LABEL_11:
  v29 = LocationForOp;
  Context = mlir::Attribute::getContext(&v29);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    v35 = 1283;
    v34[2] = "mps.call";
    v34[3] = 8;
    v31 = 259;
    llvm::operator+(v34, &v30, &v36);
    llvm::report_fatal_error(&v36, 1);
  }

  mlir::OperationState::OperationState(__p, LocationForOp, v15);
  mlir::ValueRange::ValueRange(&v36, v24, (__dst - v24) >> 3);
  mlir::ValueRange::ValueRange(v34, 0, 0);
  if (v28 >= 0)
  {
    v17 = v27;
  }

  else
  {
    v17 = v27[0];
  }

  if (v28 >= 0)
  {
    v18 = v28;
  }

  else
  {
    v18 = v27[1];
  }

  mlir::mps::CallOp::build(a3 + 23, __p, v36, v37, v34[0], v34[1], v17, v18, 0);
  v19 = mlir::OpBuilder::create((a3 + 23), __p);
  v20 = *(*(v19 + 48) + 16);
  mlir::OperationState::~OperationState(__p);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if ((*(*a2 + 192))(a2))
  {
    (*(*a2 + 200))(__p, a2);
    if (*(v21 + 36))
    {
      v22 = v21 - 16;
    }

    else
    {
      v22 = 0;
    }

    mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
    operator new();
  }

  if (v24)
  {
    __dst = v24;
    operator delete(v24);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  return 1;
}

void sub_1E067BCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<mlir::Type>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlir::Type*>,std::__wrap_iter<mlir::Type*>>(uint64_t a1, char *__dst, char *__src, unint64_t a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v47 = (__dst - v11);
    v48 = 8 * ((__dst - v11) >> 3);
    v49 = (v48 + 8 * a5);
    v50 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - __src) >= 0x20)
    {
      v59 = v50 + 1;
      v60 = (v50 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v51 = (v48 + 8 * v60);
      v52 = &__src[8 * v60];
      v61 = (__src + 16);
      v62 = (v48 + 16);
      v63 = v60;
      do
      {
        v64 = *v61;
        *(v62 - 1) = *(v61 - 1);
        *v62 = v64;
        v61 += 2;
        v62 += 2;
        v63 -= 4;
      }

      while (v63);
      if (v59 == v60)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v51 = v48;
      v52 = __src;
    }

    do
    {
      v53 = *v52;
      v52 += 8;
      *v51++ = v53;
    }

    while (v51 != v49);
LABEL_42:
    v54 = *(a1 + 8) - __dst;
    memcpy((v48 + 8 * a5), __dst, v54);
    v55 = v49 + v54;
    *(a1 + 8) = v5;
    v56 = *a1;
    v57 = &v5[-*a1];
    v58 = v48 - v57;
    memcpy((v48 - v57), *a1, v57);
    *a1 = v58;
    *(a1 + 8) = v55;
    *(a1 + 16) = 0;
    if (v56)
    {
      operator delete(v56);
    }

    return v48;
  }

  v15 = v10 - __dst;
  v16 = (v10 - __dst) >> 3;
  if (v16 >= a5)
  {
    v15 = 8 * a5;
    v34 = &__dst[8 * a5];
    v35 = (v10 - 8 * a5);
    if (v35 >= v10)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v10 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v10;
      v38 = v37 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_62;
      }

      v40 = (v37 >> 3) + 1;
      v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
      v35 = (v35 + v41);
      v39 = (v10 + v41);
      v42 = (v10 + 16);
      v43 = (v10 + 16 - v15);
      v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 4;
      }

      while (v44);
      if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_62:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v10);
      }
    }

    *(a1 + 8) = v39;
    if (v10 != v34)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v34);
    }

    goto LABEL_56;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v21 = 8 * a5;
    v22 = &v5[8 * a5];
    v23 = &v20[-8 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &v5[a4] - &__src[v21] + 8;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &__src[v21 + ~a4 + v24] - v5;
      v26 = (v10 + v17);
      if (v25 < 0x18)
      {
        goto LABEL_63;
      }

      if ((a5 & 0x1FFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_63;
      }

      v27 = (v25 >> 3) + 1;
      v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
      v23 += v28;
      v26 = &v20[v28];
      v29 = (&v5[a4] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_63:
        do
        {
          v33 = *v23;
          v23 += 8;
          *v26 = v33;
          v26 += 8;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(&v5[8 * a5], v5, v20 - v22);
    }

    if (v10 != v5)
    {
LABEL_56:
      memmove(v5, __src, v15);
    }
  }

  return v5;
}

void anonymous namespace::CastPattern::~CastPattern(void **this)
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

void anonymous namespace::CastPattern::matchAndRewrite(_anonymous_namespace_::CastPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  HIBYTE(v8) = 5;
  strcpy(&__p, "dtype");
  MIL::IROperation::TryGetParameterValue();
  MIL::IRValue::GetScalar<std::string>();
  MLIRElemType = MILToMLIRRewriter::getMLIRElemType(a3, &v9);
  if ((*(*a2 + 192))(a2) == 1)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &ArgValue, &MLIRElemType);
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E067C548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::ConcatPattern::~ConcatPattern(void **this)
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

void anonymous namespace::ConcatPattern::matchAndRewrite(_anonymous_namespace_::ConcatPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  MILToMLIRRewriter::getArgValues(a3, a2, "values", &v17);
  strcpy(__p, "interleave");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    LOBYTE(ParameterValue) = MIL::IRValue::GetScalar<BOOL>();
  }

  v14 = ParameterValue;
  v16 = 4;
  strcpy(__p, "axis");
  v7 = MIL::IROperation::GetParameterValue();
  v8 = (*(*v7 + 32))(v7);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if ((*(*v9 + 88))(v9) == 11)
  {
    MIL::IRValue::AsTensor(v7);
    v10 = *MIL::IRTensorValue::GetDataView<int>();
    v11 = mlir::IntegerType::get(*(a3 + 23), 32, 1u);
    v12 = mlir::RankedTensorType::get(0, 0, v11, 0);
    __p[0] = mlir::mps::getConstantAttr<int>(v12, v10);
    v13 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, __p) - 16;
    if ((*(*a2 + 192))(a2) == 1)
    {
      mlir::OpBuilder::create<mlir::mps::ConcatOp,std::vector<mlir::Value> &,mlir::Value&,BOOL &>(a3 + 23, LocationForOp, &v17, &v13, &v14);
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1E067CA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  std::vector<std::string>::~vector[abi:ne200100](&a11);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a18 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConcatOp,std::vector<mlir::Value> &,mlir::Value&,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.concat";
    v19[3] = 10;
    v18 = 259;
    llvm::operator+(v19, &v17, v22);
    llvm::report_fatal_error(v22, 1);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  mlir::ValueRange::ValueRange(v22, *a3, (a3[1] - *a3) >> 3);
  mlir::mps::ConcatOp::build(a1, v21, v22[0], v22[1], *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v14;
}

void sub_1E067CC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void sub_1E067CC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  mlir::OperationState::~OperationState(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::ConstPattern::~ConstPattern(void **this)
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

uint64_t anonymous namespace::ConstPattern::matchAndRewrite(_anonymous_namespace_::ConstPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v11.var0.var0 = MILToMLIRRewriter::getLocationForOp(a3, a2);
  HIBYTE(v10) = 3;
  LODWORD(__p) = 7102838;
  Attribute = MIL::IRObject::GetAttribute();
  v6 = (*(*Attribute + 40))(Attribute);
  if (!v6)
  {
    operator new();
  }

  v7 = (*(*v6 + 32))(v6);
  if ((*(*v7 + 88))(v7) != 3)
  {
    if (MILToMLIRRewriter::materializeConstant(a3, Attribute, &v11))
    {
      (*(*a2 + 200))(&__p, a2);
      operator new();
    }

    operator new();
  }

  return 1;
}

void sub_1E067D070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::CumSumPattern::~CumSumPattern(void **this)
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

void anonymous namespace::CumSumPattern::matchAndRewrite(_anonymous_namespace_::CumSumPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  strcpy(v24, "exclusive");
  MIL::IROperation::TryGetParameterValue();
  v7 = MIL::IRValue::GetScalar<BOOL>();
  strcpy(v24, "reverse");
  MIL::IROperation::TryGetParameterValue();
  v8 = MIL::IRValue::GetScalar<BOOL>();
  v17 = 0;
  v25 = 4;
  strcpy(v24, "axis");
  if (MIL::IROperation::TryGetParameterValue())
  {
    v17 = MIL::IRValue::GetScalar<int>();
  }

  IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
  v10 = mlir::RankedTensorType::get(0, 0, IntegerType, 0);
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

  *v24 = mlir::DenseElementsAttr::getFromRawBuffer(v10, v12, &v17, 4, 4, 1, 1);
  v13 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 184), LocationForOp, v24);
  if ((*(*a2 + 192))(a2) == 1)
  {
    v18 = LocationForOp;
    Context = mlir::Attribute::getContext(&v18);
    v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CumulativeSumOp,void>::id, Context);
    if (v16)
    {
      mlir::OperationState::OperationState(v24, LocationForOp, v15);
      mlir::mps::CumulativeSumOp::build(a3 + 23, v24, ArgValue, v13 - 16, v7, v8);
      mlir::OpBuilder::create((a3 + 184), v24);
      mlir::OperationState::~OperationState(v24);
      (*(*a2 + 200))(v24, a2);
      operator new();
    }

    v22 = 1283;
    v21[2] = "mps.cumulative_sum";
    v21[3] = 18;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  operator new();
}

void sub_1E067D66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(*v31);
  }

  _Unwind_Resume(a1);
}

void sub_1E067D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    JUMPOUT(0x1E067D688);
  }

  JUMPOUT(0x1E067D690);
}

void anonymous namespace::EinsumPattern::~EinsumPattern(void **this)
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

void anonymous namespace::EinsumPattern::matchAndRewrite(_anonymous_namespace_::EinsumPattern *this, const MIL::IROperation *a2, MILToMLIRRewriter *a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  MILToMLIRRewriter::getArgValues(a3, a2, "values", v11);
  if ((v11[1] - v11[0]) == 16)
  {
    v6 = *v11[0];
    v8 = *(v11[0] + 1);
    v9 = v6;
    LODWORD(__p) = -2;
    LODWORD(v12) = -3;
    v9 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>(a3 + 23, LocationForOp, &v9, &__p, &v12) - 16;
    LODWORD(__p) = -2;
    LODWORD(v12) = -3;
    v8 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>(a3 + 23, LocationForOp, &v8, &__p, &v12) - 16;
    LOBYTE(__p) = 0;
    LOBYTE(v12) = 0;
    v7 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(a3 + 23, LocationForOp, &v9, &v8, &__p, &v12) - 16;
    LODWORD(__p) = -2;
    LODWORD(v12) = -3;
    v7 = mlir::OpBuilder::create<mlir::mps::TransposeOp,mlir::Value &,int,int>(a3 + 23, LocationForOp, &v7, &__p, &v12) - 16;
    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E067DA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  std::vector<std::string>::~vector[abi:ne200100](&a13);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::GELUPattern::~GELUPattern(void **this)
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

void anonymous namespace::GELUPattern::matchAndRewrite(_anonymous_namespace_::GELUPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v63 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  if ((*(*a2 + 192))(a2) != 1)
  {
    operator new();
  }

  v6 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v51, v6);
  v62 = 4;
  strcpy(&__s2, "mode");
  v7 = v52[0];
  if (!v52[0])
  {
    goto LABEL_84;
  }

  v8 = v52;
  do
  {
    v9 = v8;
    v10 = (v7 + 32);
    v11 = *(v7 + 55);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v7 + 40);
    }

    if (v12 >= 0)
    {
      v13 = (v7 + 32);
    }

    else
    {
      v13 = *(v7 + 32);
    }

    if (v11 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v11;
    }

    v15 = v11 < 4;
    v16 = memcmp(v13, &__s2, v14);
    v17 = v16 < 0;
    if (!v16)
    {
      v17 = v15;
    }

    if (v17)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v8 = v9;
    }

    else
    {
      v8 = v7;
    }

    v7 = *(v7 + v18);
  }

  while (v7);
  if (v8 == v52)
  {
    goto LABEL_84;
  }

  if (v17)
  {
    v19 = (v9 + 4);
  }

  else
  {
    v19 = v10;
  }

  v20 = *(v8 + 55);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = v8[5];
  }

  if (v21 >= 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = *v19;
  }

  if (v20 >= 4)
  {
    v23 = 4;
  }

  else
  {
    v23 = v20;
  }

  v24 = v20 > 4;
  v25 = memcmp(&__s2, v22, v23);
  v26 = v25 < 0;
  if (!v25)
  {
    v26 = v24;
  }

  if (v26 || v8[8] - v8[7] != 16)
  {
    goto LABEL_84;
  }

  v62 = 4;
  strcpy(&__s2, "mode");
  MIL::IROperation::TryGetParameterValue();
  if (v62 < 0)
  {
    operator delete(__s2);
  }

  MIL::IRValue::GetScalar<std::string>();
  if ((v62 & 0x80000000) == 0)
  {
    if (v62 != 18)
    {
      if (v62 != 21)
      {
        goto LABEL_84;
      }

      v27 = __s2 == 0x5F44494F4D474953 && *v61 == 0x4D49584F52505041;
      if (!v27 || *&v61[5] != 0x4E4F4954414D4958)
      {
        goto LABEL_84;
      }

LABEL_82:
      __s2 = 1;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
      v40 = mlir::RankedTensorType::get(&__s2, 1, ElementTypeOrSelf, 0);
      __s2 = createConstantOpFromScalar((a3 + 23), LocationForOp, v40, 1.70200002);
      v59[0] = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &__s2, &ArgValue);
      v57[0] = mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::mps::MultiplyOp &>((a3 + 23), LocationForOp, v59);
      mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value &,mlir::mps::ReciprocalSquareRootOp &>(a3 + 23, LocationForOp, &ArgValue, v57);
      goto LABEL_86;
    }

    if (__s2 != 0x5050415F484E4154 || *v61 != 0x4954414D49584F52 || *&v61[8] != 20047)
    {
      goto LABEL_84;
    }

LABEL_70:
    __s2 = 1;
    v34 = mlir::getElementTypeOrSelf(ArgValue);
    v35 = mlir::RankedTensorType::get(&__s2, 1, v34, 0);
    __s2 = createConstantOpFromScalar((a3 + 23), LocationForOp, v35, 0.797884583);
    v59[0] = createConstantOpFromScalar((a3 + 23), LocationForOp, v35, 0.0447149985);
    v57[0] = createConstantOpFromScalar((a3 + 23), LocationForOp, v35, 0.5);
    v55[0] = createConstantOpFromScalar((a3 + 23), LocationForOp, v35, 1.0);
    v54 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, v59, &ArgValue);
    v50 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::MultiplyOp&,mlir::Value &>(a3 + 23, LocationForOp, &v54, &ArgValue);
    v49 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &__s2, &ArgValue);
    v48 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value &,mlir::mps::TransposeOp &>(a3 + 23, LocationForOp, v55, &v50);
    v47 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v49, &v48);
    v46 = mlir::OpBuilder::create<mlir::mps::TanhOp,mlir::mps::MultiplyOp &>((a3 + 23), LocationForOp, &v47);
    v45 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value &,mlir::mps::TanhOp &>(a3 + 23, LocationForOp, v55, &v46);
    v44 = mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, v57, &ArgValue);
    mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::ConstantOp,mlir::mps::CastOp &>(a3 + 23, LocationForOp, &v44, &v45);
    goto LABEL_86;
  }

  if (*v61 == 18)
  {
    v29 = __s2;
    if (*__s2 == 0x5050415F484E4154 && *(__s2 + 8) == 0x4954414D49584F52 && *(__s2 + 16) == 20047)
    {
      operator delete(__s2);
      goto LABEL_70;
    }
  }

  else
  {
    v29 = __s2;
    if (*v61 == 21)
    {
      v38 = *__s2 != 0x5F44494F4D474953 || *(__s2 + 8) != 0x4D49584F52505041 || *(__s2 + 13) != 0x4E4F4954414D4958;
      operator delete(__s2);
      if (v38)
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }
  }

  operator delete(v29);
LABEL_84:
  v54 = LocationForOp;
  Context = mlir::Attribute::getContext(&v54);
  v42 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GeluOp,void>::id, Context);
  if ((v43 & 1) == 0)
  {
    v58 = 1283;
    v57[2] = "mps.gelu";
    v57[3] = 8;
    v56 = 259;
    llvm::operator+(v57, v55, v59);
    llvm::report_fatal_error(v59, 1);
  }

  mlir::OperationState::OperationState(&__s2, LocationForOp, v42);
  mlir::mps::ACosOp::build((a3 + 23), &__s2, ArgValue);
  mlir::OpBuilder::create((a3 + 23), &__s2);
  mlir::OperationState::~OperationState(&__s2);
LABEL_86:
  (*(*a2 + 200))(&__s2, a2);
  operator new();
}

void sub_1E067E51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a17, a18);
    _Unwind_Resume(a1);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a17, a18);
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::MultiplyOp,mlir::mps::MultiplyOp&,mlir::Value &>(mlir::Float32Type **a1, uint64_t a2, void *a3, uint64_t *a4)
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
  mlir::mps::ATan2Op::build(a1, v20, *a3 - 16, *a4);
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

uint64_t mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value &,mlir::mps::TanhOp &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "mps.add";
    v17[3] = 7;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  mlir::mps::ATan2Op::build(a1, v20, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AddOp,void>::id)
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

void anonymous namespace::InnerProductPattern::~InnerProductPattern(void **this)
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

void anonymous namespace::InnerProductPattern::matchAndRewrite(_anonymous_namespace_::InnerProductPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v10 = MILToMLIRRewriter::getArgValue(a3, a2, "weights");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "bias");
  v9 = OptionalArgValue;
  if ((*(*a2 + 192))(a2) == 1)
  {
    LOBYTE(__p) = 0;
    LOBYTE(v12) = 1;
    v7 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v10, &__p, &v12);
    if (OptionalArgValue)
    {
      mlir::OpBuilder::create<mlir::mps::AddOp,mlir::mps::MatMulOp &,mlir::Value &>(a3 + 23, LocationForOp, &v7, &v9);
      (*(*a2 + 200))(&__p, a2);
      operator new();
    }

    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void anonymous namespace::InstanceNormPattern::~InstanceNormPattern(void **this)
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

void anonymous namespace::InstanceNormPattern::matchAndRewrite(_anonymous_namespace_::InstanceNormPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v17[1] = ArgValue;
  v17[0] = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "beta");
  v15[1] = 0;
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "gamma");
  v15[0] = mlir::getElementTypeOrSelf(ArgValue);
  if (!v17[0])
  {
    v8 = mlir::Float32Type::get(a3[23], v7);
    Constant = 1;
    v9 = mlir::RankedTensorType::get(&Constant, 1, v8, 0);
    Constant = mlir::mps::getConstantAttr<float>(v9, 0.0);
    v17[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &Constant) - 16;
    if (!mlir::Type::isF32(v15))
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
      Constant = mlir::TypeAttr::get(ElementTypeOrSelf);
      v17[0] = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, v17, &Constant) - 16;
    }
  }

  if (!OptionalArgValue)
  {
    v11 = mlir::Float32Type::get(a3[23], v7);
    Constant = 1;
    v12 = mlir::RankedTensorType::get(&Constant, 1, v11, 0);
    Constant = mlir::mps::getConstantAttr<float>(v12, 1.0);
    OptionalArgValue = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &Constant) - 16;
    if (!mlir::Type::isF32(v15))
    {
      v13 = mlir::getElementTypeOrSelf(ArgValue);
      Constant = mlir::TypeAttr::get(v13);
      OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &OptionalArgValue, &Constant) - 16;
    }
  }

  operator new();
}

void sub_1E067F844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *__p, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, char *a32)
{
  std::vector<std::string>::~vector[abi:ne200100](&a25);
  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a31, a32);
  operator delete(__p);
  operator delete(a16);
  operator delete(a14);
  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::NormalizationOp,mlir::Value &,mlir::mps::ReductionMeanOp,mlir::mps::ReductionVarianceOp,mlir::mps::ReshapeOp,mlir::mps::ReshapeOp,mlir::FloatAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, uint64_t *a8)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "mps.normalization";
    v25[3] = 17;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  mlir::mps::NormalizationOp::build(a1, v28, *a3, *a4 - 16, *a5 - 16, *a6 - 16, *a7 - 16, *a8);
  v19 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, void *a4, unsigned __int8 *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.reduction_mean";
    v19[3] = 18;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::ReductionMeanOp::build(a1, v22, *a3, *a4 - 16, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, void *a4, unsigned __int8 *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.reduction_variance";
    v19[3] = 22;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::ReductionVarianceOp::build(a1, v22, *a3, *a4 - 16, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id)
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

void anonymous namespace::LayerNormPattern::~LayerNormPattern(void **this)
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

void anonymous namespace::LayerNormPattern::matchAndRewrite(_anonymous_namespace_::LayerNormPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  v88[0] = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "axes");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "beta");
  v85 = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "gamma");
  v84 = 0;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v88[0]);
  if (!OptionalArgValue)
  {
    v7 = mlir::Float32Type::get(a3[23], v6);
    Constant = 1;
    v8 = mlir::RankedTensorType::get(&Constant, 1, v7, 0);
    Constant = mlir::mps::getConstantAttr<float>(v8, 0.0);
    OptionalArgValue = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &Constant) - 16;
    if (!mlir::Type::isF32(&ElementTypeOrSelf))
    {
      v9 = mlir::getElementTypeOrSelf(v88[0]);
      Constant = mlir::TypeAttr::get(v9);
      OptionalArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &OptionalArgValue, &Constant) - 16;
    }
  }

  if (!v85)
  {
    v10 = mlir::Float32Type::get(a3[23], v6);
    Constant = 1;
    v11 = mlir::RankedTensorType::get(&Constant, 1, v10, 0);
    Constant = mlir::mps::getConstantAttr<float>(v11, 1.0);
    v85 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), LocationForOp, &Constant) - 16;
    if (!mlir::Type::isF32(&ElementTypeOrSelf))
    {
      v12 = mlir::getElementTypeOrSelf(v88[0]);
      Constant = mlir::TypeAttr::get(v12);
      v85 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v85, &Constant) - 16;
    }
  }

  v69 = LocationForOp;
  v13 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](&Constant, v13);
  HIBYTE(v80) = 7;
  strcpy(&__s2, "epsilon");
  v14 = v82[0];
  if (v82[0])
  {
    v15 = v82;
    do
    {
      v16 = v15;
      v17 = (v14 + 32);
      v18 = *(v14 + 55);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v14 + 40);
      }

      if (v19 >= 0)
      {
        v20 = (v14 + 32);
      }

      else
      {
        v20 = *(v14 + 32);
      }

      if (v18 >= 7)
      {
        v21 = 7;
      }

      else
      {
        v21 = v18;
      }

      v22 = v18 < 7;
      v23 = memcmp(v20, &__s2, v21);
      v24 = v23 < 0;
      if (!v23)
      {
        v24 = v22;
      }

      if (v24)
      {
        v25 = 8;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v15 = v16;
      }

      else
      {
        v15 = v14;
      }

      v14 = *(v14 + v25);
    }

    while (v14);
    if (v15 != v82)
    {
      if (v24)
      {
        v26 = (v16 + 4);
      }

      else
      {
        v26 = v17;
      }

      v27 = *(v15 + 55);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = v15[5];
      }

      if (v28 >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = *v26;
      }

      if (v27 >= 7)
      {
        v30 = 7;
      }

      else
      {
        v30 = v27;
      }

      v31 = v27 > 7;
      v32 = memcmp(&__s2, v29, v30);
      v33 = v32 < 0;
      if (!v32)
      {
        v33 = v31;
      }

      if (!v33)
      {
        if (v15[8] - v15[7] == 16)
        {
          HIBYTE(v80) = 7;
          strcpy(&__s2, "epsilon");
          ParameterValue = MIL::IROperation::GetParameterValue();
          v35 = (*(*ParameterValue + 40))(ParameterValue);
          if (SHIBYTE(v80) < 0)
          {
            v36 = v35;
            operator delete(__s2);
            v35 = v36;
          }

          if (v35)
          {
            v37 = (*(*v35 + 32))(v35);
            v38 = (*(*v37 + 88))(v37);
            if (v38 == 4)
            {
              HIBYTE(v80) = 7;
              strcpy(&__s2, "epsilon");
              MIL::IROperation::GetParameterValue();
              LOWORD(__p) = MIL::IRValue::GetScalar<MIL::Fp16>();
              MIL::Fp16::GetFloat(&__p);
              F32FloatAttr = mlir::Builder::getF32FloatAttr(a3 + 23, v43, v42);
            }

            else
            {
              if (v38 != 5)
              {
                operator new();
              }

              HIBYTE(v80) = 7;
              strcpy(&__s2, "epsilon");
              MIL::IROperation::GetParameterValue();
              MIL::IRValue::GetScalar<float>();
              F32FloatAttr = mlir::Builder::getF32FloatAttr(a3 + 23, v40, v39);
            }

            v84 = F32FloatAttr;
            if (SHIBYTE(v80) < 0)
            {
              operator delete(__s2);
            }

            if ((*(*a2 + 192))(a2) == 1)
            {
              HIBYTE(v80) = 1;
              LOWORD(__s2) = 120;
              ParameterType = MIL::IROperation::GetParameterType();
              if (SHIBYTE(v80) < 0)
              {
                v45 = ParameterType;
                operator delete(__s2);
                ParameterType = v45;
              }

              v46 = MIL::IRValueType::AsTensorType(ParameterType);
              v78 = MIL::IRTensorValueType::Rank(v46);
              getMLIRShape(v46, &__s2);
              if (v78)
              {
                if (!(v78 >> 62))
                {
                  operator new();
                }

                std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
              }

              v77 = 4;
              strcpy(&__p, "axes");
              v47 = MIL::IROperation::GetParameterValue();
              if (v77 < 0)
              {
                v48 = v47;
                operator delete(__p);
                v47 = v48;
              }

              (*(*v47 + 40))(v47);
              Data = MIL::IRTensorValue::GetDataView<int>();
              if (v50)
              {
                v51 = v78;
                v52 = __s2;
                do
                {
                  v53 = *Data++;
                  *(4 * ((v51 & (v53 >> 31)) + v53)) = v52[(v51 & (v53 >> 31)) + v53];
                  --v50;
                }

                while (v50);
              }

              IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, 1);
              v55 = mlir::RankedTensorType::get(&v78, 1, IntegerType, 0);
              v56 = v55;
              if (v55)
              {
                v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
              }

              else
              {
                v57 = 0;
              }

              v58 = v69;
              __p = mlir::DenseElementsAttr::getFromRawBuffer(v56, v57, 0, 0, 4, 1, 1);
              v75 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v69, &__p);
              v73 = OptionalArgValue;
              v77 = 5;
              strcpy(&__p, "gamma");
              v59 = MIL::IROperation::TryGetParameterValue();
              if (v77 < 0)
              {
                v60 = v59;
                operator delete(__p);
                v59 = v60;
              }

              if (v59)
              {
                v61 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, v69, &v85, &v75);
              }

              else
              {
                if (v56)
                {
                  v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v56 + 8);
                }

                else
                {
                  v62 = 0;
                }

                if (v78)
                {
                  if (!(v78 >> 62))
                  {
                    operator new();
                  }

                  std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
                }

                v63 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v62, 0, 0, 4, 1, 1);
                v58 = v69;
                v72 = v63;
                __p = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v69, &v72);
                v61 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, v69, &v85, &__p);
              }

              v74 = v61 - 16;
              v77 = 4;
              strcpy(&__p, "beta");
              v64 = MIL::IROperation::TryGetParameterValue();
              if (v77 < 0)
              {
                v65 = v64;
                operator delete(__p);
                v64 = v65;
              }

              if (v64)
              {
                v66 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, v58, &OptionalArgValue, &v75);
              }

              else
              {
                if (v56)
                {
                  v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v56 + 8);
                }

                else
                {
                  v67 = 0;
                }

                if (v78)
                {
                  if (!(v78 >> 62))
                  {
                    operator new();
                  }

                  std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
                }

                v68 = mlir::DenseElementsAttr::getFromRawBuffer(v56, v67, 0, 0, 4, 1, 1);
                v58 = v69;
                v72 = v68;
                __p = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 23), v69, &v72);
                v66 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3 + 23, v69, &OptionalArgValue, &__p);
              }

              v73 = v66 - 16;
              v71 = 1;
              __p = mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(a3 + 23, v58, v88, &ArgValue, &v71);
              v70 = 1;
              v72 = mlir::OpBuilder::create<mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,BOOL>(a3 + 23, v58, v88, &ArgValue, &v70);
              mlir::OpBuilder::create<mlir::mps::NormalizationOp,mlir::Value &,mlir::mps::ReductionMeanOp,mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,mlir::FloatAttr &>((a3 + 23), v58, v88, &__p, &v72, &v74, &v73, &v84);
              (*(*a2 + 200))(&__p, a2);
              MILToMLIRRewriter::setValue();
            }

            operator new();
          }

          operator new();
        }

        operator new();
      }
    }
  }

  operator new();
}

void sub_1E0680AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, char *a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a29, a30);
    _Unwind_Resume(a1);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a29, a30);
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::NormalizationOp,mlir::Value &,mlir::mps::ReductionMeanOp,mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,mlir::FloatAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "mps.normalization";
    v25[3] = 17;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  mlir::OperationState::OperationState(v28, a2, v17);
  mlir::mps::NormalizationOp::build(a1, v28, *a3, *a4 - 16, *a5 - 16, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionVarianceOp,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v20 = 1283;
    v19[2] = "mps.reduction_variance";
    v19[3] = 22;
    v18 = 259;
    llvm::operator+(v19, &v17, v21);
    llvm::report_fatal_error(v21, 1);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  mlir::mps::ReductionVarianceOp::build(a1, v22, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id)
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

void anonymous namespace::LinearPattern::~LinearPattern(void **this)
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

void anonymous namespace::LinearPattern::matchAndRewrite(_anonymous_namespace_::LinearPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v15 = MILToMLIRRewriter::getArgValue(a3, a2, "weight");
  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, "bias");
  v14 = OptionalArgValue;
  HIBYTE(v13) = 1;
  LOWORD(__p) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  v9 = MIL::IRTensorValueType::Rank(v8);
  if (v9 == 1)
  {
    operator new();
  }

  if ((*(*a2 + 192))(a2) == 1)
  {
    LOBYTE(__p) = 0;
    LOBYTE(v17) = 1;
    v11 = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(a3 + 23, LocationForOp, &ArgValue, &v15, &__p, &v17) - 16;
    if (OptionalArgValue)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v11);
      __p = mlir::TypeAttr::get(ElementTypeOrSelf);
      v14 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &v14, &__p) - 16;
      v11 = mlir::OpBuilder::create<mlir::mps::AddOp,mlir::Value,mlir::Value&>(a3 + 23, LocationForOp, &v11, &v14) - 16;
    }

    (*(*a2 + 200))(&__p, a2);
    operator new();
  }

  operator new();
}

void anonymous namespace::LocalResponseNormPattern::~LocalResponseNormPattern(void **this)
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

void anonymous namespace::LocalResponseNormPattern::matchAndRewrite(_anonymous_namespace_::LocalResponseNormPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  MILToMLIRRewriter::getArgValue(a3, a2, "size");
  MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  MILToMLIRRewriter::getArgValue(a3, a2, "beta");
  MILToMLIRRewriter::getArgValue(a3, a2, "k");
  LOWORD(__p) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  v7 = MIL::IRValueType::AsTensorType(ParameterType);
  if (MIL::IRTensorValueType::Rank(v7) <= 3)
  {
    operator new();
  }

  v17 = 4;
  strcpy(&__p, "size");
  MIL::IROperation::TryGetParameterValue();
  v8 = MIL::IRValue::GetScalar<int>();
  if (v17 < 0)
  {
    v9 = v8;
    operator delete(__p);
    v8 = v9;
  }

  v10 = v8 & 1;
  if (v8 < 0)
  {
    v10 = -v10;
  }

  __p = (v8 - v10 + 1);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  v12 = mlir::RankedTensorType::get(&__p, 1, ElementTypeOrSelf, 0);
  MPSDataType = getMPSDataType(v12);
  v14 = getConstantDataForScalar(MPSDataType, 1.0);
  createConstantOp((a3 + 23), LocationForOp, v14, v12, 1);

  operator new();
}

void sub_1E0682334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  mlir::OperationState::~OperationState(&__p);
  operator delete(v50);
  llvm::APFloat::~APFloat(&a41);
  operator delete(a15);
  _Unwind_Resume(a1);
}

void sub_1E06825EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  llvm::APFloat::~APFloat(&a41);
  operator delete(v41);
  _Unwind_Resume(a1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    v16 = 1283;
    v15[2] = "mps.square";
    v15[3] = 10;
    v14 = 259;
    llvm::operator+(v15, &v13, v17);
    llvm::report_fatal_error(v17, 1);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  mlir::mps::ACosOp::build(a1, v18, *a3);
  v9 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id)
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

void anonymous namespace::MatMulPattern::~MatMulPattern(void **this)
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

void anonymous namespace::MatMulPattern::matchAndRewrite(_anonymous_namespace_::MatMulPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v32 = *MEMORY[0x1E69E9840];
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v22 = MILToMLIRRewriter::getArgValue(a3, a2, "y");
  if ((*(*a2 + 192))(a2) == 1)
  {
    ParameterType = MIL::IROperation::GetParameterType();
    v7 = MIL::IRValueType::AsTensorType(ParameterType);
    v8 = MIL::IRTensorValueType::Rank(v7);
    v9 = MIL::IROperation::GetParameterType();
    v10 = MIL::IRValueType::AsTensorType(v9);
    v11 = MIL::IRTensorValueType::Rank(v10);
    strcpy(__p, "transpose_x");
    ParameterValue = MIL::IROperation::TryGetParameterValue();
    v31 = 11;
    strcpy(__p, "transpose_y");
    v13 = MIL::IROperation::TryGetParameterValue();
    v14 = 0;
    if (ParameterValue && v8 != 1)
    {
      v14 = MIL::IRValue::GetScalar<BOOL>();
    }

    v15 = 0;
    if (v13 && v11 != 1)
    {
      v15 = MIL::IRValue::GetScalar<BOOL>();
    }

    if (v8 == 1)
    {
      operator new();
    }

    if (v11 == 1)
    {
      operator new();
    }

    v24 = LocationForOp;
    Context = mlir::Attribute::getContext(&v24);
    v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, Context);
    if (v18)
    {
      mlir::OperationState::OperationState(__p, LocationForOp, v17);
      mlir::mps::MatMulOp::build(a3 + 23, __p, ArgValue, v22, v14, v15);
      v19 = mlir::OpBuilder::create((a3 + 23), __p);
      v20 = *(*(v19 + 48) + 16);
      mlir::OperationState::~OperationState(__p);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      v27[0] = v21 - 16;
      (*(*a2 + 200))(__p, a2);
      operator new();
    }

    v28 = 1283;
    v27[2] = "mps.matmul";
    v27[3] = 10;
    v26 = 259;
    llvm::operator+(v27, &v25, v29);
    llvm::report_fatal_error(v29, 1);
  }

  operator new();
}

void anonymous namespace::PReLUPattern::~PReLUPattern(void **this)
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

void anonymous namespace::PReLUPattern::matchAndRewrite(_anonymous_namespace_::PReLUPattern *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  v14 = *MEMORY[0x1E69E9840];
  MILToMLIRRewriter::getLocationForOp(a3, a2);
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  v10 = MILToMLIRRewriter::getArgValue(a3, a2, "alpha");
  v5 = (*(*a2 + 160))(a2);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v9, v5);
  v13 = 1;
  LOWORD(__p) = 120;
  ParameterType = MIL::IROperation::GetParameterType();
  if (v13 < 0)
  {
    v7 = ParameterType;
    operator delete(__p);
    ParameterType = v7;
  }

  v8 = MIL::IRValueType::AsTensorType(ParameterType);
  MIL::IRTensorValueType::Rank(v8);
  operator new();
}

void sub_1E0683854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _Unwind_Exception *exception_object, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40)
  {
    operator delete(v40);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

void anonymous namespace::ReduceArgMinPattern::~ReduceArgMinPattern(void **this)
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

void anonymous namespace::ReducePatternBase::matchAndRewrite(_anonymous_namespace_::ReducePatternBase *this, const MIL::IROperation *a2, mlir::StringAttr **a3)
{
  LocationForOp = MILToMLIRRewriter::getLocationForOp(a3, a2);
  v23 = LocationForOp;
  ArgValue = MILToMLIRRewriter::getArgValue(a3, a2, "x");
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(ArgValue);
  if (*(this + 33) == 1)
  {
    isF16 = mlir::Type::isF16(&ElementTypeOrSelf);
    if (isF16)
    {
      v9 = mlir::Float32Type::get(a3[23], v7);
      __p[0] = mlir::TypeAttr::get(v9);
      ArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &ArgValue, __p) - 16;
    }

    if (mlir::Type::isInteger(&ElementTypeOrSelf, 8) || mlir::Type::isInteger(&ElementTypeOrSelf, 16))
    {
      isSignedInteger = mlir::Type::isSignedInteger(&ElementTypeOrSelf);
      IntegerType = mlir::Builder::getIntegerType(a3 + 23, 32, isSignedInteger);
      __p[0] = mlir::TypeAttr::get(IntegerType);
      ArgValue = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, LocationForOp, &ArgValue, __p) - 16;
      isF16 = 1;
    }
  }

  else
  {
    isF16 = 0;
  }

  if (*(this + 32))
  {
    v12 = "axis";
  }

  else
  {
    v12 = "axes";
  }

  OptionalArgValue = MILToMLIRRewriter::getOptionalArgValue(a3, a2, v12);
  v20 = 9;
  strcpy(__p, "keep_dims");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (v20 < 0)
  {
    v16 = ParameterValue;
    operator delete(__p[0]);
    if (v16)
    {
      goto LABEL_13;
    }
  }

  else if (ParameterValue)
  {
LABEL_13:
    v15 = MIL::IRValue::GetScalar<BOOL>();
    goto LABEL_16;
  }

  v15 = 1;
LABEL_16:
  v18 = (*(*this + 24))(this, a3 + 184, ArgValue, OptionalArgValue, v15, &v23);
  if ((*(*a2 + 192))(a2) == 1)
  {
    if (isF16 && (*(this + 32) & 1) == 0)
    {
      v17 = v23;
      __p[0] = mlir::TypeAttr::get(ElementTypeOrSelf);
      v18 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(a3 + 23, v17, &v18, __p) - 16;
    }

    (*(*a2 + 200))(__p, a2);
    operator new();
  }

  operator new();
}

void sub_1E0683E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionArgMinOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_argmin";
    v21[3] = 20;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionArgMinOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 48) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void anonymous namespace::ReduceArgMaxPattern::~ReduceArgMaxPattern(void **this)
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

uint64_t anonymous namespace::OneToOneReducePattern<mlir::mps::ReductionArgMaxOp>::lower(uint64_t a1, mlir::UnitAttr **a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v10 = *a6;
  v18 = *a6;
  Context = mlir::Attribute::getContext(&v18);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id, Context);
  if ((v13 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.reduction_argmax";
    v21[3] = 20;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, v10, v12);
  mlir::mps::ReductionArgMaxOp::build(a2, v24, a3, a4, a5);
  v14 = mlir::OpBuilder::create(a2, v24);
  v15 = *(*(v14 + 48) + 16);
  v16 = v14 - 16;
  mlir::OperationState::~OperationState(v24);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id)
  {
    return v16;
  }

  else
  {
    return -16;
  }
}

void anonymous namespace::ReduceL1NormPattern::~ReduceL1NormPattern(void **this)
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

uint64_t anonymous namespace::ReduceL1NormPattern::lower(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v10 = mlir::OpBuilder::create<mlir::mps::AbsoluteOp,mlir::Value &>(a2, *a6, &v19);
  v11 = *a6;
  v20 = *a6;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v24 = 1283;
    v23[2] = "mps.reduction_sum";
    v23[3] = 17;
    v22 = 259;
    llvm::operator+(v23, &v21, v25);
    llvm::report_fatal_error(v25, 1);
  }

  mlir::OperationState::OperationState(v26, v11, v13);
  mlir::mps::ReductionSumOp::build(a2, v26, v10 - 16, a4, a5);
  v15 = mlir::OpBuilder::create(a2, v26);
  v16 = *(*(v15 + 48) + 16);
  v17 = v15 - 16;
  mlir::OperationState::~OperationState(v26);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id)
  {
    return v17;
  }

  else
  {
    return -16;
  }
}

void anonymous namespace::ReduceL2NormPattern::~ReduceL2NormPattern(void **this)
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

uint64_t anonymous namespace::ReduceL2NormPattern::lower(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v19 = a4;
  v20 = a3;
  v18 = a5;
  v17 = mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value &>(a2, *a6, &v20);
  v8 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::mps::SquareOp &,mlir::Value &,BOOL &>(a2, *a6, &v17, &v19, &v18);
  v9 = *a6;
  v21 = *a6;
  Context = mlir::Attribute::getContext(&v21);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    v25 = 1283;
    v24[2] = "mps.square_root";
    v24[3] = 15;
    v23 = 259;
    llvm::operator+(v24, &v22, v26);
    llvm::report_fatal_error(v26, 1);
  }

  mlir::OperationState::OperationState(v27, v9, v11);
  mlir::mps::ACosOp::build(a2, v27, v8 - 16);
  v13 = mlir::OpBuilder::create(a2, v27);
  v14 = *(*(v13 + 48) + 16);
  v15 = v13 - 16;
  mlir::OperationState::~OperationState(v27);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id)
  {
    return v15;
  }

  else
  {
    return -16;
  }
}