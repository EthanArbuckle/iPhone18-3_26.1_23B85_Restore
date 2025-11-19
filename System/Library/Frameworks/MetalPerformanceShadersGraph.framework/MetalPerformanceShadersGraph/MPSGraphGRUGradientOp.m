@interface MPSGraphGRUGradientOp
- (MPSGraphGRUGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphGRUGradientOp

- (MPSGraphGRUGradientOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v15 copy];
  desc = self->super._desc;
  self->super._desc = v17;

  v19 = [(MPSGraphOperation *)self initWithGraph:v12 inputTensors:v13 controlDependencies:v14 name:v16];
  return v19;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v65 = *MEMORY[0x1E69E9840];
  v48 = a7;
  mpsFileLoc("[MPSGraphGRUGradientOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm", __p);
  v11 = v48;
  v64 = 260;
  v63[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v63);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x34Bu, 0);
  if (v11)
  {
    v15 = v11;
    v16 = [v11 UTF8String];
    v17 = strlen(v16);
    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v18 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v62) = v17;
    if (v17)
    {
      memmove(&__dst, v16, v17);
    }

    v19 = (&__dst + v18);
  }

  else
  {
    HIBYTE(v62) = 16;
    __dst = *"mps.gru_gradient";
    v19 = &v62;
  }

  *v19 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v13, &v58);
  v20 = v58.__r_.__value_.__r.__words[0];
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v58;
  }

  v21 = 1;
  HIBYTE(v64) = 1;
  if (v20->__r_.__value_.__s.__data_[0])
  {
    v63[0] = v20;
    v21 = 3;
  }

  LOBYTE(v64) = v21;
  v22 = mlir::Builder::getStringAttr(a3, v63);
  v52 = mlir::NameLoc::get(v22, v14);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = [(MPSGraphGRUDescriptor *)self->super._desc updateGateActivation];
  if (v23 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  v25 = [(MPSGraphGRUDescriptor *)self->super._desc resetGateActivation];
  if (v25 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = [(MPSGraphGRUDescriptor *)self->super._desc outputGateActivation];
  v28 = v27;
  v29 = v27 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
  desc = self->super._desc;
  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v31 = v28;
  }

  v51 = a3;
  if (desc->_hasInitState)
  {
    if (*(a5 + 1) - *a5 < 0x21uLL)
    {
      goto LABEL_49;
    }

    v32 = *(*a5 + 32);
    v33 = 5;
    if (!desc->_hasMask)
    {
LABEL_30:
      v50 = 0;
      if (desc->_hasBias2)
      {
        goto LABEL_31;
      }

LABEL_36:
      v34 = v31;
      v35 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v32 = 0;
    v33 = 4;
    if (!desc->_hasMask)
    {
      goto LABEL_30;
    }
  }

  if (v33 >= (*(a5 + 1) - *a5) >> 3)
  {
LABEL_49:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v50 = *(*a5 + 8 * v33++);
  if (!desc->_hasBias2)
  {
    goto LABEL_36;
  }

LABEL_31:
  if (v33 >= (*(a5 + 1) - *a5) >> 3)
  {
    goto LABEL_49;
  }

  v34 = v31;
  v35 = *(*a5 + 8 * v33);
LABEL_37:
  v49 = v11;
  v36 = [(MPSGraphGRUDescriptor *)desc resetGateFirst];
  v37 = *a5;
  v38 = *(a5 + 1) - *a5;
  if (!v38 || (v38 >> 3) <= 1 || v38 == 16 || (v38 >> 3) <= 3)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v39 = v36;
  v40 = [(MPSGraphGRUDescriptor *)self->super._desc resetAfter];
  v41 = [(MPSGraphGRUDescriptor *)self->super._desc flipZ];
  v55 = v52;
  Context = mlir::Attribute::getContext(&v55);
  v43 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GRUGradientOp,void>::id, Context);
  if ((v44 & 1) == 0)
  {
    v60 = 1283;
    v58.__r_.__value_.__r.__words[2] = "mps.gru_gradient";
    v59 = 16;
    v57 = 259;
    llvm::operator+(&v58, &v56, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v63, v52, v43);
  mlir::mps::GRUGradientOp::build(v51, v63, *v37, v37[1], v37[2], v37[3], v24, v26, v34, v39, v40, v41, v32, v50, v35);
  v45 = mlir::OpBuilder::create(v51, v63);
  v46 = *(v45[6] + 16);
  mlir::OperationState::~OperationState(v63);
  if (v46 != &mlir::detail::TypeIDResolver<mlir::mps::GRUGradientOp,void>::id)
  {
    v45 = 0;
  }

  return v45;
}

@end