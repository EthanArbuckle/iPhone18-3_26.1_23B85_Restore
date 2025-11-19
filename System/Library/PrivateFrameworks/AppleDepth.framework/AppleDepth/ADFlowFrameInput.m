@interface ADFlowFrameInput
- (void)dealloc;
@end

@implementation ADFlowFrameInput

- (void)dealloc
{
  CVPixelBufferRelease(self->_color);
  CVPixelBufferRelease(self->_secondaryColor);
  CVPixelBufferRelease(self->_pearl);
  v3.receiver = self;
  v3.super_class = ADFlowFrameInput;
  [(ADFlowFrameInput *)&v3 dealloc];
}

@end