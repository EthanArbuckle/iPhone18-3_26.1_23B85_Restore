@interface MPSGraphStencilOp
- (MPSGraphStencilOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphStencilOp

- (MPSGraphStencilOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  v17 = [descriptorCopy copy];
  desc = self->_desc;
  self->_desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphStencilOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphStencilOps.mm", __p);
  v11 = nameCopy;
  v30 = 260;
  v29 = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, &v29);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x90u, 0);
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

    v33 = v17;
    if (v17)
    {
      memmove(__dst, uTF8String, v17);
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
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v13, &v28);
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
  v22 = mlir::Builder::getStringAttr(builder, &v29);
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

  if (*(values + 1) - *values > 8uLL)
  {
    offsets = [(MPSGraphStencilOpDescriptor *)self->_desc offsets];
    mlir::Builder::getIntegerType(builder, 64, 1);
    [offsets count];
    operator new();
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end