@interface MPSGraphAssignVariableOp
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphAssignVariableOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphAssignVariableOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphMemoryOps.mm", v27);
  v11 = v10;
  v33 = 260;
  v32[0] = v27;
  StringAttr = mlir::Builder::getStringAttr(a3, v32);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x12Bu, 0);
  if (v11)
  {
    v15 = [v11 UTF8String];
    v16 = strlen(v15);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v31[4] = v16;
    if (v16)
    {
      memmove(__dst, v15, v16);
    }

    v18 = &__dst[v17];
  }

  else
  {
    v31[4] = 19;
    qmemcpy(__dst, "mps.assign_variable", sizeof(__dst));
    v18 = v31;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, __dst, v13, &__p);
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
  v21 = mlir::Builder::getStringAttr(a3, v32);
  v22 = mlir::NameLoc::get(v21, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v31[4] & 0x80000000) == 0)
    {
LABEL_16:

      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      operator delete(v27[0]);
      v23 = *a5;
      v24 = *(a5 + 1) - *a5;
      if (!v24)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else if ((v31[4] & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*__dst);

  if (v28 < 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = *a5;
  v24 = *(a5 + 1) - *a5;
  if (!v24)
  {
LABEL_24:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_22:
  if (v24 <= 8)
  {
    goto LABEL_24;
  }

  v25 = mlir::OpBuilder::create<mlir::mps::AssignVariableOp,mlir::OpResult,mlir::Value &>(a3, v22, v23, v23 + 1);

  return v25;
}

@end