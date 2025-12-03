@interface MPSGraphLSTMOp
- (MPSGraphLSTMOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphLSTMOp

- (MPSGraphLSTMOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  v75 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphLSTMOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm", __p);
  v11 = nameCopy;
  v74 = 260;
  v73[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v73);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x1BDu, 0);
  if (v11)
  {
    v15 = v11;
    v16 = v11;
    uTF8String = [v11 UTF8String];
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

    v72 = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v11 = v16;
    v20 = (&__dst + v19);
  }

  else
  {
    v72 = 8;
    __dst = 0x6D74736C2E73706DLL;
    v20 = &v71;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &v67);
  v21 = v67.__r_.__value_.__r.__words[0];
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v67;
  }

  v22 = 1;
  HIBYTE(v74) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v73[0] = v21;
    v22 = 3;
  }

  LOBYTE(v74) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v73);
  v24 = mlir::NameLoc::get(v23, v14);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v72 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  training = [(MPSGraphLSTMDescriptor *)self->super._desc training];
  inputGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc inputGateActivation];
  if (inputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v27 = 1;
  }

  else
  {
    v27 = inputGateActivation;
  }

  forgetGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc forgetGateActivation];
  if (forgetGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v29 = 1;
  }

  else
  {
    v29 = forgetGateActivation;
  }

  cellGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc cellGateActivation];
  if (cellGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v31 = 1;
  }

  else
  {
    v31 = cellGateActivation;
  }

  outputGateActivation = [(MPSGraphLSTMDescriptor *)self->super._desc outputGateActivation];
  if (outputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v33 = 1;
  }

  else
  {
    v33 = outputGateActivation;
  }

  v61 = v33;
  activation = [(MPSGraphLSTMDescriptor *)self->super._desc activation];
  v35 = activation;
  v56 = v11;
  v36 = activation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
  desc = self->super._desc;
  if (v36)
  {
    v38 = 1;
  }

  else
  {
    v38 = v35;
  }

  builderCopy = builder;
  v58 = v31;
  v59 = v29;
  v57 = v27;
  if (!desc->_hasInitState)
  {
    v39 = 0;
    v40 = 2;
    if (!desc->_hasInitCell)
    {
      goto LABEL_36;
    }

LABEL_41:
    if (v40 >= (*(values + 1) - *values) >> 3)
    {
      goto LABEL_54;
    }

    v41 = *(*values + 8 * v40++);
    if (desc->_hasMask)
    {
      goto LABEL_37;
    }

LABEL_43:
    v42 = 0;
    if (!desc->_hasPeephole)
    {
      goto LABEL_39;
    }

    goto LABEL_44;
  }

  if (*(values + 1) - *values < 0x11uLL)
  {
    goto LABEL_54;
  }

  v39 = *(*values + 16);
  v40 = 3;
  if (desc->_hasInitCell)
  {
    goto LABEL_41;
  }

LABEL_36:
  v41 = 0;
  if (!desc->_hasMask)
  {
    goto LABEL_43;
  }

LABEL_37:
  if (v40 >= (*(values + 1) - *values) >> 3)
  {
    goto LABEL_54;
  }

  v42 = *(*values + 8 * v40++);
  if (!desc->_hasPeephole)
  {
LABEL_39:
    v43 = v38;
    v44 = 0;
    goto LABEL_46;
  }

LABEL_44:
  if (v40 >= (*(values + 1) - *values) >> 3)
  {
LABEL_54:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v43 = v38;
  v44 = *(*values + 8 * v40);
LABEL_46:
  v45 = training;
  forgetGateLast = [(MPSGraphLSTMDescriptor *)desc forgetGateLast];
  v47 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v48 = forgetGateLast;
  v64 = v24;
  Context = mlir::Attribute::getContext(&v64);
  v50 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id, Context);
  if ((v51 & 1) == 0)
  {
    v69 = 1283;
    v67.__r_.__value_.__r.__words[2] = "mps.lstm";
    v68 = 8;
    v66 = 259;
    llvm::operator+(&v67, &v65, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v73, v24, v50);
  mlir::mps::LSTMOp::build(builderCopy, v73, *v47, v47[1], v57, v59, v58, v61, v43, v48, v45, v39, v41, v42, v44, 0);
  v52 = mlir::OpBuilder::create(builderCopy, v73);
  v53 = *(v52[6] + 16);
  mlir::OperationState::~OperationState(v73);
  if (v53 != &mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id)
  {
    v52 = 0;
  }

  return v52;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  if ([gradientsCopy count])
  {
    v44 = self->super._desc;
    if (![(MPSGraphLSTMDescriptor *)v44 training])
    {
      v11 = [(MPSGraphLSTMDescriptor *)self->super._desc copy];

      v44 = v11;
      [(MPSGraphLSTMDescriptor *)v11 setTraining:1];
    }

    desc = self->super._desc;
    if (desc->_hasInitState)
    {
      v13 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:2];
      desc = self->super._desc;
      v14 = 3;
      v42 = v13;
      if (!desc->_hasInitCell)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v42 = 0;
      v14 = 2;
      if (!desc->_hasInitCell)
      {
LABEL_6:
        v43 = 0;
        if (desc->_hasMask)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    v17 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v14];
    ++v14;
    desc = self->super._desc;
    v43 = v17;
    if (desc->_hasMask)
    {
LABEL_7:
      v15 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v14++];
      if (!self->super._desc->_hasPeephole)
      {
LABEL_8:
        v41 = 0;
        goto LABEL_16;
      }

LABEL_15:
      v41 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v14];
LABEL_16:
      v39 = nameCopy;
      WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
      v40 = v15;
      v19 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
      v20 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
      v21 = [WeakRetained LSTMWithSourceTensor:v19 recurrentWeight:v20 inputWeight:0 bias:0 initState:v42 initCell:v43 mask:v15 peephole:v41 descriptor:v44 name:@"fwd"];

      if ([gradientsCopy count] < 2 || (objc_msgSend(gradientsCopy, "objectAtIndexedSubscript:", 1), v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v22, (isKindOfClass & 1) != 0))
      {
        v38 = 0;
      }

      else
      {
        v38 = [gradientsCopy objectAtIndexedSubscript:1];
      }

      v24 = objc_loadWeakRetained(&self->super.super._graph);
      v25 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
      v26 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
      v27 = [gradientsCopy objectAtIndexedSubscript:0];
      v28 = [v21 objectAtIndexedSubscript:2];
      v29 = v21;
      v30 = [v21 objectAtIndexedSubscript:1];
      v31 = [v24 LSTMGradientsWithSourceTensor:v25 recurrentWeight:v26 sourceGradient:v27 zState:v28 cellOutputFwd:v30 stateGradient:0 cellGradient:v38 inputWeight:0 bias:0 initState:v42 initCell:v43 mask:v40 peephole:v41 descriptor:v44 name:v39];

      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
      for (i = 0; i < [tensorsCopy count]; ++i)
      {
        null = [MEMORY[0x1E695DFB0] null];
        v34 = [tensorsCopy objectAtIndexedSubscript:i];
        objc_opt_class();
        v35 = objc_opt_isKindOfClass();

        if ((v35 & 1) == 0)
        {
          v36 = [v31 objectAtIndexedSubscript:i];

          null = v36;
        }

        [v16 addObject:null];
      }

      nameCopy = v39;
      goto LABEL_26;
    }

LABEL_14:
    v15 = 0;
    if (!desc->_hasPeephole)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = 0;
LABEL_26:

  return v16;
}

@end