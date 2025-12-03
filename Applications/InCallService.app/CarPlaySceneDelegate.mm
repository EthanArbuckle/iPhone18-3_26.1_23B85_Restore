@interface CarPlaySceneDelegate
- (void)sceneDidDisconnect:(void *)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation CarPlaySceneDelegate

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_1000288FC(foregroundCopy);
}

- (void)sceneDidDisconnect:(void *)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1000374E8(disconnectCopy);
}

@end