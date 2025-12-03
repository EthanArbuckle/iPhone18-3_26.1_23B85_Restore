@interface MPSGraphPlaceholderOp
- (MPSGraphPlaceholderOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type name:(id)name;
- (MPSGraphPlaceholderOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type value:(Value)value name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphPlaceholderOp

- (MPSGraphPlaceholderOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type name:(id)name
{
  objc_storeStrong(&self->_shape, shape);
  shapeCopy = shape;
  nameCopy = name;
  graphCopy = graph;
  *(&self->_dataType + 1) = type;
  v16.receiver = self;
  v16.super_class = MPSGraphPlaceholderOp;
  v14 = [(MPSGraphOperation *)&v16 initWithGraph:graphCopy inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v14;
}

- (MPSGraphPlaceholderOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type value:(Value)value name:(id)name
{
  v23[1] = *MEMORY[0x1E69E9840];
  impl = value.impl;
  graphCopy = graph;
  initInternal = [(MPSGraphOperation *)self initInternal];
  objc_storeWeak(&initInternal->super._graph, graphCopy);
  inputTensors = initInternal->super._inputTensors;
  initInternal->super._inputTensors = MEMORY[0x1E695E0F0];

  array = [MEMORY[0x1E695DF70] array];
  controlDependencies = initInternal->super._controlDependencies;
  initInternal->super._controlDependencies = array;

  name = initInternal->super._name;
  initInternal->super._name = 0;

  if (value.impl)
  {
    v15 = [[MPSGraphTensor alloc] initTensorWithOperation:initInternal value:value.impl graph:graphCopy];
    v23[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    outputTensors = initInternal->super._outputTensors;
    initInternal->super._outputTensors = v16;

    DefiningOp = mlir::Value::getDefiningOp(&impl);
    v19 = getOpName(DefiningOp);
    v20 = initInternal->super._name;
    initInternal->super._name = v19;
  }

  [graphCopy[10] addObject:initInternal];

  return initInternal;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphPlaceholderOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMemoryOps.mm", __p);
  v11 = nameCopy;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v45);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x77u, 0);
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

    v44 = v17;
    if (v17)
    {
      memmove(__dst, uTF8String, v17);
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
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v13, &v39);
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
  v22 = mlir::Builder::getStringAttr(builder, v45);
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

  MLIRType = getMLIRType(builder, self->_shape, *(&self->_dataType + 1));
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
  mlir::mps::PlaceholderOp::build(builder, v45, MLIRType);
  v28 = mlir::OpBuilder::create(builder, v45);
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