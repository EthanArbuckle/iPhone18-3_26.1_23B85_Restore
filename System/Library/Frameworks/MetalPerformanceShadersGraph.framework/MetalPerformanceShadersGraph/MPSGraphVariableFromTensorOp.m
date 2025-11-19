@interface MPSGraphVariableFromTensorOp
- (MPSGraphVariableFromTensorOp)initWithGraph:(id)a3 tensor:(id)a4 name:(id)a5;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphVariableFromTensorOp

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v10 = a7;
  mpsFileLoc("[MPSGraphVariableFromTensorOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphVariableFromTensorOp.mm", v25);
  v11 = v10;
  v31 = 260;
  v30[0] = v25;
  StringAttr = mlir::Builder::getStringAttr(a3, v30);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x1Du, 0);
  if (!v11)
  {
    operator new();
  }

  v14 = [v11 UTF8String];
  v15 = strlen(v14);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v29) = v15;
  if (v15)
  {
    memmove(&__dst, v14, v15);
  }

  *(&__dst + v17) = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v16, &__p);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v19 = 1;
  HIBYTE(v31) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v30[0] = p_p;
    v19 = 3;
  }

  LOBYTE(v31) = v19;
  v20 = mlir::Builder::getStringAttr(a3, v30);
  v21 = mlir::NameLoc::get(v20, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_15:

      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      operator delete(v25[0]);
      v22 = *a5;
      if (*(a5 + 1) != *a5)
      {
        goto LABEL_17;
      }

LABEL_21:
      std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
    }
  }

  else if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst);

  if (v26 < 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v22 = *a5;
  if (*(a5 + 1) == *a5)
  {
    goto LABEL_21;
  }

LABEL_17:
  v30[0] = mlir::OpBuilder::create<mlir::mps::VariableFromTensorOp,mlir::Value>(a3, v21, v22) - 16;
  DefiningOp = mlir::Value::getDefiningOp(v30);

  return DefiningOp;
}

- (MPSGraphVariableFromTensorOp)initWithGraph:(id)a3 tensor:(id)a4 name:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14.receiver = self;
  v14.super_class = MPSGraphVariableFromTensorOp;
  v12 = [(MPSGraphOperation *)&v14 initWithGraph:v8 inputTensors:v11 controlDependencies:MEMORY[0x1E695E0F0] name:v10];

  return v12;
}

@end