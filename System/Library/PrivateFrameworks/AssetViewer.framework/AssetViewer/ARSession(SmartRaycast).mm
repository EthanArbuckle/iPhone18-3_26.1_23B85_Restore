@interface ARSession(SmartRaycast)
- (ASVRealHitTestResult)smartRaycastResultForImagePoint:()SmartRaycast assetPosition:maxDistance:;
- (__n128)cameraPosition;
- (float)raycastResultDistanceFromCamera:()SmartRaycast;
@end

@implementation ARSession(SmartRaycast)

- (__n128)cameraPosition
{
  currentFrame = [self currentFrame];
  camera = [currentFrame camera];
  [camera transform];
  v5 = v3;

  return v5;
}

- (float)raycastResultDistanceFromCamera:()SmartRaycast
{
  [a3 worldPosition];
  v9 = v4;
  [self cameraPosition];
  v6 = vsubq_f32(v9, v5);
  v7 = vmulq_f32(v6, v6);
  return sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
}

- (ASVRealHitTestResult)smartRaycastResultForImagePoint:()SmartRaycast assetPosition:maxDistance:
{
  currentFrame = [self currentFrame];
  camera = [currentFrame camera];
  trackingState = [camera trackingState];

  if (trackingState == 2)
  {
    v12 = float2ToPoint(a3);
    v14 = v13;
    currentFrame2 = [self currentFrame];
    v16 = [currentFrame2 raycastQueryFromPoint:2 allowingTarget:2 alignment:{v12, v14}];

    v17 = [self raycast:v16];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__ARSession_SmartRaycast__smartRaycastResultForImagePoint_assetPosition_maxDistance___block_invoke;
    v26[3] = &unk_278CCAF88;
    v26[4] = self;
    v26[5] = a2;
    v27 = a5;
    v18 = [v17 indexOfObjectPassingTest:v26];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
    }

    else
    {
      v20 = v18;
      v21 = [ASVRealHitTestResult alloc];
      v22 = [v17 objectAtIndexedSubscript:v20];
      [self cameraPosition];
      v19 = [(ASVRealHitTestResult *)v21 initWithRaycastResult:v22 imagePoint:*&a3 assetPosition:a4 cameraPosition:v23];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end