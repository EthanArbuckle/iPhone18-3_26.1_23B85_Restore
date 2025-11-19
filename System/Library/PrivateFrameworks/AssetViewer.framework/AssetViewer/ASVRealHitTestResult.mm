@interface ASVRealHitTestResult
- (ASVRealHitTestResult)initWithHitTestResult:(id)a3 imagePoint:assetPosition:cameraPosition:;
- (ASVRealHitTestResult)initWithRaycastResult:(id)a3 imagePoint:assetPosition:cameraPosition:;
- (ASVRealHitTestResult)initWithType:(__n128)a3 worldPosition:(__n128)a4 worldTransform:(__n128)a5 localPosition:(__n128)a6 imagePoint:(__n128)a7 assetPosition:(double)a8 cameraPosition:(double)a9 planeIdentifier:(uint64_t)a10 planeAlignment:(uint64_t)a11;
- (float)distanceFromFeaturePoint;
@end

@implementation ASVRealHitTestResult

- (ASVRealHitTestResult)initWithRaycastResult:(id)a3 imagePoint:assetPosition:cameraPosition:
{
  v24 = v5;
  v25 = v4;
  v6 = v3;
  v8 = a3;
  v9 = [v8 target];
  if (v9 > 2)
  {
    v16 = 0;
  }

  else
  {
    v10 = 2 - v9;
    v11 = [v8 anchor];
    if (v11)
    {
      v12 = [v8 anchor];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = [v8 anchor];
        v11 = [v14 identifier];
        v15 = [v14 alignment];
      }

      else
      {
        v15 = 0;
        v11 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    [v8 worldPosition];
    v23 = v17;
    [v8 worldTransform];
    self = [(ASVRealHitTestResult *)self initWithType:v10 worldPosition:v11 worldTransform:v15 localPosition:v23 imagePoint:v18 assetPosition:v19 cameraPosition:v20 planeIdentifier:v21 planeAlignment:0.0, v6, v25, v24];

    v16 = self;
  }

  return v16;
}

- (ASVRealHitTestResult)initWithHitTestResult:(id)a3 imagePoint:assetPosition:cameraPosition:
{
  v29 = v5;
  v30 = v4;
  v6 = v3;
  v8 = a3;
  v9 = [v8 type];
  switch(v9)
  {
    case 2:
      v10 = 0;
      break;
    case 32:
      v10 = 2;
      break;
    case 16:
      v10 = 1;
      break;
    default:
      v16 = 0;
      goto LABEL_14;
  }

  v11 = [v8 anchor];
  if (v11)
  {
    v12 = [v8 anchor];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [v8 anchor];
      v11 = [v14 identifier];
      v15 = [v14 alignment];
    }

    else
    {
      v15 = 0;
      v11 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  [v8 worldPosition];
  v28 = v17;
  [v8 worldTransform];
  v26 = v19;
  v27 = v18;
  v24 = v21;
  v25 = v20;
  [v8 localPosition];
  self = [(ASVRealHitTestResult *)self initWithType:v10 worldPosition:v11 worldTransform:v15 localPosition:v28 imagePoint:v27 assetPosition:v26 cameraPosition:v25 planeIdentifier:v24 planeAlignment:v22, v6, v30, v29];

  v16 = self;
LABEL_14:

  return v16;
}

- (ASVRealHitTestResult)initWithType:(__n128)a3 worldPosition:(__n128)a4 worldTransform:(__n128)a5 localPosition:(__n128)a6 imagePoint:(__n128)a7 assetPosition:(double)a8 cameraPosition:(double)a9 planeIdentifier:(uint64_t)a10 planeAlignment:(uint64_t)a11
{
  v22 = a12;
  v33.receiver = a1;
  v33.super_class = ASVRealHitTestResult;
  v23 = [(ASVHitTestResult *)&v33 initWithType:a11 worldPosition:a2 imagePoint:a8 assetPosition:a9 cameraPosition:a14];
  v24 = v23;
  if (v23)
  {
    *&v23[1].super.super.isa = a3;
    *v23[1].super._imagePoint = a4;
    *v23[1].super._worldPosition = a5;
    *v23[1].super._assetPosition = a6;
    *v23->_localPosition = a7;
    objc_storeStrong(&v23->_planeIdentifier, a12);
    v24->_alignment = a13;
  }

  return v24;
}

- (float)distanceFromFeaturePoint
{
  [(ASVRealHitTestResult *)self localPosition];
  v3 = vmulq_f32(v2, v2);
  return sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
}

@end