@interface VNVTSession
- (VNVTSession)initWithSession:(void *)a3;
- (void)dealloc;
@end

@implementation VNVTSession

- (void)dealloc
{
  CFRelease(self->_session);
  v3.receiver = self;
  v3.super_class = VNVTSession;
  [(VNVTSession *)&v3 dealloc];
}

- (VNVTSession)initWithSession:(void *)a3
{
  self->_session = a3;
  v4.receiver = self;
  v4.super_class = VNVTSession;
  return [(VNVTSession *)&v4 init];
}

@end