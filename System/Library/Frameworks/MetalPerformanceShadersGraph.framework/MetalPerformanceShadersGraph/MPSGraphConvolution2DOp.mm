@interface MPSGraphConvolution2DOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphConvolution2DOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v65 = *MEMORY[0x1E69E9840];
  v43 = a7;
  mpsFileLoc("[MPSGraphConvolution2DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphConvolutionOps.mm", __p);
  v11 = v43;
  v64 = 260;
  v63[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v63);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x118u, 0);
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

    v62 = v17;
    if (v17)
    {
      memmove(__dst, v16, v17);
    }

    v19 = &__dst[v18];
  }

  else
  {
    v62 = 11;
    qmemcpy(__dst, "mps.conv_2d", sizeof(__dst));
    v19 = v61;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &v57);
  v20 = v57.__r_.__value_.__r.__words[0];
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v57;
  }

  v21 = 1;
  HIBYTE(v64) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v63[0] = v20;
    v21 = 3;
  }

  LOBYTE(v64) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v63);
  v50 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v62 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  v49 = a3;
  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  v48 = v11;
  v23 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v24 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc groups];
  v25 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc strideInX];
  v26 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc strideInY];
  v27 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dilationRateInX];
  v28 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dilationRateInY];
  v29 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingLeft];
  v47 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingRight];
  v46 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingTop];
  v45 = v29;
  v30 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingBottom];
  v31 = v28;
  v44 = v27;
  v32 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingStyle];
  v33 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dataLayout];
  v34 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc weightsLayout];
  v54 = v50;
  Context = mlir::Attribute::getContext(&v54);
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, Context);
  if ((v37 & 1) == 0)
  {
    v59 = 1283;
    v57.__r_.__value_.__r.__words[2] = "mps.conv_2d";
    v58 = 11;
    v56 = 259;
    llvm::operator+(&v57, &v55, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v63, v50, v36);
  mlir::mps::Conv2DOp::build(v49, v63, *v23, v23[1], v24, v25, v26, v44, v31, v45, v47, v46, v30, v32, v33, v34);
  v38 = mlir::OpBuilder::create(v49, v63);
  v39 = *(*(v38 + 48) + 16);
  mlir::OperationState::~OperationState(v63);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v51 = v40 - 16;
  mlir::Value::getDefiningOp(&v51);
  DefiningOp = mlir::Value::getDefiningOp(&v51);

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
    v30 = [v28 stringWithFormat:@"%@/%@/convolutionTranspose2DDataGradient/shapeOp", v10, v29];
    v19 = [WeakRetained shapeOfTensor:v27 name:v30];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    desc = self->super._desc;
    v32 = MEMORY[0x1E696AEC0];
    v24 = [(MPSGraphOperation *)self name];
    v25 = v36;
    v26 = [v32 stringWithFormat:@"%@/%@/convolution2DDataGradient", v10, v24];
    [v20 convolution2DDataGradientWithIncomingGradientTensor:v36 weightsTensor:v21 outputShapeTensor:v19 forwardConvolutionDescriptor:desc name:v26];
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
    [v20 convolution2DWeightsGradientWithIncomingGradientTensor:v36 sourceTensor:v21 outputShapeTensor:v19 forwardConvolutionDescriptor:v22 name:v26];
  }
  v33 = ;

  return v33;
}

@end