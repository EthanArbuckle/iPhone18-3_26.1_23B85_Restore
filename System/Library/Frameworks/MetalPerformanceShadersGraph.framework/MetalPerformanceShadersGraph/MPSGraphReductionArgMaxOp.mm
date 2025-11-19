@interface MPSGraphReductionArgMaxOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphReductionArgMaxOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphReductionArgMaxOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphReductionOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ReductionProdOp>(a4, a3, __p, 0x18Du, v10);
  if (v21 < 0)
  {
    operator delete(__p[0]);
    v12 = *a5;
    v13 = *(a5 + 1);
    if (v13 - *a5 >= 9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *a5;
    v13 = *(a5 + 1);
    if (v13 - *a5 >= 9)
    {
LABEL_3:
      v14 = v12[1];
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  v19 = v14;
  if (v13 == v12)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v17 = 1;
  v18 = mlir::OpBuilder::create<mlir::mps::ReductionArgMaxOp,mlir::Value &,mlir::Value &,BOOL>(a3, v11, v12, &v19, &v17) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v18);

  return DefiningOp;
}

@end