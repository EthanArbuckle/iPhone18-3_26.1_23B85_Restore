@interface MPSGraphDepthwiseConvolution3DOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphDepthwiseConvolution3DOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = a7;
  mpsFileLoc("[MPSGraphDepthwiseConvolution3DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm", __p);
  v11 = v25;
  v33 = 260;
  v32[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v32);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x1C4u, 0);
  if (v11)
  {
    v15 = v11;
    v16 = v11;
    v17 = [v11 UTF8String];
    v18 = strlen(v17);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v31[2] = v18;
    if (v18)
    {
      memmove(__dst, v17, v18);
    }

    v11 = v16;
    v20 = &__dst[v19];
  }

  else
  {
    v31[2] = 21;
    qmemcpy(__dst, "mps.depthwise_conv_3d", sizeof(__dst));
    v20 = v31;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &v29);
  v21 = v29.__r_.__value_.__r.__words[0];
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v29;
  }

  v22 = 1;
  HIBYTE(v33) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v32[0] = v21;
    v22 = 3;
  }

  LOBYTE(v33) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v32);
  mlir::NameLoc::get(v23, v14);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v31[2] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v31[2] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a5 + 1) - *a5 > 8uLL)
  {
    v26 = [(MPSGraphDepthwiseConvolution3DOpDescriptor *)self->super._desc strides];
    nsArrayToAttr(v26, a3);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v36 = a4;
  v10 = a6;
  v35 = v9;
  v11 = [(MPSGraphOperation *)self inputTensors];
  v12 = [v11 objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  inputTensors = self->super.super._inputTensors;
  if (v12 == v9)
  {
    v27 = [(NSArray *)inputTensors objectAtIndexedSubscript:0];
    v28 = MEMORY[0x1E696AEC0];
    v29 = [(MPSGraphOperation *)self name];
    v30 = [v28 stringWithFormat:@"%@/%@/depthwiseConvolution3DDataGradient/shapeOp", v10, v29];
    v19 = [WeakRetained shapeOfTensor:v27 name:v30];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    desc = self->super._desc;
    v32 = MEMORY[0x1E696AEC0];
    v24 = [(MPSGraphOperation *)self name];
    v25 = v36;
    v26 = [v32 stringWithFormat:@"%@/%@/depthwiseConvolution3DDataGradient", v10, v24];
    [v20 depthwiseConvolution3DDataGradientWithIncomingGradientTensor:v36 weightsTensor:v21 outputShapeTensor:v19 descriptor:desc name:v26];
  }

  else
  {
    v15 = [(NSArray *)inputTensors objectAtIndexedSubscript:1];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/convolutionTranspose2DDataGradient/shapeOp", v10, v17];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    v24 = [(MPSGraphOperation *)self name];
    v25 = v36;
    v26 = [v23 stringWithFormat:@"%@/%@/convolution3DWeightsGradient", v10, v24];
    [v20 depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor:v36 sourceTensor:v21 outputShapeTensor:v19 descriptor:v22 name:v26];
  }
  v33 = ;

  return v33;
}

@end