@interface MPSGraphL2NormPool4DGradientOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphL2NormPool4DGradientOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphL2NormPool4DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  v11 = nameCopy;
  v31 = 260;
  v30[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v30);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x371u, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  uTF8String = [v11 UTF8String];
  v16 = strlen(uTF8String);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v29) = v16;
  if (v16)
  {
    memmove(&__dst, uTF8String, v16);
  }

  *(&__dst + v18) = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v17, &v27);
  v19 = v27.__r_.__value_.__r.__words[0];
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v27;
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
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(values + 1) - *values > 8uLL)
  {
    kernelSizes = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(kernelSizes, builder);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end