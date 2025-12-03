@interface MPSGraphUpdateRandomStateOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphUpdateRandomStateOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v45 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphUpdateRandomStateOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm", __p);
  v11 = nameCopy;
  v44 = 260;
  v43[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v43);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0xC6u, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  uTF8String = [v11 UTF8String];
  v16 = strlen(uTF8String);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v42) = v16;
  if (v16)
  {
    memmove(&__dst, uTF8String, v16);
  }

  *(&__dst + v18) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v17, &v38);
  v19 = v38.__r_.__value_.__r.__words[0];
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v38;
  }

  v20 = 1;
  HIBYTE(v44) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v43[0] = v19;
    v20 = 3;
  }

  LOBYTE(v44) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v43);
  v22 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v35 = v22;
  Context = mlir::Attribute::getContext(&v35);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::UpdateRandomStateOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    v40 = 1283;
    v38.__r_.__value_.__r.__words[2] = "mps.update_random_state";
    v39 = 23;
    v37 = 259;
    llvm::operator+(&v38, &v36, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v43, v22, v25);
  mlir::mps::SoftmaxOp::build(builder, v43, *v23, v23[1]);
  v27 = mlir::OpBuilder::create(builder, v43);
  v28 = *(*(v27 + 48) + 16);
  mlir::OperationState::~OperationState(v43);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::mps::UpdateRandomStateOp,void>::id)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v32 = v29 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v32);

  return DefiningOp;
}

@end