@interface MPSGraphAvgPooling2DOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphAvgPooling2DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphAvgPooling2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolAvgOp>(table, builder, __p, 0x165u, nameCopy);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  kernelWidth = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelWidth];
  kernelHeight = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelHeight];
  dataLayout = [(MPSGraphPooling2DOpDescriptor *)self->super._desc dataLayout];
  xyValTo4dAttr(kernelWidth, kernelHeight, dataLayout, builder, v14);
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  desc = self->super._desc;
  v14 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v16 = [v14 stringWithFormat:@"%@/%@/maxPoolGrad", nameCopy, name];
  v17 = [WeakRetained avgPooling2DGradientWithGradientTensor:gradientCopy sourceTensor:tensorCopy descriptor:desc name:v16];

  return v17;
}

@end