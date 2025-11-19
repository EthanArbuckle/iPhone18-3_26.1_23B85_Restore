@interface MPSGraphPlaceholderOp
- (MPSGraphPlaceholderOp)initWithGraph:(id)a3 shape:(id)a4 dataType:(unsigned int)a5 name:(id)a6;
- (MPSGraphPlaceholderOp)initWithGraph:(id)a3 shape:(id)a4 dataType:(unsigned int)a5 value:(Value)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphPlaceholderOp

- (MPSGraphPlaceholderOp)initWithGraph:(id)a3 shape:(id)a4 dataType:(unsigned int)a5 name:(id)a6
{
  objc_storeStrong(&self->_shape, a4);
  v11 = a4;
  v12 = a6;
  v13 = a3;
  *(&self->_dataType + 1) = a5;
  v16.receiver = self;
  v16.super_class = MPSGraphPlaceholderOp;
  v14 = [(MPSGraphOperation *)&v16 initWithGraph:v13 inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:v12];

  return v14;
}

- (MPSGraphPlaceholderOp)initWithGraph:(id)a3 shape:(id)a4 dataType:(unsigned int)a5 value:(Value)a6 name:(id)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  impl = a6.impl;
  v9 = a3;
  v10 = [(MPSGraphOperation *)self initInternal];
  objc_storeWeak(&v10->super._graph, v9);
  inputTensors = v10->super._inputTensors;
  v10->super._inputTensors = MEMORY[0x1E695E0F0];

  v12 = [MEMORY[0x1E695DF70] array];
  controlDependencies = v10->super._controlDependencies;
  v10->super._controlDependencies = v12;

  name = v10->super._name;
  v10->super._name = 0;

  if (a6.impl)
  {
    v15 = [[MPSGraphTensor alloc] initTensorWithOperation:v10 value:a6.impl graph:v9];
    v23[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    outputTensors = v10->super._outputTensors;
    v10->super._outputTensors = v16;

    DefiningOp = mlir::Value::getDefiningOp(&impl);
    v19 = getOpName(DefiningOp);
    v20 = v10->super._name;
    v10->super._name = v19;
  }

  [v9[10] addObject:v10];

  return v10;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a7;
  mpsFileLoc("[MPSGraphPlaceholderOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMemoryOps.mm", __p);
  v11 = v10;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v45);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x77u, 0);
  if (v11)
  {
    v15 = v11;
    v16 = [v11 UTF8String];
    v17 = strlen(v16);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    v44 = v17;
    if (v17)
    {
      memmove(__dst, v16, v17);
    }

    v19 = &__dst[v18];
  }

  else
  {
    v44 = 15;
    qmemcpy(__dst, "mps.placeholder", sizeof(__dst));
    v19 = &v43;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &v39);
  v20 = v39.__r_.__value_.__r.__words[0];
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v39;
  }

  v21 = 1;
  HIBYTE(v46) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v45[0] = v20;
    v21 = 3;
  }

  LOBYTE(v46) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v45);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v44 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRType = getMLIRType(a3, self->_shape, *(&self->_dataType + 1));
  v36 = v23;
  Context = mlir::Attribute::getContext(&v36);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PlaceholderOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v41 = 1283;
    v39.__r_.__value_.__r.__words[2] = "mps.placeholder";
    v40 = 15;
    v38 = 259;
    llvm::operator+(&v39, &v37, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v23, v26);
  mlir::mps::PlaceholderOp::build(a3, v45, MLIRType);
  v28 = mlir::OpBuilder::create(a3, v45);
  v29 = *(*(v28 + 48) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::mps::PlaceholderOp,void>::id)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v33 = v30 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v33);

  return DefiningOp;
}

@end