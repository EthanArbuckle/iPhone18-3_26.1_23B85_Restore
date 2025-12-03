@interface NSUserDefaults(HKRemoteFeatureAvailability)
+ (id)hk_remoteFeatureAvailabilityUserDefaults;
@end

@implementation NSUserDefaults(HKRemoteFeatureAvailability)

+ (id)hk_remoteFeatureAvailabilityUserDefaults
{
  v1 = [[self alloc] initWithSuiteName:@"com.apple.private.health.feature-availability"];

  return v1;
}

@end