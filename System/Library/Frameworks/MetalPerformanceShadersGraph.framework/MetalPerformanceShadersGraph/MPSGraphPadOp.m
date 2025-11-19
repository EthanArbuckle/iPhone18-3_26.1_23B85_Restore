@interface MPSGraphPadOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphPadOp

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  paddingMode = self->_paddingMode;
  v14 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
  v15 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:2];
  v16 = MEMORY[0x1E696AEC0];
  v17 = [(MPSGraphOperation *)self name];
  v18 = [v16 stringWithFormat:@"%@/%@/padGradient", v11, v17];
  v19 = [WeakRetained padGradientWithIncomingGradientTensor:v10 inputTensor:v9 paddingMode:paddingMode paddingTensor:v14 constantValuesTensor:v15 name:v18];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v28 = a7;
  mpsFileLoc("[MPSGraphPadOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", v29);
  v11 = v28;
  v35 = 260;
  v34[0] = v29;
  StringAttr = mlir::Builder::getStringAttr(a3, v34);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x3B9u, 0);
  if (v11)
  {
    v15 = [v11 UTF8String];
    v16 = strlen(v15);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v33 = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
    }

    v18 = &__dst + v17;
  }

  else
  {
    v33 = 7;
    qmemcpy(&__dst, "mps.pad", 7);
    v18 = &__dst + 7;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v13, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v20 = 1;
  HIBYTE(v35) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v34[0] = p_p;
    v20 = 3;
  }

  LOBYTE(v35) = v20;
  v21 = mlir::Builder::getStringAttr(a3, v34);
  v22 = mlir::NameLoc::get(v21, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v29[0]);
      v23 = *a5;
      v24 = *(a5 + 1);
      v25 = v24 - *a5;
      if (v25 == 16)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  else if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v30 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = *a5;
  v24 = *(a5 + 1);
  v25 = v24 - *a5;
  if (v25 == 16)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v24 == v23 || v25 <= 8)
  {
LABEL_25:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  LODWORD(__dst) = self->_paddingMode;
  v34[0] = mlir::OpBuilder::create<mlir::mps::PadOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::mps::PaddingMode>(a3, v22, v23, v23 + 1, v23 + 2, &__dst) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v34);

  return DefiningOp;
}

@end