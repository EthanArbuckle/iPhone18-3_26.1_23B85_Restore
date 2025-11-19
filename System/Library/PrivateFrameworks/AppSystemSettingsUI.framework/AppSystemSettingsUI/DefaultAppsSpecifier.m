@interface DefaultAppsSpecifier
- (_TtC19AppSystemSettingsUI20DefaultAppsSpecifier)init;
- (_TtC19AppSystemSettingsUI20DefaultAppsSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9;
- (id)getLocalizedDetailText;
@end

@implementation DefaultAppsSpecifier

- (id)getLocalizedDetailText
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.action + OBJC_IVAR____TtC19AppSystemSettingsUI20DefaultAppsSpecifier_provider);
  __swift_project_boxed_opaque_existential_0Tm((&self->super.super.isa + OBJC_IVAR____TtC19AppSystemSettingsUI20DefaultAppsSpecifier_provider), *(&self->super.setter + OBJC_IVAR____TtC19AppSystemSettingsUI20DefaultAppsSpecifier_provider));
  v4 = self;
  sub_21BB22A0C();

  v5 = sub_21BB22FAC();

  return v5;
}

- (_TtC19AppSystemSettingsUI20DefaultAppsSpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9
{
  if (a4)
  {
    swift_unknownObjectRetain();
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19AppSystemSettingsUI20DefaultAppsSpecifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end