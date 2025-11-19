@interface AudioSettingsControlCenterModule
- (_TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule)init;
- (id)contentViewControllerForContext:(id)a3;
- (void)setContentModuleContext:(id)a3;
@end

@implementation AudioSettingsControlCenterModule

- (void)setContentModuleContext:(id)a3
{
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_1A074();
}

- (id)contentViewControllerForContext:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_1A420(a3);

  return v7;
}

- (_TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule_contentModuleContext) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(AudioSettingsControlCenterModule *)&v5 init];
}

@end