@interface MPSGraphConcatOp
- (MPSGraphConcatOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(int64_t)dimension interleave:(BOOL)interleave name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphConcatOp

- (MPSGraphConcatOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dimension:(int64_t)dimension interleave:(BOOL)interleave name:(id)name
{
  self->_dimensionIndex = dimension;
  self->_interleave = interleave;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphConcatOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", v27);
  v11 = nameCopy;
  v35 = 260;
  v34[0] = v27;
  StringAttr = mlir::Builder::getStringAttr(builder, v34);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x2E9u, 0);
  if (v11)
  {
    uTF8String = [v11 UTF8String];
    v16 = strlen(uTF8String);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v33 = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    v18 = &__dst + v17;
  }

  else
  {
    v33 = 10;
    v31 = 29793;
    __dst = *"mps.concat";
    v18 = v32;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v20 = 1;
  HIBYTE(v35) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v34[0] = p_p;
    v20 = 3;
  }

  LOBYTE(v35) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v34);
  v22 = mlir::NameLoc::get(v21, v14);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    operator delete(__dst);

    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v27[0]);
    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v33 < 0)
  {
    goto LABEL_19;
  }

LABEL_16:

  if (v28 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v23 = *(values + 1);
  v34[0] = *(v23 - 8);
  *(values + 1) = v23 - 8;
  __dst = (mlir::OpBuilder::create<mlir::mps::ConcatOp,std::vector<mlir::Value> &,mlir::Value&,BOOL &>(builder, v22, values, v34, &self->_interleave) - 16);
  DefiningOp = mlir::Value::getDefiningOp(&__dst);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  v13 = [inputTensors count] - 1;

  if (v13 != index)
  {
    inputTensors2 = [(MPSGraphOperation *)self inputTensors];
    v15 = [inputTensors2 objectAtIndexedSubscript:0];
    shape = [v15 shape];
    [shape count];

    operator new();
  }

  return 0;
}

@end