@interface MPSGraphGatherNDOp
- (MPSGraphGatherNDOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies batchDimensions:(unint64_t)dimensions name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphGatherNDOp

- (MPSGraphGatherNDOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies batchDimensions:(unint64_t)dimensions name:(id)name
{
  self->_batchDims = dimensions;
  self->_allowNegativeIndices = 0;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphGatherNDOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", __p);
  v12 = nameCopy;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v46);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x30u, 0);
  if (v12)
  {
    v16 = v12;
    uTF8String = [v12 UTF8String];
    v18 = strlen(uTF8String);
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
      memmove(__dst, uTF8String, v18);
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
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v14, &v40);
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
  v23 = mlir::Builder::getStringAttr(builder, v46);
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

  v25 = *values;
  if (*(values + 1) - *values <= 8uLL)
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
  mlir::mps::GatherNDOp::build(builder, v46, *v25, v25[1], self->_batchDims, self->_allowNegativeIndices);
  v29 = mlir::OpBuilder::create(builder, v46);
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

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors objectAtIndexedSubscript:0];
  if (v13 != tensorCopy)
  {
    v14 = 0;
LABEL_5:

    goto LABEL_6;
  }

  shape = [tensorCopy shape];
  v16 = isStaticShape(shape);

  if (v16)
  {
    inputTensors = gradientCopy;
    inputTensors2 = [(MPSGraphOperation *)self inputTensors];
    v13 = [inputTensors2 objectAtIndexedSubscript:1];

    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    shape2 = [tensorCopy shape];
    batchDims = self->_batchDims;
    v20 = MEMORY[0x1E696AEC0];
    v24 = shape2;
    name = [(MPSGraphOperation *)self name];
    v22 = [v20 stringWithFormat:@"%@/%@/scatterND", nameCopy, name];
    v14 = [WeakRetained scatterNDWithUpdatesTensor:inputTensors indicesTensor:v13 shape:v24 batchDimensions:batchDims name:v22];

    goto LABEL_5;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

@end