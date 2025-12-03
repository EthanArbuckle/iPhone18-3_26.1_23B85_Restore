@interface MPSGraphAvgPooling2DGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphAvgPooling2DGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphAvgPooling2DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolAvgGradientOp>(table, builder, __p, 0x1D3u, nameCopy);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  kernelWidth = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelWidth];
  kernelHeight = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelHeight];
  dataLayout = [(MPSGraphPooling2DOpDescriptor *)self->super._desc dataLayout];
  xyValTo4dAttr(kernelWidth, kernelHeight, dataLayout, builder, v14);
}

@end