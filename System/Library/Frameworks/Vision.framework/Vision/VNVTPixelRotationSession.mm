@interface VNVTPixelRotationSession
- (void)dealloc;
@end

@implementation VNVTPixelRotationSession

- (void)dealloc
{
  VTPixelRotationSessionInvalidate(self->_pixelRotationSession);
  self->_pixelRotationSession = 0;
  v3.receiver = self;
  v3.super_class = VNVTPixelRotationSession;
  [(VNVTSession *)&v3 dealloc];
}

@end