@interface MPSGraphLocalConvolutionOp
- (MPSGraphLocalConvolutionOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dataLayout:(unint64_t)a6 kernelShape:(id)a7 dilationRateInX:(unint64_t)a8 dilationRateInY:(unint64_t)a9 name:(id)a10;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphLocalConvolutionOp

- (MPSGraphLocalConvolutionOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dataLayout:(unint64_t)a6 kernelShape:(id)a7 dilationRateInX:(unint64_t)a8 dilationRateInY:(unint64_t)a9 name:(id)a10
{
  v11.receiver = self;
  v11.super_class = MPSGraphLocalConvolutionOp;
  return [(MPSGraphLocalConvolutionBase *)&v11 initWithGraph:a3 inputTensors:a4 controlDependencies:a5 dataLayout:a6 kernelShape:a7 dilationRateInX:a8 dilationRateInY:a9 name:a10];
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MPSGraphOperation *)self inputTensors];
  v13 = [v12 objectAtIndexedSubscript:0];

  v14 = MEMORY[0x1E696AEC0];
  [(MPSGraphOperation *)self name];
  if (v13 == v9)
    v19 = {;
    v16 = [v14 stringWithFormat:@"%@/%@/LocalConvolutionDataGradient", v11, v19];

    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    v18 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
    [WeakRetained localConvolutionDataGradientWithIncomingGradientTensor:v10 weightTensor:v18 dataLayout:self->super._dataLayout kernelShape:self->super._kernelShape dilationRateInX:self->super._dilationRateInX dilationRateInY:self->super._dilationRateInY name:v16];
  }

  else
    v15 = {;
    v16 = [v14 stringWithFormat:@"%@/%@/LocalConvolutionDataGradient", v11, v15];

    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    v18 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
    [WeakRetained localConvolutionWeightGradientWithIncomingGradientTensor:v10 sourceTensor:v18 dataLayout:self->super._dataLayout kernelShape:self->super._kernelShape dilationRateInX:self->super._dilationRateInX dilationRateInY:self->super._dilationRateInY name:v16];
  }
  v20 = ;

  return v20;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v41[38] = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphLocalConvolutionOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphLocalConvolution.mm", __p);
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::LocalConvolutionOp>(a4, a3, __p, 0x8Cu, v11);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  KernelSizeFromShape = getKernelSizeFromShape(self->super._kernelShape, a3);
  dilationRateInX = self->super._dilationRateInX;
  dilationRateInY = self->super._dilationRateInY;
  v41[0] = 2;
  IntegerType = mlir::Builder::getIntegerType(a3, 64, 0);
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
  v21 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = v20;
  dataLayout = self->super._dataLayout;
  v35 = v12;
  Context = mlir::Attribute::getContext(&v35);
  v25 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionOp,void>::id, Context);
  if ((v26 & 1) == 0)
  {
    v39 = 1283;
    v38[2] = "mps.local_convolution";
    v38[3] = 21;
    v37 = 259;
    llvm::operator+(v38, &v36, v40);
    llvm::report_fatal_error(v40, 1);
  }

  mlir::OperationState::OperationState(v41, v12, v25);
  mlir::mps::LocalConvolutionOp::build(a3, v41, *v21, v21[1], dataLayout, KernelSizeFromShape, v22);
  v27 = mlir::OpBuilder::create(a3, v41);
  v28 = *(*(v27 + 48) + 16);
  mlir::OperationState::~OperationState(v41);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionOp,void>::id)
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