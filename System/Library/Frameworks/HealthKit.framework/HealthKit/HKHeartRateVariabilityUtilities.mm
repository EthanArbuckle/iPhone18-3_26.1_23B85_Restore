@interface HKHeartRateVariabilityUtilities
+ (id)instantaneousBPMsForHeartbeatSeriesSample:(id)sample;
+ (void)deleteHRVSample:(id)sample healthStore:(id)store predicate:(id)predicate options:(unint64_t)options completion:(id)completion;
+ (void)deleteHRVSamplesFromStartDate:(id)date endDate:(id)endDate predicate:(id)predicate options:(unint64_t)options healthStore:(id)store completion:(id)completion;
+ (void)queryForParentSequenceOfHRV:(id)v healthStore:(id)store completion:(id)completion;
@end

@implementation HKHeartRateVariabilityUtilities

+ (void)queryForParentSequenceOfHRV:(id)v healthStore:(id)store completion:(id)completion
{
  v36[3] = *MEMORY[0x1E69E9840];
  vCopy = v;
  storeCopy = store;
  completionCopy = completion;
  quantityType = [vCopy quantityType];
  _hrvType = [self _hrvType];
  v14 = [quantityType isEqual:_hrvType];

  if ((v14 & 1) == 0)
  {
    [HKHeartRateVariabilityUtilities queryForParentSequenceOfHRV:a2 healthStore:self completion:?];
  }

  sourceRevision = [vCopy sourceRevision];
  source = [sourceRevision source];
  _isAppleWatch = [source _isAppleWatch];

  if (_isAppleWatch)
  {
    v18 = MEMORY[0x1E696AE18];
    startDate = [vCopy startDate];
    v20 = [v18 predicateWithFormat:@"startDate >= %@", startDate];

    v21 = MEMORY[0x1E696AE18];
    endDate = [vCopy endDate];
    v23 = [v21 predicateWithFormat:@"endDate <= %@", endDate];

    sourceRevision2 = [vCopy sourceRevision];
    source2 = [sourceRevision2 source];
    v26 = [HKQuery predicateForObjectsFromSource:source2];

    v27 = MEMORY[0x1E696AB28];
    v36[0] = v20;
    v36[1] = v23;
    v36[2] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
    v29 = [v27 andPredicateWithSubpredicates:v28];

    v30 = +[HKSeriesType heartbeatSeriesType];
    v31 = [HKSampleQuery alloc];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __86__HKHeartRateVariabilityUtilities_queryForParentSequenceOfHRV_healthStore_completion___block_invoke;
    v34[3] = &unk_1E7385510;
    v35 = completionCopy;
    v32 = [(HKSampleQuery *)v31 initWithSampleType:v30 predicate:v29 limit:1 sortDescriptors:0 resultsHandler:v34];
    [storeCopy executeQuery:v32];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __86__HKHeartRateVariabilityUtilities_queryForParentSequenceOfHRV_healthStore_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = [a3 firstObject];
  (*(*(a1 + 32) + 16))();
}

+ (void)deleteHRVSample:(id)sample healthStore:(id)store predicate:(id)predicate options:(unint64_t)options completion:(id)completion
{
  sampleCopy = sample;
  storeCopy = store;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke;
  aBlock[3] = &unk_1E7385560;
  v14 = storeCopy;
  v28 = v14;
  v29 = sampleCopy;
  optionsCopy = options;
  selfCopy = self;
  v15 = completionCopy;
  v30 = v15;
  v16 = sampleCopy;
  v17 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_37;
  v21[3] = &unk_1E73855B0;
  v22 = v14;
  v23 = v17;
  optionsCopy2 = options;
  selfCopy2 = self;
  v24 = v15;
  v18 = v15;
  v19 = v17;
  v20 = v14;
  [self queryForParentSequenceOfHRV:v16 healthStore:v20 completion:v21];
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2;
  v4[3] = &unk_1E7385538;
  v3 = *(a1 + 56);
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  [v1 deleteObject:v2 options:v3 withCompletion:v4];
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_ERROR))
    {
      __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_cold_1(a1);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_37(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_38;
    v10[3] = &unk_1E7385588;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v11 = v6;
    v13 = v7;
    v12 = *(a1 + 48);
    [v5 deleteObject:a2 options:v4 withCompletion:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 40) + 16);

    v9();
  }
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_38(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_ERROR))
    {
      __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_38_cold_1(a1);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }
}

+ (void)deleteHRVSamplesFromStartDate:(id)date endDate:(id)endDate predicate:(id)predicate options:(unint64_t)options healthStore:(id)store completion:(id)completion
{
  v35[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  storeCopy = store;
  completionCopy = completion;
  v17 = [HKQuery predicateForSamplesWithStartDate:date endDate:endDate options:0];
  v18 = v17;
  if (predicateCopy)
  {
    v19 = MEMORY[0x1E696AB28];
    v35[0] = predicateCopy;
    v35[1] = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v21 = [v19 andPredicateWithSubpredicates:v20];

    v18 = v21;
  }

  _sequenceType = [self _sequenceType];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke;
  v28[3] = &unk_1E7385600;
  v29 = storeCopy;
  v30 = v18;
  selfCopy = self;
  optionsCopy = options;
  v31 = predicateCopy;
  v32 = completionCopy;
  v23 = predicateCopy;
  v24 = v18;
  v25 = storeCopy;
  v26 = completionCopy;
  [v25 deleteObjectsOfType:_sequenceType predicate:v24 options:options withCompletion:v28];

  v27 = *MEMORY[0x1E69E9840];
}

void __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 64) _hrvType];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_40;
    v12[3] = &unk_1E73855D8;
    v9 = *(a1 + 72);
    v15 = *(a1 + 64);
    v10 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    [v7 deleteObjectsOfType:v8 predicate:v10 options:v9 withCompletion:v12];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_ERROR))
    {
      __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_cold_1(a1);
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v6);
    }
  }
}

void __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_ERROR))
    {
      __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_40_cold_1(a1);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v6);
  }
}

+ (id)instantaneousBPMsForHeartbeatSeriesSample:(id)sample
{
  sampleCopy = sample;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  startDate = [sampleCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v7 = v6;

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__HKHeartRateVariabilityUtilities_instantaneousBPMsForHeartbeatSeriesSample___block_invoke;
  v10[3] = &unk_1E7385628;
  v12 = v15;
  v13 = v17;
  v14 = v7;
  v8 = v4;
  v11 = v8;
  [sampleCopy _enumerateHeartbeatDataWithBlock:v10];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);

  return v8;
}

uint64_t __77__HKHeartRateVariabilityUtilities_instantaneousBPMsForHeartbeatSeriesSample___block_invoke(uint64_t a1, char a2, double a3)
{
  if ((a2 & 1) == 0 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = [[HKBeatToBeatInstantaneousBPM alloc] initWithBPM:1.0 / ((a3 - *(*(*(a1 + 48) + 8) + 24)) / 60.0) time:*(a1 + 56) + a3];
    [*(a1 + 32) addObject:v5];
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  return 1;
}

+ (void)queryForParentSequenceOfHRV:(uint64_t)a1 healthStore:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHeartRateVariabilityUtilities.m" lineNumber:52 description:@"Should only query for parents sequence for HRV samples"];
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_38_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_40_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

@end