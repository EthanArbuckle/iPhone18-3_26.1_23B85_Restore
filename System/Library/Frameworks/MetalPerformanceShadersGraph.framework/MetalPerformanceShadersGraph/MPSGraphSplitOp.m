@interface MPSGraphSplitOp
- (MPSGraphSplitOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dimension:(int64_t)a6 numSplits:(unint64_t)a7 name:(id)a8;
- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphSplitOp

- (MPSGraphSplitOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dimension:(int64_t)a6 numSplits:(unint64_t)a7 name:(id)a8
{
  self->_dimensionIndex = a6;
  self->_numSplits = a7;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a8];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphSplitOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", v39);
  v12 = v11;
  v52 = 260;
  v51[0] = v39;
  StringAttr = mlir::Builder::getStringAttr(a3, v51);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x5E8u, 0);
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

    v50 = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    v50 = 9;
    v48 = 116;
    __dst = *"mps.split";
    v20 = v49;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v14, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v22 = 1;
  HIBYTE(v52) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v51[0] = p_p;
    v22 = 3;
  }

  LOBYTE(v52) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v51);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v50 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v40 < 0)
  {
    operator delete(v39[0]);
    v26 = *a5;
    v25 = *(a5 + 1);
    v27 = v25 - *a5;
    if (v27 == 24)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v26 = *a5;
    v25 = *(a5 + 1);
    v27 = v25 - *a5;
    if (v27 == 24)
    {
LABEL_18:
      v41 = v24;
      Context = mlir::Attribute::getContext(&v41);
      v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id, Context);
      if ((v30 & 1) == 0)
      {
        v46 = 1283;
        __p.__r_.__value_.__r.__words[2] = "mps.split";
        v45 = 9;
        v43 = 259;
        llvm::operator+(&__p, v42, &__dst);
        llvm::report_fatal_error(&__dst, 1);
      }

      mlir::OperationState::OperationState(v51, v24, v29);
      mlir::mps::SplitOp::build(a3, v51, *v26, v26[1], v26[2], 0);
      v31 = mlir::OpBuilder::create(a3, v51);
      goto LABEL_27;
    }
  }

  if (v25 == v26 || v27 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  IntegerType = mlir::Builder::getIntegerType(a3, 32, 0);
  v33 = mlir::IntegerAttr::get(IntegerType, self->_numSplits);
  v41 = v24;
  v34 = mlir::Attribute::getContext(&v41);
  v35 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id, v34);
  if ((v36 & 1) == 0)
  {
    v46 = 1283;
    __p.__r_.__value_.__r.__words[2] = "mps.split";
    v45 = 9;
    v43 = 259;
    llvm::operator+(&__p, v42, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v51, v24, v35);
  mlir::mps::SplitOp::build(a3, v51, *v26, v26[1], 0, v33);
  v31 = mlir::OpBuilder::create(a3, v51);
LABEL_27:
  if (*(*(v31 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id)
  {
    v37 = v31;
  }

  else
  {
    v37 = 0;
  }

  mlir::OperationState::~OperationState(v51);

  return v37;
}

- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  dimensionIndex = self->_dimensionIndex;
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(MPSGraphOperation *)self name];
  v16 = [v14 stringWithFormat:@"%@/%@/concat", v10, v15];
  v17 = [WeakRetained concatTensors:v9 dimension:dimensionIndex name:v16];
  [v11 addObject:v17];

  while (1)
  {

    v18 = [v11 count];
    if (v18 > [v8 count])
    {
      break;
    }

    WeakRetained = [MEMORY[0x1E695DFB0] null];
    [v11 addObject:WeakRetained];
  }

  return v11;
}

@end