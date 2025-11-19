@interface ARFrame(ARFrame_SmartHitTest)
- (ASVRealHitTestResult)smartHitTestResultForImagePoint:()ARFrame_SmartHitTest assetPosition:maxDistance:;
- (__n128)cameraPosition;
- (float)hitTestResultDistanceFromCamera:()ARFrame_SmartHitTest;
- (uint64_t)hitTestResult:()ARFrame_SmartHitTest isPlaneOfType:;
@end

@implementation ARFrame(ARFrame_SmartHitTest)

- (__n128)cameraPosition
{
  v1 = [a1 camera];
  [v1 transform];
  v4 = v2;

  return v4;
}

- (uint64_t)hitTestResult:()ARFrame_SmartHitTest isPlaneOfType:
{
  v5 = a3;
  if ([v5 type] == a4)
  {
    v6 = [v5 anchor];
    v7 = [v6 isMemberOfClass:objc_opt_class()];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (float)hitTestResultDistanceFromCamera:()ARFrame_SmartHitTest
{
  [a3 worldPosition];
  v9 = v4;
  [a1 cameraPosition];
  v6 = vsubq_f32(v9, v5);
  v7 = vmulq_f32(v6, v6);
  return sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
}

- (ASVRealHitTestResult)smartHitTestResultForImagePoint:()ARFrame_SmartHitTest assetPosition:maxDistance:
{
  v7 = float2ToPoint(*&a2);
  v9 = v8;
  v10 = [a1 hitTest:32 types:?];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __91__ARFrame_ARFrame_SmartHitTest__smartHitTestResultForImagePoint_assetPosition_maxDistance___block_invoke;
  v33[3] = &unk_278CCAA48;
  v33[4] = a1;
  v34 = a4;
  v11 = [v10 indexOfObjectPassingTest:v33];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [a1 hitTest:16 types:{v7, v9}];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __91__ARFrame_ARFrame_SmartHitTest__smartHitTestResultForImagePoint_assetPosition_maxDistance___block_invoke_2;
    v31[3] = &unk_278CCAA48;
    v31[4] = a1;
    v32 = a4;
    v13 = [v12 indexOfObjectPassingTest:v31];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [a1 hitTest:2 types:{v7, v9}];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __91__ARFrame_ARFrame_SmartHitTest__smartHitTestResultForImagePoint_assetPosition_maxDistance___block_invoke_3;
      v29[3] = &unk_278CCAA48;
      v29[4] = a1;
      v30 = a4;
      v15 = [v14 indexOfObjectPassingTest:v29];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0;
      }

      else
      {
        v23 = v15;
        v24 = [ASVRealHitTestResult alloc];
        v25 = [v14 objectAtIndexedSubscript:v23];
        [a1 cameraPosition];
        v16 = [(ASVRealHitTestResult *)v24 initWithHitTestResult:v25 imagePoint:a2 assetPosition:a3 cameraPosition:v26];
      }
    }

    else
    {
      v20 = v13;
      v21 = [ASVRealHitTestResult alloc];
      v14 = [v12 objectAtIndexedSubscript:v20];
      [a1 cameraPosition];
      v16 = [(ASVRealHitTestResult *)v21 initWithHitTestResult:v14 imagePoint:a2 assetPosition:a3 cameraPosition:v22];
    }
  }

  else
  {
    v17 = v11;
    v18 = [ASVRealHitTestResult alloc];
    v12 = [v10 objectAtIndexedSubscript:v17];
    [a1 cameraPosition];
    v16 = [(ASVRealHitTestResult *)v18 initWithHitTestResult:v12 imagePoint:a2 assetPosition:a3 cameraPosition:v19];
  }

  return v16;
}

@end