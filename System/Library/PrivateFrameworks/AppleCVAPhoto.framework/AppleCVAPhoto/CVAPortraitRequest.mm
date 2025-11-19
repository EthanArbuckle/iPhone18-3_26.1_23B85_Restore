@interface CVAPortraitRequest
- (CVAPortraitRequest)initWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 backgroundColorCube:(id)a5 foregroundColorCube:(id)a6 colorCubeIntensity:(float)a7 simulatedFocalRatio:(float)a8 sourceColorGain:(float)a9 sourceColorLux:(float)a10;
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

- (CVAPortraitRequest)initWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 backgroundColorCube:(id)a5 foregroundColorCube:(id)a6 colorCubeIntensity:(float)a7 simulatedFocalRatio:(float)a8 sourceColorGain:(float)a9 sourceColorLux:(float)a10
{
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v27.receiver = self;
  v27.super_class = CVAPortraitRequest;
  v22 = [(CVAPortraitRequest *)&v27 init];
  objc_storeStrong(&v22->_mattingRequest, a3);
  v22->_destinationColorPixelBuffer = a4;
  CVPixelBufferRetain(a4);
  backgroundColorCube = v22->_backgroundColorCube;
  v22->_backgroundColorCube = v20;
  v24 = v20;

  foregroundColorCube = v22->_foregroundColorCube;
  v22->_foregroundColorCube = v21;

  v22->_colorCubeIntensity = a7;
  v22->_simulatedFocalRatio = a8;
  v22->_sourceColorGain = a9;
  v22->_sourceColorLux = a10;

  return v22;
}

@end