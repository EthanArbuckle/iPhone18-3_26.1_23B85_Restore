@interface RemoteUIManagerConfig
- (RemoteUIManagerConfig)init;
@end

@implementation RemoteUIManagerConfig

- (RemoteUIManagerConfig)init
{
  v13.receiver = self;
  v13.super_class = RemoteUIManagerConfig;
  v2 = [(RemoteUIManagerConfig *)&v13 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_238BB1BD0;
    *(v2 + 3) = 0x4014000000000000;
    v4 = [MEMORY[0x277CD47C8] sharedInstance];
    v5 = [v4 serverQueue];
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = [MEMORY[0x277D24068] sharedInstance];
    v8 = [v7 featureFlagLaunchAngelEnabled];

    v9 = off_278A62468;
    if (!v8)
    {
      v9 = off_278A62470;
    }

    v10 = objc_alloc_init(*v9);
    activator = v3->_activator;
    v3->_activator = v10;
  }

  return v3;
}

@end