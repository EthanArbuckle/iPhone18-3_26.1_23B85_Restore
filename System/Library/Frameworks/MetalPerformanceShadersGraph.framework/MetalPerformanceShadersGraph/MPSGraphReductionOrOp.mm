@interface MPSGraphReductionOrOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphReductionOrOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphReductionOrOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphReductionOps.mm", v36);
  v11 = nameCopy;
  v47 = 260;
  v46[0] = v36;
  StringAttr = mlir::Builder::getStringAttr(builder, v46);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x100u, 0);
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

    HIBYTE(v45) = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    v19 = (&__dst + v18);
  }

  else
  {
    HIBYTE(v45) = 16;
    __dst = *"mps.reduction_or";
    v19 = &v45;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v47) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v46[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v47) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v46);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v37 < 0)
  {
    operator delete(v36[0]);
    v25 = *values;
    v24 = *(values + 1);
    if (v24 - *values >= 9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = *values;
    v24 = *(values + 1);
    if (v24 - *values >= 9)
    {
LABEL_18:
      v26 = v25[1];
      goto LABEL_23;
    }
  }

  v26 = 0;
LABEL_23:
  if (v24 == v25)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = v23;
  Context = mlir::Attribute::getContext(&v38);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v43 = 1283;
    __p.__r_.__value_.__r.__words[2] = "mps.reduction_or";
    v42 = 16;
    v40 = 259;
    llvm::operator+(&__p, &v39, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v23, v28);
  mlir::mps::ReductionOrOp::build(builder, v46, *v25, v26, 1);
  v30 = mlir::OpBuilder::create(builder, v46);
  v31 = *(*(v30 + 48) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v35 = v32 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v35);

  return DefiningOp;
}

@end