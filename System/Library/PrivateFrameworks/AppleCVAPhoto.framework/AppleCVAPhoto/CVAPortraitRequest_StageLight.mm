@interface CVAPortraitRequest_StageLight
- (CVAPortraitRequest_StageLight)initWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer proxyCubeData:(id)data cubeData:(id)cubeData vignetteIntensity:(float)intensity stageLightIntensity:(float)lightIntensity;
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

- (CVAPortraitRequest_StageLight)initWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer proxyCubeData:(id)data cubeData:(id)cubeData vignetteIntensity:(float)intensity stageLightIntensity:(float)lightIntensity
{
  requestCopy = request;
  dataCopy = data;
  cubeDataCopy = cubeData;
  v22.receiver = self;
  v22.super_class = CVAPortraitRequest_StageLight;
  v18 = [(CVAPortraitRequest_StageLight *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_mattingRequest, request);
    v19->_destinationColorPixelBuffer = buffer;
    CVPixelBufferRetain(buffer);
    objc_storeStrong(&v19->_proxyCubeData, data);
    objc_storeStrong(&v19->_cubeData, cubeData);
    v19->_vignetteIntensity = intensity;
    v19->_stageLightIntensity = lightIntensity;
    v20 = v19;
  }

  return v19;
}

@end