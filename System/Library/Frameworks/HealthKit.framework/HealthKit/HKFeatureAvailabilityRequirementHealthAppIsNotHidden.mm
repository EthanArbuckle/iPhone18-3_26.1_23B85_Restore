@interface HKFeatureAvailabilityRequirementHealthAppIsNotHidden
- (BOOL)isEqual:(id)a3;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (id)requiredEntitlements;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityRequirementHealthAppIsNotHidden

- (id)requiredEntitlements
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement mapLSDatabaseAccessEntitlement];
  v7[0] = v2;
  v3 = +[HKFeatureAvailabilityRequirementEntitlement userSettingsPlistFilePathReadAccessEntitlement];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x1E696AD98];
  v5 = [a3 behavior];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "healthAppHidden") ^ 1}];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

@end