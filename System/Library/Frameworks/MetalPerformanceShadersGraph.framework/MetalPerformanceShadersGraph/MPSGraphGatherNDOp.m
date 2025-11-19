@interface MPSGraphGatherNDOp
- (MPSGraphGatherNDOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 batchDimensions:(unint64_t)a6 name:(id)a7;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphGatherNDOp

- (MPSGraphGatherNDOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 batchDimensions:(unint64_t)a6 name:(id)a7
{
  self->_batchDims = a6;
  self->_allowNegativeIndices = 0;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a7];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphGatherNDOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", __p);
  v12 = v11;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v46);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x30u, 0);
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

    v45 = v18;
    if (v18)
    {
      memmove(__dst, v17, v18);
    }

    v20 = &__dst[v19];
  }

  else
  {
    v45 = 13;
    qmemcpy(__dst, "mps.gather_nd", sizeof(__dst));
    v20 = v44;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v14, &v40);
  v21 = v40.__r_.__value_.__r.__words[0];
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v40;
  }

  v22 = 1;
  HIBYTE(v47) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v46[0] = v21;
    v22 = 3;
  }

  LOBYTE(v47) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v46);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v45 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v24;
  Context = mlir::Attribute::getContext(&v37);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.gather_nd";
    v41 = 13;
    v39 = 259;
    llvm::operator+(&v40, &v38, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v24, v27);
  mlir::mps::GatherNDOp::build(a3, v46, *v25, v25[1], self->_batchDims, self->_allowNegativeIndices);
  v29 = mlir::OpBuilder::create(a3, v46);
  v30 = *(*(v29 + 48) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v34 = v31 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MPSGraphOperation *)self inputTensors];
  v13 = [v12 objectAtIndexedSubscript:0];
  if (v13 != v9)
  {
    v14 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v15 = [v9 shape];
  v16 = isStaticShape(v15);

  if (v16)
  {
    v12 = v10;
    v17 = [(MPSGraphOperation *)self inputTensors];
    v13 = [v17 objectAtIndexedSubscript:1];

    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v18 = [v9 shape];
    batchDims = self->_batchDims;
    v20 = MEMORY[0x1E696AEC0];
    v24 = v18;
    v21 = [(MPSGraphOperation *)self name];
    v22 = [v20 stringWithFormat:@"%@/%@/scatterND", v11, v21];
    v14 = [WeakRetained scatterNDWithUpdatesTensor:v12 indicesTensor:v13 shape:v24 batchDimensions:batchDims name:v22];

    goto LABEL_5;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

@end