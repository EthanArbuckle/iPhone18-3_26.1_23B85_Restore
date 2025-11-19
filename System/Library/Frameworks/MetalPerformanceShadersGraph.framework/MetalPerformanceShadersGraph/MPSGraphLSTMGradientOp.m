@interface MPSGraphLSTMGradientOp
- (MPSGraphLSTMGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphLSTMGradientOp

- (MPSGraphLSTMGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v15 copy];
  desc = self->super._desc;
  self->super._desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:v12 inputTensors:v13 controlDependencies:v14 name:v16];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v73 = *MEMORY[0x1E69E9840];
  v53 = a7;
  mpsFileLoc("[MPSGraphLSTMGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm", __p);
  v10 = v53;
  v72 = 260;
  v71[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v71);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x25Bu, 0);
  if (v10)
  {
    v14 = v10;
    v15 = [v10 UTF8String];
    v16 = strlen(v15);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v70[6] = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
    }

    v18 = &__dst + v17;
  }

  else
  {
    v70[6] = 17;
    v69 = 116;
    __dst = *"mps.lstm_gradient";
    v18 = v70;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v12, &v65);
  v19 = v65.__r_.__value_.__r.__words[0];
  if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v65;
  }

  v20 = 1;
  HIBYTE(v72) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v71[0] = v19;
    v20 = 3;
  }

  LOBYTE(v72) = v20;
  v21 = mlir::Builder::getStringAttr(a3, v71);
  v58 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
    if ((v70[6] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v70[6] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v61 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = [(MPSGraphLSTMDescriptor *)self->super._desc inputGateActivation];
  if (v22 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  v24 = [(MPSGraphLSTMDescriptor *)self->super._desc forgetGateActivation];
  if (v24 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  v26 = [(MPSGraphLSTMDescriptor *)self->super._desc cellGateActivation];
  if (v26 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  v28 = [(MPSGraphLSTMDescriptor *)self->super._desc outputGateActivation];
  if (v28 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  v30 = [(MPSGraphLSTMDescriptor *)self->super._desc activation];
  v31 = v30;
  v32 = v30 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
  desc = self->super._desc;
  if (v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = v31;
  }

  if (desc->_hasInitState)
  {
    v35 = a5;
    if (*(a5 + 1) - *a5 < 0x21uLL)
    {
      goto LABEL_57;
    }

    v36 = *(*a5 + 32);
    v37 = 5;
    if (!desc->_hasInitCell)
    {
LABEL_36:
      v38 = 0;
      if (desc->_hasMask)
      {
        goto LABEL_37;
      }

LABEL_45:
      v39 = 0;
      if (!desc->_hasPeephole)
      {
        goto LABEL_39;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v36 = 0;
    v37 = 4;
    v35 = a5;
    if (!desc->_hasInitCell)
    {
      goto LABEL_36;
    }
  }

  if (v37 >= (v35[1] - *v35) >> 3)
  {
    goto LABEL_57;
  }

  v38 = *(*v35 + 8 * v37++);
  if (!desc->_hasMask)
  {
    goto LABEL_45;
  }

LABEL_37:
  if (v37 >= (v35[1] - *v35) >> 3)
  {
    goto LABEL_57;
  }

  v39 = *(*v35 + 8 * v37++);
  if (!desc->_hasPeephole)
  {
LABEL_39:
    v55 = 0;
    v56 = v23;
    v57 = v25;
    if (desc->_hasCellGradient)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

LABEL_46:
  if (v37 >= (v35[1] - *v35) >> 3)
  {
    goto LABEL_57;
  }

  v55 = *(*v35 + 8 * v37++);
  v56 = v23;
  v57 = v25;
  if (desc->_hasCellGradient)
  {
LABEL_40:
    if (v37 < (v35[1] - *v35) >> 3)
    {
      v40 = v36;
      v41 = v34;
      v42 = v29;
      v43 = *(*v35 + 8 * v37);
      goto LABEL_49;
    }

LABEL_57:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_48:
  v40 = v36;
  v41 = v34;
  v42 = v29;
  v43 = 0;
LABEL_49:
  v54 = v10;
  v44 = [(MPSGraphLSTMDescriptor *)desc forgetGateLast];
  v45 = *a5;
  if (*(a5 + 1) - *a5 < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v46 = v44;
  v62 = v58;
  Context = mlir::Attribute::getContext(&v62);
  v48 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LSTMGradientOp,void>::id, Context);
  if ((v49 & 1) == 0)
  {
    v67 = 1283;
    v65.__r_.__value_.__r.__words[2] = "mps.lstm_gradient";
    v66 = 17;
    v64 = 259;
    llvm::operator+(&v65, &v63, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v71, v58, v48);
  mlir::mps::LSTMGradientOp::build(a3, v71, *v45, v45[1], v45[2], v45[3], v56, v57, v27, v42, v41, v46, v40, v38, v39, v55, 0, v43);
  v50 = mlir::OpBuilder::create(a3, v71);
  v51 = *(v50[6] + 16);
  mlir::OperationState::~OperationState(v71);
  if (v51 != &mlir::detail::TypeIDResolver<mlir::mps::LSTMGradientOp,void>::id)
  {
    v50 = 0;
  }

  return v50;
}

@end