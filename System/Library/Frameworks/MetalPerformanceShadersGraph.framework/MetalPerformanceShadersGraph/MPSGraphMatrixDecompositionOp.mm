@interface MPSGraphMatrixDecompositionOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMatrixDecompositionOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v43 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphMatrixDecompositionOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMatrixDecompositionOps.mm", __p);
  v11 = nameCopy;
  v42 = 260;
  v41[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v41);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x35u, 0);
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

  HIBYTE(v40) = v16;
  if (v16)
  {
    memmove(&__dst, uTF8String, v16);
  }

  *(&__dst + v18) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v17, &v36);
  v19 = v36.__r_.__value_.__r.__words[0];
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v36;
  }

  v20 = 1;
  HIBYTE(v42) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v41[0] = v19;
    v20 = 3;
  }

  LOBYTE(v42) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v41);
  v22 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v22;
  Context = mlir::Attribute::getContext(&v33);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatrixDecompositionLUOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    v38 = 1283;
    v36.__r_.__value_.__r.__words[2] = "mps.matrix_decomposition_lu";
    v37 = 27;
    v35 = 259;
    llvm::operator+(&v36, &v34, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v41, v22, v25);
  mlir::mps::MatrixDecompositionLUOp::build(builder, v41, *v23);
  v27 = mlir::OpBuilder::create(builder, v41);
  v28 = *(*(v27 + 48) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::mps::MatrixDecompositionLUOp,void>::id)
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