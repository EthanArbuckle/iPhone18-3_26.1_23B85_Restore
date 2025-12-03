@interface HKFeatureAvailabilityRequirementProfileIsNotFamilySetupPairingProfile
- (BOOL)isEqual:(id)equal;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)requirementDescription;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityRequirementProfileIsNotFamilySetupPairingProfile

- (id)requirementDescription
{
  v2 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v2 isAppleWatch];

  if (isAppleWatch)
  {
    return @"This watch must not be part of a Family Setup pairing";
  }

  else
  {
    return @"The profile must be the primary profile";
  }
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  behavior = [sourceCopy behavior];
  isAppleWatch = [behavior isAppleWatch];

  v7 = MEMORY[0x1E696AD98];
  if (isAppleWatch)
  {
    behavior2 = [sourceCopy behavior];

    v9 = [v7 numberWithInt:{objc_msgSend(behavior2, "tinkerModeEnabled") ^ 1}];
  }

  else
  {
    behavior2 = [sourceCopy healthDataSource];

    profileIdentifier = [behavior2 profileIdentifier];
    v9 = [v7 numberWithInt:{objc_msgSend(profileIdentifier, "type") == 1}];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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