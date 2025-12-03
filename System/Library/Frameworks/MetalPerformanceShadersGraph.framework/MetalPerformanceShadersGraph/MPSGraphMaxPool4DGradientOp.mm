@interface MPSGraphMaxPool4DGradientOp
- (MPSGraphMaxPool4DGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor gradientWithIndices:(BOOL)indices name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMaxPool4DGradientOp

- (MPSGraphMaxPool4DGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor gradientWithIndices:(BOOL)indices name:(id)name
{
  self->_gradientWithIndices = indices;
  v9.receiver = self;
  v9.super_class = MPSGraphMaxPool4DGradientOp;
  return [(MPSGraphPooling4DBaseOp *)&v9 initWithGraph:graph inputTensors:tensors controlDependencies:dependencies descriptor:descriptor name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphMaxPool4DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  MPSSymbolTable::getLocationByInsertingOp<mlir::mps::PoolMaxGradientOp>(table, builder, __p, 0x321u, nameCopy);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(values + 1) - *values;
  if (!v11)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  if (self->_gradientWithIndices)
  {
    if (v11 >= 9 && v11 != 16)
    {
LABEL_9:
      MLIRElementType = getMLIRElementType(*builder, [(MPSGraphPooling4DOpDescriptor *)self->super._desc returnIndicesDataType]);
      mlir::TypeAttr::get(MLIRElementType);
      kernelSizes = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
      nsArrayToAttr(kernelSizes, builder);
    }
  }

  else if (v11 > 8)
  {
    goto LABEL_9;
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end