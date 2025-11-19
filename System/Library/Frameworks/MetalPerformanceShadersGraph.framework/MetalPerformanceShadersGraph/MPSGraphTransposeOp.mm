@interface MPSGraphTransposeOp
- (MPSGraphTransposeOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dimension:(unint64_t)a6 withDimension:(unint64_t)a7 name:(id)a8;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphTransposeOp

- (MPSGraphTransposeOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dimension:(unint64_t)a6 withDimension:(unint64_t)a7 name:(id)a8
{
  self->_dimensionIndex = a6;
  self->_dimensionIndex2 = a7;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a8];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphTransposeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v12 = v11;
  v49 = 260;
  v48[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v48);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xD2u, 0);
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

    v47 = v18;
    if (v18)
    {
      memmove(__dst, v17, v18);
    }

    v20 = &__dst[v19];
  }

  else
  {
    v47 = 13;
    qmemcpy(__dst, "mps.transpose", sizeof(__dst));
    v20 = v46;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v14, &v42);
  v21 = v42.__r_.__value_.__r.__words[0];
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v42;
  }

  v22 = 1;
  HIBYTE(v49) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v48[0] = v21;
    v22 = 3;
  }

  LOBYTE(v49) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v48);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v47 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *a5;
  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  dimensionIndex = self->_dimensionIndex;
  dimensionIndex2 = self->_dimensionIndex2;
  v39 = v24;
  Context = mlir::Attribute::getContext(&v39);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, Context);
  if ((v30 & 1) == 0)
  {
    v44 = 1283;
    v42.__r_.__value_.__r.__words[2] = "mps.transpose";
    v43 = 13;
    v41 = 259;
    llvm::operator+(&v42, &v40, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v48, v24, v29);
  mlir::mps::TransposeOp::build(a3, v48, *v25, dimensionIndex, dimensionIndex2);
  v31 = mlir::OpBuilder::create(a3, v48);
  v32 = *(*(v31 + 48) + 16);
  mlir::OperationState::~OperationState(v48);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v36 = v33 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v36);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v8 = a4;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  dimensionIndex = self->_dimensionIndex;
  dimensionIndex2 = self->_dimensionIndex2;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [(MPSGraphOperation *)self name];
  v15 = [v13 stringWithFormat:@"%@/%@/transpose", v9, v14];
  v16 = [WeakRetained transposeTensor:v8 dimension:dimensionIndex withDimension:dimensionIndex2 name:v15];

  return v16;
}

@end