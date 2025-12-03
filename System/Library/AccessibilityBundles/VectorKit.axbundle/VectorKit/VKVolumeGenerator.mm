@interface VKVolumeGenerator
- (VKVolumeGenerator)init;
- (float)volumeForDepth:(int)depth minDistanceThreshold:(int)threshold maxDistanceThreshold:(int)distanceThreshold;
@end

@implementation VKVolumeGenerator

- (VKVolumeGenerator)init
{
  v3.receiver = self;
  v3.super_class = VKVolumeGenerator;
  return [(VKVolumeGenerator *)&v3 init];
}

- (float)volumeForDepth:(int)depth minDistanceThreshold:(int)threshold maxDistanceThreshold:(int)distanceThreshold
{
  result = 0.0;
  if ((depth & 0x80000000) == 0)
  {
    result = 1.0;
    if (depth >= threshold)
    {
      result = 0.0;
      if (depth <= distanceThreshold)
      {
        result = (depth - distanceThreshold) / (threshold - distanceThreshold);
        if (result < 0.1)
        {
          return 0.1;
        }
      }
    }
  }

  return result;
}

@end