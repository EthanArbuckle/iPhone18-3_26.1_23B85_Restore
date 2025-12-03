@interface MPSGraphReLUOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphReLUOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphReLUOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphActivationOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReluOp>(table, builder, __p, 0x1Du, nameCopy);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::Value &>(builder, v11, *values) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v14);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v13 = [WeakRetained constantWithScalar:&unk_1F5B77768 shape:268435488 dataType:0.0];

  v14 = objc_loadWeakRetained(&self->super._graph);
  if (nameCopy)
  {
    v15 = [nameCopy stringByAppendingString:@"/greaterThanOrEqualTo"];
  }

  else
  {
    v15 = @"reLUGrad/greaterThanOrEqualTo";
  }

  v16 = [v14 greaterThanWithPrimaryTensor:tensorCopy secondaryTensor:v13 name:v15];
  if (nameCopy)
  {

    v17 = objc_loadWeakRetained(&self->super._graph);
    v18 = [nameCopy stringByAppendingString:@"/multiplication"];
  }

  else
  {

    v17 = objc_loadWeakRetained(&self->super._graph);
    v18 = @"reLUGrad/multiplication";
  }

  v19 = [v17 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v16 name:v18];
  if (nameCopy)
  {
  }

  return v19;
}

@end