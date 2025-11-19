@interface MPSGraphHermiteanToRealFFTOp
- (MPSGraphHermiteanToRealFFTOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphHermiteanToRealFFTOp

- (MPSGraphHermiteanToRealFFTOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v15 copy];
  desc = self->_desc;
  self->_desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:v12 inputTensors:v13 controlDependencies:v14 name:v16];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphHermiteanToRealFFTOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphFourierTransformOps.mm", __p);
  v12 = v11;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v46);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xD0u, 0);
  if (!v12)
  {
    operator new();
  }

  v15 = v12;
  v16 = [v12 UTF8String];
  v17 = strlen(v16);
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
    memmove(&__dst, v16, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v18, &v41);
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
  v22 = mlir::Builder::getStringAttr(a3, v46);
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

  v24 = [(MPSGraphFFTDescriptor *)self->_desc inverse];
  v25 = [(MPSGraphFFTDescriptor *)self->_desc scalingMode];
  if (v25 == MPSGraphFFTScalingModeUnitary)
  {
    v26 = 2;
  }

  else
  {
    v26 = v25 == MPSGraphFFTScalingModeSize;
  }

  v27 = [(MPSGraphFFTDescriptor *)self->_desc roundToOddHermitean];
  v28 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = v27;
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
  mlir::mps::HermiteanToRealFFTOp::build(a3, v46, *v28, v28[1], v26, v24, v29);
  v33 = mlir::OpBuilder::create(a3, v46);
  v34 = *(v33[6] + 16);
  mlir::OperationState::~OperationState(v46);
  if (v34 != &mlir::detail::TypeIDResolver<mlir::mps::HermiteanToRealFFTOp,void>::id)
  {
    v33 = 0;
  }

  return v33;
}

@end