@interface MPSGraphAdamOptimizer
- (MPSGraphAdamOptimizer)initWithGraph:(id)graph learningRateTensor:(id)tensor momentumTensors:(id)tensors velocityTensors:(id)velocityTensors maximumVelocityTensors:(id)maximumVelocityTensors beta1:(float)beta1 beta2:(float)beta2 epsilon:(float)self0 iterations:(unint64_t)self1 trainableVariables:(id)self2 variablesToGradientTensorMap:(id)self3 name:(id)self4;
- (MPSGraphAdamOptimizer)initWithGraph:(id)graph learningRateTensor:(id)tensor trainableVariables:(id)variables variablesToGradientTensorMap:(id)map name:(id)name;
- (MPSGraphAdamOptimizer)initWithGraph:(id)graph lossTensor:(id)tensor learningRateTensor:(id)rateTensor beta1:(float)beta1 beta2:(float)beta2 epsilon:(float)epsilon iterations:(unint64_t)iterations trainableVariables:(id)self0 name:(id)self1;
- (MPSGraphAdamOptimizer)initWithGraph:(id)graph lossTensor:(id)tensor learningRateTensor:(id)rateTensor momentumTensors:(id)tensors velocityTensors:(id)velocityTensors maximumVelocityTensors:(id)maximumVelocityTensors beta1:(float)beta1 beta2:(float)self0 epsilon:(float)self1 iterations:(unint64_t)self2 trainableVariables:(id)self3 name:(id)self4;
- (MPSGraphAdamOptimizer)initWithGraph:(id)graph lossTensor:(id)tensor learningRateTensor:(id)rateTensor trainableVariables:(id)variables name:(id)name;
@end

@implementation MPSGraphAdamOptimizer

- (MPSGraphAdamOptimizer)initWithGraph:(id)graph learningRateTensor:(id)tensor momentumTensors:(id)tensors velocityTensors:(id)velocityTensors maximumVelocityTensors:(id)maximumVelocityTensors beta1:(float)beta1 beta2:(float)beta2 epsilon:(float)self0 iterations:(unint64_t)self1 trainableVariables:(id)self2 variablesToGradientTensorMap:(id)self3 name:(id)self4
{
  graphCopy = graph;
  tensorCopy = tensor;
  tensorsCopy = tensors;
  velocityTensorsCopy = velocityTensors;
  maximumVelocityTensorsCopy = maximumVelocityTensors;
  variablesCopy = variables;
  v96.receiver = self;
  v96.super_class = MPSGraphAdamOptimizer;
  v86 = tensorCopy;
  v80 = graphCopy;
  mapCopy = map;
  nameCopy = name;
  v79 = variablesCopy;
  v26 = [(MPSGraphOptimizer *)&v96 initWithGraph:graphCopy learningRateTensor:tensorCopy trainableVariables:variablesCopy variablesToGradientTensorMap:mapCopy name:nameCopy];
  v27 = [(MPSGraph *)v26->super._graph constantWithScalar:&unk_1F5B77CF0 shape:268435488 dataType:beta1];
  beta1Tensor = v26->_beta1Tensor;
  v26->_beta1Tensor = v27;

  v29 = [(MPSGraph *)v26->super._graph constantWithScalar:&unk_1F5B77D08 shape:268435488 dataType:beta2];
  beta2Tensor = v26->_beta2Tensor;
  v26->_beta2Tensor = v29;

  v31 = [(MPSGraph *)v26->super._graph constantWithScalar:&unk_1F5B77D20 shape:268435488 dataType:epsilon];
  epsilonTensor = v26->_epsilonTensor;
  v26->_epsilonTensor = v31;

  graph = v26->super._graph;
  v34 = [MPSGraphVariableInitializer initializerWithConstant:iterations];
  v35 = [v34 initializedDataWithNumberOfValues:1 dataType:268435488];
  v36 = [(NSString *)v26->super._name stringByAppendingFormat:@"/iterations"];
  v37 = [(MPSGraph *)graph variableWithData:v35 shape:&unk_1F5B77D38 dataType:268435488 name:v36];
  operation = [v37 operation];
  iterationsVariable = v26->_iterationsVariable;
  v26->_iterationsVariable = operation;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  outputTensors = [(MPSGraphOperation *)v26->_iterationsVariable outputTensors];
  v41 = [outputTensors objectAtIndexedSubscript:0];

  v76 = v41;
  v42 = [(MPSGraph *)v26->super._graph constantWithScalar:&unk_1F5B77D50 shape:268435488 dataType:1.0];
  v43 = v26->super._graph;
  v75 = v42;
  v44 = [(NSString *)v26->super._name stringByAppendingString:@"/iterations_add1"];
  v45 = [(MPSGraph *)v43 additionWithPrimaryTensor:v41 secondaryTensor:v42 name:v44];

  v46 = v26->super._graph;
  v74 = v45;
  v47 = [(NSString *)v26->super._name stringByAppendingString:@"/iterations_add1_assign"];
  v73 = [(MPSGraph *)v46 assignVariable:v41 withValueOfTensor:v45 name:v47];

  v48 = [(NSString *)v26->super._name stringByAppendingString:@"/learningRateUpdate"];
  v49 = v26->super._graph;
  v50 = v26->_beta1Tensor;
  v72 = v48;
  v51 = [v48 stringByAppendingString:@"/beta1Power"];
  v85 = [(MPSGraph *)v49 powerWithPrimaryTensor:v50 secondaryTensor:v41 name:v51];

  v52 = v26->super._graph;
  v53 = v26->_beta2Tensor;
  v54 = [v48 stringByAppendingString:@"/beta2Power"];
  v55 = [(MPSGraph *)v52 powerWithPrimaryTensor:v53 secondaryTensor:v41 name:v54];

  v71 = v55;
  v56 = [(MPSGraph *)v26->super._graph currentLearningRateWithLearningRateTensor:tensorCopy beta1Tensor:v26->_beta1Tensor beta2Tensor:v26->_beta2Tensor beta1PowerTensor:v85 beta2PowerTensor:v55 name:v48];
  trainableVariables = v26->super._trainableVariables;
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __197__MPSGraphAdamOptimizer_initWithGraph_learningRateTensor_momentumTensors_velocityTensors_maximumVelocityTensors_beta1_beta2_epsilon_iterations_trainableVariables_variablesToGradientTensorMap_name___block_invoke;
  v87[3] = &unk_1E86D4EC0;
  v58 = mapCopy;
  v88 = v58;
  v59 = v26;
  v89 = v59;
  v60 = tensorsCopy;
  v90 = v60;
  v61 = velocityTensorsCopy;
  v91 = v61;
  v62 = maximumVelocityTensorsCopy;
  v92 = v62;
  v63 = v56;
  v93 = v63;
  v64 = v73;
  v94 = v64;
  v65 = dictionary;
  v95 = v65;
  [(NSArray *)trainableVariables enumerateObjectsUsingBlock:v87];
  v66 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v65];
  variablesToUpdateOpMap = v59->super._variablesToUpdateOpMap;
  v59->super._variablesToUpdateOpMap = v66;

  v68 = v95;
  v69 = v59;

  return v69;
}

void __197__MPSGraphAdamOptimizer_initWithGraph_learningRateTensor_momentumTensors_velocityTensors_maximumVelocityTensors_beta1_beta2_epsilon_iterations_trainableVariables_variablesToGradientTensorMap_name___block_invoke(uint64_t a1, void *a2)
{
  v48 = a2;
  v45 = [*(a1 + 32) objectForKeyedSubscript:v48];
  v3 = [v48 shape];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __197__MPSGraphAdamOptimizer_initWithGraph_learningRateTensor_momentumTensors_velocityTensors_maximumVelocityTensors_beta1_beta2_epsilon_iterations_trainableVariables_variablesToGradientTensorMap_name___block_invoke_2;
  v49[3] = &unk_1E86D4E98;
  v49[4] = &v50;
  v43 = v3;
  [v3 enumerateObjectsUsingBlock:v49];
  v4 = *(*(a1 + 40) + 8);
  v5 = +[MPSGraphVariableInitializer initializerWithZeros];
  v6 = [v5 initializedDataWithNumberOfValues:v51[3] dataType:268435488];
  v7 = [v48 shape];
  v8 = *(*(a1 + 40) + 48);
  v9 = [v48 name];
  v10 = [v8 stringByAppendingFormat:@"/%@/momentum", v9];
  v47 = [v4 variableWithData:v6 shape:v7 dataType:268435488 name:v10];

  v11 = *(a1 + 48);
  if (v11)
  {
    [v11 addObject:v47];
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = +[MPSGraphVariableInitializer initializerWithZeros];
  v14 = [v13 initializedDataWithNumberOfValues:v51[3] dataType:268435488];
  v15 = [v48 shape];
  v16 = *(*(a1 + 40) + 48);
  v17 = [v48 name];
  v18 = [v16 stringByAppendingFormat:@"/%@/velocity", v17];
  v46 = [v12 variableWithData:v14 shape:v15 dataType:268435488 name:v18];

  v19 = *(a1 + 56);
  if (v19)
  {
    [v19 addObject:v46];
  }

  if (*(a1 + 64))
  {
    v20 = *(*(a1 + 40) + 8);
    v21 = +[MPSGraphVariableInitializer initializerWithZeros];
    v22 = [v21 initializedDataWithNumberOfValues:v51[3] dataType:268435488];
    v23 = [v48 shape];
    v24 = *(*(a1 + 40) + 48);
    v25 = [v48 name];
    v26 = [v24 stringByAppendingFormat:@"/%@/maxVelocity", v25];
    v27 = [v20 variableWithData:v22 shape:v23 dataType:268435488 name:v26];

    [*(a1 + 64) addObject:v27];
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a1 + 40);
  v30 = v29[1];
  v31 = v29[7];
  v32 = *(a1 + 72);
  v33 = v29[8];
  v34 = v29[9];
  v42 = v28;
  v41 = [v47 operation];
  v44 = [v46 operation];
  v35 = *(a1 + 64);
  if (v35)
  {
    v36 = [v28 operation];
  }

  else
  {
    v36 = 0;
  }

  v37 = *(*(a1 + 40) + 48);
  v38 = [v48 name];
  v39 = [v37 stringByAppendingFormat:@"/%@/adamUpdate", v38];
  v40 = [v30 applyAdamWithCurrentLearningRateTensor:v32 beta1Tensor:v31 beta2Tensor:v33 epsilonTensor:v34 variable:v48 momentumVariable:v41 velocityVariable:v44 maximumVelocityVariable:v36 gradientTensor:v45 name:v39];

  if (v35)
  {
  }

  [v40[4] addObject:*(a1 + 80)];
  [*(a1 + 88) setObject:v40 forKey:v48];

  _Block_object_dispose(&v50, 8);
}

void __197__MPSGraphAdamOptimizer_initWithGraph_learningRateTensor_momentumTensors_velocityTensors_maximumVelocityTensors_beta1_beta2_epsilon_iterations_trainableVariables_variablesToGradientTensorMap_name___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) *= [v3 integerValue];
}

- (MPSGraphAdamOptimizer)initWithGraph:(id)graph lossTensor:(id)tensor learningRateTensor:(id)rateTensor momentumTensors:(id)tensors velocityTensors:(id)velocityTensors maximumVelocityTensors:(id)maximumVelocityTensors beta1:(float)beta1 beta2:(float)self0 epsilon:(float)self1 iterations:(unint64_t)self2 trainableVariables:(id)self3 name:(id)self4
{
  graphCopy = graph;
  tensorCopy = tensor;
  rateTensorCopy = rateTensor;
  tensorsCopy = tensors;
  velocityTensorsCopy = velocityTensors;
  maximumVelocityTensorsCopy = maximumVelocityTensors;
  variablesCopy = variables;
  nameCopy = name;
  v37.receiver = self;
  v37.super_class = MPSGraphAdamOptimizer;
  v31 = [(MPSGraphOptimizer *)&v37 initWithGraph:graphCopy lossTensor:tensorCopy learningRateTensor:rateTensorCopy trainableVariables:variablesCopy name:nameCopy];
  *&v32 = beta1;
  *&v33 = beta2;
  *&v34 = epsilon;
  v35 = [(MPSGraphAdamOptimizer *)v31 initWithGraph:graphCopy learningRateTensor:rateTensorCopy momentumTensors:tensorsCopy velocityTensors:velocityTensorsCopy maximumVelocityTensors:maximumVelocityTensorsCopy beta1:iterations beta2:v32 epsilon:v33 iterations:v34 trainableVariables:v31->super._trainableVariables variablesToGradientTensorMap:v31->super._variablesToGradientTensorMap name:nameCopy];

  return v35;
}

- (MPSGraphAdamOptimizer)initWithGraph:(id)graph lossTensor:(id)tensor learningRateTensor:(id)rateTensor beta1:(float)beta1 beta2:(float)beta2 epsilon:(float)epsilon iterations:(unint64_t)iterations trainableVariables:(id)self0 name:(id)self1
{
  graphCopy = graph;
  tensorCopy = tensor;
  rateTensorCopy = rateTensor;
  variablesCopy = variables;
  nameCopy = name;
  v31.receiver = self;
  v31.super_class = MPSGraphAdamOptimizer;
  v25 = [(MPSGraphOptimizer *)&v31 initWithGraph:graphCopy lossTensor:tensorCopy learningRateTensor:rateTensorCopy trainableVariables:variablesCopy name:nameCopy];
  *&v26 = beta1;
  *&v27 = beta2;
  *&v28 = epsilon;
  v29 = [(MPSGraphAdamOptimizer *)v25 initWithGraph:graphCopy learningRateTensor:rateTensorCopy momentumTensors:0 velocityTensors:0 maximumVelocityTensors:0 beta1:iterations beta2:v26 epsilon:v27 iterations:v28 trainableVariables:v25->super._trainableVariables variablesToGradientTensorMap:v25->super._variablesToGradientTensorMap name:nameCopy];

  return v29;
}

- (MPSGraphAdamOptimizer)initWithGraph:(id)graph learningRateTensor:(id)tensor trainableVariables:(id)variables variablesToGradientTensorMap:(id)map name:(id)name
{
  LODWORD(v7) = 1063675494;
  LODWORD(v8) = 1065336439;
  LODWORD(v9) = 869711765;
  return [(MPSGraphAdamOptimizer *)self initWithGraph:graph learningRateTensor:tensor momentumTensors:0 velocityTensors:0 maximumVelocityTensors:0 beta1:0 beta2:v7 epsilon:v8 iterations:v9 trainableVariables:variables variablesToGradientTensorMap:map name:name];
}

- (MPSGraphAdamOptimizer)initWithGraph:(id)graph lossTensor:(id)tensor learningRateTensor:(id)rateTensor trainableVariables:(id)variables name:(id)name
{
  v8.receiver = self;
  v8.super_class = MPSGraphAdamOptimizer;
  return [(MPSGraphOptimizer *)&v8 initWithGraph:graph lossTensor:tensor learningRateTensor:rateTensor trainableVariables:variables name:name];
}

@end