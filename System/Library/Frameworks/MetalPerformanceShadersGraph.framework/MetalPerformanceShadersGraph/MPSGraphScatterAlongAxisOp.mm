@interface MPSGraphScatterAlongAxisOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphScatterAlongAxisOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphScatterAlongAxisOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphScatterOps.mm", __p);
  v12 = v11;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v46);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x15Eu, 0);
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

    HIBYTE(v45) = v18;
    if (v18)
    {
      memmove(__dst, v17, v18);
    }

    v20 = &__dst[v19];
  }

  else
  {
    HIBYTE(v45) = 22;
    qmemcpy(__dst, "mps.scatter_along_axis", sizeof(__dst));
    v20 = &v45;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v14, &v41);
  v21 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v41;
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
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *a5;
  if (*(a5 + 1) - *a5 < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  mode = self->_mode;
  v38 = v24;
  Context = mlir::Attribute::getContext(&v38);
  v28 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterAlongAxisOp,void>::id, Context);
  if ((v29 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mps.scatter_along_axis";
    v42 = 22;
    v40 = 259;
    llvm::operator+(&v41, &v39, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v24, v28);
  mlir::mps::ScatterAlongAxisOp::build(a3, v46, *v25, v25[1], v25[2], v25[3], mode);
  v30 = mlir::OpBuilder::create(a3, v46);
  v31 = *(*(v30 + 48) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::mps::ScatterAlongAxisOp,void>::id)
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

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MPSGraphOperation *)self inputTensors];
  v13 = [v12 objectAtIndexedSubscript:0];
  if (v13 == v9)
  {
    mode = self->_mode;

    if (!mode)
    {
      v18 = v10;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v15 = [(MPSGraphOperation *)self inputTensors];
  v16 = [v15 objectAtIndexedSubscript:1];
  if (v16 != v9)
  {

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v17 = self->_mode;

  if (v17)
  {
    goto LABEL_7;
  }

  v20 = v10;
  v21 = [(MPSGraphOperation *)self inputTensors];
  v22 = [v21 objectAtIndexedSubscript:2];

  v23 = [(MPSGraphOperation *)self inputTensors];
  v24 = [v23 objectAtIndexedSubscript:3];

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v26 = MEMORY[0x1E696AEC0];
  v27 = [(MPSGraphOperation *)self name];
  v28 = [v26 stringWithFormat:@"%@/%@/gatherAlongAxis", v11, v27];
  v18 = [WeakRetained gatherAlongAxisTensor:v24 withUpdatesTensor:v20 indicesTensor:v22 name:v28];

LABEL_8:

  return v18;
}

@end