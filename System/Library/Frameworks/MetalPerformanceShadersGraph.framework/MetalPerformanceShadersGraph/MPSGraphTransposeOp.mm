@interface MPSGraphTransposeOp
- (MPSGraphTransposeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(unint64_t)dimension withDimension:(unint64_t)withDimension name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphTransposeOp

- (MPSGraphTransposeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(unint64_t)dimension withDimension:(unint64_t)withDimension name:(id)name
{
  self->_dimensionIndex = dimension;
  self->_dimensionIndex2 = withDimension;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v50 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphTransposeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v12 = nameCopy;
  v49 = 260;
  v48[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v48);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0xD2u, 0);
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

    v47 = v18;
    if (v18)
    {
      memmove(__dst, uTF8String, v18);
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
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v14, &v42);
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
  v23 = mlir::Builder::getStringAttr(builder, v48);
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

  v25 = *values;
  if (*(values + 1) == *values)
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
  mlir::mps::TransposeOp::build(builder, v48, *v25, dimensionIndex, dimensionIndex2);
  v31 = mlir::OpBuilder::create(builder, v48);
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

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  dimensionIndex = self->_dimensionIndex;
  dimensionIndex2 = self->_dimensionIndex2;
  v13 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v15 = [v13 stringWithFormat:@"%@/%@/transpose", nameCopy, name];
  v16 = [WeakRetained transposeTensor:gradientCopy dimension:dimensionIndex withDimension:dimensionIndex2 name:v15];

  return v16;
}

@end