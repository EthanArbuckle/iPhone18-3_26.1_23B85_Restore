@interface MusicKit_SoftLinking_MPModelFileAsset
+ (int64_t)protectionTypeForRawValue:(int64_t)a3;
+ (int64_t)rawValueForProtectionType:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPModelFileAsset

+ (int64_t)protectionTypeForRawValue:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)rawValueForProtectionType:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

@end