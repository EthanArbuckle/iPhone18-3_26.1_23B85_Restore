@interface VNDetectFaceLandmarksRequestConfiguration
+ (BOOL)revision:(unint64_t)a3 supportsConstellation:(unint64_t)a4;
- (VNDetectFaceLandmarksRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNDetectFaceLandmarksRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectFaceLandmarksRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setRefineMouthRegion:self->_refineMouthRegion];
    [v5 setRefineLeftEyeRegion:self->_refineLeftEyeRegion];
    [v5 setRefineRightEyeRegion:self->_refineRightEyeRegion];
    [v5 setPerformBlinkDetection:self->_performBlinkDetection];
    [v5 setCascadeStepCount:self->_cascadeStepCount];
    [v5 setConstellation:self->_constellation];
  }

  return v5;
}

- (VNDetectFaceLandmarksRequestConfiguration)initWithRequestClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectFaceLandmarksRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:a3];
  v4 = v3;
  if (v3)
  {
    v3->_refineMouthRegion = 1;
    v3->_refineLeftEyeRegion = 1;
    v3->_refineRightEyeRegion = 1;
    v3->_performBlinkDetection = [(VNRequestConfiguration *)v3 resolvedRevision]!= 3;
    v4->_constellation = 1;
    v5 = v4;
  }

  return v4;
}

+ (BOOL)revision:(unint64_t)a3 supportsConstellation:(unint64_t)a4
{
  if (+[VNDetectFaceLandmarksRequestConfiguration revision:supportsConstellation:]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectFaceLandmarksRequestConfiguration revision:supportsConstellation:]::onceToken, &__block_literal_global_13990);
  }

  v6 = *(+[VNDetectFaceLandmarksRequestConfiguration revision:supportsConstellation:]::requestRevisionToSupportedConstellationsMap + 8);
  if (!v6)
  {
    return 0;
  }

  v7 = +[VNDetectFaceLandmarksRequestConfiguration revision:supportsConstellation:]::requestRevisionToSupportedConstellationsMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == +[VNDetectFaceLandmarksRequestConfiguration revision:supportsConstellation:]::requestRevisionToSupportedConstellationsMap + 8 || *(v7 + 32) > a3)
  {
    return 0;
  }

  v14 = *(v7 + 48);
  v12 = v7 + 48;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v12;
  do
  {
    v16 = *(v13 + 32);
    v9 = v16 >= a4;
    v17 = v16 < a4;
    if (v9)
    {
      v15 = v13;
    }

    v13 = *(v13 + 8 * v17);
  }

  while (v13);
  if (v15 == v12 || *(v15 + 32) > a4)
  {
LABEL_20:
    v15 = v12;
  }

  return v15 != v12;
}

@end