@interface MPSGraphHermiteanToRealFFTOp
- (MPSGraphHermiteanToRealFFTOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphHermiteanToRealFFTOp

- (MPSGraphHermiteanToRealFFTOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  v17 = [descriptorCopy copy];
  desc = self->_desc;
  self->_desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphHermiteanToRealFFTOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphFourierTransformOps.mm", __p);
  v12 = nameCopy;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v46);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xD0u, 0);
  if (!v12)
  {
    operator new();
  }

  v15 = v12;
  uTF8String = [v12 UTF8String];
  v17 = strlen(uTF8String);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v45) = v17;
  if (v17)
  {
    memmove(&__dst, uTF8String, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v18, &v41);
  v20 = v41.__r_.__value_.__r.__words[0];
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v41;
  }

  v21 = 1;
  HIBYTE(v47) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v46[0] = v20;
    v21 = 3;
  }

  LOBYTE(v47) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v46);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  inverse = [(MPSGraphFFTDescriptor *)self->_desc inverse];
  scalingMode = [(MPSGraphFFTDescriptor *)self->_desc scalingMode];
  if (scalingMode == MPSGraphFFTScalingModeUnitary)
  {
    v26 = 2;
  }

  else
  {
    v26 = scalingMode == MPSGraphFFTScalingModeSize;
  }

  roundToOddHermitean = [(MPSGraphFFTDescriptor *)self->_desc roundToOddHermitean];
  v28 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = roundToOddHermitean;
  v38 = v23;
  Context = mlir::Attribute::getContext(&v38);
  v31 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::HermiteanToRealFFTOp,void>::id, Context);
  if ((v32 & 1) == 0)
  {
    v43 = 1283;
    v41.__r_.__value_.__r.__words[2] = "mps.hermitean_to_real_fft";
    v42 = 25;
    v40 = 259;
    llvm::operator+(&v41, &v39, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v23, v31);
  mlir::mps::HermiteanToRealFFTOp::build(builder, v46, *v28, v28[1], v26, inverse, v29);
  v33 = mlir::OpBuilder::create(builder, v46);
  v34 = *(v33[6] + 16);
  mlir::OperationState::~OperationState(v46);
  if (v34 != &mlir::detail::TypeIDResolver<mlir::mps::HermiteanToRealFFTOp,void>::id)
  {
    v33 = 0;
  }

  return v33;
}

@end