@interface MusicKit_SoftLinking_MPModelGenericObject
+ (int64_t)rawValueForType:(int64_t)a3;
+ (int64_t)typeForRawValue:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPModelGenericObject

+ (int64_t)typeForRawValue:(int64_t)a3
{
  if ((a3 - 1) >= 0x15)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)rawValueForType:(int64_t)a3
{
  if ((a3 - 1) >= 0x15)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end