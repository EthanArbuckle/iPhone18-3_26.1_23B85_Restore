@interface HKFeatureAvailabilityRequirementUserDefaultEvaluator
+ (NSString)requirementIdentifier;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSatisfiedForValue:(id)a3;
- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithUserDefaultsKey:(id)a3;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (id)whichUserDefaultsDataSourceInDataSource:(id)a3;
- (void)_notifyObserver:(void *)a3 forNewValue:;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementUserDefaultEvaluator

- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithUserDefaultsKey:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementUserDefaultEvaluator;
  v5 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    userDefaultsKey = v5->_userDefaultsKey;
    v5->_userDefaultsKey = v6;
  }

  return v5;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696AD98];
  v6 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self whichUserDefaultsDataSourceInDataSource:a3, a4];
  v7 = [v6 userDefaults];
  v8 = [v7 objectForKey:self->_userDefaultsKey];
  v9 = v8;
  if (!v8)
  {
    v9 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self defaultValueWhenKeyIsMissing];
  }

  v10 = [v5 numberWithBool:{-[HKFeatureAvailabilityRequirementUserDefaultEvaluator isSatisfiedForValue:](self, "isSatisfiedForValue:", v9)}];
  if (!v8)
  {
  }

  return v10;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self whichUserDefaultsDataSourceInDataSource:a4];
  userDefaultsKey = self->_userDefaultsKey;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__HKFeatureAvailabilityRequirementUserDefaultEvaluator_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E7379968;
  v9[4] = self;
  [v7 registerObserver:v6 forKey:userDefaultsKey newValueHandler:v9];
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v6 = a3;
  v7 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self whichUserDefaultsDataSourceInDataSource:a4];
  [v7 unregisterObserver:v6 forKey:self->_userDefaultsKey];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_userDefaultsKey isEqualToString:v4[1]];

  return v5;
}

- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementUserDefaultEvaluator;
  v5 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserDefaultsKey"];
    userDefaultsKey = v5->_userDefaultsKey;
    v5->_userDefaultsKey = v6;
  }

  return v5;
}

- (BOOL)isSatisfiedForValue:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

- (id)whichUserDefaultsDataSourceInDataSource:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  v3 = [HKUserDefaultsDataSource alloc];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [(HKUserDefaultsDataSource *)v3 initWithUserDefaults:v4];

  return v5;
}

+ (NSString)requirementIdentifier
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  return &stru_1F05FF230;
}

- (NSString)requirementDescription
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  return &stru_1F05FF230;
}

- (void)_notifyObserver:(void *)a3 forNewValue:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v6)
    {
      v7 = [a1 isSatisfiedForValue:v6];
    }

    else
    {
      v8 = [a1 defaultValueWhenKeyIsMissing];
      v7 = [a1 isSatisfiedForValue:v8];
    }

    _HKInitializeLogging();
    v9 = HKLogInfrastructure();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

    if (v10)
    {
      v11 = HKLogInfrastructure();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = a1[1];
        v14 = MEMORY[0x1E696AD98];
        v15 = v12;
        v16 = [v14 numberWithBool:v7];
        v18 = 138544130;
        v19 = v12;
        v20 = 2114;
        v21 = v5;
        v22 = 2114;
        v23 = v13;
        v24 = 2114;
        v25 = v16;
        _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_INFO, "[%{public}@] Notifying %{public}@ of satisfaction for key %{public}@: %{public}@", &v18, 0x2Au);
      }
    }

    [v5 featureAvailabilityRequirement:a1 didUpdateSatisfaction:v7];
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end