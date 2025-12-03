@interface MPSGraphRealToHermiteanFFTOp
- (MPSGraphRealToHermiteanFFTOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphRealToHermiteanFFTOp

- (MPSGraphRealToHermiteanFFTOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
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
  v46 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphRealToHermiteanFFTOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphFourierTransformOps.mm", __p);
  v12 = nameCopy;
  v45 = 260;
  v44[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v44);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xA0u, 0);
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

  HIBYTE(v43) = v17;
  if (v17)
  {
    memmove(&__dst, uTF8String, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v18, &v39);
  v20 = v39.__r_.__value_.__r.__words[0];
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v39;
  }

  v21 = 1;
  HIBYTE(v45) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v44[0] = v20;
    v21 = 3;
  }

  LOBYTE(v45) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v44);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v35 < 0)
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

  v27 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v36 = v23;
  Context = mlir::Attribute::getContext(&v36);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RealToHermiteanFFTOp,void>::id, Context);
  if ((v30 & 1) == 0)
  {
    v41 = 1283;
    v39.__r_.__value_.__r.__words[2] = "mps.real_to_hermitean_fft";
    v40 = 25;
    v38 = 259;
    llvm::operator+(&v39, &v37, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v44, v23, v29);
  mlir::mps::RealToHermiteanFFTOp::build(builder, v44, *v27, v27[1], v26, inverse);
  v31 = mlir::OpBuilder::create(builder, v44);
  v32 = *(v31[6] + 16);
  mlir::OperationState::~OperationState(v44);
  if (v32 != &mlir::detail::TypeIDResolver<mlir::mps::RealToHermiteanFFTOp,void>::id)
  {
    v31 = 0;
  }

  return v31;
}

@end