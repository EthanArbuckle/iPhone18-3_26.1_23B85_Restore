@interface CVADepthIR
- (CVADepthIR)initWithPixelBufferRef:(__CVBuffer *)a3 timestamp:(double)a4;
- (void)dealloc;
@end

@implementation CVADepthIR

- (CVADepthIR)initWithPixelBufferRef:(__CVBuffer *)a3 timestamp:(double)a4
{
  if (CVPixelBufferGetPixelFormatType(a3) == 825437747)
  {
    v11.receiver = self;
    v11.super_class = CVADepthIR;
    v7 = [(CVADepthIR *)&v11 init];
    v8 = v7;
    if (v7)
    {
      v7->_timestamp = a4;
      v7->_dataBuffer = CVPixelBufferRetain(a3);
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_dataBuffer);
  v3.receiver = self;
  v3.super_class = CVADepthIR;
  [(CVADepthIR *)&v3 dealloc];
}

@end