@interface ARMattingImageMetaData
- (ARMattingImageMetaData)initWithTimestamp:(double)timestamp downSampledImageBuffer:(__CVBuffer *)buffer mattingScaleImageBuffer:(__CVBuffer *)imageBuffer;
- (NSString)description;
- (void)dealloc;
@end

@implementation ARMattingImageMetaData

- (ARMattingImageMetaData)initWithTimestamp:(double)timestamp downSampledImageBuffer:(__CVBuffer *)buffer mattingScaleImageBuffer:(__CVBuffer *)imageBuffer
{
  v11.receiver = self;
  v11.super_class = ARMattingImageMetaData;
  v8 = [(ARMattingImageMetaData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = timestamp;
    v8->_downSampledImageBuffer = CVPixelBufferRetain(buffer);
    v9->_mattingScaleImageBuffer = CVPixelBufferRetain(imageBuffer);
  }

  return v9;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_downSampledImageBuffer);
  CVPixelBufferRelease(self->_mattingScaleImageBuffer);
  v3.receiver = self;
  v3.super_class = ARMattingImageMetaData;
  [(ARMattingImageMetaData *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(ARMattingImageMetaData *)self timestamp];
  v7 = [v3 stringWithFormat:@"<%@: %p timestamp=%f>", v5, self, v6];

  return v7;
}

@end