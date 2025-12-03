@interface MPSGraphSampleGridDataGradientOp
- (MPSGraphSampleGridDataGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates paddingMode:(int64_t)mode samplingMode:(unint64_t)samplingMode name:(id)self0;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSampleGridDataGradientOp

- (MPSGraphSampleGridDataGradientOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates paddingMode:(int64_t)mode samplingMode:(unint64_t)samplingMode name:(id)self0
{
  if (mode == 4)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  self->_relativeCoordinates = coordinates;
  *(&self->_relativeCoordinates + 1) = relativeCoordinates;
  self->_paddingMode = modeCopy;
  self->_samplingMode = samplingMode;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v37[38] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphSampleGridDataGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphSampleGrid.mm", __p);
  v12 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SampleGridOp>(table, builder, __p, 0x99u, nameCopy);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *values;
  v13 = *(values + 1);
  v15 = v13 - *values;
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
  mlir::mps::SampleGridDataGradientOp::build(builder, v37, *v14, v14[1], v14[2], self->_relativeCoordinates, *(&self->_relativeCoordinates + 1), paddingMode, samplingMode);
  v23 = mlir::OpBuilder::create(builder, v37);
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