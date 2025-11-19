@interface MPSGraphMatrixInverseOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphMatrixInverseOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a7;
  mpsFileLoc("[MPSGraphMatrixInverseOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphInverseOps.mm", __p);
  v11 = v10;
  v44 = 260;
  v43[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v43);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x1Du, 0);
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

    v42[5] = v17;
    if (v17)
    {
      memmove(&__dst, v16, v17);
    }

    v19 = &__dst + v18;
  }

  else
  {
    v42[5] = 18;
    v41 = 25971;
    __dst = *"mps.matrix_inverse";
    v19 = v42;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v13, &v37);
  v20 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v37;
  }

  v21 = 1;
  HIBYTE(v44) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v43[0] = v20;
    v21 = 3;
  }

  LOBYTE(v44) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v43);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((v42[5] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v42[5] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *a5;
  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v23;
  Context = mlir::Attribute::getContext(&v34);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatrixInverseOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mps.matrix_inverse";
    v38 = 18;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v43, v23, v26);
  mlir::mps::MatrixInverseOp::build(a3, v43, *v24);
  v28 = mlir::OpBuilder::create(a3, v43);
  v29 = *(*(v28 + 48) + 16);
  mlir::OperationState::~OperationState(v43);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::mps::MatrixInverseOp,void>::id)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

@end