@interface MPSGraphL2NormPool4DGradientOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphL2NormPool4DGradientOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = a7;
  mpsFileLoc("[MPSGraphL2NormPool4DGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  v11 = v23;
  v31 = 260;
  v30[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v30);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x371u, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  v15 = [v11 UTF8String];
  v16 = strlen(v15);
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
    memmove(&__dst, v15, v16);
  }

  *(&__dst + v18) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v17, &v27);
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
  v21 = mlir::Builder::getStringAttr(a3, v30);
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

  if (*(a5 + 1) - *a5 > 8uLL)
  {
    v24 = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(v24, a3);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end