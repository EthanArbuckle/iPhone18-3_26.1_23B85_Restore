@interface _ATXScoreInterpreterCoreMLModel
+ (double)scoreForOutputValue:(id)value outputIndexedSubscript:(int64_t)subscript;
+ (id)coreMLModelForCoreMLModelName:(id)name;
- (_ATXScoreInterpreterCoreMLModel)initWithModelName:(id)name features:(id)features outputSpecification:(id)specification;
- (double)predictionForEvaluatedFeatures:(id)features withOutputIndexedSubscript:(int64_t)subscript;
- (id)getArgumentsToEvaluateByInitializingInstanceVariablesFromFeatures:(id)features outputSpecification:(id)specification;
@end

@implementation _ATXScoreInterpreterCoreMLModel

- (_ATXScoreInterpreterCoreMLModel)initWithModelName:(id)name features:(id)features outputSpecification:(id)specification
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = _ATXScoreInterpreterCoreMLModel;
  v7 = [(_ATXScoreInterpreterCoreMLModel *)&v14 init];
  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [_ATXScoreInterpreterCoreMLModel coreMLModelForCoreMLModelName:nameCopy];
    v10 = v8[1];
    v8[1] = v9;

    v11 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v8];
    lock = v7->_lock;
    v7->_lock = v11;
  }

  return v7;
}

+ (id)coreMLModelForCoreMLModelName:(id)name
{
  nameCopy = name;
  v4 = [MEMORY[0x277CEB3C0] pathForResource:nameCopy ofType:@"mlmodelc" isDirectory:1];
  if (v4)
  {
    v5 = MEMORY[0x277CBFF20];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    v18 = 0;
    v7 = [v5 modelWithContentsOfURL:v6 error:&v18];
    v8 = v18;

    if (v8)
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(_ATXScoreInterpreterCoreMLModel *)nameCopy coreMLModelForCoreMLModelName:v8, v9];
      }
    }
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_ATXScoreInterpreterCoreMLModel *)v8 coreMLModelForCoreMLModelName:v10, v11, v12, v13, v14, v15, v16];
    }

    v7 = 0;
  }

  return v7;
}

- (id)getArgumentsToEvaluateByInitializingInstanceVariablesFromFeatures:(id)features outputSpecification:(id)specification
{
  specificationCopy = specification;
  featuresCopy = features;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __121___ATXScoreInterpreterCoreMLModel_getArgumentsToEvaluateByInitializingInstanceVariablesFromFeatures_outputSpecification___block_invoke;
  v25 = &unk_27859BAD8;
  v10 = v9;
  v26 = v10;
  v11 = v8;
  v27 = v11;
  [featuresCopy enumerateKeysAndObjectsUsingBlock:&v22];

  v12 = [v11 copy];
  coreMLInputFeatures = self->_coreMLInputFeatures;
  self->_coreMLInputFeatures = v12;

  v14 = [specificationCopy objectForKeyedSubscript:@"outputName"];
  coreMLModelOutputName = self->_coreMLModelOutputName;
  self->_coreMLModelOutputName = v14;

  v16 = [specificationCopy objectForKeyedSubscript:@"outputIndexedSubscript"];

  v17 = [v10 mutableCopy];
  v18 = v17;
  if (v16)
  {
    [v17 addObject:v16];
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  self->_hasOutputIndexedSubscript = v19;
  v20 = [v18 copy];

  return v20;
}

- (double)predictionForEvaluatedFeatures:(id)features withOutputIndexedSubscript:(int64_t)subscript
{
  featuresCopy = features;
  v43 = 0;
  v44[0] = &v43;
  v44[1] = 0x3032000000;
  v44[2] = __Block_byref_object_copy__44;
  v44[3] = __Block_byref_object_dispose__44;
  v45 = 0;
  v7 = objc_alloc(MEMORY[0x277CBFED0]);
  v8 = (v44[0] + 40);
  obj = *(v44[0] + 40);
  v9 = [v7 initWithDictionary:featuresCopy error:&obj];
  objc_storeStrong(v8, obj);
  if (*(v44[0] + 40))
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_ATXScoreInterpreterCoreMLModel *)v44 predictionForEvaluatedFeatures:v10 withOutputIndexedSubscript:v11, v12, v13, v14, v15, v16];
    }

    v17 = -31337.0;
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__44;
    v40 = __Block_byref_object_dispose__44;
    v41 = 0;
    lock = self->_lock;
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __93___ATXScoreInterpreterCoreMLModel_predictionForEvaluatedFeatures_withOutputIndexedSubscript___block_invoke;
    v32 = &unk_27859BB00;
    v34 = &v36;
    v33 = v9;
    v35 = &v43;
    [(_PASLock *)lock runWithLockAcquired:&v29];
    if (*(v44[0] + 40))
    {
      v19 = __atxlog_handle_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(_ATXScoreInterpreterCoreMLModel *)v44 predictionForEvaluatedFeatures:v19 withOutputIndexedSubscript:v20, v21, v22, v23, v24, v25];
      }

      v17 = -31337.0;
    }

    else
    {
      v26 = [v37[5] featureValueForName:{self->_coreMLModelOutputName, v29, v30, v31, v32}];
      [_ATXScoreInterpreterCoreMLModel scoreForOutputValue:v26 outputIndexedSubscript:subscript];
      v17 = v27;
    }

    _Block_object_dispose(&v36, 8);
  }

  _Block_object_dispose(&v43, 8);
  return v17;
}

+ (double)scoreForOutputValue:(id)value outputIndexedSubscript:(int64_t)subscript
{
  valueCopy = value;
  type = [valueCopy type];
  v7 = type;
  if (type > 4)
  {
    if (type == 5)
    {
      multiArrayValue = [valueCopy multiArrayValue];
      v11 = [multiArrayValue objectAtIndexedSubscript:subscript];
      [v11 doubleValue];
      int64Value = v21;
    }

    else
    {
      if (type != 6)
      {
        goto LABEL_8;
      }

      multiArrayValue = [valueCopy dictionaryValue];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:subscript];
      v12 = [multiArrayValue objectForKeyedSubscript:v11];
      [v12 doubleValue];
      int64Value = v13;
    }

    goto LABEL_14;
  }

  if (type == 1)
  {
    int64Value = [valueCopy int64Value];
    goto LABEL_14;
  }

  if (type == 2)
  {
    [valueCopy doubleValue];
    int64Value = v8;
    goto LABEL_14;
  }

LABEL_8:
  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(_ATXScoreInterpreterCoreMLModel *)v7 scoreForOutputValue:v14 outputIndexedSubscript:v15, v16, v17, v18, v19, v20];
  }

  int64Value = -31337.0;
LABEL_14:

  return int64Value;
}

+ (void)coreMLModelForCoreMLModelName:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "error initializing %@ model: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)coreMLModelForCoreMLModelName:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "error finding %@ model in assets", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)predictionForEvaluatedFeatures:(uint64_t)a3 withOutputIndexedSubscript:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ScoreInterpreter - CoreMLModel - Error in initializing MLDictionaryFeatureProvider: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)predictionForEvaluatedFeatures:(uint64_t)a3 withOutputIndexedSubscript:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ScoreInterpreter - CoreMLModel - Error in predictionFromFeatures: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)scoreForOutputValue:(uint64_t)a3 outputIndexedSubscript:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ScoreInterpreter - CoreMLModel - No valid outputType found for %ld", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end