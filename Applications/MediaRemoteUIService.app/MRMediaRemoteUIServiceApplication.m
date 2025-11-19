@interface MRMediaRemoteUIServiceApplication
- (MRMediaRemoteUIServiceApplication)init;
@end

@implementation MRMediaRemoteUIServiceApplication

- (MRMediaRemoteUIServiceApplication)init
{
  v6.receiver = self;
  v6.super_class = MRMediaRemoteUIServiceApplication;
  v2 = [(MRMediaRemoteUIServiceApplication *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MRUIServiceServer);
    server = v2->_server;
    v2->_server = v3;
  }

  return v2;
}

@end