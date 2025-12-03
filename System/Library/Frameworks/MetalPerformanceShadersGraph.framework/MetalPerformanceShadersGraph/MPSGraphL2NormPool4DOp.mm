@interface MPSGraphL2NormPool4DOp
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphL2NormPool4DOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  mpsFileLoc("[MPSGraphL2NormPool4DOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphPoolingOps.mm", __p);
  v11 = nameCopy;
  v32 = 260;
  v31[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(builder, v31);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x34Bu, 0);
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

    v30[4] = v17;
    if (v17)
    {
      memmove(__dst, uTF8String, v17);
    }

    v19 = &__dst[v18];
  }

  else
  {
    v30[4] = 19;
    qmemcpy(__dst, "mps.pooling_l2_norm", sizeof(__dst));
    v19 = v30;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, __dst, v13, &v28);
  v20 = v28.__r_.__value_.__r.__words[0];
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v28;
  }

  v21 = 1;
  HIBYTE(v32) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v31[0] = v20;
    v21 = 3;
  }

  LOBYTE(v32) = v21;
  v22 = mlir::Builder::getStringAttr(builder, v31);
  mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((v30[4] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v30[4] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);
LABEL_16:

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  [(MPSGraphPooling4DOpDescriptor *)self->super._desc returnIndicesDataType];
  if (*(values + 1) != *values)
  {
    kernelSizes = [(MPSGraphPooling4DOpDescriptor *)self->super._desc kernelSizes];
    nsArrayToAttr(kernelSizes, builder);
  }

  std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  tensorCopy = tensor;
  gradientCopy = gradient;
  nameCopy = name;
  v12 = MEMORY[0x1E696AEC0];
  name = [(MPSGraphOperation *)self name];
  v14 = [v12 stringWithFormat:@"%@/%@/L2NormPool4DGradient", nameCopy, name];

  WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
  v16 = [WeakRetained L2NormPooling4DGradientWithGradientTensor:gradientCopy sourceTensor:tensorCopy descriptor:self->super._desc name:v14];

  return v16;
}

@end