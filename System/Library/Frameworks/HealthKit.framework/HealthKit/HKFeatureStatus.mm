@interface HKFeatureStatus
- (BOOL)includesContext:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKFeatureStatus)initWithCoder:(id)a3;
- (HKFeatureStatus)initWithOnboardingRecord:(id)a3 requirementsEvaluationByContext:(id)a4;
- (NSString)hk_redactedDescription;
- (id)copyUpdatingRequirement:(id)a3 fromRequirements:(id)a4 isSatisfied:(BOOL)a5;
- (id)objectForKeyedSubscript:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureStatus

- (HKFeatureStatus)initWithOnboardingRecord:(id)a3 requirementsEvaluationByContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKFeatureStatus;
  v8 = [(HKFeatureStatus *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    onboardingRecord = v8->_onboardingRecord;
    v8->_onboardingRecord = v9;

    v11 = [v7 copy];
    requirementsEvaluationByContext = v8->_requirementsEvaluationByContext;
    v8->_requirementsEvaluationByContext = v11;
  }

  return v8;
}

- (BOOL)includesContext:(id)a3
{
  v3 = [(NSDictionary *)self->_requirementsEvaluationByContext objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_requirementsEvaluationByContext objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSDictionary *)self->_requirementsEvaluationByContext objectForKeyedSubscript:v4];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogInfrastructure();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(HKFeatureStatus *)self objectForKeyedSubscript:v4, v7];
    }

    v8 = [HKFeatureAvailabilityRequirementsEvaluation alloc];
    v9 = [MEMORY[0x1E695DFB8] orderedSetWithObject:@"InvalidRequirement"];
    v6 = [(HKFeatureAvailabilityRequirementsEvaluation *)v8 initWithRequirementIdentifiersOrderedByPriority:v9 satisfactionByRequirementIdentifier:&unk_1F0685F48];
  }

  return v6;
}

- (id)copyUpdatingRequirement:(id)a3 fromRequirements:(id)a4 isSatisfied:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc(objc_opt_class());
  onboardingRecord = self->_onboardingRecord;
  requirementsEvaluationByContext = self->_requirementsEvaluationByContext;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__HKFeatureStatus_copyUpdatingRequirement_fromRequirements_isSatisfied___block_invoke;
  v18[3] = &unk_1E737A9F0;
  v19 = v9;
  v20 = v8;
  v21 = a5;
  v13 = v8;
  v14 = v9;
  v15 = [(NSDictionary *)requirementsEvaluationByContext hk_map:v18];
  v16 = [v10 initWithOnboardingRecord:onboardingRecord requirementsEvaluationByContext:v15];

  return v16;
}

void __72__HKFeatureStatus_copyUpdatingRequirement_fromRequirements_isSatisfied___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) requirementsByContext];
  v10 = [v9 objectForKeyedSubscript:v15];
  v11 = [v10 containsObject:*(a1 + 40)];

  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = [objc_opt_class() requirementIdentifier];
    v14 = [v7 copyUpdatingRequirementForIdentifier:v13 isSatisfied:*(a1 + 48)];

    v8[2](v8, v15, v14);
  }

  else
  {
    v8[2](v8, v15, v7);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(HKFeatureOnboardingRecord *)self->_onboardingRecord isEqual:v5[1]])
    {
      v6 = [(NSDictionary *)self->_requirementsEvaluationByContext isEqualToDictionary:v5[2]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)hk_redactedDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendString:@"{ "];
  v4 = [(NSDictionary *)self->_requirementsEvaluationByContext hk_sortedKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [v3 appendString:v9];
        [v3 appendString:@"="];
        v10 = [(NSDictionary *)self->_requirementsEvaluationByContext objectForKeyedSubscript:v9];
        v11 = HKSensitiveLogItem(v10);
        [v3 appendString:v11];

        [v3 appendString:@"\n"];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"}"];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p record:%@ evaluationByContext:%@>", objc_opt_class(), self, self->_onboardingRecord, v3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (HKFeatureStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureOnboardingRecord"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 hk_typesForDictionaryMapping:v7 to:objc_opt_class()];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"requirementsEvaluationByContext"];

  v10 = [(HKFeatureStatus *)self initWithOnboardingRecord:v5 requirementsEvaluationByContext:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  onboardingRecord = self->_onboardingRecord;
  v5 = a3;
  [v5 encodeObject:onboardingRecord forKey:@"featureOnboardingRecord"];
  [v5 encodeObject:self->_requirementsEvaluationByContext forKey:@"requirementsEvaluationByContext"];
}

- (void)objectForKeyedSubscript:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a2;
  v5 = v8;
  _os_log_fault_impl(&dword_19197B000, a3, OS_LOG_TYPE_FAULT, "[%{public}@]: Subscripted with unknown context %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end