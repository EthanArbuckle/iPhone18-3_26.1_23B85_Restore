@interface VideoEffectsControlCenterModule
- (_TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule)init;
- (id)contentViewControllerForContext:(id)context;
- (void)setContentModuleContext:(id)context;
@end

@implementation VideoEffectsControlCenterModule

- (void)setContentModuleContext:(id)context
{
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = context;
  contextCopy = context;
  selfCopy = self;

  sub_64CC();
}

- (id)contentViewControllerForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v7 = sub_6878(context);

  return v7;
}

- (_TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule_contentModuleContext) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(VideoEffectsControlCenterModule *)&v5 init];
}

@end