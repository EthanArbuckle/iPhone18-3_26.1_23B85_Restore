@interface MPSGraphOperation
- (BOOL)recurseFromBlock:(id)a3 onEscaped:(id)a4 withAutodiff:(Autodiff *)a5;
- (BOOL)recurseOnBlocksFromOutput:(id)a3 withAutodiff:(Autodiff *)a4;
- (BOOL)recurseOutFromBlockInput:(id)a3 withAutodiff:(Autodiff *)a4;
- (MPSGraph)graph;
- (MPSGraphOperation)init;
- (MPSGraphOperation)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 region:(id)a6 name:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6;
- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5;
- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7;
- (void)partialDerivateForCFOpWithAutodiff:(Autodiff *)a3;
@end

@implementation MPSGraphOperation

- (MPSGraphOperation)init
{
  v3.receiver = self;
  v3.super_class = MPSGraphOperation;
  return [(MPSGraphOperation *)&v3 init];
}

- (MPSGraphOperation)initWithGraph:(id)a3 inputTensors:(id)a4 controlDependencies:(id)a5 region:(id)a6 name:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v90 = a6;
  v89 = a7;
  v107.receiver = self;
  v107.super_class = MPSGraphOperation;
  v15 = [(MPSGraphOperation *)&v107 init];
  v102 = 0x2B2B07D42B2B07D0;
  v103 = v12;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  kdebug_trace();
  objc_storeWeak(&v15->_graph, v12);
  v16 = [MEMORY[0x1E695DF70] arrayWithArray:v13];
  WeakRetained = objc_loadWeakRetained(&v15->_graph);
  v93 = v12;
  v87 = v14;
  v88 = v13;
  v96 = v16;
  v18 = [WeakRetained[21] allObjects];
  v19 = [v18 arrayByAddingObjectsFromArray:v14];
  v20 = [v19 mutableCopy];
  controlDependencies = v15->_controlDependencies;
  v15->_controlDependencies = v20;

  objc_storeStrong(&v15->_name, a7);
  v15->_stopGradient = 0;
  objc_storeStrong(&v15->_region, a6);
  region = v15->_region;
  if (region)
  {
    objc_storeWeak(&region->_parentOp, v15);
  }

  objc_storeWeak(&v15->_parentBlock, *(v12 + 22));
  for (i = 0; i < [v16 count]; ++i)
  {
    v24 = [v16 objectAtIndexedSubscript:i];

    v25 = objc_loadWeakRetained(v24 + 3);
    if (v25 != v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v26 = [v24 operation];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          name = v15->_name;
          if (name)
          {
            v29 = [(NSString *)v15->_name stringByAppendingString:@"/readVariable"];
            v94 = v29;
          }

          else
          {
            v30 = objc_opt_class();
            v92 = NSStringFromClass(v30);
            v29 = [v92 stringByAppendingString:@"/readVariable"];
            v91 = v29;
          }

          v31 = [v12 readVariable:v24 name:v29];
          v32 = v94;
          if (!name)
          {

            v32 = v92;
          }

          [v16 setObject:v31 atIndexedSubscript:i];
        }
      }
    }
  }

  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
  inputTensors = v15->_inputTensors;
  v15->_inputTensors = v33;

  v35 = 0;
  __p = 0;
  v100 = 0;
  v101 = 0;
  while (v35 < [(NSArray *)v15->_inputTensors count])
  {
    v37 = [(NSArray *)v15->_inputTensors objectAtIndexedSubscript:v35];
    v38 = [v37 value];
    v39 = v100;
    if (v100 < v101)
    {
      *v100 = v38;
      v36 = (v39 + 8);
    }

    else
    {
      v40 = __p;
      v41 = v100 - __p;
      v42 = (v100 - __p) >> 3;
      v43 = v42 + 1;
      if ((v42 + 1) >> 61)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v44 = v101 - __p;
      if ((v101 - __p) >> 2 > v43)
      {
        v43 = v44 >> 2;
      }

      if (v44 >= 0x7FFFFFFFFFFFFFF8)
      {
        v45 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v43;
      }

      if (v45)
      {
        if (!(v45 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v42) = v38;
      v36 = 8 * v42 + 8;
      memcpy(0, v40, v41);
      __p = 0;
      v100 = v36;
      v101 = 0;
    }

    v100 = v36;

    ++v35;
    v16 = v96;
  }

  pthread_mutex_lock((v12 + 104));
  v46 = objc_loadWeakRetained(&v15->_graph);
  v15->_mlirOperation = [(MPSGraphOperation *)v15 makeMLIROpWithBuilder:v46[7] symbolTable:v46[9] inputValues:&__p opInitialization:1 name:v15->_name];

  v98 = *(v15->_mlirOperation + 3);
  v47 = MEMORY[0x1E696AEC0];
  Value = mlir::AffineMapAttr::getValue(&v98);
  v48 = [v47 stringWithUTF8String:mlir::OpaqueAttr::getAttrData(&Value)];
  v49 = v15->_name;
  v15->_name = v48;

  v50 = [MEMORY[0x1E695DF70] array];
  v51 = v50;
  mlirOperation = v15->_mlirOperation;
  v53 = mlirOperation[9];
  if (v53 >= 1)
  {
    v95 = v50;
    v54 = [MPSGraphTensor alloc];
    v55 = objc_loadWeakRetained(&v15->_parentBlock);
    v56 = [(MPSGraphTensor *)v54 initTensorWithOperation:v15 value:mlirOperation - 4 graph:v93 parentBlock:v55 name:v15->_name];

    v51 = v95;
    [v95 addObject:v56];

    if (v53 != 1)
    {
      v57 = v15->_mlirOperation;
      v58 = [MPSGraphTensor alloc];
      v59 = objc_loadWeakRetained(&v15->_parentBlock);
      v60 = [(MPSGraphTensor *)v58 initTensorWithOperation:v15 value:v57 - 32 graph:v93 parentBlock:v59 name:v15->_name];

      v51 = v95;
      [v95 addObject:v60];

      if (v53 != 2)
      {
        v61 = v15->_mlirOperation;
        v62 = [MPSGraphTensor alloc];
        v63 = objc_loadWeakRetained(&v15->_parentBlock);
        v64 = [(MPSGraphTensor *)v62 initTensorWithOperation:v15 value:v61 - 48 graph:v93 parentBlock:v63 name:v15->_name];

        v51 = v95;
        [v95 addObject:v64];

        if (v53 != 3)
        {
          v65 = v15->_mlirOperation;
          v66 = [MPSGraphTensor alloc];
          v67 = objc_loadWeakRetained(&v15->_parentBlock);
          v68 = [(MPSGraphTensor *)v66 initTensorWithOperation:v15 value:v65 - 64 graph:v93 parentBlock:v67 name:v15->_name];

          v51 = v95;
          [v95 addObject:v68];

          if (v53 != 4)
          {
            v69 = v15->_mlirOperation;
            v70 = [MPSGraphTensor alloc];
            v71 = objc_loadWeakRetained(&v15->_parentBlock);
            v72 = [(MPSGraphTensor *)v70 initTensorWithOperation:v15 value:v69 - 80 graph:v93 parentBlock:v71 name:v15->_name];

            v51 = v95;
            [v95 addObject:v72];

            if (v53 != 5)
            {
              v73 = v15->_mlirOperation;
              v74 = [MPSGraphTensor alloc];
              v75 = objc_loadWeakRetained(&v15->_parentBlock);
              v76 = [(MPSGraphTensor *)v74 initTensorWithOperation:v15 value:v73 - 96 graph:v93 parentBlock:v75 name:v15->_name];

              v51 = v95;
              [v95 addObject:v76];

              if (v53 != 6)
              {
                v77 = v53 - 6;
                v78 = 1;
                do
                {
                  v79 = v15->_mlirOperation;
                  v80 = [MPSGraphTensor alloc];
                  v81 = objc_loadWeakRetained(&v15->_parentBlock);
                  v82 = [(MPSGraphTensor *)v80 initTensorWithOperation:v15 value:&v79[-24 * v78 - 96] graph:v93 parentBlock:v81 name:v15->_name];

                  v51 = v95;
                  [v95 addObject:v82];

                  ++v78;
                  --v77;
                }

                while (v77);
              }
            }
          }
        }
      }
    }
  }

  objc_storeStrong(&v15->_outputTensors, v51);
  [*(v93 + 10) addObject:v15];
  v83 = objc_loadWeakRetained(&v15->_parentBlock);

  if (v83)
  {
    v84 = objc_loadWeakRetained(&v15->_parentBlock);
    [v84[2] addObject:v15];
  }

  pthread_mutex_unlock((v93 + 104));
  v85 = v15;

  if (__p)
  {
    v100 = __p;
    operator delete(__p);
  }

  kdebug_trace();
  return v85;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)makeMLIROpWithBuilder:(void *)a3 symbolTable:(void *)a4 inputValues:(void *)a5 opInitialization:(BOOL)a6 name:(id)a7
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)partialDerivativeForInputTensor:(id)a3 incomingGradient:(id)a4 inputIndex:(unint64_t)a5 name:(id)a6
{
  v6 = [(MPSGraphOperation *)self graph:a3];
  [v6 dump];

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)partialDerivativesForInputTensors:(id)a3 incomingGradients:(id)a4 name:(id)a5
{
  v8 = a3;
  v9 = a4;
  v21 = a5;
  if ([v9 count] == 1)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    for (i = 0; i < [v8 count]; ++i)
    {
      v12 = [v8 objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) != 0 || ([v8 objectAtIndexedSubscript:i], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectAtIndexedSubscript:", 0), v15 = objc_claimAutoreleasedReturnValue(), v16 = MEMORY[0x1E696AEC0], objc_msgSend(v14, "name"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringWithFormat:", @"gradient for %@", v17), v18 = objc_claimAutoreleasedReturnValue(), -[MPSGraphOperation partialDerivativeForInputTensor:incomingGradient:inputIndex:name:](self, "partialDerivativeForInputTensor:incomingGradient:inputIndex:name:", v14, v15, i, v18), v19 = objc_claimAutoreleasedReturnValue(), v18, v17, v15, v14, !v19))
      {
        v19 = [MEMORY[0x1E695DFB0] null];
      }

      [v10 addObject:v19];
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v10 = 0;
  }

  return v10;
}

- (void)partialDerivateForCFOpWithAutodiff:(Autodiff *)a3
{
  if (MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

- (BOOL)recurseFromBlock:(id)a3 onEscaped:(id)a4 withAutodiff:(Autodiff *)a5
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (BOOL)recurseOnBlocksFromOutput:(id)a3 withAutodiff:(Autodiff *)a4
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (BOOL)recurseOutFromBlockInput:(id)a3 withAutodiff:(Autodiff *)a4
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSGraph)graph
{
  WeakRetained = objc_loadWeakRetained(&self->_graph);

  return WeakRetained;
}

@end