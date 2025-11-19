@interface SceneDelegate
- (_TtC18DKPairingUIService13SceneDelegate)init;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC18DKPairingUIService13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC18DKPairingUIService13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_10000F800();
  sub_10000F84C();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10000F250(v6);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10000F4F0(v8, v10);
}

- (_TtC18DKPairingUIService13SceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC18DKPairingUIService13SceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SceneDelegate();
  return [(SceneDelegate *)&v3 init];
}

@end