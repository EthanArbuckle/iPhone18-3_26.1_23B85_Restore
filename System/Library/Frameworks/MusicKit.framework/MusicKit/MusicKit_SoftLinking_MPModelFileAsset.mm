@interface MusicKit_SoftLinking_MPModelFileAsset
+ (int64_t)protectionTypeForRawValue:(int64_t)value;
+ (int64_t)rawValueForProtectionType:(int64_t)type;
@end

@implementation MusicKit_SoftLinking_MPModelFileAsset

+ (int64_t)protectionTypeForRawValue:(int64_t)value
{
  if (value == 2)
  {
    return 2;
  }

  else
  {
    return value == 1;
  }
}

+ (int64_t)rawValueForProtectionType:(int64_t)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

@end