@interface MPSGraphNonMaximumSuppressionOp
- (MPSGraphNonMaximumSuppressionOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 iouThreshold:(float)a6 scoreThreshold:(float)a7 perClassSuppression:(BOOL)a8 coordinateMode:(unint64_t)a9 name:(id)a10;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphNonMaximumSuppressionOp

- (MPSGraphNonMaximumSuppressionOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 iouThreshold:(float)a6 scoreThreshold:(float)a7 perClassSuppression:(BOOL)a8 coordinateMode:(unint64_t)a9 name:(id)a10
{
  self->_scoreThreshold = a6;
  *&self->_perClassSuppression = a7;
  *(&self->_perClassSuppression + 4) = a8;
  self->_coordinateMode = a9;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a10];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v38[38] = *MEMORY[0x1E69E9840];
  v29 = a7;
  mpsFileLoc("[MPSGraphNonMaximumSuppressionOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphNonMaximumSuppressionOps.mm", __p);
  v11 = MPSSymbolTable::getLocationByInsertingOp<mlir::mps::SampleGridOp>(a4, a3, __p, 0x3Eu, v29);
  if (v31 < 0)
  {
    operator delete(__p[0]);
    v12 = *a5;
    v13 = *(a5 + 1);
    v14 = v13 - *a5;
    if (v14 == 32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *a5;
    v13 = *(a5 + 1);
    v14 = v13 - *a5;
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
  mlir::mps::NonMaximumSuppressionOp::build(a3, v38, v20, v21, v15, v18, v19, *(&self->_perClassSuppression + 4), coordinateMode, 0);
  v26 = mlir::OpBuilder::create(a3, v38);
  v27 = *(v26[6] + 16);
  mlir::OperationState::~OperationState(v38);
  if (v27 != &mlir::detail::TypeIDResolver<mlir::mps::NonMaximumSuppressionOp,void>::id)
  {
    v26 = 0;
  }

  return v26;
}

@end