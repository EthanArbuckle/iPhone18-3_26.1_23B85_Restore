@interface HKFeatureAvailabilityHealthDataRequirement
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HKFeatureAvailabilityHealthDataRequirement

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v6 = [a3 healthDataRequirementDataSource];
  v7 = [v6 isRequirementSatisfied:self error:a4];

  return v7;
}

@end