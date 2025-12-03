@interface HKFeatureAvailabilityHealthDataRequirement
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
@end

@implementation HKFeatureAvailabilityHealthDataRequirement

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  healthDataRequirementDataSource = [source healthDataRequirementDataSource];
  v7 = [healthDataRequirementDataSource isRequirementSatisfied:self error:error];

  return v7;
}

@end