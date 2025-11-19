@interface MPSGraphReinterpretCastOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphReinterpretCastOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphReinterpretCastOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v12 = v11;
  v50 = 260;
  v49[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v49);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x374u, 0);
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

    HIBYTE(v48) = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    v20 = (&__dst + v19);
  }

  else
  {
    HIBYTE(v48) = 20;
    v47 = 1953718627;
    __dst = *"mps.reinterpret_cast";
    v20 = &v48;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v14, &v43);
  v21 = v43.__r_.__value_.__r.__words[0];
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v43;
  }

  v22 = 1;
  HIBYTE(v50) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v49[0] = v21;
    v22 = 3;
  }

  LOBYTE(v50) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v49);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v48) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *a5;
  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = *v25;
  if (getMPSDataType((*(*v25 + 8) & 0xFFFFFFFFFFFFFFF8)) == -2147483640 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_destType == -2147483640 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  MLIRElementType = getMLIRElementType(*a3, self->_destType);
  v28 = mlir::TypeAttr::get(MLIRElementType);
  v40 = v24;
  Context = mlir::Attribute::getContext(&v40);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v45 = 1283;
    v43.__r_.__value_.__r.__words[2] = "mps.reinterpret_cast";
    v44 = 20;
    v42 = 259;
    llvm::operator+(&v43, &v41, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v49, v24, v30);
  mlir::mps::ReinterpretCastOp::build(a3, v49, v26, v28);
  v32 = mlir::OpBuilder::create(a3, v49);
  v33 = *(*(v32 + 48) + 16);
  mlir::OperationState::~OperationState(v49);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  v37 = v34 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v37);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v13 = [v9 dataType];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(MPSGraphOperation *)self name];
  v16 = [v14 stringWithFormat:@"%@/%@/reinterpretCastGradient", v11, v15];
  v17 = [WeakRetained reinterpretCastTensor:v10 toType:v13 name:v16];

  return v17;
}

@end