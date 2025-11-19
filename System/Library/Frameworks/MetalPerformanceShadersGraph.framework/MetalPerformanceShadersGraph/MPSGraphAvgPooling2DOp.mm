@interface MPSGraphAvgPooling2DOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphAvgPooling2DOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphAvgPooling2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolAvgOp>(a4, a3, __p, 0x165u, v10);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelWidth];
  v12 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc kernelHeight];
  v13 = [(MPSGraphPooling2DOpDescriptor *)self->super._desc dataLayout];
  xyValTo4dAttr(v11, v12, v13, a3, v14);
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  desc = self->super._desc;
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(MPSGraphOperation *)self name];
  v16 = [v14 stringWithFormat:@"%@/%@/maxPoolGrad", v11, v15];
  v17 = [WeakRetained avgPooling2DGradientWithGradientTensor:v10 sourceTensor:v9 descriptor:desc name:v16];

  return v17;
}

@end