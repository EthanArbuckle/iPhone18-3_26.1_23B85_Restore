@interface MPSGraphPruningGradientOp
- (MPSGraphPruningGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 shape:(id)a6 descriptor:(id)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphPruningGradientOp

- (MPSGraphPruningGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 shape:(id)a6 descriptor:(id)a7 name:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a8;
  v16 = [(MPSGraphPruningDescriptor *)self->_pruningDesc copy];
  pruningDesc = self->_pruningDesc;
  self->_pruningDesc = v16;

  objc_storeStrong(&self->_shape, a6);
  v18 = [MPSGraphPruningGradientOp alloc];
  v19 = [(MPSGraphOperation *)v18 initWithGraph:v12 inputTensors:v13 controlDependencies:MEMORY[0x1E695E0F0] name:v15];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphPruningGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPruningOps.mm", __p);
  v12 = v11;
  v57 = 260;
  v56[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v56);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x52u, 0);
  if (v12)
  {
    v16 = v12;
    v17 = v12;
    v18 = [v12 UTF8String];
    v19 = strlen(v18);
    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      operator new();
    }

    v60[5] = v19;
    if (v19)
    {
      memmove(&__dst, v18, v19);
    }

    v21 = &__dst + v20;
    v12 = v17;
  }

  else
  {
    v60[5] = 18;
    v59 = 29806;
    __dst = *"mps.prune_gradient";
    v21 = v60;
  }

  *v21 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v14, &v52);
  v22 = v52.__r_.__value_.__r.__words[0];
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v52;
  }

  v23 = 1;
  HIBYTE(v57) = 1;
  if (v22->__r_.__value_.__s.__data_[0])
  {
    v56[0] = v22;
    v23 = 3;
  }

  LOBYTE(v57) = v23;
  v24 = mlir::Builder::getStringAttr(a3, v56);
  v25 = mlir::NameLoc::get(v24, v15);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
    if ((v60[5] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v60[5] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v48 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = [(MPSGraphPruningDescriptor *)self->_pruningDesc pruningMetric];
  v28 = [(MPSGraphPruningDescriptor *)self->_pruningDesc pruningStructure];
  v45 = v12;
  [(MPSGraphPruningDescriptor *)self->_pruningDesc sparsity];
  v30 = llvm::detail::IEEEFloat::IEEEFloat(v56, v29);
  v31 = llvm::APFloatBase::IEEEsingle(v30);
  llvm::APFloat::Storage::Storage(&v55, v56, v31);
  llvm::detail::IEEEFloat::~IEEEFloat(v56);
  v49 = v25;
  Context = mlir::Attribute::getContext(&v49);
  v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PruningGradientOp,void>::id, Context);
  if ((v34 & 1) == 0)
  {
    v54 = 1283;
    v52.__r_.__value_.__r.__words[2] = "mps.prune_gradient";
    v53 = 18;
    v51 = 259;
    llvm::operator+(&v52, &v50, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v56, v25, v33);
  v35 = *v26;
  v36 = v26[1];
  v37 = v55.n128_u64[0];
  v39 = llvm::APFloatBase::PPCDoubleDouble(v38);
  if (v39 == v37)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((&__dst + 8), &v55);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&__dst + 8, &v55);
  }

  mlir::mps::PruningGradientOp::build(a3, v56, v35, v36, v27, v28, &__dst);
  if (v39 == *(&__dst + 1))
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((&__dst + 8));
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat((&__dst + 8));
  }

  v40 = mlir::OpBuilder::create(a3, v56);
  v41 = *(*(v40 + 48) + 16);
  mlir::OperationState::~OperationState(v56);
  if (v41 == &mlir::detail::TypeIDResolver<mlir::mps::PruningGradientOp,void>::id)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0;
  }

  v46 = v42 - 16;
  if (v39 == v55.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v55);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v55);
  }

  DefiningOp = mlir::Value::getDefiningOp(&v46);

  return DefiningOp;
}

@end