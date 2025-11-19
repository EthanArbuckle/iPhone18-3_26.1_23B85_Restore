@interface MPSGraphCostVolumeOp
- (MPSGraphCostVolumeOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 layout:(unint64_t)a6 normalizeCoordinates:(BOOL)a7 relativeCoordinates:(BOOL)a8 alignCorners:(BOOL)a9 coordinateIs1DInWidth:(BOOL)a10 paddingMode:(int64_t)a11 samplingMode:(unint64_t)a12 nearestRoundingMode:(unint64_t)a13 similarityType:(unint64_t)a14 windowWidth:(unint64_t)a15 windowHeight:(unint64_t)a16 name:(id)a17;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphCostVolumeOp

- (MPSGraphCostVolumeOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 layout:(unint64_t)a6 normalizeCoordinates:(BOOL)a7 relativeCoordinates:(BOOL)a8 alignCorners:(BOOL)a9 coordinateIs1DInWidth:(BOOL)a10 paddingMode:(int64_t)a11 samplingMode:(unint64_t)a12 nearestRoundingMode:(unint64_t)a13 similarityType:(unint64_t)a14 windowWidth:(unint64_t)a15 windowHeight:(unint64_t)a16 name:(id)a17
{
  self->_relativeCoordinates = a7;
  self->_alignCorners = a8;
  self->_coordinateIs1DInWidth = a9;
  *(&self->_coordinateIs1DInWidth + 1) = a10;
  self->_paddingMode = a11;
  self->_samplingMode = a12;
  self->_nearestRoundingMode = a13;
  self->_layout = a6;
  self->_similarity = a14;
  self->_windowWidth = a15;
  self->_windowHeight = a16;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a17];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = a7;
  mpsFileLoc("[MPSGraphCostVolumeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphCostVolumeOps.mm", __p);
  v11 = v36;
  v52 = 260;
  v51[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v51);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x51u, 0);
  if (v11)
  {
    v15 = v11;
    v16 = [v11 UTF8String];
    v17 = strlen(v16);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    v50 = v17;
    if (v17)
    {
      memmove(__dst, v16, v17);
    }

    v19 = &__dst[v18];
  }

  else
  {
    v50 = 15;
    qmemcpy(__dst, "mps.cost_volume", sizeof(__dst));
    v19 = &v49;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &v45);
  v20 = v45.__r_.__value_.__r.__words[0];
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v45;
  }

  v21 = 1;
  HIBYTE(v52) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v51[0] = v20;
    v21 = 3;
  }

  LOBYTE(v52) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v51);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v50 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  v37 = v11;
  v24 = *a5;
  v25 = *(a5 + 1) - *a5;
  if (v25 <= 8 || v25 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  similarity = self->_similarity;
  layout = self->_layout;
  v27 = mlir::BoolAttr::get(*a3, *(&self->_coordinateIs1DInWidth + 1));
  v42 = v23;
  Context = mlir::Attribute::getContext(&v42);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CostVolumeOp,void>::id, Context);
  if ((v30 & 1) == 0)
  {
    v47 = 1283;
    v45.__r_.__value_.__r.__words[2] = "mps.cost_volume";
    v46 = 15;
    v44 = 259;
    llvm::operator+(&v45, &v43, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v51, v23, v29);
  mlir::mps::CostVolumeOp::build(a3, v51, *v24, v24[1], v24[2], self->_relativeCoordinates, self->_alignCorners, self->_windowWidth, self->_windowHeight, similarity, layout, v27);
  v31 = mlir::OpBuilder::create(a3, v51);
  v32 = *(*(v31 + 48) + 16);
  mlir::OperationState::~OperationState(v51);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::mps::CostVolumeOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v39 = v33 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v39);

  return DefiningOp;
}

@end