@interface SiriMailScene
- (UIWindow)window;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation SiriMailScene

- (UIWindow)window
{
  _objc_retain(self);
  v4 = sub_100458854();
  _objc_release(self);

  return v4;
}

- (void)setWindow:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_10045892C(a3);
  _objc_release(self);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  _objc_retain(self);
  sub_100458B64(a3, a4, a5);
  _objc_release(self);
  _objc_release(a5);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)sceneDidDisconnect:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1004592B8(a3);
  _objc_release(self);
  _objc_release(a3);
}

@end