@interface MPSGraphCallOp
- (MPSGraphCallOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies outputTypes:(id)types symbolName:(id)name inliningOption:(unint64_t)option name:(id)a9;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphCallOp

- (MPSGraphCallOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies outputTypes:(id)types symbolName:(id)name inliningOption:(unint64_t)option name:(id)a9
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  typesCopy = types;
  nameCopy = name;
  v19 = a9;
  array = [MEMORY[0x1E695DF70] array];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__MPSGraphCallOp_initWithGraph_inputTensors_controlDependencies_outputTypes_symbolName_inliningOption_name___block_invoke;
  v25[3] = &unk_1E86D4CE8;
  v21 = array;
  v26 = v21;
  [typesCopy enumerateObjectsUsingBlock:v25];
  objc_storeStrong(&self->_outputTypes, array);
  objc_storeStrong(&self->_symbolName, name);
  self->_inliningOption = option;
  v22 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:v19];

  return v22;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v58 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphCallOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphCallOp.mm", __p);
  v12 = nameCopy;
  v54 = 260;
  v53[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v53);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x47u, 0);
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

    HIBYTE(v41) = v18;
    if (v18)
    {
      memmove(&__dst, uTF8String, v18);
    }

    v20 = (&__dst + v19);
  }

  else
  {
    HIBYTE(v41) = 8;
    __dst = 0x6C6C61632E73706DLL;
    v20 = &p_dst;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v14, &v57);
  v21 = v57.__r_.__value_.__r.__words[0];
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v57;
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
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  __dst = 0;
  p_dst = &__dst;
  v41 = 0x4812000000;
  v42 = __Block_byref_object_copy__3;
  v43 = __Block_byref_object_dispose__3;
  v44 = &unk_1E0AB8473;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v25 = [(NSArray *)self->_outputTypes count];
  if (v25 > (v47 - v45) >> 3)
  {
    if (!(v25 >> 61))
    {
      operator new();
    }

    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  outputTypes = self->_outputTypes;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __86__MPSGraphCallOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke;
  v38[3] = &unk_1E86D4D10;
  v38[4] = &__dst;
  v38[5] = builder;
  [(NSArray *)outputTypes enumerateObjectsUsingBlock:v38];
  v27 = p_dst;
  uTF8String2 = [(NSString *)self->_symbolName UTF8String];
  inliningOption = self->_inliningOption;
  if (inliningOption >= 3)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    LODWORD(inliningOption) = 0;
  }

  v50 = v24;
  Context = mlir::Attribute::getContext(&v50);
  v31 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id, Context);
  if ((v32 & 1) == 0)
  {
    v56 = 1283;
    v55[2] = "mps.call";
    v55[3] = 8;
    v52 = 259;
    llvm::operator+(v55, &v51, &v57);
    llvm::report_fatal_error(&v57, 1);
  }

  mlir::OperationState::OperationState(v53, v24, v31);
  mlir::ValueRange::ValueRange(&v57, v27[6], (v27[7] - v27[6]) >> 3);
  mlir::ValueRange::ValueRange(v55, *values, (*(values + 1) - *values) >> 3);
  if (uTF8String2)
  {
    v33 = strlen(uTF8String2);
  }

  else
  {
    v33 = 0;
  }

  mlir::mps::CallOp::build(builder, v53, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_, v55[0], v55[1], uTF8String2, v33, inliningOption);
  v34 = mlir::OpBuilder::create(builder, v53);
  v35 = *(*(v34 + 48) + 16);
  mlir::OperationState::~OperationState(v53);
  _Block_object_dispose(&__dst, 8);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v35 == &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

void __86__MPSGraphCallOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = **(a1 + 40);
  v6 = [v3 shape];
  v7 = [v3 dataType];
  v8 = v6;
  MLIRElementType = getMLIRElementType(v5, v7);
  MLIRType = getMLIRType(v8, MLIRElementType);
  v12 = v11;

  v13[0] = MLIRType;
  v13[1] = v12;
  std::vector<mlir::Type>::push_back[abi:ne200100](v4 + 48, v13);
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

@end