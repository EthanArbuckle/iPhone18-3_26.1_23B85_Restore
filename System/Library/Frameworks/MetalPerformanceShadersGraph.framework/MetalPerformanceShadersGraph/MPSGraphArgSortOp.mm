@interface MPSGraphArgSortOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphArgSortOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphArgSortOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphSortOps.mm", __p);
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SortOp>(table, builder, __p, 0x58u, nameCopy);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) - *values != 16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  descending = self->_descending;
  v14 = mlir::OpBuilder::create<mlir::mps::SortOp,mlir::Value &,mlir::Value &,BOOL>(builder, v12, v13, v13 + 1, &descending);

  return v14;
}

@end