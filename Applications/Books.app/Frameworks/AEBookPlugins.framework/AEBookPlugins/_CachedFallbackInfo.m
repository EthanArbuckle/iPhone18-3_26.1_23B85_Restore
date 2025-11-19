@interface _CachedFallbackInfo
+ (id)cachedFallbackInfo;
@end

@implementation _CachedFallbackInfo

+ (id)cachedFallbackInfo
{
  if (qword_22D0C0 != -1)
  {
    sub_138490();
  }

  v3 = qword_22D0B8;

  return v3;
}

@end