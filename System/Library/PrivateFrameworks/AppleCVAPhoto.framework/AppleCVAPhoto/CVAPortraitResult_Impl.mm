@interface CVAPortraitResult_Impl
- (CVAPortraitResult_Impl)initWithMattingResult:(id)result portraitPixelBuffer:(__CVBuffer *)buffer portraitStability:(float)stability;
- (CVAPortraitResult_Impl)initWithMattingResult:(id)result portraitPixelBuffer:(__CVBuffer *)buffer portraitStability:(float)stability relightingStability:(float)relightingStability;
- (void)dealloc;
@end

@implementation CVAPortraitResult_Impl

- (void)dealloc
{
  CVPixelBufferRelease(self->_portraitPixelBuffer);
  self->_portraitPixelBuffer = 0;
  v3.receiver = self;
  v3.super_class = CVAPortraitResult_Impl;
  [(CVAPortraitResult_Impl *)&v3 dealloc];
}

- (CVAPortraitResult_Impl)initWithMattingResult:(id)result portraitPixelBuffer:(__CVBuffer *)buffer portraitStability:(float)stability relightingStability:(float)relightingStability
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = CVAPortraitResult_Impl;
  v12 = [(CVAPortraitResult_Impl *)&v14 init];
  objc_storeStrong(&v12->_mattingResult, result);
  v12->_portraitPixelBuffer = buffer;
  CVPixelBufferRetain(buffer);
  v12->_portraitStability = stability;
  v12->_relightingStability = relightingStability;

  return v12;
}

- (CVAPortraitResult_Impl)initWithMattingResult:(id)result portraitPixelBuffer:(__CVBuffer *)buffer portraitStability:(float)stability
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = CVAPortraitResult_Impl;
  v10 = [(CVAPortraitResult_Impl *)&v12 init];
  objc_storeStrong(&v10->_mattingResult, result);
  v10->_portraitPixelBuffer = buffer;
  CVPixelBufferRetain(buffer);
  v10->_portraitStability = stability;
  v10->_relightingStability = 1.0;

  return v10;
}

@end