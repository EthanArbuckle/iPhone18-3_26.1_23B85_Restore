@interface MPSGraphResizeOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphResizeOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v56 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphResizeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphResizeOps.mm", v42);
  v11 = nameCopy;
  v55 = 260;
  v54[0] = v42;
  StringAttr = mlir::Builder::getStringAttr(builder, v54);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xB4u, 0);
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

    v53 = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    v19 = &__dst + v18;
  }

  else
  {
    v53 = 10;
    v51 = 25978;
    __dst = *"mps.resize";
    v19 = v52;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v55) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v54[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v55) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v54);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v43 < 0)
  {
    operator delete(v42[0]);
    v25 = *values;
    v24 = *(values + 1);
    v26 = v24 - *values;
    v40 = v11;
    if (v26 == 32)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = *values;
    v24 = *(values + 1);
    v26 = v24 - *values;
    v40 = v11;
    if (v26 == 32)
    {
LABEL_18:
      v28 = v25[2];
      v27 = v25[3];
      goto LABEL_25;
    }
  }

  if (v24 == v25 || v26 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = 0;
  v28 = 0;
LABEL_25:
  mode = self->super._mode;
  v30 = mlir::mps::NearestRoundingModeAttr::get(*builder, self->super._nearestRoundingMode);
  v44 = v23;
  Context = mlir::Attribute::getContext(&v44);
  v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id, Context);
  if ((v33 & 1) == 0)
  {
    v49 = 1283;
    __p.__r_.__value_.__r.__words[2] = "mps.resize";
    v48 = 10;
    v46 = 259;
    llvm::operator+(&__p, &v45, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v54, v23, v32);
  mlir::mps::ResizeOp::build(builder, v54, *v25, v25[1], v28, v27, mode, self->super._centerResult, self->super._alignCorners, v30);
  v34 = mlir::OpBuilder::create(builder, v54);
  v35 = *(*(v34 + 48) + 16);
  mlir::OperationState::~OperationState(v54);
  if (v35 == &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  v41 = v36 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v41);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  if (index)
  {
    v13 = 0;
    goto LABEL_13;
  }

  if (!self->super._mode)
  {
    inputTensors = [(MPSGraphOperation *)self inputTensors];
    v20 = [inputTensors count];

    WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
    v17 = WeakRetained;
    if (v20 == 2)
    {
      v18 = [WeakRetained resizeNearestWithGradientTensor:gradientCopy input:tensorCopy nearestRoundingMode:self->super._nearestRoundingMode centerResult:self->super._centerResult alignCorners:self->super._alignCorners layout:self->super._layout name:nameCopy];
      goto LABEL_8;
    }

    inputTensors2 = [(MPSGraphOperation *)self inputTensors];
    v23 = [inputTensors2 objectAtIndexedSubscript:2];
    v24 = [v17 resizeNearestWithGradientTensor:gradientCopy input:tensorCopy scaleOffsetTensor:v23 nearestRoundingMode:self->super._nearestRoundingMode layout:self->super._layout name:nameCopy];
LABEL_11:
    v13 = v24;

    goto LABEL_12;
  }

  inputTensors3 = [(MPSGraphOperation *)self inputTensors];
  v15 = [inputTensors3 count];

  v16 = objc_loadWeakRetained(&self->super.super._graph);
  v17 = v16;
  if (v15 != 2)
  {
    inputTensors2 = [(MPSGraphOperation *)self inputTensors];
    v23 = [inputTensors2 objectAtIndexedSubscript:2];
    v24 = [v17 resizeWithGradientTensor:gradientCopy input:tensorCopy scaleOffsetTensor:v23 mode:self->super._mode layout:self->super._layout name:nameCopy];
    goto LABEL_11;
  }

  v18 = [v16 resizeWithGradientTensor:gradientCopy input:tensorCopy mode:self->super._mode centerResult:self->super._centerResult alignCorners:self->super._alignCorners layout:self->super._layout name:nameCopy];
LABEL_8:
  v13 = v18;
LABEL_12:

LABEL_13:

  return v13;
}

@end