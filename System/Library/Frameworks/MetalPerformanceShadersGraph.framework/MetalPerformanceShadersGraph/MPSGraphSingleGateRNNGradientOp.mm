@interface MPSGraphSingleGateRNNGradientOp
- (MPSGraphSingleGateRNNGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSingleGateRNNGradientOp

- (MPSGraphSingleGateRNNGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  mpsFileLoc("[MPSGraphSingleGateRNNGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm", __p);
  v12 = nameCopy;
  v53 = 260;
  v52[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v52);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x178u, 0);
  if (!v12)
  {
    operator new();
  }

  v15 = v12;
  uTF8String = [v12 UTF8String];
  v17 = strlen(uTF8String);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v51) = v17;
  if (v17)
  {
    memmove(&__dst, uTF8String, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v18, &v47);
  v20 = v47.__r_.__value_.__r.__words[0];
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v47;
  }

  v21 = 1;
  HIBYTE(v53) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v52[0] = v20;
    v21 = 3;
  }

  LOBYTE(v53) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v52);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  activation = [(MPSGraphSingleGateRNNDescriptor *)self->super._desc activation];
  if (activation >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v25 = 1;
  }

  else
  {
    v25 = activation;
  }

  desc = self->super._desc;
  hasInitState = desc->_hasInitState;
  v29 = *values;
  v28 = *(values + 1);
  if (hasInitState != 1)
  {
    v30 = 0;
    v31 = 3;
    hasMask = desc->_hasMask;
    v33 = v28 - v29;
    if (!hasMask)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if ((v28 - v29) < 0x19)
  {
    goto LABEL_37;
  }

  v30 = v29[3];
  v31 = 4;
  v32 = desc->_hasMask;
  v33 = v28 - v29;
  if (v32)
  {
LABEL_25:
    if (v31 < v33 >> 3)
    {
      v34 = v29[v31];
      goto LABEL_27;
    }

LABEL_37:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_23:
  v34 = 0;
LABEL_27:
  if (v28 == v29 || v33 < 9 || v33 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v44 = v23;
  Context = mlir::Attribute::getContext(&v44);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNGradientOp,void>::id, Context);
  if ((v38 & 1) == 0)
  {
    v49 = 1283;
    v47.__r_.__value_.__r.__words[2] = "mps.singlegate_rnn_gradient";
    v48 = 27;
    v46 = 259;
    llvm::operator+(&v47, &v45, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v52, v23, v37);
  mlir::mps::SingleGateRNNGradientOp::build(builder, v52, *v29, v29[1], v29[2], v25, hasInitState, v30, v34);
  v39 = mlir::OpBuilder::create(builder, v52);
  v40 = *(v39[6] + 16);
  mlir::OperationState::~OperationState(v52);
  if (v40 != &mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNGradientOp,void>::id)
  {
    v39 = 0;
  }

  return v39;
}

@end