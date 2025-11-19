@interface MPSGraphColToImOp
- (MPSGraphColToImOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 outputShape:(id)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphColToImOp

- (MPSGraphColToImOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 outputShape:(id)a7 name:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v17 copy];
  colToImDesc = self->_colToImDesc;
  self->_colToImDesc = v20;

  v22 = [v18 copy];
  shape = self->_shape;
  self->_shape = v22;

  v24 = [(MPSGraphOperation *)self initWithGraph:v14 inputTensors:v15 controlDependencies:v16 name:v19];
  return v24;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = a7;
  mpsFileLoc("[MPSGraphColToImOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphImToColOps.mm", __p);
  v10 = v23;
  v31 = 260;
  v30[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v30);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0xBEu, 0);
  if (v10)
  {
    v14 = v10;
    v15 = [v10 UTF8String];
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

    v29 = v16;
    if (v16)
    {
      memmove(__dst, v15, v16);
    }

    v18 = &__dst[v17];
  }

  else
  {
    v29 = 13;
    qmemcpy(__dst, "mps.col_to_im", sizeof(__dst));
    v18 = v28;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v12, &v26);
  v19 = v26.__r_.__value_.__r.__words[0];
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v26;
  }

  v20 = 1;
  HIBYTE(v31) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    v30[0] = v19;
    v20 = 3;
  }

  LOBYTE(v31) = v20;
  v21 = mlir::Builder::getStringAttr(a3, v30);
  mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  [(MPSGraphImToColOpDescriptor *)self->_colToImDesc kernelHeight];
  [(MPSGraphImToColOpDescriptor *)self->_colToImDesc kernelWidth];
  operator new();
}

@end