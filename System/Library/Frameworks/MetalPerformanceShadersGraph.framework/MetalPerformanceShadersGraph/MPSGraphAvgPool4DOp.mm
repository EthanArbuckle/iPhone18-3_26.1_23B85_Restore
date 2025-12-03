@interface MPSGraphAvgPool4DOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphAvgPool4DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v16 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphAvgPool4DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolAvgOp>(table, builder, __p, 0x292u, nameCopy);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) != *values)
  {
    kernelSizes = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(kernelSizes, builder);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v12 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v14 = [v12 stringWithFormat:@"%@/%@/avgPool4DGradient", nameCopy, name];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  v16 = [WeakRetained avgPooling4DGradientWithGradientTensor:gradientCopy sourceTensor:tensorCopy descriptor:self->super._desc name:v14];

  return v16;
}

@end