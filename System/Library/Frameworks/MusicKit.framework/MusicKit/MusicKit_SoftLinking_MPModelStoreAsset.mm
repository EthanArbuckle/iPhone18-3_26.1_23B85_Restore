@interface MusicKit_SoftLinking_MPModelStoreAsset
+ (int64_t)endpointTypeForRawValue:(int64_t)value;
+ (int64_t)rawValueForEndpointType:(int64_t)type;
@end

@implementation MusicKit_SoftLinking_MPModelStoreAsset

+ (int64_t)endpointTypeForRawValue:(int64_t)value
{
  if ((value - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return value;
  }
}

+ (int64_t)rawValueForEndpointType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

@end