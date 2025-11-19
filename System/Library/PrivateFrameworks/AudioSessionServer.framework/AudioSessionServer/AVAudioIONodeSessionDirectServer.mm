@interface AVAudioIONodeSessionDirectServer
- (AVAudioIONodeSessionDirectServer)initWithSessionManager:(void *)a3 serverDelegate:(id)a4;
@end

@implementation AVAudioIONodeSessionDirectServer

- (AVAudioIONodeSessionDirectServer)initWithSessionManager:(void *)a3 serverDelegate:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AVAudioIONodeSessionDirectServer;
  v8 = [(AVAudioIONodeSessionDirectServer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_sessionManager = a3;
    objc_storeStrong(&v8->_serverDelegate, a4);
  }

  return v9;
}

@end