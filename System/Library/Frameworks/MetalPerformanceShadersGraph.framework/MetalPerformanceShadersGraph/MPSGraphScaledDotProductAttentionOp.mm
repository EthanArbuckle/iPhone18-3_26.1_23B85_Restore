@interface MPSGraphScaledDotProductAttentionOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphScaledDotProductAttentionOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphScaledDotProductAttentionOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMatrixMultiplicationOps.mm", v27);
  v11 = nameCopy;
  v35 = 260;
  v34[0] = v27;
  StringAttr = mlir::Builder::getStringAttr(builder, v34);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x8Du, 0);
  if (v11)
  {
    uTF8String = [v11 UTF8String];
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

    v33 = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    v18 = (&__dst + v17);
  }

  else
  {
    v33 = 12;
    v31 = 1634755699;
    __dst = *"mps_spi.sdpa";
    v18 = &v32;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &__p);
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
  v21 = mlir::Builder::getStringAttr(builder, v34);
  v22 = mlir::NameLoc::get(v21, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v33 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v27[0]);
      v23 = *values;
      v24 = *(values + 1) - *values;
      if (!v24)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }
  }

  else if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v28 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = *values;
  v24 = *(values + 1) - *values;
  if (!v24)
  {
    goto LABEL_27;
  }

LABEL_22:
  if ((v24 >> 3) < 2 || v24 == 16 || v24 == 32 || (v24 >> 3) <= 3)
  {
LABEL_27:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v34[0] = mlir::OpBuilder::create<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::Value,mlir::Value,mlir::Value,mlir::Value&,mlir::Value&>(builder, v22, v23, v23 + 1, v23 + 2, v23 + 3, v23 + 4) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v34);

  return DefiningOp;
}

@end