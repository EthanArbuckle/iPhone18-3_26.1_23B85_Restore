@interface AUSystemSettingsListContentModel_v1
- (_TtC19AppSystemSettingsUI35AUSystemSettingsListContentModel_v1)init;
- (void)systemSettingsSpecifiersProvider:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5;
- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)a3;
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

- (void)systemSettingsSpecifiersProvider:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_21BB1F938(v10, a5);
}

- (void)systemSettingsSpecifiersProviderDidReloadSpecifiers:(id)a3
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  sub_21BB1ED74();
}

@end