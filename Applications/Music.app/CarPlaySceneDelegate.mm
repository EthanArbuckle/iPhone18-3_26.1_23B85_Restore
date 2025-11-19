@interface CarPlaySceneDelegate
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setWindow:(id)a3;
@end

@implementation CarPlaySceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100298794(v8, v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_100009F78(0, &qword_101189758);
  sub_10001C070(&qword_101189760, &qword_101189758);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100298990(v6);
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC5Music20CarPlaySceneDelegate_window) = 0;
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100298A40(v4);
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100298C70(v4);
}

@end