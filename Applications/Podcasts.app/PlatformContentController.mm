@interface PlatformContentController
+ (NSString)ImportLibraryNotification;
+ (NSString)ImportLibraryNotificationKeyPath;
- (MTMigrationPresenter)migrationPresenter;
- (void)performMigrationIfNecessaryWithOptionKeyDown:(BOOL)down :(id)a4;
- (void)setMigrationPresenter:(id)presenter;
- (void)syncablePlayheadDidChangeForEpisodeUuid:(id)uuid isSignificant:(BOOL)significant;
@end

@implementation PlatformContentController

- (void)setMigrationPresenter:(id)presenter
{
  v5 = self + OBJC_IVAR____TtC8Podcasts25PlatformContentController_platformImpl;
  swift_beginAccess();
  v6 = *(v5 + 3);
  v7 = *(v5 + 4);
  sub_100010C38(v5, v6);
  v8 = *(v7 + 24);
  swift_unknownObjectRetain();
  selfCopy = self;
  v8(presenter, v6, v7);
  swift_endAccess();
}

- (void)performMigrationIfNecessaryWithOptionKeyDown:(BOOL)down :(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = qword_1005727E0;
  selfCopy = self;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_100046900(selfCopy, v5);
  _Block_release(v5);

  _Block_release(v5);
}

+ (NSString)ImportLibraryNotification
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)ImportLibraryNotificationKeyPath
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (MTMigrationPresenter)migrationPresenter
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC8Podcasts25PlatformContentController_platformImpl);
  swift_beginAccess();
  sub_1000044A0(v2, v2[3]);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)syncablePlayheadDidChangeForEpisodeUuid:(id)uuid isSignificant:(BOOL)significant
{
  uuidCopy = uuid;
  selfCopy = self;
  sub_100286960();
}

@end