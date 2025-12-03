@interface MPSGraphSingleGateRNNOp
- (MPSGraphSingleGateRNNOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSingleGateRNNOp

- (MPSGraphSingleGateRNNOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  v54 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphSingleGateRNNOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm", __p);
  v12 = nameCopy;
  v53 = 260;
  v52[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v52);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x110u, 0);
  if (v12)
  {
    v16 = v12;
    uTF8String = [v12 UTF8String];
    v18 = strlen(uTF8String);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v51[5] = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    v51[5] = 18;
    v50 = 28270;
    __dst = *"mps.singlegate_rnn";
    v20 = v51;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v14, &v46);
  v21 = v46.__r_.__value_.__r.__words[0];
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v46;
  }

  v22 = 1;
  HIBYTE(v53) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v52[0] = v21;
    v22 = 3;
  }

  LOBYTE(v53) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v52);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
    if ((v51[5] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v51[5] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  training = [(MPSGraphSingleGateRNNDescriptor *)self->super._desc training];
  activation = [(MPSGraphSingleGateRNNDescriptor *)self->super._desc activation];
  if (activation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v27 = 1;
  }

  else
  {
    v27 = activation;
  }

  desc = self->super._desc;
  v30 = *values;
  v29 = *(values + 1);
  if (!desc->_hasInitState)
  {
    v31 = 0;
    v32 = 2;
    if (!desc->_hasMask)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if ((v29 - v30) < 0x11)
  {
    goto LABEL_37;
  }

  v31 = v30[2];
  v32 = 3;
  if (desc->_hasMask)
  {
LABEL_26:
    v34 = v29 - v30;
    if (v32 < v29 - v30)
    {
      v33 = v30[v32];
      goto LABEL_28;
    }

LABEL_37:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_24:
  v33 = 0;
  v34 = v29 - v30;
LABEL_28:
  if (v29 == v30 || v34 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v43 = v24;
  Context = mlir::Attribute::getContext(&v43);
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNOp,void>::id, Context);
  if ((v37 & 1) == 0)
  {
    v48 = 1283;
    v46.__r_.__value_.__r.__words[2] = "mps.singlegate_rnn";
    v47 = 18;
    v45 = 259;
    llvm::operator+(&v46, &v44, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v52, v24, v36);
  mlir::mps::SingleGateRNNOp::build(builder, v52, *v30, v30[1], v27, training, v31, v33);
  v38 = mlir::OpBuilder::create(builder, v52);
  v39 = *(v38[6] + 16);
  mlir::OperationState::~OperationState(v52);
  if (v39 != &mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNOp,void>::id)
  {
    v38 = 0;
  }

  return v38;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  if ([gradientsCopy count])
  {
    v11 = self->super._desc;
    if (![(MPSGraphSingleGateRNNDescriptor *)v11 training])
    {
      v12 = [(MPSGraphSingleGateRNNDescriptor *)self->super._desc copy];

      v11 = v12;
      [(MPSGraphSingleGateRNNDescriptor *)v12 setTraining:1];
    }

    if (v11->_hasInitState)
    {
      v34 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:2];
      v13 = 3;
      v31 = nameCopy;
      if (!v11->_hasMask)
      {
LABEL_6:
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v34 = 0;
      v13 = 2;
      v31 = nameCopy;
      if (!v11->_hasMask)
      {
        goto LABEL_6;
      }
    }

    v14 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v13];
LABEL_12:
    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    v33 = gradientsCopy;
    v17 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v18 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    v32 = [WeakRetained singleGateRNNWithSourceTensor:v17 recurrentWeight:v18 inputWeight:0 bias:0 initState:v34 mask:v14 descriptor:v11 name:0];

    v19 = objc_loadWeakRetained(&self->super.super._graph);
    v20 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    v22 = [v33 objectAtIndexedSubscript:0];
    v23 = [v32 objectAtIndexedSubscript:1];
    v24 = [v19 singleGateRNNGradientsWithSourceTensor:v20 recurrentWeight:v21 sourceGradient:v22 zState:v23 inputWeight:0 bias:0 initState:v34 mask:v14 descriptor:v11 name:0];

    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
    for (i = 0; i < [tensorsCopy count]; ++i)
    {
      null = [MEMORY[0x1E695DFB0] null];
      v27 = [tensorsCopy objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v29 = [v24 objectAtIndexedSubscript:i];

        null = v29;
      }

      [v15 addObject:null];
    }

    gradientsCopy = v33;
    nameCopy = v31;
    goto LABEL_18;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = 0;
LABEL_18:

  return v15;
}

@end