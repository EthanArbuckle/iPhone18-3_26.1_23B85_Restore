@interface MPSGraphSortOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphSortOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v11 = a7;
  mpsFileLoc("[MPSGraphSortOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphSortOps.mm", __p);
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SortOp>(a4, a3, __p, 0x2Du, v11);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a5 + 1) - *a5 != 16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  descending = self->_descending;
  v14 = mlir::OpBuilder::create<mlir::mps::SortOp,mlir::Value &,mlir::Value &,BOOL>(a3, v12, v13, v13 + 1, &descending);

  return v14;
}

@end