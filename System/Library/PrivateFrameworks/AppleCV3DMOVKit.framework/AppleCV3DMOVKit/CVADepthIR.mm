@interface CVADepthIR
- (CVADepthIR)initWithPixelBufferRef:(__CVBuffer *)ref timestamp:(double)timestamp;
- (void)dealloc;
@end

@implementation CVADepthIR

- (CVADepthIR)initWithPixelBufferRef:(__CVBuffer *)ref timestamp:(double)timestamp
{
  if (CVPixelBufferGetPixelFormatType(ref) == 825437747)
  {
    v11.receiver = self;
    v11.super_class = CVADepthIR;
    v7 = [(CVADepthIR *)&v11 init];
    v8 = v7;
    if (v7)
    {
      v7->_timestamp = timestamp;
      v7->_dataBuffer = CVPixelBufferRetain(ref);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_dataBuffer);
  v3.receiver = self;
  v3.super_class = CVADepthIR;
  [(CVADepthIR *)&v3 dealloc];
}

@end