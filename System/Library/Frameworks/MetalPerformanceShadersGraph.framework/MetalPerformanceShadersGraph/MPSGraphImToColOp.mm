@interface MPSGraphImToColOp
- (MPSGraphImToColOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphImToColOp

- (MPSGraphImToColOp)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies descriptor:(id)descriptor name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  descriptorCopy = descriptor;
  nameCopy = name;
  v17 = [descriptorCopy copy];
  imToColDesc = self->_imToColDesc;
  self->_imToColDesc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:graphCopy inputTensors:tensorsCopy controlDependencies:dependenciesCopy name:nameCopy];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphImToColOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphImToColOps.mm", __p);
  v10 = nameCopy;
  v31 = 260;
  v30[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v30);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x85u, 0);
  if (v10)
  {
    v14 = v10;
    uTF8String = [v10 UTF8String];
    v16 = strlen(uTF8String);
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
      memmove(__dst, uTF8String, v16);
    }

    v18 = &__dst[v17];
  }

  else
  {
    v29 = 13;
    qmemcpy(__dst, "mps.im_to_col", sizeof(__dst));
    v18 = v28;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v12, &v26);
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
  v21 = mlir::Builder::getStringAttr(builder, v30);
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

  [(MPSGraphImToColOpDescriptor *)self->_imToColDesc kernelHeight];
  [(MPSGraphImToColOpDescriptor *)self->_imToColDesc kernelWidth];
  operator new();
}

@end