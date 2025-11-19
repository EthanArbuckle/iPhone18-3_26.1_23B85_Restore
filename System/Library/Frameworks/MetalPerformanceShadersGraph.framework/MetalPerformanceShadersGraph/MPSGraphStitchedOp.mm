@interface MPSGraphStitchedOp
- (MPSGraphStitchedOp)initWithGraph:(id)a3 withBlock:(id)a4 inputTensors:(id)a5 controlDependencies:(id)a6 name:(id)a7;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
- (void)recurseOperation:(id)a3 builder:(void *)a4 symbolTable:(void *)a5 tensorToValueMap:(void *)a6 operationsRecursed:(id)a7;
@end

@implementation MPSGraphStitchedOp

- (MPSGraphStitchedOp)initWithGraph:(id)a3 withBlock:(id)a4 inputTensors:(id)a5 controlDependencies:(id)a6 name:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = MEMORY[0x1E12E6580](a4);
  stitchingBlock = self->_stitchingBlock;
  self->_stitchingBlock = v16;

  v20.receiver = self;
  v20.super_class = MPSGraphStitchedOp;
  v18 = [(MPSGraphOperation *)&v20 initWithGraph:v15 inputTensors:v14 controlDependencies:v13 name:v12];

  return v18;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  v7 = a6;
  v102 = *MEMORY[0x1E69E9840];
  v69 = a7;
  mpsFileLoc("[MPSGraphStitchedOp makeMLIROpWithBuilder:symbolTable:inputValues:opInitialization:name:]", "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShadersGraph/mpsgraph/MetalPerformanceShadersGraph/Core/Files/Operations/MPSGraphStitchedOps.mm", __p);
  v74 = v69;
  v75 = a3;
  v101 = 260;
  p_data = __p;
  StringAttr = mlir::Builder::getStringAttr(a3, &p_data);
  v13 = mlir::FileLineColLoc::get(StringAttr, 0x33u, 0);
  if (v74)
  {
    v14 = v74;
    v15 = [v74 UTF8String];
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

    HIBYTE(v78) = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
    }

    v18 = &__dst + v17;
  }

  else
  {
    HIBYTE(v78) = 13;
    qmemcpy(&__dst, "mpsx.stitched", 13);
    v18 = &__dst + 13;
  }

  *v18 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a4, &__dst, v12, &v98);
  v19 = v98.__r_.__value_.__r.__words[0];
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v98;
  }

  v20 = 1;
  HIBYTE(v101) = 1;
  if (v19->__r_.__value_.__s.__data_[0])
  {
    p_data = &v19->__r_.__value_.__l.__data_;
    v20 = 3;
  }

  LOBYTE(v101) = v20;
  v21 = mlir::Builder::getStringAttr(a3, &p_data);
  v71 = mlir::NameLoc::get(v21, v13);
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v78) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v78) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__dst);
LABEL_16:

  if (v92 < 0)
  {
    operator delete(__p[0]);
  }

  v90 = 0;
  F32Type = mlir::Builder::getF32Type(a3, v22);
  v89 = mlir::UnrankedTensorType::get(F32Type);
  v90 = mlir::OpBuilder::create<mlir::mpsx::StitchedOp,mlir::UnrankedTensorType &>(a3, v71, &v89) - 16;
  DefiningOp = mlir::Value::getDefiningOp(&v90);
  if (self->super._name)
  {
    name = self->super._name;
  }

  else
  {
    name = v74;
  }

  MPSSymbolTable::insertOp(a4, DefiningOp, name, &v87);
  v26 = mlir::Value::getDefiningOp(&v90);
  if (*(*(v26 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v27 + 40);
  v29 = *(v27 + 44);
  mlir::ValueRange::ValueRange(&p_data, 0, 0);
  Block = mlir::OpBuilder::createBlock(v75, ((v27 + 16 * ((v29 >> 23) & 1) + ((v29 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v28, 0, p_data, v100[0], 0, 0);
  *(v75 + 2) = Block;
  *(v75 + 3) = Block + 2;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._graph);
    v70 = [WeakRetained[10] copyWithZone:0];

    v32 = (*(self->_stitchingBlock + 2))();
    finalOutputTensorForStitchedRegion = self->_finalOutputTensorForStitchedRegion;
    self->_finalOutputTensorForStitchedRegion = v32;

    v34 = objc_loadWeakRetained(&self->super._graph);
    v73 = v34[10];

    v68 = [MEMORY[0x1E695DF70] arrayWithArray:v73];
    [v68 removeObjectsInArray:v70];
    v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v68];
    opsAddedInStitchedRegion = self->_opsAddedInStitchedRegion;
    self->_opsAddedInStitchedRegion = v35;

    v37 = [MEMORY[0x1E695DFA8] set];
    for (i = 0; i < [(NSArray *)self->_opsAddedInStitchedRegion count]; ++i)
    {
      v39 = [(NSArray *)self->_opsAddedInStitchedRegion objectAtIndexedSubscript:i];
      v40 = [v39 inputTensors];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __90__MPSGraphStitchedOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke;
      v85[3] = &unk_1E86D4E20;
      v85[4] = self;
      v86 = v37;
      [v40 enumerateObjectsUsingBlock:v85];
    }

    v55 = [v37 allObjects];
    inputTensors = self->super._inputTensors;
    self->super._inputTensors = v55;

    *&__dst = 0;
    *(&__dst + 1) = &__dst;
    v78 = 0x4812000000;
    v79 = __Block_byref_object_copy__4;
    v80 = __Block_byref_object_dispose__4;
    v81 = &unk_1E0AB8473;
    v83 = 0;
    v84 = 0;
    v82 = 0;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __90__MPSGraphStitchedOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke_102;
    v76[3] = &unk_1E86D4EE8;
    v76[4] = &__dst;
    [v37 enumerateObjectsUsingBlock:v76];
    v57.impl = [(MPSGraphTensor *)self->_finalOutputTensorForStitchedRegion value];
    v93 = v71;
    Context = mlir::Attribute::getContext(&v93);
    v59 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id, Context);
    if ((v60 & 1) == 0)
    {
      v97 = 1283;
      v96[2] = "mpsx.stitched_return";
      v96[3] = 20;
      v95 = 259;
      llvm::operator+(v96, &v94, &v98);
      llvm::report_fatal_error(&v98, 1);
    }

    mlir::OperationState::OperationState(&p_data, v71, v59);
    mlir::memref::DeallocOp::build(v75, &p_data, v57.impl);
    mlir::OpBuilder::create(v75, &p_data);
    mlir::OperationState::~OperationState(&p_data);
    v61.impl = [(MPSGraphTensor *)self->_finalOutputTensorForStitchedRegion value];
    *(v90 + 8) = *(v61.impl + 1) & 0xFFFFFFFFFFFFFFF8 | *(v90 + 8) & 7;
    _Block_object_dispose(&__dst, 8);
    if (v82)
    {
      v83 = v82;
      operator delete(v82);
    }
  }

  else
  {
    v70 = [MEMORY[0x1E695DF90] dictionary];
    v41 = 0;
    v100[0] = 0;
    v100[1] = 0;
    p_data = v100;
    while (v41 < [(NSArray *)self->super._inputTensors count])
    {
      v42 = [(NSArray *)self->super._inputTensors objectAtIndexedSubscript:v41];
      if (v41 >= (*(a5 + 1) - *a5) >> 3)
      {
        std::vector<mlir::Value>::__throw_out_of_range[abi:ne200100]();
      }

      v43 = v100[0];
      if (!v100[0])
      {
LABEL_37:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v44 = v43;
          v45 = v43[4];
          if (v42 >= v45)
          {
            break;
          }

          v43 = *v44;
          if (!*v44)
          {
            goto LABEL_37;
          }
        }

        if (v45 >= v42)
        {
          break;
        }

        v43 = v44[1];
        if (!v43)
        {
          goto LABEL_37;
        }
      }

      ++v41;
    }

    v46 = [(MPSGraphTensor *)self->_finalOutputTensorForStitchedRegion operation];
    [(MPSGraphStitchedOp *)self recurseOperation:v46 builder:v75 symbolTable:a4 tensorToValueMap:&p_data operationsRecursed:v70];

    v47 = [(MPSGraphTensor *)self->_finalOutputTensorForStitchedRegion operation];
    v48 = [v47 outputTensors];
    v49 = [v48 objectAtIndexedSubscript:0];
    v50 = v100[0];
    if (!v100[0])
    {
      goto LABEL_47;
    }

    v51 = v100;
    do
    {
      v52 = v50[4];
      v53 = v52 >= v49;
      v54 = v52 < v49;
      if (v53)
      {
        v51 = v50;
      }

      v50 = v50[v54];
    }

    while (v50);
    if (v51 == v100 || v49 < v51[4])
    {
LABEL_47:
      v51 = v100;
    }

    *&__dst = v51[5];

    mlir::OpBuilder::create<mlir::mpsx::ReturnStitchedOp,mlir::Value &>(v75, v71, &__dst);
    std::__tree<MPSGraphTensor * {__strong}>::destroy(&p_data, v100[0]);
  }

  v62 = mlir::Value::getDefiningOp(&v90);
  v63 = *(v62 + 16);
  v65 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(v62, v64) + 8);
  *(v75 + 2) = v63;
  *(v75 + 3) = v65;
  v66 = mlir::Value::getDefiningOp(&v90);
  if (v88 < 0)
  {
    operator delete(v87);
  }

  return v66;
}

void __90__MPSGraphStitchedOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  v6 = v3;
  v5 = [v3 operation];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void __90__MPSGraphStitchedOp_makeMLIROpWithBuilder_symbolTable_inputValues_opInitialization_name___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v3 value];
  std::vector<mlir::Value>::push_back[abi:ne200100](v4 + 48, &v5);
}

- (void)recurseOperation:(id)a3 builder:(void *)a4 symbolTable:(void *)a5 tensorToValueMap:(void *)a6 operationsRecursed:(id)a7
{
  v11 = a3;
  v59 = a7;
  if (v11)
  {
    v58 = v11;
    if ([(NSArray *)self->_opsAddedInStitchedRegion containsObject:v11])
    {
      v12 = [v59 objectForKeyedSubscript:v11];

      if (!v12)
      {
        [v59 setObject:v11 forKey:v11];
        for (i = 0; ; ++i)
        {
          v14 = [v11 controlDependencies];
          v15 = [v14 count];

          if (i >= v15)
          {
            break;
          }

          v16 = [v11 controlDependencies];
          v17 = [v16 objectAtIndexedSubscript:i];

          [(MPSGraphStitchedOp *)self recurseOperation:v17 builder:a4 symbolTable:a5 tensorToValueMap:a6 operationsRecursed:v59];
        }

        v18 = [v11 inputTensors];
        v19 = 0;
        v20 = a6 + 8;
        for (j = [v18 count]; v19 < j; j = objc_msgSend(v18, "count", v56))
        {
          v22 = [v18 objectAtIndexedSubscript:v19];
          v23 = v22;
          v24 = *v20;
          if (!*v20)
          {
            goto LABEL_18;
          }

          v25 = a6 + 8;
          do
          {
            v26 = *(v24 + 4);
            v27 = v26 >= v22;
            v28 = v26 < v22;
            if (v27)
            {
              v25 = v24;
            }

            v24 = *&v24[8 * v28];
          }

          while (v24);
          if (v25 == v20 || v22 < *(v25 + 4))
          {
LABEL_18:

            v29 = [v18 objectAtIndexedSubscript:v19];
            v23 = [v29 operation];

            [(MPSGraphStitchedOp *)self recurseOperation:v23 builder:a4 symbolTable:a5 tensorToValueMap:a6 operationsRecursed:v59];
          }

          ++v19;
        }

        v30 = 0;
        __p = 0;
        v61 = 0;
        v62 = 0;
        while (v30 < [v18 count])
        {
          v32 = [v18 objectAtIndexedSubscript:v30];
          v33 = *v20;
          if (!*v20)
          {
            goto LABEL_31;
          }

          v34 = a6 + 8;
          do
          {
            v35 = *(v33 + 4);
            v27 = v35 >= v32;
            v36 = v35 < v32;
            if (v27)
            {
              v34 = v33;
            }

            v33 = *&v33[8 * v36];
          }

          while (v33);
          if (v34 == v20 || v32 < *(v34 + 4))
          {
LABEL_31:
            v34 = a6 + 8;
          }

          v37 = *(v34 + 5);

          v38 = v61;
          if (v61 < v62)
          {
            *v61 = v37;
            v31 = (v38 + 8);
          }

          else
          {
            v39 = __p;
            v40 = v61 - __p;
            v41 = (v61 - __p) >> 3;
            v42 = v41 + 1;
            if ((v41 + 1) >> 61)
            {
              std::vector<long>::__throw_length_error[abi:ne200100]();
            }

            v43 = a4;
            v44 = a5;
            v45 = v62 - __p;
            if ((v62 - __p) >> 2 > v42)
            {
              v42 = v45 >> 2;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v46 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v42;
            }

            if (v46)
            {
              if (!(v46 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v41) = v37;
            v31 = 8 * v41 + 8;
            memcpy(0, v39, v40);
            __p = 0;
            v62 = 0;
            v11 = v58;
            a5 = v44;
            a4 = v43;
            v18 = v56;
          }

          v61 = v31;
          ++v30;
        }

        v47 = [v11 name];
        v48 = [v11 makeMLIROpWithBuilder:a4 symbolTable:a5 inputValues:&__p opInitialization:0 name:v47];

        v49 = *(v48 + 36);
        if (v49 >= 1)
        {
          for (k = 0; k != v49; ++k)
          {
            v51 = [v11 outputTensors];
            v52 = [v51 objectAtIndexedSubscript:k];
            v53 = *v20;
            if (!*v20)
            {
LABEL_52:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v54 = v53;
                v55 = *(v53 + 4);
                if (v52 >= v55)
                {
                  break;
                }

                v53 = *v54;
                if (!*v54)
                {
                  goto LABEL_52;
                }
              }

              if (v55 >= v52)
              {
                break;
              }

              v53 = v54[1];
              if (!v53)
              {
                goto LABEL_52;
              }
            }

            v11 = v58;
          }
        }

        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

@end