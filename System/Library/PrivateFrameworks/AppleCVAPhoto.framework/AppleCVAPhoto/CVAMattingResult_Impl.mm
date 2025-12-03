@interface CVAMattingResult_Impl
- (CVAMattingResult_Impl)initWithDisparityPostprocessingResult:(id)result alphaMattePixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
@end

@implementation CVAMattingResult_Impl

- (void)dealloc
{
  CVPixelBufferRelease(self->_alphaMattePixelBuffer);
  v3.receiver = self;
  v3.super_class = CVAMattingResult_Impl;
  [(CVAMattingResult_Impl *)&v3 dealloc];
}

- (CVAMattingResult_Impl)initWithDisparityPostprocessingResult:(id)result alphaMattePixelBuffer:(__CVBuffer *)buffer
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = CVAMattingResult_Impl;
  v8 = [(CVAMattingResult_Impl *)&v10 init];
  objc_storeStrong(&v8->_disparityPostprocessingResult, result);
  v8->_alphaMattePixelBuffer = buffer;
  CVPixelBufferRetain(buffer);

  return v8;
}

@end