@interface MPSGraphDepthwiseConvolution3DDataGradientOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphDepthwiseConvolution3DDataGradientOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = a7;
  mpsFileLoc("[MPSGraphDepthwiseConvolution3DDataGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm", v29);
  v11 = v27;
  v35 = 260;
  v34[0] = v29;
  StringAttr = mlir::Builder::getStringAttr(a3, v34);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x1FFu, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  v15 = v11;
  v16 = [v11 UTF8String];
  v17 = strlen(v16);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v33) = v17;
  if (v17)
  {
    memmove(&__dst, v16, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v18, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v35) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v34[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v35) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v34);
  mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v30 < 0)
  {
    operator delete(v29[0]);
    v24 = *a5;
    v23 = *(a5 + 1);
    v25 = v23 - *a5;
    if (v25 == 24)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = *a5;
    v23 = *(a5 + 1);
    v25 = v23 - *a5;
    if (v25 == 24)
    {
      goto LABEL_23;
    }
  }

  if (v23 == v24 || v25 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_23:
  v28 = [(MPSGraphDepthwiseConvolution3DOpDescriptor *)self->super._desc strides];
  nsArrayToAttr(v28, a3);
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v30 = v9;
  v12 = [(MPSGraphOperation *)self inputTensors];
  v13 = [v12 objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
  if (v13 == v9)
    v20 = {;
    desc = self->super._desc;
    v28 = MEMORY[0x1E696AEC0];
    v21 = [(MPSGraphOperation *)self name];
    v24 = [v28 stringWithFormat:@"%@/%@/depthwiseConvolution3DDataGradient", v11, v21];
    v26 = [WeakRetained depthwiseConvolution3DWithSourceTensor:v10 weightsTensor:v20 descriptor:desc name:v24];
  }

  else
    v15 = {;
    v16 = MEMORY[0x1E696AEC0];
    v17 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/depthwiseConvolution3DDataGradient/shapeOp", v11, v17];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    v24 = [(MPSGraphOperation *)self name];
    v25 = [v23 stringWithFormat:@"%@/%@/depthwiseConvolution3DWeightsGradient", v11, v24];
    v26 = [v20 depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor:v21 sourceTensor:v10 outputShapeTensor:v19 descriptor:v22 name:v25];

    WeakRetained = v19;
  }

  return v26;
}

@end