@interface MPSGraphConditionOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConditionOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v46 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphConditionOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm", __p);
  v11 = nameCopy;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v42);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x95u, 0);
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

    v45 = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    v19 = &__dst + v18;
  }

  else
  {
    v45 = 13;
    qmemcpy(&__dst, "scf.condition", 13);
    v19 = &__dst + 13;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &v39);
  v20 = v39.__r_.__value_.__r.__words[0];
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v39;
  }

  v21 = 1;
  HIBYTE(v43) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v20;
    v21 = 3;
  }

  LOBYTE(v43) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v42);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v45 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v24 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value &>(builder, v23, *values);
  v25 = *values;
  v26 = *(values + 1);
  v36 = v23;
  Context = mlir::Attribute::getContext(&v36);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v41 = 1283;
    v39.__r_.__value_.__r.__words[2] = "scf.condition";
    v40 = 13;
    v38 = 259;
    llvm::operator+(&v39, &v37, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v42, v23, v28);
  mlir::ValueRange::ValueRange(&__dst, v25 + 8, ((v26 - v25) >> 3) - 1);
  mlir::pdl_interp::ReplaceOp::build(builder, v42, v24 - 16, __dst, *(&__dst + 1));
  v30 = mlir::OpBuilder::create(builder, v42);
  v31 = *(*(v30 + 48) + 16);
  mlir::OperationState::~OperationState(v42);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

@end