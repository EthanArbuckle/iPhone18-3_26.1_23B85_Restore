@interface CVAMattingResult_Impl
- (CVAMattingResult_Impl)initWithDisparityPostprocessingResult:(id)a3 alphaMattePixelBuffer:(__CVBuffer *)a4;
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

- (CVAMattingResult_Impl)initWithDisparityPostprocessingResult:(id)a3 alphaMattePixelBuffer:(__CVBuffer *)a4
{
  v7 = a3;
  v10.receiver = self;
  v10.super_class = CVAMattingResult_Impl;
  v8 = [(CVAMattingResult_Impl *)&v10 init];
  objc_storeStrong(&v8->_disparityPostprocessingResult, a3);
  v8->_alphaMattePixelBuffer = a4;
  CVPixelBufferRetain(a4);

  return v8;
}

@end