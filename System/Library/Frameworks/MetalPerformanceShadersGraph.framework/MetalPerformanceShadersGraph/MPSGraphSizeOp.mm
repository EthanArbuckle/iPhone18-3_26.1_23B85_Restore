@interface MPSGraphSizeOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphSizeOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a7;
  mpsFileLoc("[MPSGraphSizeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v11 = v10;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v45);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x553u, 0);
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
      memmove(&__dst, v16, v17);
    }

    v19 = (&__dst + v18);
  }

  else
  {
    v44 = 8;
    __dst = 0x657A69732E73706DLL;
    v19 = &v43;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v13, &v39);
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

  operator delete(__dst);
LABEL_16:

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *a5;
  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v36 = v23;
  Context = mlir::Attribute::getContext(&v36);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SizeOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v41 = 1283;
    v39.__r_.__value_.__r.__words[2] = "mps.size";
    v40 = 8;
    v38 = 259;
    llvm::operator+(&v39, &v37, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v23, v26);
  mlir::mps::RankOp::build(a3, v45, *v24);
  v28 = mlir::OpBuilder::create(a3, v45);
  v29 = *(*(v28 + 48) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::mps::SizeOp,void>::id)
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