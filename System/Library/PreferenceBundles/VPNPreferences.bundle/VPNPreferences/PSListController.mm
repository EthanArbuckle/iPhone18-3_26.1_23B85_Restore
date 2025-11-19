@interface PSListController
- (id)printSettingsAppPrimaryNavigationMode;
- (void)settingsNavigationProxyPopWithAnimated:(BOOL)a3;
- (void)settingsNavigationProxyPushWithViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation PSListController

- (id)printSettingsAppPrimaryNavigationMode
{
  v3 = sub_29FC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_2A124();
  sub_2A114();
  sub_2A104();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = self;
  v12 = [(PSListController *)v11 traitCollection];
  sub_2A144();

  (*(v4 + 16))(v8, v10, v3);
  sub_2A0D4();

  (*(v4 + 8))(v10, v3);
  v13 = sub_2A0B4();

  return v13;
}

- (void)settingsNavigationProxyPopWithAnimated:(BOOL)a3
{
  sub_2A124();
  sub_2A114();
  sub_2A104();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_295A4(a3);
}

- (void)settingsNavigationProxyPushWithViewController:(id)a3 animated:(BOOL)a4
{
  sub_2A124();
  sub_2A114();
  sub_2A104();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  sub_297FC(v7, a4);
}

@end