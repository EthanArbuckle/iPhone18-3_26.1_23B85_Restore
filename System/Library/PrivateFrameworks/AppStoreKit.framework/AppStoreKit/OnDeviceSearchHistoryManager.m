@interface OnDeviceSearchHistoryManager
- (_TtC11AppStoreKit28OnDeviceSearchHistoryManager)init;
- (id)fetchRecentsWithLimit:(int64_t)a3;
- (void)clearRecents;
- (void)removeRecentSearchTerm:(id)a3;
- (void)saveRecentSearchWithLimit:(id)a3 :(int64_t)a4;
@end

@implementation OnDeviceSearchHistoryManager

- (id)fetchRecentsWithLimit:(int64_t)a3
{
  sub_1E175AD10();
  v4 = self;
  v5 = sub_1E1AF6D4C();
  v6 = sub_1E1AF6D5C();

  return v6;
}

- (void)saveRecentSearchWithLimit:(id)a3 :(int64_t)a4
{
  sub_1E175AD10();
  v6 = a3;
  v7 = self;
  v8 = sub_1E1AF6D4C();
}

- (void)removeRecentSearchTerm:(id)a3
{
  sub_1E1AF5DFC();
  sub_1E175AD10();
  v4 = self;
  v5 = sub_1E1AF6D4C();
}

- (void)clearRecents
{
  sub_1E175AD10();
  v3 = self;
  v4 = sub_1E1AF6D4C();
}

- (_TtC11AppStoreKit28OnDeviceSearchHistoryManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end