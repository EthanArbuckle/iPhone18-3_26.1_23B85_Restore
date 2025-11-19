@interface SettingsAppSceneDelegate
- (_TtC11SettingsApp24SettingsAppSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)windowScene:(UIWindowScene *)a3 performActionForShortcutItem:(UIApplicationShortcutItem *)a4 completionHandler:(id)a5;
@end

@implementation SettingsAppSceneDelegate

- (_TtC11SettingsApp24SettingsAppSceneDelegate)init
{
  v3 = OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__selectedQuickActionSubject;
  *(&self->super.isa + v3) = swift_getKeyPath();
  *(&self->super.isa + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch) = 0;
  ObservationRegistrar.init()();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SettingsAppSceneDelegate();
  return [(SettingsAppSceneDelegate *)&v5 init];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a5;
  v7 = self;
  sub_10002180C([v6 shortcutItem]);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000453C0();
}

- (void)windowScene:(UIWindowScene *)a3 performActionForShortcutItem:(UIApplicationShortcutItem *)a4 completionHandler:(id)a5
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100113D10;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100113D20;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100078598(0, 0, v12, &unk_100113D30, v17);
}

@end