@interface MPSGraphSliceOp
- (MPSGraphSliceOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(unint64_t)dimension start:(int64_t)start length:(int64_t)length name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSliceOp

- (MPSGraphSliceOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(unint64_t)dimension start:(int64_t)start length:(int64_t)length name:(id)name
{
  self->_dimensionIndex = dimension;
  self->_start = start;
  self->_length = length;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphSliceOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v12 = nameCopy;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v47);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x16Bu, 0);
  if (v12)
  {
    v16 = v12;
    uTF8String = [v12 UTF8String];
    v18 = strlen(uTF8String);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v46 = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    v46 = 9;
    v44 = 101;
    __dst = *"mps.slice";
    v20 = v45;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v14, &v40);
  v21 = v40.__r_.__value_.__r.__words[0];
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v40;
  }

  v22 = 1;
  HIBYTE(v48) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v47[0] = v21;
    v22 = 3;
  }

  LOBYTE(v48) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v47);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v24;
  Context = mlir::Attribute::getContext(&v37);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.slice";
    v41 = 9;
    v39 = 259;
    llvm::operator+(&v40, &v38, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v24, v27);
  mlir::mps::SliceOp::build(builder, v47, *v25, self->_dimensionIndex, self->_start, self->_length);
  v29 = mlir::OpBuilder::create(builder, v47);
  v30 = *(*(v29 + 48) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v34 = v31 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  dimensionIndex = self->_dimensionIndex;
  if (dimensionIndex < 0)
  {
    shape = [tensorCopy shape];
    dimensionIndex = self->_dimensionIndex + [shape count];
  }

  array = [MEMORY[0x1E695DF70] array];
  v32 = gradientCopy;
  array2 = [MEMORY[0x1E695DF70] array];
  v15 = 0;
  while (1)
  {
    shape2 = [tensorCopy shape];
    v17 = [shape2 count];

    if (v15 >= v17)
    {
      break;
    }

    if (dimensionIndex == v15)
    {
      shape3 = [tensorCopy shape];
      v19 = [shape3 objectAtIndexedSubscript:dimensionIndex];
      integerValue = [v19 integerValue];

      if (integerValue <= 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v21 = integerValue - self->_length;
      v22 = (integerValue & (self->_start >> 63)) + self->_start;
      v23 = v21 - v22;
      if (v22 < 0 || v23 < 0)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
      [array addObject:v24];

      v25 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
      [array2 addObject:v25];

      ++v15;
    }

    else
    {
      [array addObject:&unk_1F5B75B18];
      [array2 addObject:&unk_1F5B75B18];
      ++v15;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v27 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v29 = [v27 stringWithFormat:@"%@/%@/pad", nameCopy, name];
  v30 = [WeakRetained padTensor:v32 withPaddingMode:0 leftPadding:array rightPadding:array2 constantValue:v29 name:0.0];

  return v30;
}

@end