@interface HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo
- (BOOL)isEqual:(id)a3;
- (HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo)initWithCoder:(id)a3;
- (HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo)initWithFeatureIdentifier:(id)a3 daysBeforeCurrentDate:(int64_t)a4;
- (NSArray)requiredEntitlements;
- (NSString)requirementDescription;
- (id)isSatisfiedWithOnboardingRecord:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo

- (HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo)initWithFeatureIdentifier:(id)a3 daysBeforeCurrentDate:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo;
  v5 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v9 initWithFeatureIdentifier:a3];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF10] hk_componentsWithDays:a4];
    dateComponents = v5->_dateComponents;
    v5->_dateComponents = v6;
  }

  return v5;
}

- (NSString)requirementDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v5 = [(NSDateComponents *)self->_dateComponents debugDescription];
  v6 = [v3 stringWithFormat:@"Onboarding record for %@ must be before %@", v4, v5];

  return v6;
}

- (NSArray)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)isSatisfiedWithOnboardingRecord:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 onboardingCompletion];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    v11 = [(NSDateComponents *)self->_dateComponents hk_negativeComponents];
    v12 = [v8 currentDate];
    v13 = [v10 dateByAddingComponents:v11 toDate:v12 options:0];

    v14 = MEMORY[0x1E696AD98];
    v15 = [v7 onboardingCompletion];
    v16 = [v15 completionDate];
    v17 = [v14 numberWithBool:{objc_msgSend(v16, "hk_isBeforeDate:", v13)}];
  }

  else
  {
    v17 = MEMORY[0x1E695E110];
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDateComponents *)self->_dateComponents isEqual:v4[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo;
  v4 = a3;
  [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_dateComponents forKey:{@"DateComponents", v5.receiver, v5.super_class}];
}

- (HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFeatureAvailabilityRequirementOnboardedBeforeTimeAgo;
  v5 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateComponents"];
    dateComponents = v5->_dateComponents;
    v5->_dateComponents = v6;
  }

  return v5;
}

@end