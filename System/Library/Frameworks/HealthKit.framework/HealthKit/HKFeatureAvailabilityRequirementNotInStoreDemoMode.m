@interface HKFeatureAvailabilityRequirementNotInStoreDemoMode
- (BOOL)isEqual:(id)a3;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
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

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [v4 behavior];
  v6 = [v5 isAppleWatch];

  v7 = MEMORY[0x1E696AD98];
  v8 = [v4 behavior];
  v9 = [v8 isRunningStoreDemoMode];
  if (!v6)
  {
    v11 = v9 ^ 1u;
    v10 = v7;
    goto LABEL_5;
  }

  if (v9)
  {
    v10 = v7;
    v11 = 0;
LABEL_5:
    v12 = [v10 numberWithInt:v11];
    goto LABEL_7;
  }

  v13 = [v4 behavior];
  v12 = [v7 numberWithInt:{objc_msgSend(v13, "runningInStoreDemoModeF201") ^ 1}];

LABEL_7:

  return v12;
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