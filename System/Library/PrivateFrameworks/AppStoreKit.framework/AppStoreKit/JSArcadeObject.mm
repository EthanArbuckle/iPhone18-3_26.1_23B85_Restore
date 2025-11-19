@interface JSArcadeObject
- (_TtC11AppStoreKit14JSArcadeObject)init;
- (id)getDownloadPackGames:(id)a3;
- (id)getMarketingItemFromMarketingItems:(id)a3;
- (id)getMarketingItemWithTimeout:(id)a3 :(id)a4;
- (id)getRecentlyPlayedGamesWithTimeout:(id)a3;
@end

@implementation JSArcadeObject

- (id)getMarketingItemFromMarketingItems:(id)a3
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v4 = a3;
  v5 = sub_1E1AF6D4C();
  v6 = sub_1E1AF6D5C();

  return v6;
}

- (id)getMarketingItemWithTimeout:(id)a3 :(id)a4
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v6 = a3;
  v7 = a4;
  v8 = sub_1E1AF6D4C();
  v9 = sub_1E1AF6D5C();

  return v9;
}

- (id)getRecentlyPlayedGamesWithTimeout:(id)a3
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v5 = a3;
  v6 = self;
  v7 = sub_1E1AF6D4C();
  v8 = sub_1E1AF6D5C();

  return v8;
}

- (id)getDownloadPackGames:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E16E0148(v4);

  return v6;
}

- (_TtC11AppStoreKit14JSArcadeObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end