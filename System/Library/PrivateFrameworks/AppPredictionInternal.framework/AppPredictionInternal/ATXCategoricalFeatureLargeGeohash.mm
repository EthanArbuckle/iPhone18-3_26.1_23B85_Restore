@interface ATXCategoricalFeatureLargeGeohash
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureLargeGeohash

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  locationMotionContext = [context locationMotionContext];
  largeGeohash = [locationMotionContext largeGeohash];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:largeGeohash];
  stringValue = [v6 stringValue];

  return stringValue;
}

@end