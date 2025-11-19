@interface FMPeopleListDataSource
- (_TtC6FindMy22FMPeopleListDataSource)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)addPeople;
@end

@implementation FMPeopleListDataSource

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100042790(a4);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_100042C90(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)addPeople
{
  v2 = self;
  sub_10052E9E0();
}

- (_TtC6FindMy22FMPeopleListDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end