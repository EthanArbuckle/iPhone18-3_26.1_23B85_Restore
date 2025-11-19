@interface CVAPortraitResult_Impl
- (CVAPortraitResult_Impl)initWithMattingResult:(id)a3 portraitPixelBuffer:(__CVBuffer *)a4 portraitStability:(float)a5;
- (CVAPortraitResult_Impl)initWithMattingResult:(id)a3 portraitPixelBuffer:(__CVBuffer *)a4 portraitStability:(float)a5 relightingStability:(float)a6;
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

- (CVAPortraitResult_Impl)initWithMattingResult:(id)a3 portraitPixelBuffer:(__CVBuffer *)a4 portraitStability:(float)a5 relightingStability:(float)a6
{
  v11 = a3;
  v14.receiver = self;
  v14.super_class = CVAPortraitResult_Impl;
  v12 = [(CVAPortraitResult_Impl *)&v14 init];
  objc_storeStrong(&v12->_mattingResult, a3);
  v12->_portraitPixelBuffer = a4;
  CVPixelBufferRetain(a4);
  v12->_portraitStability = a5;
  v12->_relightingStability = a6;

  return v12;
}

- (CVAPortraitResult_Impl)initWithMattingResult:(id)a3 portraitPixelBuffer:(__CVBuffer *)a4 portraitStability:(float)a5
{
  v9 = a3;
  v12.receiver = self;
  v12.super_class = CVAPortraitResult_Impl;
  v10 = [(CVAPortraitResult_Impl *)&v12 init];
  objc_storeStrong(&v10->_mattingResult, a3);
  v10->_portraitPixelBuffer = a4;
  CVPixelBufferRetain(a4);
  v10->_portraitStability = a5;
  v10->_relightingStability = 1.0;

  return v10;
}

@end