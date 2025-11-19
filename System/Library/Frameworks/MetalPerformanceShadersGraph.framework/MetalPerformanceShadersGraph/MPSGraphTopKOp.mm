@interface MPSGraphTopKOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphTopKOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphTopKOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTopKOps.mm", __p);
  v12 = v11;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v47);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x3Bu, 0);
  if (v12)
  {
    v16 = v12;
    v17 = [v12 UTF8String];
    v18 = strlen(v17);
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
      memmove(&__dst, v17, v18);
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
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v14, &v40);
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
  v23 = mlir::Builder::getStringAttr(a3, v47);
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

  v26 = *a5;
  v25 = *(a5 + 1);
  v27 = v25 - *a5;
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
  mlir::mps::TopKOp::build(a3, v47, *v26, v26[1], v26[2], smallest);
  v32 = mlir::OpBuilder::create(a3, v47);
  v33 = *(v32[6] + 16);
  mlir::OperationState::~OperationState(v47);
  if (v33 != &mlir::detail::TypeIDResolver<mlir::mps::TopKOp,void>::id)
  {
    v32 = 0;
  }

  return v32;
}

- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = v8;
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  v13 = [v9 objectAtIndexedSubscript:0];
  v14 = [(MPSGraphOperation *)self inputTensors];
  v15 = [v14 objectAtIndexedSubscript:0];
  v16 = [(MPSGraphOperation *)self inputTensors];
  v17 = [v16 objectAtIndexedSubscript:1];
  v18 = [WeakRetained topKWithGradientTensor:v13 source:v15 kTensor:v17 name:v10];

  [v11 addObject:v18];
  v19 = [MEMORY[0x1E695DFB0] null];
  [v11 addObject:v19];

  return v11;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5)
  {
    v13 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    v15 = [(MPSGraphOperation *)self inputTensors];
    v16 = [v15 objectAtIndexedSubscript:1];
    v13 = [WeakRetained topKWithGradientTensor:v11 source:v10 kTensor:v16 name:v12];
  }

  return v13;
}

@end