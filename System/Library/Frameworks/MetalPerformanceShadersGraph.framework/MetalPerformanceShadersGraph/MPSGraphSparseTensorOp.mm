@interface MPSGraphSparseTensorOp
- (MPSGraphSparseTensorOp)initWithGraph:(id)a3 sparseStorageType:(unint64_t)a4 inputTensors:(id)a5 shape:(id)a6 dataType:(unsigned int)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphSparseTensorOp

- (MPSGraphSparseTensorOp)initWithGraph:(id)a3 sparseStorageType:(unint64_t)a4 inputTensors:(id)a5 shape:(id)a6 dataType:(unsigned int)a7 name:(id)a8
{
  objc_storeStrong(&self->_shape, a6);
  v15 = a6;
  v16 = a8;
  v17 = a5;
  v18 = a3;
  *(&self->_dataType + 1) = a7;
  self->_sparseStorageType = a4;
  v21.receiver = self;
  v21.super_class = MPSGraphSparseTensorOp;
  v19 = [(MPSGraphOperation *)&v21 initWithGraph:v18 inputTensors:v17 controlDependencies:MEMORY[0x1E695E0F0] name:v16];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphSparseTensorOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphSparseOps.mm", __p);
  v12 = v11;
  v51 = 260;
  v50[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v50);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x5Fu, 0);
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

  HIBYTE(v47) = v17;
  if (v17)
  {
    memmove(&__dst, v16, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v18, &v43);
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
  v22 = mlir::Builder::getStringAttr(a3, v50);
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

  MLIRType = getMLIRType(a3, self->_shape, *(&self->_dataType + 1));
  v25 = *a5;
  v26 = *(a5 + 1) - *a5;
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
  mlir::mps::MaterializeSparseTensorOp::build(a3, v50, v27, *v25, v49[0], v49[1], sparseStorageType);
  v32 = mlir::OpBuilder::create(a3, v50);
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