@interface MPSGraphAvgPool4DOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphAvgPool4DOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = a7;
  mpsFileLoc("[MPSGraphAvgPool4DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolAvgOp>(a4, a3, __p, 0x292u, v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a5 + 1) != *a5)
  {
    v13 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(v13, a3);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x1E696AEC0];
  v13 = [(MPSGraphOperation *)self name];
  v14 = [v12 stringWithFormat:@"%@/%@/avgPool4DGradient", v11, v13];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  v16 = [WeakRetained avgPooling4DGradientWithGradientTensor:v10 sourceTensor:v9 descriptor:self->super._desc name:v14];

  return v16;
}

@end