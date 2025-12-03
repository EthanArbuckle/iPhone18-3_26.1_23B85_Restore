@interface MPSGraphQuantizedGatherOp
- (MPSGraphQuantizedGatherOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies hasZeroPoint:(BOOL)point hasMin:(BOOL)min dequantDataType:(unsigned int)type axis:(int64_t)axis batchDimensions:(unint64_t)self0 name:(id)self1;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphQuantizedGatherOp

- (MPSGraphQuantizedGatherOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies hasZeroPoint:(BOOL)point hasMin:(BOOL)min dequantDataType:(unsigned int)type axis:(int64_t)axis batchDimensions:(unint64_t)self0 name:(id)self1
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  nameCopy = name;
  self->_hasMin = point;
  *(&self->_hasMin + 1) = min;
  [tensorsCopy count];
  self->_dequantDataType = type;
  self->_axis = axis;
  self->_batchDims = dimensions;
  self->_allowNegativeIndices = 0;
  v21 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v21;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  if (self->_hasMin)
  {
    if (*(values + 1) - *values <= 0x20uLL)
    {
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }

    v12 = *(*values + 32);
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

  if (*(values + 1) - *values <= 0x28uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v13 = *(*values + 40);
LABEL_8:
  v34 = v13;
  MLIRElementType = getMLIRElementType(*builder, self->_dequantDataType);
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
  v15 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ConstantOp>(table, builder, __p, 0x170u, nameCopy);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  LODWORD(v25) = 0;
  v35 = mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(builder, v15, &v25) - 16;
  if (!v13)
  {
LABEL_14:
    mpsFileLoc("[MPSGraphQuantizedGatherOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", v28);
    v16 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ConstantOp>(table, builder, v28, 0x175u, nameCopy);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    LODWORD(v25) = 0;
    v34 = mlir::OpBuilder::create<mlir::mps::ConstantOp,float>(builder, v16, &v25) - 16;
  }

LABEL_17:
  mpsFileLoc("[MPSGraphQuantizedGatherOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", v26);
  v17 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::DequantizeOp>(table, builder, v26, 0x179u, nameCopy);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (*(values + 1) - *values <= 0x18uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v25 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(builder, v17, *values, (*values + 24), &v35, &v34, &v33, &v32) - 16;
  mpsFileLoc("[MPSGraphQuantizedGatherOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphGatherOps.mm", v23);
  v18 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::GatherOp>(table, builder, v23, 0x17Fu, nameCopy);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  v19 = *(values + 1) - *values;
  if (v19 < 9 || v19 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = mlir::OpBuilder::create<mlir::mps::GatherOp,mlir::Value &,mlir::Value &,mlir::Value &,unsigned long &,BOOL &>(builder, v18, &v25, (*values + 8), (*values + 16), &self->_batchDims, &self->_allowNegativeIndices) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v22);

  return DefiningOp;
}

@end