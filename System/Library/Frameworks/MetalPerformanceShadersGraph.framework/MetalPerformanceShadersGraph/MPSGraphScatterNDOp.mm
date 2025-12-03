@interface MPSGraphScatterNDOp
- (MPSGraphScatterNDOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies batchDimensions:(unint64_t)dimensions mode:(int64_t)mode name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphScatterNDOp

- (MPSGraphScatterNDOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies batchDimensions:(unint64_t)dimensions mode:(int64_t)mode name:(id)name
{
  self->_batchDims = dimensions;
  self->_mode = mode;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v51 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphScatterNDOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphScatterOps.mm", __p);
  v12 = nameCopy;
  v50 = 260;
  v49[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v49);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x31u, 0);
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

    v48 = v18;
    if (v18)
    {
      memmove(__dst, uTF8String, v18);
    }

    v20 = &__dst[v19];
  }

  else
  {
    v48 = 14;
    qmemcpy(__dst, "mps.scatter_nd", sizeof(__dst));
    v20 = v47;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v14, &v43);
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
  v23 = mlir::Builder::getStringAttr(builder, v49);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *values;
  v25 = *(values + 1);
  v27 = v25 - *values;
  if (v27 == 16 || v25 == v26 || v27 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  mode = self->_mode;
  v40 = v24;
  Context = mlir::Attribute::getContext(&v40);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v45 = 1283;
    v43.__r_.__value_.__r.__words[2] = "mps.scatter_nd";
    v44 = 14;
    v42 = 259;
    llvm::operator+(&v43, &v41, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v49, v24, v30);
  mlir::mps::ScatterNDOp::build(builder, v49, *v26, v26[1], v26[2], self->_batchDims, mode);
  v32 = mlir::OpBuilder::create(builder, v49);
  v33 = *(*(v32 + 48) + 16);
  mlir::OperationState::~OperationState(v49);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id)
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

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors objectAtIndexedSubscript:0];
  if (v13 == tensorCopy)
  {
    mode = self->_mode;

    if (!mode)
    {
      v18 = gradientCopy;
      goto LABEL_8;
    }
  }

  else
  {
  }

  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v16 = [inputTensors2 objectAtIndexedSubscript:1];
  if (v16 != tensorCopy)
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

  v20 = gradientCopy;
  inputTensors3 = [(MPSGraphOperation *)self inputTensors];
  v22 = [inputTensors3 objectAtIndexedSubscript:2];

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  batchDims = self->_batchDims;
  v25 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v27 = [v25 stringWithFormat:@"%@/%@/gatherND", nameCopy, name];
  v18 = [WeakRetained gatherNDWithUpdatesTensor:v20 indicesTensor:v22 batchDimensions:batchDims name:v27];

LABEL_8:

  return v18;
}

@end