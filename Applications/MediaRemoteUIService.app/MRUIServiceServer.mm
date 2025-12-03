@interface MRUIServiceServer
- (MRUIServiceServer)init;
@end

@implementation MRUIServiceServer

- (MRUIServiceServer)init
{
  v7.receiver = self;
  v7.super_class = MRUIServiceServer;
  v2 = [(MRUIServiceServer *)&v7 init];
  if (v2)
  {
    v3 = +[NSXPCListener anonymousListener];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    endpoint = [(NSXPCListener *)v2->_listener endpoint];
    MRSetUIServiceRelayEndpoint();
  }

  return v2;
}

@end