@interface MPSGraphOperation
- (BOOL)recurseFromBlock:(id)block onEscaped:(id)escaped withAutodiff:(Autodiff *)autodiff;
- (BOOL)recurseOnBlocksFromOutput:(id)output withAutodiff:(Autodiff *)autodiff;
- (BOOL)recurseOutFromBlockInput:(id)input withAutodiff:(Autodiff *)autodiff;
- (MPSGraph)graph;
- (MPSGraphOperation)init;
- (MPSGraphOperation)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies region:(id)region name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name;
- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name;
- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name;
- (void)partialDerivateForCFOpWithAutodiff:(Autodiff *)autodiff;
@end

@implementation MPSGraphOperation

- (MPSGraphOperation)init
{
  v3.receiver = self;
  v3.super_class = MPSGraphOperation;
  return [(MPSGraphOperation *)&v3 init];
}

- (MPSGraphOperation)initWithGraph:(id)graph inputTensors:(id)tensors controlDependencies:(id)dependencies region:(id)region name:(id)name
{
  graphCopy = graph;
  tensorsCopy = tensors;
  dependenciesCopy = dependencies;
  regionCopy = region;
  nameCopy = name;
  v107.receiver = self;
  v107.super_class = MPSGraphOperation;
  v15 = [(MPSGraphOperation *)&v107 init];
  v102 = 0x2B2B07D42B2B07D0;
  v103 = graphCopy;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  kdebug_trace();
  objc_storeWeak(&v15->_graph, graphCopy);
  v16 = [MEMORY[0x1E695DF70] arrayWithArray:tensorsCopy];
  WeakRetained = objc_loadWeakRetained(&v15->_graph);
  v93 = graphCopy;
  v87 = dependenciesCopy;
  v88 = tensorsCopy;
  v96 = v16;
  allObjects = [WeakRetained[21] allObjects];
  v19 = [allObjects arrayByAddingObjectsFromArray:dependenciesCopy];
  v20 = [v19 mutableCopy];
  controlDependencies = v15->_controlDependencies;
  v15->_controlDependencies = v20;

  objc_storeStrong(&v15->_name, name);
  v15->_stopGradient = 0;
  objc_storeStrong(&v15->_region, region);
  region = v15->_region;
  if (region)
  {
    objc_storeWeak(&region->_parentOp, v15);
  }

  objc_storeWeak(&v15->_parentBlock, *(graphCopy + 22));
  for (i = 0; i < [v16 count]; ++i)
  {
    v24 = [v16 objectAtIndexedSubscript:i];

    v25 = objc_loadWeakRetained(v24 + 3);
    if (v25 != graphCopy && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    operation = [v24 operation];
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

          v31 = [graphCopy readVariable:v24 name:v29];
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
    value = [v37 value];
    v39 = v100;
    if (v100 < v101)
    {
      *v100 = value;
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

      *(8 * v42) = value;
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

  pthread_mutex_lock((graphCopy + 104));
  v46 = objc_loadWeakRetained(&v15->_graph);
  v15->_mlirOperation = [(MPSGraphOperation *)v15 makeMLIROpWithBuilder:v46[7] symbolTable:v46[9] inputValues:&__p opInitialization:1 name:v15->_name];

  v98 = *(v15->_mlirOperation + 3);
  v47 = MEMORY[0x1E696AEC0];
  Value = mlir::AffineMapAttr::getValue(&v98);
  v48 = [v47 stringWithUTF8String:mlir::OpaqueAttr::getAttrData(&Value)];
  v49 = v15->_name;
  v15->_name = v48;

  array = [MEMORY[0x1E695DF70] array];
  v51 = array;
  mlirOperation = v15->_mlirOperation;
  v53 = mlirOperation[9];
  if (v53 >= 1)
  {
    v95 = array;
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

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v4 = selfCopy;
  if (selfCopy)
  {
    v5 = selfCopy;
  }

  return v4;
}

- (void)makeMLIROpWithBuilder:(void *)builder symbolTable:(void *)table inputValues:(void *)values opInitialization:(BOOL)initialization name:(id)name
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)partialDerivativeForInputTensor:(id)tensor incomingGradient:(id)gradient inputIndex:(unint64_t)index name:(id)name
{
  v6 = [(MPSGraphOperation *)self graph:tensor];
  [v6 dump];

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)partialDerivativesForInputTensors:(id)tensors incomingGradients:(id)gradients name:(id)name
{
  tensorsCopy = tensors;
  gradientsCopy = gradients;
  nameCopy = name;
  if ([gradientsCopy count] == 1)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tensorsCopy, "count")}];
    for (i = 0; i < [tensorsCopy count]; ++i)
    {
      v12 = [tensorsCopy objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) != 0 || ([tensorsCopy objectAtIndexedSubscript:i], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(gradientsCopy, "objectAtIndexedSubscript:", 0), v15 = objc_claimAutoreleasedReturnValue(), v16 = MEMORY[0x1E696AEC0], objc_msgSend(v14, "name"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringWithFormat:", @"gradient for %@", v17), v18 = objc_claimAutoreleasedReturnValue(), -[MPSGraphOperation partialDerivativeForInputTensor:incomingGradient:inputIndex:name:](self, "partialDerivativeForInputTensor:incomingGradient:inputIndex:name:", v14, v15, i, v18), null = objc_claimAutoreleasedReturnValue(), v18, v17, v15, v14, !null))
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      [v10 addObject:null];
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

- (void)partialDerivateForCFOpWithAutodiff:(Autodiff *)autodiff
{
  if (MTLReportFailureTypeEnabled())
  {

    MTLReportFailure();
  }
}

- (BOOL)recurseFromBlock:(id)block onEscaped:(id)escaped withAutodiff:(Autodiff *)autodiff
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (BOOL)recurseOnBlocksFromOutput:(id)output withAutodiff:(Autodiff *)autodiff
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (BOOL)recurseOutFromBlockInput:(id)input withAutodiff:(Autodiff *)autodiff
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