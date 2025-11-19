@interface AXBTwiceRemoteScreenManager
+ (void)initializeMonitor;
- (void)updateSettings;
@end

@implementation AXBTwiceRemoteScreenManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_13 != -1)
  {
    +[AXBTwiceRemoteScreenManager initializeMonitor];
  }
}

void __48__AXBTwiceRemoteScreenManager_initializeMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBTwiceRemoteScreenManager);
  v1 = _sharedManager;
  _sharedManager = v0;

  [_sharedManager updateSettings];
  v5 = [MEMORY[0x29EDBA068] defaultCenter];
  v2 = *MEMORY[0x29EDC8520];
  v3 = [MEMORY[0x29EDBA088] mainQueue];
  v4 = [v5 addObserverForName:v2 object:0 queue:v3 usingBlock:&__block_literal_global_285_4];
}

- (void)updateSettings
{
  v2 = _sharedManager;
  v3 = _AXSTwiceRemoteScreenEnabled() != 0;

  [v2 setTwiceRemoteScreenEnabled:v3];
}

- (void)setTwiceRemoteScreenEnabled:.cold.2()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"id<AXWatchRemoteScreenServiceProtocolObjc> AXTwiceRemoteScreenServiceObjc_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXBTwiceRemoteScreenManager.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)setTwiceRemoteScreenEnabled:.cold.3()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL AXWatchRemoteScreenIsTwiceFeatureOn_Soft(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXBTwiceRemoteScreenManager.m" lineNumber:17 description:{@"%s", dlerror()}];

  __break(1u);
}

@end