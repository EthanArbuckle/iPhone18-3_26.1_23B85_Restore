@interface ASVRealHitTestResult
- (ASVRealHitTestResult)initWithHitTestResult:(id)result imagePoint:assetPosition:cameraPosition:;
- (ASVRealHitTestResult)initWithRaycastResult:(id)result imagePoint:assetPosition:cameraPosition:;
- (ASVRealHitTestResult)initWithType:(__n128)type worldPosition:(__n128)position worldTransform:(__n128)transform localPosition:(__n128)localPosition imagePoint:(__n128)point assetPosition:(double)assetPosition cameraPosition:(double)cameraPosition planeIdentifier:(uint64_t)self0 planeAlignment:(uint64_t)self1;
- (float)distanceFromFeaturePoint;
@end

@implementation ASVRealHitTestResult

- (ASVRealHitTestResult)initWithRaycastResult:(id)result imagePoint:assetPosition:cameraPosition:
{
  v24 = v5;
  v25 = v4;
  v6 = v3;
  resultCopy = result;
  target = [resultCopy target];
  if (target > 2)
  {
    selfCopy = 0;
  }

  else
  {
    v10 = 2 - target;
    anchor = [resultCopy anchor];
    if (anchor)
    {
      anchor2 = [resultCopy anchor];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        anchor3 = [resultCopy anchor];
        anchor = [anchor3 identifier];
        alignment = [anchor3 alignment];
      }

      else
      {
        alignment = 0;
        anchor = 0;
      }
    }

    else
    {
      alignment = 0;
    }

    [resultCopy worldPosition];
    v23 = v17;
    [resultCopy worldTransform];
    self = [(ASVRealHitTestResult *)self initWithType:v10 worldPosition:anchor worldTransform:alignment localPosition:v23 imagePoint:v18 assetPosition:v19 cameraPosition:v20 planeIdentifier:v21 planeAlignment:0.0, v6, v25, v24];

    selfCopy = self;
  }

  return selfCopy;
}

- (ASVRealHitTestResult)initWithHitTestResult:(id)result imagePoint:assetPosition:cameraPosition:
{
  v29 = v5;
  v30 = v4;
  v6 = v3;
  resultCopy = result;
  type = [resultCopy type];
  switch(type)
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
      selfCopy = 0;
      goto LABEL_14;
  }

  anchor = [resultCopy anchor];
  if (anchor)
  {
    anchor2 = [resultCopy anchor];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      anchor3 = [resultCopy anchor];
      anchor = [anchor3 identifier];
      alignment = [anchor3 alignment];
    }

    else
    {
      alignment = 0;
      anchor = 0;
    }
  }

  else
  {
    alignment = 0;
  }

  [resultCopy worldPosition];
  v28 = v17;
  [resultCopy worldTransform];
  v26 = v19;
  v27 = v18;
  v24 = v21;
  v25 = v20;
  [resultCopy localPosition];
  self = [(ASVRealHitTestResult *)self initWithType:v10 worldPosition:anchor worldTransform:alignment localPosition:v28 imagePoint:v27 assetPosition:v26 cameraPosition:v25 planeIdentifier:v24 planeAlignment:v22, v6, v30, v29];

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (ASVRealHitTestResult)initWithType:(__n128)type worldPosition:(__n128)position worldTransform:(__n128)transform localPosition:(__n128)localPosition imagePoint:(__n128)point assetPosition:(double)assetPosition cameraPosition:(double)cameraPosition planeIdentifier:(uint64_t)self0 planeAlignment:(uint64_t)self1
{
  v22 = a12;
  v33.receiver = self;
  v33.super_class = ASVRealHitTestResult;
  v23 = [(ASVHitTestResult *)&v33 initWithType:alignment worldPosition:a2 imagePoint:assetPosition assetPosition:cameraPosition cameraPosition:a14];
  v24 = v23;
  if (v23)
  {
    *&v23[1].super.super.isa = type;
    *v23[1].super._imagePoint = position;
    *v23[1].super._worldPosition = transform;
    *v23[1].super._assetPosition = localPosition;
    *v23->_localPosition = point;
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