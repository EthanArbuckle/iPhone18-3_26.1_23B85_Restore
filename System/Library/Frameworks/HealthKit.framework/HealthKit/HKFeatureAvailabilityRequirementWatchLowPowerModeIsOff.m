@interface HKFeatureAvailabilityRequirementWatchLowPowerModeIsOff
- (BOOL)isEqual:(id)a3;
- (NSArray)requiredEntitlements;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementWatchLowPowerModeIsOff

- (NSArray)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement userDefaultsCarouselDomainAccessEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x1E696AD98];
  v5 = [a3 watchLowPowerModeDataSource];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "isWatchLowPowerModeEnabled") ^ 1}];

  return v6;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = [a4 watchLowPowerModeDataSource];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__HKFeatureAvailabilityRequirementWatchLowPowerModeIsOff_registerObserver_forDataSource___block_invoke;
  v8[3] = &unk_1E7380E20;
  v8[4] = self;
  [v7 registerObserver:v6 onLowPowerModeChange:v8];
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v5 = a3;
  v6 = [a4 watchLowPowerModeDataSource];
  [v6 unregisterObserver:v5];
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