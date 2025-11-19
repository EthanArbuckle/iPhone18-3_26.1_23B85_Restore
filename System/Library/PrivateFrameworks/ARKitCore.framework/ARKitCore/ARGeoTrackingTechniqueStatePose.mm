@interface ARGeoTrackingTechniqueStatePose
- (ARGeoTrackingTechniqueStatePose)initWithTimestamp:(double)a3 transform:(uint64_t)a4 fused:(__int128 *)a5 heading:(BOOL)a6;
- (__n128)transform;
@end

@implementation ARGeoTrackingTechniqueStatePose

- (ARGeoTrackingTechniqueStatePose)initWithTimestamp:(double)a3 transform:(uint64_t)a4 fused:(__int128 *)a5 heading:(BOOL)a6
{
  v17.receiver = a1;
  v17.super_class = ARGeoTrackingTechniqueStatePose;
  result = [(ARGeoTrackingTechniqueStatePose *)&v17 init];
  if (result)
  {
    result->_timestamp = a2;
    v11 = *a5;
    v12 = a5[1];
    v13 = a5[3];
    *&result[2].super.isa = a5[2];
    *&result[2]._timestamp = v13;
    *&result[1].super.isa = v11;
    *&result[1]._timestamp = v12;
    v14 = a5[4];
    v15 = a5[5];
    v16 = a5[7];
    *&result[4].super.isa = a5[6];
    *&result[4]._timestamp = v16;
    *&result[3].super.isa = v14;
    *&result[3]._timestamp = v15;
    result->_fused = a6;
    result->_heading = a3 + ceil(a3 / -6.28318531) * 6.28318531;
  }

  return result;
}

- (__n128)transform
{
  v2 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v2;
  v3 = *(a1 + 144);
  *(a2 + 96) = *(a1 + 128);
  *(a2 + 112) = v3;
  v4 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v4;
  result = *(a1 + 64);
  v6 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

@end