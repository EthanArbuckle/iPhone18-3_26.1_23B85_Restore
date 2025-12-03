@interface MPSGraphGRUOp
- (MPSGraphGRUOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphGRUOp

- (MPSGraphGRUOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  v67 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphGRUOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm", __p);
  v11 = nameCopy;
  v66 = 260;
  v65[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v65);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x2BFu, 0);
  if (v11)
  {
    v15 = v11;
    builderCopy = builder;
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

    v64 = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    builder = builderCopy;
    v20 = &__dst + v19;
  }

  else
  {
    v64 = 7;
    qmemcpy(&__dst, "mps.gru", 7);
    v20 = &__dst + 7;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &v60);
  v21 = v60.__r_.__value_.__r.__words[0];
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v60;
  }

  v22 = 1;
  HIBYTE(v66) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v65[0] = v21;
    v22 = 3;
  }

  LOBYTE(v66) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v65);
  v54 = mlir::NameLoc::get(v23, v14);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
    if ((v64 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v64 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  training = [(MPSGraphGRUDescriptor *)self->super._desc training];
  updateGateActivation = [(MPSGraphGRUDescriptor *)self->super._desc updateGateActivation];
  if (updateGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v26 = 1;
  }

  else
  {
    v26 = updateGateActivation;
  }

  resetGateActivation = [(MPSGraphGRUDescriptor *)self->super._desc resetGateActivation];
  if (resetGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v28 = 1;
  }

  else
  {
    v28 = resetGateActivation;
  }

  outputGateActivation = [(MPSGraphGRUDescriptor *)self->super._desc outputGateActivation];
  v30 = outputGateActivation;
  v31 = outputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
  desc = self->super._desc;
  if (v31)
  {
    v33 = 1;
  }

  else
  {
    v33 = v30;
  }

  if (desc->_hasInitState)
  {
    if (*(values + 1) - *values < 0x11uLL)
    {
      goto LABEL_46;
    }

    v34 = *(*values + 16);
    v35 = 3;
    if (!desc->_hasMask)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v34 = 0;
    v35 = 2;
    if (!desc->_hasMask)
    {
LABEL_30:
      v51 = 0;
      goto LABEL_34;
    }
  }

  if (v35 >= (*(values + 1) - *values) >> 3)
  {
    goto LABEL_46;
  }

  v51 = *(*values + 8 * v35++);
LABEL_34:
  v50 = v11;
  v52 = v28;
  v53 = v33;
  if (desc->_hasBias2)
  {
    if (v35 < (*(values + 1) - *values) >> 3)
    {
      v36 = training;
      v37 = *(*values + 8 * v35);
      goto LABEL_38;
    }

LABEL_46:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v36 = training;
  v37 = 0;
LABEL_38:
  resetGateFirst = [(MPSGraphGRUDescriptor *)desc resetGateFirst];
  v39 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v40 = resetGateFirst;
  resetAfter = [(MPSGraphGRUDescriptor *)self->super._desc resetAfter];
  flipZ = [(MPSGraphGRUDescriptor *)self->super._desc flipZ];
  v57 = v54;
  Context = mlir::Attribute::getContext(&v57);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GRUOp,void>::id, Context);
  if ((v45 & 1) == 0)
  {
    v62 = 1283;
    v60.__r_.__value_.__r.__words[2] = "mps.gru";
    v61 = 7;
    v59 = 259;
    llvm::operator+(&v60, &v58, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v65, v54, v44);
  mlir::mps::GRUOp::build(builder, v65, *v39, v39[1], v26, v52, v53, v40, v36, resetAfter, flipZ, v34, v51, v37);
  v46 = mlir::OpBuilder::create(builder, v65);
  v47 = *(v46[6] + 16);
  mlir::OperationState::~OperationState(v65);
  if (v47 != &mlir::detail::TypeIDResolver<mlir::mps::GRUOp,void>::id)
  {
    v46 = 0;
  }

  return v46;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  if ([gradientsCopy count])
  {
    v37 = gradientsCopy;
    v11 = self->super._desc;
    if (![(MPSGraphGRUDescriptor *)v11 training])
    {
      v12 = [(MPSGraphGRUDescriptor *)self->super._desc copy];

      v11 = v12;
      [(MPSGraphGRUDescriptor *)v12 setTraining:1];
    }

    desc = self->super._desc;
    v36 = v11;
    if (desc->_hasInitState)
    {
      v14 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:2];
      desc = self->super._desc;
      v15 = 3;
      v39 = v14;
      if (!desc->_hasMask)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v39 = 0;
      v15 = 2;
      if (!desc->_hasMask)
      {
LABEL_6:
        v16 = 0;
        v35 = nameCopy;
        if (desc->_hasBias2)
        {
LABEL_7:
          v38 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v15];
          goto LABEL_14;
        }

LABEL_13:
        v38 = 0;
LABEL_14:
        WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
        v19 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
        v20 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
        v21 = [WeakRetained GRUWithSourceTensor:v19 recurrentWeight:v20 inputWeight:0 bias:0 initState:v39 mask:v16 secondaryBias:v38 descriptor:v11 name:@"GRU fwd"];

        v22 = objc_loadWeakRetained(&self->super.super._graph);
        v23 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
        v24 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
        v25 = [v37 objectAtIndexedSubscript:0];
        v26 = [v21 objectAtIndexedSubscript:1];
        v27 = [v21 objectAtIndexedSubscript:0];
        v28 = [v22 GRUGradientsWithSourceTensor:v23 recurrentWeight:v24 sourceGradient:v25 zState:v26 outputFwd:v27 stateGradient:0 inputWeight:0 bias:0 initState:v39 mask:v16 secondaryBias:v38 descriptor:v36 name:v35];

        v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
        for (i = 0; i < [tensorsCopy count]; ++i)
        {
          null = [MEMORY[0x1E695DFB0] null];
          v31 = [tensorsCopy objectAtIndexedSubscript:i];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v33 = [v28 objectAtIndexedSubscript:i];

            null = v33;
          }

          [v17 addObject:null];
        }

        gradientsCopy = v37;
        nameCopy = v35;
        goto LABEL_20;
      }
    }

    v16 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v15++];
    v35 = nameCopy;
    if (self->super._desc->_hasBias2)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = 0;
LABEL_20:

  return v17;
}

@end