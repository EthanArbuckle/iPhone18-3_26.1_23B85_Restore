@interface TrackingActivityPlatterSceneDelegate
- (_TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation TrackingActivityPlatterSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100004768(v8);
}

- (_TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  *(&self->super.isa + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate_window) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate____lazy_storage___systemApertureElementProvider) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TrackingActivityPlatterSceneDelegate *)&v5 init];
}

@end