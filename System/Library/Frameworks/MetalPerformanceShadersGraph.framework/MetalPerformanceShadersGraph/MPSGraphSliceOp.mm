@interface MPSGraphSliceOp
- (MPSGraphSliceOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dimension:(unint64_t)a6 start:(int64_t)a7 length:(int64_t)a8 name:(id)a9;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphSliceOp

- (MPSGraphSliceOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dimension:(unint64_t)a6 start:(int64_t)a7 length:(int64_t)a8 name:(id)a9
{
  self->_dimensionIndex = a6;
  self->_start = a7;
  self->_length = a8;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a9];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphSliceOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v12 = v11;
  v48 = 260;
  v47[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v47);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x16Bu, 0);
  if (v12)
  {
    v16 = v12;
    v17 = [v12 UTF8String];
    v18 = strlen(v17);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v46 = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    v46 = 9;
    v44 = 101;
    __dst = *"mps.slice";
    v20 = v45;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v14, &v40);
  v21 = v40.__r_.__value_.__r.__words[0];
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v40;
  }

  v22 = 1;
  HIBYTE(v48) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v47[0] = v21;
    v22 = 3;
  }

  LOBYTE(v48) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v47);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *a5;
  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v24;
  Context = mlir::Attribute::getContext(&v37);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.slice";
    v41 = 9;
    v39 = 259;
    llvm::operator+(&v40, &v38, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v47, v24, v27);
  mlir::mps::SliceOp::build(a3, v47, *v25, self->_dimensionIndex, self->_start, self->_length);
  v29 = mlir::OpBuilder::create(a3, v47);
  v30 = *(*(v29 + 48) + 16);
  mlir::OperationState::~OperationState(v47);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  v34 = v31 - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v34);

  return DefiningOp;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v9 = a3;
  v10 = a4;
  v33 = a6;
  dimensionIndex = self->_dimensionIndex;
  if (dimensionIndex < 0)
  {
    v12 = [v9 shape];
    dimensionIndex = self->_dimensionIndex + [v12 count];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  v32 = v10;
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = 0;
  while (1)
  {
    v16 = [v9 shape];
    v17 = [v16 count];

    if (v15 >= v17)
    {
      break;
    }

    if (dimensionIndex == v15)
    {
      v18 = [v9 shape];
      v19 = [v18 objectAtIndexedSubscript:dimensionIndex];
      v20 = [v19 integerValue];

      if (v20 <= 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v21 = v20 - self->_length;
      v22 = (v20 & (self->_start >> 63)) + self->_start;
      v23 = v21 - v22;
      if (v22 < 0 || v23 < 0)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
      [v13 addObject:v24];

      v25 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
      [v14 addObject:v25];

      ++v15;
    }

    else
    {
      [v13 addObject:&unk_1F5B75B18];
      [v14 addObject:&unk_1F5B75B18];
      ++v15;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v27 = MEMORY[0x1E696AEC0];
  v28 = [(MPSGraphOperation *)self name];
  v29 = [v27 stringWithFormat:@"%@/%@/pad", v33, v28];
  v30 = [WeakRetained padTensor:v32 withPaddingMode:0 leftPadding:v13 rightPadding:v14 constantValue:v29 name:0.0];

  return v30;
}

@end