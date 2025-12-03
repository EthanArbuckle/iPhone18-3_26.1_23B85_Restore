@interface MPSGraphQuantizeOp
- (MPSGraphQuantizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataType:(unsigned int)type axis:(id)axis name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphQuantizeOp

- (MPSGraphQuantizeOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataType:(unsigned int)type axis:(id)axis name:(id)name
{
  *(&self->_dataType + 1) = type;
  objc_storeStrong(&self->_axis, axis);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  v17 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v17;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  MLIRElementType = getMLIRElementType(*builder, *(&self->_dataType + 1));
  v33 = 0;
  v34 = mlir::TypeAttr::get(MLIRElementType);
  if (self->_axis)
  {
    IntegerType = mlir::Builder::getIntegerType(builder, 32, 1);
    v33 = mlir::IntegerAttr::get(IntegerType, [(NSNumber *)self->_axis intValue]);
  }

  mpsFileLoc("[MPSGraphQuantizeOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphQuantizationOps.mm", v31);
  v14 = nameCopy;
  v41 = 260;
  v40[0] = v31;
  StringAttr = mlir::Builder::getStringAttr(builder, v40);
  v17 = mlir::FileLineColLoc::get(StringAttr, 0x41u, 0);
  if (v14)
  {
    uTF8String = [v14 UTF8String];
    v19 = strlen(uTF8String);
    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      operator new();
    }

    v39 = v19;
    if (v19)
    {
      memmove(&__dst, uTF8String, v19);
    }

    v21 = (&__dst + v20);
  }

  else
  {
    v39 = 12;
    v37 = 1702521204;
    __dst = *"mps.quantize";
    v21 = &v38;
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v16, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v23 = 1;
  HIBYTE(v41) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v40[0] = p_p;
    v23 = 3;
  }

  LOBYTE(v41) = v23;
  v24 = mlir::Builder::getStringAttr(builder, v40);
  v25 = mlir::NameLoc::get(v24, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v39 & 0x80000000) == 0)
    {
LABEL_18:

      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(v31[0]);
      v26 = *values;
      v27 = *(values + 1);
      v28 = v27 - *values;
      if (v28 == 16)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }
  }

  else if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__dst);

  if (v32 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v26 = *values;
  v27 = *(values + 1);
  v28 = v27 - *values;
  if (v28 == 16)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v27 == v26 || v28 <= 8)
  {
LABEL_27:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v40[0] = mlir::OpBuilder::create<mlir::mps::QuantizeOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::TypeAttr &,mlir::IntegerAttr &>(builder, v25, v26, v26 + 1, v26 + 2, &v34, &v33) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v40);

  return DefiningOp;
}

@end