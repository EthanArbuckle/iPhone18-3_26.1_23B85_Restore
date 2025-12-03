@interface HKFeatureAvailabilityRequirementUserDefaultEvaluator
+ (NSString)requirementIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSatisfiedForValue:(id)value;
- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithUserDefaultsKey:(id)key;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)whichUserDefaultsDataSourceInDataSource:(id)source;
- (void)_notifyObserver:(void *)observer forNewValue:;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementUserDefaultEvaluator

- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithUserDefaultsKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementUserDefaultEvaluator;
  v5 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)&v9 init];
  if (v5)
  {
    v6 = [keyCopy copy];
    userDefaultsKey = v5->_userDefaultsKey;
    v5->_userDefaultsKey = v6;
  }

  return v5;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x1E696AD98];
  error = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self whichUserDefaultsDataSourceInDataSource:source, error];
  userDefaults = [error userDefaults];
  v8 = [userDefaults objectForKey:self->_userDefaultsKey];
  defaultValueWhenKeyIsMissing = v8;
  if (!v8)
  {
    defaultValueWhenKeyIsMissing = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self defaultValueWhenKeyIsMissing];
  }

  v10 = [v5 numberWithBool:{-[HKFeatureAvailabilityRequirementUserDefaultEvaluator isSatisfiedForValue:](self, "isSatisfiedForValue:", defaultValueWhenKeyIsMissing)}];
  if (!v8)
  {
  }

  return v10;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  v7 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self whichUserDefaultsDataSourceInDataSource:source];
  userDefaultsKey = self->_userDefaultsKey;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__HKFeatureAvailabilityRequirementUserDefaultEvaluator_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E7379968;
  v9[4] = self;
  [v7 registerObserver:observerCopy forKey:userDefaultsKey newValueHandler:v9];
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  observerCopy = observer;
  v7 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)self whichUserDefaultsDataSourceInDataSource:source];
  [v7 unregisterObserver:observerCopy forKey:self->_userDefaultsKey];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_userDefaultsKey isEqualToString:equalCopy[1]];

  return v5;
}

- (HKFeatureAvailabilityRequirementUserDefaultEvaluator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementUserDefaultEvaluator;
  v5 = [(HKFeatureAvailabilityRequirementUserDefaultEvaluator *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserDefaultsKey"];
    userDefaultsKey = v5->_userDefaultsKey;
    v5->_userDefaultsKey = v6;
  }

  return v5;
}

- (BOOL)isSatisfiedForValue:(id)value
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  return 0;
}

- (id)whichUserDefaultsDataSourceInDataSource:(id)source
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4();
  v3 = [HKUserDefaultsDataSource alloc];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [(HKUserDefaultsDataSource *)v3 initWithUserDefaults:standardUserDefaults];

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

- (void)_notifyObserver:(void *)observer forNewValue:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  observerCopy = observer;
  if (self)
  {
    if (observerCopy)
    {
      v7 = [self isSatisfiedForValue:observerCopy];
    }

    else
    {
      defaultValueWhenKeyIsMissing = [self defaultValueWhenKeyIsMissing];
      v7 = [self isSatisfiedForValue:defaultValueWhenKeyIsMissing];
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
        v13 = self[1];
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

    [v5 featureAvailabilityRequirement:self didUpdateSatisfaction:v7];
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end