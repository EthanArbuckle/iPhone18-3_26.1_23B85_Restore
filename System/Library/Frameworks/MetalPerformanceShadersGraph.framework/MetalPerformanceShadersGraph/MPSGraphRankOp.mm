@interface MPSGraphRankOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphRankOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphRankOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", v26);
  v11 = nameCopy;
  v33 = 260;
  v32[0] = v26;
  StringAttr = mlir::Builder::getStringAttr(builder, v32);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x536u, 0);
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

    v31 = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    v18 = (&__dst + v17);
  }

  else
  {
    v31 = 8;
    __dst = 0x6B6E61722E73706DLL;
    v18 = &v30;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &__p);
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
  v21 = mlir::Builder::getStringAttr(builder, v32);
  v22 = mlir::NameLoc::get(v21, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v31 & 0x80000000) == 0)
    {
LABEL_16:

      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v26[0]);
      v23 = *values;
      if (*(values + 1) != *values)
      {
        goto LABEL_18;
      }

LABEL_22:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);

  if (v27 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = *values;
  if (*(values + 1) == *values)
  {
    goto LABEL_22;
  }

LABEL_18:
  v32[0] = mlir::OpBuilder::create<mlir::mps::RankOp,mlir::Value &>(builder, v22, v23) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v32);

  return DefiningOp;
}

@end