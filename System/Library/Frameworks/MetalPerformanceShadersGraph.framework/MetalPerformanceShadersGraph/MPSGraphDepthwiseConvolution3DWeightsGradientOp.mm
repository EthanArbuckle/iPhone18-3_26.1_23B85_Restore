@interface MPSGraphDepthwiseConvolution3DWeightsGradientOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphDepthwiseConvolution3DWeightsGradientOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = a7;
  mpsFileLoc("[MPSGraphDepthwiseConvolution3DWeightsGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphDepthwiseConvolutionOps.mm", __p);
  v11 = v25;
  v33 = 260;
  v32[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v32);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x238u, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = v11;
  v15 = v11;
  v16 = [v11 UTF8String];
  v17 = strlen(v16);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v31) = v17;
  if (v17)
  {
    memmove(&__dst, v16, v17);
  }

  *(&__dst + v19) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v18, &v29);
  v20 = v29.__r_.__value_.__r.__words[0];
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v29;
  }

  v21 = 1;
  HIBYTE(v33) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v32[0] = v20;
    v21 = 3;
  }

  LOBYTE(v33) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v32);
  mlir::NameLoc::get(v22, v13);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);
LABEL_15:

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = *(a5 + 1) - *a5;
  if (v23 > 8 && v23 != 16)
  {
    v26 = [(MPSGraphDepthwiseConvolution3DOpDescriptor *)self->super._desc strides];
    nsArrayToAttr(v26, a3);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

@end