@interface AVContentKeyPSSHRequestTracker
- (AVContentKeyPSSHRequestTracker)initWithRequestCount:(int64_t)a3;
- (id)requests;
- (void)dealloc;
@end

@implementation AVContentKeyPSSHRequestTracker

- (AVContentKeyPSSHRequestTracker)initWithRequestCount:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = AVContentKeyPSSHRequestTracker;
  v4 = [(AVContentKeyPSSHRequestTracker *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_totalExpectedRequestCount = a3;
    v4->_requests = v5;
  }

  return v4;
}

- (id)requests
{
  v2 = self->_requests;

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVContentKeyPSSHRequestTracker;
  [(AVContentKeyPSSHRequestTracker *)&v3 dealloc];
}

@end