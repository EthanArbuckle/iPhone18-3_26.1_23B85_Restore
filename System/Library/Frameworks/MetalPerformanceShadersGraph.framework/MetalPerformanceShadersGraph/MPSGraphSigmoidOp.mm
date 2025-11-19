@interface MPSGraphSigmoidOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphSigmoidOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphSigmoidOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphActivationOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReluOp>(a4, a3, __p, 0x91u, v10);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = mlir::OpBuilder::create<mlir::mps::SigmoidOp,mlir::Value &>(a3, v11, *a5) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v14);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v26 = a4;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v12 = [WeakRetained constantWithScalar:&unk_1F5B77780 shape:objc_msgSend(v9 dataType:{"dataType"), 1.0}];

  v13 = objc_loadWeakRetained(&self->super._graph);
  if (v10)
  {
    v14 = [v10 stringByAppendingString:@"/sigmoid"];
  }

  else
  {
    v14 = @"sigmoidGrad/sigmoid";
  }

  v15 = [v13 sigmoidWithTensor:v9 name:v14];
  if (v10)
  {

    v16 = objc_loadWeakRetained(&self->super._graph);
    v17 = [v10 stringByAppendingString:@"/subtraction"];
  }

  else
  {

    v16 = objc_loadWeakRetained(&self->super._graph);
    v17 = @"sigmoidGrad/subtraction";
  }

  v18 = [v16 subtractionWithPrimaryTensor:v12 secondaryTensor:v15 name:v17];
  if (v10)
  {

    v19 = objc_loadWeakRetained(&self->super._graph);
    v20 = [v10 stringByAppendingString:@"/multiplication"];
  }

  else
  {

    v19 = objc_loadWeakRetained(&self->super._graph);
    v20 = @"sigmoidGrad/multiplication";
  }

  v21 = [v19 multiplicationWithPrimaryTensor:v18 secondaryTensor:v15 name:v20];
  if (v10)
  {

    v22 = objc_loadWeakRetained(&self->super._graph);
    v23 = [v10 stringByAppendingString:@"/multiplication_1"];
  }

  else
  {

    v22 = objc_loadWeakRetained(&self->super._graph);
    v23 = @"sigmoidGrad/multiplication_1";
  }

  v24 = [v22 multiplicationWithPrimaryTensor:v26 secondaryTensor:v21 name:v23];
  if (v10)
  {
  }

  return v24;
}

@end