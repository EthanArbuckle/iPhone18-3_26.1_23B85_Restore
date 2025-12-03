@interface MPSGraphVariableOp
- (MPSGraphVariableOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type name:(id)name;
- (MPSGraphVariableOp)initWithGraph:(id)graph variableMPSNDArray:(id)array name:(id)name;
- (id)mpsNDArrayWithDevice:(id)device;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphVariableOp

- (id)mpsNDArrayWithDevice:(id)device
{
  v3 = [(MPSGraphVariable *)self->_variable mpsNDArrayWithDevice:device];

  return v3;
}

- (MPSGraphVariableOp)initWithGraph:(id)graph shape:(id)shape dataType:(unsigned int)type name:(id)name
{
  objc_storeStrong(&self->_shape, shape);
  shapeCopy = shape;
  nameCopy = name;
  graphCopy = graph;
  self->_dataType = type;
  v16.receiver = self;
  v16.super_class = MPSGraphVariableOp;
  v14 = [(MPSGraphOperation *)&v16 initWithGraph:graphCopy inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v14;
}

- (MPSGraphVariableOp)initWithGraph:(id)graph variableMPSNDArray:(id)array name:(id)name
{
  graphCopy = graph;
  arrayCopy = array;
  nameCopy = name;
  descriptor = [arrayCopy descriptor];
  getShape = [descriptor getShape];
  shape = self->_shape;
  self->_shape = getShape;

  self->_dataType = [arrayCopy dataType];
  v16.receiver = self;
  v16.super_class = MPSGraphVariableOp;
  v14 = [(MPSGraphOperation *)&v16 initWithGraph:graphCopy inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v14;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphVariableOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMemoryOps.mm", __p);
  v11 = nameCopy;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v47);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xEFu, 0);
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

    v46 = v17;
    if (v17)
    {
      memmove(__dst, uTF8String, v17);
    }

    v19 = &__dst[v18];
  }

  else
  {
    v46 = 15;
    qmemcpy(__dst, "mpsx.var_handle", sizeof(__dst));
    v19 = &v45;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v13, &v41);
  v20 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v41;
  }

  v21 = 1;
  HIBYTE(v48) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v47[0] = v20;
    v21 = 3;
  }

  LOBYTE(v48) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v47);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRType = getMLIRType(builder, self->_shape, self->_dataType);
  v34 = v23;
  Value = mlir::AffineMapAttr::getValue(&v34);
  v38 = v23;
  Context = mlir::Attribute::getContext(&v38);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mpsx.var_handle";
    v42 = 15;
    v40 = 259;
    llvm::operator+(&v41, &v39, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v23, v27);
  mlir::placement::StartTimer::build(builder, v47, MLIRType, Value);
  v29 = mlir::OpBuilder::create(builder, v47);
  v30 = *(*(v29 + 48) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v35 = v31 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v35);

  return DefiningOp;
}

@end