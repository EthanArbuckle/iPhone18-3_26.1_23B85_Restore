@interface ABPKMLImageData
- (ABPKMLImageData)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp abpkDeviceOrientation:(int64_t)orientation preprocessingParameters:(id)parameters;
- (void)dealloc;
@end

@implementation ABPKMLImageData

- (ABPKMLImageData)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp abpkDeviceOrientation:(int64_t)orientation preprocessingParameters:(id)parameters
{
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = ABPKMLImageData;
  v12 = [(ABPKMLImageData *)&v14 init];
  if (v12)
  {
    v12->_pixelBuffer = CVPixelBufferRetain(buffer);
    v12->_timestamp = timestamp;
    v12->_abpkDeviceOrientation = orientation;
    objc_storeStrong(&v12->_preprocessingParams, parameters);
  }

  return v12;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = ABPKMLImageData;
  [(ABPKMLImageData *)&v3 dealloc];
}

@end