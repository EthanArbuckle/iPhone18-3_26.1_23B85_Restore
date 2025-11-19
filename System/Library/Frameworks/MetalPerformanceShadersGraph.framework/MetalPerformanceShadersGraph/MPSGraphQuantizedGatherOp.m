@interface MPSGraphQuantizedGatherOp
- (MPSGraphQuantizedGatherOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 hasZeroPoint:(BOOL)a6 hasMin:(BOOL)a7 dequantDataType:(unsigned int)a8 axis:(int64_t)a9 batchDimensions:(unint64_t)a10 name:(id)a11;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphQuantizedGatherOp

- (MPSGraphQuantizedGatherOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 hasZeroPoint:(BOOL)a6 hasMin:(BOOL)a7 dequantDataType:(unsigned int)a8 axis:(int64_t)a9 batchDimensions:(unint64_t)a10 name:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a11;
  self->_hasMin = a6;
  *(&self->_hasMin + 1) = a7;
  [v18 count];
  self->_dequantDataType = a8;
  self->_axis = a9;
  self->_batchDims = a10;
  self->_allowNegativeIndices = 0;
  v21 = [(MPSGraphOperation *)self initWithGraph:v17 inputTensors:v18 controlDependencies:v19 name:v20];

  return v21;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v11 = a7;
  if (self->_hasMin)
  {
    if (*(a5 + 1) - *a5 <= 0x20uLL)
    {
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }

    v12 = *(*a5 + 32);
    v35 = v12;
    if (!*(&self->_hasMin + 1))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = 0;
    v35 = 0;
    if (!*(&self->_hasMin + 1))
    {
LABEL_4:
      v13 = 0;
      goto LABEL_8;
    }
  }

  if (*(a5 + 1) - *a5 <= 0x28uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v13 = *(*a5 + 40);
LABEL_8:
  v34 = v13;
  MLIRElementType = getMLIRElementType(*a3, self->_dequantDataType);
  v32 = 0;
  v33 = mlir::TypeAttr::get(MLIRElementType);
  if (v12)
  {
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  mpsFileLoc("[MPSGraphQuantizedGatherOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", __p);
  v15 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ConstantOp>(a4, a3, __p, 0x170u, v11);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(v25) = 0;
  v35 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(a3, v15, &v25) - 16;
  if (!v13)
  {
LABEL_14:
    mpsFileLoc("[MPSGraphQuantizedGatherOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", v28);
    v16 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ConstantOp>(a4, a3, v28, 0x175u, v11);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    LODWORD(v25) = 0;
    v34 = mlir::OpBuilder::create<mlir::mps::ConstantOp,float>(a3, v16, &v25) - 16;
  }

LABEL_17:
  mpsFileLoc("[MPSGraphQuantizedGatherOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", v26);
  v17 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::DequantizeOp>(a4, a3, v26, 0x179u, v11);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (*(a5 + 1) - *a5 <= 0x18uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v25 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(a3, v17, *a5, (*a5 + 24), &v35, &v34, &v33, &v32) - 16;
  mpsFileLoc("[MPSGraphQuantizedGatherOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", v23);
  v18 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::GatherOp>(a4, a3, v23, 0x17Fu, v11);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v19 = *(a5 + 1) - *a5;
  if (v19 < 9 || v19 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = mlir::OpBuilder::create<mlir::mps::GatherOp,mlir::Value &,mlir::Value &,mlir::Value &,unsigned long &,BOOL &>(a3, v18, &v25, (*a5 + 8), (*a5 + 16), &self->_batchDims, &self->_allowNegativeIndices) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v22);

  return DefiningOp;
}

@end