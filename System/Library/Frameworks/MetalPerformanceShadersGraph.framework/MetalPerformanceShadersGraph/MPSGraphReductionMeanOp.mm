@interface MPSGraphReductionMeanOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphReductionMeanOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphReductionMeanOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphReductionOps.mm", v28);
  v11 = nameCopy;
  v35 = 260;
  v34[0] = v28;
  StringAttr = mlir::Builder::getStringAttr(builder, v34);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x11Au, 0);
  if (v11)
  {
    uTF8String = [v11 UTF8String];
    v16 = strlen(uTF8String);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v33[5] = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    v18 = &__dst + v17;
  }

  else
  {
    v33[5] = 18;
    v32 = 28257;
    __dst = *"mps.reduction_mean";
    v18 = v33;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v20 = 1;
  HIBYTE(v35) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v34[0] = p_p;
    v20 = 3;
  }

  LOBYTE(v35) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v34);
  v22 = mlir::NameLoc::get(v21, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v33[5] & 0x80000000) == 0)
    {
LABEL_16:

      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v28[0]);
      v23 = *values;
      v24 = *(values + 1);
      if (v24 - *values >= 9)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v33[5] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v29 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = *values;
  v24 = *(values + 1);
  if (v24 - *values >= 9)
  {
LABEL_18:
    v25 = v23[1];
    goto LABEL_23;
  }

LABEL_22:
  v25 = 0;
LABEL_23:
  v34[0] = v25;
  if (v24 == v23)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  __p.__r_.__value_.__s.__data_[0] = 1;
  *&__dst = mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(builder, v22, v23, v34, &__p) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&__dst);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v12 = objc_loadWeakRetained(&self->super.super._graph);
  v31 = tensorCopy;
  v13 = [v12 shapeOfTensor:tensorCopy name:@"ShapeForReductionGrad"];
  v32 = [v12 broadcastTensor:gradientCopy toShapeTensor:v13 name:@"Broadcast to input shape"];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  axes = self->super._axes;
  if (nameCopy)
  {
    v16 = [nameCopy stringByAppendingFormat:@"/dimSize"];
  }

  else
  {
    v16 = @"meanGrad/dimSize";
  }

  v17 = [WeakRetained dimensionSizeOfTensor:tensorCopy axes:axes name:v16];
  if (nameCopy)
  {

    v18 = objc_loadWeakRetained(&self->super.super._graph);
    v19 = [nameCopy stringByAppendingFormat:@"/reductionProduct"];
  }

  else
  {

    v18 = objc_loadWeakRetained(&self->super.super._graph);
    v19 = @"meanGrad/reductionProduct";
  }

  v20 = [v18 reductionProductWithTensor:v17 axis:0 name:v19];
  if (nameCopy)
  {
  }

  v21 = objc_loadWeakRetained(&self->super.super._graph);
  dataType = [gradientCopy dataType];
  if (nameCopy)
  {
    v23 = [nameCopy stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v23 = @"meanGrad/cast";
  }

  v24 = [v21 castTensor:v20 toType:dataType name:v23];
  if (nameCopy)
  {

    v25 = objc_loadWeakRetained(&self->super.super._graph);
    v26 = [nameCopy stringByAppendingString:@"/reciprocal"];
  }

  else
  {

    v25 = objc_loadWeakRetained(&self->super.super._graph);
    v26 = @"meanGrad/reciprocal";
  }

  v27 = [v25 reciprocalWithTensor:v24 name:v26];
  if (nameCopy)
  {
  }

  v28 = objc_loadWeakRetained(&self->super.super._graph);
  v29 = [v28 multiplicationWithPrimaryTensor:v32 secondaryTensor:v27 name:nameCopy];

  return v29;
}

@end