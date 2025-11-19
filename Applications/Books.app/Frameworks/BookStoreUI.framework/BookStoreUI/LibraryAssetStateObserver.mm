@interface LibraryAssetStateObserver
- (_TtC11BookStoreUI25LibraryAssetStateObserver)init;
- (void)dynamicProgressChanged:(id)a3;
- (void)libraryItemStateCenter:(id)a3 didUpdateItemState:(id)a4 forIdentifier:(id)a5;
@end

@implementation LibraryAssetStateObserver

- (void)libraryItemStateCenter:(id)a3 didUpdateItemState:(id)a4 forIdentifier:(id)a5
{
  sub_2C58C8();
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData);
  swift_unknownObjectRetain();
  v7 = self;
  os_unfair_lock_lock((v6 + 40));
  sub_135648((v6 + 16));
  os_unfair_lock_unlock((v6 + 40));

  swift_unknownObjectRelease();
}

- (void)dynamicProgressChanged:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = [a3 progress];
  [v6 doubleValue];

  v7 = *(&v5->super.isa + OBJC_IVAR____TtC11BookStoreUI25LibraryAssetStateObserver_lockProtectedData);
  os_unfair_lock_lock(v7 + 10);
  sub_135664(&v7[4]);
  os_unfair_lock_unlock(v7 + 10);
  swift_unknownObjectRelease();
}

- (_TtC11BookStoreUI25LibraryAssetStateObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end