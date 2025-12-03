@interface MPSGraphConstantOp
- (MPSGraphConstantOp)initWithGraph:(id)graph data:(id)data shape:(id)shape dataType:(unsigned int)type isSplat:(BOOL)splat name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConstantOp

- (MPSGraphConstantOp)initWithGraph:(id)graph data:(id)data shape:(id)shape dataType:(unsigned int)type isSplat:(BOOL)splat name:(id)name
{
  dataCopy = data;
  objc_storeStrong(&self->_shape, shape);
  shapeCopy = shape;
  nameCopy = name;
  graphCopy = graph;
  self->_dataType = type;
  data = self->_data;
  self->_data = dataCopy;
  v19 = dataCopy;

  self->_isSplat = splat;
  v22.receiver = self;
  v22.super_class = MPSGraphConstantOp;
  v20 = [(MPSGraphOperation *)&v22 initWithGraph:graphCopy inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v20;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphConstantOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMemoryOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ConstantOp>(table, builder, __p, 0xA5u, nameCopy);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRType = getMLIRType(builder, self->_shape, self->_dataType);
  ConstantOp = createConstantOp(builder, v11, self->_data, MLIRType, self->_isSplat);
  data = self->_data;
  self->_data = 0;

  DefiningOp = mlir::Value::getDefiningOp(&ConstantOp);
  return DefiningOp;
}

@end