@interface MusicKit_SoftLinking_MPModelStoreAsset
+ (int64_t)endpointTypeForRawValue:(int64_t)a3;
+ (int64_t)rawValueForEndpointType:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPModelStoreAsset

+ (int64_t)endpointTypeForRawValue:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)rawValueForEndpointType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end