@interface GameSaveSyncedDirectory.StateObserver
- (void)cancel;
- (void)resolveCurrentVersion;
- (void)retryIfSignedIn;
@end

@implementation GameSaveSyncedDirectory.StateObserver

- (void)resolveCurrentVersion
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v4)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory);

    GameSaveSyncedDirectory.resolveConflicts(with:)(v4);
  }
}

- (void)cancel
{

  GameSaveSyncedDirectory.StateObserver.cancel()();
}

- (void)retryIfSignedIn
{
  v3 = objc_opt_self();

  v4 = [v3 standardUserDefaults];
  v5 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  [v4 setBool:1 forKey:v5];

  v6 = *(&self->super.isa + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory);

  GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)(destructiveProjectEnumData for GameSaveFF, 0);
}

@end