@interface MPSGraphMakeListOp
- (MPSGraphMakeListOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 elementType:(id)a6 maxSize:(id)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphMakeListOp

- (MPSGraphMakeListOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 elementType:(id)a6 maxSize:(id)a7 name:(id)a8
{
  v23 = a6;
  v15 = a7;
  objc_storeStrong(&self->_elementType, a6);
  v16 = a8;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  maxSize = self->_maxSize;
  self->_maxSize = v15;

  v21 = [(MPSGraphOperation *)self initWithGraph:v19 inputTensors:v18 controlDependencies:v17 name:v16];
  return v21;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a7;
  MLIRType = getMLIRType(*a3, self->_elementType);
  v12 = mlir::TypeAttr::get(MLIRType);
  if (self->_maxSize)
  {
    v13 = mlir::IntegerType::get(*a3, 32, 2u);
    v14 = mlir::IntegerAttr::get(v13, [(NSNumber *)self->_maxSize unsignedLongValue]);
  }

  else
  {
    v14 = 0;
  }

  mpsFileLoc("[MPSGraphMakeListOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphListOps.mm", __p);
  v15 = v10;
  v49 = 260;
  v48[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v48);
  v18 = mlir::FileLineColLoc::get(StringAttr, 0x45u, 0);
  if (v15)
  {
    v19 = v15;
    v20 = [v15 UTF8String];
    v21 = strlen(v20);
    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = v21;
    if (v21 >= 0x17)
    {
      operator new();
    }

    v47 = v21;
    if (v21)
    {
      memmove(__dst, v20, v21);
    }

    v23 = &__dst[v22];
  }

  else
  {
    v47 = 14;
    qmemcpy(__dst, "mpsx.make_list", sizeof(__dst));
    v23 = v46;
  }

  *v23 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v17, &v42);
  v24 = v42.__r_.__value_.__r.__words[0];
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v42;
  }

  v25 = 1;
  HIBYTE(v49) = 1;
  if (v24->__r_.__value_.__s.__data_[0])
  {
    v48[0] = v24;
    v25 = 3;
  }

  LOBYTE(v49) = v25;
  v26 = mlir::Builder::getStringAttr(a3, v48);
  v27 = mlir::NameLoc::get(v26, v18);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((v47 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(*__dst);
LABEL_19:

  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v39 = v27;
  Context = mlir::Attribute::getContext(&v39);
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::MakeListOp,void>::id, Context);
  if ((v30 & 1) == 0)
  {
    v44 = 1283;
    v42.__r_.__value_.__r.__words[2] = "mpsx.make_list";
    v43 = 14;
    v41 = 259;
    llvm::operator+(&v42, &v40, __dst);
    llvm::report_fatal_error(__dst, 1);
  }

  mlir::OperationState::OperationState(v48, v27, v29);
  mlir::mpsx::MakeListOp::build(a3, v48, v12, v14);
  v31 = mlir::OpBuilder::create(a3, v48);
  v32 = *(*(v31 + 48) + 16);
  mlir::OperationState::~OperationState(v48);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::mpsx::MakeListOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v36 = v33 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v36);

  return DefiningOp;
}

@end