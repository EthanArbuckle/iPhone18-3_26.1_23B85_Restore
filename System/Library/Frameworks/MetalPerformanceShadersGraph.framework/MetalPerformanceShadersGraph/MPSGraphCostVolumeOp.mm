@interface MPSGraphCostVolumeOp
- (MPSGraphCostVolumeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)corners coordinateIs1DInWidth:(BOOL)self0 paddingMode:(int64_t)self1 samplingMode:(unint64_t)self2 nearestRoundingMode:(unint64_t)self3 similarityType:(unint64_t)self4 windowWidth:(unint64_t)self5 windowHeight:(unint64_t)self6 name:(id)self7;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCostVolumeOp

- (MPSGraphCostVolumeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies layout:(unint64_t)layout normalizeCoordinates:(BOOL)coordinates relativeCoordinates:(BOOL)relativeCoordinates alignCorners:(BOOL)corners coordinateIs1DInWidth:(BOOL)self0 paddingMode:(int64_t)self1 samplingMode:(unint64_t)self2 nearestRoundingMode:(unint64_t)self3 similarityType:(unint64_t)self4 windowWidth:(unint64_t)self5 windowHeight:(unint64_t)self6 name:(id)self7
{
  self->_relativeCoordinates = coordinates;
  self->_alignCorners = relativeCoordinates;
  self->_coordinateIs1DInWidth = corners;
  *(&self->_coordinateIs1DInWidth + 1) = width;
  self->_paddingMode = mode;
  self->_samplingMode = samplingMode;
  self->_nearestRoundingMode = roundingMode;
  self->_layout = layout;
  self->_similarity = type;
  self->_windowWidth = windowWidth;
  self->_windowHeight = height;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v53 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphCostVolumeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphCostVolumeOps.mm", __p);
  v11 = nameCopy;
  v52 = 260;
  v51[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v51);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x51u, 0);
  if (v11)
  {
    v15 = v11;
    uTF8String = [v11 UTF8String];
    v17 = strlen(uTF8String);
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
      memmove(__dst, uTF8String, v17);
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
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v13, &v45);
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
  v22 = mlir::Builder::getStringAttr(builder, v51);
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
  v24 = *values;
  v25 = *(values + 1) - *values;
  if (v25 <= 8 || v25 == 16)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  similarity = self->_similarity;
  layout = self->_layout;
  v27 = mlir::BoolAttr::get(*builder, *(&self->_coordinateIs1DInWidth + 1));
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
  mlir::mps::CostVolumeOp::build(builder, v51, *v24, v24[1], v24[2], self->_relativeCoordinates, self->_alignCorners, self->_windowWidth, self->_windowHeight, similarity, layout, v27);
  v31 = mlir::OpBuilder::create(builder, v51);
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