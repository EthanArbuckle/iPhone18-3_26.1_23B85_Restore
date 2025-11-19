@interface LibraryHomeCollectionViewManager
- (UICollectionViewDataSource)dataSource;
- (UICollectionViewLayout)collectionViewLayout;
- (_TtC4Maps32LibraryHomeCollectionViewManager)init;
- (void)dealloc;
- (void)libraryItemsCountManager:(id)a3 didUpdateCounts:(id)a4;
@end

@implementation LibraryHomeCollectionViewManager

- (UICollectionViewDataSource)dataSource
{
  v2 = self;
  v3 = sub_1004B2EE0();

  return v3;
}

- (UICollectionViewLayout)collectionViewLayout
{
  v2 = self;
  v3 = sub_1004B2F88();

  return v3;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(*(&self->super.isa + OBJC_IVAR____TtC4Maps32LibraryHomeCollectionViewManager_libraryCountsManager) + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observers);
  v5 = self;
  [v4 unregisterObserver:v5];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(LibraryHomeCollectionViewManager *)&v6 dealloc];
}

- (_TtC4Maps32LibraryHomeCollectionViewManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)libraryItemsCountManager:(id)a3 didUpdateCounts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1004B6E64(v7);
}

@end