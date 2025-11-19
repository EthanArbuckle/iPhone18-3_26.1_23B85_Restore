@interface CVAPortraitRequest_StageLight
- (CVAPortraitRequest_StageLight)initWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 proxyCubeData:(id)a5 cubeData:(id)a6 vignetteIntensity:(float)a7 stageLightIntensity:(float)a8;
- (void)dealloc;
@end

@implementation CVAPortraitRequest_StageLight

- (void)dealloc
{
  CVPixelBufferRelease(self->_destinationColorPixelBuffer);
  v3.receiver = self;
  v3.super_class = CVAPortraitRequest_StageLight;
  [(CVAPortraitRequest_StageLight *)&v3 dealloc];
}

- (CVAPortraitRequest_StageLight)initWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 proxyCubeData:(id)a5 cubeData:(id)a6 vignetteIntensity:(float)a7 stageLightIntensity:(float)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = CVAPortraitRequest_StageLight;
  v18 = [(CVAPortraitRequest_StageLight *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_mattingRequest, a3);
    v19->_destinationColorPixelBuffer = a4;
    CVPixelBufferRetain(a4);
    objc_storeStrong(&v19->_proxyCubeData, a5);
    objc_storeStrong(&v19->_cubeData, a6);
    v19->_vignetteIntensity = a7;
    v19->_stageLightIntensity = a8;
    v20 = v19;
  }

  return v19;
}

@end