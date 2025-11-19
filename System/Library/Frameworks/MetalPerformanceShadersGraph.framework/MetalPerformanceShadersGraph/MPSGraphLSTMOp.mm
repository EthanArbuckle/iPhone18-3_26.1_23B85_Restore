@interface MPSGraphLSTMOp
- (MPSGraphLSTMOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7;
- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
@end

@implementation MPSGraphLSTMOp

- (MPSGraphLSTMOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 descriptor:(id)a6 name:(id)a7
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
  v75 = *MEMORY[0x1E69E9840];
  v55 = a7;
  mpsFileLoc("[MPSGraphLSTMOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphRNNOps.mm", __p);
  v11 = v55;
  v74 = 260;
  v73[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v73);
  v14 = mlir::FileLineColLoc::get(StringAttr, 0x1BDu, 0);
  if (v11)
  {
    v15 = v11;
    v16 = v11;
    v17 = [v11 UTF8String];
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

    v72 = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    v11 = v16;
    v20 = (&__dst + v19);
  }

  else
  {
    v72 = 8;
    __dst = 0x6D74736C2E73706DLL;
    v20 = &v71;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v13, &v67);
  v21 = v67.__r_.__value_.__r.__words[0];
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v67;
  }

  v22 = 1;
  HIBYTE(v74) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v73[0] = v21;
    v22 = 3;
  }

  LOBYTE(v74) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v73);
  v24 = mlir::NameLoc::get(v23, v14);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v72 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = [(MPSGraphLSTMDescriptor *)self->super._desc training];
  v26 = [(MPSGraphLSTMDescriptor *)self->super._desc inputGateActivation];
  if (v26 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  v28 = [(MPSGraphLSTMDescriptor *)self->super._desc forgetGateActivation];
  if (v28 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  v30 = [(MPSGraphLSTMDescriptor *)self->super._desc cellGateActivation];
  if (v30 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  v32 = [(MPSGraphLSTMDescriptor *)self->super._desc outputGateActivation];
  if (v32 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu))
  {
    v33 = 1;
  }

  else
  {
    v33 = v32;
  }

  v61 = v33;
  v34 = [(MPSGraphLSTMDescriptor *)self->super._desc activation];
  v35 = v34;
  v56 = v11;
  v36 = v34 >= (MPSGraphRNNActivationHardSigmoid|MPSGraphRNNActivationRelu);
  desc = self->super._desc;
  if (v36)
  {
    v38 = 1;
  }

  else
  {
    v38 = v35;
  }

  v60 = a3;
  v58 = v31;
  v59 = v29;
  v57 = v27;
  if (!desc->_hasInitState)
  {
    v39 = 0;
    v40 = 2;
    if (!desc->_hasInitCell)
    {
      goto LABEL_36;
    }

LABEL_41:
    if (v40 >= (*(a5 + 1) - *a5) >> 3)
    {
      goto LABEL_54;
    }

    v41 = *(*a5 + 8 * v40++);
    if (desc->_hasMask)
    {
      goto LABEL_37;
    }

LABEL_43:
    v42 = 0;
    if (!desc->_hasPeephole)
    {
      goto LABEL_39;
    }

    goto LABEL_44;
  }

  if (*(a5 + 1) - *a5 < 0x11uLL)
  {
    goto LABEL_54;
  }

  v39 = *(*a5 + 16);
  v40 = 3;
  if (desc->_hasInitCell)
  {
    goto LABEL_41;
  }

LABEL_36:
  v41 = 0;
  if (!desc->_hasMask)
  {
    goto LABEL_43;
  }

LABEL_37:
  if (v40 >= (*(a5 + 1) - *a5) >> 3)
  {
    goto LABEL_54;
  }

  v42 = *(*a5 + 8 * v40++);
  if (!desc->_hasPeephole)
  {
LABEL_39:
    v43 = v38;
    v44 = 0;
    goto LABEL_46;
  }

LABEL_44:
  if (v40 >= (*(a5 + 1) - *a5) >> 3)
  {
LABEL_54:
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v43 = v38;
  v44 = *(*a5 + 8 * v40);
LABEL_46:
  v45 = v25;
  v46 = [(MPSGraphLSTMDescriptor *)desc forgetGateLast];
  v47 = *a5;
  if (*(a5 + 1) - *a5 <= 8uLL)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v48 = v46;
  v64 = v24;
  Context = mlir::Attribute::getContext(&v64);
  v50 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id, Context);
  if ((v51 & 1) == 0)
  {
    v69 = 1283;
    v67.__r_.__value_.__r.__words[2] = "mps.lstm";
    v68 = 8;
    v66 = 259;
    llvm::operator+(&v67, &v65, &__dst);
    llvm::report_fatal_error(&__dst, 1);
  }

  mlir::OperationState::OperationState(v73, v24, v50);
  mlir::mps::LSTMOp::build(v60, v73, *v47, v47[1], v57, v59, v58, v61, v43, v48, v45, v39, v41, v42, v44, 0);
  v52 = mlir::OpBuilder::create(v60, v73);
  v53 = *(v52[6] + 16);
  mlir::OperationState::~OperationState(v73);
  if (v53 != &mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id)
  {
    v52 = 0;
  }

  return v52;
}

- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count])
  {
    v44 = self->super._desc;
    if (![(MPSGraphLSTMDescriptor *)v44 training])
    {
      v11 = [(MPSGraphLSTMDescriptor *)self->super._desc copy];

      v44 = v11;
      [(MPSGraphLSTMDescriptor *)v11 setTraining:1];
    }

    desc = self->super._desc;
    if (desc->_hasInitState)
    {
      v13 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:2];
      desc = self->super._desc;
      v14 = 3;
      v42 = v13;
      if (!desc->_hasInitCell)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v42 = 0;
      v14 = 2;
      if (!desc->_hasInitCell)
      {
LABEL_6:
        v43 = 0;
        if (desc->_hasMask)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    v17 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v14];
    ++v14;
    desc = self->super._desc;
    v43 = v17;
    if (desc->_hasMask)
    {
LABEL_7:
      v15 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v14++];
      if (!self->super._desc->_hasPeephole)
      {
LABEL_8:
        v41 = 0;
        goto LABEL_16;
      }

LABEL_15:
      v41 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:v14];
LABEL_16:
      v39 = v10;
      WeakRetained = objc_loadWeakRetained(&self->super.super._graph);
      v40 = v15;
      v19 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
      v20 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
      v21 = [WeakRetained LSTMWithSourceTensor:v19 recurrentWeight:v20 inputWeight:0 bias:0 initState:v42 initCell:v43 mask:v15 peephole:v41 descriptor:v44 name:@"fwd"];

      if ([v9 count] < 2 || (objc_msgSend(v9, "objectAtIndexedSubscript:", 1), v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v22, (isKindOfClass & 1) != 0))
      {
        v38 = 0;
      }

      else
      {
        v38 = [v9 objectAtIndexedSubscript:1];
      }

      v24 = objc_loadWeakRetained(&self->super.super._graph);
      v25 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:0];
      v26 = [(NSArray *)self->super.super._inputTensors objectAtIndexedSubscript:1];
      v27 = [v9 objectAtIndexedSubscript:0];
      v28 = [v21 objectAtIndexedSubscript:2];
      v29 = v21;
      v30 = [v21 objectAtIndexedSubscript:1];
      v31 = [v24 LSTMGradientsWithSourceTensor:v25 recurrentWeight:v26 sourceGradient:v27 zState:v28 cellOutputFwd:v30 stateGradient:0 cellGradient:v38 inputWeight:0 bias:0 initState:v42 initCell:v43 mask:v40 peephole:v41 descriptor:v44 name:v39];

      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      for (i = 0; i < [v8 count]; ++i)
      {
        v33 = [MEMORY[0x1E695DFB0] null];
        v34 = [v8 objectAtIndexedSubscript:i];
        objc_opt_class();
        v35 = objc_opt_isKindOfClass();

        if ((v35 & 1) == 0)
        {
          v36 = [v31 objectAtIndexedSubscript:i];

          v33 = v36;
        }

        [v16 addObject:v33];
      }

      v10 = v39;
      goto LABEL_26;
    }

LABEL_14:
    v15 = 0;
    if (!desc->_hasPeephole)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = 0;
LABEL_26:

  return v16;
}

@end