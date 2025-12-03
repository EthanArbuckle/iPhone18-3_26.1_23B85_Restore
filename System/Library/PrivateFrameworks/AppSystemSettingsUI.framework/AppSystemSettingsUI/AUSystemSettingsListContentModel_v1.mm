@interface AUSystemSettingsListContentModel_v1
- (_TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1)init;
- (void)systemSettingsSpecifiersProvider:(id)provider presentViewController:(id)controller animated:(BOOL)animated;
- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)specifiers;
@end

@implementation AUSystemSettingsListContentModel_v1

- (_TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1)init
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemSettingsSpecifiersProvider:(id)provider presentViewController:(id)controller animated:(BOOL)animated
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  providerCopy = provider;
  controllerCopy = controller;
  selfCopy = self;
  sub_21BB1F938(controllerCopy, animated);
}

- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)specifiers
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_21BB1ED74();
}

@end