@interface MPSGraphMatrixSolverOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphMatrixSolverOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a7;
  mpsFileLoc("[MPSGraphMatrixSolverOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMatrixSolveOps.mm", __p);
  v11 = v10;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v45);
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

    HIBYTE(v44) = v17;
    if (v17)
    {
      memmove(&__dst, v16, v17);
    }

    v19 = (&__dst + v18);
  }

  else
  {
    HIBYTE(v44) = 20;
    v43 = 1970036594;
    __dst = *"mps.matrix_solver_lu";
    v19 = &v44;
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
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *a5;
  v24 = *(a5 + 1);
  v26 = v24 - *a5;
  if (v26 == 16 || v24 == v25 || v26 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v36 = v23;
  Context = mlir::Attribute::getContext(&v36);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatrixSolverLUOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v41 = 1283;
    v39.__r_.__value_.__r.__words[2] = "mps.matrix_solver_lu";
    v40 = 20;
    v38 = 259;
    llvm::operator+(&v39, &v37, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v23, v28);
  mlir::mps::MatrixSolverLUOp::build(a3, v45, *v25, v25[1], v25[2]);
  v30 = mlir::OpBuilder::create(a3, v45);
  v31 = *(*(v30 + 48) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::mps::MatrixSolverLUOp,void>::id)
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