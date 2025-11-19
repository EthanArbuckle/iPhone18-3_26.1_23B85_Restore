@interface ADFlowFrameOutput
- (void)dealloc;
@end

@implementation ADFlowFrameOutput

- (void)dealloc
{
  CVPixelBufferRelease(self->_depth);
  CVPixelBufferRelease(self->_confidence);
  CVPixelBufferRelease(self->_uncertainty);
  CVPixelBufferRelease(self->_depthMask);
  CVPixelBufferRelease(self->_normals);
  CVPixelBufferRelease(self->_confidenceLevels);
  v3.receiver = self;
  v3.super_class = ADFlowFrameOutput;
  [(ADFlowFrameOutput *)&v3 dealloc];
}

@end