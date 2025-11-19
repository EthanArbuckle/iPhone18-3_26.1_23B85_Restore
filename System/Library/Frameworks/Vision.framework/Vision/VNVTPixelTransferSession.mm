@interface VNVTPixelTransferSession
- (void)dealloc;
@end

@implementation VNVTPixelTransferSession

- (void)dealloc
{
  VTPixelTransferSessionInvalidate(self->_pixelTransferSession);
  v3.receiver = self;
  v3.super_class = VNVTPixelTransferSession;
  [(VNVTSession *)&v3 dealloc];
}

@end