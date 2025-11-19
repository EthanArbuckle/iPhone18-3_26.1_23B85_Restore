@interface MPSGraphRandomTruncatedNormalOp
- (MPSGraphRandomTruncatedNormalOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphRandomTruncatedNormalOp

- (MPSGraphRandomTruncatedNormalOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7
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
  [v15 min];
  self->_minimum = v19;
  [v15 max];
  self->_maximum = v20;
  v21 = [(MPSGraphOperation *)self initWithGraph:v12 inputTensors:v13 controlDependencies:v14 name:v16];

  return v21;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v66 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphRandomTruncatedNormalOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm", __p);
  v12 = v11;
  v57 = 260;
  v56[0] = __p;
  v45 = v12;
  StringAttr = mlir::Builder::getStringAttr(a3, v56);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x155u, 0);
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

  v65[0].n128_u8[15] = v17;
  if (v17)
  {
    memmove(&__dst, v16, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v18, &v61);
  v20 = v61.__r_.__value_.__r.__words[0];
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v61;
  }

  v21 = 1;
  HIBYTE(v57) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v56[0] = v20;
    v21 = 3;
  }

  LOBYTE(v57) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v56);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
    if ((v65[0].n128_i8[15] & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v65[0].n128_i8[15] & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRElementType = getMLIRElementType(*a3, *(&self->_dataType + 1));
  v25 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = MLIRElementType;
  v27 = llvm::detail::IEEEFloat::IEEEFloat(v56, self->_mean);
  v28 = llvm::APFloatBase::IEEEsingle(v27);
  llvm::APFloat::Storage::Storage(&v53, v56, v28);
  llvm::detail::IEEEFloat::~IEEEFloat(v56);
  llvm::detail::IEEEFloat::IEEEFloat(v56, self->_standardDeviation);
  llvm::APFloat::Storage::Storage(&v52, v56, v28);
  llvm::detail::IEEEFloat::~IEEEFloat(v56);
  llvm::detail::IEEEFloat::IEEEFloat(v56, self->_minimum);
  llvm::APFloat::Storage::Storage(&v51, v56, v28);
  llvm::detail::IEEEFloat::~IEEEFloat(v56);
  llvm::detail::IEEEFloat::IEEEFloat(v56, self->_maximum);
  llvm::APFloat::Storage::Storage(&v50, v56, v28);
  llvm::detail::IEEEFloat::~IEEEFloat(v56);
  samplingMethod = self->_samplingMethod;
  v49 = v23;
  Context = mlir::Attribute::getContext(&v49);
  v31 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RandomTruncatedNormalOp,void>::id, Context);
  if ((v32 & 1) == 0)
  {
    v63 = 1283;
    v61.__r_.__value_.__r.__words[2] = "mps.random_truncated_normal";
    v62 = 27;
    v60 = 259;
    llvm::operator+(&v61, &v58, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v56, v23, v31);
  v33 = v26;
  v34 = *v25;
  v35 = v25[1];
  v36 = v53.n128_u64[0];
  v38 = llvm::APFloatBase::PPCDoubleDouble(v37);
  if (v38 == v36)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v65, &v53);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v65, &v53);
  }

  if (v38 == v52.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61.__r_.__value_.__r.__words[1], &v52);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v61.__r_.__value_.__l.__size_, &v52);
  }

  if (v38 == v51.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v59, &v51);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v59, &v51);
  }

  if (v38 == v50.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v55, &v50);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v55, &v50);
  }

  mlir::mps::RandomTruncatedNormalOp::build(a3, v56, v34, v35, v33, &__dst, &v61, &v58, v54, samplingMethod);
  if (v38 == v55.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v55);
    v39 = v45;
    if (v38 != v59.n128_u64[0])
    {
LABEL_35:
      llvm::detail::IEEEFloat::~IEEEFloat(&v59);
      if (v38 != v61.__r_.__value_.__l.__size_)
      {
        goto LABEL_36;
      }

LABEL_40:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61.__r_.__value_.__r.__words[1]);
      if (v38 != v65[0].n128_u64[0])
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v55);
    v39 = v45;
    if (v38 != v59.n128_u64[0])
    {
      goto LABEL_35;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v59);
  if (v38 == v61.__r_.__value_.__l.__size_)
  {
    goto LABEL_40;
  }

LABEL_36:
  llvm::detail::IEEEFloat::~IEEEFloat(&v61.__r_.__value_.__r.__words[1]);
  if (v38 != v65[0].n128_u64[0])
  {
LABEL_37:
    llvm::detail::IEEEFloat::~IEEEFloat(v65);
    goto LABEL_42;
  }

LABEL_41:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v65);
LABEL_42:
  v40 = mlir::OpBuilder::create(a3, v56);
  v41 = *(*(v40 + 48) + 16);
  mlir::OperationState::~OperationState(v56);
  if (v41 == &mlir::detail::TypeIDResolver<mlir::mps::RandomTruncatedNormalOp,void>::id)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  v46 = v42 - 16;
  if (v38 == v50.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v50);
    if (v38 != v51.n128_u64[0])
    {
LABEL_47:
      llvm::detail::IEEEFloat::~IEEEFloat(&v51);
      if (v38 != v52.n128_u64[0])
      {
        goto LABEL_48;
      }

LABEL_52:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v52);
      if (v38 != v53.n128_u64[0])
      {
        goto LABEL_49;
      }

LABEL_53:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v53);
      goto LABEL_54;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v50);
    if (v38 != v51.n128_u64[0])
    {
      goto LABEL_47;
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v51);
  if (v38 == v52.n128_u64[0])
  {
    goto LABEL_52;
  }

LABEL_48:
  llvm::detail::IEEEFloat::~IEEEFloat(&v52);
  if (v38 == v53.n128_u64[0])
  {
    goto LABEL_53;
  }

LABEL_49:
  llvm::detail::IEEEFloat::~IEEEFloat(&v53);
LABEL_54:
  DefiningOp = mlir::Value::getDefiningOp(&v46);

  return DefiningOp;
}

@end