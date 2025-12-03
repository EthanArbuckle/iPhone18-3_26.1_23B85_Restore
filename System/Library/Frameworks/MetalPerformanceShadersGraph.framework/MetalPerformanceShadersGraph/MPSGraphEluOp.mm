@interface MPSGraphEluOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphEluOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v46 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphEluOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphEluActivationOp.mm", __p);
  v11 = nameCopy;
  v45 = 260;
  v44[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v44);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x1Du, 0);
  if (v11)
  {
    v15 = v11;
    uTF8String = [v11 UTF8String];
    v17 = strlen(uTF8String);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    v43 = v17;
    if (v17)
    {
      memmove(&__dst, uTF8String, v17);
    }

    v19 = &__dst + v18;
  }

  else
  {
    v43 = 7;
    qmemcpy(&__dst, "mps.elu", 7);
    v19 = &__dst + 7;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &v39);
  v20 = v39.__r_.__value_.__r.__words[0];
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v39;
  }

  v21 = 1;
  HIBYTE(v45) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v44[0] = v20;
    v21 = 3;
  }

  LOBYTE(v45) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v44);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *values;
  if (*(values + 1) - *values <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v36 = v23;
  Context = mlir::Attribute::getContext(&v36);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::EluOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v41 = 1283;
    v39.__r_.__value_.__r.__words[2] = "mps.elu";
    v40 = 7;
    v38 = 259;
    llvm::operator+(&v39, &v37, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v44, v23, v26);
  mlir::mps::ATan2Op::build(builder, v44, *v24, v24[1]);
  v28 = mlir::OpBuilder::create(builder, v44);
  v29 = *(*(v28 + 48) + 16);
  mlir::OperationState::~OperationState(v44);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::mps::EluOp,void>::id)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v33 = v30 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v33);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v40 = tensorCopy;
  inputTensors = [(MPSGraphOperation *)self inputTensors];
  [inputTensors objectAtIndexedSubscript:0];

  inputTensors2 = [(MPSGraphOperation *)self inputTensors];
  v14 = [inputTensors2 objectAtIndexedSubscript:0];

  if (v14 != tensorCopy && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v16 = [WeakRetained constantWithScalar:&unk_1F5B77978 shape:objc_msgSend(tensorCopy dataType:{"dataType"), 0.0}];

  v17 = objc_loadWeakRetained(&self->super._graph);
  v38 = v16;
  v18 = [v17 constantWithScalar:&unk_1F5B77990 shape:objc_msgSend(tensorCopy dataType:{"dataType"), 1.0}];

  v19 = objc_loadWeakRetained(&self->super._graph);
  v39 = v18;
  if (nameCopy)
  {
    v20 = [nameCopy stringByAppendingString:@"/lessThanOrEqualTo"];
  }

  else
  {
    v20 = @"eluGrad/lessThanOrEqualTo";
  }

  v37 = [v19 greaterThanWithPrimaryTensor:tensorCopy secondaryTensor:v16 name:v20];
  if (nameCopy)
  {
  }

  v21 = objc_loadWeakRetained(&self->super._graph);
  outputTensors = [(MPSGraphOperation *)self outputTensors];
  v23 = [outputTensors objectAtIndexedSubscript:0];
  inputTensors3 = [(MPSGraphOperation *)self inputTensors];
  v25 = [inputTensors3 objectAtIndexedSubscript:1];
  if (nameCopy)
  {
    v26 = [nameCopy stringByAppendingString:@"/negativeRegionGradient"];
  }

  else
  {
    v26 = @"eluGrad/negativeRegionGradient";
  }

  v27 = [v21 additionWithPrimaryTensor:v23 secondaryTensor:v25 name:v26];
  if (nameCopy)
  {
  }

  v28 = objc_loadWeakRetained(&self->super._graph);
  if (nameCopy)
  {
    v29 = v39;
    v30 = v37;
    v31 = [nameCopy stringByAppendingString:@"/localGradient"];
  }

  else
  {
    v31 = @"eluGrad/localGradient";
    v29 = v39;
    v30 = v37;
  }

  v32 = [v28 selectWithPredicateTensor:v30 truePredicateTensor:v29 falsePredicateTensor:v27 name:v31];
  if (nameCopy)
  {

    v33 = objc_loadWeakRetained(&self->super._graph);
    v34 = [nameCopy stringByAppendingString:@"/select"];
  }

  else
  {

    v33 = objc_loadWeakRetained(&self->super._graph);
    v34 = @"eluGrad/multiplication";
  }

  v35 = [v33 multiplicationWithPrimaryTensor:gradientCopy secondaryTensor:v32 name:v34];
  if (nameCopy)
  {
  }

  return v35;
}

@end