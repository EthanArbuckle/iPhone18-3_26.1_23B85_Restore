@interface MPSGraphSampleGridDataGradientOp
- (MPSGraphSampleGridDataGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 normalizeCoordinates:(BOOL)a6 relativeCoordinates:(BOOL)a7 paddingMode:(int64_t)a8 samplingMode:(unint64_t)a9 name:(id)a10;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphSampleGridDataGradientOp

- (MPSGraphSampleGridDataGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 normalizeCoordinates:(BOOL)a6 relativeCoordinates:(BOOL)a7 paddingMode:(int64_t)a8 samplingMode:(unint64_t)a9 name:(id)a10
{
  if (a8 == 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a8;
  }

  self->_relativeCoordinates = a6;
  *(&self->_relativeCoordinates + 1) = a7;
  self->_paddingMode = v10;
  self->_samplingMode = a9;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a10];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v37[38] = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphSampleGridDataGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphSampleGrid.mm", __p);
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SampleGridOp>(a4, a3, __p, 0x99u, v11);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *a5;
  v13 = *(a5 + 1);
  v15 = v13 - *a5;
  if (v15 == 16 || v13 == v14 || v15 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  paddingMode = self->_paddingMode;
  samplingMode = self->_samplingMode;
  v31 = v12;
  Context = mlir::Attribute::getContext(&v31);
  v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SampleGridDataGradientOp,void>::id, Context);
  if ((v22 & 1) == 0)
  {
    v35 = 1283;
    v34[2] = "mps.sample_grid_data_gradient";
    v34[3] = 29;
    v33 = 259;
    llvm::operator+(v34, &v32, v36);
    llvm::report_fatal_error(v36, 1);
  }

  mlir::OperationState::OperationState(v37, v12, v21);
  mlir::mps::SampleGridDataGradientOp::build(a3, v37, *v14, v14[1], v14[2], self->_relativeCoordinates, *(&self->_relativeCoordinates + 1), paddingMode, samplingMode);
  v23 = mlir::OpBuilder::create(a3, v37);
  v24 = *(*(v23 + 48) + 16);
  mlir::OperationState::~OperationState(v37);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::mps::SampleGridDataGradientOp,void>::id)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v28 = v25 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v28);

  return DefiningOp;
}

@end