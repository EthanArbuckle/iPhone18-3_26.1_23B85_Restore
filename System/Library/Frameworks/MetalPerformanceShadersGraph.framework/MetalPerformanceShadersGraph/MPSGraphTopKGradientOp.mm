@interface MPSGraphTopKGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphTopKGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphTopKGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTopKOps.mm", __p);
  v12 = nameCopy;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v47);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x7Eu, 0);
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
      memmove(__dst, uTF8String, v18);
    }

    v20 = &__dst[v19];
  }

  else
  {
    v46 = 14;
    qmemcpy(__dst, "mps.top_k_grad", sizeof(__dst));
    v20 = v45;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v14, &v41);
  v21 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v41;
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

  v25 = *values;
  if (*(values + 1) - *values < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  smallest = self->super._smallest;
  v38 = v24;
  Context = mlir::Attribute::getContext(&v38);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TopKGradientOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mps.top_k_grad";
    v42 = 14;
    v40 = 259;
    llvm::operator+(&v41, &v39, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v24, v28);
  mlir::mps::TopKGradientOp::build(builder, v47, *v25, v25[1], v25[2], v25[3], smallest);
  v30 = mlir::OpBuilder::create(builder, v47);
  v31 = *(*(v30 + 48) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::mps::TopKGradientOp,void>::id)
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