@interface MPSGraphReLUOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphReLUOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphReLUOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphActivationOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReluOp>(a4, a3, __p, 0x1Du, v10);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = mlir::OpBuilder::create<mlir::mps::ReluOp,mlir::Value &>(a3, v11, *a5) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v14);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v13 = [WeakRetained constantWithScalar:&unk_1F5B77768 shape:268435488 dataType:0.0];

  v14 = objc_loadWeakRetained(&self->super._graph);
  if (v11)
  {
    v15 = [v11 stringByAppendingString:@"/greaterThanOrEqualTo"];
  }

  else
  {
    v15 = @"reLUGrad/greaterThanOrEqualTo";
  }

  v16 = [v14 greaterThanWithPrimaryTensor:v9 secondaryTensor:v13 name:v15];
  if (v11)
  {

    v17 = objc_loadWeakRetained(&self->super._graph);
    v18 = [v11 stringByAppendingString:@"/multiplication"];
  }

  else
  {

    v17 = objc_loadWeakRetained(&self->super._graph);
    v18 = @"reLUGrad/multiplication";
  }

  v19 = [v17 multiplicationWithPrimaryTensor:v10 secondaryTensor:v16 name:v18];
  if (v11)
  {
  }

  return v19;
}

@end