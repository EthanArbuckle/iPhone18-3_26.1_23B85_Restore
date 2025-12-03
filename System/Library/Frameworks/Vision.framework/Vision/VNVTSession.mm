@interface VNVTSession
- (VNVTSession)initWithSession:(void *)session;
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

- (VNVTSession)initWithSession:(void *)session
{
  self->_session = session;
  v4.receiver = self;
  v4.super_class = VNVTSession;
  return [(VNVTSession *)&v4 init];
}

@end