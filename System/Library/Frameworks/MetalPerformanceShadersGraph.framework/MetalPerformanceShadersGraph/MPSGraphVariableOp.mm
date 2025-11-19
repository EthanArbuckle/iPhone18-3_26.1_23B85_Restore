@interface MPSGraphVariableOp
- (MPSGraphVariableOp)initWithGraph:(id)a3 shape:(id)a4 dataType:(unsigned int)a5 name:(id)a6;
- (MPSGraphVariableOp)initWithGraph:(id)a3 variableMPSNDArray:(id)a4 name:(id)a5;
- (id)mpsNDArrayWithDevice:(id)a3;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphVariableOp

- (id)mpsNDArrayWithDevice:(id)a3
{
  v3 = [(MPSGraphVariable *)self->_variable mpsNDArrayWithDevice:a3];

  return v3;
}

- (MPSGraphVariableOp)initWithGraph:(id)a3 shape:(id)a4 dataType:(unsigned int)a5 name:(id)a6
{
  objc_storeStrong(&self->_shape, a4);
  v11 = a4;
  v12 = a6;
  v13 = a3;
  self->_dataType = a5;
  v16.receiver = self;
  v16.super_class = MPSGraphVariableOp;
  v14 = [(MPSGraphOperation *)&v16 initWithGraph:v13 inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:v12];

  return v14;
}

- (MPSGraphVariableOp)initWithGraph:(id)a3 variableMPSNDArray:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 descriptor];
  v12 = [v11 getShape];
  shape = self->_shape;
  self->_shape = v12;

  self->_dataType = [v9 dataType];
  v16.receiver = self;
  v16.super_class = MPSGraphVariableOp;
  v14 = [(MPSGraphOperation *)&v16 initWithGraph:v8 inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  return v14;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a7;
  mpsFileLoc("[MPSGraphVariableOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMemoryOps.mm", __p);
  v11 = v10;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v47);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xEFu, 0);
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

    v46 = v17;
    if (v17)
    {
      memmove(__dst, v16, v17);
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
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &v41);
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
  v22 = mlir::Builder::getStringAttr(a3, v47);
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

  MLIRType = getMLIRType(a3, self->_shape, self->_dataType);
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
  mlir::placement::StartTimer::build(a3, v47, MLIRType, Value);
  v29 = mlir::OpBuilder::create(a3, v47);
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