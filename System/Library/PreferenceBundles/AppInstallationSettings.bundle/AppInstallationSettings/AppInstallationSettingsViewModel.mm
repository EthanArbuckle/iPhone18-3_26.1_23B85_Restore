@interface AppInstallationSettingsViewModel
- (_TtC23AppInstallationSettings32AppInstallationSettingsViewModel)init;
- (void)lowPowerModeChanged;
@end

@implementation AppInstallationSettingsViewModel

- (_TtC23AppInstallationSettings32AppInstallationSettingsViewModel)init
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_CC5C();

  return v2;
}

- (void)lowPowerModeChanged
{
  v3 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_1EA68();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1EA48();
  selfCopy = self;
  v9 = sub_1EA38();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = selfCopy;
  sub_F71C(0, 0, v6, &unk_1FF00, v10);
}

@end