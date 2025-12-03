@interface OnDeviceSearchHistoryManager
- (_TtC11AppStoreKit28OnDeviceSearchHistoryManager)init;
- (id)fetchRecentsWithLimit:(int64_t)limit;
- (void)clearRecents;
- (void)removeRecentSearchTerm:(id)term;
- (void)saveRecentSearchWithLimit:(id)limit :(int64_t)a4;
@end

@implementation OnDeviceSearchHistoryManager

- (id)fetchRecentsWithLimit:(int64_t)limit
{
  sub_1E175AD10();
  selfCopy = self;
  v5 = sub_1E1AF6D4C();
  v6 = sub_1E1AF6D5C();

  return v6;
}

- (void)saveRecentSearchWithLimit:(id)limit :(int64_t)a4
{
  sub_1E175AD10();
  limitCopy = limit;
  selfCopy = self;
  v8 = sub_1E1AF6D4C();
}

- (void)removeRecentSearchTerm:(id)term
{
  sub_1E1AF5DFC();
  sub_1E175AD10();
  selfCopy = self;
  v5 = sub_1E1AF6D4C();
}

- (void)clearRecents
{
  sub_1E175AD10();
  selfCopy = self;
  v4 = sub_1E1AF6D4C();
}

- (_TtC11AppStoreKit28OnDeviceSearchHistoryManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end