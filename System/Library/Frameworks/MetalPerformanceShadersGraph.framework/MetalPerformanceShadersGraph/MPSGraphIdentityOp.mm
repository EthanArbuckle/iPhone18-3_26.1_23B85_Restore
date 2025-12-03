@interface MPSGraphIdentityOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphIdentityOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphIdentityOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::IdentityOp>(table, builder, __p, 0x4FDu, nameCopy);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = mlir::OpBuilder::create<mlir::mps::IdentityOp,mlir::Value>(builder, v11, *values) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v14);

  return DefiningOp;
}

@end