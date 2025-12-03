@interface MPSGraphOneHotOp
- (MPSGraphOneHotOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies depth:(unint64_t)depth axis:(unint64_t)axis dataType:(unsigned int)type name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphOneHotOp

- (MPSGraphOneHotOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies depth:(unint64_t)depth axis:(unint64_t)axis dataType:(unsigned int)type name:(id)name
{
  self->_depth = depth;
  self->_axis = axis;
  self->_dataType = type;
  return [(MPSGraphOperation *)self initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v60 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphOneHotOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphOneHotOps.mm", __p);
  v12 = nameCopy;
  v56 = 260;
  v55[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v55);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x34u, 0);
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

    v59 = v18;
    if (v18)
    {
      memmove(__dst, uTF8String, v18);
    }

    v20 = &__dst[v19];
  }

  else
  {
    v59 = 11;
    qmemcpy(__dst, "mps.one_hot", sizeof(__dst));
    v20 = v58;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v14, &v52);
  v21 = v52.__r_.__value_.__r.__words[0];
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v52;
  }

  v22 = 1;
  HIBYTE(v56) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v55[0] = v21->__r_.__value_.__r.__words;
    v22 = 3;
  }

  LOBYTE(v56) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v55);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v59 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRElementType = getMLIRElementType(*builder, self->_dataType);
  *__dst = 1;
  IntegerType = mlir::Builder::getIntegerType(builder, 32, 0);
  v27 = mlir::RankedTensorType::get(__dst, 1, IntegerType, 0);
  if (v27)
  {
    v28 = v27;
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    v27 = v28;
  }

  else
  {
    v29 = 0;
  }

  LODWORD(v52.__r_.__value_.__l.__data_) = self->_depth;
  v55[0] = mlir::DenseElementsAttr::getFromRawBuffer(v27, v29, &v52, 4, 4, 1, 0);
  v30 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(builder, v24, v55);
  *__dst = 1;
  v31 = mlir::Builder::getIntegerType(builder, 32, 1);
  v32 = mlir::RankedTensorType::get(__dst, 1, v31, 0);
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

  LODWORD(v52.__r_.__value_.__l.__data_) = self->_axis;
  v55[0] = mlir::DenseElementsAttr::getFromRawBuffer(v32, v34, &v52, 4, 4, 1, 1);
  v35 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>(builder, v24, v55);
  v36 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v35;
  v49 = v24;
  Context = mlir::Attribute::getContext(&v49);
  v39 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::OneHotOp,void>::id, Context);
  if ((v40 & 1) == 0)
  {
    v54 = 1283;
    v52.__r_.__value_.__r.__words[2] = "mps.one_hot";
    v53 = 11;
    v51 = 259;
    llvm::operator+(&v52, &v50, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v55, v24, v39);
  mlir::mps::OneHotOp::build(builder, v55, *v36, v30 - 16, v37 - 16, MLIRElementType);
  v41 = mlir::OpBuilder::create(builder, v55);
  v42 = *(*(v41 + 48) + 16);
  mlir::OperationState::~OperationState(v55);
  if (v42 == &mlir::detail::TypeIDResolver<mlir::mps::OneHotOp,void>::id)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  v46 = v43 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v46);

  return DefiningOp;
}

@end