@interface MPSGraphReverseOp
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphReverseOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphReverseOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", v29);
  v11 = v10;
  v36 = 260;
  v35[0] = v29;
  StringAttr = mlir::Builder::getStringAttr(a3, v35);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xC18u, 0);
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

    v34 = v16;
    if (v16)
    {
      memmove(__dst, v15, v16);
    }

    v18 = &__dst[v17];
  }

  else
  {
    v34 = 11;
    qmemcpy(__dst, "mps.reverse", sizeof(__dst));
    v18 = v33;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v20 = 1;
  HIBYTE(v36) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v35[0] = p_p;
    v20 = 3;
  }

  LOBYTE(v36) = v20;
  v21 = mlir::Builder::getStringAttr(a3, v35);
  v22 = mlir::NameLoc::get(v21, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
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
      if (v25 == 8)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);

  if (v30 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = *a5;
  v24 = *(a5 + 1);
  v25 = v24 - *a5;
  if (v25 == 8)
  {
LABEL_18:
    v26 = mlir::OpBuilder::create<mlir::mps::ReverseOp,mlir::Value &>(a3, v22, v23);
    goto LABEL_25;
  }

LABEL_22:
  if (v24 == v23 || v25 <= 8)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = mlir::OpBuilder::create<mlir::mps::ReverseOp,mlir::Value &,mlir::Value &>(a3, v22, v23, v23 + 1);
LABEL_25:
  v35[0] = v26 - 16;
  DefiningOp = mlir::Value::getDefiningOp(v35);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (a5)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(NSArray *)self->super._inputTensors count];
    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v14 = WeakRetained;
    if (v12 < 2)
    {
      v11 = [WeakRetained reverseTensor:v9 name:v10];
    }

    else
    {
      v15 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:1];
      v11 = [v14 reverseTensor:v9 axesTensor:v15 name:v10];
    }
  }

  return v11;
}

@end