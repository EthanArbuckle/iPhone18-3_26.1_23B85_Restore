@interface MPSGraphOptimizer
- (MPSGraphOptimizer)initWithGraph:(id)graph learningRateTensor:(id)tensor trainableVariables:(id)variables variablesToGradientTensorMap:(id)map name:(id)name;
- (MPSGraphOptimizer)initWithGraph:(id)graph lossTensor:(id)tensor learningRateTensor:(id)rateTensor trainableVariables:(id)variables name:(id)name;
- (NSArray)updateOperations;
@end

@implementation MPSGraphOptimizer

- (MPSGraphOptimizer)initWithGraph:(id)graph learningRateTensor:(id)tensor trainableVariables:(id)variables variablesToGradientTensorMap:(id)map name:(id)name
{
  graphCopy = graph;
  tensorCopy = tensor;
  variablesCopy = variables;
  mapCopy = map;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = MPSGraphOptimizer;
  v18 = [(MPSGraphOptimizer *)&v25 init];
  objc_storeStrong(&v18->_graph, graph);
  objc_storeStrong(&v18->_learningRateTensor, tensor);
  objc_storeStrong(&v18->_variablesToGradientTensorMap, map);
  variablesToUpdateOpMap = v18->_variablesToUpdateOpMap;
  v18->_variablesToUpdateOpMap = 0;

  v20 = [variablesCopy copy];
  trainableVariables = v18->_trainableVariables;
  v18->_trainableVariables = v20;

  if (nameCopy)
  {
    objc_storeStrong(&v18->_name, nameCopy);
  }

  else
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    objc_storeStrong(&v18->_name, v24);
  }

  return v18;
}

- (MPSGraphOptimizer)initWithGraph:(id)graph lossTensor:(id)tensor learningRateTensor:(id)rateTensor trainableVariables:(id)variables name:(id)name
{
  graphCopy = graph;
  tensorCopy = tensor;
  rateTensorCopy = rateTensor;
  variablesCopy = variables;
  nameCopy = name;
  array = [MEMORY[0x1E695DF70] array];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __89__MPSGraphOptimizer_initWithGraph_lossTensor_learningRateTensor_trainableVariables_name___block_invoke;
  v28[3] = &unk_1E86D4DF8;
  v18 = array;
  v29 = v18;
  [variablesCopy enumerateObjectsUsingBlock:v28];
  v19 = [graphCopy gradientForPrimaryTensor:tensorCopy withTensors:v18 name:nameCopy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__MPSGraphOptimizer_initWithGraph_lossTensor_learningRateTensor_trainableVariables_name___block_invoke_2;
  v25[3] = &unk_1E86D4E20;
  v21 = dictionary;
  v26 = v21;
  v22 = v19;
  v27 = v22;
  [v18 enumerateObjectsUsingBlock:v25];
  v23 = [(MPSGraphOptimizer *)self initWithGraph:graphCopy learningRateTensor:rateTensorCopy trainableVariables:variablesCopy variablesToGradientTensorMap:v21 name:nameCopy];

  return v23;
}

void __89__MPSGraphOptimizer_initWithGraph_lossTensor_learningRateTensor_trainableVariables_name___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 outputTensors];
  v3 = [v4 objectAtIndexedSubscript:0];
  [v2 addObject:v3];
}

void __89__MPSGraphOptimizer_initWithGraph_lossTensor_learningRateTensor_trainableVariables_name___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [*(a1 + 40) objectForKeyedSubscript:?];
  v6 = [v7 operation];
  [v4 setObject:v5 forKey:v6];
}

- (NSArray)updateOperations
{
  array = [MEMORY[0x1E695DF70] array];
  trainableVariables = self->_trainableVariables;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__MPSGraphOptimizer_updateOperations__block_invoke;
  v11 = &unk_1E86D4E48;
  v5 = array;
  v12 = v5;
  selfCopy = self;
  [(NSArray *)trainableVariables enumerateObjectsUsingBlock:&v8];
  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:{v5, v8, v9, v10, v11}];

  return v6;
}

void __37__MPSGraphOptimizer_updateOperations__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:a2];
  [v2 addObject:?];
}

@end