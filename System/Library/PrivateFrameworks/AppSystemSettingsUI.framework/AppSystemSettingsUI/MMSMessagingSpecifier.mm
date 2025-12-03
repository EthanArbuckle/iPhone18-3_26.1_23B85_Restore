@interface MMSMessagingSpecifier
- (_TtC19AppSystemSettingsUI21MMSMessagingSpecifier)init;
- (_TtC19AppSystemSettingsUI21MMSMessagingSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
- (id)isMMSEnabledFor:(id)for;
- (void)setMMSEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation MMSMessagingSpecifier

- (id)isMMSEnabledFor:(id)for
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  forCopy = for;
  selfCopy = self;
  v7 = sub_21BB11E70(forCopy);

  return v7;
}

- (void)setMMSEnabled:(id)enabled specifier:(id)specifier
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  enabledCopy = enabled;
  specifierCopy = specifier;
  selfCopy = self;
  sub_21BB1221C(enabledCopy, specifierCopy);
}

- (_TtC19AppSystemSettingsUI21MMSMessagingSpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_21BB2319C();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC19AppSystemSettingsUI21MMSMessagingSpecifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end