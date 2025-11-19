@interface MPSGraphMatrixMultiplicationOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphMatrixMultiplicationOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphMatrixMultiplicationOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMatrixMultiplicationOps.mm", v27);
  v11 = v10;
  v35 = 260;
  v34[0] = v27;
  StringAttr = mlir::Builder::getStringAttr(a3, v34);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x2Bu, 0);
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

    v33 = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
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
    if ((v33 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v27[0]);
      v23 = *a5;
      v24 = *(a5 + 1) - *a5;
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
  v23 = *a5;
  v24 = *(a5 + 1) - *a5;
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

  v34[0] = mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &>(a3, v22, v23, v23 + 1) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v42 = a3;
  v43 = a4;
  v44 = a6;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v11 = [(MPSGraphOperation *)self inputTensors];
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [(MPSGraphOperation *)self inputTensors];
  v14 = [v13 objectAtIndexedSubscript:1];
  v15 = MEMORY[0x1E696AEC0];
  v16 = [(MPSGraphOperation *)self name];
  if (a5)
  {
    v17 = [v15 stringWithFormat:@"%@/%@/matMulSecondaryGrad", v44, v16];
    [WeakRetained matrixMultiplicationSecondaryGradientWithIncomingGradientTensor:v43 primaryTensor:v12 secondaryTensor:v14 name:v17];
  }

  else
  {
    v17 = [v15 stringWithFormat:@"%@/%@/matMulPrimaryGrad", v44, v16];
    [WeakRetained matrixMultiplicationPrimaryGradientWithIncomingGradientTensor:v43 primaryTensor:v12 secondaryTensor:v14 name:v17];
  }
  v41 = ;

  v18 = objc_loadWeakRetained(&self->super._graph);
  v19 = [(MPSGraphOperation *)self inputTensors];
  v20 = [v19 objectAtIndexedSubscript:a5];
  v21 = MEMORY[0x1E696AEC0];
  v22 = [(MPSGraphOperation *)self name];
  v23 = [v21 stringWithFormat:@"%@/%@/braodcastGrad", v44, v22];
  v24 = [v18 broadcastGradientArgsForPrimaryTensor:v41 withSecondaryTensor:v20 name:v23];

  v25 = objc_loadWeakRetained(&self->super._graph);
  v26 = MEMORY[0x1E696AEC0];
  v27 = [(MPSGraphOperation *)self name];
  v28 = [v26 stringWithFormat:@"%@/%@/braodcastGrad", v44, v27];
  v29 = [v25 reductionSumWithTensor:v41 axesTensor:v24 name:v28];

  v30 = objc_loadWeakRetained(&self->super._graph);
  v31 = MEMORY[0x1E696AEC0];
  v32 = [(MPSGraphOperation *)self name];
  v33 = [v31 stringWithFormat:@"%@/%@/braodcastGrad", v44, v32];
  v34 = [v30 shapeOfTensor:v42 name:v33];

  v35 = objc_loadWeakRetained(&self->super._graph);
  v36 = MEMORY[0x1E696AEC0];
  v37 = [(MPSGraphOperation *)self name];
  v38 = [v36 stringWithFormat:@"%@/%@/braodcastGrad", v44, v37];
  v39 = [v35 reshapeTensor:v29 withShapeTensor:v34 name:v38];

  return v39;
}

@end