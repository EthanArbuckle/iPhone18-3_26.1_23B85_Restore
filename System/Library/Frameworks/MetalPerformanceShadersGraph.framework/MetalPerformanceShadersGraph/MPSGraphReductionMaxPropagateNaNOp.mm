@interface MPSGraphReductionMaxPropagateNaNOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphReductionMaxPropagateNaNOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphReductionMaxPropagateNaNOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphReductionOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReductionMaxOp>(table, builder, __p, 0xB0u, nameCopy);
  if (v22 < 0)
  {
    operator delete(__p[0]);
    v12 = *values;
    v13 = *(values + 1);
    if (v13 - *values >= 9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *values;
    v13 = *(values + 1);
    if (v13 - *values >= 9)
    {
LABEL_3:
      v14 = v12[1];
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  v20 = v14;
  if (v13 == v12)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = 1;
  v17 = 1;
  v19 = mlir::OpBuilder::create<mlir::mps::ReductionMaxOp,mlir::Value &,mlir::Value &,BOOL,BOOL>(builder, v11, v12, &v20, &v18, &v17) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v19);

  return DefiningOp;
}

@end