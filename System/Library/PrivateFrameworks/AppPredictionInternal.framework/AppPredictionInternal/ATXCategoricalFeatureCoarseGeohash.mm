@interface ATXCategoricalFeatureCoarseGeohash
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeatureCoarseGeohash

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = [a3 locationMotionContext];
  v5 = [v4 coarseGeohash];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  v7 = [v6 stringValue];

  return v7;
}

@end