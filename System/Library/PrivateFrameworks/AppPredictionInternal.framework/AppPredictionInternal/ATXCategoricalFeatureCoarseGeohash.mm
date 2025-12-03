@interface ATXCategoricalFeatureCoarseGeohash
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCategoricalFeatureCoarseGeohash

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  locationMotionContext = [context locationMotionContext];
  coarseGeohash = [locationMotionContext coarseGeohash];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:coarseGeohash];
  stringValue = [v6 stringValue];

  return stringValue;
}

@end