@interface MPSGraphCastOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCastOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphCastOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", v29);
  v11 = nameCopy;
  v36 = 260;
  v35[0] = v29;
  StringAttr = mlir::Builder::getStringAttr(builder, v35);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x347u, 0);
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

    v34 = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    v18 = (&__dst + v17);
  }

  else
  {
    v34 = 8;
    __dst = 0x747361632E73706DLL;
    v18 = &v33;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v20 = 1;
  HIBYTE(v36) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v35[0] = p_p;
    v20 = 3;
  }

  LOBYTE(v36) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v35);
  v22 = mlir::NameLoc::get(v21, v14);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(__dst);

    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v34 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:

  if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_21:
  operator delete(v29[0]);
LABEL_17:
  MLIRElementType = getMLIRElementType(*builder, self->_destType);
  valuesCopy = values;
  v24 = *values;
  if (valuesCopy[1] == v24)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  __dst = mlir::TypeAttr::get(MLIRElementType);
  v35[0] = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::TypeAttr>(builder, v22, v24, &__dst) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v35);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  dataType = [tensorCopy dataType];
  v14 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v16 = [v14 stringWithFormat:@"%@/%@/castGradient", nameCopy, name];
  v17 = [WeakRetained castTensor:gradientCopy toType:dataType name:v16];

  return v17;
}

@end