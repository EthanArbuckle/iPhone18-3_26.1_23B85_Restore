@interface HKFeatureAvailabilityRequirementsEvaluation
+ (id)emptyEvaluation;
+ (id)evaluationOfRequirements:(id)a3 dataSource:(id)a4 overrides:(id)a5 error:(id *)a6;
- (BOOL)areAllRequirementsSatisfied;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRequirementSatisfiedWithIdentifier:(id)a3;
- (HKFeatureAvailabilityRequirementsEvaluation)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRequirementsEvaluation)initWithRequirementIdentifiersOrderedByPriority:(id)a3 satisfactionByRequirementIdentifier:(id)a4;
- (NSArray)unsatisfiedRequirementIdentifiers;
- (NSString)highestPriorityUnsatisfiedRequirement;
- (NSString)hk_redactedDescription;
- (id)objectForKeyedSubscript:(id)a3;
- (id)unsatisfiedRequirementIdentifiersDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureAvailabilityRequirementsEvaluation

- (HKFeatureAvailabilityRequirementsEvaluation)initWithRequirementIdentifiersOrderedByPriority:(id)a3 satisfactionByRequirementIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKFeatureAvailabilityRequirementsEvaluation;
  v8 = [(HKFeatureAvailabilityRequirementsEvaluation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    requirementIdentifiersOrderedByPriority = v8->_requirementIdentifiersOrderedByPriority;
    v8->_requirementIdentifiersOrderedByPriority = v9;

    v11 = [v7 copy];
    satisfactionByRequirementIdentifier = v8->_satisfactionByRequirementIdentifier;
    v8->_satisfactionByRequirementIdentifier = v11;
  }

  return v8;
}

+ (id)evaluationOfRequirements:(id)a3 dataSource:(id)a4 overrides:(id)a5 error:(id *)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v46 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        v17 = [objc_opt_class() requirementIdentifier];
        v18 = [v9 overriddenSatisfactionOfRequirementWithIdentifier:v17];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
          v21 = 0;
        }

        else
        {
          v47 = 0;
          v20 = [v16 isSatisfiedWithDataSource:v46 error:&v47];
          v22 = v47;
          v21 = v22;
          if (!v20)
          {
            v28 = MEMORY[0x1E696ABC0];
            if (v22)
            {
              v45 = [v22 domain];
              v29 = [v21 code];
              v42 = [v21 userInfo];
              v54 = @"HKFeatureAvailabilityRequirementIdentifier";
              v55 = v17;
              v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
              v31 = [v42 hk_dictionaryByAddingEntriesFromDictionary:v30];
              v32 = v28;
              v33 = v45;
              v34 = [v32 errorWithDomain:v45 code:v29 userInfo:v31];
            }

            else
            {
              v52 = @"HKFeatureAvailabilityRequirementIdentifier";
              v53 = v17;
              v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
              v36 = v28;
              v33 = v35;
              v34 = [v36 hk_error:2000 userInfo:v35];
            }

            v37 = v34;
            v38 = v37;
            if (v37)
            {
              if (a6)
              {
                v39 = v37;
                *a6 = v38;
              }

              else
              {
                _HKLogDroppedError(v37);
              }
            }

            v27 = 0;
            v25 = v11;
            goto LABEL_20;
          }
        }

        [v10 setObject:v20 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v23 = objc_alloc(MEMORY[0x1E695DFB8]);
  v24 = [v11 hk_map:&__block_literal_global_16];
  v25 = [v23 initWithArray:v24];

  v26 = [a1 alloc];
  v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v10];
  v27 = [v26 initWithRequirementIdentifiersOrderedByPriority:v25 satisfactionByRequirementIdentifier:v17];
LABEL_20:

  v40 = *MEMORY[0x1E69E9840];

  return v27;
}

uint64_t __99__HKFeatureAvailabilityRequirementsEvaluation_evaluationOfRequirements_dataSource_overrides_error___block_invoke()
{
  v0 = objc_opt_class();

  return [v0 requirementIdentifier];
}

+ (id)emptyEvaluation
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E695DFB8] orderedSet];
  v4 = [v2 initWithRequirementIdentifiersOrderedByPriority:v3 satisfactionByRequirementIdentifier:MEMORY[0x1E695E0F8]];

  return v4;
}

- (NSString)highestPriorityUnsatisfiedRequirement
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_requirementIdentifiersOrderedByPriority;
  v4 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier objectForKeyedSubscript:v8, v14];
        v10 = [v9 BOOLValue];

        if (!v10)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(HKFeatureAvailabilityRequirementsEvaluation *)self isRequirementSatisfiedWithIdentifier:a3];

  return [v3 numberWithBool:v4];
}

- (BOOL)isRequirementSatisfiedWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier objectForKeyedSubscript:v4];
    v7 = [v6 BOOLValue];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(HKFeatureAvailabilityRequirementsEvaluation *)v4 isRequirementSatisfiedWithIdentifier:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)areAllRequirementsSatisfied
{
  v2 = [(HKFeatureAvailabilityRequirementsEvaluation *)self highestPriorityUnsatisfiedRequirement];
  v3 = v2 == 0;

  return v3;
}

- (NSArray)unsatisfiedRequirementIdentifiers
{
  v3 = [(NSOrderedSet *)self->_requirementIdentifiersOrderedByPriority array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__HKFeatureAvailabilityRequirementsEvaluation_unsatisfiedRequirementIdentifiers__block_invoke;
  v6[3] = &unk_1E7379C80;
  v6[4] = self;
  v4 = [v3 hk_filter:v6];

  return v4;
}

uint64_t __80__HKFeatureAvailabilityRequirementsEvaluation_unsatisfiedRequirementIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:a2];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

- (id)unsatisfiedRequirementIdentifiersDescription
{
  v2 = [(HKFeatureAvailabilityRequirementsEvaluation *)self unsatisfiedRequirementIdentifiers];
  v3 = [v2 hk_map:&__block_literal_global_15];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

__CFString *__91__HKFeatureAvailabilityRequirementsEvaluation_unsatisfiedRequirementIdentifiersDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (HKFeatureAvailabilityRequirementIdentifierReflectsSensitiveData(v2) && !HKShowSensitiveLogItems())
  {
    v3 = @"<sensitive>";
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(NSOrderedSet *)self->_requirementIdentifiersOrderedByPriority isEqualToOrderedSet:v5[1]])
    {
      v6 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier isEqualToDictionary:v5[2]];
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
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier allKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v3 appendString:v9];
        [v3 appendString:@" = "];
        if (HKFeatureAvailabilityRequirementIdentifierReflectsSensitiveData(v9))
        {
          [v3 appendString:@"<sensitive>"];
        }

        else
        {
          v10 = MEMORY[0x1E696AEC0];
          v11 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier objectForKeyedSubscript:v9];
          v12 = [v10 stringWithFormat:@"%@", v11];
          [v3 appendString:v12];
        }

        [v3 appendString:@"; "];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@>", objc_opt_class(), self, v3];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (HKFeatureAvailabilityRequirementsEvaluation)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"requirementIdentifiersOrderedByPriority"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 hk_typesForDictionaryMapping:v10 to:objc_opt_class()];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"satisfactionByRequirementIdentifier"];

  v13 = [(HKFeatureAvailabilityRequirementsEvaluation *)self initWithRequirementIdentifiersOrderedByPriority:v8 satisfactionByRequirementIdentifier:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  requirementIdentifiersOrderedByPriority = self->_requirementIdentifiersOrderedByPriority;
  v5 = a3;
  [v5 encodeObject:requirementIdentifiersOrderedByPriority forKey:@"requirementIdentifiersOrderedByPriority"];
  [v5 encodeObject:self->_satisfactionByRequirementIdentifier forKey:@"satisfactionByRequirementIdentifier"];
}

- (void)isRequirementSatisfiedWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_19197B000, a2, OS_LOG_TYPE_FAULT, "Requesting satisfaction of unknown requirement with identifier %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end