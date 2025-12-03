@interface ATXCategoricalFeatureSpecificGeohash
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureSpecificGeohash

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  locationMotionContext = [context locationMotionContext];
  geohash = [locationMotionContext geohash];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:geohash];
  stringValue = [v6 stringValue];

  return stringValue;
}

@end