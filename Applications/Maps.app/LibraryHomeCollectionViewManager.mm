@interface LibraryHomeCollectionViewManager
- (UICollectionViewDataSource)dataSource;
- (UICollectionViewLayout)collectionViewLayout;
- (_TtC4Maps32LibraryHomeCollectionViewManager)init;
- (void)dealloc;
- (void)libraryItemsCountManager:(id)manager didUpdateCounts:(id)counts;
@end

@implementation LibraryHomeCollectionViewManager

- (UICollectionViewDataSource)dataSource
{
  selfCopy = self;
  v3 = sub_1004B2EE0();

  return v3;
}

- (UICollectionViewLayout)collectionViewLayout
{
  selfCopy = self;
  v3 = sub_1004B2F88();

  return v3;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(*(&self->super.isa + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_libraryCountsManager) + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observers);
  selfCopy = self;
  [v4 unregisterObserver:selfCopy];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(LibraryHomeCollectionViewManager *)&v6 dealloc];
}

- (_TtC4Maps32LibraryHomeCollectionViewManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)libraryItemsCountManager:(id)manager didUpdateCounts:(id)counts
{
  managerCopy = manager;
  countsCopy = counts;
  selfCopy = self;
  sub_1004B6E64(countsCopy);
}

@end