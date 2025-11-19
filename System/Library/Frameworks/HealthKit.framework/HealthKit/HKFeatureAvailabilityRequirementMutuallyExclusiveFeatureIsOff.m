@interface HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff)initWithCoder:(id)a3;
- (NSArray)requiredEntitlements;
- (id)initWithFeatureIdentifier:(void *)a3 context:;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (uint64_t)_isSatisfiedWithFeatureStatus:(uint64_t)a1;
- (void)encodeWithCoder:(id)a3;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff

- (NSArray)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v5 = [a3 featureStatusForFeatureWithIdentifier:self->_featureIdentifier context:self->_context error:a4];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff _isSatisfiedWithFeatureStatus:](self, v5)}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [[HKFeatureIdentifierAndContext alloc] initWithFeatureIdentifier:self->_featureIdentifier context:self->_context];
  v10 = [v7 featureStatusProvidingDataSource];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff_registerObserver_forDataSource___block_invoke;
  v11[3] = &unk_1E737E290;
  v11[4] = self;
  v11[5] = a2;
  [v10 registerObserver:v8 forKey:v9 newValueHandler:v11];
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[HKFeatureIdentifierAndContext alloc] initWithFeatureIdentifier:self->_featureIdentifier context:self->_context];
  v8 = [v6 featureStatusProvidingDataSource];

  [v8 unregisterObserver:v7 forKey:v9];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(NSString *)self->_featureIdentifier isEqualToString:v5[1]])
    {
      v6 = [(NSString *)self->_context isEqualToString:v5[2]];
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

- (void)encodeWithCoder:(id)a3
{
  featureIdentifier = self->_featureIdentifier;
  v5 = a3;
  [v5 encodeObject:featureIdentifier forKey:@"featureIdentifier"];
  [v5 encodeObject:self->_context forKey:@"context"];
}

- (id)initWithFeatureIdentifier:(void *)a3 context:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

- (uint64_t)_isSatisfiedWithFeatureStatus:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a2 objectForKeyedSubscript:*(a1 + 16)];
  v3 = [v2 areAllRequirementsSatisfied] ^ 1;

  return v3;
}

void __96__HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff.m" lineNumber:83 description:{@"[%@] Feature status should never be nil", objc_opt_class()}];
  }

  [v7 featureAvailabilityRequirement:*(a1 + 32) didUpdateSatisfaction:{-[HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff _isSatisfiedWithFeatureStatus:](*(a1 + 32), v5)}];
}

- (HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];

  v7 = [(HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff *)&self->super.super.isa initWithFeatureIdentifier:v5 context:v6];
  return v7;
}

@end