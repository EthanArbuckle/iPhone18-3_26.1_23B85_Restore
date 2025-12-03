@interface MPSGraphStridedSliceGradientOp
- (MPSGraphStridedSliceGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies startMask:(unsigned int)mask endMask:(unsigned int)endMask shrinkAxisMask:(unsigned int)axisMask endIsSize:(BOOL)size name:(id)self0;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphStridedSliceGradientOp

- (MPSGraphStridedSliceGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies startMask:(unsigned int)mask endMask:(unsigned int)endMask shrinkAxisMask:(unsigned int)axisMask endIsSize:(BOOL)size name:(id)self0
{
  self->_begin_mask = mask;
  self->_end_mask = endMask;
  self->_shrink_axis_mask = axisMask;
  self->_end_is_size = size;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphStridedSliceGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v11 = nameCopy;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v45);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x251u, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  uTF8String = [v11 UTF8String];
  v16 = strlen(uTF8String);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v44) = v16;
  if (v16)
  {
    memmove(&__dst, uTF8String, v16);
  }

  *(&__dst + v18) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v17, &v40);
  v19 = v40.__r_.__value_.__r.__words[0];
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v40;
  }

  v20 = 1;
  HIBYTE(v46) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v45[0] = v19;
    v20 = 3;
  }

  LOBYTE(v46) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v45);
  v22 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = *values;
  v24 = *(values + 1) - *values;
  if (!v24 || (v24 >> 3) < 2 || v24 == 16 || v24 == 32 || (v24 >> 3) <= 3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v22;
  Context = mlir::Attribute::getContext(&v37);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceGradientOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.strided_slice_gradient";
    v41 = 26;
    v39 = 259;
    llvm::operator+(&v40, &v38, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v22, v26);
  mlir::mps::StridedSliceGradientOp::build(builder, v45, *v23, v23[1], v23[2], v23[3], v23[4], self->_begin_mask, self->_end_mask, self->_shrink_axis_mask, self->_end_is_size);
  v28 = mlir::OpBuilder::create(builder, v45);
  v29 = *(*(v28 + 48) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceGradientOp,void>::id)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v34 = v30 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  end_is_size = self->_end_is_size;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
  if (end_is_size)
    v12 = {;
    v13 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
    v14 = [WeakRetained sliceTensor:gradientCopy startTensor:v12 sizeTensor:v13 squeezeMask:self->_shrink_axis_mask name:nameCopy];
  }

  else
    v12 = {;
    v13 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
    v15 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:4];
    LODWORD(v17) = self->_shrink_axis_mask;
    v14 = [WeakRetained sliceTensor:gradientCopy startTensor:v12 endTensor:v13 strideTensor:v15 startMask:self->_begin_mask endMask:self->_end_mask squeezeMask:v17 name:nameCopy];
  }

  return v14;
}

@end