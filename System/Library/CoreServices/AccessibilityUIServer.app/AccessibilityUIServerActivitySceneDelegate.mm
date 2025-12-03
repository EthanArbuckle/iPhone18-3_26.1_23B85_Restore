@interface AccessibilityUIServerActivitySceneDelegate
- (_TtC21AccessibilityUIServer42AccessibilityUIServerActivitySceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation AccessibilityUIServerActivitySceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100007708(sceneCopy, sessionCopy);
}

- (_TtC21AccessibilityUIServer42AccessibilityUIServerActivitySceneDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC21AccessibilityUIServer42AccessibilityUIServerActivitySceneDelegate_systemApertureElementProvider;
  type metadata accessor for AXUISystemAperatureViewController();
  *(&self->super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(AccessibilityUIServerActivitySceneDelegate *)&v6 init];
}

@end