@interface MPSGraphMakeListOp
- (MPSGraphMakeListOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies elementType:(id)type maxSize:(id)size name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphMakeListOp

- (MPSGraphMakeListOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies elementType:(id)type maxSize:(id)size name:(id)name
{
  typeCopy = type;
  sizeCopy = size;
  objc_storeStrong(&self->_elementType, type);
  nameCopy = name;
  dependenciesCopy = dependencies;
  tensorsCopy = tensors;
  graphCopy = graph;
  maxSize = self->_maxSize;
  self->_maxSize = sizeCopy;

  v21 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v21;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v50 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  MLIRType = getMLIRType(*builder, self->_elementType);
  v12 = mlir::TypeAttr::get(MLIRType);
  if (self->_maxSize)
  {
    v13 = mlir::IntegerType::get(*builder, 32, 2u);
    v14 = mlir::IntegerAttr::get(v13, [(NSNumber *)self->_maxSize unsignedLongValue]);
  }

  else
  {
    v14 = 0;
  }

  mpsFileLoc("[MPSGraphMakeListOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphListOps.mm", __p);
  v15 = nameCopy;
  v49 = 260;
  v48[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v48);
  v18 = mlir::FileLineColLoc::get(StringAttr, 0x45u, 0);
  if (v15)
  {
    v19 = v15;
    uTF8String = [v15 UTF8String];
    v21 = strlen(uTF8String);
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
      memmove(__dst, uTF8String, v21);
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
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v17, &v42);
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
  v26 = mlir::Builder::getStringAttr(builder, v48);
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
  mlir::mpsx::MakeListOp::build(builder, v48, v12, v14);
  v31 = mlir::OpBuilder::create(builder, v48);
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