@interface ARMLIntermediateDownScalingResultData
- (ARMLIntermediateDownScalingResultData)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4 originalImageData:(id)a5;
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation ARMLIntermediateDownScalingResultData

- (ARMLIntermediateDownScalingResultData)initWithPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4 originalImageData:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ARMLIntermediateDownScalingResultData;
  v10 = [(ARMLIntermediateDownScalingResultData *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_pixelBuffer = a3;
    CVPixelBufferRetain(a3);
    v11->_timestamp = a4;
    objc_storeStrong(&v11->_originalImageData, a5);
  }

  return v11;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = ARMLIntermediateDownScalingResultData;
  [(ARMLIntermediateDownScalingResultData *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    if ([v5 pixelBuffer] == self->_pixelBuffer && (objc_msgSend(v5, "timestamp"), v6 == self->_timestamp))
    {
      v9 = [v5 originalImageData];
      v7 = [v9 isEqual:self->_originalImageData];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end