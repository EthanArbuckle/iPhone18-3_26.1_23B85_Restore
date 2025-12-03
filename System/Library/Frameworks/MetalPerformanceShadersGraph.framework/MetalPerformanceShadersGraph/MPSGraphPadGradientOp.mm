@interface MPSGraphPadGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphPadGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v50 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphPadGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v12 = nameCopy;
  v49 = 260;
  v48[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v48);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x4CEu, 0);
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

    HIBYTE(v47) = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v20 = (&__dst + v19);
  }

  else
  {
    HIBYTE(v47) = 16;
    __dst = *"mps.pad_gradient";
    v20 = &v47;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v14, &v43);
  v21 = v43.__r_.__value_.__r.__words[0];
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v43;
  }

  v22 = 1;
  HIBYTE(v49) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v48[0] = v21;
    v22 = 3;
  }

  LOBYTE(v49) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v48);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v47) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *values;
  v25 = *(values + 1);
  v27 = v25 - *values;
  if (v27 == 16 || v25 == v26 || v27 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  paddingMode = self->_paddingMode;
  v40 = v24;
  Context = mlir::Attribute::getContext(&v40);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadGradientOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v45 = 1283;
    v43.__r_.__value_.__r.__words[2] = "mps.pad_gradient";
    v44 = 16;
    v42 = 259;
    llvm::operator+(&v43, &v41, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v48, v24, v30);
  mlir::mps::PadGradientOp::build(builder, v48, *v26, v26[1], v26[2], paddingMode);
  v32 = mlir::OpBuilder::create(builder, v48);
  v33 = *(*(v32 + 48) + 16);
  mlir::OperationState::~OperationState(v48);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mps::PadGradientOp,void>::id)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  v37 = v34 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v37);

  return DefiningOp;
}

@end