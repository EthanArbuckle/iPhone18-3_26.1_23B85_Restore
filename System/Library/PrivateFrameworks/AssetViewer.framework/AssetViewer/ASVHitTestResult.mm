@interface ASVHitTestResult
- (ASVHitTestResult)initWithType:(int64_t)a3 worldPosition:imagePoint:assetPosition:cameraPosition:;
- (BOOL)isSynthesizedVeritcalPlane;
- (double)cameraToPosition;
- (float)distanceFromAsset;
- (float)distanceFromCamera;
@end

@implementation ASVHitTestResult

- (ASVHitTestResult)initWithType:(int64_t)a3 worldPosition:imagePoint:assetPosition:cameraPosition:
{
  v11 = v5;
  v12 = v6;
  v7 = v4;
  v10 = v3;
  v13.receiver = self;
  v13.super_class = ASVHitTestResult;
  result = [(ASVHitTestResult *)&v13 init];
  if (result)
  {
    result->_type = a3;
    *result->_imagePoint = v7;
    *result->_worldPosition = v10;
    *result->_assetPosition = v11;
    *result->_cameraPosition = v12;
    *result->_synthesizedPlaneNormal = kASVInvalidPosition;
  }

  return result;
}

- (float)distanceFromAsset
{
  [(ASVHitTestResult *)self assetPosition];
  if ((ASVPositionIsValid() & 1) == 0)
  {
    return -1.0;
  }

  [(ASVHitTestResult *)self assetPosition];
  v8 = v3;
  [(ASVHitTestResult *)self worldPosition];
  v5 = vsubq_f32(v8, v4);
  v6 = vmulq_f32(v5, v5);
  return sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
}

- (float)distanceFromCamera
{
  [(ASVHitTestResult *)self cameraToPosition];
  v3 = vmulq_f32(v2, v2);
  return sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
}

- (double)cameraToPosition
{
  [a1 worldPosition];
  v5 = v2;
  [a1 cameraPosition];
  *&result = vsubq_f32(v5, v3).u64[0];
  return result;
}

- (BOOL)isSynthesizedVeritcalPlane
{
  if (self->_type != 3)
  {
    return 0;
  }

  v2 = vmulq_f32(*self->_synthesizedPlaneNormal, xmmword_241364640);
  return acosf(v2.f32[2] + vaddv_f32(*v2.f32)) > 0.785398163;
}

@end