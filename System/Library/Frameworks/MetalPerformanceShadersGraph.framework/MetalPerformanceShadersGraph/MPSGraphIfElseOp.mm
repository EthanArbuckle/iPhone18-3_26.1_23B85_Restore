@interface MPSGraphIfElseOp
- (BOOL)recurseOnBlocksFromOutput:(id)a3 withAutodiff:(void *)a4;
- (MPSGraphIfElseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 trueBlock:(id)a6 falseBlock:(id)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
- (void)partialDerivateForCFOpWithAutodiff:(void *)a3;
@end

@implementation MPSGraphIfElseOp

- (MPSGraphIfElseOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 trueBlock:(id)a6 falseBlock:(id)a7 name:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = MEMORY[0x1E12E6580](v17);
  trueBlock = self->_trueBlock;
  self->_trueBlock = v20;

  v22 = MEMORY[0x1E12E6580](v18);
  falseBlock = self->_falseBlock;
  self->_falseBlock = v22;

  ptr = self->_opData.__ptr_;
  self->_opData.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v25 = objc_alloc_init(MPSGraphRegion);
  v28.receiver = self;
  v28.super_class = MPSGraphIfElseOp;
  v26 = [(MPSGraphOperation *)&v28 initWithGraph:v14 inputTensors:v15 controlDependencies:v16 region:v25 name:v19];

  return v26;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v139 = *MEMORY[0x1E69E9840];
  v11 = a7;
  v105 = *(a3 + 1);
  v106 = a3 + 16;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  obj = WeakRetained[22];
  v108 = obj;

  v103 = v11;
  mpsFileLoc("[MPSGraphIfElseOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm", __p);
  v112 = v11;
  LOWORD(v134) = 260;
  v133[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v133);
  v15 = mlir::FileLineColLoc::get(StringAttr, 0x891u, 0);
  v111 = a3;
  if (v112)
  {
    v16 = v112;
    v17 = [v112 UTF8String];
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

    BYTE7(v127) = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
    }

    v20 = &__dst + v19;
  }

  else
  {
    BYTE7(v127) = 6;
    qmemcpy(&__dst, "scf.if", 6);
    v20 = &__dst + 6;
  }

  *v20 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v14, &v116);
  v21 = v116.__r_.__value_.__r.__words[0];
  if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v116;
  }

  v22 = 1;
  BYTE1(v134) = 1;
  if (v21->__r_.__value_.__s.__data_[0])
  {
    v133[0] = v21;
    v22 = 3;
  }

  LOBYTE(v134) = v22;
  v23 = mlir::Builder::getStringAttr(a3, v133);
  v109 = mlir::NameLoc::get(v23, v15);
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
    if ((SBYTE7(v127) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SBYTE7(v127) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a5 + 1) == *a5)
  {
    std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
  }

  v24 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Value &>(a3, v109, *a5);
  v122 = 0;
  v123 = v24 - 16;
  v120 = 0;
  v121 = 0;
  memset(v133, 0, sizeof(v133));
  v134 = &v134;
  v135 = &v134;
  v137 = 0;
  v138 = 0;
  v136 = 0;
  *(a3 + 2) = v133;
  *(a3 + 3) = &v134;
  v25 = [(MPSGraphRegion *)self->super._region appendNewBlock];
  v26 = objc_loadWeakRetained(&self->super._graph);
  v27 = v26[22];
  v26[22] = v25;

  v28 = (*(self->_trueBlock + 2))();
  trueResults = self->_trueResults;
  self->_trueResults = v28;

  trueBlock = self->_trueBlock;
  self->_trueBlock = 0;

  v31 = [MPSGraphYieldOp alloc];
  v32 = objc_loadWeakRetained(&self->super._graph);
  v110 = [(MPSGraphOperation *)v31 initWithGraph:v32 inputTensors:self->_trueResults controlDependencies:MEMORY[0x1E695E0F0] name:0];

  v33 = objc_loadWeakRetained(&self->super._graph);
  [v33[22] addTerminatorOperation:v110];

  if (!self->_falseBlock)
  {
    [(NSArray *)self->_trueResults count];
    if ([(NSArray *)self->_trueResults count])
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  __dst = 0u;
  v127 = 0u;
  v128 = &v128;
  v129 = &v128;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  v113 = self;
  if (self->_falseBlock)
  {
    *(a3 + 2) = &__dst;
    *(a3 + 3) = &v128;
    v34 = [(MPSGraphRegion *)self->super._region appendNewBlock];
    v35 = objc_loadWeakRetained(&self->super._graph);
    v36 = v35[22];
    v35[22] = v34;

    v37 = (*(self->_falseBlock + 2))();
    falseResults = self->_falseResults;
    self->_falseResults = v37;

    v39 = [MPSGraphYieldOp alloc];
    v40 = objc_loadWeakRetained(&self->super._graph);
    v104 = [(MPSGraphOperation *)v39 initWithGraph:v40 inputTensors:self->_falseResults controlDependencies:MEMORY[0x1E695E0F0] name:0];

    v41 = objc_loadWeakRetained(&self->super._graph);
    [v41[22] addTerminatorOperation:v104];

    v42 = self->_trueResults;
    if (v42)
    {
      v43 = 0;
      for (i = 0; i < [(NSArray *)v42 count]; ++i)
      {
        v45 = [(NSArray *)self->_trueResults objectAtIndexedSubscript:i];
        v46 = *([v45 value] + 8);
        v47 = [(NSArray *)self->_falseResults objectAtIndexedSubscript:i];
        LODWORD(v46) = (*([v47 value] + 8) ^ v46) < 8;

        v48 = self->_trueResults;
        if (v46)
        {
          v49 = [(NSArray *)v48 objectAtIndexedSubscript:i];
          v50 = *([v49 value] + 8) & 0xFFFFFFFFFFFFFFF8;
          v53 = v43;
          v54 = v43 >> 3;
          if (((v43 >> 3) + 1) >> 61)
          {
            v121 = v43;
            v122 = 0;
            v120 = 0;
            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          if (v43 >> 3 != -1)
          {
            if (!(((v43 >> 3) + 1) >> 61))
            {
              operator new();
            }

            v121 = v43;
            v122 = 0;
            v120 = 0;
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v54) = v50;
          v43 = 8 * v54 + 8;
          memcpy(0, 0, v53);
        }

        else
        {
          v49 = [(NSArray *)v48 objectAtIndexedSubscript:i];
          ElementTypeOrSelf = mlir::getElementTypeOrSelf((*([v49 value] + 8) & 0xFFFFFFFFFFFFFFF8));
          v52 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
          v55 = v43;
          v56 = v43 >> 3;
          if (((v43 >> 3) + 1) >> 61)
          {
            v121 = v43;
            v122 = 0;
            v120 = 0;
            std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
          }

          if (v43 >> 3 != -1)
          {
            if (!(((v43 >> 3) + 1) >> 61))
            {
              operator new();
            }

            v121 = v43;
            v122 = 0;
            v120 = 0;
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(8 * v56) = v52;
          v43 = 8 * v56 + 8;
          memcpy(0, 0, v55);
        }

        self = v113;

        v42 = v113->_trueResults;
      }

      v121 = v43;
      v122 = 0;
      v120 = 0;
    }
  }

  v57 = objc_loadWeakRetained(&self->super._graph);
  objc_storeStrong(v57 + 22, obj);

  if (!v105)
  {
    *v106 = 0;
    v106[1] = 0;
    v58 = v111;
    v119 = 0;
    if (self->_falseBlock)
    {
      goto LABEL_46;
    }

LABEL_55:
    v116.__r_.__value_.__s.__data_[0] = 1;
    LOBYTE(v115[0]) = 0;
    v119 = mlir::OpBuilder::create<mlir::scf::IfOp,std::vector<mlir::Type> &,mlir::Value &,BOOL,BOOL>(v58, v109, &v120, &v123, &v116, v115);
    v73 = mlir::scf::IfOp::thenBlock(&v119);
    v74 = mlir::scf::IfOp::thenBlock(&v119);
    if (v134 == &v134)
    {
      goto LABEL_60;
    }

    v70 = v74;
    if (v133 == v74)
    {
      goto LABEL_60;
    }

    v71 = v135;
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v73 + 32, &v134, v135, &v134);
    if (v71 == &v134)
    {
      goto LABEL_60;
    }

    v72 = &v134;
    goto LABEL_59;
  }

  *v106 = v105;
  v58 = v111;
  v119 = 0;
  if (!self->_falseBlock)
  {
    goto LABEL_55;
  }

LABEL_46:
  v116.__r_.__value_.__s.__data_[0] = 1;
  LOBYTE(v115[0]) = 1;
  v119 = mlir::OpBuilder::create<mlir::scf::IfOp,std::vector<mlir::Type> &,mlir::Value &,BOOL,BOOL>(v58, v109, &v120, &v123, &v116, v115);
  falseBlock = self->_falseBlock;
  self->_falseBlock = 0;

  v60 = mlir::scf::IfOp::thenBlock(&v119);
  v61 = mlir::scf::IfOp::thenBlock(&v119);
  if (v134 != &v134)
  {
    v62 = v61;
    if (v133 != v61)
    {
      v63 = v135;
      llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v60 + 32, &v134, v135, &v134);
      if (v63 != &v134)
      {
        v64 = v134;
        v65 = *v63;
        v65[1] = &v134;
        v134 = v65;
        v66 = v62[4];
        v64[1] = v62 + 4;
        *v63 = v66;
        *(v66 + 8) = v63;
        v62[4] = v64;
      }
    }
  }

  v67 = mlir::scf::IfOp::elseBlock(&v119);
  v68 = mlir::scf::IfOp::elseBlock(&v119);
  if (v128 != &v128)
  {
    v70 = v68;
    v69 = &v128;
    if (&__dst != v68)
    {
      v71 = v129;
      llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v67 + 32, &v128, v129, &v128);
      v72 = &v128;
      if (v71 != &v128)
      {
LABEL_59:
        v75 = v72;
        v76 = *v72;
        v77 = *v71;
        *(v77 + 8) = v75;
        *v75 = v77;
        v79 = *(v70 + 4);
        v78 = v70 + 2;
        *(v76 + 8) = v78;
        *v71 = v79;
        *(v79 + 8) = v71;
        *v78 = v76;
      }
    }
  }

LABEL_60:
  v80 = ((&v119[4 * ((v119[11] >> 23) & 1) + 17] + ((v119[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v119[10];
  v81 = *(v80 + 8);
  if (v81)
  {
    v82 = (v81 - 8);
  }

  else
  {
    v82 = 0;
  }

  Terminator = mlir::Block::getTerminator(v82, v69);
  if (Terminator)
  {
    if (*(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
      v84 = Terminator;
    }

    else
    {
      v84 = 0;
    }
  }

  else
  {
    v84 = 0;
  }

  v118 = v84;
  ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v118, 0);
  if ((*(v118 + 46) & 0x80) != 0)
  {
    v86 = *(v118 + 72);
  }

  else
  {
    v86 = 0;
  }

  v115[0] = v86 + 32 * ODSOperandIndexAndLength;
  v115[1] = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength;
  mlir::OperandRange::getTypes(v115, &v116);
  v88 = ((&v119[4 * ((v119[11] >> 23) & 1) + 17] + ((v119[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v119[10];
  v89 = *(v88 + 32);
  if (v89)
  {
    v90 = (v89 - 8);
  }

  else
  {
    v90 = 0;
  }

  mlir::Block::getTerminator(v90, v87);
  v91 = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v118, 0);
  if ((*(v118 + 46) & 0x80) != 0)
  {
    v92 = *(v118 + 72);
  }

  else
  {
    v92 = 0;
  }

  v114[0] = v92 + 32 * v91;
  v114[1] = (HIDWORD(v91) + v91) - v91;
  mlir::OperandRange::getTypes(v114, v115);
  if (v116.__r_.__value_.__l.__size_ != v117)
  {
    operator new();
  }

  v93 = *(v80 + 8);
  v94 = [(NSMutableArray *)v113->super._region->_blocks objectAtIndexedSubscript:0, v103];
  v95 = v93 - 8;
  if (!v93)
  {
    v95 = 0;
  }

  v94[3] = v95;

  v96 = *(v88 + 32);
  v97 = [(NSMutableArray *)v113->super._region->_blocks objectAtIndexedSubscript:1];
  v98 = v96 - 8;
  if (!v96)
  {
    v98 = 0;
  }

  v97[3] = v98;

  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v119, 0);
  if (v119[9])
  {
    NextResultAtOffset = (v119 - 4);
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v114[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  DefiningOp = mlir::Value::getDefiningOp(v114);
  mlir::Block::~Block(&__dst);

  mlir::Block::~Block(v133);
  if (v120)
  {
    operator delete(v120);
  }

  return DefiningOp;
}

- (BOOL)recurseOnBlocksFromOutput:(id)a3 withAutodiff:(void *)a4
{
  v6 = a3;
  OpData = getOpData(&self->super);
  LOBYTE(a4) = (*(*OpData + 24))(OpData, a4, v6);

  return a4;
}

- (void)partialDerivateForCFOpWithAutodiff:(void *)a3
{
  OpData = getOpData(&self->super);

  AutodiffOpData::createPartialDerivatives(OpData, a3);
}

@end