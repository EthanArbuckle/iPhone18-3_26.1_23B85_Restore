@interface SiriMailScene
- (UIWindow)window;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setWindow:(id)window;
@end

@implementation SiriMailScene

- (UIWindow)window
{
  _objc_retain(self);
  v4 = sub_100458854();
  _objc_release(self);

  return v4;
}

- (void)setWindow:(id)window
{
  _objc_retain(window);
  _objc_retain(self);
  sub_10045892C(window);
  _objc_release(self);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  _objc_retain(scene);
  _objc_retain(session);
  _objc_retain(options);
  _objc_retain(self);
  sub_100458B64(scene, session, options);
  _objc_release(self);
  _objc_release(options);
  _objc_release(session);
  _objc_release(scene);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  _objc_retain(disconnect);
  _objc_retain(self);
  sub_1004592B8(disconnect);
  _objc_release(self);
  _objc_release(disconnect);
}

@end