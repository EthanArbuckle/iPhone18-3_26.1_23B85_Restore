@interface MPSGraphOptimizer
- (MPSGraphOptimizer)initWithGraph:(id)a3 learningRateTensor:(id)a4 trainableVariables:(id)a5 variablesToGradientTensorMap:(id)a6 name:(id)a7;
- (MPSGraphOptimizer)initWithGraph:(id)a3 lossTensor:(id)a4 learningRateTensor:(id)a5 trainableVariables:(id)a6 name:(id)a7;
- (NSArray)updateOperations;
@end

@implementation MPSGraphOptimizer

- (MPSGraphOptimizer)initWithGraph:(id)a3 learningRateTensor:(id)a4 trainableVariables:(id)a5 variablesToGradientTensorMap:(id)a6 name:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = MPSGraphOptimizer;
  v18 = [(MPSGraphOptimizer *)&v25 init];
  objc_storeStrong(&v18->_graph, a3);
  objc_storeStrong(&v18->_learningRateTensor, a4);
  objc_storeStrong(&v18->_variablesToGradientTensorMap, a6);
  variablesToUpdateOpMap = v18->_variablesToUpdateOpMap;
  v18->_variablesToUpdateOpMap = 0;

  v20 = [v15 copy];
  trainableVariables = v18->_trainableVariables;
  v18->_trainableVariables = v20;

  if (v17)
  {
    objc_storeStrong(&v18->_name, v17);
  }

  else
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    objc_storeStrong(&v18->_name, v24);
  }

  return v18;
}

- (MPSGraphOptimizer)initWithGraph:(id)a3 lossTensor:(id)a4 learningRateTensor:(id)a5 trainableVariables:(id)a6 name:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MEMORY[0x1E695DF70] array];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __89__MPSGraphOptimizer_initWithGraph_lossTensor_learningRateTensor_trainableVariables_name___block_invoke;
  v28[3] = &unk_1E86D4DF8;
  v18 = v17;
  v29 = v18;
  [v15 enumerateObjectsUsingBlock:v28];
  v19 = [v12 gradientForPrimaryTensor:v13 withTensors:v18 name:v16];
  v20 = [MEMORY[0x1E695DF90] dictionary];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __89__MPSGraphOptimizer_initWithGraph_lossTensor_learningRateTensor_trainableVariables_name___block_invoke_2;
  v25[3] = &unk_1E86D4E20;
  v21 = v20;
  v26 = v21;
  v22 = v19;
  v27 = v22;
  [v18 enumerateObjectsUsingBlock:v25];
  v23 = [(MPSGraphOptimizer *)self initWithGraph:v12 learningRateTensor:v14 trainableVariables:v15 variablesToGradientTensorMap:v21 name:v16];

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
  v3 = [MEMORY[0x1E695DF70] array];
  trainableVariables = self->_trainableVariables;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__MPSGraphOptimizer_updateOperations__block_invoke;
  v11 = &unk_1E86D4E48;
  v5 = v3;
  v12 = v5;
  v13 = self;
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