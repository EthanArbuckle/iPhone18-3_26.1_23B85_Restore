@interface MPSGraphStochasticGradientDescentOptimizer
- (MPSGraphStochasticGradientDescentOptimizer)initWithGraph:(id)graph learningRateTensor:(id)tensor trainableVariables:(id)variables variablesToGradientTensorMap:(id)map name:(id)name;
@end

@implementation MPSGraphStochasticGradientDescentOptimizer

- (MPSGraphStochasticGradientDescentOptimizer)initWithGraph:(id)graph learningRateTensor:(id)tensor trainableVariables:(id)variables variablesToGradientTensorMap:(id)map name:(id)name
{
  graphCopy = graph;
  tensorCopy = tensor;
  variablesCopy = variables;
  mapCopy = map;
  nameCopy = name;
  v32.receiver = self;
  v32.super_class = MPSGraphStochasticGradientDescentOptimizer;
  v17 = [(MPSGraphOptimizer *)&v32 initWithGraph:graphCopy learningRateTensor:tensorCopy trainableVariables:variablesCopy variablesToGradientTensorMap:mapCopy name:nameCopy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  trainableVariables = v17->super._trainableVariables;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __132__MPSGraphStochasticGradientDescentOptimizer_initWithGraph_learningRateTensor_trainableVariables_variablesToGradientTensorMap_name___block_invoke;
  v28[3] = &unk_1E86D4E70;
  v20 = v17;
  v29 = v20;
  v21 = mapCopy;
  v30 = v21;
  v22 = dictionary;
  v31 = v22;
  [(NSArray *)trainableVariables enumerateObjectsUsingBlock:v28];
  v23 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v22];
  variablesToUpdateOpMap = v20->super._variablesToUpdateOpMap;
  v20->super._variablesToUpdateOpMap = v23;

  v25 = v31;
  v26 = v20;

  return v26;
}

void __132__MPSGraphStochasticGradientDescentOptimizer_initWithGraph_learningRateTensor_trainableVariables_variablesToGradientTensorMap_name___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v9 = v3;
  v7 = [*(a1 + 40) objectForKeyedSubscript:?];
  v8 = [v5 applyStochasticGradientDescentWithLearningRateTensor:v6 variable:v9 gradientTensor:v7 name:*(*(a1 + 32) + 48)];

  [*(a1 + 48) setObject:v8 forKey:v9];
}

@end