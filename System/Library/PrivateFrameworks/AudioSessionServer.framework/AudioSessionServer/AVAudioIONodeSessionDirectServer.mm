@interface AVAudioIONodeSessionDirectServer
- (AVAudioIONodeSessionDirectServer)initWithSessionManager:(void *)manager serverDelegate:(id)delegate;
@end

@implementation AVAudioIONodeSessionDirectServer

- (AVAudioIONodeSessionDirectServer)initWithSessionManager:(void *)manager serverDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = AVAudioIONodeSessionDirectServer;
  v8 = [(AVAudioIONodeSessionDirectServer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_sessionManager = manager;
    objc_storeStrong(&v8->_serverDelegate, delegate);
  }

  return v9;
}

@end