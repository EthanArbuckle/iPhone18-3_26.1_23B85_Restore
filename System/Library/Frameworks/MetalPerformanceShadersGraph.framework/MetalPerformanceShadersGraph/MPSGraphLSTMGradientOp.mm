@interface MPSGraphLSTMGradientOp
- (MPSGraphLSTMGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphLSTMGradientOp

- (MPSGraphLSTMGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  v17 = [descriptorCopy copy];
  desc = self->super._desc;
  self->super._desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v73 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphLSTMGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm", __p);
  v10 = nameCopy;
  v72 = 260;
  v71[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v71);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x25Bu, 0);
  if (v10)
  {
    v14 = v10;
    uTF8String = [v10 UTF8String];
    v16 = strlen(uTF8String);
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
      memmove(&__dst, uTF8String, v16);
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
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v12, &v65);
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
  v21 = mlir::Builder::getStringAttr(builder, v71);
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

  inputGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc inputGateActivation];
  if (inputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v23 = 1;
  }

  else
  {
    v23 = inputGateActivation;
  }

  forgetGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc forgetGateActivation];
  if (forgetGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v25 = 1;
  }

  else
  {
    v25 = forgetGateActivation;
  }

  cellGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc cellGateActivation];
  if (cellGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v27 = 1;
  }

  else
  {
    v27 = cellGateActivation;
  }

  outputGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc outputGateActivation];
  if (outputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v29 = 1;
  }

  else
  {
    v29 = outputGateActivation;
  }

  activation = [(MPSGraphLSTMDescriptor *)self->super._desc activation];
  v31 = activation;
  v32 = activation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
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
    valuesCopy2 = values;
    if (*(values + 1) - *values < 0x21uLL)
    {
      goto LABEL_57;
    }

    v36 = *(*values + 32);
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
    valuesCopy2 = values;
    if (!desc->_hasInitCell)
    {
      goto LABEL_36;
    }
  }

  if (v37 >= (valuesCopy2[1] - *valuesCopy2) >> 3)
  {
    goto LABEL_57;
  }

  v38 = *(*valuesCopy2 + 8 * v37++);
  if (!desc->_hasMask)
  {
    goto LABEL_45;
  }

LABEL_37:
  if (v37 >= (valuesCopy2[1] - *valuesCopy2) >> 3)
  {
    goto LABEL_57;
  }

  v39 = *(*valuesCopy2 + 8 * v37++);
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
  if (v37 >= (valuesCopy2[1] - *valuesCopy2) >> 3)
  {
    goto LABEL_57;
  }

  v55 = *(*valuesCopy2 + 8 * v37++);
  v56 = v23;
  v57 = v25;
  if (desc->_hasCellGradient)
  {
LABEL_40:
    if (v37 < (valuesCopy2[1] - *valuesCopy2) >> 3)
    {
      v40 = v36;
      v41 = v34;
      v42 = v29;
      v43 = *(*valuesCopy2 + 8 * v37);
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
  forgetGateLast = [(MPSGraphLSTMDescriptor *)desc forgetGateLast];
  v45 = *values;
  if (*(values + 1) - *values < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v46 = forgetGateLast;
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
  mlir::mps::LSTMGradientOp::build(builder, v71, *v45, v45[1], v45[2], v45[3], v56, v57, v27, v42, v41, v46, v40, v38, v39, v55, 0, v43);
  v50 = mlir::OpBuilder::create(builder, v71);
  v51 = *(v50[6] + 16);
  mlir::OperationState::~OperationState(v71);
  if (v51 != &mlir::detail::TypeIDResolver<mlir::mps::LSTMGradientOp,void>::id)
  {
    v50 = 0;
  }

  return v50;
}

@end