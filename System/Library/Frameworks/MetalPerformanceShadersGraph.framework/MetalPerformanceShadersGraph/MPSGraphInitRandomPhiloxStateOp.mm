@interface MPSGraphInitRandomPhiloxStateOp
- (MPSGraphInitRandomPhiloxStateOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 counterLow:(unint64_t)a6 counterHigh:(unint64_t)a7 key:(unint64_t)a8 name:(id)a9;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphInitRandomPhiloxStateOp

- (MPSGraphInitRandomPhiloxStateOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 counterLow:(unint64_t)a6 counterHigh:(unint64_t)a7 key:(unint64_t)a8 name:(id)a9
{
  self->_counterLow = a6;
  self->_counterHigh = a7;
  self->_key = a8;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a9];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a7;
  mpsFileLoc("[MPSGraphInitRandomPhiloxStateOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm", __p);
  v11 = v10;
  v43 = 260;
  v42[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v42);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0xB1u, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  v15 = [v11 UTF8String];
  v16 = strlen(v15);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v41) = v16;
  if (v16)
  {
    memmove(&__dst, v15, v16);
  }

  *(&__dst + v18) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v17, &v46);
  v19 = v46.__r_.__value_.__r.__words[0];
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v46;
  }

  v20 = 1;
  HIBYTE(v43) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v42[0] = v19;
    v20 = 3;
  }

  LOBYTE(v43) = v20;
  v21 = mlir::Builder::getStringAttr(a3, v42);
  v22 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v46.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(a3, 64, 1);
  v24 = mlir::RankedTensorType::get(&v46, 1, IntegerType, 0);
  if (v24)
  {
    v25 = v24;
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
    v24 = v25;
  }

  else
  {
    v26 = 0;
  }

  counterLow = self->_counterLow;
  __dst = mlir::DenseElementsAttr::getFromRawBuffer(v24, v26, &counterLow, 8, 8, 1, 1);
  v42[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(a3, v22, &__dst) - 16;
  counterLow = 1;
  v27 = mlir::Builder::getIntegerType(a3, 64, 1);
  v28 = mlir::RankedTensorType::get(&counterLow, 1, v27, 0);
  if (v28)
  {
    v29 = v28;
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
    v28 = v29;
  }

  else
  {
    v30 = 0;
  }

  counterHigh = self->_counterHigh;
  v46.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v28, v30, &counterHigh, 8, 8, 1, 1);
  __dst = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(a3, v22, &v46) - 16);
  counterHigh = 1;
  v31 = mlir::Builder::getIntegerType(a3, 64, 1);
  v32 = mlir::RankedTensorType::get(&counterHigh, 1, v31, 0);
  if (v32)
  {
    v33 = v32;
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    v32 = v33;
  }

  else
  {
    v34 = 0;
  }

  key = self->_key;
  counterLow = mlir::DenseElementsAttr::getFromRawBuffer(v32, v34, &key, 8, 8, 1, 1);
  v46.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(a3, v22, &counterLow) - 16;
  counterLow = mlir::OpBuilder::create<mlir::mps::InitRandomPhiloxStateOp,mlir::Value &,mlir::Value &,mlir::Value &>(a3, v22, v42, &__dst, &v46) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&counterLow);

  return DefiningOp;
}

@end