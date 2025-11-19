@interface HKFeatureAvailabilityRequirementProfileIsNotFamilySetupPairingProfile
- (BOOL)isEqual:(id)a3;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (id)requirementDescription;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityRequirementProfileIsNotFamilySetupPairingProfile

- (id)requirementDescription
{
  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 isAppleWatch];

  if (v3)
  {
    return @"This watch must not be part of a Family Setup pairing";
  }

  else
  {
    return @"The profile must be the primary profile";
  }
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [v4 behavior];
  v6 = [v5 isAppleWatch];

  v7 = MEMORY[0x1E696AD98];
  if (v6)
  {
    v8 = [v4 behavior];

    v9 = [v7 numberWithInt:{objc_msgSend(v8, "tinkerModeEnabled") ^ 1}];
  }

  else
  {
    v8 = [v4 healthDataSource];

    v10 = [v8 profileIdentifier];
    v9 = [v7 numberWithInt:{objc_msgSend(v10, "type") == 1}];
  }

  return v9;
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