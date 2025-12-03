@interface MPSGraphSparseTensorOp
- (MPSGraphSparseTensorOp)initWithGraph:(id)graph sparseStorageType:(unint64_t)type inputTensors:(id)tensors shape:(id)shape dataType:(unsigned int)dataType name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphSparseTensorOp

- (MPSGraphSparseTensorOp)initWithGraph:(id)graph sparseStorageType:(unint64_t)type inputTensors:(id)tensors shape:(id)shape dataType:(unsigned int)dataType name:(id)name
{
  objc_storeStrong(&self->_shape, shape);
  shapeCopy = shape;
  nameCopy = name;
  tensorsCopy = tensors;
  graphCopy = graph;
  *(&self->_dataType + 1) = dataType;
  self->_sparseStorageType = type;
  v21.receiver = self;
  v21.super_class = MPSGraphSparseTensorOp;
  v19 = [(MPSGraphOperation *)&v21 initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:MEMORY[0x1E695E0F0] name:nameCopy];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v52 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphSparseTensorOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphSparseOps.mm", __p);
  v12 = nameCopy;
  v51 = 260;
  v50[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v50);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x5Fu, 0);
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

  HIBYTE(v47) = v17;
  if (v17)
  {
    memmove(&__dst, uTF8String, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v18, &v43);
  v20 = v43.__r_.__value_.__r.__words[0];
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v43;
  }

  v21 = 1;
  HIBYTE(v51) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v50[0] = v20;
    v21 = 3;
  }

  LOBYTE(v51) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v50);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v47) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  MLIRType = getMLIRType(builder, self->_shape, *(&self->_dataType + 1));
  v25 = *values;
  v26 = *(values + 1) - *values;
  if (!v26)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  if (v26 < 9 || (v48[0] = v25[1], v26 == 16))
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = MLIRType;
  v48[1] = v25[2];
  mlir::ValueRange::ValueRange(v49, v48, 2uLL);
  sparseStorageType = self->_sparseStorageType;
  v40 = v23;
  Context = mlir::Attribute::getContext(&v40);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id, Context);
  if ((v31 & 1) == 0)
  {
    v45 = 1283;
    v43.__r_.__value_.__r.__words[2] = "mps.materialize_sparse_tensor";
    v44 = 29;
    v42 = 259;
    llvm::operator+(&v43, &v41, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v50, v23, v30);
  mlir::mps::MaterializeSparseTensorOp::build(builder, v50, v27, *v25, v49[0], v49[1], sparseStorageType);
  v32 = mlir::OpBuilder::create(builder, v50);
  v33 = *(*(v32 + 48) + 16);
  mlir::OperationState::~OperationState(v50);
  if (v33 == &mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0;
  }

  v37 = v34 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v37);

  return DefiningOp;
}

@end