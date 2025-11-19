@interface MPSGraphConstantOp
- (MPSGraphConstantOp)initWithGraph:(id)a3 data:(id)a4 shape:(id)a5 dataType:(unsigned int)a6 isSplat:(BOOL)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphConstantOp

- (MPSGraphConstantOp)initWithGraph:(id)a3 data:(id)a4 shape:(id)a5 dataType:(unsigned int)a6 isSplat:(BOOL)a7 name:(id)a8
{
  v14 = a4;
  objc_storeStrong(&self->_shape, a5);
  v15 = a5;
  v16 = a8;
  v17 = a3;
  self->_dataType = a6;
  data = self->_data;
  self->_data = v14;
  v19 = v14;

  self->_isSplat = a7;
  v22.receiver = self;
  v22.super_class = MPSGraphConstantOp;
  v20 = [(MPSGraphOperation *)&v22 initWithGraph:v17 inputTensors:MEMORY[0x1E695E0F0] controlDependencies:MEMORY[0x1E695E0F0] name:v16];

  return v20;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphConstantOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMemoryOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ConstantOp>(a4, a3, __p, 0xA5u, v10);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRType = getMLIRType(a3, self->_shape, self->_dataType);
  ConstantOp = createConstantOp(a3, v11, self->_data, MLIRType, self->_isSplat);
  data = self->_data;
  self->_data = 0;

  DefiningOp = mlir::Value::getDefiningOp(&ConstantOp);
  return DefiningOp;
}

@end