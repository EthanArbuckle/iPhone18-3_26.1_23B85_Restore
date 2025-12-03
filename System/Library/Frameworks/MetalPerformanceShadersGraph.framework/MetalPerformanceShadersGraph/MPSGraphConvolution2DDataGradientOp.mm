@interface MPSGraphConvolution2DDataGradientOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConvolution2DDataGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v65 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphConvolution2DDataGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphConvolutionOps.mm", __p);
  v11 = nameCopy;
  v64 = 260;
  v63[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v63);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x15Bu, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  uTF8String = [v11 UTF8String];
  v16 = strlen(uTF8String);
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
    memmove(&__dst, uTF8String, v16);
  }

  *(&__dst + v18) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v17, &v58);
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
  v21 = mlir::Builder::getStringAttr(builder, v63);
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

  builderCopy = builder;
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  v49 = v11;
  v22 = *values;
  v23 = *(values + 1) - *values;
  if (v23 <= 8 || v23 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  groups = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc groups];
  strideInX = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc strideInX];
  strideInY = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc strideInY];
  dilationRateInX = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dilationRateInX];
  dilationRateInY = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dilationRateInY];
  paddingLeft = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingLeft];
  paddingRight = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingRight];
  v48 = paddingLeft;
  paddingTop = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingTop];
  v46 = dilationRateInY;
  paddingBottom = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingBottom];
  v32 = dilationRateInX;
  v45 = strideInY;
  paddingStyle = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc paddingStyle];
  dataLayout = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc dataLayout];
  weightsLayout = [(MPSGraphConvolution2DOpDescriptor *)self->super._desc weightsLayout];
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
  mlir::mps::Conv2DDataGradientOp::build(builderCopy, v63, *v22, v22[1], v22[2], groups, strideInX, v45, v32, v46, v48, paddingRight, paddingTop, paddingBottom, paddingStyle, dataLayout, weightsLayout);
  v39 = mlir::OpBuilder::create(builderCopy, v63);
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

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v30 = tensorCopy;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors objectAtIndexedSubscript:0];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
  if (v13 == tensorCopy)
    v20 = {;
    desc = self->super._desc;
    v28 = MEMORY[0x1E696AEC0];
    name = [(MPSGraphOperation *)self name];
    name3 = [v28 stringWithFormat:@"%@/%@/convolutionTranspose2DDataGradient", nameCopy, name];
    v26 = [WeakRetained convolution2DWithSourceTensor:gradientCopy weightsTensor:v20 descriptor:desc name:name3];
  }

  else
    v15 = {;
    v16 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v18 = [v16 stringWithFormat:@"%@/%@/convolutionTranspose2DDataGradient/shapeOp", nameCopy, name2];
    v19 = [WeakRetained shapeOfTensor:v15 name:v18];

    v20 = objc_loadWeakRetained(&self->super.super._graph);
    name = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    v22 = self->super._desc;
    v23 = MEMORY[0x1E696AEC0];
    name3 = [(MPSGraphOperation *)self name];
    v25 = [v23 stringWithFormat:@"%@/%@/convolutionTranspose2DWeightsGradient", nameCopy, name3];
    v26 = [v20 convolution2DWeightsGradientWithIncomingGradientTensor:name sourceTensor:gradientCopy outputShapeTensor:v19 forwardConvolutionDescriptor:v22 name:v25];

    WeakRetained = v19;
  }

  return v26;
}

@end