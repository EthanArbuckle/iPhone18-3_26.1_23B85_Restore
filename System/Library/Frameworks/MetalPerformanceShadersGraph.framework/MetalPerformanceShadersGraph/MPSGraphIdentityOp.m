@interface MPSGraphIdentityOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphIdentityOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphIdentityOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::IdentityOp>(a4, a3, __p, 0x4FDu, v10);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>(a3, v11, *a5) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v14);

  return DefiningOp;
}

@end