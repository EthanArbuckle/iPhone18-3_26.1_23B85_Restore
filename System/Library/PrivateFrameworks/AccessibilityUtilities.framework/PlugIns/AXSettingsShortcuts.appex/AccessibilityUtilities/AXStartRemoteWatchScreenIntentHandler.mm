@interface AXStartRemoteWatchScreenIntentHandler
- (void)handleStartRemoteWatchScreen:(id)a3 completion:(id)a4;
@end

@implementation AXStartRemoteWatchScreenIntentHandler

- (void)handleStartRemoteWatchScreen:(id)a3 completion:(id)a4
{
  v8 = a4;
  v4 = +[AXSpringBoardServer server];
  v5 = [v4 isScreenLockedWithPasscode:0];

  if (v5)
  {
    v6 = 100;
  }

  else if (AXDeviceSupportsWatchRemoteScreen())
  {
    _AXSTwiceRemoteScreenSetPlatform();
    _AXSTwiceRemoteScreenSetEnabled();
    v6 = 4;
  }

  else
  {
    v6 = 101;
  }

  v7 = [[AXStartRemoteWatchScreenIntentResponse alloc] initWithCode:v6 userActivity:0];
  v8[2](v8, v7);
}

@end