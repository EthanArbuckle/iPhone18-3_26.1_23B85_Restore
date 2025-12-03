@interface _UIFontPickerUIServiceSceneDelegate
- (_TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation _UIFontPickerUIServiceSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_10001988C(sceneCopy, optionsCopy);
}

- (_TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate_window) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(_UIFontPickerUIServiceSceneDelegate *)&v5 init];
}

@end