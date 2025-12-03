@interface MPSGraphLocalConvolutionWeightGradientOp
- (MPSGraphLocalConvolutionWeightGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)self0;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphLocalConvolutionWeightGradientOp

- (MPSGraphLocalConvolutionWeightGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataLayout:(unint64_t)layout kernelShape:(id)shape dilationRateInX:(unint64_t)x dilationRateInY:(unint64_t)y name:(id)self0
{
  v11.receiver = self;
  v11.super_class = MPSGraphLocalConvolutionWeightGradientOp;
  return [(MPSGraphLocalConvolutionBase *)&v11 initWithGraph:graph inputTensors:tensors controlDependencies:dependencies dataLayout:layout kernelShape:shape dilationRateInX:x dilationRateInY:y name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v41[38] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphLocalConvolutionWeightGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphLocalConvolution.mm", __p);
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::LocalConvolutionOp>(table, builder, __p, 0xF1u, nameCopy);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  KernelSizeFromShape = getKernelSizeFromShape(self->super._kernelShape, builder);
  dilationRateInX = self->super._dilationRateInX;
  dilationRateInY = self->super._dilationRateInY;
  v41[0] = 2;
  IntegerType = mlir::Builder::getIntegerType(builder, 64, 0);
  v17 = mlir::RankedTensorType::get(v41, 1, IntegerType, 0);
  if (v17)
  {
    v18 = v17;
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v17 = v18;
  }

  else
  {
    v19 = 0;
  }

  v41[0] = dilationRateInY;
  v41[1] = dilationRateInX;
  v20 = mlir::DenseElementsAttr::getFromRawBuffer(v17, v19, v41, 16, 8, 1, 0);
  v21 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = v20;
  dataLayout = self->super._dataLayout;
  v35 = v12;
  Context = mlir::Attribute::getContext(&v35);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionWeightGradientOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    v39 = 1283;
    v38[2] = "mps.local_convolution_weight_gradient";
    v38[3] = 37;
    v37 = 259;
    llvm::operator+(v38, &v36, v40);
    llvm::report_fatal_error(v40, 1);
  }

  mlir::OperationState::OperationState(v41, v12, v25);
  mlir::mps::LocalConvolutionWeightGradientOp::build(builder, v41, *v21, v21[1], dataLayout, KernelSizeFromShape, v22);
  v27 = mlir::OpBuilder::create(builder, v41);
  v28 = *(*(v27 + 48) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionWeightGradientOp,void>::id)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v32 = v29 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v32);

  return DefiningOp;
}

@end