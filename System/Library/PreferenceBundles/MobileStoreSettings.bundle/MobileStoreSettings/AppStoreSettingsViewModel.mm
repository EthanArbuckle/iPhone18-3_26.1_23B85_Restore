@interface AppStoreSettingsViewModel
- (_TtC19MobileStoreSettings25AppStoreSettingsViewModel)init;
- (void)appDataUsagePolicyChange:(id)change;
@end

@implementation AppStoreSettingsViewModel

- (_TtC19MobileStoreSettings25AppStoreSettingsViewModel)init
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_E0B4();

  return v2;
}

- (void)appDataUsagePolicyChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_177D4(changeCopy);
}

@end