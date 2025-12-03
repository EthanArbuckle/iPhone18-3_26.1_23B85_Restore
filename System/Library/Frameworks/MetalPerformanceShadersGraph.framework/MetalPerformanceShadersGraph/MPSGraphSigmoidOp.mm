@interface MPSGraphSigmoidOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSigmoidOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphSigmoidOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphActivationOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReluOp>(table, builder, __p, 0x91u, nameCopy);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::Value &>(builder, v11, *values) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v14);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v12 = [WeakRetained constantWithScalar:&unk_1F5B77780 shape:objc_msgSend(tensorCopy dataType:{"dataType"), 1.0}];

  v13 = objc_loadWeakRetained(&self->super._graph);
  if (nameCopy)
  {
    v14 = [nameCopy stringByAppendingString:@"/sigmoid"];
  }

  else
  {
    v14 = @"sigmoidGrad/sigmoid";
  }

  v15 = [v13 sigmoidWithTensor:tensorCopy name:v14];
  if (nameCopy)
  {

    v16 = objc_loadWeakRetained(&self->super._graph);
    v17 = [nameCopy stringByAppendingString:@"/subtraction"];
  }

  else
  {

    v16 = objc_loadWeakRetained(&self->super._graph);
    v17 = @"sigmoidGrad/subtraction";
  }

  v18 = [v16 subtractionWithPrimaryTensor:v12 secondaryTensor:v15 name:v17];
  if (nameCopy)
  {

    v19 = objc_loadWeakRetained(&self->super._graph);
    v20 = [nameCopy stringByAppendingString:@"/multiplication"];
  }

  else
  {

    v19 = objc_loadWeakRetained(&self->super._graph);
    v20 = @"sigmoidGrad/multiplication";
  }

  v21 = [v19 multiplicationWithPrimaryTensor:v18 secondaryTensor:v15 name:v20];
  if (nameCopy)
  {

    v22 = objc_loadWeakRetained(&self->super._graph);
    v23 = [nameCopy stringByAppendingString:@"/multiplication_1"];
  }

  else
  {

    v22 = objc_loadWeakRetained(&self->super._graph);
    v23 = @"sigmoidGrad/multiplication_1";
  }

  v24 = [v22 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v21 name:v23];
  if (nameCopy)
  {
  }

  return v24;
}

@end