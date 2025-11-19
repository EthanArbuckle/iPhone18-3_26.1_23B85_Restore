@interface MPSGraphMaxPooling2DGradientOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphMaxPooling2DGradientOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = a7;
  mpsFileLoc("[MPSGraphMaxPooling2DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxGradientOp>(a4, a3, __p, 0x19Fu, v15);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelWidth];
  v11 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelHeight];
  v12 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc dataLayout];
  xyValTo4dAttr(v10, v11, v12, a3, v13);
}

@end