@interface MPSGraphSampleGridOp
- (MPSGraphSampleGridOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)corners paddingMode:(int64_t)self0 samplingMode:(unint64_t)self1 nearestRoundingMode:(unint64_t)self2 name:(id)self3;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSampleGridOp

- (MPSGraphSampleGridOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)corners paddingMode:(int64_t)self0 samplingMode:(unint64_t)self1 nearestRoundingMode:(unint64_t)self2 name:(id)self3
{
  self->_relativeCoordinates = coordinates;
  self->_alignCorners = relativeCoordinates;
  *(&self->_alignCorners + 1) = corners;
  self->_paddingMode = mode;
  self->_samplingMode = samplingMode;
  self->_nearestRoundingMode = roundingMode;
  self->_layout = layout;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors objectAtIndexedSubscript:0];

  if (v13 == tensorCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v16 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:0];
    v17 = MEMORY[0x1E696AEC0];
    name = [(MPSGraphOperation *)self name];
    v19 = [v17 stringWithFormat:@"%@/%@/sampleGridDataGradient/shapeOp", nameCopy, name];
    v20 = [WeakRetained shapeOfTensor:v16 name:v19];

    v21 = MEMORY[0x1E696AEC0];
    name2 = [(MPSGraphOperation *)self name];
    v23 = [v21 stringWithFormat:@"%@/%@/sampleGridDataGradient", nameCopy, name2];

    v24 = objc_loadWeakRetained(&self->super._graph);
    v25 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
    v14 = [v24 sampleGridDataGradientWithIncomingGradientTensor:gradientCopy coordinateTensor:v25 outputShapeTensor:v20 normalizeCoordinates:self->_relativeCoordinates relativeCoordinates:self->_alignCorners paddingMode:self->_paddingMode samplingMode:self->_samplingMode name:v23];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v36[38] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphSampleGridOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphSampleGrid.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SampleGridOp>(table, builder, __p, 0x61u, nameCopy);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *values;
  v13 = *(values + 1) - *values;
  if (v13 <= 8 || v13 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  paddingMode = self->_paddingMode;
  samplingMode = self->_samplingMode;
  layout = self->_layout;
  v16 = mlir::mps::NearestRoundingModeAttr::get(*builder, self->_nearestRoundingMode);
  v30 = v11;
  Context = mlir::Attribute::getContext(&v30);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SampleGridOp,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    v34 = 1283;
    v33[2] = "mps.sample_grid";
    v33[3] = 15;
    v32 = 259;
    llvm::operator+(v33, &v31, v35);
    llvm::report_fatal_error(v35, 1);
  }

  mlir::OperationState::OperationState(v36, v11, v18);
  mlir::mps::SampleGridOp::build(builder, v36, *v12, v12[1], v12[2], self->_relativeCoordinates, self->_alignCorners, *(&self->_alignCorners + 1), paddingMode, samplingMode, layout, v16);
  v20 = mlir::OpBuilder::create(builder, v36);
  v21 = *(*(v20 + 48) + 16);
  mlir::OperationState::~OperationState(v36);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::mps::SampleGridOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v27 = v22 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v27);

  return DefiningOp;
}

@end