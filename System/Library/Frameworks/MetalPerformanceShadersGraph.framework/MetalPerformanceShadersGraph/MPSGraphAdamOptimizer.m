@interface MPSGraphAdamOptimizer
- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 learningRateTensor:(id)a4 momentumTensors:(id)a5 velocityTensors:(id)a6 maximumVelocityTensors:(id)a7 beta1:(float)a8 beta2:(float)a9 epsilon:(float)a10 iterations:(unint64_t)a11 trainableVariables:(id)a12 variablesToGradientTensorMap:(id)a13 name:(id)a14;
- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 learningRateTensor:(id)a4 trainableVariables:(id)a5 variablesToGradientTensorMap:(id)a6 name:(id)a7;
- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 lossTensor:(id)a4 learningRateTensor:(id)a5 beta1:(float)a6 beta2:(float)a7 epsilon:(float)a8 iterations:(unint64_t)a9 trainableVariables:(id)a10 name:(id)a11;
- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 lossTensor:(id)a4 learningRateTensor:(id)a5 momentumTensors:(id)a6 velocityTensors:(id)a7 maximumVelocityTensors:(id)a8 beta1:(float)a9 beta2:(float)a10 epsilon:(float)a11 iterations:(unint64_t)a12 trainableVariables:(id)a13 name:(id)a14;
- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 lossTensor:(id)a4 learningRateTensor:(id)a5 trainableVariables:(id)a6 name:(id)a7;
@end

@implementation MPSGraphAdamOptimizer

- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 learningRateTensor:(id)a4 momentumTensors:(id)a5 velocityTensors:(id)a6 maximumVelocityTensors:(id)a7 beta1:(float)a8 beta2:(float)a9 epsilon:(float)a10 iterations:(unint64_t)a11 trainableVariables:(id)a12 variablesToGradientTensorMap:(id)a13 name:(id)a14
{
  v23 = a3;
  v24 = a4;
  v84 = a5;
  v83 = a6;
  v82 = a7;
  v25 = a12;
  v96.receiver = self;
  v96.super_class = MPSGraphAdamOptimizer;
  v86 = v24;
  v80 = v23;
  v81 = a13;
  v78 = a14;
  v79 = v25;
  v26 = [(MPSGraphOptimizer *)&v96 initWithGraph:v23 learningRateTensor:v24 trainableVariables:v25 variablesToGradientTensorMap:v81 name:v78];
  v27 = [(MPSGraph *)v26->super._graph constantWithScalar:&unk_1F5B77CF0 shape:268435488 dataType:a8];
  beta1Tensor = v26->_beta1Tensor;
  v26->_beta1Tensor = v27;

  v29 = [(MPSGraph *)v26->super._graph constantWithScalar:&unk_1F5B77D08 shape:268435488 dataType:a9];
  beta2Tensor = v26->_beta2Tensor;
  v26->_beta2Tensor = v29;

  v31 = [(MPSGraph *)v26->super._graph constantWithScalar:&unk_1F5B77D20 shape:268435488 dataType:a10];
  epsilonTensor = v26->_epsilonTensor;
  v26->_epsilonTensor = v31;

  graph = v26->super._graph;
  v34 = [MPSGraphVariableInitializer initializerWithConstant:a11];
  v35 = [v34 initializedDataWithNumberOfValues:1 dataType:268435488];
  v36 = [(NSString *)v26->super._name stringByAppendingFormat:@"/iterations"];
  v37 = [(MPSGraph *)graph variableWithData:v35 shape:&unk_1F5B77D38 dataType:268435488 name:v36];
  v38 = [v37 operation];
  iterationsVariable = v26->_iterationsVariable;
  v26->_iterationsVariable = v38;

  v77 = [MEMORY[0x1E695DF90] dictionary];
  v40 = [(MPSGraphOperation *)v26->_iterationsVariable outputTensors];
  v41 = [v40 objectAtIndexedSubscript:0];

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
  v56 = [(MPSGraph *)v26->super._graph currentLearningRateWithLearningRateTensor:v24 beta1Tensor:v26->_beta1Tensor beta2Tensor:v26->_beta2Tensor beta1PowerTensor:v85 beta2PowerTensor:v55 name:v48];
  trainableVariables = v26->super._trainableVariables;
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __197__MPSGraphAdamOptimizer_initWithGraph_learningRateTensor_momentumTensors_velocityTensors_maximumVelocityTensors_beta1_beta2_epsilon_iterations_trainableVariables_variablesToGradientTensorMap_name___block_invoke;
  v87[3] = &unk_1E86D4EC0;
  v58 = v81;
  v88 = v58;
  v59 = v26;
  v89 = v59;
  v60 = v84;
  v90 = v60;
  v61 = v83;
  v91 = v61;
  v62 = v82;
  v92 = v62;
  v63 = v56;
  v93 = v63;
  v64 = v73;
  v94 = v64;
  v65 = v77;
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

- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 lossTensor:(id)a4 learningRateTensor:(id)a5 momentumTensors:(id)a6 velocityTensors:(id)a7 maximumVelocityTensors:(id)a8 beta1:(float)a9 beta2:(float)a10 epsilon:(float)a11 iterations:(unint64_t)a12 trainableVariables:(id)a13 name:(id)a14
{
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a13;
  v30 = a14;
  v37.receiver = self;
  v37.super_class = MPSGraphAdamOptimizer;
  v31 = [(MPSGraphOptimizer *)&v37 initWithGraph:v23 lossTensor:v24 learningRateTensor:v25 trainableVariables:v29 name:v30];
  *&v32 = a9;
  *&v33 = a10;
  *&v34 = a11;
  v35 = [(MPSGraphAdamOptimizer *)v31 initWithGraph:v23 learningRateTensor:v25 momentumTensors:v26 velocityTensors:v27 maximumVelocityTensors:v28 beta1:a12 beta2:v32 epsilon:v33 iterations:v34 trainableVariables:v31->super._trainableVariables variablesToGradientTensorMap:v31->super._variablesToGradientTensorMap name:v30];

  return v35;
}

- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 lossTensor:(id)a4 learningRateTensor:(id)a5 beta1:(float)a6 beta2:(float)a7 epsilon:(float)a8 iterations:(unint64_t)a9 trainableVariables:(id)a10 name:(id)a11
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a10;
  v24 = a11;
  v31.receiver = self;
  v31.super_class = MPSGraphAdamOptimizer;
  v25 = [(MPSGraphOptimizer *)&v31 initWithGraph:v20 lossTensor:v21 learningRateTensor:v22 trainableVariables:v23 name:v24];
  *&v26 = a6;
  *&v27 = a7;
  *&v28 = a8;
  v29 = [(MPSGraphAdamOptimizer *)v25 initWithGraph:v20 learningRateTensor:v22 momentumTensors:0 velocityTensors:0 maximumVelocityTensors:0 beta1:a9 beta2:v26 epsilon:v27 iterations:v28 trainableVariables:v25->super._trainableVariables variablesToGradientTensorMap:v25->super._variablesToGradientTensorMap name:v24];

  return v29;
}

- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 learningRateTensor:(id)a4 trainableVariables:(id)a5 variablesToGradientTensorMap:(id)a6 name:(id)a7
{
  LODWORD(v7) = 1063675494;
  LODWORD(v8) = 1065336439;
  LODWORD(v9) = 869711765;
  return [(MPSGraphAdamOptimizer *)self initWithGraph:a3 learningRateTensor:a4 momentumTensors:0 velocityTensors:0 maximumVelocityTensors:0 beta1:0 beta2:v7 epsilon:v8 iterations:v9 trainableVariables:a5 variablesToGradientTensorMap:a6 name:a7];
}

- (MPSGraphAdamOptimizer)initWithGraph:(id)a3 lossTensor:(id)a4 learningRateTensor:(id)a5 trainableVariables:(id)a6 name:(id)a7
{
  v8.receiver = self;
  v8.super_class = MPSGraphAdamOptimizer;
  return [(MPSGraphOptimizer *)&v8 initWithGraph:a3 lossTensor:a4 learningRateTensor:a5 trainableVariables:a6 name:a7];
}

@end