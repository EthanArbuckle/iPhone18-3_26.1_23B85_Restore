@interface HKFeatureAvailabilityRequirementSet
+ (id)noRequirements;
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementSet)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementSet)initWithRequirementsByContext:(id)context;
- (id)allRequirementIdentifiers;
- (id)evaluationByContextWithDataSource:(void *)source overrides:(void *)overrides error:;
- (id)evaluationForContext:(void *)context dataSource:(void *)source overrides:(uint64_t)overrides error:;
- (uint64_t)copyApplyingContextConstraint:(uint64_t)constraint;
- (void)_initWithRequirementsByContext:(void *)context;
- (void)allHealthDataRequirements;
- (void)allObservableRequirements;
- (void)allRequirements;
@end

@implementation HKFeatureAvailabilityRequirementSet

- (HKFeatureAvailabilityRequirementSet)initWithRequirementsByContext:(id)context
{
  v4 = [context hk_map:&__block_literal_global_55];
  v5 = [(HKFeatureAvailabilityRequirementSet *)self _initWithRequirementsByContext:v4];

  return v5;
}

void __69__HKFeatureAvailabilityRequirementSet_initWithRequirementsByContext___block_invoke(uint64_t a1, void *a2, void *a3, void (**a4)(void, void, void))
{
  v7 = a4;
  v8 = a2;
  v9 = [a3 _hk_featureAvailabilityRequirements];
  (a4)[2](v7, v8, v9);
}

- (id)evaluationByContextWithDataSource:(void *)source overrides:(void *)overrides error:
{
  v7 = a2;
  sourceCopy = source;
  if (self)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__23;
    v30 = __Block_byref_object_dispose__23;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v9 = *(self + 8);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __89__HKFeatureAvailabilityRequirementSet_evaluationByContextWithDataSource_overrides_error___block_invoke;
    v17[3] = &unk_1E737E668;
    v17[4] = self;
    v18 = v7;
    v19 = sourceCopy;
    v20 = &v26;
    v21 = &v22;
    v10 = [v9 hk_map:v17];
    v11 = v10;
    if (*(v23 + 24) == 1)
    {
      v12 = v27[5];
      v13 = v12;
      if (v12)
      {
        if (overrides)
        {
          v14 = v12;
          *overrides = v13;
        }

        else
        {
          _HKLogDroppedError(v12);
        }
      }

      v15 = 0;
    }

    else
    {
      v15 = v10;
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __89__HKFeatureAvailabilityRequirementSet_evaluationByContextWithDataSource_overrides_error___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *(a1[7] + 8);
  obj = *(v11 + 40);
  v12 = [(HKFeatureAvailabilityRequirementSet *)v8 evaluationForContext:v6 dataSource:v9 overrides:v10 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    v7[2](v7, v6, v12);
  }

  else
  {
    *(*(a1[8] + 8) + 24) = 1;
  }
}

- (id)allRequirementIdentifiers
{
  allRequirements = [(HKFeatureAvailabilityRequirementSet *)self allRequirements];
  v3 = [allRequirements hk_map:&__block_literal_global_9];

  return v3;
}

uint64_t __64__HKFeatureAvailabilityRequirementSet_allRequirementIdentifiers__block_invoke()
{
  v0 = objc_opt_class();

  return [v0 requirementIdentifier];
}

void __64__HKFeatureAvailabilityRequirementSet_allObservableRequirements__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F068E6E0])
        {
          [*(a1 + 32) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_requirementsByContext isEqualToDictionary:equalCopy[1]];

  return v5;
}

- (void)_initWithRequirementsByContext:(void *)context
{
  v3 = a2;
  if (context)
  {
    v7.receiver = context;
    v7.super_class = HKFeatureAvailabilityRequirementSet;
    context = objc_msgSendSuper2(&v7, sel_init);
    if (context)
    {
      v4 = [v3 copy];
      v5 = context[1];
      context[1] = v4;
    }
  }

  return context;
}

+ (id)noRequirements
{
  v2 = [HKFeatureAvailabilityRequirementSet alloc];
  v3 = [(HKFeatureAvailabilityRequirementSet *)v2 _initWithRequirementsByContext:?];

  return v3;
}

- (id)evaluationForContext:(void *)context dataSource:(void *)source overrides:(uint64_t)overrides error:
{
  if (self)
  {
    v8 = *(self + 8);
    sourceCopy = source;
    contextCopy = context;
    v11 = [v8 objectForKeyedSubscript:a2];
    v12 = [HKFeatureAvailabilityRequirementsEvaluation evaluationOfRequirements:v11 dataSource:contextCopy overrides:sourceCopy error:overrides];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)allRequirements
{
  selfCopy = self;
  if (self)
  {
    [MEMORY[0x1E695DFA8] set];
    objc_claimAutoreleasedReturnValue();
    v2 = selfCopy[1];
    OUTLINED_FUNCTION_0_16();
    v7 = 3221225472;
    v8 = __54__HKFeatureAvailabilityRequirementSet_allRequirements__block_invoke;
    v9 = &unk_1E737E690;
    v10 = v3;
    v4 = v3;
    [v2 enumerateKeysAndObjectsUsingBlock:v6];
    selfCopy = [MEMORY[0x1E695DFD8] setWithSet:v4];
  }

  return selfCopy;
}

- (void)allObservableRequirements
{
  selfCopy = self;
  if (self)
  {
    [MEMORY[0x1E695DFA8] set];
    objc_claimAutoreleasedReturnValue();
    v2 = selfCopy[1];
    OUTLINED_FUNCTION_0_16();
    v7 = 3221225472;
    v8 = __64__HKFeatureAvailabilityRequirementSet_allObservableRequirements__block_invoke;
    v9 = &unk_1E737E690;
    v10 = v3;
    v4 = v3;
    [v2 enumerateKeysAndObjectsUsingBlock:v6];
    selfCopy = [MEMORY[0x1E695DFD8] setWithSet:v4];
  }

  return selfCopy;
}

- (void)allHealthDataRequirements
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allRequirements = [(HKFeatureAvailabilityRequirementSet *)selfCopy allRequirements];
    v4 = [allRequirements countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(allRequirements);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObject:{v8, v11}];
          }
        }

        v5 = [allRequirements countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    selfCopy = [v2 copy];
  }

  v9 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (uint64_t)copyApplyingContextConstraint:(uint64_t)constraint
{
  v3 = a2;
  if (constraint)
  {
    v4 = objc_alloc(objc_opt_class());
    v5 = *(constraint + 8);
    OUTLINED_FUNCTION_0_16();
    v9 = 3221225472;
    v10 = __69__HKFeatureAvailabilityRequirementSet_copyApplyingContextConstraint___block_invoke;
    v11 = &unk_1E737E6B8;
    v12 = v3;
    v6 = [v5 hk_filter:v8];
    constraint = [v4 initWithRequirementsByContext:v6];
  }

  return constraint;
}

- (HKFeatureAvailabilityRequirementSet)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v6 = HKAllFeatureAvailabilityRequirementTypes();
  v7 = [v5 arrayByAddingObjectsFromArray:{v6, v13, v14}];

  v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"requirementsByContext"];

  v10 = [(HKFeatureAvailabilityRequirementSet *)self _initWithRequirementsByContext:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end