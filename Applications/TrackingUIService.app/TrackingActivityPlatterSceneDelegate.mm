@interface TrackingActivityPlatterSceneDelegate
- (_TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation TrackingActivityPlatterSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC17TrackingUIService36TrackingActivityPlatterSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100004768(sceneCopy);
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