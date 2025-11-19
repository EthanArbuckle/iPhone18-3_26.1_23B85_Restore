@interface ChargingNetworksDataSource
- (NSSet)selectedNetworks;
- (NSString)searchString;
- (_TtC4Maps26ChargingNetworksDataSource)init;
- (_TtC4Maps26ChargingNetworksDataSource)initWithExcludedNetworks:(id)a3 context:(int64_t)a4 delegate:(id)a5;
- (id)indexPathForNetwork:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)availableNetworksDidChangeForProvider:(id)a3;
- (void)setSearchString:(id)a3;
- (void)setSelectedNetworks:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
@end

@implementation ChargingNetworksDataSource

- (NSString)searchString
{
  if (*(self + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_searchString + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setSearchString:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_searchString);
  *v6 = v4;
  v6[1] = v5;
  v7 = self;

  sub_1002992A0();
}

- (NSSet)selectedNetworks
{
  swift_beginAccess();
  sub_100014C84(0, &unk_101917480);
  sub_10029BDD8();

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setSelectedNetworks:(id)a3
{
  sub_100014C84(0, &unk_101917480);
  sub_10029BDD8();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_selectedNetworks;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC4Maps26ChargingNetworksDataSource)initWithExcludedNetworks:(id)a3 context:(int64_t)a4 delegate:(id)a5
{
  v7 = a3;
  if (a3)
  {
    sub_100014C84(0, &unk_101917480);
    sub_10029BDD8();
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_unknownObjectRetain();

  return sub_100524D10(v7, a4, a5, self);
}

- (id)indexPathForNetwork:(id)a3
{
  v5 = sub_1000CE6B8(&qword_1019174A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = a3;
  v9 = self;
  sub_100299ED8(v8, v7);

  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v7, v10);
    v13 = isa;
  }

  return v13;
}

- (_TtC4Maps26ChargingNetworksDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10029A3E4(v6, a4);
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10029A61C(v6, a4);

  return v8;
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
  v12 = sub_10029AA90(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)availableNetworksDidChangeForProvider:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10029B41C(v4);
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10029BBEC(v4);
}

@end