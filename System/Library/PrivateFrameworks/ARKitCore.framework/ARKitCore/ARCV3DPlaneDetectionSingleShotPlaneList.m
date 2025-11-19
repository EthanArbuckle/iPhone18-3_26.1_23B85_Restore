@interface ARCV3DPlaneDetectionSingleShotPlaneList
- (ARCV3DPlaneDetectionSingleShotPlaneList)initWithDetectionResult:(CV3DPlaneDetectionSingleShotPlaneList *)a3;
- (void)dealloc;
@end

@implementation ARCV3DPlaneDetectionSingleShotPlaneList

- (ARCV3DPlaneDetectionSingleShotPlaneList)initWithDetectionResult:(CV3DPlaneDetectionSingleShotPlaneList *)a3
{
  v6.receiver = self;
  v6.super_class = ARCV3DPlaneDetectionSingleShotPlaneList;
  v4 = [(ARCV3DPlaneDetectionSingleShotPlaneList *)&v6 init];
  if (v4)
  {
    CV3DPlaneDetectionSingleShotPlaneListRetain();
    v4->_cv3dPlaneDetections = a3;
  }

  return v4;
}

- (void)dealloc
{
  CV3DPlaneDetectionSingleShotPlaneListRelease();
  v3.receiver = self;
  v3.super_class = ARCV3DPlaneDetectionSingleShotPlaneList;
  [(ARCV3DPlaneDetectionSingleShotPlaneList *)&v3 dealloc];
}

@end