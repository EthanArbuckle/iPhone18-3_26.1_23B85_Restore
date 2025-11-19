@interface MPSGraphRandomNormalOp
- (MPSGraphRandomNormalOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphRandomNormalOp

- (MPSGraphRandomNormalOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  *(&self->_dataType + 1) = [v15 dataType];
  [v15 mean];
  self->_mean = v17;
  [v15 standardDeviation];
  self->_standardDeviation = v18;
  self->_samplingMethod = [v15 samplingMethod];
  v19 = [(MPSGraphOperation *)self initWithGraph:v12 inputTensors:v13 controlDependencies:v14 name:v16];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v60 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphRandomNormalOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm", __p);
  v12 = v11;
  v53 = 260;
  v52[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v52);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x120u, 0);
  if (v12)
  {
    v16 = v12;
    v17 = [v12 UTF8String];
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

    v59[6] = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    v59[6] = 17;
    v58 = 108;
    __dst = *"mps.random_normal";
    v20 = v59;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v14, &v54);
  v21 = v54.__r_.__value_.__r.__words[0];
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v54;
  }

  v22 = 1;
  HIBYTE(v53) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v52[0] = v21;
    v22 = 3;
  }

  LOBYTE(v53) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v52);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
    if ((v59[6] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v59[6] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRElementType = getMLIRElementType(*a3, *(&self->_dataType + 1));
  v26 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = MLIRElementType;
  v28 = llvm::detail::IEEEFloat::IEEEFloat(v52, self->_mean);
  v29 = llvm::APFloatBase::IEEEsingle(v28);
  llvm::APFloat::Storage::Storage(&v51, v52, v29);
  llvm::detail::IEEEFloat::~IEEEFloat(v52);
  llvm::detail::IEEEFloat::IEEEFloat(v52, self->_standardDeviation);
  llvm::APFloat::Storage::Storage(&v50, v52, v29);
  llvm::detail::IEEEFloat::~IEEEFloat(v52);
  samplingMethod = self->_samplingMethod;
  v47 = v24;
  Context = mlir::Attribute::getContext(&v47);
  v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomNormalOp,void>::id, Context);
  if ((v33 & 1) == 0)
  {
    v56 = 1283;
    v54.__r_.__value_.__r.__words[2] = "mps.random_normal";
    v55 = 17;
    v49 = 259;
    llvm::operator+(&v54, &v48, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v52, v24, v32);
  v34 = *v26;
  v35 = v26[1];
  v36 = v51.n128_u64[0];
  v38 = llvm::APFloatBase::PPCDoubleDouble(v37);
  if (v38 == v36)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((&__dst + 8), &v51);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&__dst + 8, &v51);
  }

  if (v38 == v50.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v54.__r_.__value_.__r.__words[1], &v50);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v54.__r_.__value_.__l.__size_, &v50);
  }

  mlir::mps::RandomNormalOp::build(a3, v52, v34, v35, v27, &__dst, &v54, samplingMethod);
  if (v38 == v54.__r_.__value_.__l.__size_)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v54.__r_.__value_.__r.__words[1]);
    if (v38 != *(&__dst + 1))
    {
      goto LABEL_30;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v54.__r_.__value_.__r.__words[1]);
    if (v38 != *(&__dst + 1))
    {
LABEL_30:
      llvm::detail::IEEEFloat::~IEEEFloat((&__dst + 8));
      goto LABEL_33;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat((&__dst + 8));
LABEL_33:
  v39 = mlir::OpBuilder::create(a3, v52);
  v40 = *(*(v39 + 48) + 16);
  mlir::OperationState::~OperationState(v52);
  if (v40 == &mlir::detail::TypeIDResolver<mlir::mps::RandomNormalOp,void>::id)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  v44 = v41 - 16;
  if (v38 == v50.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v50);
    if (v38 != v51.n128_u64[0])
    {
      goto LABEL_38;
    }

LABEL_40:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v51);
    goto LABEL_41;
  }

  llvm::detail::IEEEFloat::~IEEEFloat(&v50);
  if (v38 == v51.n128_u64[0])
  {
    goto LABEL_40;
  }

LABEL_38:
  llvm::detail::IEEEFloat::~IEEEFloat(&v51);
LABEL_41:
  DefiningOp = mlir::Value::getDefiningOp(&v44);

  return DefiningOp;
}

@end