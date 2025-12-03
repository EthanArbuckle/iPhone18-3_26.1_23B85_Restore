@interface AXStartRemoteWatchScreenIntentHandler
- (void)handleStartRemoteWatchScreen:(id)screen completion:(id)completion;
@end

@implementation AXStartRemoteWatchScreenIntentHandler

- (void)handleStartRemoteWatchScreen:(id)screen completion:(id)completion
{
  completionCopy = completion;
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
  completionCopy[2](completionCopy, v7);
}

@end