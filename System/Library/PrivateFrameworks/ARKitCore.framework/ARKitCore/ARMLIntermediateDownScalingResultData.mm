@interface ARMLIntermediateDownScalingResultData
- (ARMLIntermediateDownScalingResultData)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp originalImageData:(id)data;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation ARMLIntermediateDownScalingResultData

- (ARMLIntermediateDownScalingResultData)initWithPixelBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp originalImageData:(id)data
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = ARMLIntermediateDownScalingResultData;
  v10 = [(ARMLIntermediateDownScalingResultData *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_pixelBuffer = buffer;
    CVPixelBufferRetain(buffer);
    v11->_timestamp = timestamp;
    objc_storeStrong(&v11->_originalImageData, data);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    if ([v5 pixelBuffer] == self->_pixelBuffer && (objc_msgSend(v5, "timestamp"), v6 == self->_timestamp))
    {
      originalImageData = [v5 originalImageData];
      v7 = [originalImageData isEqual:self->_originalImageData];
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