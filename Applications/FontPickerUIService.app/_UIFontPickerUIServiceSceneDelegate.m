@interface _UIFontPickerUIServiceSceneDelegate
- (_TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation _UIFontPickerUIServiceSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC19FontPickerUIService35_UIFontPickerUIServiceSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10001988C(v8, v10);
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