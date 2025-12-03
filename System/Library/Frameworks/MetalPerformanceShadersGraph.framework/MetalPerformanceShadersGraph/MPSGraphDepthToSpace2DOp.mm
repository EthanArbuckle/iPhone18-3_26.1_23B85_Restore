@interface MPSGraphDepthToSpace2DOp
- (MPSGraphDepthToSpace2DOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies blockSize:(unint64_t)size usePixelShuffleOrder:(BOOL)order name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphDepthToSpace2DOp

- (MPSGraphDepthToSpace2DOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies blockSize:(unint64_t)size usePixelShuffleOrder:(BOOL)order name:(id)name
{
  self->_blockSize = size;
  self->_pixelShuffleOrder = order;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v10 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
  v11 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
  v12 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
  blockSize = self->_blockSize;
  pixelShuffleOrder = self->_pixelShuffleOrder;
  v15 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v17 = [v15 stringWithFormat:@"%@/%@/depthToSpace2DGradient", nameCopy, name];
  v18 = [WeakRetained spaceToDepth2DTensor:gradientCopy widthAxisTensor:v10 heightAxisTensor:v11 depthAxisTensor:v12 blockSize:blockSize usePixelShuffleOrder:pixelShuffleOrder name:v17];

  return v18;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphDepthToSpace2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v12 = nameCopy;
  v46 = 260;
  v45[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v45);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x3F0u, 0);
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

    v44[2] = v18;
    if (v18)
    {
      memmove(__dst, uTF8String, v18);
    }

    v20 = &__dst[v19];
  }

  else
  {
    v44[2] = 21;
    qmemcpy(__dst, "mps.depth_to_space_2d", sizeof(__dst));
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
  HIBYTE(v46) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v45[0] = v21;
    v22 = 3;
  }

  LOBYTE(v46) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v45);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v44[2] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v44[2] & 0x80000000) == 0)
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
  if (*(values + 1) - *values < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v24;
  Context = mlir::Attribute::getContext(&v37);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.depth_to_space_2d";
    v41 = 21;
    v39 = 259;
    llvm::operator+(&v40, &v38, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v45, v24, v27);
  mlir::mps::DepthToSpace2DOp::build(builder, v45, *v25, v25[1], v25[2], v25[3], self->_blockSize, self->_pixelShuffleOrder);
  v29 = mlir::OpBuilder::create(builder, v45);
  v30 = *(*(v29 + 48) + 16);
  mlir::OperationState::~OperationState(v45);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id)
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

@end