@interface AudioSettingsControlCenterModule
- (_TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule)init;
- (id)contentViewControllerForContext:(id)context;
- (void)setContentModuleContext:(id)context;
@end

@implementation AudioSettingsControlCenterModule

- (void)setContentModuleContext:(id)context
{
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule32AudioSettingsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = context;
  contextCopy = context;
  selfCopy = self;

  sub_1A074();
}

- (id)contentViewControllerForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v7 = sub_1A420(context);

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