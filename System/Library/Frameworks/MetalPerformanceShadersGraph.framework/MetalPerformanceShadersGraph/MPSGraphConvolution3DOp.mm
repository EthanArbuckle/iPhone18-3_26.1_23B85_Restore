@interface MPSGraphConvolution3DOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphConvolution3DOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a7;
  mpsFileLoc("[MPSGraphConvolution3DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphConvolutionOps.mm", __p);
  v11 = v10;
  v31 = 260;
  v30[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v30);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x1F1u, 0);
  if (v11)
  {
    v15 = v11;
    v16 = [v11 UTF8String];
    v17 = strlen(v16);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    v29 = v17;
    if (v17)
    {
      memmove(__dst, v16, v17);
    }

    v19 = &__dst[v18];
  }

  else
  {
    v29 = 11;
    qmemcpy(__dst, "mps.conv_3d", sizeof(__dst));
    v19 = v28;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &v26);
  v20 = v26.__r_.__value_.__r.__words[0];
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v26;
  }

  v21 = 1;
  HIBYTE(v31) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v30[0] = v20;
    v21 = 3;
  }

  LOBYTE(v31) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v30);
  mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  [(MPSGraphConvolution3DOpDescriptor *)self->super._desc strideInX];
  [(MPSGraphConvolution3DOpDescriptor *)self->super._desc strideInY];
  [(MPSGraphConvolution3DOpDescriptor *)self->super._desc strideInZ];
  operator new();
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
    v30 = [v28 stringWithFormat:@"%@/%@/convolution3DDataGradient/shapeOp", v10, v29];
    v19 = [WeakRetained shapeOfTensor:v27 name:v30];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    desc = self->super._desc;
    v32 = MEMORY[0x1E696AEC0];
    v24 = [(MPSGraphOperation *)self name];
    v25 = v36;
    v26 = [v32 stringWithFormat:@"%@/%@/convolution3DDataGradient", v10, v24];
    [v20 convolution3DDataGradientWithIncomingGradientTensor:v36 weightsTensor:v21 outputShapeTensor:v19 forwardConvolutionDescriptor:desc name:v26];
  }

  else
  {
    v15 = [(NSArray *)inputTensors objectAtIndexedSubscript:1];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/convolution3DDataGradient/shapeOp", v10, v17];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    v24 = [(MPSGraphOperation *)self name];
    v25 = v36;
    v26 = [v23 stringWithFormat:@"%@/%@/convolution3DWeightsGradient", v10, v24];
    [v20 convolution3DWeightsGradientWithIncomingGradientTensor:v36 sourceTensor:v21 outputShapeTensor:v19 forwardConvolutionDescriptor:v22 name:v26];
  }
  v33 = ;

  return v33;
}

@end