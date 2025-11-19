@interface MPSGraphStridedSliceOp
- (MPSGraphStridedSliceOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 startMask:(unsigned int)a6 endMask:(unsigned int)a7 shrinkAxisMask:(unsigned int)a8 endIsSize:(BOOL)a9 name:(id)a10;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphStridedSliceOp

- (MPSGraphStridedSliceOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 startMask:(unsigned int)a6 endMask:(unsigned int)a7 shrinkAxisMask:(unsigned int)a8 endIsSize:(BOOL)a9 name:(id)a10
{
  self->_begin_mask = a6;
  self->_end_mask = a7;
  self->_shrink_axis_mask = a8;
  self->_end_is_size = a9;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a10];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v33 = a7;
  mpsFileLoc("[MPSGraphStridedSliceOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v11 = v33;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v46);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x208u, 0);
  if (v11)
  {
    v15 = v11;
    v16 = [v11 UTF8String];
    v17 = strlen(v16);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    v45[6] = v17;
    if (v17)
    {
      memmove(&__dst, v16, v17);
    }

    v19 = &__dst + v18;
  }

  else
  {
    v45[6] = 17;
    v44 = 101;
    __dst = *"mps.strided_slice";
    v19 = v45;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v13, &v40);
  v20 = v40.__r_.__value_.__r.__words[0];
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v40;
  }

  v21 = 1;
  HIBYTE(v47) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v46[0] = v20;
    v21 = 3;
  }

  LOBYTE(v47) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v46);
  v23 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v45[6] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v45[6] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v24 = *a5;
  if (*(a5 + 1) - *a5 < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v23;
  Context = mlir::Attribute::getContext(&v37);
  v26 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, Context);
  if ((v27 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.strided_slice";
    v41 = 17;
    v39 = 259;
    llvm::operator+(&v40, &v38, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v23, v26);
  mlir::mps::StridedSliceOp::build(a3, v46, *v24, v24[1], v24[2], v24[3], self->_begin_mask, self->_end_mask, self->_shrink_axis_mask, self->_end_is_size);
  v28 = mlir::OpBuilder::create(a3, v46);
  v29 = *(*(v28 + 48) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v34 = v30 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v13 = [WeakRetained shapeOfTensor:v9 name:@"in shape"];

  end_is_size = self->_end_is_size;
  v15 = objc_loadWeakRetained(&self->super._graph);
  v16 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
  [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
  if (end_is_size)
    v17 = {;
    v18 = [v15 sliceGradientTensor:v10 fwdInShapeTensor:v13 startTensor:v16 sizeTensor:v17 squeezeMask:self->_shrink_axis_mask name:v11];
  }

  else
    v17 = {;
    v19 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:3];
    v18 = [v15 sliceGradientTensor:v10 fwdInShapeTensor:v13 startTensor:v16 endTensor:v17 strideTensor:v19 startMask:self->_begin_mask endMask:*&self->_end_mask squeezeMask:v11 name:?];
  }

  return v18;
}

@end