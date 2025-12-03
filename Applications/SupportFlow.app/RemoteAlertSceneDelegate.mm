@interface RemoteAlertSceneDelegate
- (UIWindow)window;
- (void)remoteAlertScene:(id)scene didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen;
- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)invalidation;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation RemoteAlertSceneDelegate

- (UIWindow)window
{
  v2 = sub_1000298F8();

  return v2;
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_100029984(window);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100029998(sceneCopy);
}

- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;
  selfCopy = self;
  sub_10002A7EC(invalidationCopy);
}

- (void)remoteAlertScene:(id)scene didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen
{
  sceneCopy = scene;
  selfCopy = self;
  sub_10002AA68(sceneCopy, accessory);
}

@end