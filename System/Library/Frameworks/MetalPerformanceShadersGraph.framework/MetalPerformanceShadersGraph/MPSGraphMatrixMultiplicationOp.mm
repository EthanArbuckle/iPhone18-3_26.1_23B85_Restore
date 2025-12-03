@interface MPSGraphMatrixMultiplicationOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMatrixMultiplicationOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphMatrixMultiplicationOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMatrixMultiplicationOps.mm", v27);
  v11 = nameCopy;
  v35 = 260;
  v34[0] = v27;
  StringAttr = mlir::Builder::getStringAttr(builder, v34);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x2Bu, 0);
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

    v33 = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    v18 = &__dst + v17;
  }

  else
  {
    v33 = 10;
    v31 = 27765;
    __dst = *"mps.matmul";
    v18 = v32;
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
    if ((v33 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v27[0]);
      v23 = *values;
      v24 = *(values + 1) - *values;
      if (!v24)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v28 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = *values;
  v24 = *(values + 1) - *values;
  if (!v24)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v24 <= 8)
  {
    goto LABEL_24;
  }

  v34[0] = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &>(builder, v22, v23, v23 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v12 = [inputTensors objectAtIndexedSubscript:0];
  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v14 = [inputTensors2 objectAtIndexedSubscript:1];
  v15 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  if (index)
  {
    v17 = [v15 stringWithFormat:@"%@/%@/matMulSecondaryGrad", nameCopy, name];
    [WeakRetained matrixMultiplicationSecondaryGradientWithIncomingGradientTensor:gradientCopy primaryTensor:v12 secondaryTensor:v14 name:v17];
  }

  else
  {
    v17 = [v15 stringWithFormat:@"%@/%@/matMulPrimaryGrad", nameCopy, name];
    [WeakRetained matrixMultiplicationPrimaryGradientWithIncomingGradientTensor:gradientCopy primaryTensor:v12 secondaryTensor:v14 name:v17];
  }
  v41 = ;

  v18 = objc_loadWeakRetained(&self->super._graph);
  inputTensors3 = [(MPSGraphOperation *)self inputTensors];
  v20 = [inputTensors3 objectAtIndexedSubscript:index];
  v21 = MEMORY[0x1E696AEC0];
  name2 = [(MPSGraphOperation *)self name];
  v23 = [v21 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name2];
  v24 = [v18 broadcastGradientArgsForPrimaryTensor:v41 withSecondaryTensor:v20 name:v23];

  v25 = objc_loadWeakRetained(&self->super._graph);
  v26 = MEMORY[0x1E696AEC0];
  name3 = [(MPSGraphOperation *)self name];
  v28 = [v26 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name3];
  v29 = [v25 reductionSumWithTensor:v41 axesTensor:v24 name:v28];

  v30 = objc_loadWeakRetained(&self->super._graph);
  v31 = MEMORY[0x1E696AEC0];
  name4 = [(MPSGraphOperation *)self name];
  v33 = [v31 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name4];
  v34 = [v30 shapeOfTensor:tensorCopy name:v33];

  v35 = objc_loadWeakRetained(&self->super._graph);
  v36 = MEMORY[0x1E696AEC0];
  name5 = [(MPSGraphOperation *)self name];
  v38 = [v36 stringWithFormat:@"%@/%@/braodcastGrad", nameCopy, name5];
  v39 = [v35 reshapeTensor:v29 withShapeTensor:v34 name:v38];

  return v39;
}

@end