@interface MPSGraphStencilOp
- (MPSGraphStencilOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphStencilOp

- (MPSGraphStencilOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v15 copy];
  desc = self->_desc;
  self->_desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:v12 inputTensors:v13 controlDependencies:v14 name:v16];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = a7;
  mpsFileLoc("[MPSGraphStencilOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphStencilOps.mm", __p);
  v11 = v25;
  v30 = 260;
  v29 = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, &v29);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x90u, 0);
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

    v33 = v17;
    if (v17)
    {
      memmove(__dst, v16, v17);
    }

    v19 = &__dst[v18];
  }

  else
  {
    v33 = 11;
    qmemcpy(__dst, "mps.stencil", sizeof(__dst));
    v19 = v32;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &v28);
  v20 = v28.__r_.__value_.__r.__words[0];
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v28;
  }

  v21 = 1;
  HIBYTE(v30) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v29 = v20;
    v21 = 3;
  }

  LOBYTE(v30) = v21;
  v22 = mlir::Builder::getStringAttr(a3, &v29);
  mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a5 + 1) - *a5 > 8uLL)
  {
    v23 = [(MPSGraphStencilOpDescriptor *)self->_desc offsets];
    mlir::Builder::getIntegerType(a3, 64, 1);
    [v23 count];
    operator new();
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end