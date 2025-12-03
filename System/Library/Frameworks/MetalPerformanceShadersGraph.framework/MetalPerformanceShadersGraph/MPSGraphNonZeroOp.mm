@interface MPSGraphNonZeroOp
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
@end

@implementation MPSGraphNonZeroOp

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  nameCopy = name;
  mpsFileLoc("[MPSGraphNonZeroOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphNonZeroOps.mm", v26);
  v11 = nameCopy;
  v34 = 260;
  v33[0] = v26;
  StringAttr = mlir::Builder::getStringAttr(builder, v33);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x1Cu, 0);
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

    v32 = v16;
    if (v16)
    {
      memmove(&__dst, uTF8String, v16);
    }

    v18 = (&__dst + v17);
  }

  else
  {
    v32 = 12;
    v30 = 1869768058;
    __dst = *"mps.non_zero";
    v18 = &v31;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(table, &__dst, v13, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v20 = 1;
  HIBYTE(v34) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v33[0] = p_p;
    v20 = 3;
  }

  LOBYTE(v34) = v20;
  v21 = mlir::Builder::getStringAttr(builder, v33);
  v22 = mlir::NameLoc::get(v21, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v32 & 0x80000000) == 0)
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

  else if ((v32 & 0x80000000) == 0)
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
  v24 = mlir::OpBuilder::create<mlir::mps::NonZeroOp,mlir::Value &>(builder, v22, v23);

  return v24;
}

@end