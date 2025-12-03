@interface DTAppClipSettings
+ (BOOL)isAvailable;
- (DTAppClipSettings)init;
@end

@implementation DTAppClipSettings

+ (BOOL)isAvailable
{
  v2 = sub_19E14();
  v3 = v2 != 0;

  return v3;
}

- (DTAppClipSettings)init
{
  v3 = sub_19E14();
  principalClass = [v3 principalClass];

  v5 = objc_alloc_init(principalClass);
  return v5;
}

@end