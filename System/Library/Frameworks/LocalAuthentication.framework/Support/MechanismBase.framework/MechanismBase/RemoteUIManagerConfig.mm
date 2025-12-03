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
    mEMORY[0x277CD47C8] = [MEMORY[0x277CD47C8] sharedInstance];
    serverQueue = [mEMORY[0x277CD47C8] serverQueue];
    queue = v3->_queue;
    v3->_queue = serverQueue;

    mEMORY[0x277D24068] = [MEMORY[0x277D24068] sharedInstance];
    featureFlagLaunchAngelEnabled = [mEMORY[0x277D24068] featureFlagLaunchAngelEnabled];

    v9 = off_278A62468;
    if (!featureFlagLaunchAngelEnabled)
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