@interface MPSGraphSampleGridOp
- (MPSGraphSampleGridOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 layout:(unint64_t)a6 normalizeCoordinates:(BOOL)a7 relativeCoordinates:(BOOL)a8 alignCorners:(BOOL)a9 paddingMode:(int64_t)a10 samplingMode:(unint64_t)a11 nearestRoundingMode:(unint64_t)a12 name:(id)a13;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphSampleGridOp

- (MPSGraphSampleGridOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 layout:(unint64_t)a6 normalizeCoordinates:(BOOL)a7 relativeCoordinates:(BOOL)a8 alignCorners:(BOOL)a9 paddingMode:(int64_t)a10 samplingMode:(unint64_t)a11 nearestRoundingMode:(unint64_t)a12 name:(id)a13
{
  self->_relativeCoordinates = a7;
  self->_alignCorners = a8;
  *(&self->_alignCorners + 1) = a9;
  self->_paddingMode = a10;
  self->_samplingMode = a11;
  self->_nearestRoundingMode = a12;
  self->_layout = a6;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a13];
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MPSGraphOperation *)self inputTensors];
  v13 = [v12 objectAtIndexedSubscript:0];

  if (v13 == v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v16 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:0];
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(MPSGraphOperation *)self name];
    v19 = [v17 stringWithFormat:@"%@/%@/sampleGridDataGradient/shapeOp", v11, v18];
    v20 = [WeakRetained shapeOfTensor:v16 name:v19];

    v21 = MEMORY[0x1E696AEC0];
    v22 = [(MPSGraphOperation *)self name];
    v23 = [v21 stringWithFormat:@"%@/%@/sampleGridDataGradient", v11, v22];

    v24 = objc_loadWeakRetained(&self->super._graph);
    v25 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
    v14 = [v24 sampleGridDataGradientWithIncomingGradientTensor:v10 coordinateTensor:v25 outputShapeTensor:v20 normalizeCoordinates:self->_relativeCoordinates relativeCoordinates:self->_alignCorners paddingMode:self->_paddingMode samplingMode:self->_samplingMode name:v23];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v36[38] = *MEMORY[0x1E69E9840];
  v26 = a7;
  mpsFileLoc("[MPSGraphSampleGridOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphSampleGrid.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SampleGridOp>(a4, a3, __p, 0x61u, v26);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *a5;
  v13 = *(a5 + 1) - *a5;
  if (v13 <= 8 || v13 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  paddingMode = self->_paddingMode;
  samplingMode = self->_samplingMode;
  layout = self->_layout;
  v16 = mlir::mps::NearestRoundingModeAttr::get(*a3, self->_nearestRoundingMode);
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
  mlir::mps::SampleGridOp::build(a3, v36, *v12, v12[1], v12[2], self->_relativeCoordinates, self->_alignCorners, *(&self->_alignCorners + 1), paddingMode, samplingMode, layout, v16);
  v20 = mlir::OpBuilder::create(a3, v36);
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