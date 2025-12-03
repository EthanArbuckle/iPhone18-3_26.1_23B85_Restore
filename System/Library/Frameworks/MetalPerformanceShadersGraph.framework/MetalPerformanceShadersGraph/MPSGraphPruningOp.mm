@interface MPSGraphPruningOp
- (MPSGraphPruningOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape descriptor:(id)descriptor name:(id)name;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphPruningOp

- (MPSGraphPruningOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies shape:(id)shape descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  shapeCopy = shape;
  nameCopy = name;
  v16 = [(MPSGraphPruningDescriptor *)self->_pruningDesc copy];
  pruningDesc = self->_pruningDesc;
  self->_pruningDesc = v16;

  objc_storeStrong(&self->_shape, shape);
  v18 = [MPSGraphPruningOp alloc];
  v19 = [(MPSGraphOperation *)v18 initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v19;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v11 = [WeakRetained prunedGradientTensorWithDescriptor:self->_pruningDesc inputTensor:tensorCopy gradientTensor:gradientCopy shape:self->_shape name:0];

  return v11;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v57 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphPruningOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPruningOps.mm", __p);
  v12 = nameCopy;
  v54 = 260;
  v53[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v53);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x8Fu, 0);
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

    v56[0].n128_u8[15] = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    v56[0].n128_u8[15] = 9;
    v56[0].n128_u8[0] = 101;
    __dst = *"mps.prune";
    v20 = &v56[0].n128_u8[1];
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v14, &v49);
  v21 = v49.__r_.__value_.__r.__words[0];
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v49;
  }

  v22 = 1;
  HIBYTE(v54) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v53[0] = v21;
    v22 = 3;
  }

  LOBYTE(v54) = v22;
  v23 = mlir::Builder::getStringAttr(builder, v53);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
    if ((v56[0].n128_i8[15] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v56[0].n128_i8[15] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *values;
  if (*(values + 1) == *values)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  pruningMetric = [(MPSGraphPruningDescriptor *)self->_pruningDesc pruningMetric];
  pruningStructure = [(MPSGraphPruningDescriptor *)self->_pruningDesc pruningStructure];
  [(MPSGraphPruningDescriptor *)self->_pruningDesc sparsity];
  v29 = llvm::detail::IEEEFloat::IEEEFloat(v53, v28);
  v30 = llvm::APFloatBase::IEEEsingle(v29);
  llvm::APFloat::Storage::Storage(&v52, v53, v30);
  llvm::detail::IEEEFloat::~IEEEFloat(v53);
  v46 = v24;
  Context = mlir::Attribute::getContext(&v46);
  v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PruningOp,void>::id, Context);
  if ((v33 & 1) == 0)
  {
    v51 = 1283;
    v49.__r_.__value_.__r.__words[2] = "mps.prune";
    v50 = 9;
    v48 = 259;
    llvm::operator+(&v49, &v47, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v53, v24, v32);
  v34 = *v25;
  v35 = v52.n128_u64[0];
  v37 = llvm::APFloatBase::PPCDoubleDouble(v36);
  if (v37 == v35)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v56, &v52);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v56, &v52);
  }

  mlir::mps::PruningOp::build(builder, v53, v34, pruningMetric, pruningStructure, &__dst);
  if (v37 == v56[0].n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v56);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v56);
  }

  v38 = mlir::OpBuilder::create(builder, v53);
  v39 = *(*(v38 + 48) + 16);
  mlir::OperationState::~OperationState(v53);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::mps::PruningOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v43 = v40 - 16;
  if (v37 == v52.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v52);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v52);
  }

  DefiningOp = mlir::Value::getDefiningOp(&v43);

  return DefiningOp;
}

@end