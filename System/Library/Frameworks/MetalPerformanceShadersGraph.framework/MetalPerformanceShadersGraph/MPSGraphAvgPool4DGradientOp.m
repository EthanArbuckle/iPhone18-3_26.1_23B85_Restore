@interface MPSGraphAvgPool4DGradientOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphAvgPool4DGradientOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = a7;
  mpsFileLoc("[MPSGraphAvgPool4DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolAvgGradientOp>(a4, a3, __p, 0x2B8u, v12);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a5 + 1) - *a5 > 8uLL)
  {
    v13 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(v13, a3);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end