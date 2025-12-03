@interface HKFeatureAvailabilityRequirementNotInStoreDemoMode
- (BOOL)isEqual:(id)equal;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (id)requiredEntitlements;
- (unint64_t)hash;
@end

@implementation HKFeatureAvailabilityRequirementNotInStoreDemoMode

- (id)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement userDefaultsDemoSettingsDomainAccessEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  behavior = [sourceCopy behavior];
  isAppleWatch = [behavior isAppleWatch];

  v7 = MEMORY[0x1E696AD98];
  behavior2 = [sourceCopy behavior];
  isRunningStoreDemoMode = [behavior2 isRunningStoreDemoMode];
  if (!isAppleWatch)
  {
    v11 = isRunningStoreDemoMode ^ 1u;
    v10 = v7;
    goto LABEL_5;
  }

  if (isRunningStoreDemoMode)
  {
    v10 = v7;
    v11 = 0;
LABEL_5:
    v12 = [v10 numberWithInt:v11];
    goto LABEL_7;
  }

  behavior3 = [sourceCopy behavior];
  v12 = [v7 numberWithInt:{objc_msgSend(behavior3, "runningInStoreDemoModeF201") ^ 1}];

LABEL_7:

  return v12;
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