@interface HKFeatureAvailabilityRequirementWatchLowPowerModeIsOff
- (BOOL)isEqual:(id)equal;
- (NSArray)requiredEntitlements;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (unint64_t)hash;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
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

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v4 = MEMORY[0x1E696AD98];
  watchLowPowerModeDataSource = [source watchLowPowerModeDataSource];
  v6 = [v4 numberWithInt:{objc_msgSend(watchLowPowerModeDataSource, "isWatchLowPowerModeEnabled") ^ 1}];

  return v6;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  watchLowPowerModeDataSource = [source watchLowPowerModeDataSource];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__HKFeatureAvailabilityRequirementWatchLowPowerModeIsOff_registerObserver_forDataSource___block_invoke;
  v8[3] = &unk_1E7380E20;
  v8[4] = self;
  [watchLowPowerModeDataSource registerObserver:observerCopy onLowPowerModeChange:v8];
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  observerCopy = observer;
  watchLowPowerModeDataSource = [source watchLowPowerModeDataSource];
  [watchLowPowerModeDataSource unregisterObserver:observerCopy];
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