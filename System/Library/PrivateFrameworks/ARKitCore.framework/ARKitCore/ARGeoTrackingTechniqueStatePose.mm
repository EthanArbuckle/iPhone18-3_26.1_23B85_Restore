@interface ARGeoTrackingTechniqueStatePose
- (ARGeoTrackingTechniqueStatePose)initWithTimestamp:(double)timestamp transform:(uint64_t)transform fused:(__int128 *)fused heading:(BOOL)heading;
- (__n128)transform;
@end

@implementation ARGeoTrackingTechniqueStatePose

- (ARGeoTrackingTechniqueStatePose)initWithTimestamp:(double)timestamp transform:(uint64_t)transform fused:(__int128 *)fused heading:(BOOL)heading
{
  v17.receiver = self;
  v17.super_class = ARGeoTrackingTechniqueStatePose;
  result = [(ARGeoTrackingTechniqueStatePose *)&v17 init];
  if (result)
  {
    result->_timestamp = a2;
    v11 = *fused;
    v12 = fused[1];
    v13 = fused[3];
    *&result[2].super.isa = fused[2];
    *&result[2]._timestamp = v13;
    *&result[1].super.isa = v11;
    *&result[1]._timestamp = v12;
    v14 = fused[4];
    v15 = fused[5];
    v16 = fused[7];
    *&result[4].super.isa = fused[6];
    *&result[4]._timestamp = v16;
    *&result[3].super.isa = v14;
    *&result[3]._timestamp = v15;
    result->_fused = heading;
    result->_heading = timestamp + ceil(timestamp / -6.28318531) * 6.28318531;
  }

  return result;
}

- (__n128)transform
{
  v2 = *(self + 112);
  *(a2 + 64) = *(self + 96);
  *(a2 + 80) = v2;
  v3 = *(self + 144);
  *(a2 + 96) = *(self + 128);
  *(a2 + 112) = v3;
  v4 = *(self + 48);
  *a2 = *(self + 32);
  *(a2 + 16) = v4;
  result = *(self + 64);
  v6 = *(self + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

@end