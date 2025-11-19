@interface MPSGraphWhileOp
- (BOOL)recurseOnBlocksFromOutput:(id)a3 withAutodiff:(void *)a4;
- (BOOL)recurseOutFromBlockInput:(id)a3 withAutodiff:(void *)a4;
- (MPSGraphWhileOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 beforeBlock:(id)a6 afterBlock:(id)a7 name:(id)a8;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
- (void)partialDerivateForCFOpWithAutodiff:(void *)a3;
@end

@implementation MPSGraphWhileOp

- (MPSGraphWhileOp)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 beforeBlock:(id)a6 afterBlock:(id)a7 name:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = MEMORY[0x1E12E6580](v17);
  beforeBlock = self->_beforeBlock;
  self->_beforeBlock = v20;

  v22 = MEMORY[0x1E12E6580](v18);
  afterBlock = self->_afterBlock;
  self->_afterBlock = v22;

  predicateTensor = self->_predicateTensor;
  self->_predicateTensor = 0;

  ptr = self->_opData.__ptr_;
  self->_opData.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  itersCountTensor = self->_itersCountTensor;
  self->_itersCountTensor = 0;

  v27 = objc_alloc_init(MPSGraphRegion);
  v30.receiver = self;
  v30.super_class = MPSGraphWhileOp;
  v28 = [(MPSGraphOperation *)&v30 initWithGraph:v14 inputTensors:v15 controlDependencies:v16 region:v27 name:v19];

  return v28;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v150 = *MEMORY[0x1E69E9840];
  v110 = a7;
  mpsFileLoc("[MPSGraphWhileOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm", __p);
  v123 = v110;
  LOWORD(v145) = 260;
  v144[0] = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, v144);
  v12 = mlir::FileLineColLoc::get(StringAttr, 0x938u, 0);
  if (v123)
  {
    v13 = v123;
    v14 = [v123 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    BYTE7(v137) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    BYTE7(v137) = 9;
    BYTE8(__dst) = 101;
    *&__dst = *"scf.while";
    v17 = &__dst + 9;
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v11, &v134);
  v18 = v134.__r_.__value_.__r.__words[0];
  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v134;
  }

  v19 = 1;
  BYTE1(v145) = 1;
  if (v18->__r_.__value_.__s.__data_[0])
  {
    v144[0] = v18;
    v19 = 3;
  }

  LOBYTE(v145) = v19;
  v20 = mlir::Builder::getStringAttr(a3, v144);
  v21 = mlir::NameLoc::get(v20, v12);
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    v62 = v21;
    operator delete(v134.__r_.__value_.__l.__data_);
    v121 = v62;
    if ((SBYTE7(v137) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v121 = v21;
    if ((SBYTE7(v137) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(__dst);
LABEL_16:

  if (v133 < 0)
  {
    operator delete(__p[0]);
  }

  v113 = *(a3 + 1);
  v114 = a3 + 16;
  WeakRetained = objc_loadWeakRetained(&self->super._graph);
  v112 = WeakRetained[22];
  v111 = v112;

  v23 = [(MPSGraphOperation *)self inputTensors];
  getTypesFromTensors(v23, &v130);

  memset(v144, 0, sizeof(v144));
  v145 = &v145;
  v146 = &v145;
  v148 = 0;
  v149 = 0;
  v147 = 0;
  obj = [(MPSGraphRegion *)self->super._region appendNewBlock];
  v126 = objc_opt_new();
  v24 = v130;
  if (v131 != v130)
  {
    v25 = 0;
    do
    {
      v26 = v24[v25];
      *&__dst = "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm";
      LOWORD(v138) = 259;
      v27 = mlir::Builder::getStringAttr(a3, &__dst);
      v28 = mlir::FileLineColLoc::get(v27, 0x94Fu, 0);
      mlir::Block::addArgument(v144, v26, v28);
      v29 = *(v147 + 8 * v25);
      v30 = [MPSGraphTensor alloc];
      v31 = objc_loadWeakRetained(&self->super._graph);
      v32 = [(MPSGraphTensor *)v30 initTensorWithOperation:self value:v29 graph:v31 parentBlock:obj name:0];

      [v126 addObject:v32];
      ++v25;
      v24 = v130;
    }

    while (v25 < (v131 - v130) >> 3);
  }

  *(a3 + 2) = v144;
  *(a3 + 3) = &v145;
  v33 = objc_loadWeakRetained(&self->super._graph);
  objc_storeStrong(v33 + 22, obj);

  v120 = [MEMORY[0x1E695DF70] array];
  v34 = (*(self->_beforeBlock + 2))();
  predicateTensor = self->_predicateTensor;
  self->_predicateTensor = v34;

  beforeBlock = self->_beforeBlock;
  self->_beforeBlock = 0;

  v37 = [MEMORY[0x1E695DEC8] arrayWithArray:v120];
  beforeResult = self->_beforeResult;
  self->_beforeResult = v37;

  if (!self->_predicateTensor && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v39 = objc_loadWeakRetained(&self->super._graph);
  v117 = [v39 castTensor:self->_predicateTensor toType:2147483656 name:@"if_cast"];

  v40 = objc_loadWeakRetained(&self->super._graph);
  v118 = [v40 reshapeTensor:v117 withShape:MEMORY[0x1E695E0F0] name:@"whilePredicate/reshape"];

  v143 = v118;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];
  v122 = [v41 mutableCopy];

  [v122 addObjectsFromArray:self->_beforeResult];
  v42 = [MPSGraphConditionOp alloc];
  v43 = objc_loadWeakRetained(&self->super._graph);
  v119 = [(MPSGraphOperation *)v42 initWithGraph:v43 inputTensors:v122 controlDependencies:MEMORY[0x1E695E0F0] name:0];

  v44 = objc_loadWeakRetained(&self->super._graph);
  [v44[22] addTerminatorOperation:v119];

  getTypesFromTensors(self->_beforeResult, &v128);
  v137 = 0u;
  __dst = 0u;
  v138 = &v138;
  v139 = &v138;
  v141 = 0;
  v142 = 0;
  v140 = 0;
  v124 = [(MPSGraphRegion *)self->super._region appendNewBlock];
  v45 = objc_opt_new();
  v46 = v128;
  if (v129 != v128)
  {
    v47 = 0;
    do
    {
      v48 = v46[v47];
      v134.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphControlFlowOps.mm";
      v135 = 259;
      v49 = mlir::Builder::getStringAttr(a3, &v134);
      v50 = mlir::FileLineColLoc::get(v49, 0x97Du, 0);
      mlir::Block::addArgument(&__dst, v48, v50);
      v51 = *(v140 + 8 * v47);
      v52 = [MPSGraphTensor alloc];
      v53 = objc_loadWeakRetained(&self->super._graph);
      v54 = [(MPSGraphTensor *)v52 initTensorWithOperation:self value:v51 graph:v53 parentBlock:v124 name:0];

      [v45 addObject:v54];
      ++v47;
      v46 = v128;
    }

    while (v47 < (v129 - v128) >> 3);
  }

  *(a3 + 2) = &__dst;
  *(a3 + 3) = &v138;
  v55 = objc_loadWeakRetained(&self->super._graph);
  objc_storeStrong(v55 + 22, v124);

  v56 = (*(self->_afterBlock + 2))();
  afterResult = self->_afterResult;
  self->_afterResult = v56;

  afterBlock = self->_afterBlock;
  self->_afterBlock = 0;

  v59 = [MPSGraphYieldOp alloc];
  v60 = objc_loadWeakRetained(&self->super._graph);
  v116 = [(MPSGraphOperation *)v59 initWithGraph:v60 inputTensors:self->_afterResult controlDependencies:MEMORY[0x1E695E0F0] name:0];

  v61 = objc_loadWeakRetained(&self->super._graph);
  [v61[22] addTerminatorOperation:v116];

  if (v113)
  {
    *v114 = v113;
  }

  else
  {
    *v114 = 0;
    *(a3 + 3) = 0;
  }

  v63 = objc_loadWeakRetained(&self->super._graph);
  objc_storeStrong(v63 + 22, v112);

  v64 = mlir::OpBuilder::create<mlir::scf::WhileOp,std::vector<mlir::Type> &,std::vector<mlir::Value> &>(a3, v121, &v128, a5);
  v127 = v64;
  if (v131 != v130)
  {
    if (((v131 - v130) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v65 = *(v64 + 40);
  v66 = *(v64 + 44);
  mlir::ValueRange::ValueRange(&v134, v131, 0);
  Block = mlir::OpBuilder::createBlock(a3, ((v64 + 16 * ((v66 >> 23) & 1) + ((v66 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v65, 0, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_, 0, 0);
  v68 = Block;
  if (v145 != &v145 && v144 != Block)
  {
    v69 = Block + 4;
    v70 = v146;
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList((Block + 4), &v145, v146, &v145);
    if (v70 != &v145)
    {
      v71 = v145;
      v72 = *v70;
      v72[1] = &v145;
      v145 = v72;
      v73 = *v69;
      v71[1] = v69;
      *v70 = v73;
      *(v73 + 8) = v70;
      *v69 = v71;
    }
  }

  if (v131 != v130)
  {
    v74 = 0;
    do
    {
      v75 = *(v147 + 8 * v74);
      v76 = v68[6];
      v77 = *(v76 + 8 * v74);
      v78 = *v75;
      if (*v75)
      {
        do
        {
          v79 = v78[1];
          if (v79)
          {
            v80 = *v78;
            *v79 = *v78;
            if (v80)
            {
              *(v80 + 8) = v79;
            }
          }

          v78[3] = v77;
          v78[1] = v77;
          v81 = *v77;
          *v78 = *v77;
          if (v81)
          {
            *(v81 + 8) = v78;
          }

          *v77 = v78;
          v78 = *v75;
        }

        while (*v75);
        v77 = *(v76 + 8 * v74);
      }

      v82 = [v126 objectAtIndexedSubscript:v74];
      v82[1] = v77;

      ++v74;
    }

    while (v74 < (v131 - v130) >> 3);
  }

  if (v129 != v128)
  {
    if (((v129 - v128) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v83 = *(v127 + 40);
  v84 = *(v127 + 44);
  mlir::ValueRange::ValueRange(&v134, v129, 0);
  v85 = mlir::OpBuilder::createBlock(a3, ((v127 + 16 * ((v84 >> 23) & 1) + ((v84 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v83 + 24, 0, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_, 0, 0);
  v86 = v85;
  if (v138 != &v138 && &__dst != v85)
  {
    v87 = (v85 + 2);
    v88 = v139;
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList((v85 + 2), &v138, v139, &v138);
    if (v88 != &v138)
    {
      v89 = v138;
      v90 = *v88;
      v90[1] = &v138;
      v138 = v90;
      v91 = *v87;
      v89[1] = v87;
      *v88 = v91;
      *(v91 + 8) = v88;
      *v87 = v89;
    }
  }

  if (v129 != v128)
  {
    v92 = 0;
    do
    {
      v93 = *(v140 + 8 * v92);
      v94 = *(v86 + 6);
      v95 = *(v94 + 8 * v92);
      v96 = *v93;
      if (*v93)
      {
        do
        {
          v97 = v96[1];
          if (v97)
          {
            v98 = *v96;
            *v97 = *v96;
            if (v98)
            {
              *(v98 + 8) = v97;
            }
          }

          v96[3] = v95;
          v96[1] = v95;
          v99 = *v95;
          *v96 = *v95;
          if (v99)
          {
            *(v99 + 8) = v96;
          }

          *v95 = v96;
          v96 = *v93;
        }

        while (*v93);
        v95 = *(v94 + 8 * v92);
      }

      v100 = [v45 objectAtIndexedSubscript:v92];
      v100[1] = v95;

      ++v92;
    }

    while (v92 < (v129 - v128) >> 3);
  }

  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v127, 0);
  if (*(v127 + 36))
  {
    NextResultAtOffset = v127 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v134.__r_.__value_.__r.__words[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  objc_storeStrong(&self->_beforeBlockArguments, v126);
  objc_storeStrong(&self->_afterBlockArguments, v45);
  v103 = [(NSMutableArray *)self->super._region->_blocks objectAtIndexedSubscript:0];
  v103[3] = v68;

  v104 = [(NSMutableArray *)self->super._region->_blocks objectAtIndexedSubscript:1];
  v104[3] = v86;

  v105 = *(v127 + 16);
  v107 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v127, v106) + 8);
  *(a3 + 2) = v105;
  *(a3 + 3) = v107;
  DefiningOp = mlir::Value::getDefiningOp(&v134);

  mlir::Block::~Block(&__dst);
  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  mlir::Block::~Block(v144);
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
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

- (BOOL)recurseOutFromBlockInput:(id)a3 withAutodiff:(void *)a4
{
  v6 = a3;
  OpData = getOpData(&self->super);
  LOBYTE(a4) = (*(*OpData + 32))(OpData, a4, v6);

  return a4;
}

- (void)partialDerivateForCFOpWithAutodiff:(void *)a3
{
  OpData = getOpData(&self->super);

  AutodiffOpData::createPartialDerivatives(OpData, a3);
}

@end