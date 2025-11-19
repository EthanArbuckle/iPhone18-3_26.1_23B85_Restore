void sub_1E081F5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, char *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&a11, a12);
  if (a14)
  {
    a15 = a14;
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void MILToMLIR::L2NormPattern::~L2NormPattern(void **this)
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

uint64_t mlir::OpBuilder::create<mlir::mps::LPNormOp,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LPNormOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    v22 = 1283;
    v21[2] = "mps.lp_norm";
    v21[3] = 11;
    v20 = 259;
    llvm::operator+(v21, &v19, v23);
    llvm::report_fatal_error(v23, 1);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  mlir::mps::LPNormOp::build(a1, v24, *a3, *a4 - 16, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::LPNormOp,void>::id)
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

uint64_t mlir::mps::MPSFusableCoreOps::isCoreOperandStitchable(mlir::mps::MPSFusableCoreOps *this, mlir::Operation *a2, int a3)
{
  v3 = *(*(a2 + 6) + 16);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id)
  {
    return (a3 < 1) | 0x100u;
  }

  v6 = *(this + 1);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
  {
    if (v6)
    {
      return [MEMORY[0x1E6974788] supportsPrefixForDevice:?] | 0x100;
    }

    return 256;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    if (v6)
    {
      return [MEMORY[0x1E69746A8] supportsPrefixForDevice:?] | 0x100;
    }

    return 256;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id)
  {
    if (v6)
    {
      return [MEMORY[0x1E69748B0] supportsPrefixForDevice:?] | 0x100;
    }

    return 257;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id)
  {
    if (v6)
    {
      return [MEMORY[0x1E69746F8] supportsPrefixForDevice:?] | 0x100;
    }

    return 257;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::StencilOp,void>::id)
  {
    if (v6)
    {
      return [MEMORY[0x1E6974888] supportsPrefixForDevice:?] | 0x100;
    }

    return 257;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id)
  {
    return 256;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedMatMulOp,void>::id)
  {
    if (v6)
    {
      return [MEMORY[0x1E6974810] supportsPrefixForDevice:?] | 0x100;
    }

    return 256;
  }

  if (v3 != &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 257;
  }

  v8 = *(this + 1);
  v12 = a2;
  FusionType = mlir::mpsx::FusionOp::getFusionType(&v12);
  if (FusionType == 3)
  {
    if (v8)
    {
      v10 = this;
      v11 = 0x1E6974810;
      return [*v11 supportsPrefixForDevice:*(v10 + 1)] | 0x100;
    }
  }

  else if (FusionType == 1 && v8)
  {
    v10 = this;
    v11 = 0x1E6974800;
    return [*v11 supportsPrefixForDevice:*(v10 + 1)] | 0x100;
  }

  return 256;
}

uint64_t mlir::mps::MPSFusableCoreOps::isCorePostfixStitchable(mlir::mps::MPSFusableCoreOps *this, mlir::Operation *a2)
{
  v2 = *(this + 1);
  v3 = *(*(a2 + 6) + 16);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
  {
    if (v2)
    {
      v6 = MEMORY[0x1E6974788];
      goto LABEL_15;
    }

    goto LABEL_77;
  }

  if (v3 != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    if (v3 == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      v72[0] = a2;
      FusionType = mlir::mpsx::FusionOp::getFusionType(v72);
      if (FusionType == 3)
      {
        if (!v2)
        {
          goto LABEL_77;
        }

        v19 = 0x1E6974810;
      }

      else
      {
        if (FusionType != 1)
        {
          v8 = 0;
          return v8 | 0x100u;
        }

        if (!v2)
        {
          goto LABEL_77;
        }

        v19 = 0x1E6974800;
      }

      v6 = *v19;
      v7 = *(this + 1);
      goto LABEL_16;
    }

    if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id)
    {
      if (v2)
      {
        v6 = MEMORY[0x1E69748B0];
        goto LABEL_15;
      }
    }

    else if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id)
    {
      if (v2)
      {
        v6 = MEMORY[0x1E6974850];
        goto LABEL_15;
      }
    }

    else if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id)
    {
      if (v2)
      {
        v6 = MEMORY[0x1E69746F8];
        goto LABEL_15;
      }
    }

    else if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::StencilOp,void>::id)
    {
      if (v2)
      {
        v6 = MEMORY[0x1E6974888];
        goto LABEL_15;
      }
    }

    else if (v3 == &mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedMatMulOp,void>::id && v2 != 0)
    {
      v6 = MEMORY[0x1E6974810];
LABEL_15:
      v7 = v2;
LABEL_16:
      v8 = [v6 supportsPostfixForDevice:v7];
      return v8 | 0x100u;
    }

LABEL_77:
    v8 = 1;
    return v8 | 0x100u;
  }

  if (!v2)
  {
    goto LABEL_77;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = MEMORY[0x1E69746A8];
    v7 = *(this + 1);
    goto LABEL_16;
  }

  v83[0] = a2;
  v10 = *(a2 + 9);
  v11 = *(v10 + 24);
  v12 = *(v10 + 56);
  if (*(a2 + 9))
  {
    v13 = a2 - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  v15 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  if (v16)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v82[0] = v17;
  v82[1] = v16;
  v20 = (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
  if (v21)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v81[0] = v22;
  v81[1] = v21;
  v23 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8))
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
    v79 = v23;
    v80 = v24;
    if (!mlir::CallOpInterface::getArgOperands(v82))
    {
      goto LABEL_61;
    }
  }

  else
  {
    v79 = 0;
    v80 = 0;
    if (!mlir::CallOpInterface::getArgOperands(v82))
    {
      goto LABEL_61;
    }
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v82);
  if (v26)
  {
    v27 = 8 * v26;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_61;
  }

LABEL_51:
  if (!mlir::CallOpInterface::getArgOperands(v81))
  {
    goto LABEL_61;
  }

  v28 = mlir::CallableOpInterface::getArgAttrsAttr(v81);
  if (v29)
  {
    v30 = 8 * v29;
    while (*v28 != 0x8000000000000000)
    {
      ++v28;
      v30 -= 8;
      if (!v30)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_61;
  }

LABEL_56:
  if (!mlir::ShapedType::hasStaticShape(&v79))
  {
LABEL_61:
    v8 = [MEMORY[0x1E69746A8] supportsPostfixForDevice:*(this + 1) convolutionDescriptor:0 sourceTensorDescriptor:0 destinationTensorDescriptor:0 weightsTensorDescriptor:0];
    return v8 | 0x100u;
  }

  v31 = objc_alloc_init(MEMORY[0x1E69746B0]);
  [v31 setGroups:mlir::mps::Conv3DOp::getGroups(v83)];
  v72[0] = v20;
  Value = mlir::ArrayAttr::getValue(v72);
  v72[0] = v15;
  v32 = mlir::ArrayAttr::getValue(v72);
  v72[0] = v23;
  v33 = mlir::ArrayAttr::getValue(v72);
  Strides = mlir::mps::Conv3DOp::getStrides(v83);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(v83);
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(v83))
  {
    [v31 setDataFormat:1];
    v58 = v32[1];
    v59 = v32[3];
    v34 = v33[2];
    v56 = v33[3];
    v57 = v32[2];
    v36 = v33;
    v35 = *v33;
    v54 = v34;
    v55 = v36[1];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v72, Strides, 0);
    mlir::DenseIntElementsAttr::end(&Strides, v67);
    v37 = v35;
    if (v73 != v68)
    {
      v45 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v72, &v61);
        v46 = v62;
        if (v62 >= 0x41)
        {
          if (v46 - llvm::APInt::countLeadingZerosSlowCase(&v61) <= 0x40)
          {
            v47 = *v61;
          }

          else
          {
            v47 = -1;
          }
        }

        else
        {
          v47 = v61;
        }

        v35 = v37;
        if (v45 == 1)
        {
          [v31 setStrideInPixelsY:v47];
        }

        else if (v45 == 2)
        {
          [v31 setStrideInPixelsX:v47];
        }

        if (v62 >= 0x41 && v61)
        {
          MEMORY[0x1E12E5B60](v61, 0x1000C8000313F17);
        }

        ++v73;
        ++v45;
      }

      while (v73 != v68);
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v72, InputAttributeNames, 0);
    mlir::DenseIntElementsAttr::end(&InputAttributeNames, v67);
    if (v73 != v68)
    {
      v38 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v72, &v61);
        v39 = v62;
        if (v62 >= 0x41)
        {
          if (v39 - llvm::APInt::countLeadingZerosSlowCase(&v61) <= 0x40)
          {
            v40 = *v61;
          }

          else
          {
            v40 = -1;
          }
        }

        else
        {
          v40 = v61;
        }

        v35 = v37;
        if (v38 == 1)
        {
          [v31 setDilationRateInY:v40];
        }

        else if (v38 == 2)
        {
          [v31 setDilationRateInX:v40];
        }

        if (v62 >= 0x41 && v61)
        {
          MEMORY[0x1E12E5B60](v61, 0x1000C8000313F17);
        }

        ++v73;
        ++v38;
      }

      while (v73 != v68);
    }
  }

  else
  {
    [v31 setDataFormat:0];
    v58 = v32[2];
    v59 = v32[1];
    v54 = v33[3];
    v55 = v33[2];
    v42 = v33;
    v35 = *v33;
    v56 = v42[1];
    v57 = v32[3];
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v72, Strides, 0);
    mlir::DenseIntElementsAttr::end(&Strides, v67);
    v43 = v35;
    if (v73 != v68)
    {
      v48 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v72, &v61);
        v49 = v62;
        if (v62 >= 0x41)
        {
          if (v49 - llvm::APInt::countLeadingZerosSlowCase(&v61) <= 0x40)
          {
            v50 = *v61;
          }

          else
          {
            v50 = -1;
          }
        }

        else
        {
          v50 = v61;
        }

        v35 = v43;
        if (v48 == 2)
        {
          [v31 setStrideInPixelsY:v50];
        }

        else if (v48 == 3)
        {
          [v31 setStrideInPixelsX:v50];
        }

        if (v62 >= 0x41 && v61)
        {
          MEMORY[0x1E12E5B60](v61, 0x1000C8000313F17);
        }

        ++v73;
        ++v48;
      }

      while (v73 != v68);
    }

    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v72, InputAttributeNames, 0);
    mlir::DenseIntElementsAttr::end(&InputAttributeNames, v67);
    if (v73 != v68)
    {
      v51 = 0;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v72, &v61);
        v52 = v62;
        if (v62 >= 0x41)
        {
          if (v52 - llvm::APInt::countLeadingZerosSlowCase(&v61) <= 0x40)
          {
            v53 = *v61;
          }

          else
          {
            v53 = -1;
          }
        }

        else
        {
          v53 = v61;
        }

        v35 = v43;
        if (v51 == 2)
        {
          [v31 setDilationRateInY:v53];
        }

        else if (v51 == 3)
        {
          [v31 setDilationRateInX:v53];
        }

        if (v62 >= 0x41 && v61)
        {
          MEMORY[0x1E12E5B60](v61, 0x1000C8000313F17);
        }

        ++v73;
        ++v51;
      }

      while (v73 != v68);
    }
  }

  if (mlir::mps::Conv3DOp::getWeightsLayout(v83) == 2)
  {
    [v31 setWeightsFormat:1];
    [v31 setKernelWidth:Value[3]];
    [v31 setKernelHeight:Value[2]];
    [v31 setInputFeatureChannels:Value[1]];
  }

  else
  {
    [v31 setWeightsFormat:0];
    [v31 setKernelWidth:Value[1]];
    [v31 setKernelHeight:*Value];
    [v31 setInputFeatureChannels:Value[2]];
    Value += 3;
  }

  [v31 setOutputFeatureChannels:*Value];
  v72[0] = v57;
  v72[1] = v58;
  v73 = 1;
  v74 = v59;
  v75 = v35;
  v76 = 0;
  LODWORD(v76) = getMPSDataType((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8));
  v67[0] = v54;
  v67[1] = v55;
  v68 = 1;
  v69 = v56;
  v70 = v35;
  v71 = 0;
  LODWORD(v71) = getMPSDataType((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v66 = 0;
  v61 = [v31 kernelWidth];
  v62 = [v31 kernelHeight];
  v63 = 1;
  v64 = [v31 inputFeatureChannels];
  v65 = [v31 outputFeatureChannels];
  LODWORD(v66) = getMPSDataType((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8));
  v44 = [MEMORY[0x1E69746A8] supportsPostfixForDevice:*(this + 1) convolutionDescriptor:v31 sourceTensorDescriptor:v72 destinationTensorDescriptor:v67 weightsTensorDescriptor:&v61];

  v8 = v44;
  return v8 | 0x100u;
}

void sub_1E082073C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E0821004(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1E0821458(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1E08219C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E0823A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);

    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {

    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a9);

  _Unwind_Resume(a1);
}

id *GPU::BroadcastToOpHandler::BroadcastToOpHandler(id *this, GPURegionRuntime *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v5 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v5 = &unk_1F5B513C0;
  if (!*(v5 + 4))
  {
    v6 = objc_alloc(MEMORY[0x1E6974740]);
    v7 = [*(this[2] + 6) metalDevice];
    v8 = [v6 initWithDevice:v7];
    v9 = this[1];
    this[1] = v8;

    [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  }

  return this;
}

void GPU::BroadcastToOpHandler::encodeNDArrayOp(GPU::BroadcastToOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(*(this + 3) + 72) + 24);
  v7 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v8 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v9 = [v7 mpsndarray];
  v10 = [v8 mpsndarray];
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = *(this + 1);
  v13 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v14 = *(a2 + 1);
  v16[0] = v10;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v12 encodeToMPSCommandEncoder:v13 commandBuffer:v14 sourceArrays:v15 destinationArray:v9];
}

unint64_t GPU::BroadcastToOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

void GPU::BroadcastGradientArgsOpHandler::encodeOp(GPU::BroadcastGradientArgsOpHandler *this, GPU::EncodeDescriptor *a2)
{
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 3);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), *(*(v4 + 72) + 24));
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    StaticType = 0;
    v6 = 0;
  }

  v7 = GPURegionRuntime::getStaticType(*(this + 2), *(*(v4 + 72) + 56));
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  mlir::mps::getBroadcastGradientArgs(StaticType, v6, v7, v8, &__p);
  v9 = *(this + 2);
  if (*(v4 + 36))
  {
    v10 = v4 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  GPURegionRuntime::writeIntTensorData(v9, a2, NextResultAtOffset, __p, (v13 - __p) >> 3);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_1E0824020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GPU::BroadcastToOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(*(a1 + 24) + 72) + 24), 0);

  return MPSKernelDAG::broadcastOp();
}

void GPU::BroadcastToOpHandler::~BroadcastToOpHandler(GPU::BroadcastToOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::BroadcastGradientArgsOpHandler::~BroadcastGradientArgsOpHandler(GPU::BroadcastGradientArgsOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

GPU::ReverseOpHandler *GPU::ReverseOpHandler::ReverseOpHandler(GPU::ReverseOpHandler *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B51490;
  *(v6 + 15) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = *(this + 1);
  *(this + 1) = v9;

  v11 = *(this + 15);
  *(this + 15) = 0;

  return this;
}

void GPU::ReverseOpHandler::encodeNDArrayOp(GPU::ReverseOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v87[1] = *MEMORY[0x1E69E9840];
  v63 = a3;
  v85 = *(this + 3);
  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v85, 0);
  v6 = *(*(v85 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v7 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v64 = [v7 mpsndarray];

  v8 = [(NSArray *)v63 objectAtIndexedSubscript:0];
  v9 = [v8 mpsndarray];
  v65 = v9;
  if (v64)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = v11;
  v86[1] = v12;
  mlir::CallableOpInterface::getArgAttrsAttr(v86);
  v72 = v13;
  v14 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v85, 1u);
  if ((*(v85 + 46) & 0x80) != 0)
  {
    v15 = *(v85 + 72);
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
LABEL_10:
      v17 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
      goto LABEL_10;
    }
  }

  v17 = *(v15 + 32 * v16 + 24);
LABEL_15:
  RuntimeUtils::getAxes(v17, v72, &v83);
  v18 = v84 - v83;
  if (v84 == v83)
  {
    v22 = 0;
  }

  else
  {
    v19 = v18 >> 3;
    if ((v18 >> 3) <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v18 >> 3;
    }

    if (v19 > 7)
    {
      v24 = vdupq_n_s64(v72);
      v21 = v20 & 0xFFFFFFFFFFFFFFF8;
      v25 = v83 + 2;
      v26 = 0uLL;
      v27.i64[0] = 0x100000001;
      v27.i64[1] = 0x100000001;
      v28 = v20 & 0xFFFFFFFFFFFFFFF8;
      v29 = 0uLL;
      do
      {
        v31 = v25[-2];
        v30 = v25[-1];
        v33 = *v25;
        v32 = v25[1];
        v25 += 4;
        v26 = vorrq_s8(vshlq_u32(v27, vuzp1q_s32(vaddq_s64(v24, vmvnq_s8(vaddq_s64(vandq_s8(vcltzq_s64(v31), v24), v31))), vaddq_s64(v24, vmvnq_s8(vaddq_s64(vandq_s8(vcltzq_s64(v30), v24), v30))))), v26);
        v29 = vorrq_s8(vshlq_u32(v27, vuzp1q_s32(vaddq_s64(v24, vmvnq_s8(vaddq_s64(vandq_s8(vcltzq_s64(v33), v24), v33))), vaddq_s64(v24, vmvnq_s8(vaddq_s64(vandq_s8(vcltzq_s64(v32), v24), v32))))), v29);
        v28 -= 8;
      }

      while (v28);
      v34 = vorrq_s8(v29, v26);
      *v34.i8 = vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v22 = v34.i32[0] | v34.i32[1];
      v23 = v72;
      if (v19 == v21)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = v72;
    }

    v35 = v20 - v21;
    v36 = &v83->i64[v21];
    do
    {
      v37 = *v36++;
      v22 |= 1 << (v23 + ~(((v37 >> 63) & v23) + v37));
      --v35;
    }

    while (v35);
  }

LABEL_27:
  v38 = [v65 descriptor];
  v39 = v38;
  if (v38)
  {
    [v38 getShapeVector];
  }

  else
  {
    v82 = 0;
  }

  v73 = v82;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  if (v72)
  {
    if (!(v72 >> 61))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v62 = this;
  v66 = a2;
  v67 = v8;
  v41 = 0;
  v75 = 0u;
  do
  {
    v42 = v73[1];
    if (v42 != *v73)
    {
      if (((v42 - *v73) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v43 = v75;
    v77 = v75;
    *(&v77 & 0xFFFFFFFFFFFFFFF3 | (4 * (v41 & 3))) = 0;
    v44 = v77;
    v78 = v77;
    *(&v78 & 0xFFFFFFFFFFFFFFF3 | (4 * (v41 & 3))) = 1;
    v43.i32[0] = 0;
    v40.i32[0] = (1 << v41) & v22;
    v75 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v40, v43), 0), v44, v78);
    ++v41;
  }

  while (v41 != 4);
  v45 = v64;
  v74 = v65;
  v68 = *(this + 1);
  v70 = v45;
  v46 = *(this + 15);
  if (!v46 || *(this + 40) != 1)
  {
    v47 = [v70 descriptor];
    [v47 dataType];

    operator new();
  }

  v69 = v46;

  v71 = 0;
  v48 = v70;
  v76 = v74;
  do
  {
    v49 = [v70 descriptor];
    v50 = [v74 descriptor];
    if (*(v74 + *MEMORY[0x1E69744E8]))
    {
      [v74 setReadCount:{objc_msgSend(v74, "readCount") + 1}];
    }

    v51 = *(v66 + 1);
    v52 = GPU::EncodeDescriptor::getcomputeEncoder(v66);
    v53 = [v74 safeArrayViewWithCommandBuffer:v51 computeEncoder:v52 descriptor:v50 aliasing:0];

    v76 = v53;
    if (!++v71 && *(v70 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v70 setReadCount:{objc_msgSend(v70, "readCount") + 1}];
    }

    v54 = *(v66 + 1);
    v55 = GPU::EncodeDescriptor::getcomputeEncoder(v66);
    v56 = [v70 safeArrayViewWithCommandBuffer:v54 computeEncoder:v55 descriptor:v49 aliasing:0];

    v57 = GPU::EncodeDescriptor::getcomputeEncoder(v66);
    v58 = *(v66 + 1);
    v87[0] = v56;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:1];
    [v68 encodeToMPSCommandEncoder:v57 commandBuffer:v58 sourceArrays:v59 resultState:0 destinationArray:v76 kernelDAGObject:v69];

    if (*(v76 + *MEMORY[0x1E69744E8]) == 1)
    {
      [v76 setReadCount:{objc_msgSend(v76, "readCount") - 1}];
    }

    v48 = v56;
  }

  while (v71 != 1);

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  v60 = v82;
  v82 = 0;
  if (v60)
  {
    v61 = *v60;
    if (*v60)
    {
      v60[1] = v61;
      operator delete(v61);
    }

    MEMORY[0x1E12E5B90](v60, 0x10C402FEFCB83);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }
}

id *GPU::StridedSliceOpHandler::StridedSliceOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B514E0;
  *(v6 + 16) = 0;
  *(v6 + 17) = 0;
  *(v6 + 15) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  v11 = this[15];
  this[15] = 0;

  v12 = this[17];
  this[17] = 0;

  v13 = this[16];
  this[16] = 0;

  return this;
}

void sub_1E08253EC(_Unwind_Exception *a1)
{
  v3 = v2;

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

void GPU::StridedSliceOpHandler::encodeOp(GPU::StridedSliceOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v383[2] = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v4 = *(this + 2);
  v318 = this;
  v379 = *(this + 3);
  v5 = *(v379 + 72);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  StaticType = GPURegionRuntime::getStaticType(v4, v6);
  v9 = StaticType;
  if (StaticType)
  {
    StaticType = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  v378[0] = v9;
  v378[1] = StaticType;
  mlir::CallableOpInterface::getArgAttrsAttr(v378);
  v352 = v10;
  v11 = (*(**(v318 + 2) + 48))(*(v318 + 2), v6, 0);
  v303 = [v11 mpsndarray];

  if (!v303 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = [v303 descriptor];
  v13 = v12;
  if (v12)
  {
    [v12 getShapeVector];
  }

  else
  {
    v377 = 0;
  }

  v323 = v377;
  Groups = mlir::mps::Conv3DOp::getGroups(&v379);
  Index = mlir::pdl::ResultOp::getIndex(&v379);
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v379);
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v379);
  v376 = 0;
  v375 = 0;
  GPURegionRuntime::readIntTensorData(*(v318 + 2), *(*(v379 + 72) + 56), &v376 + 1, &v373);
  GPURegionRuntime::readIntTensorData(*(v318 + 2), *(*(v379 + 72) + 88), &v376, &v371);
  GPURegionRuntime::readIntTensorData(*(v318 + 2), *(*(v379 + 72) + 120), &v375, __p);
  if (HIBYTE(v376) == 1)
  {
    if (v376)
    {
      if (v375)
      {
        v308 = 0;
        v14 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_40;
      }

      goto LABEL_35;
    }

LABEL_32:
    GPURegionRuntime::waitAndReadIntTensorData(*(v318 + 2), a2, *(*(v379 + 72) + 88), &v380);
    if (v371)
    {
      *(&v371 + 1) = v371;
      operator delete(v371);
    }

    v371 = v380;
    v372 = v381;
LABEL_35:
    if (v375)
    {
      LOBYTE(v15) = 0;
      v308 = 0;
      v14 = 0;
    }

    else
    {
      GPURegionRuntime::waitAndReadIntTensorData(*(v318 + 2), a2, *(*(v379 + 72) + 120), &v380);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      LOBYTE(v15) = 0;
      v308 = 0;
      v14 = 0;
      *__p = v380;
      v370 = v381;
    }

    goto LABEL_40;
  }

  if ((v376 & 1) == 0)
  {
    goto LABEL_29;
  }

  v16 = v375;
  if (Index)
  {
    v16 = 0;
  }

  if ((v16 & IsSize) != 1)
  {
LABEL_29:
    GPURegionRuntime::waitAndReadIntTensorData(*(v318 + 2), a2, *(*(v379 + 72) + 56), &v380);
    if (v373)
    {
      *(&v373 + 1) = v373;
      operator delete(v373);
    }

    v373 = v380;
    v374 = v381;
    if (v376)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v17 = *v323;
  v18 = *(v323 + 8) - *v323;
  if (!v18)
  {
    v308 = 0;
    v23 = __p[0];
    v15 = __p[1] - __p[0];
    if (__p[1] != __p[0])
    {
      goto LABEL_24;
    }

    goto LABEL_453;
  }

  v19 = 0;
  v20 = v18 >> 3;
  if (v20 <= 1)
  {
    v20 = 1;
  }

  v21 = 1;
  do
  {
    v22 = *v17++;
    if (v22 > 1)
    {
      v19 = v21;
    }

    ++v21;
    --v20;
  }

  while (v20);
  v308 = v19;
  if (v19 <= 8)
  {
    v23 = __p[0];
    v15 = __p[1] - __p[0];
    if (__p[1] != __p[0])
    {
LABEL_24:
      v24 = v15 >> 3;
      v25 = 1;
      do
      {
        v27 = *v23++;
        v26 = v27;
        if (v25 >= v24)
        {
          break;
        }

        ++v25;
      }

      while (v26 == 1);
      if (v26 == 1)
      {
        LOBYTE(v15) = 0;
        v14 = 1;
        goto LABEL_40;
      }

      goto LABEL_449;
    }

LABEL_453:
    v14 = 1;
    goto LABEL_40;
  }

LABEL_449:
  GPURegionRuntime::waitAndReadIntTensorData(*(v318 + 2), a2, *(*(v379 + 72) + 56), &v380);
  if (v373)
  {
    *(&v373 + 1) = v373;
    operator delete(v373);
  }

  LOBYTE(v15) = 0;
  v14 = 0;
  v373 = v380;
  v374 = v381;
LABEL_40:
  if (IsSize)
  {
    v28 = *(v323 + 8);
    if (v28 != *v323)
    {
      v29 = 0;
      v30 = (v28 - *v323) >> 3;
      v31 = (*(&v371 + 1) - v371) >> 3;
      if (v30 <= 1)
      {
        v30 = 1;
      }

      v32 = (v28 - 8);
      do
      {
        if (v29 >= (*(&v373 + 1) - v373) >> 3)
        {
          v39 = 0;
          v42 = *v32--;
          v40 = v42;
          if (v29 >= v31)
          {
LABEL_45:
            v33 = 0;
            goto LABEL_46;
          }
        }

        else
        {
          v39 = *(v373 + 8 * v29);
          v41 = *v32--;
          v40 = v41;
          if (v29 >= v31)
          {
            goto LABEL_45;
          }
        }

        v33 = *(v371 + 8 * v29);
        if (v33 < 0)
        {
          if ((v15 & 1) == 0)
          {
            GPURegionRuntime::waitAndReadIntTensorData(*(v318 + 2), a2, *(*(v379 + 72) + 56), &v380);
            if (v373)
            {
              *(&v373 + 1) = v373;
              operator delete(v373);
            }

            v373 = v380;
            v374 = v381;
          }

          v314 = 0;
          v310 = 0;
          v366 = 0;
          v367 = 0;
          v368 = 0;
          if (!v352)
          {
            goto LABEL_129;
          }

LABEL_72:
          for (i = 0; i != v352; ++i)
          {
            v48 = v373;
            v49 = *(&v373 + 1) - v373;
            v50 = (*(&v373 + 1) - v373) >> 3;
            if (i >= v50)
            {
              if (*(&v373 + 1) >= v374)
              {
                v52 = v50 + 1;
                if ((v50 + 1) >> 61)
                {
                  std::vector<long>::__throw_length_error[abi:ne200100]();
                }

                v53 = &v374[-v373];
                if (&v374[-v373] >> 2 > v52)
                {
                  v52 = v53 >> 2;
                }

                if (v53 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v54 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v54 = v52;
                }

                if (v54)
                {
                  if (!(v54 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                *(8 * v50) = 0;
                v51 = 8 * v50 + 8;
                memcpy(0, v48, v49);
                *&v373 = 0;
                *(&v373 + 1) = v51;
                v374 = 0;
                if (v48)
                {
                  operator delete(v48);
                }
              }

              else
              {
                **(&v373 + 1) = 0;
                v51 = *(&v48 + 1) + 8;
              }

              *(&v373 + 1) = v51;
              Index |= 1 << i;
            }

            v55 = v371;
            v56 = *(&v371 + 1) - v371;
            v57 = (*(&v371 + 1) - v371) >> 3;
            if (i >= v57)
            {
              if (*(&v371 + 1) >= v372)
              {
                v59 = v57 + 1;
                if ((v57 + 1) >> 61)
                {
                  std::vector<long>::__throw_length_error[abi:ne200100]();
                }

                v60 = &v372[-v371];
                if (&v372[-v371] >> 2 > v59)
                {
                  v59 = v60 >> 2;
                }

                if (v60 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v61 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v61 = v59;
                }

                if (v61)
                {
                  if (!(v61 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                *(8 * v57) = 0;
                v58 = 8 * v57 + 8;
                memcpy(0, v55, v56);
                *&v371 = 0;
                *(&v371 + 1) = v58;
                v372 = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                **(&v371 + 1) = 0;
                v58 = *(&v55 + 1) + 8;
              }

              *(&v371 + 1) = v58;
              Offset |= 1 << i;
            }

            v62 = __p[0];
            v47 = __p[1];
            v63 = __p[1] - __p[0];
            v64 = (__p[1] - __p[0]) >> 3;
            if (i >= v64)
            {
              if (__p[1] < v370)
              {
                *__p[1] = 1;
                v47 += 8;
              }

              else
              {
                v65 = v64 + 1;
                if ((v64 + 1) >> 61)
                {
                  std::vector<long>::__throw_length_error[abi:ne200100]();
                }

                v66 = v370 - __p[0];
                if ((v370 - __p[0]) >> 2 > v65)
                {
                  v65 = v66 >> 2;
                }

                if (v66 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v67 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v67 = v65;
                }

                if (v67)
                {
                  if (!(v67 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                *(8 * v64) = 1;
                v47 = (8 * v64 + 8);
                memcpy(0, v62, v63);
                __p[0] = 0;
                __p[1] = v47;
                v370 = 0;
                if (v62)
                {
                  operator delete(v62);
                }
              }

              __p[1] = v47;
            }
          }

          goto LABEL_130;
        }

LABEL_46:
        v34 = (v40 & (v39 >> 63)) + v39;
        v35 = v34 < 0;
        v36 = v33 + v34;
        v38 = v35 || v36 >= v40;
        v14 |= v38;
        ++v29;
      }

      while (v30 != v29);
    }
  }

  v366 = 0;
  v367 = 0;
  v368 = 0;
  if ((v14 & 1) == 0)
  {
    v314 = 0;
    v310 = 0;
    if (!v352)
    {
      goto LABEL_129;
    }

    goto LABEL_72;
  }

  v43 = (*(**(v318 + 2) + 48))(*(v318 + 2), v7, 0);
  v310 = [v43 mpsndarray];

  if (v352)
  {
    if (!(v352 >> 61))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v373)
  {
    *(&v373 + 1) = v373;
    operator delete(v373);
  }

  v373 = 0uLL;
  v374 = 0;
  v44 = [v310 descriptor];
  v45 = v44;
  if (v44)
  {
    [v44 getShapeVector];
  }

  else
  {
    *&v380 = 0;
  }

  v68 = v380;
  if (&v366 != v380)
  {
    std::vector<long>::__assign_with_size[abi:ne200100]<long *,long *>(&v366, *v380, *(v380 + 8), (*(v380 + 8) - *v380) >> 3);
    v68 = v380;
  }

  *&v380 = 0;
  if (v68)
  {
    v69 = *v68;
    if (*v68)
    {
      *(v68 + 8) = v69;
      operator delete(v69);
    }

    MEMORY[0x1E12E5B90](v68, 0x10C402FEFCB83);
  }

  v314 = 1;
LABEL_129:
  v47 = __p[1];
LABEL_130:
  v313 = a2;
  v70 = 0;
  if (v47 != __p[0])
  {
    v71 = 0;
    v72 = (v47 - __p[0]) >> 3;
    if (v72 <= 1)
    {
      v72 = 1;
    }

    do
    {
      if (*(__p[0] + v71) == 1)
      {
        v73 = 0;
      }

      else
      {
        v73 = (~Groups >> v71) & 1;
      }

      v70 = v73 | v70 & 1;
      ++v71;
    }

    while (v72 != v71);
  }

  v311 = v70;
  if (!v352)
  {
    v335 = 0;
    v337 = 0;
    v348 = 0;
    v339 = 0;
    v341 = 0;
    v343 = 0;
    __src = 0;
    v99 = v314;
    if (((v314 | v70) & 1) == 0)
    {
      goto LABEL_197;
    }

LABEL_178:
    v100 = v99;
    v101 = v318;
    v322 = *(v318 + 1);
    if (v100)
    {
      v102 = objc_alloc(MEMORY[0x1E69747C8]);
      v103 = [*(v313 + 1) device];
      v104 = [v102 initWithDevice:v103];

      v322 = v104;
      v101 = v318;
    }

    if (*(v379 + 36))
    {
      v105 = v379 - 16;
    }

    else
    {
      v105 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v105, 0);
    v107 = (*(**(v101 + 2) + 80))(*(v101 + 2), NextResultAtOffset, *(v313 + 1), 0, 0, 1);
    v333 = [v107 mpsndarray];

    if (Groups)
    {
      [v333 descriptor];
      v108 = v352;
      v330 = v109 = v318;
      v110 = [v330 getShape];
      v111 = [MEMORY[0x1E695DF70] arrayWithCapacity:v352];
      if (v352)
      {
        v112 = 0;
        v113 = 0;
        v109 = v318;
        do
        {
          v114 = *v113++;
          if (v114 || v112 >= [v110 count])
          {
            v115 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
            [v111 addObject:v115];
          }

          else
          {
            v115 = [v110 objectAtIndexedSubscript:v112];
            [v111 addObject:v115];
            ++v112;
          }

          --v108;
        }

        while (v108);
      }

      v116 = *(v109 + 17);
      if (!v116)
      {
        v117 = objc_alloc(MEMORY[0x1E6974740]);
        v118 = [*(*(v109 + 2) + 48) metalDevice];
        v119 = [v117 initWithDevice:v118];
        v120 = *(v109 + 17);
        *(v109 + 17) = v119;

        v116 = *(v109 + 17);
      }

      v121 = v116;
      if (*(v333 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v333 setReadCount:{objc_msgSend(v333, "readCount") + 1}];
      }

      v122 = GPU::EncodeDescriptor::getcomputeEncoder(v313);
      v123 = [v121 reshapeWithCommandEncoder:v122 commandBuffer:*(v313 + 1) sourceArray:v333 shape:v111 destinationArray:0];

      v124 = v123;
      v125 = v124;
    }

    else
    {
      v124 = 0;
      v125 = v333;
    }

    v302 = v124;
    v334 = v125;
    v159 = 0;
    v363 = 0;
    v364 = 0;
    v365 = 0;
    v360 = 0;
    v361 = 0;
    v160 = v308;
    v161 = 4;
    v362 = 0;
    if (v308 <= 4)
    {
      v160 = 4;
    }

    if (v100)
    {
      v161 = v160;
    }

    v325 = v161;
    *v327 = 0u;
    *v328 = 0u;
    v357 = 0;
    v358 = 0;
    *v326 = 0u;
    v359 = 0;
    v162 = v348;
    while (1)
    {
      if (v343 == __src)
      {
        v164 = 0;
        v165 = v339;
        if (v339)
        {
LABEL_237:
          v166 = *(v165 - 8);
          v339 = v165 - 8;
          v167 = v341;
          if (v341)
          {
            goto LABEL_238;
          }

          goto LABEL_246;
        }
      }

      else
      {
        v164 = *(v343 - 1);
        v343 -= 8;
        v165 = v339;
        if (v339)
        {
          goto LABEL_237;
        }
      }

      v166 = 1;
      v167 = v341;
      if (v341)
      {
LABEL_238:
        v168 = *(v167 - 8);
        v341 = v167 - 8;
        if (v162)
        {
          goto LABEL_239;
        }

        goto LABEL_247;
      }

LABEL_246:
      v168 = 0;
      if (v162)
      {
LABEL_239:
        v169 = *(v162 - 8);
        v162 -= 8;
        v170 = v169 == 0;
        v171 = v337;
        if (v337)
        {
          goto LABEL_240;
        }

        goto LABEL_248;
      }

LABEL_247:
      v170 = 1;
      v171 = v337;
      if (v337)
      {
LABEL_240:
        v337 = v171 - 8;
        v172 = *(v171 - 8) == 0;
        v173 = v335;
        v349 = v162;
        if (v335)
        {
          goto LABEL_241;
        }

        goto LABEL_249;
      }

LABEL_248:
      v172 = 1;
      v173 = v335;
      v349 = v162;
      if (v335)
      {
LABEL_241:
        v335 = v173 - 8;
        v174 = *(v173 - 8) == 0;
        v175 = *(v323 + 8);
        v176 = v175 - *v323;
        if (v175 != *v323)
        {
          goto LABEL_242;
        }

        goto LABEL_250;
      }

LABEL_249:
      v174 = 1;
      v177 = *(v323 + 8);
      v176 = v177 - *v323;
      if (v177 != *v323)
      {
LABEL_242:
        if ((v176 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

LABEL_250:
      v162 = v349;
      v178 = ((v164 >> 63) & 1) + v164;
      v179 = v178 + v168;
      if (v168 == -1)
      {
        v179 = 1;
      }

      if (!IsSize)
      {
        v179 = v168;
      }

      v180 = ((v179 >> 63) & 1) + v179;
      v181 = (v166 >> 63) + 1;
      if (v178 < v181)
      {
        v181 = ((v164 >> 63) & 1) + v164;
      }

      if (v178 < v166 >> 63)
      {
        v181 = v166 >> 63;
      }

      if (v180 >= 1)
      {
        v182 = 1;
      }

      else
      {
        v182 = v180;
      }

      if (v180 < -1)
      {
        v182 = -1;
      }

      if (v166 < 0)
      {
        v183 = -1;
      }

      else
      {
        v183 = 1;
      }

      if (v172)
      {
        v183 = v182;
      }

      if (v174)
      {
        v184 = v181;
      }

      else
      {
        v184 = 0;
      }

      if (v170)
      {
        v185 = v183;
      }

      else
      {
        v185 = v184 + 1;
      }

      v356 = *v326;
      *(&v356 & 0xFFFFFFFFFFFFFFF3 | (4 * (v159 & 3))) = 0;
      if (v166 < 0)
      {
        v184 = -v184;
        v185 = -v185;
        v355 = v356;
        *(&v355 & 0xFFFFFFFFFFFFFFF3 | (4 * (v159 & 3))) = 1;
        *v326 = v355;
        v166 = -v166;
      }

      else
      {
        *v326 = v356;
      }

      v186 = v352;
      v353 = *v327;
      *(&v353 & 0xFFFFFFFFFFFFFFF3 | (4 * (v159 & 3))) = v184;
      *v327 = v353;
      v354 = *v328;
      *(&v354 & 0xFFFFFFFFFFFFFFF3 | (4 * (v159 & 3))) = v166;
      *v328 = v354;
      if (v159 >= v352)
      {
        goto LABEL_234;
      }

      v187 = v364;
      if (v364 >= v365)
      {
        v192 = v363;
        v193 = v364 - v363;
        v194 = (v364 - v363) >> 3;
        v195 = v194 + 1;
        if ((v194 + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        v196 = v365 - v363;
        if ((v365 - v363) >> 2 > v195)
        {
          v195 = v196 >> 2;
        }

        if (v196 >= 0x7FFFFFFFFFFFFFF8)
        {
          v197 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v197 = v195;
        }

        if (v197)
        {
          if (!(v197 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v198 = (8 * v194);
        v199 = &v198[-((v364 - v363) >> 3)];
        *v198 = 1;
        v200 = (v198 + 1);
        memcpy(v199, v192, v193);
        v363 = v199;
        v364 = v200;
        v365 = 0;
        if (v192)
        {
          operator delete(v192);
        }

        v162 = v349;
        v364 = v200;
        v188 = v185 - v184;
        v190 = v361;
        v189 = v362;
        if (v361 >= v362)
        {
LABEL_293:
          v201 = v360;
          v202 = v190 - v360;
          v203 = (v190 - v360) >> 3;
          v204 = v203 + 1;
          if ((v203 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v205 = v189 - v360;
          if (v205 >> 2 > v204)
          {
            v204 = v205 >> 2;
          }

          if (v205 >= 0x7FFFFFFFFFFFFFF8)
          {
            v206 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v206 = v204;
          }

          if (v206)
          {
            if (!(v206 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v207 = v203;
          v208 = (8 * v203);
          v209 = &v208[-v207];
          *v208 = v188;
          v191 = (v208 + 1);
          memcpy(v209, v201, v202);
          v360 = v209;
          v361 = v191;
          v362 = 0;
          if (v201)
          {
            operator delete(v201);
          }

          v162 = v349;
          goto LABEL_305;
        }
      }

      else
      {
        *v364 = 1;
        v364 = v187 + 8;
        v188 = v185 - v184;
        v190 = v361;
        v189 = v362;
        if (v361 >= v362)
        {
          goto LABEL_293;
        }
      }

      *v190 = v188;
      v191 = v190 + 8;
LABEL_305:
      v361 = v191;
      v210 = v358;
      v211 = (v166 + v188 - 1) / v166;
      if (v358 < v359)
      {
        *v358 = v211;
        v163 = (v210 + 8);
      }

      else
      {
        v212 = v357;
        v213 = v358 - v357;
        v214 = (v358 - v357) >> 3;
        v215 = v214 + 1;
        if ((v214 + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        v216 = v359 - v357;
        if ((v359 - v357) >> 2 > v215)
        {
          v215 = v216 >> 2;
        }

        if (v216 >= 0x7FFFFFFFFFFFFFF8)
        {
          v217 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v217 = v215;
        }

        if (v217)
        {
          if (!(v217 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v214) = v211;
        v163 = 8 * v214 + 8;
        memcpy(0, v212, v213);
        v357 = 0;
        v358 = v163;
        v359 = 0;
        if (v212)
        {
          operator delete(v212);
        }

        v162 = v349;
      }

      v358 = v163;
LABEL_234:
      if (v325 == ++v159)
      {
        if (v325 < v352)
        {
          v218 = v352 - v325;
          do
          {
            v220 = v364;
            if (v364 >= v365)
            {
              v222 = v363;
              v223 = v364 - v363;
              v224 = (v364 - v363) >> 3;
              v225 = v224 + 1;
              if ((v224 + 1) >> 61)
              {
                std::vector<long>::__throw_length_error[abi:ne200100]();
              }

              v226 = v365 - v363;
              if ((v365 - v363) >> 2 > v225)
              {
                v225 = v226 >> 2;
              }

              if (v226 >= 0x7FFFFFFFFFFFFFF8)
              {
                v227 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v227 = v225;
              }

              if (v227)
              {
                if (!(v227 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(8 * v224) = 1;
              v221 = 8 * v224 + 8;
              memcpy(0, v222, v223);
              v363 = 0;
              v364 = v221;
              v365 = 0;
              if (v222)
              {
                operator delete(v222);
              }
            }

            else
            {
              *v364 = 1;
              v221 = (v220 + 8);
            }

            v364 = v221;
            v228 = v358;
            if (v358 < v359)
            {
              *v358 = 1;
              v219 = (v228 + 8);
            }

            else
            {
              v229 = v357;
              v230 = v358 - v357;
              v231 = (v358 - v357) >> 3;
              v232 = v231 + 1;
              if ((v231 + 1) >> 61)
              {
                std::vector<long>::__throw_length_error[abi:ne200100]();
              }

              v233 = v359 - v357;
              if ((v359 - v357) >> 2 > v232)
              {
                v232 = v233 >> 2;
              }

              if (v233 >= 0x7FFFFFFFFFFFFFF8)
              {
                v234 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v234 = v232;
              }

              if (v234)
              {
                if (!(v234 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(8 * v231) = 1;
              v219 = 8 * v231 + 8;
              memcpy(0, v229, v230);
              v357 = 0;
              v358 = v219;
              v359 = 0;
              if (v229)
              {
                operator delete(v229);
              }
            }

            v358 = v219;
            --v218;
          }

          while (v218);
        }

        v235 = v303;
        v331 = v235;
        if (v314)
        {
          v236 = v310;
          v237 = *(v318 + 16);
          if (!v237 || *(v318 + 40) != 1)
          {
            [v331 dataType];
            [v236 dataType];
            operator new();
          }

          v238 = v237;

          v186 = v352;
        }

        else
        {
          v239 = *(v318 + 15);
          if (!v239 || *(v318 + 40) != 1)
          {
            v240 = [v235 descriptor];
            [v240 dataType];

            operator new();
          }

          v238 = v239;
        }

        v309 = v325 - v186;

        v312 = v238;
        if (v325 >= v186)
        {
          v268 = v331;
          v269 = v331;
          v270 = v334;
          v271 = v334;
          v244 = 1;
LABEL_411:
          v351 = 0;
          v274 = v270;
          v345 = v268;
          do
          {
            v275 = [v331 descriptor];
            v276 = v244;
            v277 = [v270 descriptor];
            v278 = 0;
            v279 = 0;
            v280 = 0;
            v281 = v325;
            v282 = v351;
            if (v325 < v352)
            {
              do
              {
                v283 = *v278++;
                v284 = v282 / v283;
                v285 = v282 % v283;
                v287 = *v279++;
                v286 = v287;
                v288 = *v280++;
                [v275 sliceDimension:v281 withSubrange:{v286 + v285 * v288, 1}];
                [v277 sliceDimension:v281++ withSubrange:{v285, 1}];
                v282 = v284;
              }

              while (v352 != v281);
            }

            v244 = v276;
            if (++v351 < v276 && *(v331 + *MEMORY[0x1E69744E8]) == 1)
            {
              [v331 setReadCount:{objc_msgSend(v331, "readCount") + 1}];
            }

            v289 = *(v313 + 1);
            v290 = GPU::EncodeDescriptor::getcomputeEncoder(v313);
            v291 = [v331 safeArrayViewWithCommandBuffer:v289 computeEncoder:v290 descriptor:v275 aliasing:0];

            v345 = v291;
            if (*(v334 + *MEMORY[0x1E69744E8]) == 1)
            {
              [v334 setReadCount:{objc_msgSend(v334, "readCount") + 1}];
            }

            v292 = *(v313 + 1);
            v293 = GPU::EncodeDescriptor::getcomputeEncoder(v313);
            v294 = [v334 safeArrayViewWithCommandBuffer:v292 computeEncoder:v293 descriptor:v277 aliasing:0];

            v295 = GPU::EncodeDescriptor::getcomputeEncoder(v313);
            v296 = *(v313 + 1);
            if (v314)
            {
              v383[0] = v345;
              v383[1] = v310;
              [MEMORY[0x1E695DEC8] arrayWithObjects:v383 count:2];
            }

            else
            {
              v382 = v345;
              [MEMORY[0x1E695DEC8] arrayWithObjects:&v382 count:1];
            }
            v297 = ;
            [v322 encodeToMPSCommandEncoder:v295 commandBuffer:v296 sourceArrays:v297 resultState:0 destinationArray:v294 kernelDAGObject:v312];

            if (*(v294 + *MEMORY[0x1E69744E8]) == 1)
            {
              [v294 setReadCount:{objc_msgSend(v294, "readCount") - 1}];
            }

            v274 = v294;
            v270 = v334;
          }

          while (v351 != v276);
          v298 = v294;
          v299 = v302;
          if (!v302)
          {
            goto LABEL_428;
          }
        }

        else
        {
          v241 = 0;
          v242 = 0;
          v243 = 0;
          v317 = 0;
          v320 = 0;
          v306 = v339 - 8;
          v307 = v343 - 8;
          v304 = v349 - 8;
          v305 = v341 - 8;
          v336 = v335 - 8;
          v338 = v337 - 8;
          v244 = 1;
          v245 = v325;
          do
          {
            v340 = v243;
            v342 = v242;
            v350 = v245;
            v344 = v244;
            v246 = *&v307[8 * v241];
            v247 = *(v306 + 8 * v241);
            v248 = *(v305 + 8 * v241);
            v249 = *(v323 + 8);
            if (v249 != *v323)
            {
              if (((v249 - *v323) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<long>::__throw_length_error[abi:ne200100]();
            }

            v250 = ((v246 >> 63) & 1) + v246;
            v251 = v250 + v248;
            if (v248 == -1)
            {
              v251 = 1;
            }

            if (!IsSize)
            {
              v251 = *(v305 + 8 * v241);
            }

            v252 = ((v251 >> 63) & 1) + v251;
            v253 = v247 >= 0;
            if (v247 < 0)
            {
              v254 = -1;
            }

            else
            {
              v254 = 1;
            }

            if (v250 < v253)
            {
              v253 = ((v246 >> 63) & 1) + v246;
            }

            if (v250 >= v247 >> 63)
            {
              v255 = v253;
            }

            else
            {
              v255 = v247 >> 63;
            }

            if (v252 >= 1)
            {
              v256 = 1;
            }

            else
            {
              v256 = v252;
            }

            if (v252 < -1)
            {
              v257 = -1;
            }

            else
            {
              v257 = v256;
            }

            if (*(v338 + 8 * v241))
            {
              v257 = v254;
            }

            if (*(v336 + 8 * v241))
            {
              v258 = 0;
            }

            else
            {
              v258 = v255;
            }

            if (*(v304 + 8 * v241))
            {
              v259 = v258 + 1;
            }

            else
            {
              v259 = v257;
            }

            if (v247 < 1)
            {
              v260 = v247 + 1;
            }

            else
            {
              v260 = v247 - 1;
            }

            v261 = v320;
            v262 = v320 >> 3;
            if (((v320 >> 3) + 1) >> 61)
            {
              std::vector<long>::__throw_length_error[abi:ne200100]();
            }

            if (v320 >> 3 != -1)
            {
              if (!(((v320 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v262) = v258;
            v320 = 8 * v262 + 8;
            memcpy(0, 0, v261);
            v263 = v317;
            v264 = v317 >> 3;
            if (((v317 >> 3) + 1) >> 61)
            {
              std::vector<long>::__throw_length_error[abi:ne200100]();
            }

            if (v317 >> 3 != -1)
            {
              if (!(((v317 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v264) = v247;
            v317 = 8 * v264 + 8;
            memcpy(0, 0, v263);
            v265 = (v260 - v258 + v259) / v247;
            v242 = v342;
            if (v340 < v342)
            {
              *v340 = v265;
              v243 = v340 + 8;
            }

            else
            {
              v266 = v340 >> 3;
              v267 = (v340 >> 3) + 1;
              if (v267 >> 61)
              {
                std::vector<long>::__throw_length_error[abi:ne200100]();
              }

              if (v342 >> 2 > v267)
              {
                v267 = v342 >> 2;
              }

              if (v267)
              {
                if (!(v267 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v242 = 0;
              *(8 * v266) = v265;
              v243 = 8 * v266 + 8;
              memcpy(0, 0, v340);
            }

            v244 = v265 * v344;
            v245 = v350 + 1;
            --v241;
          }

          while (v309 != v241);
          v272 = v331;
          v270 = v334;
          v273 = v334;
          if (v244)
          {
            v268 = v331;
            goto LABEL_411;
          }

          v298 = v273;
          v345 = v272;
          v299 = v302;
          if (!v302)
          {
LABEL_428:

            if (v357)
            {
              v358 = v357;
              operator delete(v357);
            }

            v158 = v302;
            if (v360)
            {
              v361 = v360;
              operator delete(v360);
            }

            if (v363)
            {
              v364 = v363;
              operator delete(v363);
            }

            goto LABEL_434;
          }
        }

        if (*(v299 + *MEMORY[0x1E69744E8]) == 1)
        {
          [v299 setReadCount:{objc_msgSend(v299, "readCount") - 1}];
        }

        goto LABEL_428;
      }
    }
  }

  v74 = 0;
  v75 = 0;
  v341 = 0;
  v343 = 0;
  v76 = 0;
  v337 = 0;
  v339 = 0;
  v348 = 0;
  v335 = 0;
  v321 = v373;
  v315 = v371;
  v316 = __p[0];
  do
  {
    v77 = *(v321 + 8 * v74);
    if (v343 >= v76)
    {
      v83 = v343 - v75;
      v84 = (v343 - v75) >> 3;
      v85 = v84 + 1;
      __srca = v75;
      if ((v84 + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if ((v76 - v75) >> 2 > v85)
      {
        v85 = (v76 - v75) >> 2;
      }

      if (v76 - v75 >= 0x7FFFFFFFFFFFFFF8)
      {
        v86 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v86 = v85;
      }

      if (v86)
      {
        if (!(v86 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v75 = 0;
      v76 = 0;
      *(8 * v84) = v77;
      v343 = (8 * v84 + 8);
      memcpy(0, __srca, v83);
      v78 = 1 << v74;
      v79 = (1 << v74) & Groups;
      if (v79)
      {
LABEL_141:
        v80 = 1;
        v81 = v339;
        __src = v75;
        goto LABEL_154;
      }
    }

    else
    {
      *v343 = v77;
      v343 += 8;
      v78 = 1 << v74;
      v79 = (1 << v74) & Groups;
      if (v79)
      {
        goto LABEL_141;
      }
    }

    v80 = v316[v74];
    v81 = v339;
    __src = v75;
LABEL_154:
    v87 = v76;
    v88 = v81 >> 3;
    if (((v81 >> 3) + 1) >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v81 >> 3 != -1)
    {
      if (!(((v81 >> 3) + 1) >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v88) = v80;
    v339 = 8 * v88 + 8;
    memcpy(0, 0, v81);
    if (v79)
    {
      v82 = *&__src[8 * v74] + 1;
    }

    else
    {
      v82 = *(v315 + 8 * v74);
    }

    v89 = v341;
    v90 = v341 >> 3;
    if (((v341 >> 3) + 1) >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v341 >> 3 != -1)
    {
      if (!(((v341 >> 3) + 1) >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v90) = v82;
    v341 = 8 * v90 + 8;
    memcpy(0, 0, v89);
    v76 = v87;
    v91 = v79 != 0;
    v92 = v348;
    v93 = v348 >> 3;
    if (((v348 >> 3) + 1) >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v348 >> 3 != -1)
    {
      if (!(((v348 >> 3) + 1) >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v93) = v91;
    v348 = 8 * v93 + 8;
    memcpy(0, 0, v92);
    v94 = v337;
    v95 = v337 >> 3;
    if (((v337 >> 3) + 1) >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v337 >> 3 != -1)
    {
      if (!(((v337 >> 3) + 1) >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v95) = (v78 & Offset) != 0;
    v337 = 8 * v95 + 8;
    memcpy(0, 0, v94);
    v96 = (v78 & Index) != 0;
    v97 = v335;
    v98 = v335 >> 3;
    if (((v335 >> 3) + 1) >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v335 >> 3 != -1)
    {
      if (!(((v335 >> 3) + 1) >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v98) = v96;
    v335 = 8 * v98 + 8;
    memcpy(0, 0, v97);
    ++v74;
    v75 = __src;
  }

  while (v352 != v74);
  v99 = v314;
  if ((v314 | v311))
  {
    goto LABEL_178;
  }

LABEL_197:
  v322 = [v303 descriptor];
  if (v352)
  {
    v126 = 0;
    v127 = -1;
    do
    {
      v128 = *&v343[8 * v127];
      v129 = *(v341 + 8 * v127);
      v130 = *(v348 + 8 * v127);
      v131 = *(v323 + 8);
      if (v131 != *v323)
      {
        if (((v131 - *v323) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v132 = [v322 sliceRangeForDimension:v126];
      v133 = ((v128 >> 63) & 1) + v128 + v129;
      if (v129 == -1)
      {
        v133 = 1;
      }

      if (!IsSize)
      {
        v133 = v129;
      }

      v134 = ((v133 >> 63) & 1) + v133;
      if (v134 >= 1)
      {
        v135 = 1;
      }

      else
      {
        v135 = v134;
      }

      if (v134 < -1)
      {
        v136 = -1;
      }

      else
      {
        v136 = v135;
      }

      if (((1 << (v352 + v127)) & Offset) != 0)
      {
        v136 = 1;
      }

      if (v130)
      {
        v137 = 1;
      }

      else
      {
        v137 = v136;
      }

      [v322 sliceDimension:v126++ withSubrange:{v132, v137}];
      --v127;
    }

    while (v352 != v126);
  }

  v138 = *(v313 + 1);
  v139 = GPU::EncodeDescriptor::getcomputeEncoder(v313);
  v334 = [v303 safeArrayViewWithCommandBuffer:v138 computeEncoder:v139 descriptor:v322 aliasing:0];

  if (*(v379 + 36))
  {
    v140 = v379 - 16;
  }

  else
  {
    v140 = 0;
  }

  v141 = mlir::detail::OpResultImpl::getNextResultAtOffset(v140, 0);
  v142 = v318;
  v143 = (*(**(v318 + 2) + 48))(*(v318 + 2), v141, 0);
  v144 = v143;
  if (Groups)
  {
    v145 = v143;
    v146 = GPURegionRuntime::getStaticType(*(v318 + 2), v141);
    v147 = getMPSShapeFromMLIR(v146);
    v148 = *(v318 + 17);
    if (!v148)
    {
      v149 = objc_alloc(MEMORY[0x1E6974740]);
      v150 = [*(*(v318 + 2) + 48) metalDevice];
      v151 = [v149 initWithDevice:v150];
      v152 = *(v318 + 17);
      *(v318 + 17) = v151;

      v148 = *(v318 + 17);
    }

    v153 = v148;
    v154 = GPU::EncodeDescriptor::getcomputeEncoder(v313);
    v155 = [v153 reshapeWithCommandEncoder:v154 commandBuffer:*(v313 + 1) sourceArray:v334 shape:v147 destinationArray:0];

    v334 = v155;
    v142 = v318;
    v144 = v145;
  }

  v156 = *(v142 + 2);
  v157 = GPU::EncodeDescriptor::getcomputeEncoder(v313);
  v158 = v144;
  GPURegionRuntime::copyNDArrayToTarget(v156, v157, *(v313 + 1), v142 + 17, v334, v144, v141, 0);

LABEL_434:
  if (v366)
  {
    v367 = v366;
    operator delete(v366);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v371)
  {
    *(&v371 + 1) = v371;
    operator delete(v371);
  }

  if (v373)
  {
    *(&v373 + 1) = v373;
    operator delete(v373);
  }

  v300 = v377;
  v377 = 0;
  if (v300)
  {
    v301 = *v300;
    if (*v300)
    {
      *(v300 + 8) = v301;
      operator delete(v301);
    }

    MEMORY[0x1E12E5B90](v300, 0x10C402FEFCB83);
  }
}

unint64_t GPU::StridedSliceOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

id *GPU::StridedSliceGradientOpHandler::StridedSliceGradientOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B51530;
  *(v6 + 15) = 0;
  *(v6 + 16) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = this[15];
  this[15] = 0;

  v12 = this[16];
  this[16] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

void GPU::StridedSliceGradientOpHandler::encodeNDArrayOp(GPU::StridedSliceGradientOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v301[1] = *MEMORY[0x1E69E9840];
  v231 = a3;
  v300 = *(this + 3);
  v5 = *(*(v300 + 72) + 24);
  if (*(v300 + 36))
  {
    v6 = v300 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  v9 = StaticType;
  if (StaticType)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v10 = 0;
  }

  v299[0] = v9;
  v299[1] = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(v299);
  v260 = v11;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v300);
  v12 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  v241 = this;
  v267 = a2;
  v233 = [v12 mpsndarray];

  v13 = [(NSArray *)v231 objectAtIndexedSubscript:0];
  v14 = [v13 mpsndarray];
  v268 = v14;
  if (v233)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v240 = *(this + 1);
  Groups = mlir::mps::Conv3DOp::getGroups(&v300);
  Index = mlir::pdl::ResultOp::getIndex(&v300);
  Offset = mlir::mps::ReadDataFromFileOp::getOffset(&v300);
  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v300 + 72) + 88), &v296);
  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v300 + 72) + 120), &v293);
  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v300 + 72) + 152), &v290);
  v250 = v13;
  if (v260)
  {
    for (i = 0; i != v260; ++i)
    {
      v18 = v296;
      v19 = v297;
      v20 = v297 - v296;
      v21 = (v297 - v296) >> 3;
      if (i >= v21)
      {
        if (v297 >= v298)
        {
          v23 = v21 + 1;
          if ((v21 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v24 = v298 - v296;
          if ((v298 - v296) >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v21) = 0;
          v22 = 8 * v21 + 8;
          memcpy(0, v18, v20);
          v296 = 0;
          v297 = v22;
          v298 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v297 = 0;
          v22 = (v19 + 8);
        }

        v297 = v22;
        Index |= 1 << i;
      }

      v26 = v293;
      v27 = v294;
      v28 = v294 - v293;
      v29 = (v294 - v293) >> 3;
      if (i >= v29)
      {
        if (v294 >= v295)
        {
          v31 = v29 + 1;
          if ((v29 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v32 = v295 - v293;
          if ((v295 - v293) >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v33 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            if (!(v33 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v29) = 0;
          v30 = 8 * v29 + 8;
          memcpy(0, v26, v28);
          v293 = 0;
          v294 = v30;
          v295 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v294 = 0;
          v30 = (v27 + 8);
        }

        v294 = v30;
        Offset |= 1 << i;
      }

      v34 = v290;
      v17 = v291;
      v35 = v291 - v290;
      v36 = v291 - v290;
      if (i >= v36)
      {
        if (v291 < v292)
        {
          *v291 = 1;
          ++v17;
        }

        else
        {
          v37 = v36 + 1;
          if ((v36 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v38 = v292 - v290;
          if ((v292 - v290) >> 2 > v37)
          {
            v37 = v38 >> 2;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            if (!(v39 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v36) = 1;
          v17 = (8 * v36 + 8);
          memcpy(0, v34, v35);
          v290 = 0;
          v291 = v17;
          v292 = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        v291 = v17;
      }
    }
  }

  else
  {
    v17 = v291;
  }

  v40 = v290;
  if (v290 == v17)
  {
    v238 = 0;
    if (v260)
    {
      goto LABEL_67;
    }
  }

  else
  {
    LOBYTE(v41) = 0;
    v42 = 0;
    do
    {
      v43 = *v40++;
      if (v43 == 1)
      {
        v44 = 0;
      }

      else
      {
        v44 = (~Groups >> v42) & 1;
      }

      v41 = v44 | v41 & 1;
      ++v42;
    }

    while (v40 != v17);
    v238 = v41;
    if (v260)
    {
LABEL_67:
      v45 = 0;
      v254 = 0;
      v256 = 0;
      v258 = 0;
      v263 = 0;
      v265 = 0;
      v261 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      do
      {
        v245 = v48;
        v253 = v47;
        v49 = v293[v45];
        if (v291 - v290 == 8)
        {
          v50 = 0;
        }

        else
        {
          v50 = v45;
        }

        v51 = v290[v50];
        v52 = v46;
        v53 = v258;
        v54 = v258 >> 3;
        if (((v258 >> 3) + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        if (v258 >> 3 != -1)
        {
          if (!(((v258 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v54) = v296[v45];
        v258 = 8 * v54 + 8;
        memcpy(0, 0, v53);
        v55 = 1 << v45;
        v56 = (1 << v45) & Groups;
        if (v56)
        {
          v51 = 1;
        }

        v57 = v265;
        v58 = v265 >> 3;
        if (((v265 >> 3) + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        if (v265 >> 3 != -1)
        {
          if (!(((v265 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v58) = v51;
        v265 = 8 * v58 + 8;
        memcpy(0, 0, v57);
        if (v56)
        {
          v49 = *(8 * v45) + 1;
        }

        v59 = v263;
        v60 = v263 >> 3;
        if (((v263 >> 3) + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        if (v263 >> 3 != -1)
        {
          if (!(((v263 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v60) = v49;
        v263 = 8 * v60 + 8;
        memcpy(0, 0, v59);
        v61 = v56 != 0;
        v46 = v52;
        if (v261 < v52)
        {
          *v261 = v61;
          v261 += 8;
          v47 = v253;
          v48 = v245;
        }

        else
        {
          v62 = v261;
          v63 = v261 >> 3;
          v64 = (v261 >> 3) + 1;
          v47 = v253;
          v48 = v245;
          if (v64 >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          if (v46 >> 2 > v64)
          {
            v64 = v46 >> 2;
          }

          if (v64)
          {
            if (!(v64 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v46 = 0;
          *(8 * v63) = v61;
          v261 = 8 * v63 + 8;
          memcpy(0, 0, v62);
        }

        v65 = (v55 & Offset) != 0;
        if (v256 >= v48)
        {
          v66 = v256 - v47;
          v67 = v256 - v47;
          v68 = v67 + 1;
          if ((v67 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          if ((v48 - v47) >> 2 > v68)
          {
            v68 = (v48 - v47) >> 2;
          }

          if (v48 - v47 >= 0x7FFFFFFFFFFFFFF8)
          {
            v69 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v68;
          }

          if (v69)
          {
            if (!(v69 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v48 = 0;
          *(8 * v67) = v65;
          v256 = (8 * v67 + 8);
          memcpy(0, v47, v66);
          v47 = 0;
        }

        else
        {
          *v256++ = v65;
        }

        v70 = v254;
        v71 = v254 >> 3;
        if (((v254 >> 3) + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        if (v254 >> 3 != -1)
        {
          if (!(((v254 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v71) = (v55 & Index) != 0;
        v254 = 8 * v71 + 8;
        memcpy(0, 0, v70);
        ++v45;
      }

      while (v260 != v45);
      goto LABEL_118;
    }
  }

  v254 = 0;
  v256 = 0;
  v47 = 0;
  v261 = 0;
  v263 = 0;
  v265 = 0;
  v258 = 0;
LABEL_118:
  v72 = [v233 descriptor];
  v73 = v72;
  if (v72)
  {
    [v72 getShapeVector];
  }

  else
  {
    v289 = 0;
  }

  v242 = v289;
  v74 = [v268 descriptor];
  v75 = v74;
  if (v74)
  {
    [v74 getShapeVector];
  }

  else
  {
    v288 = 0;
  }

  v249 = v288;
  v246 = v260 - 4;
  if (v260 > 4)
  {
    v76 = v238;
  }

  else
  {
    v76 = 0;
  }

  if (v76 == 1)
  {
    v77 = [v268 descriptor];
    [v77 dataType];
    if (!*(v241 + 16))
    {
      operator new();
    }

    if ((*(v241 + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v78 = *(v241 + 16);

    v79 = GPU::EncodeDescriptor::getcomputeEncoder(v267);
    [v240 encodeToMPSCommandEncoder:v79 commandBuffer:*(v267 + 1) sourceArrays:MEMORY[0x1E695E0F0] resultState:0 destinationArray:v268 kernelDAGObject:v78];
  }

  if (Groups)
  {
    v80 = [v233 descriptor];
    v81 = [v80 getShape];
    v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:v260];
    if (v260)
    {
      v83 = 0;
      v84 = 0;
      v85 = v260;
      do
      {
        v86 = *v84++;
        if (v86 || v83 >= [v81 count])
        {
          v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
          [v82 addObject:v87];
        }

        else
        {
          v87 = [v81 objectAtIndexedSubscript:v83];
          [v82 addObject:v87];
          ++v83;
        }

        --v85;
      }

      while (v85);
    }

    v88 = GPU::EncodeDescriptor::getcomputeEncoder(v267);
    v89 = [v240 reshapeWithCommandEncoder:v88 commandBuffer:*(v267 + 1) sourceArray:v233 shape:v82 destinationArray:0];

    v90 = v89;
    v233 = v90;
  }

  v91 = 0;
  v92 = 0;
  v285 = 0;
  v286 = 0;
  v287 = 0;
  v282 = 0;
  v283 = 0;
  v284 = 0;
  v269 = 0u;
  *__p = 0u;
  v279 = 0;
  v280 = 0;
  *v272 = 0u;
  v281 = 0;
  do
  {
    if (v258)
    {
      v94 = *(v258 - 8);
      v258 -= 8;
      v95 = v256;
      v96 = v261;
      v97 = v263;
      v98 = v265;
      if (v265)
      {
        goto LABEL_146;
      }
    }

    else
    {
      v94 = 0;
      v95 = v256;
      v96 = v261;
      v97 = v263;
      v98 = v265;
      if (v265)
      {
LABEL_146:
        v100 = *(v98 - 8);
        v98 -= 8;
        v99 = v100;
        v251 = v91;
        if (v97)
        {
          goto LABEL_147;
        }

        goto LABEL_155;
      }
    }

    v99 = 1;
    v251 = v91;
    if (v97)
    {
LABEL_147:
      v102 = *(v97 - 8);
      v97 -= 8;
      v101 = v102;
      if (v96)
      {
        goto LABEL_148;
      }

      goto LABEL_156;
    }

LABEL_155:
    v101 = 0;
    if (v96)
    {
LABEL_148:
      v274 = *(v96 - 8) == 0;
      v263 = v97;
      v265 = v98;
      v261 = v96 - 8;
      if (v95 != v47)
      {
        goto LABEL_149;
      }

      goto LABEL_157;
    }

LABEL_156:
    v274 = 1;
    v263 = v97;
    v265 = v98;
    v261 = v96;
    if (v95 != v47)
    {
LABEL_149:
      v256 = v95 - 1;
      v103 = !*(v95 - 1);
      v104 = v254;
      if (v254)
      {
        goto LABEL_150;
      }

      goto LABEL_158;
    }

LABEL_157:
    v103 = 1;
    v104 = v254;
    if (v254)
    {
LABEL_150:
      v254 = v104 - 8;
      v105 = *(v104 - 8) == 0;
      v106 = v249[1];
      v107 = v106 - *v249;
      if (v106 != *v249)
      {
        goto LABEL_151;
      }

      goto LABEL_159;
    }

LABEL_158:
    v105 = 1;
    v108 = v249[1];
    v107 = v108 - *v249;
    if (v108 != *v249)
    {
LABEL_151:
      if ((v107 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

LABEL_159:
    v109 = ((v94 >> 63) & 1) + v94;
    v110 = v109 + v101;
    if (v101 == -1)
    {
      v110 = 1;
    }

    if (!IsSize)
    {
      v110 = v101;
    }

    v111 = ((v110 >> 63) & 1) + v110;
    if (v109 >= 0)
    {
      v112 = 0;
    }

    else
    {
      v112 = ((v94 >> 63) & 1) + v94;
    }

    if (v109 >= v99 >> 63)
    {
      v113 = v112;
    }

    else
    {
      v113 = v99 >> 63;
    }

    if (v111 >= 1)
    {
      v114 = 1;
    }

    else
    {
      v114 = ((v110 >> 63) & 1) + v110;
    }

    if (v111 < -1)
    {
      v115 = -1;
    }

    else
    {
      v115 = v114;
    }

    if (v99 < 0)
    {
      v116 = -1;
    }

    else
    {
      v116 = 1;
    }

    if (!v103)
    {
      v115 = v116;
    }

    if (v105)
    {
      v117 = v113;
    }

    else
    {
      v117 = 0;
    }

    if (v274)
    {
      v118 = v115;
    }

    else
    {
      v118 = v117 + 1;
    }

    v278 = *v272;
    *(&v278 & 0xFFFFFFFFFFFFFFF3 | (4 * (v92 & 3))) = 0;
    if (v99 < 0)
    {
      v117 = -v117;
      v118 = -v118;
      v277 = v278;
      *(&v277 & 0xFFFFFFFFFFFFFFF3 | (4 * (v92 & 3))) = 1;
      *v272 = v277;
      v99 = -v99;
    }

    else
    {
      *v272 = v278;
    }

    v91 = v251;
    v275 = *__p;
    *(&v275 & 0xFFFFFFFFFFFFFFF3 | (4 * (v92 & 3))) = v117;
    *__p = v275;
    v276 = v269;
    *(&v276 & 0xFFFFFFFFFFFFFFF3 | (4 * (v92 & 3))) = v99;
    v269 = v276;
    if (v92 < v260)
    {
      v119 = v280;
      if (v280 >= v281)
      {
        v121 = v279;
        v122 = v280 - v279;
        v123 = (v280 - v279) >> 3;
        v124 = v123 + 1;
        if ((v123 + 1) >> 61)
        {
          goto LABEL_375;
        }

        v125 = v281 - v279;
        if ((v281 - v279) >> 2 > v124)
        {
          v124 = v125 >> 2;
        }

        if (v125 >= 0x7FFFFFFFFFFFFFF8)
        {
          v126 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v126 = v124;
        }

        if (v126)
        {
          if (!(v126 >> 61))
          {
            operator new();
          }

LABEL_389:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v123) = 1;
        v120 = 8 * v123 + 8;
        memcpy(0, v121, v122);
        v279 = 0;
        v280 = v120;
        v281 = 0;
        if (v121)
        {
          operator delete(v121);
        }
      }

      else
      {
        *v280 = 1;
        v120 = (v119 + 8);
      }

      v280 = v120;
      v127 = v118 - v117;
      v128 = v283;
      if (v283 >= v284)
      {
        v130 = v282;
        v131 = v283 - v282;
        v132 = (v283 - v282) >> 3;
        v133 = v132 + 1;
        if ((v132 + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        v134 = v284 - v282;
        if ((v284 - v282) >> 2 > v133)
        {
          v133 = v134 >> 2;
        }

        if (v134 >= 0x7FFFFFFFFFFFFFF8)
        {
          v135 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v135 = v133;
        }

        if (v135)
        {
          if (!(v135 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v132) = v127;
        v129 = 8 * v132 + 8;
        memcpy(0, v130, v131);
        v282 = 0;
        v283 = v129;
        v284 = 0;
        if (v130)
        {
          operator delete(v130);
        }
      }

      else
      {
        *v283 = v127;
        v129 = (v128 + 8);
      }

      v283 = v129;
      if (v274)
      {
        v136 = *v242;
        v138 = v286;
        v137 = v287;
        if (v251 < (v242[1] - *v242) >> 3)
        {
          if (v286 >= v287)
          {
            v148 = v285;
            v149 = v286 - v285;
            v150 = (v286 - v285) >> 3;
            v151 = v150 + 1;
            if ((v150 + 1) >> 61)
            {
LABEL_375:
              std::vector<long>::__throw_length_error[abi:ne200100]();
            }

            v152 = v287 - v285;
            if ((v287 - v285) >> 2 > v151)
            {
              v151 = v152 >> 2;
            }

            if (v152 >= 0x7FFFFFFFFFFFFFF8)
            {
              v153 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v153 = v151;
            }

            if (v153)
            {
              if (!(v153 >> 61))
              {
                operator new();
              }

              goto LABEL_389;
            }

            v154 = (8 * v150);
            v155 = *(v136 + 8 * v251);
            v156 = &v154[-((v286 - v285) >> 3)];
            *v154 = v155;
            v93 = (v154 + 1);
            memcpy(v156, v148, v149);
            v285 = v156;
            v286 = v93;
            v287 = 0;
            if (v148)
            {
              operator delete(v148);
            }
          }

          else
          {
            *v286 = *(v136 + 8 * v251);
            v93 = v138 + 8;
          }

          v91 = v251 + 1;
          goto LABEL_142;
        }
      }

      else
      {
        v138 = v286;
        v137 = v287;
      }

      if (v138 < v137)
      {
        *v138 = 1;
        v93 = v138 + 8;
      }

      else
      {
        v139 = v285;
        v140 = v138 - v285;
        v141 = (v138 - v285) >> 3;
        v142 = v141 + 1;
        if ((v141 + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        v143 = v137 - v285;
        if (v143 >> 2 > v142)
        {
          v142 = v143 >> 2;
        }

        if (v143 >= 0x7FFFFFFFFFFFFFF8)
        {
          v144 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v144 = v142;
        }

        if (v144)
        {
          if (!(v144 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v145 = v141;
        v146 = (8 * v141);
        v147 = &v146[-v145];
        *v146 = 1;
        v93 = (v146 + 1);
        memcpy(v147, v139, v140);
        v285 = v147;
        v286 = v93;
        v287 = 0;
        if (v139)
        {
          operator delete(v139);
        }
      }

LABEL_142:
      v286 = v93;
    }

    ++v92;
  }

  while (v92 != 4);
  if (v260 >= 5)
  {
    do
    {
      v158 = v286;
      if (v286 >= v287)
      {
        v160 = v285;
        v161 = v286 - v285;
        v162 = (v286 - v285) >> 3;
        v163 = v162 + 1;
        if ((v162 + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        v164 = v287 - v285;
        if ((v287 - v285) >> 2 > v163)
        {
          v163 = v164 >> 2;
        }

        if (v164 >= 0x7FFFFFFFFFFFFFF8)
        {
          v165 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v165 = v163;
        }

        if (v165)
        {
          if (!(v165 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v162) = 1;
        v159 = 8 * v162 + 8;
        memcpy(0, v160, v161);
        v285 = 0;
        v286 = v159;
        v287 = 0;
        if (v160)
        {
          operator delete(v160);
        }
      }

      else
      {
        *v286 = 1;
        v159 = (v158 + 8);
      }

      v286 = v159;
      v166 = v280;
      if (v280 < v281)
      {
        *v280 = 1;
        v157 = (v166 + 8);
      }

      else
      {
        v167 = v279;
        v168 = v280 - v279;
        v169 = (v280 - v279) >> 3;
        v170 = v169 + 1;
        if ((v169 + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        v171 = v281 - v279;
        if ((v281 - v279) >> 2 > v170)
        {
          v170 = v171 >> 2;
        }

        if (v171 >= 0x7FFFFFFFFFFFFFF8)
        {
          v172 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v172 = v170;
        }

        if (v172)
        {
          if (!(v172 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v169) = 1;
        v157 = 8 * v169 + 8;
        memcpy(0, v167, v168);
        v279 = 0;
        v280 = v157;
        v281 = 0;
        if (v167)
        {
          operator delete(v167);
        }
      }

      v280 = v157;
      --v246;
    }

    while (v246);
  }

  v173 = v233;
  v252 = v173;
  if (!*(v241 + 15))
  {
    v230 = [v173 descriptor];
    [v230 dataType];

    operator new();
  }

  if ((*(v241 + 40) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v239 = *(v241 + 15);

  if (v260 <= 4)
  {
    v201 = v252;
    v202 = v252;
    v203 = v268;
    v204 = v268;
    v266 = 1;
LABEL_329:
    for (j = 0; j != v266; ++j)
    {
      v208 = [v252 descriptor];
      v209 = [v268 descriptor];
      if (v260 >= 5)
      {
        v210 = 0;
        v211 = j;
        do
        {
          v212 = *(8 * v210);
          v213 = v211 / v212;
          v214 = v211 % v212;
          v215 = v212;
          v216 = v212;
          [v208 sliceDimension:v210 + 4 withSubrange:{v211 % v212, 1}];
          [v209 sliceDimension:v210 + 4 withSubrange:{v215 + v214 * v216, 1}];
          ++v210;
          v211 = v213;
        }

        while (v260 - 4 != v210);
      }

      v217 = v250;
      if (*(v268 + *MEMORY[0x1E69744E8]))
      {
        [v268 setReadCount:{objc_msgSend(v268, "readCount") + 1}];
      }

      v218 = *(v267 + 1);
      v219 = GPU::EncodeDescriptor::getcomputeEncoder(v267);
      v220 = [v268 safeArrayViewWithCommandBuffer:v218 computeEncoder:v219 descriptor:v209 aliasing:0];

      v221 = *(v267 + 1);
      v222 = GPU::EncodeDescriptor::getcomputeEncoder(v267);
      v205 = [v252 safeArrayViewWithCommandBuffer:v221 computeEncoder:v222 descriptor:v208 aliasing:0];

      v223 = GPU::EncodeDescriptor::getcomputeEncoder(v267);
      v224 = *(v267 + 1);
      v301[0] = v205;
      v225 = [MEMORY[0x1E695DEC8] arrayWithObjects:v301 count:1];
      [v240 encodeToMPSCommandEncoder:v223 commandBuffer:v224 sourceArrays:v225 resultState:0 destinationArray:v220 kernelDAGObject:v239];

      if (*(v220 + *MEMORY[0x1E69744E8]) == 1)
      {
        [v220 setReadCount:{objc_msgSend(v220, "readCount") - 1}];
      }

      v203 = v220;
      v201 = v205;
    }
  }

  else
  {
    v174 = 0;
    v175 = 0;
    v176 = 0;
    v243 = 0;
    v247 = 0;
    v177 = 4;
    v236 = v265 - 8;
    v237 = v258 - 8;
    v234 = v261 - 8;
    v235 = v263 - 8;
    v255 = v254 - 8;
    v257 = v256 - 1;
    v266 = 1;
    v178 = v249;
    do
    {
      v262 = v175;
      v264 = v177;
      v259 = v176;
      v179 = *(v237 + 8 * v174);
      v180 = *(v236 + 8 * v174);
      v181 = *(v235 + 8 * v174);
      v183 = *v178;
      v182 = v178[1];
      if (v182 != v183)
      {
        if (((v182 - v183) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v184 = ((v179 >> 63) & 1) + v179;
      v185 = v184 + v181;
      if (v181 == -1)
      {
        v185 = 1;
      }

      if (!IsSize)
      {
        v185 = *(v235 + 8 * v174);
      }

      v186 = ((v185 >> 63) & 1) + v185;
      if (v184 >= 0)
      {
        v187 = 0;
      }

      else
      {
        v187 = ((v179 >> 63) & 1) + v179;
      }

      if (v184 >= 0)
      {
        v188 = v187;
      }

      else
      {
        v188 = 0;
      }

      if (v186 >= 1)
      {
        v189 = 1;
      }

      else
      {
        v189 = v186;
      }

      if (v186 < -1)
      {
        v190 = -1;
      }

      else
      {
        v190 = v189;
      }

      if (v257[v174])
      {
        v190 = 1;
      }

      if (*(v255 + 8 * v174))
      {
        v191 = 0;
      }

      else
      {
        v191 = v188;
      }

      if (*(v234 + 8 * v174))
      {
        v192 = v191 + 1;
      }

      else
      {
        v192 = v190;
      }

      if (v180 < 1)
      {
        v193 = v180 + 1;
      }

      else
      {
        v193 = v180 - 1;
      }

      v194 = v247;
      v195 = v247 >> 3;
      if (((v247 >> 3) + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v247 >> 3 != -1)
      {
        if (!(((v247 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v195) = v191;
      v247 = 8 * v195 + 8;
      memcpy(0, 0, v194);
      v196 = v243;
      v197 = v243 >> 3;
      if (((v243 >> 3) + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v243 >> 3 != -1)
      {
        if (!(((v243 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v197) = v180;
      v243 = 8 * v197 + 8;
      memcpy(0, 0, v196);
      v175 = v262;
      v198 = (v193 - v191 + v192) / v180;
      if (v176 < v262)
      {
        *v176 = v198;
        v176 += 8;
      }

      else
      {
        v199 = v176 >> 3;
        v200 = (v176 >> 3) + 1;
        if (v200 >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        if (v262 >> 2 > v200)
        {
          v200 = v262 >> 2;
        }

        if (v200)
        {
          if (!(v200 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v175 = 0;
        *(8 * v199) = v198;
        v176 = 8 * v199 + 8;
        memcpy(0, 0, v259);
      }

      v266 *= v198;
      v177 = v264 + 1;
      --v174;
      v178 = v249;
    }

    while (4 - v260 != v174);
    v205 = v252;
    v206 = v268;
    if (v266)
    {
      v203 = v268;
      v201 = v252;
      goto LABEL_329;
    }

    v220 = v206;
    v217 = v250;
  }

  if (v279)
  {
    v280 = v279;
    operator delete(v279);
  }

  if (v282)
  {
    v283 = v282;
    operator delete(v282);
  }

  if (v285)
  {
    v286 = v285;
    operator delete(v285);
  }

  v226 = v288;
  v288 = 0;
  if (v226)
  {
    v227 = *v226;
    if (*v226)
    {
      v226[1] = v227;
      operator delete(v227);
    }

    MEMORY[0x1E12E5B90](v226, 0x10C402FEFCB83);
  }

  v228 = v289;
  v289 = 0;
  if (v228)
  {
    v229 = *v228;
    if (*v228)
    {
      v228[1] = v229;
      operator delete(v229);
    }

    MEMORY[0x1E12E5B90](v228, 0x10C402FEFCB83);
  }

  if (v290)
  {
    v291 = v290;
    operator delete(v290);
  }

  if (v293)
  {
    v294 = v293;
    operator delete(v293);
  }

  if (v296)
  {
    v297 = v296;
    operator delete(v296);
  }
}

void sub_1E082A56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a58)
  {
    operator delete(a58);
    v66 = a61;
    if (!a61)
    {
LABEL_3:
      v67 = __p;
      if (!__p)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v66 = a61;
    if (!a61)
    {
      goto LABEL_3;
    }
  }

  operator delete(v66);
  v67 = __p;
  if (!__p)
  {
LABEL_5:
    std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v64 - 256));
    std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v64 - 248));
    if (a29)
    {
      operator delete(a29);
      if (!a30)
      {
LABEL_7:
        v68 = a28;
        if (!a28)
        {
          goto LABEL_8;
        }

        goto LABEL_18;
      }
    }

    else if (!a30)
    {
      goto LABEL_7;
    }

    operator delete(a30);
    v68 = a28;
    if (!a28)
    {
LABEL_8:
      v69 = a26;
      if (!a26)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    operator delete(v68);
    v69 = a26;
    if (!a26)
    {
LABEL_9:
      v70 = a27;
      if (!a27)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    operator delete(v69);
    v70 = a27;
    if (!a27)
    {
LABEL_10:
      v71 = a31;
      if (!a31)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_20:
    operator delete(v70);
    v71 = a31;
    if (!a31)
    {
LABEL_11:
      v72 = *(v64 - 240);
      if (!v72)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_21:
    operator delete(v71);
    v72 = *(v64 - 240);
    if (!v72)
    {
LABEL_12:
      v73 = *(v64 - 216);
      if (!v73)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(v64 - 232) = v72;
    operator delete(v72);
    v73 = *(v64 - 216);
    if (!v73)
    {
LABEL_13:
      v74 = *(v64 - 192);
      if (!v74)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_23:
    *(v64 - 208) = v73;
    operator delete(v73);
    v74 = *(v64 - 192);
    if (!v74)
    {
LABEL_15:

      _Unwind_Resume(a1);
    }

LABEL_14:
    *(v64 - 184) = v74;
    operator delete(v74);
    goto LABEL_15;
  }

LABEL_4:
  operator delete(v67);
  goto LABEL_5;
}

id *GPU::StridedSliceUpdateOpHandler::StridedSliceUpdateOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B51580;
  *(v6 + 15) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974740]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8];
  v10 = this[1];
  this[1] = v9;

  v11 = this[15];
  this[15] = 0;

  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];
  return this;
}

unint64_t GPU::StridedSliceUpdateOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
{
  if (a4 < 2)
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprPlaceholder(this, a2, a3, a4);
  }

  else
  {
    return GPU::BaseOpHandler::_getJITStaticOperandReprConstant(this, a2, a3, a4);
  }
}

void GPU::StridedSliceUpdateOpHandler::encodeOp(GPU::StridedSliceUpdateOpHandler *this, void **a2)
{
  v284[1] = *MEMORY[0x1E69E9840];
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v281 = *(this + 3);
  v3 = *(v281 + 72);
  v4 = *(v3 + 56);
  v5 = *(v3 + 24);
  if (*(v281 + 36))
  {
    v6 = v281 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v224 = this;
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), NextResultAtOffset);
  v9 = StaticType;
  if (StaticType)
  {
    StaticType = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  v280[0] = v9;
  v280[1] = StaticType;
  mlir::CallableOpInterface::getArgAttrsAttr(v280);
  v246 = v10;
  v11 = (*(**(v224 + 2) + 48))(*(v224 + 2), v4, 0);
  v236 = [v11 mpsndarray];

  v12 = (*(**(v224 + 2) + 48))(*(v224 + 2), v5, 0);
  v222 = [v12 mpsndarray];

  if (v236)
  {
    v13 = v222 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v281 + 36))
  {
    v14 = v281 - 16;
  }

  else
  {
    v14 = 0;
  }

  v221 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v219 = (*(**(v224 + 2) + 48))(*(v224 + 2));
  if (!v219)
  {
    v277 = 0u;
    v278 = 0u;
    v279 = 1065353216;
    operator new();
  }

  v15 = (*(**(v224 + 2) + 80))(*(v224 + 2), v221, a2[1], 0, 0, 1);
  v239 = [v15 mpsndarray];

  v276 = *(v224 + 1);
  Groups = mlir::mps::Conv3DOp::getGroups(&v281);
  Index = mlir::pdl::ResultOp::getIndex(&v281);
  __p = mlir::mps::ReadDataFromFileOp::getOffset(&v281);
  GPURegionRuntime::waitAndReadIntTensorData(*(v224 + 2), a2, *(*(v281 + 72) + 88), &v273);
  GPURegionRuntime::waitAndReadIntTensorData(*(v224 + 2), a2, *(*(v281 + 72) + 152), &v270);
  if (v246)
  {
    for (i = 0; i != v246; ++i)
    {
      v19 = v273;
      v20 = v274;
      v21 = v274 - v273;
      v22 = (v274 - v273) >> 3;
      if (i >= v22)
      {
        if (v274 >= v275)
        {
          v24 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v25 = v275 - v273;
          if ((v275 - v273) >> 2 > v24)
          {
            v24 = v25 >> 2;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            if (!(v26 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v22) = 0;
          v23 = 8 * v22 + 8;
          memcpy(0, v19, v21);
          v273 = 0;
          v274 = v23;
          v275 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v274 = 0;
          v23 = (v20 + 8);
        }

        v274 = v23;
        Index |= 1 << i;
      }

      v27 = v270;
      v18 = v271;
      v28 = v271 - v270;
      v29 = (v271 - v270) >> 3;
      if (i >= v29)
      {
        if (v271 < v272)
        {
          *v271 = 1;
          ++v18;
        }

        else
        {
          v30 = v29 + 1;
          if ((v29 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v31 = v272 - v270;
          if ((v272 - v270) >> 2 > v30)
          {
            v30 = v31 >> 2;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFF8)
          {
            v32 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          if (v32)
          {
            if (!(v32 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v29) = 1;
          v18 = (8 * v29 + 8);
          memcpy(0, v27, v28);
          v270 = 0;
          v271 = v18;
          v272 = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        v271 = v18;
      }
    }
  }

  else
  {
    v18 = v271;
  }

  if (v18 == v270)
  {
    v39 = 0;
    v40 = 0;
    __src = 0;
    v36 = v236;
    v223 = 1;
    v229 = Groups;
    if (!v246)
    {
      goto LABEL_63;
    }

LABEL_65:
    for (j = 0; j != v246; ++j)
    {
      v45 = v40 - __src;
      v46 = (v40 - __src) >> 3;
      if (j >= v46)
      {
        if (v40 < v39)
        {
          *v40 = 0;
          v40 += 8;
        }

        else
        {
          v47 = v46 + 1;
          if ((v46 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          if ((v39 - __src) >> 2 > v47)
          {
            v47 = (v39 - __src) >> 2;
          }

          if (v39 - __src >= 0x7FFFFFFFFFFFFFF8)
          {
            v48 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v47;
          }

          if (v48)
          {
            if (!(v48 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v39 = 0;
          *(8 * v46) = 0;
          v40 = (8 * v46 + 8);
          memcpy(0, __src, v45);
          if (__src)
          {
            operator delete(__src);
          }

          __src = 0;
        }

        __p |= 1 << j;
      }
    }

    v49 = 0;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    v43 = 0;
    v252 = 0;
    v41 = 0;
    v227 = v270;
    v228 = v273;
    do
    {
      v244 = v41;
      if (((v243 >> 3) + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v243 >> 3 != -1)
      {
        if (!(((v243 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v52 = (8 * (v243 >> 3));
      *v52 = v228[v49];
      memcpy(0, 0, v243);
      v243 = (v52 + 1);
      v53 = 1 << v49;
      v54 = (1 << v49) & v229;
      if (v54)
      {
        v50 = 1;
      }

      else
      {
        v50 = v227[v49];
      }

      v55 = v242;
      v56 = v242 >> 3;
      if (((v242 >> 3) + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v242 >> 3 != -1)
      {
        if (!(((v242 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v56) = v50;
      v242 = 8 * v56 + 8;
      memcpy(0, 0, v55);
      if (v54)
      {
        v51 = *(8 * v49) + 1;
      }

      else
      {
        v51 = *&__src[8 * v49];
      }

      v57 = v241;
      v58 = v241 >> 3;
      if (((v241 >> 3) + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v241 >> 3 != -1)
      {
        if (!(((v241 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v58) = v51;
      v241 = 8 * v58 + 8;
      memcpy(0, 0, v57);
      v59 = v54 != 0;
      v60 = v43 >> 3;
      if (((v43 >> 3) + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v43 >> 3 != -1)
      {
        if (!(((v43 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v60) = v59;
      memcpy(0, 0, v43);
      v43 = 8 * v60 + 8;
      v61 = v252;
      v62 = v252 >> 3;
      if (((v252 >> 3) + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v252 >> 3 != -1)
      {
        if (!(((v252 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v62) = (v53 & __p) != 0;
      v252 = 8 * v62 + 8;
      memcpy(0, 0, v61);
      v63 = v244 >> 3;
      if (((v244 >> 3) + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v244 >> 3 != -1)
      {
        if (!(((v244 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v63) = (v53 & Index) != 0;
      v41 = 8 * v63 + 8;
      memcpy(0, 0, v244);
      v36 = v236;
      ++v49;
    }

    while (v246 != v49);
    v42 = v252;
    goto LABEL_117;
  }

  v33 = 0;
  v34 = (v18 - v270) >> 3;
  if (v34 <= 1)
  {
    v34 = 1;
  }

  v35 = 1;
  v36 = v236;
  do
  {
    v38 = ((1 << v33) & Groups) != 0 || *(v270 + v33) == 1;
    v35 &= v38;
    ++v33;
  }

  while (v34 != v33);
  if ((v35 & 1) == 0)
  {
    GPURegionRuntime::waitAndReadIntTensorData(*(v224 + 2), a2, *(*(v281 + 72) + 120), &v277);
    v40 = *(&v277 + 1);
    __src = v277;
    v39 = v278;
    v36 = v236;
    v223 = 0;
    v229 = Groups;
    if (!v246)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  v39 = 0;
  v40 = 0;
  __src = 0;
  v223 = 1;
  v229 = Groups;
  if (v246)
  {
    goto LABEL_65;
  }

LABEL_63:
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v241 = 0;
  v242 = 0;
  v243 = 0;
LABEL_117:
  v64 = [v36 descriptor];
  v65 = v64;
  v234 = v43;
  if (v64)
  {
    [v64 getShapeVector];
  }

  else
  {
    v269 = 0;
  }

  v230 = v269;
  v66 = [v239 descriptor];
  v67 = v66;
  if (v66)
  {
    [v66 getShapeVector];
  }

  else
  {
    v268 = 0;
  }

  v231 = v268;
  v68 = v276;
  v69 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v70 = a2[1];
  v284[0] = v222;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v284 count:1];
  [v68 encodeToMPSCommandEncoder:v69 commandBuffer:v70 sourceArrays:v71 resultState:0 destinationArray:v239 kernelDAGObject:0];

  if (v229)
  {
    v72 = [v236 descriptor];
    v73 = [v72 getShape];
    v74 = [MEMORY[0x1E695DF70] arrayWithCapacity:v246];
    if (v246)
    {
      v75 = 0;
      v76 = 0;
      v77 = v246;
      do
      {
        v78 = *v76++;
        if (v78 || v75 >= [v73 count])
        {
          v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
          [v74 addObject:v79];
        }

        else
        {
          v79 = [v73 objectAtIndexedSubscript:v75];
          [v74 addObject:v79];
          ++v75;
        }

        --v77;
      }

      while (v77);
    }

    v80 = v276;
    v81 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v82 = [v80 reshapeWithCommandEncoder:v81 commandBuffer:a2[1] sourceArray:v236 shape:v74 destinationArray:0];

    v225 = v82;
    v83 = v234;
    if (v223)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v225 = v236;
    v83 = v234;
    if (v223)
    {
LABEL_132:
      v84 = v239;
      v85 = [v84 descriptor];
      if (v246)
      {
        v86 = v246 - 1;
        v87 = MEMORY[0x1E6974508];
        v88 = MEMORY[0x1E69744D8];
        v89 = 0;
        v90 = 0;
        do
        {
          v91 = *v89++;
          v92 = [v85 sliceRangeForDimension:v86];
          v94 = (v93 & (v91 >> 63)) + v91;
          if (*v90)
          {
            v94 = 0;
          }

          v95 = &v225[*v87];
          v254 = *&v225[*v88];
          [v85 sliceDimension:v86 withSubrange:{v94 + v92, *&v95[4 * (*(&v254 | v86 & 0xF) & 0xF)]}];
          --v86;
          ++v90;
        }

        while (v86 != -1);
      }

      if (*(v84 + *MEMORY[0x1E69744E8]))
      {
        [v84 setReadCount:{objc_msgSend(v84, "readCount") + 1}];
      }

      v96 = a2[1];
      v97 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v98 = [v84 safeArrayViewWithCommandBuffer:v96 computeEncoder:v97 descriptor:v85 aliasing:1];

      v99 = v276;
      v100 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v101 = a2[1];
      v283 = v225;
      v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v283 count:1];
      [v99 encodeToMPSCommandEncoder:v100 commandBuffer:v101 sourceArrays:v102 resultState:0 destinationArray:v98 kernelDAGObject:0];

      v103 = *(v224 + 2);
      v104 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      GPURegionRuntime::copyNDArrayToTarget(v103, v104, a2[1], &v276, v84, v220, v221, 0);

      goto LABEL_297;
    }
  }

  v105 = 0;
  v237 = 0;
  v265 = 0;
  v266 = 0;
  v267 = 0;
  v262 = 0;
  v263 = 0;
  v264 = 0;
  v247 = 0u;
  *__pa = 0u;
  v259 = 0;
  v260 = 0;
  v232 = 0u;
  v261 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v243)
          {
            v106 = *(v243 - 8);
            v243 -= 8;
            v253 = v42;
            v107 = v242;
            if (v242)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v106 = 0;
            v253 = v42;
            v107 = v242;
            if (v242)
            {
LABEL_145:
              v108 = *(v107 - 8);
              v242 = v107 - 8;
              v109 = v241;
              if (v241)
              {
                goto LABEL_146;
              }

              goto LABEL_154;
            }
          }

          v108 = 1;
          v109 = v241;
          if (v241)
          {
LABEL_146:
            v110 = *(v109 - 8);
            v241 = v109 - 8;
            if (v83)
            {
              goto LABEL_147;
            }

            goto LABEL_155;
          }

LABEL_154:
          v110 = 0;
          if (v83)
          {
LABEL_147:
            v111 = *(v83 - 8);
            v83 -= 8;
            v112 = v111 == 0;
            v113 = v253;
            if (v253)
            {
              goto LABEL_148;
            }

            goto LABEL_156;
          }

LABEL_155:
          v112 = 1;
          v113 = v253;
          if (v253)
          {
LABEL_148:
            v251 = v105;
            v253 = (v113 - 1);
            v114 = *(v113 - 1) == 0;
            v235 = v83;
            if (v41)
            {
              goto LABEL_149;
            }

            goto LABEL_157;
          }

LABEL_156:
          v114 = 1;
          v235 = v83;
          v251 = v105;
          if (v41)
          {
LABEL_149:
            v115 = *(v41 - 8) == 0;
            v116 = v231[1];
            v117 = v116 - *v231;
            v245 = v41 - 8;
            if (v116 != *v231)
            {
              goto LABEL_150;
            }

            goto LABEL_158;
          }

LABEL_157:
          v115 = 1;
          v118 = v231[1];
          v117 = v118 - *v231;
          v245 = v41;
          if (v118 != *v231)
          {
LABEL_150:
            if ((v117 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

LABEL_158:
          v83 = v235;
          v119 = v251;
          v120 = ((v106 >> 63) & 1) + v106;
          v121 = ((v110 >> 63) & 1) + v110;
          if (v120 >= 0)
          {
            v122 = 0;
          }

          else
          {
            v122 = ((v106 >> 63) & 1) + v106;
          }

          if (v120 >= 0)
          {
            v123 = v122;
          }

          else
          {
            v123 = 0;
          }

          if (v121 >= 1)
          {
            v124 = 1;
          }

          else
          {
            v124 = ((v110 >> 63) & 1) + v110;
          }

          if (v121 < -1)
          {
            v125 = -1;
          }

          else
          {
            v125 = v124;
          }

          if (v108 < 0)
          {
            v126 = -1;
          }

          else
          {
            v126 = 1;
          }

          if (!v114)
          {
            v125 = v126;
          }

          v127 = v115 ? v123 : 0;
          v128 = v112 ? v125 : v127 + 1;
          v258 = v247;
          *(&v258 & 0xFFFFFFFFFFFFFFF3 | (4 * (v251 & 3))) = 0;
          if (v108 < 0)
          {
            v127 = -v127;
            v128 = -v128;
            v257 = v258;
            *(&v257 & 0xFFFFFFFFFFFFFFF3 | (4 * (v251 & 3))) = 1;
            v247 = v257;
            v108 = -v108;
          }

          else
          {
            v247 = v258;
          }

          v129 = v246;
          v255 = *__pa;
          *(&v255 & 0xFFFFFFFFFFFFFFF3 | (4 * (v251 & 3))) = v127;
          *__pa = v255;
          v256 = v232;
          *(&v256 & 0xFFFFFFFFFFFFFFF3 | (4 * (v251 & 3))) = v108;
          v232 = v256;
          if (v251 < v246)
          {
            break;
          }

          v41 = v245;
          v42 = v253;
          v105 = v251 + 1;
          if (v251 == 3)
          {
            goto LABEL_244;
          }
        }

        v130 = v260;
        v42 = v253;
        if (v260 < v261)
        {
          break;
        }

        v137 = v259;
        v138 = v260 - v259;
        v139 = (v260 - v259) >> 3;
        v140 = v139 + 1;
        if ((v139 + 1) >> 61)
        {
          goto LABEL_330;
        }

        v141 = v261 - v259;
        if ((v261 - v259) >> 2 > v140)
        {
          v140 = v141 >> 2;
        }

        if (v141 >= 0x7FFFFFFFFFFFFFF8)
        {
          v142 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v142 = v140;
        }

        if (v142)
        {
          if (!(v142 >> 61))
          {
            operator new();
          }

LABEL_338:
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v139) = 1;
        v149 = 8 * v139 + 8;
        memcpy(0, v137, v138);
        v259 = 0;
        v260 = v149;
        v261 = 0;
        if (v137)
        {
          operator delete(v137);
        }

        v41 = v245;
        v129 = v246;
        v83 = v235;
        v119 = v251;
        v260 = v149;
        v131 = v128 - v127;
        v133 = v263;
        v132 = v264;
        if (v263 >= v264)
        {
          goto LABEL_214;
        }

LABEL_187:
        *v133 = v131;
        v263 = v133 + 8;
        if (v112)
        {
          goto LABEL_188;
        }

LABEL_226:
        v136 = v266;
        v135 = v267;
        if (v266 >= v267)
        {
LABEL_202:
          v143 = v265;
          v144 = v136 - v265;
          v145 = (v136 - v265) >> 3;
          v146 = v145 + 1;
          if ((v145 + 1) >> 61)
          {
            std::vector<long>::__throw_length_error[abi:ne200100]();
          }

          v147 = v135 - v265;
          if (v147 >> 2 > v146)
          {
            v146 = v147 >> 2;
          }

          if (v147 >= 0x7FFFFFFFFFFFFFF8)
          {
            v148 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v148 = v146;
          }

          if (v148)
          {
            if (!(v148 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v160 = (v136 - v265) >> 3;
          v161 = (8 * v145);
          v162 = (8 * v145 - 8 * v160);
          *v161 = 1;
          v163 = v161 + 1;
          memcpy(v162, v143, v144);
          v265 = v162;
          v266 = v163;
          v267 = 0;
          if (v143)
          {
            operator delete(v143);
          }

          goto LABEL_243;
        }

LABEL_227:
        *v136 = 1;
        v266 = v136 + 1;
        v105 = v119 + 1;
        if (v105 == 4)
        {
          goto LABEL_244;
        }
      }

      *v260 = 1;
      v41 = v245;
      v260 = v130 + 8;
      v131 = v128 - v127;
      v133 = v263;
      v132 = v264;
      if (v263 < v264)
      {
        goto LABEL_187;
      }

LABEL_214:
      v150 = v262;
      v151 = v133 - v262;
      v152 = (v133 - v262) >> 3;
      v153 = v152 + 1;
      if ((v152 + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v154 = v132 - v262;
      if (v154 >> 2 > v153)
      {
        v153 = v154 >> 2;
      }

      if (v154 >= 0x7FFFFFFFFFFFFFF8)
      {
        v155 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v155 = v153;
      }

      if (v155)
      {
        if (!(v155 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v156 = (v133 - v262) >> 3;
      v157 = (8 * v152);
      v158 = (8 * v152 - 8 * v156);
      *v157 = v131;
      v159 = (v157 + 1);
      memcpy(v158, v150, v151);
      v262 = v158;
      v263 = v159;
      v264 = 0;
      if (v150)
      {
        operator delete(v150);
      }

      v129 = v246;
      v83 = v235;
      v119 = v251;
      v263 = v159;
      if (!v112)
      {
        goto LABEL_226;
      }

LABEL_188:
      v134 = *v230;
      v136 = v266;
      v135 = v267;
      if (v237 >= (v230[1] - *v230) >> 3)
      {
        v83 = v235;
        if (v266 >= v267)
        {
          goto LABEL_202;
        }

        goto LABEL_227;
      }

      if (v266 >= v267)
      {
        break;
      }

      *v266 = *(v134 + 8 * v237++);
      v129 = v246;
      v83 = v235;
      v266 = v136 + 1;
      v105 = v119 + 1;
      if (v105 == 4)
      {
        goto LABEL_244;
      }
    }

    v164 = v265;
    v165 = v266 - v265;
    v166 = (v266 - v265) >> 3;
    v167 = v166 + 1;
    if ((v166 + 1) >> 61)
    {
LABEL_330:
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v168 = v267 - v265;
    if ((v267 - v265) >> 2 > v167)
    {
      v167 = v168 >> 2;
    }

    if (v168 >= 0x7FFFFFFFFFFFFFF8)
    {
      v169 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v169 = v167;
    }

    if (v169)
    {
      if (!(v169 >> 61))
      {
        operator new();
      }

      goto LABEL_338;
    }

    v170 = (8 * v166);
    v171 = *(v134 + 8 * v237);
    v172 = &v170[-((v266 - v265) >> 3)];
    *v170 = v171;
    v163 = v170 + 1;
    memcpy(v172, v164, v165);
    v265 = v172;
    v266 = v163;
    v267 = 0;
    if (v164)
    {
      operator delete(v164);
    }

    ++v237;
LABEL_243:
    v129 = v246;
    v83 = v235;
    v266 = v163;
    v105 = v251 + 1;
  }

  while (v251 != 3);
LABEL_244:
  if (v129 >= 5)
  {
    v173 = v246 - 4;
    do
    {
      v175 = v266;
      if (v266 >= v267)
      {
        v177 = v265;
        v178 = v266 - v265;
        v179 = (v266 - v265) >> 3;
        v180 = v179 + 1;
        if ((v179 + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        v181 = v267 - v265;
        if ((v267 - v265) >> 2 > v180)
        {
          v180 = v181 >> 2;
        }

        if (v181 >= 0x7FFFFFFFFFFFFFF8)
        {
          v182 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v182 = v180;
        }

        if (v182)
        {
          if (!(v182 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v179) = 1;
        v176 = 8 * v179 + 8;
        memcpy(0, v177, v178);
        v265 = 0;
        v266 = v176;
        v267 = 0;
        if (v177)
        {
          operator delete(v177);
        }
      }

      else
      {
        *v266 = 1;
        v176 = (v175 + 1);
      }

      v266 = v176;
      v183 = v260;
      if (v260 < v261)
      {
        *v260 = 1;
        v174 = (v183 + 8);
      }

      else
      {
        v184 = v259;
        v185 = v260 - v259;
        v186 = (v260 - v259) >> 3;
        v187 = v186 + 1;
        if ((v186 + 1) >> 61)
        {
          std::vector<long>::__throw_length_error[abi:ne200100]();
        }

        v188 = v261 - v259;
        if ((v261 - v259) >> 2 > v187)
        {
          v187 = v188 >> 2;
        }

        if (v188 >= 0x7FFFFFFFFFFFFFF8)
        {
          v189 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v189 = v187;
        }

        if (v189)
        {
          if (!(v189 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v186) = 1;
        v174 = 8 * v186 + 8;
        memcpy(0, v184, v185);
        v259 = 0;
        v260 = v174;
        v261 = 0;
        if (v184)
        {
          operator delete(v184);
        }
      }

      v260 = v174;
      --v173;
    }

    while (v173);
  }

  v190 = v225;
  v191 = *(v224 + 15);
  v238 = v190;
  if (!v191 || *(v224 + 40) != 1)
  {
    v193 = [v190 descriptor];
    [v193 dataType];

    operator new();
  }

  v192 = v190;
  v226 = v191;

  if (v246 > 4)
  {
    v194 = v231[1];
    if (v194 != *v231)
    {
      if (((v194 - *v231) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    operator new();
  }

  v195 = v238;
  v196 = v239;
  v197 = v239;
  v198 = 0;
  v199 = v238;
  v200 = v238;
  do
  {
    v201 = [v199 descriptor];
    v202 = [v239 descriptor];
    v203 = MEMORY[0x1E69744E8];
    if (*(v239 + *MEMORY[0x1E69744E8]))
    {
      [v239 setReadCount:{objc_msgSend(v239, "readCount") + 1}];
    }

    v204 = a2[1];
    v205 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v206 = [v239 safeArrayViewWithCommandBuffer:v204 computeEncoder:v205 descriptor:v202 aliasing:0];

    v207 = a2[1];
    v208 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v209 = [v238 safeArrayViewWithCommandBuffer:v207 computeEncoder:v208 descriptor:v201 aliasing:0];

    v210 = v276;
    v211 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v212 = a2[1];
    v282 = v209;
    v213 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v282 count:1];
    [v210 encodeToMPSCommandEncoder:v211 commandBuffer:v212 sourceArrays:v213 resultState:0 destinationArray:v206 kernelDAGObject:v226];

    if (*(v206 + *v203) == 1)
    {
      [v206 setReadCount:{objc_msgSend(v206, "readCount") - 1}];
    }

    ++v198;
    v196 = v206;
    v200 = v209;
    v199 = v238;
  }

  while (v198 != 1);

  if (v259)
  {
    v260 = v259;
    operator delete(v259);
  }

  if (v262)
  {
    v263 = v262;
    operator delete(v262);
  }

  if (v265)
  {
    v266 = v265;
    operator delete(v265);
  }

  v214 = *(v224 + 2);
  v98 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v214, v98, a2[1], &v276, v239, v220, v221, 0);
LABEL_297:

  v215 = v268;
  v268 = 0;
  if (v215)
  {
    v216 = *v215;
    if (*v215)
    {
      v215[1] = v216;
      operator delete(v216);
    }

    MEMORY[0x1E12E5B90](v215, 0x10C402FEFCB83);
  }

  v217 = v269;
  v269 = 0;
  if (v217)
  {
    v218 = *v217;
    if (*v217)
    {
      v217[1] = v218;
      operator delete(v218);
    }

    MEMORY[0x1E12E5B90](v217, 0x10C402FEFCB83);
  }

  if (__src)
  {
    operator delete(__src);
  }

  if (v270)
  {
    v271 = v270;
    operator delete(v270);
  }

  if (v273)
  {
    v274 = v273;
    operator delete(v273);
  }
}

uint64_t GPU::valueHasUnconsumedUses(void *a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v75 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v75);
  v74 = DefiningOp;
  if (!DefiningOp)
  {
    return 1;
  }

  v10 = a3[1];
  if (v10)
  {
    v11 = 0x9DDFEA08EB382D69 * ((8 * (DefiningOp & 0x1FFFFFFF) + 8) ^ HIDWORD(DefiningOp));
    v12 = 0x9DDFEA08EB382D69 * (HIDWORD(DefiningOp) ^ (v11 >> 47) ^ v11);
    v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
    v14 = vcnt_s8(v10);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = v13;
      if (v13 >= *&v10)
      {
        v15 = v13 % *&v10;
      }
    }

    else
    {
      v15 = (*&v10 - 1) & v13;
    }

    v16 = *(*a3 + 8 * v15);
    if (v16)
    {
      v17 = *v16;
      if (v17)
      {
        if (v14.u32[0] < 2uLL)
        {
          v18 = *&v10 - 1;
          while (1)
          {
            v20 = v17[1];
            if (v13 == v20)
            {
              if (v17[2] == DefiningOp)
              {
                return 0;
              }
            }

            else if ((v20 & v18) != v15)
            {
              goto LABEL_22;
            }

            v17 = *v17;
            if (!v17)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v19 = v17[1];
          if (v13 == v19)
          {
            if (v17[2] == DefiningOp)
            {
              return 0;
            }
          }

          else
          {
            if (v19 >= *&v10)
            {
              v19 %= *&v10;
            }

            if (v19 != v15)
            {
              break;
            }
          }

          v17 = *v17;
        }

        while (v17);
      }
    }
  }

LABEL_22:
  v71 = a2;
  v73 = a3;
  std::__hash_table<mlir::Operation *,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,std::allocator<mlir::Operation *>>::__emplace_unique_key_args<mlir::Operation *,mlir::Operation * const&>(a3, &v74);
  v21 = *v75;
  if (*v75)
  {
    v22 = 0;
    while (1)
    {
      v24 = v21[2];
      if (v24)
      {
        v72 = v22;
        v25 = *(v24 + 36);
        if (v25)
        {
          v26 = v24 - 16;
        }

        else
        {
          v26 = 0;
        }

        if (v25)
        {
          v27 = 0;
          while (1)
          {
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, v27);
            v29 = (*(*a4 + 48))(a4, NextResultAtOffset, 1);
            if (!v29)
            {
              break;
            }

            v30 = *(*(v24 + 48) + 16);
            v31 = v30 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id;
            v32 = v31 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id;
            v33 = v32 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id;
            v34 = v33 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id;
            v35 = v34 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id;
            v36 = v35 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id;
            v37 = v36 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id;
            v38 = v37 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id;
            v39 = v38 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id;
            v40 = v39 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id;
            v41 = v40 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id;
            v42 = v41 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id;
            v43 = v42 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id;
            v44 = v43 || v30 == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id;
            v45 = v44;
            if (!a5 && v45 && (GPU::valueHasUnconsumedUses(NextResultAtOffset, 0, v73, a4, 0) & 1) != 0)
            {
              break;
            }

            if (v25 == ++v27)
            {
              goto LABEL_24;
            }
          }

LABEL_89:
          v22 = v72 + 1;
          goto LABEL_26;
        }

LABEL_24:
        if (*(*(v24 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id && v75 == *(*(v24 + 72) + 56))
        {
          goto LABEL_89;
        }

        v22 = v72;
      }

LABEL_26:
      v21 = *v21;
      if (v21)
      {
        v23 = v22 <= a5;
      }

      else
      {
        v23 = 0;
      }

      if (!v23)
      {
        goto LABEL_91;
      }
    }
  }

  v22 = 0;
LABEL_91:
  if (v22 > a5)
  {
    return 1;
  }

  if (v74)
  {
    if (*(*(v74 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id)
    {
      for (i = *(v74 - 16); i; i = *i)
      {
        v48 = i[2];
        if (v48)
        {
          if (*(*(v48 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id && v74 - 16 == *(*(v48 + 72) + 24))
          {
            return 0;
          }
        }
      }
    }
  }

  if (!v71)
  {
    v50 = 0;
    goto LABEL_110;
  }

  v49 = *v71;
  if (*v71)
  {
    v50 = 0;
    do
    {
      v51 = v49[2];
      if (v51 && *(*(v51 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
      {
        v50 = *(*(v51 + 72) + 24);
      }

      v49 = *v49;
    }

    while (v49);
LABEL_110:
    if ((*(v74 + 46) & 0x80) == 0)
    {
      return 0;
    }

    goto LABEL_111;
  }

  v50 = 0;
  if ((*(v74 + 46) & 0x80) == 0)
  {
    return 0;
  }

LABEL_111:
  v52 = *(v74 + 68);
  if (v52)
  {
    v53 = 0;
    v54 = (*(v74 + 72) + 24);
    do
    {
      if (*v54 == v50)
      {
        v55 = v53;
      }

      else
      {
        v55 = (v53 + 1);
        v56 = *(*(v74 + 48) + 16);
        if (v53 <= 0)
        {
          if (v56 != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id && v56 != &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id)
          {
            goto LABEL_114;
          }
        }

        else if (v56 != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
        {
          goto LABEL_114;
        }

        if (GPU::valueHasUnconsumedUses(*v54, 0, v73, a4, 0))
        {
          return 1;
        }
      }

LABEL_114:
      v54 += 4;
      v53 = v55;
      --v52;
    }

    while (v52);
  }

  return 0;
}

void GPU::ReverseOpHandler::~ReverseOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::StridedSliceOpHandler::~StridedSliceOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::StridedSliceGradientOpHandler::~StridedSliceGradientOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::StridedSliceUpdateOpHandler::~StridedSliceUpdateOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::CropOpHandler::encodeOp(GPU::CropOpHandler *this, void **a2)
{
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
  v30 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v29 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v8 = [v29 mpsndarray];
  if (!v8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v9 = [v8 descriptor];
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v7);
  v11 = StaticType;
  if (StaticType)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v12 = 0;
  }

  v31[0] = v11;
  v31[1] = v12;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v14 = v13;
  Axis = RuntimeUtils::getAxis(*(this + 2), a2, *(*(v4 + 72) + 56), v13);
  v16 = RuntimeUtils::getAxis(*(this + 2), a2, *(*(v4 + 72) + 88), 0);
  v17 = RuntimeUtils::getAxis(*(this + 2), a2, *(*(v4 + 72) + 120), 0);
  v18 = ~Axis;
  v19 = [v9 sliceRangeForDimension:v14 + ~Axis];
  if (v20 >= v17 + v16)
  {
    v21 = v20 - (v17 + v16);
  }

  else
  {
    v21 = 0;
  }

  v22 = __CFADD__(v19, v16);
  v23 = v19 + v16;
  if (v22 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v9 sliceDimension:v14 + v18 withSubrange:{v23, v21}];
  v24 = a2[1];
  v25 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v26 = [v8 safeArrayViewWithCommandBuffer:v24 computeEncoder:v25 descriptor:v9 aliasing:0];

  v27 = *(this + 2);
  v28 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v27, v28, a2[1], this + 1, v26, v30, NextResultAtOffset, 0);
}

unint64_t GPU::CropOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

void GPU::SliceOpHandler::encodeOp(GPU::SliceOpHandler *this, void **a2)
{
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
  v37 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  v8 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  v9 = [v8 mpsndarray];
  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = [v9 descriptor];
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v7);
  v12 = StaticType;
  if (StaticType)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v13 = 0;
  }

  v41 = v12;
  v42 = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(&v41);
  v15 = v14;
  Axis = RuntimeUtils::getAxis(*(this + 2), a2, *(*(v4 + 72) + 56), v14);
  if (Axis >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v4 + 72) + 120), &v41);
  v18 = *v41;
  v19 = &v9[*MEMORY[0x1E6974508]];
  v35 = *(v19 + 2);
  v36 = *(v19 + 3);
  v33 = *v19;
  v34 = *(v19 + 1);
  v32 = *&v9[*MEMORY[0x1E69744D8]];
  GPURegionRuntime::waitAndReadIntTensorData(*(this + 2), a2, *(*(v4 + 72) + 88), v40);
  v20 = v17 + ~Axis;
  v21 = *v40[0];
  v22 = [v10 sliceRangeForDimension:v20];
  v24 = v23;
  v38 = v32;
  v39[0] = v33;
  v39[1] = v34;
  v39[2] = v35;
  v39[3] = v36;
  v25 = (*(v39 + (*(&v38 | v20 & 0xF) & 0xF)) & (v21 >> 63)) + v21;
  v26 = v25 + v22;
  if (__CFADD__(v25, v22) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v18 > v24 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v10 sliceDimension:v20 withSubrange:{v26, v18, v32, v33, v34, v35, v36}];
  v27 = a2[1];
  v28 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v29 = [v9 safeArrayViewWithCommandBuffer:v27 computeEncoder:v28 descriptor:v10 aliasing:0];

  v30 = *(this + 2);
  v31 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  GPURegionRuntime::copyNDArrayToTarget(v30, v31, a2[1], this + 1, v29, v37, NextResultAtOffset, 0);

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

unint64_t GPU::SliceOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

unint64_t GPU::SplitOpHandler::getJITStaticOperandRepr(GPU::BaseOpHandler *this, GPU::EncodeDescriptor *a2, mlir::UnknownLoc **a3, unsigned int a4)
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

void GPU::SplitOpHandler::encodeOp(GPU::SplitOpHandler *this, void **a2)
{
  GPU::BaseOpHandler::_inferJITOutputTypes(this, a2);
  v61 = *(this + 3);
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v61, 0);
  if (*(v61 + 36))
  {
    NextResultAtOffset = v61 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v53 = NextResultAtOffset;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v61, 0);
  v6 = *(*(v61 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v7 = (*(**(this + 2) + 48))(*(this + 2), v6, 0);
  v8 = [v7 mpsndarray];
  v52 = v8;
  if (!v8 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v56 = [v8 descriptor];
  StaticType = GPURegionRuntime::getStaticType(*(this + 2), v6);
  v10 = StaticType;
  if (StaticType)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
  }

  else
  {
    v11 = 0;
  }

  v62 = v10;
  v63 = v11;
  mlir::CallableOpInterface::getArgAttrsAttr(&v62);
  v13 = v12;
  v14 = *(this + 2);
  v15 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v61, 1u);
  v54 = v13 + ~RuntimeUtils::getAxis(v14, a2, *(*(v61 + 72) + 32 * v15 + 24), v13);
  v16 = [v56 sliceRangeForDimension:?];
  v49 = v17;
  v50 = v16;
  v18 = (HIDWORD(ODSResultIndexAndLength) + ODSResultIndexAndLength);
  v55 = v18 - ODSResultIndexAndLength;
  v19 = v53;
  if (v18 != ODSResultIndexAndLength)
  {
    v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, 0);
    v21 = GPURegionRuntime::getStaticType(*(this + 2), v20);
    v22 = v21;
    v23 = *(*v21 + 136);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v25 = v21;
    }

    else
    {
      v25 = 0;
    }

    v62 = v25;
    if (v25)
    {
      if (mlir::TensorType::hasRank(&v62))
      {
        mlir::ArrayAttr::getValue(&v62);
      }

      if (mlir::TensorType::hasRank(&v62))
      {
        Value = mlir::ArrayAttr::getValue(&v62);
        if (!v27)
        {
          goto LABEL_30;
        }

        v28 = 8 * v27;
        while (*Value != 0x8000000000000000)
        {
          ++Value;
          v28 -= 8;
          if (!v28)
          {
            goto LABEL_30;
          }
        }
      }

      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

LABEL_30:
    if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8))
      {
        v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
        v62 = v22;
        v63 = v29;
        if (v22)
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v62);
          if (v31)
          {
            v32 = 0;
            v33 = 0uLL;
            v34 = 0uLL;
            v35 = 0uLL;
            v36 = 0uLL;
            do
            {
              v37 = *(ArgAttrsAttr - 8 + 8 * v31);
              v57 = v33;
              v58 = v34;
              v59 = v35;
              v60 = v36;
              *(&v57 + (v32 & 0xF)) = v37;
              v35 = v59;
              v36 = v60;
              v33 = v57;
              v34 = v58;
              ++v32;
              --v31;
            }

            while (v31);
          }
        }
      }

      else
      {
        v62 = 0;
        v63 = 0;
      }
    }

    operator new();
  }

  if (v55 > 1 && *(v52 + *MEMORY[0x1E69744E8]) == 1)
  {
    [v52 setReadCount:{v55 + objc_msgSend(v52, "readCount") - 1}];
  }

  if (HIDWORD(ODSResultIndexAndLength) + ODSResultIndexAndLength != ODSResultIndexAndLength)
  {
    v38 = 0;
    v39 = v50;
    do
    {
      v40 = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, v38);
      v41 = *(8 * v38);
      if (v50 > v39 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v42 = v41 + v39;
      if (v41 + v39 > v49 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      [v56 sliceDimension:v54 withSubrange:{v39, v41}];
      v43 = a2[1];
      v44 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      v45 = [v52 safeArrayViewWithCommandBuffer:v43 computeEncoder:v44 descriptor:v56 aliasing:0];

      v46 = (*(**(this + 2) + 48))(*(this + 2), v40, 0);
      v47 = *(this + 2);
      v48 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
      GPURegionRuntime::copyNDArrayToTarget(v47, v48, a2[1], this + 1, v45, v46, v40, 0);
      ++v38;

      v39 = v42;
      v19 = v53;
    }

    while (v55 != v38);
    operator delete(0);
  }
}

void sub_1E082EBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  operator delete(v22);

  _Unwind_Resume(a1);
}

void GPU::CropOpHandler::~CropOpHandler(GPU::CropOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::SliceOpHandler::~SliceOpHandler(GPU::SliceOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::SplitOpHandler::~SplitOpHandler(GPU::SplitOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

id *GPU::MatMulOpHandler::MatMulOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B51768;
  *(v6 + 15) = 0;
  v7 = objc_alloc(MEMORY[0x1E6974788]);
  v8 = [a2[6] metalDevice];
  v9 = [v7 initWithDevice:v8 sourceCount:2];

  [v9 setBeta:0.0];
  objc_storeStrong(this + 1, v9);
  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];

  return this;
}

void sub_1E082EE3C(_Unwind_Exception *a1)
{
  v3 = v2;

  v5 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  GPU::BaseOpHandler::~BaseOpHandler(v1);
  _Unwind_Resume(a1);
}

GPU::MatMulOpHandler **GPU::MatMulOpHandler::postInitializeHook(GPU::MatMulOpHandler **this)
{
  if (*(this + 40) == 1 && !this[4])
  {
    v8 = v1;
    v9 = v2;
    v3 = this;
    this = GPU::MatMulOpHandler::getQuantizationParameters(this[3], v7, v6, v5, &v4);
    if (this)
    {
      return GPU::MatMulOpHandler::_getQuantKernelDAGObject(v3);
    }
  }

  return this;
}

uint64_t GPU::MatMulOpHandler::getQuantizationParameters(GPU::MatMulOpHandler *this, mlir::Value *a2, mlir::Value *a3, mlir::Value *a4, mlir::Value *a5)
{
  v17 = *(*(this + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp)
  {
    v11 = 0;
    v17 = *(*(this + 9) + 56);
    v12 = mlir::Value::getDefiningOp(&v17);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (!v11)
    {
      return 0;
    }

    v13 = 0;
    goto LABEL_17;
  }

  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v11 = DefiningOp;
  }

  else
  {
    v11 = 0;
  }

  v17 = *(*(this + 9) + 56);
  v12 = mlir::Value::getDefiningOp(&v17);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ((v11 == 0) != (v13 == 0))
  {
LABEL_17:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v11)
  {
    v14 = *(v11 + 72);
    *a2 = *(v14 + 24);
    *a3 = *(v14 + 88);
    v15 = *(v13 + 72);
    *a4 = *(v15 + 24);
    *a5 = *(v15 + 88);
    return 1;
  }

  return 0;
}

id GPU::MatMulOpHandler::_getQuantKernelDAGObject(GPU::MatMulOpHandler *this)
{
  v2 = *(this + 15);
  if (!v2 || *(this + 40) != 1)
  {
    operator new();
  }

  if (!*(v2 + 120) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v3 = *(*(this + 15) + 120);

  return v3;
}

void GPU::MatMulOpHandler::encodeNDArrayOp(GPU::MatMulOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (GPU::MatMulOpHandler::getQuantizationParameters(*(this + 3), v31, v30, v29, v28))
  {
    v6 = GPU::MatMulOpHandler::_getQuantKernelDAGObject(this);
  }

  v7 = *(this + 3);
  v8 = [(NSArray *)v5 objectAtIndexedSubscript:0];
  v9 = [v8 mpsndarray];
  v10 = *(this + 1);
  if (*(this + 4))
  {
    mlir::Block::getParentOp(*(*(this + 3) + 16));
    if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v11 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
    v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v13 = *(a2 + 1);
    v14 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
    [v10 encodeToMPSCommandEncoder:v12 commandBuffer:v13 sourceArrays:v11 resultState:0 destinationArray:v9 kernelDAGObject:v14];
    goto LABEL_8;
  }

  v15 = *(this + 15);
  if (v15)
  {
    v11 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(v15, *(this + 2));
    v12 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
    v16 = *(a2 + 1);
    v14 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 15));
    [v10 encodeToMPSCommandEncoder:v12 commandBuffer:v16 sourceArrays:v11 resultState:0 destinationArray:v9 kernelDAGObject:v14];
LABEL_8:

    goto LABEL_9;
  }

  v17 = *(v7 + 72);
  v18 = *(v17 + 56);
  v27 = (*(**(this + 2) + 48))(*(this + 2), *(v17 + 24), 0);
  v19 = (*(**(this + 2) + 48))(*(this + 2), v18, 0);
  v20 = [v27 mpsndarray];
  v21 = [v19 mpsndarray];
  v22 = v21;
  if (!v9 || (v20 ? (v23 = v21 == 0) : (v23 = 1), v23))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v24 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  v25 = *(a2 + 1);
  v32[0] = v20;
  v32[1] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v10 encodeToMPSCommandEncoder:v24 commandBuffer:v25 sourceArrays:v26 destinationArray:v9];

LABEL_9:
}

id *GPU::QuantizedMatMulOpHandler::QuantizedMatMulOpHandler(id *this, id *a2, mlir::Operation *a3, GPU::MPSGraphKernelDAG *a4)
{
  v6 = GPU::BaseOpHandler::BaseOpHandler(this, a2, a3, a4);
  *v6 = &unk_1F5B517B8;
  *(v6 + 15) = 0;
  v7 = (v6 + 120);
  *(v6 + 16) = 0;
  v60 = *(v6 + 3);
  v59 = 0;
  v58[0] = &v59;
  v58[1] = v6;
  ODSOperandIndexAndLength = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 0);
  v9 = *(*(v60 + 9) + 32 * ODSOperandIndexAndLength + 24);
  v10 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 1);
  if ((*(v60 + 46) & 0x80) != 0)
  {
    v11 = *(v60 + 9);
    v12 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
LABEL_3:
      v13 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    v12 = v10;
    if (HIDWORD(v10) + v10 == v10)
    {
      goto LABEL_3;
    }
  }

  v13 = *(v11 + 32 * v12 + 24);
LABEL_6:
  v14 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 2);
  if ((*(v60 + 46) & 0x80) != 0)
  {
    v15 = *(v60 + 9);
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
    v16 = v14;
    if (HIDWORD(v14) + v14 == v14)
    {
      goto LABEL_8;
    }
  }

  v17 = *(v15 + 32 * v16 + 24);
LABEL_11:
  v18 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 3);
  if ((*(v60 + 46) & 0x80) != 0)
  {
    v19 = *(v60 + 9);
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
LABEL_13:
      v21 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0;
    v20 = v18;
    if (HIDWORD(v18) + v18 == v18)
    {
      goto LABEL_13;
    }
  }

  v21 = *(v19 + 32 * v20 + 24);
LABEL_16:
  InputQuantParamsAxis = mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxis(&v60);
  v23 = GPU::QuantizedMatMulOpHandler::QuantizedMatMulOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0::operator()(v58, v9, v13, v17, v21, 0, 0, 0, InputQuantParamsAxis & 0xFFFFFFFFFFLL);
  v24 = *v7;
  *v7 = v23;

  v25 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 4);
  v26 = *(*(v60 + 9) + 32 * v25 + 24);
  v27 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 5);
  if ((*(v60 + 46) & 0x80) != 0)
  {
    v28 = *(v60 + 9);
    v29 = v27;
    if (HIDWORD(v27) + v27 == v27)
    {
LABEL_18:
      v30 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v28 = 0;
    v29 = v27;
    if (HIDWORD(v27) + v27 == v27)
    {
      goto LABEL_18;
    }
  }

  v30 = *(v28 + 32 * v29 + 24);
LABEL_21:
  v31 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 6);
  if ((*(v60 + 46) & 0x80) != 0)
  {
    v32 = *(v60 + 9);
    v33 = v31;
    if (HIDWORD(v31) + v31 == v31)
    {
LABEL_23:
      v34 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    v33 = v31;
    if (HIDWORD(v31) + v31 == v31)
    {
      goto LABEL_23;
    }
  }

  v34 = *(v32 + 32 * v33 + 24);
LABEL_26:
  v35 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 7);
  if ((*(v60 + 46) & 0x80) != 0)
  {
    v36 = *(v60 + 9);
    v37 = v35;
    if (HIDWORD(v35) + v35 == v35)
    {
LABEL_28:
      v38 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v36 = 0;
    v37 = v35;
    if (HIDWORD(v35) + v35 == v35)
    {
      goto LABEL_28;
    }
  }

  v38 = *(v36 + 32 * v37 + 24);
LABEL_31:
  v39 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 8);
  if ((*(v60 + 46) & 0x80) != 0)
  {
    v40 = *(v60 + 9);
    v41 = v39;
    if (HIDWORD(v39) + v39 == v39)
    {
LABEL_33:
      v42 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v40 = 0;
    v41 = v39;
    if (HIDWORD(v39) + v39 == v39)
    {
      goto LABEL_33;
    }
  }

  v42 = *(v40 + 32 * v41 + 24);
LABEL_36:
  v43 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 9);
  if ((*(v60 + 46) & 0x80) != 0)
  {
    v44 = *(v60 + 9);
    v45 = v43;
    if (HIDWORD(v43) + v43 == v43)
    {
LABEL_38:
      v46 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v44 = 0;
    v45 = v43;
    if (HIDWORD(v43) + v43 == v43)
    {
      goto LABEL_38;
    }
  }

  v46 = *(v44 + 32 * v45 + 24);
LABEL_41:
  v47 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v60, 10);
  if ((*(v60 + 46) & 0x80) == 0)
  {
    v48 = 0;
    v49 = v47;
    if (HIDWORD(v47) + v47 == v47)
    {
      goto LABEL_43;
    }

LABEL_45:
    v50 = *(v48 + 32 * v49 + 24);
    goto LABEL_46;
  }

  v48 = *(v60 + 9);
  v49 = v47;
  if (HIDWORD(v47) + v47 != v47)
  {
    goto LABEL_45;
  }

LABEL_43:
  v50 = 0;
LABEL_46:
  WeightsQuantParamsAxis = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxis(&v60);
  v52 = GPU::QuantizedMatMulOpHandler::QuantizedMatMulOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0::operator()(v58, v26, v30, v34, v38, v42, v46, v50, WeightsQuantParamsAxis & 0xFFFFFFFFFFLL);
  v53 = this[16];
  this[16] = v52;

  v54 = objc_alloc(MEMORY[0x1E6974810]);
  v55 = [a2[6] metalDevice];
  v56 = [v54 initWithDevice:v55 leftQuantizationDescriptor:this[15] rightQuantizationDescriptor:this[16] sourceCount:v59];

  objc_storeStrong(this + 1, v56);
  [this[1] setOptions:{objc_msgSend(this[1], "options") | 1}];

  return this;
}

id GPU::QuantizedMatMulOpHandler::QuantizedMatMulOpHandler(GPURegionRuntime *,mlir::Operation *,GPU::MPSGraphKernelDAG *)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, _BOOL8 a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a1 + 8);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a2);
  ++**a1;
  v19 = *(*ElementTypeOrSelf + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || (v19 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id ? (v20 = v19 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v20 = 1), v20 || (v19 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id ? (v21 = v19 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v21 = 1), v21 || (v19 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id ? (v22 = v19 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v22 = 1), v22 || (v19 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id ? (v23 = v19 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v23 = 1), v23 || (v19 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id ? (v24 = v19 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v24 = 1), v24))))))
  {
    v25 = 0;
  }

  else
  {
    v40 = a8;
    v25 = 0;
    if (v19 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
    {
      v25 = 0;
      if (v19 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
      {
        v25 = 0;
        if (v19 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          MPSDataType = getMPSDataType(ElementTypeOrSelf);
          if (a6)
          {
            ++**a1;
            v28 = objc_opt_new();
            if ((a9 & 0x100000000) != 0)
            {
              v29 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v29)
              {
                v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
              }

              else
              {
                v30 = 0;
              }

              v41[0] = v29;
              v41[1] = v30;
              mlir::CallableOpInterface::getArgAttrsAttr(v41);
              if (a9 >= 0)
              {
                v38 = v37;
              }

              else
              {
                v38 = 0;
              }

              v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38 + ~a9];
              [v28 addObject:v39];
            }

            v25 = [objc_alloc(MEMORY[0x1E6974760]) initWithDataType:MPSDataType vectorAxes:v28];
          }

          else
          {
            StaticType = GPURegionRuntime::getStaticType(*(v17 + 16), a3);
            if (StaticType)
            {
              mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*StaticType + 8);
            }

            v32 = GPURegionRuntime::getStaticType(*(v17 + 16), a4);
            if (v32)
            {
              mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
            }

            isConstantIntZero = mlir::isConstantIntZero(a4);
            v34 = !mlir::isConstantFPZero(a5);
            if (a7)
            {
              a7 = !mlir::isConstantFPOne(a7);
            }

            if (v40)
            {
              v41[0] = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
              v35 = mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(v40, v41) ^ 1;
            }

            else
            {
              v35 = 0;
            }

            if (isConstantIntZero)
            {
              v36 = 1;
            }

            else
            {
              v36 = 2;
            }

            **a1 += v36 + v34 + a7 + v35;
            v25 = [objc_alloc(MEMORY[0x1E6974690]) initWithDataType:MPSDataType hasZeroPoint:isConstantIntZero ^ 1u hasMinValue:v34 hasDoubleQuantScale:a7 hasDoubleQuantMinVal:0];
          }
        }
      }
    }
  }

  return v25;
}

void GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::QuantizedMatMulOpHandler *this, GPU::EncodeDescriptor *a2, NSArray *a3)
{
  v116 = a2;
  v4 = a3;
  v115 = *(this + 3);
  v5 = [(NSArray *)v4 objectAtIndexedSubscript:0];
  v110 = [v5 mpsndarray];
  v108 = v4;
  v109 = *(this + 1);
  v114 = &v116;
  v107 = v5;
  if (!*(this + 4))
  {
    v43 = *(this + 2);
    ODSOperandIndexAndLength = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 0);
    v45 = (*(*v43 + 48))(v43, *(*(v115 + 9) + 32 * ODSOperandIndexAndLength + 24), 0);
    v46 = [v45 mpsndarray];

    v47 = *(this + 2);
    v48 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 4);
    v49 = (*(*v47 + 48))(v47, *(*(v115 + 9) + 32 * v48 + 24), 0);
    v50 = [v49 mpsndarray];

    if (!v110 || (v46 ? (v51 = v50 == 0) : (v51 = 1), v51))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    if (mlir::mpsx::QuantizedMatMulOp::getTransposeLhs(&v115))
    {
      v52 = GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_0::operator()(&v114, v46, 0);

      v46 = v52;
    }

    if (mlir::mpsx::QuantizedMatMulOp::getTransposeRhs(&v115))
    {
      v53 = GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_0::operator()(&v114, v50, 0);

      v50 = v53;
    }

    v112 = &v113;
    v113 = [MEMORY[0x1E695E0F0] mutableCopy];
    v54 = v113;
    v6 = v46;
    for (i = v54; ; i = *v112)
    {
      v56 = [i count];
      v57 = *v112;
      if (v56)
      {
        break;
      }

      v58 = [MEMORY[0x1E695DFB0] null];
      [v57 addObject:v58];
    }

    [*v112 setObject:v6 atIndexedSubscript:0];

    v7 = v50;
    while (1)
    {
      v59 = [*v112 count];
      v60 = *v112;
      if (v59 > 1)
      {
        break;
      }

      v61 = [MEMORY[0x1E695DFB0] null];
      [v60 addObject:v61];
    }

    [*v112 setObject:v7 atIndexedSubscript:1];

    v111[0] = this;
    v111[1] = &v116;
    v111[2] = &v112;
    v111[3] = &v114;
    v62 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 0);
    v63 = *(*(v115 + 9) + 32 * v62 + 24);
    v64 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 1);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v65 = *(v115 + 9);
      v66 = v64;
      if (HIDWORD(v64) + v64 == v64)
      {
LABEL_80:
        v67 = 0;
        goto LABEL_87;
      }
    }

    else
    {
      v65 = 0;
      v66 = v64;
      if (HIDWORD(v64) + v64 == v64)
      {
        goto LABEL_80;
      }
    }

    v67 = *(v65 + 32 * v66 + 24);
LABEL_87:
    v68 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 2);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v69 = *(v115 + 9);
      v70 = v68;
      if (HIDWORD(v68) + v68 == v68)
      {
LABEL_89:
        v71 = 0;
        goto LABEL_92;
      }
    }

    else
    {
      v69 = 0;
      v70 = v68;
      if (HIDWORD(v68) + v68 == v68)
      {
        goto LABEL_89;
      }
    }

    v71 = *(v69 + 32 * v70 + 24);
LABEL_92:
    v72 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 3);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v73 = *(v115 + 9);
      v74 = v72;
      if (HIDWORD(v72) + v72 == v72)
      {
LABEL_94:
        v75 = 0;
        goto LABEL_97;
      }
    }

    else
    {
      v73 = 0;
      v74 = v72;
      if (HIDWORD(v72) + v72 == v72)
      {
        goto LABEL_94;
      }
    }

    v75 = *(v73 + 32 * v74 + 24);
LABEL_97:
    InputQuantParamsAxis = mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxis(&v115);
    TransposeLhs = mlir::mpsx::QuantizedMatMulOp::getTransposeLhs(&v115);
    GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_3::operator()(v111, v63, v67, v71, v75, 0, 0, 0, InputQuantParamsAxis & 0xFFFFFFFFFFLL, 1, TransposeLhs);
    v78 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 4);
    v79 = *(*(v115 + 9) + 32 * v78 + 24);
    v80 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 5);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v81 = *(v115 + 9);
      v82 = v80;
      if (HIDWORD(v80) + v80 == v80)
      {
LABEL_99:
        v83 = 0;
        goto LABEL_102;
      }
    }

    else
    {
      v81 = 0;
      v82 = v80;
      if (HIDWORD(v80) + v80 == v80)
      {
        goto LABEL_99;
      }
    }

    v83 = *(v81 + 32 * v82 + 24);
LABEL_102:
    v84 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 6);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v85 = *(v115 + 9);
      v86 = v84;
      if (HIDWORD(v84) + v84 == v84)
      {
LABEL_104:
        v87 = 0;
        goto LABEL_107;
      }
    }

    else
    {
      v85 = 0;
      v86 = v84;
      if (HIDWORD(v84) + v84 == v84)
      {
        goto LABEL_104;
      }
    }

    v87 = *(v85 + 32 * v86 + 24);
LABEL_107:
    v88 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 7);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v89 = *(v115 + 9);
      v90 = v88;
      if (HIDWORD(v88) + v88 == v88)
      {
LABEL_109:
        v91 = 0;
        goto LABEL_112;
      }
    }

    else
    {
      v89 = 0;
      v90 = v88;
      if (HIDWORD(v88) + v88 == v88)
      {
        goto LABEL_109;
      }
    }

    v91 = *(v89 + 32 * v90 + 24);
LABEL_112:
    v92 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 8);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v93 = *(v115 + 9);
      v94 = v92;
      if (HIDWORD(v92) + v92 == v92)
      {
LABEL_114:
        v95 = 0;
        goto LABEL_117;
      }
    }

    else
    {
      v93 = 0;
      v94 = v92;
      if (HIDWORD(v92) + v92 == v92)
      {
        goto LABEL_114;
      }
    }

    v95 = *(v93 + 32 * v94 + 24);
LABEL_117:
    v96 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 9);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v97 = *(v115 + 9);
      v98 = v96;
      if (HIDWORD(v96) + v96 == v96)
      {
LABEL_119:
        v99 = 0;
        goto LABEL_122;
      }
    }

    else
    {
      v97 = 0;
      v98 = v96;
      if (HIDWORD(v96) + v96 == v96)
      {
        goto LABEL_119;
      }
    }

    v99 = *(v97 + 32 * v98 + 24);
LABEL_122:
    v100 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 10);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v101 = *(v115 + 9);
      v102 = v100;
      if (HIDWORD(v100) + v100 == v100)
      {
LABEL_124:
        v103 = 0;
LABEL_127:
        WeightsQuantParamsAxis = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxis(&v115);
        TransposeRhs = mlir::mpsx::QuantizedMatMulOp::getTransposeRhs(&v115);
        GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_3::operator()(v111, v79, v83, v87, v91, v95, v99, v103, WeightsQuantParamsAxis & 0xFFFFFFFFFFLL, 0, TransposeRhs);
        v106 = GPU::EncodeDescriptor::getcomputeEncoder(v116);
        [v109 encodeToMPSCommandEncoder:v106 commandBuffer:*(v116 + 1) sourceArrays:v113 resultState:0 destinationArray:v110 kernelDAGObject:0];

        goto LABEL_128;
      }
    }

    else
    {
      v101 = 0;
      v102 = v100;
      if (HIDWORD(v100) + v100 == v100)
      {
        goto LABEL_124;
      }
    }

    v103 = *(v101 + 32 * v102 + 24);
    goto LABEL_127;
  }

  mlir::Block::getParentOp(*(*(this + 3) + 16));
  if (*(*(mlir::Block::getParentOp(*(*(this + 3) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v6 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(this + 4), *(this + 2));
  v7 = [MEMORY[0x1E695DF70] array];
  for (j = 0; j < [v6 count]; ++j)
  {
    v9 = *(*(this + 4) + 56);
    v10 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 8);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v11 = *(v115 + 9);
      v12 = v10;
      if (HIDWORD(v10) + v10 == v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      v12 = v10;
      if (HIDWORD(v10) + v10 == v10)
      {
LABEL_8:
        if (*(v9 + 8 * j))
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }
    }

    if (*(v9 + 8 * j) != *(v11 + 32 * v12 + 24))
    {
LABEL_9:
      v13 = 0;
      goto LABEL_15;
    }

LABEL_12:
    if ((mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxis(&v115) & 0x100000000) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

LABEL_15:
    v14 = *(*(*(this + 4) + 56) + 8 * j);
    if (!mlir::mpsx::QuantizedMatMulOp::getTransposeLhs(&v115))
    {
      goto LABEL_35;
    }

    v15 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 0);
    if (*(*(v115 + 9) + 32 * v15 + 24) == v14)
    {
      goto LABEL_61;
    }

    v16 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 1);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v17 = *(v115 + 9);
      v18 = v16;
      if (HIDWORD(v16) + v16 == v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = 0;
      v18 = v16;
      if (HIDWORD(v16) + v16 == v16)
      {
LABEL_19:
        if (!v14)
        {
          goto LABEL_61;
        }

        goto LABEL_23;
      }
    }

    if (*(v17 + 32 * v18 + 24) == v14)
    {
      goto LABEL_61;
    }

LABEL_23:
    v19 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 2);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v20 = *(v115 + 9);
      v21 = v19;
      if (HIDWORD(v19) + v19 == v19)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
      v21 = v19;
      if (HIDWORD(v19) + v19 == v19)
      {
LABEL_25:
        if (!v14)
        {
          goto LABEL_61;
        }

        goto LABEL_29;
      }
    }

    if (*(v20 + 32 * v21 + 24) == v14)
    {
      goto LABEL_61;
    }

LABEL_29:
    v22 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 3);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v23 = *(v115 + 9);
      v24 = v22;
      if (HIDWORD(v22) + v22 == v22)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v23 = 0;
      v24 = v22;
      if (HIDWORD(v22) + v22 == v22)
      {
LABEL_31:
        if (!v14)
        {
          goto LABEL_61;
        }

        goto LABEL_35;
      }
    }

    if (*(v23 + 32 * v24 + 24) == v14)
    {
      goto LABEL_61;
    }

LABEL_35:
    if (!mlir::mpsx::QuantizedMatMulOp::getTransposeRhs(&v115))
    {
      goto LABEL_58;
    }

    v25 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 4);
    if (*(*(v115 + 9) + 32 * v25 + 24) == v14)
    {
      goto LABEL_61;
    }

    v26 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 5);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v27 = *(v115 + 9);
      v28 = v26;
      if (HIDWORD(v26) + v26 == v26)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v27 = 0;
      v28 = v26;
      if (HIDWORD(v26) + v26 == v26)
      {
LABEL_39:
        if (!v14)
        {
          goto LABEL_61;
        }

        goto LABEL_43;
      }
    }

    if (*(v27 + 32 * v28 + 24) == v14)
    {
      goto LABEL_61;
    }

LABEL_43:
    v29 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 7);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v30 = *(v115 + 9);
      v31 = v29;
      if (HIDWORD(v29) + v29 == v29)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v30 = 0;
      v31 = v29;
      if (HIDWORD(v29) + v29 == v29)
      {
LABEL_45:
        if (!v14)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }
    }

    if (*(v30 + 32 * v31 + 24) == v14)
    {
      goto LABEL_61;
    }

LABEL_49:
    v32 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 6);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v33 = *(v115 + 9);
      v34 = v32;
      if (HIDWORD(v32) + v32 == v32)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v33 = 0;
      v34 = v32;
      if (HIDWORD(v32) + v32 == v32)
      {
LABEL_51:
        if (!v14)
        {
          goto LABEL_61;
        }

        goto LABEL_55;
      }
    }

    if (*(v33 + 32 * v34 + 24) == v14)
    {
      goto LABEL_61;
    }

LABEL_55:
    v35 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v115, 8);
    if ((*(v115 + 46) & 0x80) != 0)
    {
      v36 = *(v115 + 9);
      v37 = v35;
      if (HIDWORD(v35) + v35 == v35)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v36 = 0;
      v37 = v35;
      if (HIDWORD(v35) + v35 == v35)
      {
LABEL_57:
        if (v14)
        {
          goto LABEL_58;
        }

        goto LABEL_61;
      }
    }

    if (*(v36 + 32 * v37 + 24) != v14)
    {
LABEL_58:
      v38 = [v6 objectAtIndexedSubscript:j];
      [v7 addObject:v38];
      goto LABEL_4;
    }

LABEL_61:
    v38 = [v6 objectAtIndexedSubscript:j];
    v39 = GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_0::operator()(&v114, v38, v13);
    [v7 addObject:v39];

LABEL_4:
  }

  v40 = GPU::EncodeDescriptor::getcomputeEncoder(v116);
  v41 = *(v116 + 1);
  v42 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(this + 4));
  [v109 encodeToMPSCommandEncoder:v40 commandBuffer:v41 sourceArrays:v7 resultState:0 destinationArray:v110 kernelDAGObject:v42];

LABEL_128:
}

char *GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_0::operator()(GPU::EncodeDescriptor ***a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*&v5[*MEMORY[0x1E69744F0]] >= (a3 + 2))
  {
    v8 = [v5 descriptor];
    [v8 transposeDimension:a3 withDimension:a3 + 1];
    v9 = **a1;
    v10 = *(v9 + 1);
    v11 = GPU::EncodeDescriptor::getcomputeEncoder(v9);
    v7 = [v6 safeArrayViewWithCommandBuffer:v10 computeEncoder:v11 descriptor:v8 aliasing:0];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

void GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_3::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  v17 = *a1;
  v18 = *(*mlir::getElementTypeOrSelf(a2) + 136);
  if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v108 = v17;
    if (a6)
    {
      v35 = (*(**(v17 + 16) + 48))(*(v17 + 16), a6, 0);
      v36 = [v35 mpsndarray];

      if (!v36 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (a11)
      {
        v37 = 3;
        if ((a9 & 0x100000000) != 0)
        {
          v37 = 4;
        }

        if (*&v36[*MEMORY[0x1E69744F0]] >= v37)
        {
          v38 = [v36 descriptor];
          v39 = v38;
          if ((a9 & 0x100000000) != 0)
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          if ((a9 & 0x100000000) != 0)
          {
            v41 = 2;
          }

          else
          {
            v41 = 1;
          }

          [v38 transposeDimension:v41 withDimension:v40];
          v42 = a1[1];
          v43 = *(*v42 + 1);
          v44 = GPU::EncodeDescriptor::getcomputeEncoder(*v42);
          v45 = [v36 safeArrayViewWithCommandBuffer:v43 computeEncoder:v44 descriptor:v39 aliasing:1];

          v36 = v45;
        }
      }

      v46 = *(v17 + 120);
      v47 = [v46 getNDArrayCount] + 2;
      v48 = a1[2];
      v110 = v36;
      while (1)
      {
        v49 = [**v48 count];
        v50 = **v48;
        if (v49 > v47)
        {
          break;
        }

        v51 = [MEMORY[0x1E695DFB0] null];
        [v50 addObject:v51];
      }

      [**v48 setObject:v110 atIndexedSubscript:v47];
    }

    else
    {
      v52 = a4;
      isConstantIntZero = mlir::isConstantIntZero(a4);
      v53 = a5;
      isConstantFPZero = mlir::isConstantFPZero(a5);
      v54 = a7;
      if (a7)
      {
        LODWORD(a7) = !mlir::isConstantFPOne(a7);
      }

      v55 = a1;
      if (a8)
      {
        v112 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
        mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(a8, &v112);
      }

      v56 = (*(**(v108 + 16) + 48))(*(v108 + 16), a3, 0);
      v57 = [v56 mpsndarray];

      if (a11)
      {
        v58 = GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_0::operator()(a1[3], v57, 0);
      }

      else
      {
        v58 = v57;
      }

      if (!v58 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v59 = *(v108 + 120);
      v60 = *(v108 + 128);
      if (a10)
      {
        v61 = [MEMORY[0x1E6974810] getLeftScaleIndexWithLeftAffineQuantizationDescriptor:v59 rightQuantizationDescriptor:v60];
      }

      else
      {
        v61 = [MEMORY[0x1E6974810] getRightScaleIndexWithLeftAffineQuantizationDescriptor:v59 rightQuantizationDescriptor:v60];
      }

      v62 = v61;
      v63 = a1[2];
      v111 = v58;
      while (1)
      {
        v64 = [**v63 count];
        v65 = **v63;
        if (v64 > v62)
        {
          break;
        }

        v66 = [MEMORY[0x1E695DFB0] null];
        [v65 addObject:v66];
      }

      v67 = v111;
      [**v63 setObject:v111 atIndexedSubscript:v62];

      v68 = v108;
      if ((isConstantIntZero & 1) == 0)
      {
        v69 = (*(**(v108 + 16) + 48))(*(v108 + 16), v52, 0);
        v70 = [v69 mpsndarray];

        if (a11)
        {
          v71 = GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_0::operator()(v55[3], v70, 0);
        }

        else
        {
          v71 = v70;
        }

        if (!v71 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v72 = *(v108 + 120);
        v73 = *(v108 + 128);
        if (a10)
        {
          v74 = [MEMORY[0x1E6974810] getLeftZeroPointIndexWithLeftAffineQuantizationDescriptor:v72 rightQuantizationDescriptor:v73];
        }

        else
        {
          v74 = [MEMORY[0x1E6974810] getRightZeroPointIndexWithLeftAffineQuantizationDescriptor:v72 rightQuantizationDescriptor:v73];
        }

        v75 = v74;
        v76 = v55[2];
        v77 = v71;
        while (1)
        {
          v78 = [**v76 count];
          v79 = **v76;
          if (v78 > v75)
          {
            break;
          }

          v80 = [MEMORY[0x1E695DFB0] null];
          [v79 addObject:v80];
        }

        [**v76 setObject:v77 atIndexedSubscript:v75];

        v68 = v108;
        v67 = v111;
      }

      if (!isConstantFPZero)
      {
        v81 = (*(**(v68 + 16) + 48))(*(v68 + 16), v53, 0);
        v82 = [v81 mpsndarray];

        if (a11)
        {
          v83 = GPU::QuantizedMatMulOpHandler::encodeNDArrayOp(GPU::EncodeDescriptor *,NSArray *)::$_0::operator()(v55[3], v82, 0);
        }

        else
        {
          v83 = v82;
        }

        if (!v83 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v84 = *(v68 + 120);
        v85 = *(v68 + 128);
        v105 = v54;
        if (a10)
        {
          v86 = [MEMORY[0x1E6974810] getLeftMinValIndexWithLeftAffineQuantizationDescriptor:v84 rightQuantizationDescriptor:v85];
        }

        else
        {
          v86 = [MEMORY[0x1E6974810] getRightMinValIndexWithLeftAffineQuantizationDescriptor:v84 rightQuantizationDescriptor:v85];
        }

        v87 = v86;
        v88 = a7;
        v89 = v55[2];
        v90 = v83;
        while (1)
        {
          v91 = [**v89 count];
          v92 = **v89;
          if (v91 > v87)
          {
            break;
          }

          v93 = [MEMORY[0x1E695DFB0] null];
          [v92 addObject:v93];
        }

        [**v89 setObject:v90 atIndexedSubscript:v87];

        LODWORD(a7) = v88;
        v54 = v105;
      }

      if (a7)
      {
        v94 = (*(**(v68 + 16) + 48))(*(v68 + 16), v54, 0);
        v95 = [v94 mpsndarray];

        if (!v95 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v96 = *(v68 + 120);
        v97 = *(v68 + 128);
        if (a10)
        {
          v98 = [MEMORY[0x1E6974810] getLeftDQuantScaleIndexWithLeftAffineQuantizationDescriptor:v96 rightQuantizationDescriptor:v97];
        }

        else
        {
          v98 = [MEMORY[0x1E6974810] getRightDQuantScaleIndexWithLeftAffineQuantizationDescriptor:v96 rightQuantizationDescriptor:v97];
        }

        v99 = v98;
        v100 = v55[2];
        v101 = v95;
        while (1)
        {
          v102 = [**v100 count];
          v103 = **v100;
          if (v102 > v99)
          {
            break;
          }

          v104 = [MEMORY[0x1E695DFB0] null];
          [v103 addObject:v104];
        }

        [**v100 setObject:v101 atIndexedSubscript:v99];
      }
    }
  }
}

uint64_t GPU::QuantizedMatMulOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v58[8] = *MEMORY[0x1E69E9840];
  v54 = *(a1 + 24);
  v55 = a2;
  TransposeLhs = mlir::mpsx::QuantizedMatMulOp::getTransposeLhs(&v54);
  TransposeRhs = mlir::mpsx::QuantizedMatMulOp::getTransposeRhs(&v54);
  v56 = v58;
  v57 = 0x800000000;
  v53[0] = &v56;
  v53[1] = &v55;
  ODSOperandIndexAndLength = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 0);
  GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(v53, 0, *(*(v54 + 9) + 32 * ODSOperandIndexAndLength + 24), TransposeLhs);
  v6 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 4);
  GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(v53, 1uLL, *(*(v54 + 9) + 32 * v6 + 24), TransposeRhs);
  v52[0] = a1;
  v52[1] = v53;
  v7 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 0);
  v8 = *(*(v54 + 9) + 32 * v7 + 24);
  v9 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 1);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v10 = *(v54 + 9);
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v11 = v9;
    if (HIDWORD(v9) + v9 == v9)
    {
      goto LABEL_3;
    }
  }

  v12 = *(v10 + 32 * v11 + 24);
LABEL_6:
  v13 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 2);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v14 = *(v54 + 9);
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
LABEL_8:
      v16 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
    v15 = v13;
    if (HIDWORD(v13) + v13 == v13)
    {
      goto LABEL_8;
    }
  }

  v16 = *(v14 + 32 * v15 + 24);
LABEL_11:
  v17 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 3);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v18 = *(v54 + 9);
    v19 = v17;
    if (HIDWORD(v17) + v17 == v17)
    {
LABEL_13:
      v20 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 0;
    v19 = v17;
    if (HIDWORD(v17) + v17 == v17)
    {
      goto LABEL_13;
    }
  }

  v20 = *(v18 + 32 * v19 + 24);
LABEL_16:
  InputQuantParamsAxis = mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxis(&v54);
  GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_1::operator()(v52, v8, v12, v16, v20, 0, 0, 0, InputQuantParamsAxis & 0xFFFFFFFFFFLL, 1u, TransposeLhs);
  v22 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 4);
  v23 = *(*(v54 + 9) + 32 * v22 + 24);
  v24 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 5);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v25 = *(v54 + 9);
    v26 = v24;
    if (HIDWORD(v24) + v24 == v24)
    {
LABEL_18:
      v27 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v25 = 0;
    v26 = v24;
    if (HIDWORD(v24) + v24 == v24)
    {
      goto LABEL_18;
    }
  }

  v27 = *(v25 + 32 * v26 + 24);
LABEL_21:
  v28 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 6);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v29 = *(v54 + 9);
    v30 = v28;
    if (HIDWORD(v28) + v28 == v28)
    {
LABEL_23:
      v31 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v29 = 0;
    v30 = v28;
    if (HIDWORD(v28) + v28 == v28)
    {
      goto LABEL_23;
    }
  }

  v31 = *(v29 + 32 * v30 + 24);
LABEL_26:
  v32 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 7);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v33 = *(v54 + 9);
    v34 = v32;
    if (HIDWORD(v32) + v32 == v32)
    {
LABEL_28:
      v35 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v33 = 0;
    v34 = v32;
    if (HIDWORD(v32) + v32 == v32)
    {
      goto LABEL_28;
    }
  }

  v35 = *(v33 + 32 * v34 + 24);
LABEL_31:
  v36 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 8);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v37 = *(v54 + 9);
    v38 = v36;
    if (HIDWORD(v36) + v36 == v36)
    {
LABEL_33:
      v39 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v37 = 0;
    v38 = v36;
    if (HIDWORD(v36) + v36 == v36)
    {
      goto LABEL_33;
    }
  }

  v39 = *(v37 + 32 * v38 + 24);
LABEL_36:
  v40 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 9);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v41 = *(v54 + 9);
    v42 = v40;
    if (HIDWORD(v40) + v40 == v40)
    {
LABEL_38:
      v43 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v41 = 0;
    v42 = v40;
    if (HIDWORD(v40) + v40 == v40)
    {
      goto LABEL_38;
    }
  }

  v43 = *(v41 + 32 * v42 + 24);
LABEL_41:
  v44 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v54, 10);
  if ((*(v54 + 46) & 0x80) != 0)
  {
    v45 = *(v54 + 9);
    v46 = v44;
    if (HIDWORD(v44) + v44 == v44)
    {
LABEL_43:
      v47 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    v45 = 0;
    v46 = v44;
    if (HIDWORD(v44) + v44 == v44)
    {
      goto LABEL_43;
    }
  }

  v47 = *(v45 + 32 * v46 + 24);
LABEL_46:
  WeightsQuantParamsAxis = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxis(&v54);
  GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_1::operator()(v52, v23, v27, v31, v35, v39, v43, v47, WeightsQuantParamsAxis & 0xFFFFFFFFFFLL, 0, TransposeRhs);
  if (v57 > 4)
  {
    if (v57 == 5)
    {
      result = MPSKernelDAG::quinaryCoreOp();
    }

    else
    {
      if (v57 != 6)
      {
        goto LABEL_56;
      }

      result = MPSKernelDAG::senaryCoreOp();
    }

LABEL_50:
    *(v55 + 104) = *(a1 + 24);
    v50 = v56;
    if (v56 == v58)
    {
      return result;
    }

    goto LABEL_51;
  }

  if (v57 == 3)
  {
    result = MPSKernelDAG::ternaryCoreOp();
    goto LABEL_50;
  }

  if (v57 == 4)
  {
    result = MPSKernelDAG::quartaryCoreOp();
    goto LABEL_50;
  }

LABEL_56:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  result = 0;
  *(v55 + 104) = *(a1 + 24);
  v50 = v56;
  if (v56 != v58)
  {
LABEL_51:
    v51 = result;
    free(v50);
    return v51;
  }

  return result;
}

void sub_1E0831F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21 == v21)
  {
    _Unwind_Resume(exception_object);
  }

  free(a21);
  _Unwind_Resume(exception_object);
}

void GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(uint64_t **a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v9 = *a1 + 1;
  for (i = *v9; i <= a2; i = *v9)
  {
    if (i >= *(v7 + 3))
    {
      v10 = a4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 2), i + 1, 8);
      a4 = v10;
      i = *v9;
    }

    *(*v7 + 8 * i) = 0;
    ++*v9;
    v7 = *a1;
    v9 = *a1 + 1;
  }

  if (a4)
  {
    operator new();
  }

  *(**a1 + 8 * a2) = GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(*a1[1], a3, 0);
}

void GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_1::operator()(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t *a5, unint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v17 = *a1;
  v18 = *(*mlir::getElementTypeOrSelf(a2) + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return;
  }

  v43 = a3;
  v44 = a7;
  if (!a6)
  {
    isConstantIntZero = mlir::isConstantIntZero(a4);
    v36 = a5;
    isConstantFPZero = mlir::isConstantFPZero(a5);
    if (v44)
    {
      v38 = !mlir::isConstantFPOne(v44);
    }

    else
    {
      v38 = 0;
    }

    v39 = a10;
    if (a8)
    {
      v47 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
      mlir::matchPattern<mlir::detail::constant_int_predicate_matcher>(a8, &v47);
      v39 = a10;
    }

    v40 = *(v17 + 120);
    v41 = *(v17 + 128);
    if (v39)
    {
      GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(a1[1], [MEMORY[0x1E6974810] getLeftScaleIndexWithLeftAffineQuantizationDescriptor:v40 rightQuantizationDescriptor:v41], v43, a11);
      if (isConstantIntZero)
      {
        if (!isConstantFPZero)
        {
          goto LABEL_64;
        }
      }

      else
      {
        GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(a1[1], [MEMORY[0x1E6974810] getLeftZeroPointIndexWithLeftAffineQuantizationDescriptor:*(v17 + 120) rightQuantizationDescriptor:*(v17 + 128)], a4, a11);
        if (!isConstantFPZero)
        {
LABEL_64:
          GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(a1[1], [MEMORY[0x1E6974810] getLeftMinValIndexWithLeftAffineQuantizationDescriptor:*(v17 + 120) rightQuantizationDescriptor:*(v17 + 128)], v36, a11);
          if (!v38)
          {
            return;
          }

          goto LABEL_72;
        }
      }

      if (!v38)
      {
        return;
      }

LABEL_72:
      v42 = [MEMORY[0x1E6974810] getLeftDQuantScaleIndexWithLeftAffineQuantizationDescriptor:*(v17 + 120) rightQuantizationDescriptor:*(v17 + 128)];
LABEL_76:
      GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(a1[1], v42, v44, a11);
      return;
    }

    GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(a1[1], [MEMORY[0x1E6974810] getRightScaleIndexWithLeftAffineQuantizationDescriptor:v40 rightQuantizationDescriptor:v41], v43, a11);
    if (isConstantIntZero)
    {
      if (!isConstantFPZero)
      {
        goto LABEL_68;
      }
    }

    else
    {
      GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(a1[1], [MEMORY[0x1E6974810] getRightZeroPointIndexWithLeftAffineQuantizationDescriptor:*(v17 + 120) rightQuantizationDescriptor:*(v17 + 128)], a4, a11);
      if (!isConstantFPZero)
      {
LABEL_68:
        GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(a1[1], [MEMORY[0x1E6974810] getRightMinValIndexWithLeftAffineQuantizationDescriptor:*(v17 + 120) rightQuantizationDescriptor:*(v17 + 128)], v36, a11);
        if (!v38)
        {
          return;
        }

        goto LABEL_75;
      }
    }

    if (!v38)
    {
      return;
    }

LABEL_75:
    v42 = [MEMORY[0x1E6974810] getRightDQuantScaleIndexWithLeftAffineQuantizationDescriptor:*(v17 + 120) rightQuantizationDescriptor:*(v17 + 128)];
    goto LABEL_76;
  }

  v45 = *(v17 + 120);
  GPU::QuantizedMatMulOpHandler::kernelDAGOp(GPU::MPSGraphKernelDAG *,std::vector<long>,MPSDataType,char const*)::$_0::operator()(a1[1], [v45 getNDArrayCount] + 2, a6, a11);
}

uint64_t GPU::MatMulOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v9 = 0;
  v7 = 0;
  if (GPU::MatMulOpHandler::getQuantizationParameters(v4, &v9, v8, &v7, &v6))
  {
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v9, 0);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, v7, 0);
    MPSKernelDAG::binaryCoreOp();
    result = MPSKernelDAG::castOp();
  }

  else
  {
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 9) + 24), 0);
    GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 9) + 56), 0);
    result = MPSKernelDAG::binaryCoreOp();
  }

  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::MatMulOpHandler::~MatMulOpHandler(GPU::MatMulOpHandler *this)
{
  *this = &unk_1F5B51768;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{
  *this = &unk_1F5B51768;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::QuantizedMatMulOpHandler::~QuantizedMatMulOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::HammingDistanceOpHandler,mlir::mps::HammingDistanceOp,MPSNDArrayHammingDistanceKernel,2ul>::encodeNDArrayOp(uint64_t a1, GPU::EncodeDescriptor *a2, void *a3)
{
  v17 = a3;
  if ((*(a1 + 40) & 1) == 0)
  {
    GPU::MultiaryKernelOpHandler<GPU::HammingDistanceOpHandler,mlir::mps::HammingDistanceOp,MPSNDArrayHammingDistanceKernel,2ul>::_createNDArrayMultiaryKernel(a1);
  }

  v5 = [v17 objectAtIndexedSubscript:0];
  v6 = [v5 mpsndarray];

  if (!v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = v6;
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    mlir::Block::getParentOp(*(v8 + 16));
    if (*(*(mlir::Block::getParentOp(*(*(a1 + 24) + 16)) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v9 = GPU::MPSGraphKernelDAG::getNDArraysForPlaceholders(*(a1 + 32), *(a1 + 16));
    v10 = GPU::MPSGraphKernelDAG::getKernelDAGObject(*(a1 + 32));
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v11 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 24), 0);
    v12 = [v11 mpsndarray];

    if (!v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v12];

    v13 = (*(**(a1 + 16) + 48))(*(a1 + 16), *(*(v8 + 72) + 56), 0);
    v14 = [v13 mpsndarray];

    if (!v14 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    [v9 addObject:v14];

    v10 = 0;
  }

  v15 = *(a1 + 8);
  v16 = GPU::EncodeDescriptor::getcomputeEncoder(a2);
  [v15 encodeToMPSCommandEncoder:v16 commandBuffer:*(a2 + 1) sourceArrays:v9 resultState:0 destinationArray:v7 kernelDAGObject:v10];
}

uint64_t GPU::HammingDistanceOpHandler::kernelDAGOp(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 72) + 24), 0);
  GPU::MPSGraphKernelDAG::getBaseTensorFromDataMap(a2, *(*(v4 + 72) + 56), 0);
  result = MPSKernelDAG::binaryCoreOp();
  *(a2 + 104) = *(a1 + 24);
  return result;
}

void GPU::HammingDistanceOpHandler::~HammingDistanceOpHandler(GPU::HammingDistanceOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::MultiaryKernelOpHandler<GPU::HammingDistanceOpHandler,mlir::mps::HammingDistanceOp,MPSNDArrayHammingDistanceKernel,2ul>::_createNDArrayMultiaryKernel(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6974738]);
  v3 = [*(*(a1 + 16) + 48) metalDevice];
  obj = [v2 initWithDevice:v3];

  objc_storeStrong((a1 + 8), obj);
  [*(a1 + 8) setOptions:{objc_msgSend(*(a1 + 8), "options") | 1}];
}

void GPU::MultiaryKernelOpHandler<GPU::HammingDistanceOpHandler,mlir::mps::HammingDistanceOp,MPSNDArrayHammingDistanceKernel,2ul>::~MultiaryKernelOpHandler(GPU::BaseOpHandler *a1)
{
  GPU::BaseOpHandler::~BaseOpHandler(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::GatherOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, uint64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v28 = 260;
  v27[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v27);
  v12 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (v9)
  {
    v13 = [v9 UTF8String];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v26 = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    v16 = &__dst + v15;
  }

  else
  {
    v26 = 10;
    v24 = 29285;
    __dst = *"mps.gather";
    v16 = v25;
  }

  *v16 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, v11, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v18 = 1;
  HIBYTE(v28) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v27[0] = p_p;
    v18 = 3;
  }

  LOBYTE(v28) = v18;
  v19 = mlir::Builder::getStringAttr(a2, v27);
  v20 = mlir::NameLoc::get(v19, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst);
    goto LABEL_16;
  }

  if (v26 < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v20;
}