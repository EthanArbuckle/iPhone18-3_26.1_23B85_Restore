@interface MPSGraphConvolution3DOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConvolution3DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphConvolution3DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphConvolutionOps.mm", __p);
  v11 = nameCopy;
  v31 = 260;
  v30[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v30);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x1F1u, 0);
  if (v11)
  {
    v15 = v11;
    uTF8String = [v11 UTF8String];
    v17 = strlen(uTF8String);
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
      memmove(__dst, uTF8String, v17);
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
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v13, &v26);
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
  v22 = mlir::Builder::getStringAttr(builder, v30);
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

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v35 = tensorCopy;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v12 = [inputTensors objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  inputTensors = self->super.super._inputTensors;
  if (v12 == tensorCopy)
  {
    v27 = [(NSArray *)inputTensors objectAtIndexedSubscript:0];
    v28 = MEMORY[0x1E696AEC0];
    name = [(MPSGraphOperation *)self name];
    v30 = [v28 stringWithFormat:@"%@/%@/convolution3DDataGradient/shapeOp", nameCopy, name];
    v19 = [WeakRetained shapeOfTensor:v27 name:v30];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    desc = self->super._desc;
    v32 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v25 = gradientCopy;
    v26 = [v32 stringWithFormat:@"%@/%@/convolution3DDataGradient", nameCopy, name2];
    [v20 convolution3DDataGradientWithIncomingGradientTensor:gradientCopy weightsTensor:v21 outputShapeTensor:v19 forwardConvolutionDescriptor:desc name:v26];
  }

  else
  {
    v15 = [(NSArray *)inputTensors objectAtIndexedSubscript:1];
    v16 = MEMORY[0x1E696AEC0];
    name3 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/convolution3DDataGradient/shapeOp", nameCopy, name3];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v25 = gradientCopy;
    v26 = [v23 stringWithFormat:@"%@/%@/convolution3DWeightsGradient", nameCopy, name2];
    [v20 convolution3DWeightsGradientWithIncomingGradientTensor:gradientCopy sourceTensor:v21 outputShapeTensor:v19 forwardConvolutionDescriptor:v22 name:v26];
  }
  v33 = ;

  return v33;
}

@end