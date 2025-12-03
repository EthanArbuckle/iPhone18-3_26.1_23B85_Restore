@interface MPSGraphRandomNormalOp
- (MPSGraphRandomNormalOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphRandomNormalOp

- (MPSGraphRandomNormalOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  *(&self->_dataType + 1) = [descriptorCopy dataType];
  [descriptorCopy mean];
  self->_mean = v17;
  [descriptorCopy standardDeviation];
  self->_standardDeviation = v18;
  self->_samplingMethod = [descriptorCopy samplingMethod];
  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v60 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphRandomNormalOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm", __p);
  v12 = nameCopy;
  v53 = 260;
  v52[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v52);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x120u, 0);
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

    v59[6] = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
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
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v14, &v54);
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
  v23 = mlir::Builder::getStringAttr(builder, v52);
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

  MLIRElementType = getMLIRElementType(*builder, *(&self->_dataType + 1));
  v26 = *values;
  if (*(values + 1) - *values <= 8uLL)
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

  mlir::mps::RandomNormalOp::build(builder, v52, v34, v35, v27, &__dst, &v54, samplingMethod);
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
  v39 = mlir::OpBuilder::create(builder, v52);
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