@interface HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo
- (BOOL)isEqual:(id)equal;
- (HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo)initWithFeatureIdentifier:(id)identifier daysBeforeCurrentDate:(int64_t)date;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo

- (HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo)initWithFeatureIdentifier:(id)identifier daysBeforeCurrentDate:(int64_t)date
{
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo;
  v5 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v9 initWithFeatureIdentifier:identifier];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF10] hk_componentsWithDays:date];
    dateComponents = v5->_dateComponents;
    v5->_dateComponents = v6;
  }

  return v5;
}

- (NSString)requirementDescription
{
  v3 = MEMORY[0x1E696AEC0];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v5 = [(NSDateComponents *)self->_dateComponents debugDescription];
  v6 = [v3 stringWithFormat:@"Onboarding record for %@ must be before %@", featureIdentifier, v5];

  return v6;
}

- (NSArray)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  featureIdentifier = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:featureIdentifier];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)isSatisfiedWithOnboardingRecord:(id)record dataSource:(id)source error:(id *)error
{
  recordCopy = record;
  sourceCopy = source;
  onboardingCompletion = [recordCopy onboardingCompletion];

  if (onboardingCompletion)
  {
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    hk_negativeComponents = [(NSDateComponents *)self->_dateComponents hk_negativeComponents];
    currentDate = [sourceCopy currentDate];
    v13 = [hk_gregorianCalendar dateByAddingComponents:hk_negativeComponents toDate:currentDate options:0];

    v14 = MEMORY[0x1E696AD98];
    onboardingCompletion2 = [recordCopy onboardingCompletion];
    completionDate = [onboardingCompletion2 completionDate];
    v17 = [v14 numberWithBool:{objc_msgSend(completionDate, "hk_isBeforeDate:", v13)}];
  }

  else
  {
    v17 = MEMORY[0x1E695E110];
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDateComponents *)self->_dateComponents isEqual:equalCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo;
  coderCopy = coder;
  [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_dateComponents forKey:{@"DateComponents", v5.receiver, v5.super_class}];
}

- (HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo;
  v5 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateComponents"];
    dateComponents = v5->_dateComponents;
    v5->_dateComponents = v6;
  }

  return v5;
}

@end