@interface ATXCandidateRelevanceLogisticRegressionModelTrainingPlan
+ (id)stringForPMLRegularizationStrategy:(unint64_t)strategy;
+ (unint64_t)regularizationStrategyForString:(id)string;
- (ATXCandidateRelevanceLogisticRegressionModelTrainingPlan)init;
- (ATXCandidateRelevanceLogisticRegressionModelTrainingPlan)initWithIntercept:(BOOL)intercept learningRate:(float)rate minIterations:(unint64_t)iterations stoppingThreshold:(float)threshold regularizationStrategy:(unint64_t)strategy regularizationRate:(float)regularizationRate regularizationL1Ratio:(float)ratio weightTruncationThreshold:(float)self0;
- (ATXCandidateRelevanceLogisticRegressionModelTrainingPlan)initWithParameters:(id)parameters;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXCandidateRelevanceLogisticRegressionModelTrainingPlan:(id)plan;
- (id)trainModelForDataPoints:(id)points candidate:(id)candidate featurizationManager:(id)manager;
- (id)truncatedWeightsForWeights:(id)weights;
@end

@implementation ATXCandidateRelevanceLogisticRegressionModelTrainingPlan

- (ATXCandidateRelevanceLogisticRegressionModelTrainingPlan)init
{
  v3 = objc_opt_new();
  v4 = [(ATXCandidateRelevanceLogisticRegressionModelTrainingPlan *)self initWithParameters:v3];

  return v4;
}

- (ATXCandidateRelevanceLogisticRegressionModelTrainingPlan)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKeyedSubscript:@"LogisticRegressionIntercept"];
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v8 = [parametersCopy objectForKeyedSubscript:@"LogisticRegressionLearningRate"];
  v9 = v8;
  if (v8)
  {
    [v8 floatValue];
    v11 = v10;
  }

  else
  {
    v11 = 1017370378;
  }

  v12 = [parametersCopy objectForKeyedSubscript:@"LogisticRegressionMinIterations"];
  v13 = v12;
  if (v12)
  {
    intValue = [v12 intValue];
  }

  else
  {
    intValue = 100;
  }

  v15 = [parametersCopy objectForKeyedSubscript:@"LogisticRegressionStoppingThreshold"];
  v16 = v15;
  if (v15)
  {
    [v15 floatValue];
    v18 = v17;
  }

  else
  {
    v18 = 953267991;
  }

  v19 = [parametersCopy objectForKeyedSubscript:@"LogisticRegressionRegularizationStrategy"];
  v20 = NSClassFromString(&cfstr_Nsstring.isa);
  v21 = v19;
  if (v20)
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = @"ElasticNet";
  if (v23)
  {
    v24 = v23;
  }

  v25 = v24;

  v26 = [objc_opt_class() regularizationStrategyForString:v25];
  v27 = [parametersCopy objectForKeyedSubscript:@"LogisticRegressionRegularizationRate"];
  v28 = v27;
  if (v27)
  {
    [v27 floatValue];
    v30 = v29;
  }

  else
  {
    v30 = 4.0;
  }

  v31 = [parametersCopy objectForKeyedSubscript:@"LogisticRegressionRegularizationL1Ratio"];
  v32 = v31;
  if (v31)
  {
    [v31 floatValue];
    v34 = v33;
  }

  else
  {
    v34 = 1053609165;
  }

  v35 = [parametersCopy objectForKeyedSubscript:@"LogisticRegressionWeightTruncationThreshold"];
  v36 = v35;
  if (v35)
  {
    [v35 floatValue];
    v38 = v37;
  }

  else
  {
    v38 = 981668463;
  }

  LODWORD(v39) = v11;
  LODWORD(v40) = v18;
  *&v41 = v30;
  LODWORD(v42) = v34;
  LODWORD(v43) = v38;
  v44 = [(ATXCandidateRelevanceLogisticRegressionModelTrainingPlan *)self initWithIntercept:bOOLValue learningRate:intValue minIterations:v26 stoppingThreshold:v39 regularizationStrategy:v40 regularizationRate:v41 regularizationL1Ratio:v42 weightTruncationThreshold:v43];

  return v44;
}

- (ATXCandidateRelevanceLogisticRegressionModelTrainingPlan)initWithIntercept:(BOOL)intercept learningRate:(float)rate minIterations:(unint64_t)iterations stoppingThreshold:(float)threshold regularizationStrategy:(unint64_t)strategy regularizationRate:(float)regularizationRate regularizationL1Ratio:(float)ratio weightTruncationThreshold:(float)self0
{
  v19.receiver = self;
  v19.super_class = ATXCandidateRelevanceLogisticRegressionModelTrainingPlan;
  result = [(ATXCandidateRelevanceLogisticRegressionModelTrainingPlan *)&v19 init];
  if (result)
  {
    result->_intercept = intercept;
    result->_learningRate = rate;
    result->_stoppingThreshold = threshold;
    result->_minIterations = iterations;
    result->_regularizationStrategy = strategy;
    result->_regularizationRate = regularizationRate;
    result->_regularizationL1Ratio = ratio;
    result->_weightTruncationThreshold = truncationThreshold;
  }

  return result;
}

+ (unint64_t)regularizationStrategyForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"L1"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"L2"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"ElasticNet"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringForPMLRegularizationStrategy:(unint64_t)strategy
{
  if (strategy >= 4)
  {
    strategy = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", strategy];
  }

  else
  {
    strategy = off_27859DE80[strategy];
  }

  return strategy;
}

- (id)trainModelForDataPoints:(id)points candidate:(id)candidate featurizationManager:(id)manager
{
  v7 = MEMORY[0x277D41F40];
  managerCopy = manager;
  pointsCopy = points;
  v10 = [v7 zeroWeightsOfLength:{self->_intercept + objc_msgSend(managerCopy, "numberOfInputDimensions")}];
  *&v11 = self->_learningRate;
  *&v12 = self->_stoppingThreshold;
  *&v13 = self->_regularizationRate;
  *&v14 = self->_regularizationL1Ratio;
  v15 = [MEMORY[0x277D41F30] solverWithWeights:v10 andIntercept:self->_intercept learningRate:self->_minIterations minIterations:self->_regularizationStrategy stoppingThreshold:v11 regularizationStrategy:v12 regularizationRate:v13 l1Ratio:v14];
  v16 = [managerCopy sparseFeatureMatrixFromDataPoints:pointsCopy];
  [v15 setCovariates:v16];
  v17 = objc_opt_class();

  v18 = [v17 denseLabelVectorFromDataPoints:pointsCopy];

  v19 = [MEMORY[0x277D41F38] modelRegressorFromFloats:v18];
  [v15 setObjective:v19];
  [v15 solve];
  weights = [v15 weights];
  v21 = [(ATXCandidateRelevanceLogisticRegressionModelTrainingPlan *)self truncatedWeightsForWeights:weights];

  v22 = [ATXCandidateRelevanceLogisticRegressionModel alloc];
  v23 = [MEMORY[0x277D41F30] withWeights:v21 andIntercept:self->_intercept];
  v24 = [(ATXCandidateRelevanceLogisticRegressionModel *)v22 initWithModel:v23];

  return v24;
}

- (id)truncatedWeightsForWeights:(id)weights
{
  weightsCopy = weights;
  v5 = weightsCopy;
  if (self->_weightTruncationThreshold == 0.0)
  {
    v6 = weightsCopy;
  }

  else
  {
    asMutableDenseVector = [weightsCopy asMutableDenseVector];
    v8 = objc_opt_new();
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __87__ATXCandidateRelevanceLogisticRegressionModelTrainingPlan_truncatedWeightsForWeights___block_invoke;
    v14 = &unk_27859DE60;
    selfCopy = self;
    v16 = v8;
    v9 = v8;
    [asMutableDenseVector enumerateValuesWithBlock:&v11];
    v6 = [MEMORY[0x277D41F40] modelWeightsFromFloats:{v9, v11, v12, v13, v14, selfCopy}];
  }

  return v6;
}

uint64_t __87__ATXCandidateRelevanceLogisticRegressionModelTrainingPlan_truncatedWeightsForWeights___block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (fabsf(*&a2) < *(v3 + 28))
  {
    *&a2 = 0.0;
  }

  return [v2 append:a2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCandidateRelevanceLogisticRegressionModelTrainingPlan *)self isEqualToATXCandidateRelevanceLogisticRegressionModelTrainingPlan:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCandidateRelevanceLogisticRegressionModelTrainingPlan:(id)plan
{
  planCopy = plan;
  v5 = self->_intercept == *(planCopy + 8) && self->_learningRate == planCopy[3] && self->_minIterations == *(planCopy + 4) && self->_stoppingThreshold == planCopy[4] && self->_regularizationRate == planCopy[5] && self->_regularizationStrategy == *(planCopy + 5) && self->_regularizationL1Ratio == planCopy[6] && self->_weightTruncationThreshold == planCopy[7];

  return v5;
}

@end