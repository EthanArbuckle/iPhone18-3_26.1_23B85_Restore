@interface HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures)initWithPrerequisiteFeatureIdentifiers:(id)identifiers;
- (NSString)requirementDescription;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures

- (HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures)initWithPrerequisiteFeatureIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures;
  v6 = [(HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_prerequisiteFeatureIdentifiers, identifiers);
  }

  return v7;
}

- (NSString)requirementDescription
{
  v3 = [(NSArray *)self->_prerequisiteFeatureIdentifiers count];
  v4 = MEMORY[0x1E696AEC0];
  prerequisiteFeatureIdentifiers = self->_prerequisiteFeatureIdentifiers;
  if (v3 == 1)
  {
    firstObject = [(NSArray *)prerequisiteFeatureIdentifiers firstObject];
    [v4 stringWithFormat:@"An onboarding record must be present for %@", firstObject];
  }

  else
  {
    firstObject = [(NSArray *)prerequisiteFeatureIdentifiers componentsJoinedByString:@", "];
    [v4 stringWithFormat:@"Onboarding records must be present for %@", firstObject];
  }
  v7 = ;

  return v7;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_prerequisiteFeatureIdentifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    v12 = MEMORY[0x1E695E118];
    goto LABEL_15;
  }

  v9 = v8;
  v10 = *v19;
  v11 = MEMORY[0x1E695E110];
  v12 = MEMORY[0x1E695E118];
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v14 = [sourceCopy onboardingRecordForFeatureWithIdentifier:*(*(&v18 + 1) + 8 * i) error:{error, v18}];
      v15 = v14;
      if (!v14)
      {
        v12 = 0;
LABEL_14:

        goto LABEL_15;
      }

      if ([v14 onboardingState] == 1)
      {
        v12 = v11;
        goto LABEL_14;
      }
    }

    v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  sourceCopy = source;
  objc_initWeak(&location, sourceCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures_registerObserver_forDataSource___block_invoke;
  aBlock[3] = &unk_1E7379DC8;
  objc_copyWeak(&v23, &location);
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_prerequisiteFeatureIdentifiers;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        featureAvailabilityProvidingDataSource = [sourceCopy featureAvailabilityProvidingDataSource];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __117__HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures_registerObserver_forDataSource___block_invoke_16;
        v16[3] = &unk_1E737DBD0;
        v17 = v8;
        [featureAvailabilityProvidingDataSource registerObserver:observerCopy forKey:v12 newValueHandler:v16];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v9);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x1E69E9840];
}

void __117__HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v10 = 0;
    v7 = [v6 isSatisfiedWithDataSource:WeakRetained error:&v10];
    v8 = v10;
    if (v7)
    {
      [v3 featureAvailabilityRequirement:*v5 didUpdateSatisfaction:{objc_msgSend(v7, "BOOLValue")}];
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogInfrastructure();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __92__HKFeatureAvailabilityRequirementPrerequisiteFeaturesAreOn_registerObserver_forDataSource___block_invoke_cold_1(v5, v8, v9);
      }
    }
  }
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  v21 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  sourceCopy = source;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_prerequisiteFeatureIdentifiers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        featureAvailabilityProvidingDataSource = [sourceCopy featureAvailabilityProvidingDataSource];
        [featureAvailabilityProvidingDataSource unregisterObserver:observerCopy forKey:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSArray *)self->_prerequisiteFeatureIdentifiers isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"prerequisiteFeatureIdentifiers"];

  v9 = [(HKFeatureAvailabilityRequirementOnboardingRecordsArePresentForPrerequisiteFeatures *)self initWithPrerequisiteFeatureIdentifiers:v8];
  return v9;
}

@end