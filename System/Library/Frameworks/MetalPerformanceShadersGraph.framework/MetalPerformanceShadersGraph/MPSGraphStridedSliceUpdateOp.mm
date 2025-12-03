@interface MPSGraphStridedSliceUpdateOp
- (MPSGraphStridedSliceUpdateOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies startMask:(unsigned int)mask endMask:(unsigned int)endMask shrinkAxisMask:(unsigned int)axisMask name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphStridedSliceUpdateOp

- (MPSGraphStridedSliceUpdateOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies startMask:(unsigned int)mask endMask:(unsigned int)endMask shrinkAxisMask:(unsigned int)axisMask name:(id)name
{
  self->_begin_mask = mask;
  self->_end_mask = endMask;
  self->_shrink_axis_mask = axisMask;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphStridedSliceUpdateOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", v27);
  v11 = nameCopy;
  v33 = 260;
  v32[0] = v27;
  StringAttr = mlir::Builder::getStringAttr(builder, v32);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x296u, 0);
  if (!v11)
  {
    operator new();
  }

  uTF8String = [v11 UTF8String];
  v15 = strlen(uTF8String);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v31) = v15;
  if (v15)
  {
    memmove(&__dst, uTF8String, v15);
  }

  *(&__dst + v17) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v16, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v19 = 1;
  HIBYTE(v33) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v32[0] = p_p;
    v19 = 3;
  }

  LOBYTE(v33) = v19;
  v20 = mlir::Builder::getStringAttr(builder, v32);
  v21 = mlir::NameLoc::get(v20, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
LABEL_15:

      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      operator delete(v27[0]);
      v22 = *values;
      v23 = *(values + 1) - *values;
      if (!v23)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);

  if (v28 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v22 = *values;
  v23 = *(values + 1) - *values;
  if (!v23)
  {
    goto LABEL_26;
  }

LABEL_21:
  if ((v23 >> 3) < 2 || v23 == 16 || v23 == 32 || (v23 >> 3) <= 3)
  {
LABEL_26:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  LOBYTE(__dst) = 0;
  v32[0] = mlir::OpBuilder::create<mlir::mps::StridedSliceUpdateOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,unsigned int &,unsigned int &,unsigned int &,BOOL>(builder, v21, v22, v22 + 1, v22 + 2, v22 + 3, v22 + 4, &self->_begin_mask, &self->_end_mask, &self->_shrink_axis_mask, &__dst) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v32);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v12 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:0];
  v13 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
  v14 = v13;
  if (v12 == tensorCopy)
  {
    v32 = nameCopy;
    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v33 = gradientCopy;
    v17 = [WeakRetained constantWithScalar:objc_msgSend(gradientCopy dataType:{"dataType"), 0.0}];

    v18 = objc_loadWeakRetained(&self->super._graph);
    v30 = v17;
    v19 = [v18 shapeOfTensor:v14 name:0];

    v20 = objc_loadWeakRetained(&self->super._graph);
    v31 = v19;
    v21 = [v20 broadcastTensor:v17 toShapeTensor:v19 name:0];

    v22 = objc_loadWeakRetained(&self->super._graph);
    v23 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
    v24 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
    v25 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:4];
    v15 = [v22 sliceUpdateDataTensor:v33 updateTensor:v21 startsTensor:v23 endsTensor:v24 stridesTensor:v25 startMask:self->_begin_mask endMask:*&self->_end_mask squeezeMask:v32 name:?];

    v26 = v31;
    nameCopy = v32;
    v27 = v30;
  }

  else
  {
    if (v13 != tensorCopy)
    {
      v15 = 0;
      goto LABEL_7;
    }

    v27 = objc_loadWeakRetained(&self->super._graph);
    v33 = gradientCopy;
    v26 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
    v21 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
    v22 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:4];
    LODWORD(v29) = self->_shrink_axis_mask;
    v15 = [v27 sliceTensor:v33 startTensor:v26 endTensor:v21 strideTensor:v22 startMask:self->_begin_mask endMask:self->_end_mask squeezeMask:v29 name:0];
  }

  gradientCopy = v33;
LABEL_7:

  return v15;
}

@end