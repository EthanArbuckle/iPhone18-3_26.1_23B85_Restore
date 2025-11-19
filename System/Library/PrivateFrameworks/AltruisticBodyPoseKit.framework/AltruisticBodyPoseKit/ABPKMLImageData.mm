@interface ABPKMLImageData
- (ABPKMLImageData)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4 abpkDeviceOrientation:(int64_t)a5 preprocessingParameters:(id)a6;
- (void)dealloc;
@end

@implementation ABPKMLImageData

- (ABPKMLImageData)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4 abpkDeviceOrientation:(int64_t)a5 preprocessingParameters:(id)a6
{
  v11 = a6;
  v14.receiver = self;
  v14.super_class = ABPKMLImageData;
  v12 = [(ABPKMLImageData *)&v14 init];
  if (v12)
  {
    v12->_pixelBuffer = CVPixelBufferRetain(a3);
    v12->_timestamp = a4;
    v12->_abpkDeviceOrientation = a5;
    objc_storeStrong(&v12->_preprocessingParams, a6);
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