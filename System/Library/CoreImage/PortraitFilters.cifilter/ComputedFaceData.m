@interface ComputedFaceData
- (CGPoint)betweenTheEyes;
- (CGPoint)faceCenter;
- (CGPoint)leftEye;
- (CGPoint)leftRightVec;
- (CGPoint)mouthCenter;
- (CGPoint)rightEye;
- (CGRect)adjustmentRect;
- (CGRect)faceBounds;
- (CGRect)headRect;
- (CGRect)imageRect;
- (ComputedFaceData)init;
- (void)dealloc;
@end

@implementation ComputedFaceData

- (ComputedFaceData)init
{
  v3.receiver = self;
  v3.super_class = ComputedFaceData;
  result = [(ComputedFaceData *)&v3 init];
  result->_skinSeedPoints = result->skinSeedPointArray;
  result->_teethSeedPoints = result->teethSeedPointArray;
  result->_leftIrisSeedPoints = result->leftIrisSeedPointArray;
  result->_rightIrisSeedPoints = result->rightIrisSeedPointArray;
  result->_neckSeedPoints = result->neckSeedPointArray;
  return result;
}

- (void)dealloc
{
  [(ComputedFaceData *)self setSkinSampleRgon:0];
  v3.receiver = self;
  v3.super_class = ComputedFaceData;
  [(ComputedFaceData *)&v3 dealloc];
}

- (CGRect)imageRect
{
  objc_copyStruct(v6, &self->_imageRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)adjustmentRect
{
  objc_copyStruct(v6, &self->_adjustmentRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)headRect
{
  objc_copyStruct(v6, &self->_headRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)faceBounds
{
  objc_copyStruct(v6, &self->_faceBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)leftEye
{
  objc_copyStruct(v4, &self->_leftEye, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)rightEye
{
  objc_copyStruct(v4, &self->_rightEye, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)betweenTheEyes
{
  objc_copyStruct(v4, &self->_betweenTheEyes, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)mouthCenter
{
  objc_copyStruct(v4, &self->_mouthCenter, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)faceCenter
{
  objc_copyStruct(v4, &self->_faceCenter, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)leftRightVec
{
  objc_copyStruct(v4, &self->_leftRightVec, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end