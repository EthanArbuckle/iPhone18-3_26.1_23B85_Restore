@interface HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator
- (BOOL)defaultBoolValueWhenKeyIsMissing;
- (BOOL)isSatisfiedForBoolValue:(BOOL)a3;
- (BOOL)isSatisfiedForValue:(id)a3;
- (id)defaultValueWhenKeyIsMissing;
- (id)whichUserDefaultsDataSourceInDataSource:(id)a3;
@end

@implementation HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator

- (id)defaultValueWhenKeyIsMissing
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator *)self defaultBoolValueWhenKeyIsMissing];

  return [v2 numberWithBool:v3];
}

- (BOOL)isSatisfiedForValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator *)self isSatisfiedForValue:v4, v6];
    }

    v5 = [(HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator *)self defaultBoolValueWhenKeyIsMissing];
  }

  v7 = [(HKFeatureAvailabilityRequirementBooleanUserDefaultEvaluator *)self isSatisfiedForBoolValue:v5];

  return v7;
}

- (BOOL)defaultBoolValueWhenKeyIsMissing
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

- (BOOL)isSatisfiedForBoolValue:(BOOL)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

- (id)whichUserDefaultsDataSourceInDataSource:(id)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_4();
  v3 = [HKUserDefaultsDataSource alloc];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [(HKUserDefaultsDataSource *)v3 initWithUserDefaults:v4];

  return v5;
}

- (void)isSatisfiedForValue:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = v6;
  v8 = [a1 userDefaultsKey];
  v10 = 138543874;
  v11 = v6;
  v12 = 2114;
  v13 = a2;
  v14 = 2114;
  v15 = v8;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: Unexpected value %{public}@ for key %{public}@", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end