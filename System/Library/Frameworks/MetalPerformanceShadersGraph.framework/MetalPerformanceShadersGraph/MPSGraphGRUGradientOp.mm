@interface MPSGraphGRUGradientOp
- (MPSGraphGRUGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphGRUGradientOp

- (MPSGraphGRUGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  v65 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphGRUGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm", __p);
  v11 = nameCopy;
  v64 = 260;
  v63[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v63);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x34Bu, 0);
  if (v11)
  {
    v15 = v11;
    uTF8String = [v11 UTF8String];
    v17 = strlen(uTF8String);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v62) = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    v19 = (&__dst + v18);
  }

  else
  {
    HIBYTE(v62) = 16;
    __dst = *"mps.gru_gradient";
    v19 = &v62;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &v58);
  v20 = v58.__r_.__value_.__r.__words[0];
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v58;
  }

  v21 = 1;
  HIBYTE(v64) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v63[0] = v20;
    v21 = 3;
  }

  LOBYTE(v64) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v63);
  v52 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  updateGateActivation = [(MPSGraphGRUDescriptor *)self->super._desc updateGateActivation];
  if (updateGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v24 = 1;
  }

  else
  {
    v24 = updateGateActivation;
  }

  resetGateActivation = [(MPSGraphGRUDescriptor *)self->super._desc resetGateActivation];
  if (resetGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v26 = 1;
  }

  else
  {
    v26 = resetGateActivation;
  }

  outputGateActivation = [(MPSGraphGRUDescriptor *)self->super._desc outputGateActivation];
  v28 = outputGateActivation;
  v29 = outputGateActivation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
  desc = self->super._desc;
  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v31 = v28;
  }

  builderCopy = builder;
  if (desc->_hasInitState)
  {
    if (*(values + 1) - *values < 0x21uLL)
    {
      goto LABEL_49;
    }

    v32 = *(*values + 32);
    v33 = 5;
    if (!desc->_hasMask)
    {
LABEL_30:
      v50 = 0;
      if (desc->_hasBias2)
      {
        goto LABEL_31;
      }

LABEL_36:
      v34 = v31;
      v35 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v32 = 0;
    v33 = 4;
    if (!desc->_hasMask)
    {
      goto LABEL_30;
    }
  }

  if (v33 >= (*(values + 1) - *values) >> 3)
  {
LABEL_49:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v50 = *(*values + 8 * v33++);
  if (!desc->_hasBias2)
  {
    goto LABEL_36;
  }

LABEL_31:
  if (v33 >= (*(values + 1) - *values) >> 3)
  {
    goto LABEL_49;
  }

  v34 = v31;
  v35 = *(*values + 8 * v33);
LABEL_37:
  v49 = v11;
  resetGateFirst = [(MPSGraphGRUDescriptor *)desc resetGateFirst];
  v37 = *values;
  v38 = *(values + 1) - *values;
  if (!v38 || (v38 >> 3) <= 1 || v38 == 16 || (v38 >> 3) <= 3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v39 = resetGateFirst;
  resetAfter = [(MPSGraphGRUDescriptor *)self->super._desc resetAfter];
  flipZ = [(MPSGraphGRUDescriptor *)self->super._desc flipZ];
  v55 = v52;
  Context = mlir::Attribute::getContext(&v55);
  v43 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GRUGradientOp,void>::id, Context);
  if ((v44 & 1) == 0)
  {
    v60 = 1283;
    v58.__r_.__value_.__r.__words[2] = "mps.gru_gradient";
    v59 = 16;
    v57 = 259;
    llvm::operator+(&v58, &v56, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v63, v52, v43);
  mlir::mps::GRUGradientOp::build(builderCopy, v63, *v37, v37[1], v37[2], v37[3], v24, v26, v34, v39, resetAfter, flipZ, v32, v50, v35);
  v45 = mlir::OpBuilder::create(builderCopy, v63);
  v46 = *(v45[6] + 16);
  mlir::OperationState::~OperationState(v63);
  if (v46 != &mlir::detail::TypeIDResolver<mlir::mps::GRUGradientOp,void>::id)
  {
    v45 = 0;
  }

  return v45;
}

@end