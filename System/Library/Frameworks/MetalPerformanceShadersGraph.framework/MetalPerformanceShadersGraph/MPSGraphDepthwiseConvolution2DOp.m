@interface MPSGraphDepthwiseConvolution2DOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphDepthwiseConvolution2DOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v63 = *MEMORY[0x1E69E9840];
  v43 = a7;
  mpsFileLoc("[MPSGraphDepthwiseConvolution2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm", __p);
  v11 = v43;
  v62 = 260;
  v61[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v61);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xA8u, 0);
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

    v60[2] = v17;
    if (v17)
    {
      memmove(__dst, v16, v17);
    }

    v19 = &__dst[v18];
  }

  else
  {
    v60[2] = 21;
    qmemcpy(__dst, "mps.depthwise_conv_2d", sizeof(__dst));
    v19 = v60;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &v56);
  v20 = v56.__r_.__value_.__r.__words[0];
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v56;
  }

  v21 = 1;
  HIBYTE(v62) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v61[0] = v20;
    v21 = 3;
  }

  LOBYTE(v62) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v61);
  v49 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((v60[2] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v60[2] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  v48 = a3;
  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v24 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc strideInX];
  v25 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc strideInY];
  v26 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dilationRateInX];
  v47 = v11;
  v27 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dilationRateInY];
  v28 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingLeft];
  v29 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingRight];
  v45 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingTop];
  v46 = v28;
  v30 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingBottom];
  v44 = v27;
  v31 = v24;
  v32 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingStyle];
  v33 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dataLayout];
  v34 = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc weightsLayout];
  v53 = v49;
  Context = mlir::Attribute::getContext(&v53);
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id, Context);
  if ((v37 & 1) == 0)
  {
    v58 = 1283;
    v56.__r_.__value_.__r.__words[2] = "mps.depthwise_conv_2d";
    v57 = 21;
    v55 = 259;
    llvm::operator+(&v56, &v54, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v61, v49, v36);
  mlir::mps::DepthwiseConv2DOp::build(v48, v61, *v23, v23[1], v31, v25, v26, v44, v46, v29, v45, v30, v32, v33, v34);
  v38 = mlir::OpBuilder::create(v48, v61);
  v39 = *(*(v38 + 48) + 16);
  mlir::OperationState::~OperationState(v61);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v50 = v40 - 16;
  mlir::Value::getDefiningOp(&v50);
  DefiningOp = mlir::Value::getDefiningOp(&v50);

  return DefiningOp;
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
    v30 = [v28 stringWithFormat:@"%@/%@/depthwiseConvolution2DDataGradient/shapeOp", v10, v29];
    v19 = [WeakRetained shapeOfTensor:v27 name:v30];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    desc = self->super._desc;
    v32 = MEMORY[0x1E696AEC0];
    v24 = [(MPSGraphOperation *)self name];
    v25 = v36;
    v26 = [v32 stringWithFormat:@"%@/%@/depthwiseConvolution2DDataGradient", v10, v24];
    [v20 depthwiseConvolution2DDataGradientWithIncomingGradientTensor:v36 weightsTensor:v21 outputShapeTensor:v19 descriptor:desc name:v26];
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
    v26 = [v23 stringWithFormat:@"%@/%@/convolution2DWeightsGradient", v10, v24];
    [v20 depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:v36 sourceTensor:v21 outputShapeTensor:v19 descriptor:v22 name:v26];
  }
  v33 = ;

  return v33;
}

@end