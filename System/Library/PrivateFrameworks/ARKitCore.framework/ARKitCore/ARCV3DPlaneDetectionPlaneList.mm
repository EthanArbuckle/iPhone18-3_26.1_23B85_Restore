@interface ARCV3DPlaneDetectionPlaneList
- (ARCV3DPlaneDetectionPlaneList)initWithDetectionResult:(CV3DPlaneDetectionPlaneList *)result;
- (void)dealloc;
@end

@implementation ARCV3DPlaneDetectionPlaneList

- (ARCV3DPlaneDetectionPlaneList)initWithDetectionResult:(CV3DPlaneDetectionPlaneList *)result
{
  v6.receiver = self;
  v6.super_class = ARCV3DPlaneDetectionPlaneList;
  v4 = [(ARCV3DPlaneDetectionPlaneList *)&v6 init];
  if (v4)
  {
    CV3DPlaneDetectionPlaneListRetain();
    v4->_cv3dPlaneDetections = result;
  }

  return v4;
}

- (void)dealloc
{
  CV3DPlaneDetectionPlaneListRelease();
  v3.receiver = self;
  v3.super_class = ARCV3DPlaneDetectionPlaneList;
  [(ARCV3DPlaneDetectionPlaneList *)&v3 dealloc];
}

@end