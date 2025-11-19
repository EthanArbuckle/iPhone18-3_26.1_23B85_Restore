@interface MPSGraphDequantizeLUTOp
- (MPSGraphDequantizeLUTOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 axis:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphDequantizeLUTOp

- (MPSGraphDequantizeLUTOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 axis:(id)a6 name:(id)a7
{
  objc_storeStrong(&self->_axis, a6);
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(MPSGraphOperation *)self initWithGraph:v15 inputTensors:v14 controlDependencies:v13 name:v12];

  return v16;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v11 = a7;
  v31 = 0;
  if (self->_axis)
  {
    IntegerType = mlir::Builder::getIntegerType(a3, 32, 1);
    v31 = mlir::IntegerAttr::get(IntegerType, [(NSNumber *)self->_axis intValue]);
  }

  mpsFileLoc("[MPSGraphDequantizeLUTOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphQuantizationOps.mm", v29);
  v13 = v11;
  v37 = 260;
  v36[0] = v29;
  StringAttr = mlir::Builder::getStringAttr(a3, v36);
  v16 = mlir::FileLineColLoc::get(StringAttr, 0xAAu, 0);
  if (v13)
  {
    v17 = [v13 UTF8String];
    v18 = strlen(v17);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v35[5] = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    v35[5] = 18;
    v34 = 29813;
    __dst = *"mps.dequantize_lut";
    v20 = v35;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v15, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v22 = 1;
  HIBYTE(v37) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v36[0] = p_p;
    v22 = 3;
  }

  LOBYTE(v37) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v36);
  v24 = mlir::NameLoc::get(v23, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v35[5] & 0x80000000) == 0)
    {
LABEL_18:

      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(v29[0]);
      v25 = *a5;
      v26 = *(a5 + 1) - *a5;
      if (!v26)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else if ((v35[5] & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__dst);

  if (v30 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v25 = *a5;
  v26 = *(a5 + 1) - *a5;
  if (!v26)
  {
LABEL_26:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_24:
  if (v26 <= 8)
  {
    goto LABEL_26;
  }

  v36[0] = mlir::OpBuilder::create<mlir::mps::DequantizeLUTOp,mlir::Value &,mlir::Value &,mlir::IntegerAttr &>(a3, v24, v25, v25 + 1, &v31) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v36);

  return DefiningOp;
}

@end