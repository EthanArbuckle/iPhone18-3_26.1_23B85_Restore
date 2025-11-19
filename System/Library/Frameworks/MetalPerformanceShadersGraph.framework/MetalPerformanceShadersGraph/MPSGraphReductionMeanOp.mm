@interface MPSGraphReductionMeanOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphReductionMeanOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphReductionMeanOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphReductionOps.mm", v28);
  v11 = v10;
  v35 = 260;
  v34[0] = v28;
  StringAttr = mlir::Builder::getStringAttr(a3, v34);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x11Au, 0);
  if (v11)
  {
    v15 = [v11 UTF8String];
    v16 = strlen(v15);
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
      memmove(&__dst, v15, v16);
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
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v13, &__p);
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
  v21 = mlir::Builder::getStringAttr(a3, v34);
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
      v23 = *a5;
      v24 = *(a5 + 1);
      if (v24 - *a5 >= 9)
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
  v23 = *a5;
  v24 = *(a5 + 1);
  if (v24 - *a5 >= 9)
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
  *&__dst = mlir::OpBuilder::create<mlir::mps::ReductionMeanOp,mlir::Value &,mlir::Value &,BOOL>(a3, v22, v23, v34, &__p) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&__dst);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_loadWeakRetained(&self->super.super._graph);
  v31 = v9;
  v13 = [v12 shapeOfTensor:v9 name:@"ShapeForReductionGrad"];
  v32 = [v12 broadcastTensor:v10 toShapeTensor:v13 name:@"Broadcast to input shape"];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  axes = self->super._axes;
  if (v11)
  {
    v16 = [v11 stringByAppendingFormat:@"/dimSize"];
  }

  else
  {
    v16 = @"meanGrad/dimSize";
  }

  v17 = [WeakRetained dimensionSizeOfTensor:v9 axes:axes name:v16];
  if (v11)
  {

    v18 = objc_loadWeakRetained(&self->super.super._graph);
    v19 = [v11 stringByAppendingFormat:@"/reductionProduct"];
  }

  else
  {

    v18 = objc_loadWeakRetained(&self->super.super._graph);
    v19 = @"meanGrad/reductionProduct";
  }

  v20 = [v18 reductionProductWithTensor:v17 axis:0 name:v19];
  if (v11)
  {
  }

  v21 = objc_loadWeakRetained(&self->super.super._graph);
  v22 = [v10 dataType];
  if (v11)
  {
    v23 = [v11 stringByAppendingFormat:@"/cast"];
  }

  else
  {
    v23 = @"meanGrad/cast";
  }

  v24 = [v21 castTensor:v20 toType:v22 name:v23];
  if (v11)
  {

    v25 = objc_loadWeakRetained(&self->super.super._graph);
    v26 = [v11 stringByAppendingString:@"/reciprocal"];
  }

  else
  {

    v25 = objc_loadWeakRetained(&self->super.super._graph);
    v26 = @"meanGrad/reciprocal";
  }

  v27 = [v25 reciprocalWithTensor:v24 name:v26];
  if (v11)
  {
  }

  v28 = objc_loadWeakRetained(&self->super.super._graph);
  v29 = [v28 multiplicationWithPrimaryTensor:v32 secondaryTensor:v27 name:v11];

  return v29;
}

@end