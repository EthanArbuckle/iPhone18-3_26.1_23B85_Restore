@interface ATXCategoricalFeatureLargeGeohash
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCategoricalFeatureLargeGeohash

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v4 = [a3 locationMotionContext];
  v5 = [v4 largeGeohash];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  v7 = [v6 stringValue];

  return v7;
}

@end