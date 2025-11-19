@interface MPSGraphConvolution2DDataGradientOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphConvolution2DDataGradientOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v65 = *MEMORY[0x1E69E9840];
  v44 = a7;
  mpsFileLoc("[MPSGraphConvolution2DDataGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphConvolutionOps.mm", __p);
  v11 = v44;
  v64 = 260;
  v63[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v63);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x15Bu, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  v15 = [v11 UTF8String];
  v16 = strlen(v15);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  v62 = v16;
  if (v16)
  {
    memmove(&__dst, v15, v16);
  }

  *(&__dst + v18) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v17, &v58);
  v19 = v58.__r_.__value_.__r.__words[0];
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v58;
  }

  v20 = 1;
  HIBYTE(v64) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v63[0] = v19;
    v20 = 3;
  }

  LOBYTE(v64) = v20;
  v21 = mlir::Builder::getStringAttr(a3, v63);
  v51 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v62 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  v50 = a3;
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  v49 = v11;
  v22 = *a5;
  v23 = *(a5 + 1) - *a5;
  if (v23 <= 8 || v23 == 16)
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
  v48 = v29;
  v30 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingTop];
  v46 = v28;
  v31 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingBottom];
  v32 = v27;
  v45 = v26;
  v33 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingStyle];
  v34 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dataLayout];
  v35 = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc weightsLayout];
  v55 = v51;
  Context = mlir::Attribute::getContext(&v55);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id, Context);
  if ((v38 & 1) == 0)
  {
    v60 = 1283;
    v58.__r_.__value_.__r.__words[2] = "mps.conv_2d_data_gradient";
    v59 = 25;
    v57 = 259;
    llvm::operator+(&v58, &v56, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v63, v51, v37);
  mlir::mps::Conv2DDataGradientOp::build(v50, v63, *v22, v22[1], v22[2], v24, v25, v45, v32, v46, v48, v47, v30, v31, v33, v34, v35);
  v39 = mlir::OpBuilder::create(v50, v63);
  v40 = *(*(v39 + 48) + 16);
  mlir::OperationState::~OperationState(v63);
  if (v40 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DDataGradientOp,void>::id)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  v52 = v41 - 16;
  mlir::Value::getDefiningOp(&v52);
  DefiningOp = mlir::Value::getDefiningOp(&v52);

  return DefiningOp;
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
    v24 = [v28 stringWithFormat:@"%@/%@/convolutionTranspose2DDataGradient", v11, v21];
    v26 = [WeakRetained convolution2DWithSourceTensor:v10 weightsTensor:v20 descriptor:desc name:v24];
  }

  else
    v15 = {;
    v16 = MEMORY[0x1E696AEC0];
    v17 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/convolutionTranspose2DDataGradient/shapeOp", v11, v17];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    v21 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    v24 = [(MPSGraphOperation *)self name];
    v25 = [v23 stringWithFormat:@"%@/%@/convolutionTranspose2DWeightsGradient", v11, v24];
    v26 = [v20 convolution2DWeightsGradientWithIncomingGradientTensor:v21 sourceTensor:v10 outputShapeTensor:v19 forwardConvolutionDescriptor:v22 name:v25];

    WeakRetained = v19;
  }

  return v26;
}

@end