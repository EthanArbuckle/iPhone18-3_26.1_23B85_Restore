@interface MPSGraphGatherAlongAxisOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphGatherAlongAxisOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphGatherAlongAxisOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", __p);
  v12 = v11;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v47);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xEAu, 0);
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

    v46[2] = v18;
    if (v18)
    {
      memmove(__dst, v17, v18);
    }

    v20 = &__dst[v19];
  }

  else
  {
    v46[2] = 21;
    qmemcpy(__dst, "mps.gather_along_axis", sizeof(__dst));
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
  HIBYTE(v48) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v47[0] = v21;
    v22 = 3;
  }

  LOBYTE(v48) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v47);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
    if ((v46[2] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v46[2] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *a5;
  v25 = *(a5 + 1);
  v27 = v25 - *a5;
  if (v27 == 16 || v25 == v26 || v27 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v39 = v24;
  Context = mlir::Attribute::getContext(&v39);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GatherAlongAxisOp,void>::id, Context);
  if ((v30 & 1) == 0)
  {
    v44 = 1283;
    v42.__r_.__value_.__r.__words[2] = "mps.gather_along_axis";
    v43 = 21;
    v41 = 259;
    llvm::operator+(&v42, &v40, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v24, v29);
  mlir::mps::GatherAlongAxisOp::build(a3, v47, *v26, v26[1], v26[2], self->_allowNegativeIndices);
  v31 = mlir::OpBuilder::create(a3, v47);
  v32 = *(*(v31 + 48) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::mps::GatherAlongAxisOp,void>::id)
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

    v18 = [(MPSGraphOperation *)self inputTensors];
    v26 = [v18 objectAtIndexedSubscript:2];

    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v20 = [v9 shape];
    v21 = MEMORY[0x1E696AEC0];
    v25 = v20;
    v22 = [(MPSGraphOperation *)self name];
    v23 = [v21 stringWithFormat:@"%@/%@/scatterAlongAxis", v11, v22];
    v14 = [WeakRetained scatterAlongAxisTensor:v26 withUpdatesTensor:v12 indicesTensor:v13 shape:v25 mode:0 name:v23];

    goto LABEL_5;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

@end