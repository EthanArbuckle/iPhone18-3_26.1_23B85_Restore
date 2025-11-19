@interface VNRegionOfInterestTilingOptions
- (VNRegionOfInterestTilingOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNRegionOfInterestTilingOptions

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 1) = *&self->_tileOverlapPercentage;
    *(result + 2) = *&self->_regionOfInterestAspectRatioThreshold;
    *(result + 3) = self->_tileOverflowCount;
  }

  return result;
}

- (VNRegionOfInterestTilingOptions)init
{
  v3.receiver = self;
  v3.super_class = VNRegionOfInterestTilingOptions;
  result = [(VNRegionOfInterestTilingOptions *)&v3 init];
  if (result)
  {
    *&result->_tileOverlapPercentage = xmmword_1A6038DD0;
    result->_tileOverflowCount = 16;
  }

  return result;
}

@end