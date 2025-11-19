@interface MPSGraphDeinterleaveOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphDeinterleaveOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphDeinterleaveOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v12 = v11;
  v44 = 260;
  v43[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v43);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x64Cu, 0);
  if (v12)
  {
    v16 = v12;
    v17 = [v12 UTF8String];
    v18 = strlen(v17);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v42[6] = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    v42[6] = 17;
    v41 = 101;
    __dst = *"mpsx.deinterleave";
    v20 = v42;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v14, &v37);
  v21 = v37.__r_.__value_.__r.__words[0];
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v37;
  }

  v22 = 1;
  HIBYTE(v44) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v43[0] = v21;
    v22 = 3;
  }

  LOBYTE(v44) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v43);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((v42[6] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v42[6] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *a5;
  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v24;
  Context = mlir::Attribute::getContext(&v34);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::DeinterleaveOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v39 = 1283;
    v37.__r_.__value_.__r.__words[2] = "mpsx.deinterleave";
    v38 = 17;
    v36 = 259;
    llvm::operator+(&v37, &v35, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v43, v24, v27);
  mlir::mpsx::DeinterleaveOp::build(a3, v43, *v25, self->_interleaveFactor);
  v29 = mlir::OpBuilder::create(a3, v43);
  v30 = *(v29[6] + 16);
  mlir::OperationState::~OperationState(v43);
  if (v30 != &mlir::detail::TypeIDResolver<mlir::mpsx::DeinterleaveOp,void>::id)
  {
    v29 = 0;
  }

  return v29;
}

@end