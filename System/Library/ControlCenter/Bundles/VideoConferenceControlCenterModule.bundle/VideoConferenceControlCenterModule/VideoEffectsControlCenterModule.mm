@interface VideoEffectsControlCenterModule
- (_TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule)init;
- (id)contentViewControllerForContext:(id)a3;
- (void)setContentModuleContext:(id)a3;
@end

@implementation VideoEffectsControlCenterModule

- (void)setContentModuleContext:(id)a3
{
  v5 = OBJC_IVAR____TtC34VideoConferenceControlCenterModule31VideoEffectsControlCenterModule_contentModuleContext;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_64CC();
}

- (id)contentViewControllerForContext:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_6878(a3);

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