@interface MPSGraphScatterOp
- (MPSGraphScatterOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 axis:(int64_t)a6 mode:(int64_t)a7 name:(id)a8;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphScatterOp

- (MPSGraphScatterOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 axis:(int64_t)a6 mode:(int64_t)a7 name:(id)a8
{
  self->_axis = a6;
  self->_mode = a7;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a8];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v27 = a7;
  mpsFileLoc("[MPSGraphScatterOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphScatterOps.mm", v28);
  v11 = v27;
  v35 = 260;
  v34[0] = v28;
  StringAttr = mlir::Builder::getStringAttr(a3, v34);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xBEu, 0);
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
      memmove(__dst, v15, v16);
    }

    v18 = &__dst[v17];
  }

  else
  {
    v33 = 11;
    qmemcpy(__dst, "mps.scatter", sizeof(__dst));
    v18 = v32;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &__p);
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

      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v28[0]);
      v23 = *a5;
      v24 = *(a5 + 1) - *a5;
      if (!v24)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);

  if (v29 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = *a5;
  v24 = *(a5 + 1) - *a5;
  if (!v24)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v24 <= 0x1F)
  {
    goto LABEL_24;
  }

  *__dst = self->_mode;
  v34[0] = mlir::OpBuilder::create<mlir::mps::ScatterOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::mps::ScatterMode>(a3, v22, v23, v23 + 1, v23 + 2, v23 + 3, __dst) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MPSGraphOperation *)self inputTensors];
  v13 = [v12 objectAtIndexedSubscript:0];
  if (v13 == v9)
  {
    mode = self->_mode;

    if (!mode)
    {
      v18 = v10;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v15 = [(MPSGraphOperation *)self inputTensors];
  v16 = [v15 objectAtIndexedSubscript:1];
  if (v16 != v9)
  {

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v17 = self->_mode;

  if (v17)
  {
    goto LABEL_7;
  }

  v20 = v10;
  v21 = [(MPSGraphOperation *)self inputTensors];
  v22 = [v21 objectAtIndexedSubscript:2];

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  axis = self->_axis;
  v25 = MEMORY[0x1E696AEC0];
  v26 = [(MPSGraphOperation *)self name];
  v27 = [v25 stringWithFormat:@"%@/%@/gather", v11, v26];
  v18 = [WeakRetained gatherWithUpdatesTensor:v20 indicesTensor:v22 axis:axis batchDimensions:0 name:v27];

LABEL_8:

  return v18;
}

@end