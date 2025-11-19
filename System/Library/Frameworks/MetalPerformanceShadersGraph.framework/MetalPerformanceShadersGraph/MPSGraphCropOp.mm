@interface MPSGraphCropOp
- (MPSGraphCropOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dimension_index:(int64_t)a6 amount_before:(unint64_t)a7 amount_after:(unint64_t)a8 name:(id)a9;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphCropOp

- (MPSGraphCropOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 dimension_index:(int64_t)a6 amount_before:(unint64_t)a7 amount_after:(unint64_t)a8 name:(id)a9
{
  self->_amount_after = a8;
  self->_amount_before = a7;
  self->_dimensionIndex = a6;
  return [(MPSGraphOperation *)self initWithGraph:a3 inputTensors:a4 controlDependencies:a5 name:a9];
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a7;
  mpsFileLoc("[MPSGraphCropOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphTensorShapeOps.mm", __p);
  v12 = v11;
  v47 = 260;
  v46[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v46);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x1BBu, 0);
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

    v45 = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    v20 = (&__dst + v19);
  }

  else
  {
    v45 = 8;
    __dst = 0x706F72632E73706DLL;
    v20 = &v44;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v14, &v40);
  v21 = v40.__r_.__value_.__r.__words[0];
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v40;
  }

  v22 = 1;
  HIBYTE(v47) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v46[0] = v21;
    v22 = 3;
  }

  LOBYTE(v47) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v46);
  v24 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v45 & 0x80000000) == 0)
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
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v37 = v24;
  Context = mlir::Attribute::getContext(&v37);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, Context);
  if ((v28 & 1) == 0)
  {
    v42 = 1283;
    v40.__r_.__value_.__r.__words[2] = "mps.crop";
    v41 = 8;
    v39 = 259;
    llvm::operator+(&v40, &v38, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v46, v24, v27);
  mlir::mps::CropOp::build(a3, v46, *v25, v25[1], self->_amount_before, self->_amount_after);
  v29 = mlir::OpBuilder::create(a3, v46);
  v30 = *(*(v29 + 48) + 16);
  mlir::OperationState::~OperationState(v46);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id)
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
  v26 = a4;
  v10 = a6;
  dimensionIndex = self->_dimensionIndex;
  if (dimensionIndex < 0)
  {
    v12 = [v9 shape];
    dimensionIndex = self->_dimensionIndex + [v12 count];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E695DF70] array];
  for (i = 0; ; ++i)
  {
    v16 = [v9 shape];
    v17 = [v16 count];

    if (i >= v17)
    {
      break;
    }

    if (dimensionIndex == i)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_amount_before];
      [v13 addObject:v18];

      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_amount_after];
      [v14 addObject:v19];
    }

    else
    {
      [v13 addObject:&unk_1F5B75B18];
      [v14 addObject:&unk_1F5B75B18];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v21 = MEMORY[0x1E696AEC0];
  v22 = [(MPSGraphOperation *)self name];
  v23 = [v21 stringWithFormat:@"%@/%@/pad", v10, v22];
  v24 = [WeakRetained padTensor:v26 withPaddingMode:0 leftPadding:v13 rightPadding:v14 constantValue:v23 name:0.0];

  return v24;
}

@end