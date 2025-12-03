@interface CVAPortraitRequest
- (CVAPortraitRequest)initWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer backgroundColorCube:(id)cube foregroundColorCube:(id)colorCube colorCubeIntensity:(float)intensity simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)self0;
- (void)dealloc;
@end

@implementation CVAPortraitRequest

- (void)dealloc
{
  CVPixelBufferRelease(self->_destinationColorPixelBuffer);
  v3.receiver = self;
  v3.super_class = CVAPortraitRequest;
  [(CVAPortraitRequest *)&v3 dealloc];
}

- (CVAPortraitRequest)initWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer backgroundColorCube:(id)cube foregroundColorCube:(id)colorCube colorCubeIntensity:(float)intensity simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)self0
{
  requestCopy = request;
  cubeCopy = cube;
  colorCubeCopy = colorCube;
  v27.receiver = self;
  v27.super_class = CVAPortraitRequest;
  v22 = [(CVAPortraitRequest *)&v27 init];
  objc_storeStrong(&v22->_mattingRequest, request);
  v22->_destinationColorPixelBuffer = buffer;
  CVPixelBufferRetain(buffer);
  backgroundColorCube = v22->_backgroundColorCube;
  v22->_backgroundColorCube = cubeCopy;
  v24 = cubeCopy;

  foregroundColorCube = v22->_foregroundColorCube;
  v22->_foregroundColorCube = colorCubeCopy;

  v22->_colorCubeIntensity = intensity;
  v22->_simulatedFocalRatio = ratio;
  v22->_sourceColorGain = gain;
  v22->_sourceColorLux = lux;

  return v22;
}

@end