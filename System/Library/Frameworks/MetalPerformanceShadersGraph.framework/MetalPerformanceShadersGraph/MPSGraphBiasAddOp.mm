@interface MPSGraphBiasAddOp
- (MPSGraphBiasAddOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataLayout:(unint64_t)layout name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphBiasAddOp

- (MPSGraphBiasAddOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies dataLayout:(unint64_t)layout name:(id)name
{
  self->_inputLayout = layout;
  v8.receiver = self;
  v8.super_class = MPSGraphBiasAddOp;
  return [(MPSGraphOperation *)&v8 initWithGraph:graph inputTensors:tensors controlDependencies:dependencies name:name];
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphBiasAddOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphActivationOps.mm", v27);
  v12 = nameCopy;
  v35 = 260;
  v34[0] = v27;
  StringAttr = mlir::Builder::getStringAttr(builder, v34);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x77u, 0);
  if (v12)
  {
    uTF8String = [v12 UTF8String];
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

    v33 = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    v19 = (&__dst + v18);
  }

  else
  {
    v33 = 12;
    v31 = 1684300127;
    __dst = *"mps.bias_add";
    v19 = &v32;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v14, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v21 = 1;
  HIBYTE(v35) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v34[0] = p_p;
    v21 = 3;
  }

  LOBYTE(v35) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v34);
  v23 = mlir::NameLoc::get(v22, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v27[0]);
      if (self->_inputLayout < 2)
      {
        goto LABEL_22;
      }

      goto LABEL_24;
    }
  }

  else if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v28 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  if (self->_inputLayout < 2)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_22:
  v24 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  LODWORD(__dst) = self->_inputLayout;
  v34[0] = mlir::OpBuilder::create<mlir::mps::BiasAddOp,mlir::Value &,mlir::Value &,mlir::mps::TensorDataLayout>(builder, v23, v24, v24 + 1, &__dst) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v34);

  return DefiningOp;
}

@end