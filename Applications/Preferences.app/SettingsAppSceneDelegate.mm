@interface SettingsAppSceneDelegate
- (_TtC11SettingsApp24SettingsAppSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)windowScene:(UIWindowScene *)scene performActionForShortcutItem:(UIApplicationShortcutItem *)item completionHandler:(id)handler;
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

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  sub_10002180C([optionsCopy shortcutItem]);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000453C0();
}

- (void)windowScene:(UIWindowScene *)scene performActionForShortcutItem:(UIApplicationShortcutItem *)item completionHandler:(id)handler
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = scene;
  v14[3] = item;
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
  sceneCopy = scene;
  itemCopy = item;
  selfCopy = self;
  sub_100078598(0, 0, v12, &unk_100113D30, v17);
}

@end