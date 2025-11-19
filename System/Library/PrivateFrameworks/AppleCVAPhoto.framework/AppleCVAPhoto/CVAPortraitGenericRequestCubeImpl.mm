@interface CVAPortraitGenericRequestCubeImpl
- (void)dealloc;
@end

@implementation CVAPortraitGenericRequestCubeImpl

- (void)dealloc
{
  CVPixelBufferRelease(self->_sourceColorPixelBuffer);
  v3.receiver = self;
  v3.super_class = CVAPortraitGenericRequestCubeImpl;
  [(CVAPortraitGenericRequestCubeImpl *)&v3 dealloc];
}

@end