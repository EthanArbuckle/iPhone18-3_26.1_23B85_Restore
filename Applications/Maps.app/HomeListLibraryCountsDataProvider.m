@interface HomeListLibraryCountsDataProvider
- (_TtC4Maps33HomeListLibraryCountsDataProvider)init;
- (void)libraryItemsCountManager:(id)a3 didUpdateCounts:(id)a4;
- (void)notifyObserversIfNeeded;
- (void)setActive:(BOOL)a3;
@end

@implementation HomeListLibraryCountsDataProvider

- (void)setActive:(BOOL)a3
{
  v4 = self;
  sub_100228654(a3);
}

- (void)notifyObserversIfNeeded
{
  v2 = self;
  sub_1002287D8();
}

- (void)libraryItemsCountManager:(id)a3 didUpdateCounts:(id)a4
{
  v4 = self;
  sub_1002287D8();
}

- (_TtC4Maps33HomeListLibraryCountsDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end