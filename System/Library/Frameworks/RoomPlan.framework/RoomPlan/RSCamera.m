@interface RSCamera
- (__n128)intrinsics;
- (__n128)pose;
- (__n128)setIntrinsics:(__n128)a3;
- (__n128)setPose:(__n128)a3;
- (__n128)setTransform:(__n128)a3;
- (__n128)transform;
- (double)imageResolution;
- (uint64_t)setImageResolution:(double)a3;
@end

@implementation RSCamera

- (__n128)transform
{
  result = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  return result;
}

- (__n128)setTransform:(__n128)a3
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  return result;
}

- (__n128)pose
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = *(a1 + 128);
  return result;
}

- (__n128)setPose:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  return result;
}

- (__n128)intrinsics
{
  result = *(a1 + 144);
  v2 = *(a1 + 160);
  v3 = *(a1 + 176);
  return result;
}

- (__n128)setIntrinsics:(__n128)a3
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  return result;
}

- (double)imageResolution
{
  result = *(a1 + 192);
  v2 = *(a1 + 200);
  return result;
}

- (uint64_t)setImageResolution:(double)a3
{
  *(result + 192) = a2;
  *(result + 200) = a3;
  return result;
}

@end