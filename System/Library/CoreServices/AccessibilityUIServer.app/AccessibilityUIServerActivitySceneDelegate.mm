@interface AccessibilityUIServerActivitySceneDelegate
- (_TtC21AccessibilityUIServer42AccessibilityUIServerActivitySceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation AccessibilityUIServerActivitySceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100007708(v8, v9);
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