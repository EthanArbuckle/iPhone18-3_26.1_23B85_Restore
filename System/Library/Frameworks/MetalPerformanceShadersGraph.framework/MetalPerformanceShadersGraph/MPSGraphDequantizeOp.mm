@interface MPSGraphDequantizeOp
- (MPSGraphDequantizeOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dataType:(unsigned int)a6 axis:(id)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphDequantizeOp

- (MPSGraphDequantizeOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dataType:(unsigned int)a6 axis:(id)a7 name:(id)a8
{
  *(&self->_dataType + 1) = a6;
  objc_storeStrong(&self->_axis, a7);
  v13 = a8;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(MPSGraphOperation *)self initWithGraph:v16 inputTensors:v15 controlDependencies:v14 name:v13];

  return v17;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v11 = a7;
  MLIRElementType = getMLIRElementType(*a3, *(&self->_dataType + 1));
  v23 = 0;
  v24 = mlir::TypeAttr::get(MLIRElementType);
  if (self->_axis)
  {
    IntegerType = mlir::Builder::getIntegerType(a3, 32, 1);
    v23 = mlir::IntegerAttr::get(IntegerType, [(NSNumber *)self->_axis intValue]);
  }

  mpsFileLoc("[MPSGraphDequantizeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphQuantizationOps.mm", __p);
  v14 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::DequantizeOp>(a4, a3, __p, 0x74u, v11);
  if (v22 < 0)
  {
    operator delete(__p[0]);
    v15 = *a5;
    v16 = *(a5 + 1);
    v17 = v16 - *a5;
    if (v17 == 24)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = *a5;
    v16 = *(a5 + 1);
    v17 = v16 - *a5;
    if (v17 == 24)
    {
LABEL_5:
      v18 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(a3, v14, v15, v15 + 1, v15 + 2, &v24, &v23);
      goto LABEL_10;
    }
  }

  if (v16 == v15 || v17 <= 0x1F)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(a3, v14, v15, v15 + 1, v15 + 2, v15 + 3, &v24, &v23);
LABEL_10:
  v19 = v18;

  return v19;
}

@end