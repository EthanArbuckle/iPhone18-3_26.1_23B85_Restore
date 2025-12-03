@interface MPSGraphTopKOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphTopKOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphTopKOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTopKOps.mm", __p);
  v12 = nameCopy;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v47);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x3Bu, 0);
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

    v46 = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    v46 = 9;
    v44 = 107;
    __dst = *"mps.top_k";
    v20 = v45;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v14, &v40);
  v21 = v40.__r_.__value_.__r.__words[0];
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v40;
  }

  v22 = 1;
  HIBYTE(v48) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v47[0] = v21;
    v22 = 3;
  }

  LOBYTE(v48) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v47);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *values;
  v25 = *(values + 1);
  v27 = v25 - *values;
  if (v27 == 16 || v25 == v26 || v27 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  smallest = self->super._smallest;
  v37 = v24;
  Context = mlir::Attribute::getContext(&v37);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TopKOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.top_k";
    v41 = 9;
    v39 = 259;
    llvm::operator+(&v40, &v38, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v24, v30);
  mlir::mps::TopKOp::build(builder, v47, *v26, v26[1], v26[2], smallest);
  v32 = mlir::OpBuilder::create(builder, v47);
  v33 = *(v32[6] + 16);
  mlir::OperationState::~OperationState(v47);
  if (v33 != &mlir::detail::TypeIDResolver<mlir::mps::TopKOp,void>::id)
  {
    v32 = 0;
  }

  return v32;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  v21 = tensorsCopy;
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  v13 = [gradientsCopy objectAtIndexedSubscript:0];
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v15 = [inputTensors objectAtIndexedSubscript:0];
  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v17 = [inputTensors2 objectAtIndexedSubscript:1];
  v18 = [WeakRetained topKWithGradientTensor:v13 source:v15 kTensor:v17 name:nameCopy];

  [v11 addObject:v18];
  null = [MEMORY[0x1E695DFB0] null];
  [v11 addObject:null];

  return v11;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  if (index)
  {
    v13 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    inputTensors = [(MPSGraphOperation *)self inputTensors];
    v16 = [inputTensors objectAtIndexedSubscript:1];
    v13 = [WeakRetained topKWithGradientTensor:gradientCopy source:tensorCopy kTensor:v16 name:nameCopy];
  }

  return v13;
}

@end