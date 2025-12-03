@interface JSArcadeObject
- (_TtC11AppStoreKit14JSArcadeObject)init;
- (id)getDownloadPackGames:(id)games;
- (id)getMarketingItemFromMarketingItems:(id)items;
- (id)getMarketingItemWithTimeout:(id)timeout :(id)a4;
- (id)getRecentlyPlayedGamesWithTimeout:(id)timeout;
@end

@implementation JSArcadeObject

- (id)getMarketingItemFromMarketingItems:(id)items
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  itemsCopy = items;
  v5 = sub_1E1AF6D4C();
  v6 = sub_1E1AF6D5C();

  return v6;
}

- (id)getMarketingItemWithTimeout:(id)timeout :(id)a4
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  timeoutCopy = timeout;
  v7 = a4;
  v8 = sub_1E1AF6D4C();
  v9 = sub_1E1AF6D5C();

  return v9;
}

- (id)getRecentlyPlayedGamesWithTimeout:(id)timeout
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  timeoutCopy = timeout;
  selfCopy = self;
  v7 = sub_1E1AF6D4C();
  v8 = sub_1E1AF6D5C();

  return v8;
}

- (id)getDownloadPackGames:(id)games
{
  gamesCopy = games;
  selfCopy = self;
  v6 = sub_1E16E0148(gamesCopy);

  return v6;
}

- (_TtC11AppStoreKit14JSArcadeObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end