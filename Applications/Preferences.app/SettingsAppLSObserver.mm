@interface SettingsAppLSObserver
- (_TtC11SettingsApp21SettingsAppLSObserver)init;
- (void)observerDidObserveDatabaseChange:(id)change;
@end

@implementation SettingsAppLSObserver

- (_TtC11SettingsApp21SettingsAppLSObserver)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC11SettingsApp21SettingsAppLSObserver_callback);
  v4 = type metadata accessor for SettingsAppLSObserver();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(SettingsAppLSObserver *)&v6 init];
}

- (void)observerDidObserveDatabaseChange:(id)change
{
  v4 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  selfCopy = self;
  static TaskPriority.userInitiated.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_100094AF4(0, 0, v7, &unk_100114378, v11);
}

@end