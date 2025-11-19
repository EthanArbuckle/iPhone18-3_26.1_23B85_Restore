@interface MPSGraphSqueezeOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphSqueezeOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a7;
  mpsFileLoc("[MPSGraphSqueezeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v11 = v10;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v47);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xC61u, 0);
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

    v46 = v17;
    if (v17)
    {
      memmove(__dst, v16, v17);
    }

    v19 = &__dst[v18];
  }

  else
  {
    v46 = 11;
    qmemcpy(__dst, "mps.squeeze", sizeof(__dst));
    v19 = v45;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &v41);
  v20 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v41;
  }

  v21 = 1;
  HIBYTE(v48) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v47[0] = v20;
    v21 = 3;
  }

  LOBYTE(v48) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v47);
  v23 = mlir::NameLoc::get(v22, v14);
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

  v24 = *a5;
  v25 = *(a5 + 1) - *a5;
  if (!v25)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  if (v25 < 9)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24[1];
  }

  v38 = v23;
  Context = mlir::Attribute::getContext(&v38);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mps.squeeze";
    v42 = 11;
    v40 = 259;
    llvm::operator+(&v41, &v39, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v23, v28);
  mlir::mps::SqueezeOp::build(a3, v47, *v24, v26);
  v30 = mlir::OpBuilder::create(a3, v47);
  v31 = *(*(v30 + 48) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id)
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