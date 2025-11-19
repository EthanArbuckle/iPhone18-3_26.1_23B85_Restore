@interface MPSGraphMaxPool4DGradientOp
- (MPSGraphMaxPool4DGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 gradientWithIndices:(BOOL)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphMaxPool4DGradientOp

- (MPSGraphMaxPool4DGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 gradientWithIndices:(BOOL)a7 name:(id)a8
{
  self->_gradientWithIndices = a7;
  v9.receiver = self;
  v9.super_class = MPSGraphMaxPool4DGradientOp;
  return [(MPSGraphPooling4DBaseOp *)&v9 initWithGraph:a3 inputTensors:a4 controlDependencies:a5 descriptor:a6 name:a8];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = a7;
  mpsFileLoc("[MPSGraphMaxPool4DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxGradientOp>(a4, a3, __p, 0x321u, v14);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(a5 + 1) - *a5;
  if (!v11)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  if (self->_gradientWithIndices)
  {
    if (v11 >= 9 && v11 != 16)
    {
LABEL_9:
      MLIRElementType = getMLIRElementType(*a3, [(MPSGraphPooling4DOpDescriptor *)self->super._desc returnIndicesDataType]);
      mlir::TypeAttr::get(MLIRElementType);
      v15 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
      nsArrayToAttr(v15, a3);
    }
  }

  else if (v11 > 8)
  {
    goto LABEL_9;
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end