@interface MPSGraphDepthwiseConvolution2DWeightsGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphDepthwiseConvolution2DWeightsGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v64 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphDepthwiseConvolution2DWeightsGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm", __p);
  v11 = nameCopy;
  v63 = 260;
  v62[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v62);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x12Cu, 0);
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

  HIBYTE(v61) = v16;
  if (v16)
  {
    memmove(&__dst, uTF8String, v16);
  }

  *(&__dst + v18) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v17, &v57);
  v19 = v57.__r_.__value_.__r.__words[0];
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v57;
  }

  v20 = 1;
  HIBYTE(v63) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v62[0] = v19;
    v20 = 3;
  }

  LOBYTE(v63) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v62);
  v50 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v61) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  builderCopy = builder;
  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *values;
  v23 = *(values + 1) - *values;
  if (v23 <= 8 || v23 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  strideInX = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc strideInX];
  strideInY = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc strideInY];
  dilationRateInX = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dilationRateInX];
  v48 = v11;
  dilationRateInY = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dilationRateInY];
  paddingLeft = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingLeft];
  paddingRight = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingRight];
  paddingTop = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingTop];
  v46 = paddingRight;
  v47 = paddingLeft;
  paddingBottom = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingBottom];
  v31 = dilationRateInY;
  v32 = strideInX;
  paddingStyle = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc paddingStyle];
  dataLayout = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc dataLayout];
  weightsLayout = [(MPSGraphDepthwiseConvolution2DOpDescriptor *)self->super._desc weightsLayout];
  v54 = v50;
  Context = mlir::Attribute::getContext(&v54);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DWeightsGradientOp,void>::id, Context);
  if ((v38 & 1) == 0)
  {
    v59 = 1283;
    v57.__r_.__value_.__r.__words[2] = "mps.depthwise_conv_2d_weights_gradient";
    v58 = 38;
    v56 = 259;
    llvm::operator+(&v57, &v55, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v62, v50, v37);
  mlir::mps::DepthwiseConv2DWeightsGradientOp::build(builderCopy, v62, *v22, v22[1], v22[2], v32, strideInY, dilationRateInX, v31, v47, v46, paddingTop, paddingBottom, paddingStyle, dataLayout, weightsLayout);
  v39 = mlir::OpBuilder::create(builderCopy, v62);
  v40 = *(*(v39 + 48) + 16);
  mlir::OperationState::~OperationState(v62);
  if (v40 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DWeightsGradientOp,void>::id)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  v51 = v41 - 16;
  mlir::Value::getDefiningOp(&v51);
  DefiningOp = mlir::Value::getDefiningOp(&v51);

  return DefiningOp;
}

@end