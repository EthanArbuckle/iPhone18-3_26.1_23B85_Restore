@interface HomeListLibraryCountsDataProvider
- (_TtC4Maps33HomeListLibraryCountsDataProvider)init;
- (void)libraryItemsCountManager:(id)manager didUpdateCounts:(id)counts;
- (void)notifyObserversIfNeeded;
- (void)setActive:(BOOL)active;
@end

@implementation HomeListLibraryCountsDataProvider

- (void)setActive:(BOOL)active
{
  selfCopy = self;
  sub_100228654(active);
}

- (void)notifyObserversIfNeeded
{
  selfCopy = self;
  sub_1002287D8();
}

- (void)libraryItemsCountManager:(id)manager didUpdateCounts:(id)counts
{
  selfCopy = self;
  sub_1002287D8();
}

- (_TtC4Maps33HomeListLibraryCountsDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end