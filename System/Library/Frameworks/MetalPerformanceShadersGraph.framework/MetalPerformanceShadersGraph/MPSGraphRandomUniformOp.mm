@interface MPSGraphRandomUniformOp
- (MPSGraphRandomUniformOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphRandomUniformOp

- (MPSGraphRandomUniformOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  LODWORD(self->_maximum) = [v15 dataType];
  [v15 min];
  *(&self->_minimum + 1) = v17;
  [v15 max];
  self->_minimum = v18;
  self->_minInteger = [v15 minInteger];
  self->_maxInteger = [v15 maxInteger];
  v19 = [(MPSGraphOperation *)self initWithGraph:v12 inputTensors:v13 controlDependencies:v14 name:v16];

  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v25 = a7;
  mpsFileLoc("[MPSGraphRandomUniformOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRandomOps.mm", v26);
  v11 = v25;
  v33 = 260;
  v32[0] = v26;
  StringAttr = mlir::Builder::getStringAttr(a3, v32);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0xEEu, 0);
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

    v31[5] = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
    }

    v18 = &__dst + v17;
  }

  else
  {
    v31[5] = 18;
    v30 = 28018;
    __dst = *"mps.random_uniform";
    v18 = v31;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v13, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v20 = 1;
  HIBYTE(v33) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v32[0] = p_p;
    v20 = 3;
  }

  LOBYTE(v33) = v20;
  v21 = mlir::Builder::getStringAttr(a3, v32);
  v22 = mlir::NameLoc::get(v21, v14);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v31[5] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    operator delete(__dst);

    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v31[5] & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:

  if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_21:
  operator delete(v26[0]);
LABEL_17:
  v32[0] = getMLIRElementType(*a3, LODWORD(self->_maximum));
  if (*(a5 + 1) - *a5 < 0x20uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  *&__dst = mlir::OpBuilder::create<mlir::mps::RandomUniformOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Type &>(a3, v22, *a5, (*a5 + 8), (*a5 + 16), (*a5 + 24), v32) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&__dst);

  return DefiningOp;
}

@end