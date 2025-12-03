@interface MPSGraphNonMaximumSuppressionOp
- (MPSGraphNonMaximumSuppressionOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies iouThreshold:(float)threshold scoreThreshold:(float)scoreThreshold perClassSuppression:(BOOL)suppression coordinateMode:(unint64_t)mode name:(id)self0;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphNonMaximumSuppressionOp

- (MPSGraphNonMaximumSuppressionOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies iouThreshold:(float)threshold scoreThreshold:(float)scoreThreshold perClassSuppression:(BOOL)suppression coordinateMode:(unint64_t)mode name:(id)self0
{
  self->_scoreThreshold = threshold;
  *&self->_perClassSuppression = scoreThreshold;
  *(&self->_perClassSuppression + 4) = suppression;
  self->_coordinateMode = mode;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v38[38] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphNonMaximumSuppressionOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphNonMaximumSuppressionOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SampleGridOp>(table, builder, __p, 0x3Eu, nameCopy);
  if (v31 < 0)
  {
    operator delete(__p[0]);
    v12 = *values;
    v13 = *(values + 1);
    v14 = v13 - *values;
    if (v14 == 32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *values;
    v13 = *(values + 1);
    v14 = v13 - *values;
    if (v14 == 32)
    {
LABEL_3:
      v15 = 0;
      v16 = 3;
      v17 = 2;
      goto LABEL_8;
    }
  }

  if (v13 == v12 || v14 <= 0x1F)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v15 = v12[2];
  v16 = 4;
  v17 = 3;
LABEL_8:
  v18 = v12[v17];
  v19 = v12[v16];
  v20 = *v12;
  v21 = v12[1];
  coordinateMode = self->_coordinateMode;
  v32 = v11;
  Context = mlir::Attribute::getContext(&v32);
  v24 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NonMaximumSuppressionOp,void>::id, Context);
  if ((v25 & 1) == 0)
  {
    v36 = 1283;
    v35[2] = "mps.non_maximum_suppression";
    v35[3] = 27;
    v34 = 259;
    llvm::operator+(v35, &v33, v37);
    llvm::report_fatal_error(v37, 1);
  }

  mlir::OperationState::OperationState(v38, v11, v24);
  mlir::mps::NonMaximumSuppressionOp::build(builder, v38, v20, v21, v15, v18, v19, *(&self->_perClassSuppression + 4), coordinateMode, 0);
  v26 = mlir::OpBuilder::create(builder, v38);
  v27 = *(v26[6] + 16);
  mlir::OperationState::~OperationState(v38);
  if (v27 != &mlir::detail::TypeIDResolver<mlir::mps::NonMaximumSuppressionOp,void>::id)
  {
    v26 = 0;
  }

  return v26;
}

@end