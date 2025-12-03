@interface HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff)initWithCoder:(id)coder;
- (NSArray)requiredEntitlements;
- (id)initWithFeatureIdentifier:(void *)identifier context:;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (uint64_t)_isSatisfiedWithFeatureStatus:(uint64_t)status;
- (void)encodeWithCoder:(id)coder;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff

- (NSArray)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  featureIdentifier = [(HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v5 = [source featureStatusForFeatureWithIdentifier:self->_featureIdentifier context:self->_context error:error];
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

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  sourceCopy = source;
  observerCopy = observer;
  v9 = [[HKFeatureIdentifierAndContext alloc] initWithFeatureIdentifier:self->_featureIdentifier context:self->_context];
  featureStatusProvidingDataSource = [sourceCopy featureStatusProvidingDataSource];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff_registerObserver_forDataSource___block_invoke;
  v11[3] = &unk_1E737E290;
  v11[4] = self;
  v11[5] = a2;
  [featureStatusProvidingDataSource registerObserver:observerCopy forKey:v9 newValueHandler:v11];
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  sourceCopy = source;
  observerCopy = observer;
  v9 = [[HKFeatureIdentifierAndContext alloc] initWithFeatureIdentifier:self->_featureIdentifier context:self->_context];
  featureStatusProvidingDataSource = [sourceCopy featureStatusProvidingDataSource];

  [featureStatusProvidingDataSource unregisterObserver:observerCopy forKey:v9];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  featureIdentifier = self->_featureIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:featureIdentifier forKey:@"featureIdentifier"];
  [coderCopy encodeObject:self->_context forKey:@"context"];
}

- (id)initWithFeatureIdentifier:(void *)identifier context:
{
  v6 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, identifier);
    }
  }

  return self;
}

- (uint64_t)_isSatisfiedWithFeatureStatus:(uint64_t)status
{
  if (!status)
  {
    return 0;
  }

  v2 = [a2 objectForKeyedSubscript:*(status + 16)];
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

- (HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];

  v7 = [(HKFeatureAvailabilityRequirementMutuallyExclusiveFeatureIsOff *)&self->super.super.isa initWithFeatureIdentifier:v5 context:v6];
  return v7;
}

@end