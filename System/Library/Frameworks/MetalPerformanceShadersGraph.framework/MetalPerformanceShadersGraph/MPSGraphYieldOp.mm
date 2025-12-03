@interface MPSGraphYieldOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphYieldOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphYieldOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm", __p);
  v11 = nameCopy;
  v40 = 260;
  v39[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v39);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xB3u, 0);
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

    v43 = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    v19 = &__dst + v18;
  }

  else
  {
    v43 = 9;
    LOBYTE(v42) = 100;
    __dst = *"scf.yield";
    v19 = &v42 + 1;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &v36);
  v20 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v36;
  }

  v21 = 1;
  HIBYTE(v40) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v39[0] = v20;
    v21 = 3;
  }

  LOBYTE(v40) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v39);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v33 = v23;
  Context = mlir::Attribute::getContext(&v33);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "scf.yield";
    v37 = 9;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v39, v23, v25);
  mlir::ValueRange::ValueRange(&__dst, *values, (*(values + 1) - *values) >> 3);
  mlir::func::ReturnOp::build(builder, v39, __dst, v42);
  v27 = mlir::OpBuilder::create(builder, v39);
  v28 = *(*(v27 + 48) + 16);
  mlir::OperationState::~OperationState(v39);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end