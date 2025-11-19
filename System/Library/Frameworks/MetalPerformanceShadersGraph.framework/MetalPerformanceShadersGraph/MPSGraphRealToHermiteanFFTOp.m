@interface MPSGraphRealToHermiteanFFTOp
- (MPSGraphRealToHermiteanFFTOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphRealToHermiteanFFTOp

- (MPSGraphRealToHermiteanFFTOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7
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
  v46 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphRealToHermiteanFFTOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphFourierTransformOps.mm", __p);
  v12 = v11;
  v45 = 260;
  v44[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v44);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xA0u, 0);
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

  HIBYTE(v43) = v17;
  if (v17)
  {
    memmove(&__dst, v16, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v18, &v39);
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
  v22 = mlir::Builder::getStringAttr(a3, v44);
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

  v27 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
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
  mlir::mps::RealToHermiteanFFTOp::build(a3, v44, *v27, v27[1], v26, v24);
  v31 = mlir::OpBuilder::create(a3, v44);
  v32 = *(v31[6] + 16);
  mlir::OperationState::~OperationState(v44);
  if (v32 != &mlir::detail::TypeIDResolver<mlir::mps::RealToHermiteanFFTOp,void>::id)
  {
    v31 = 0;
  }

  return v31;
}

@end