@interface ChargingNetworksDataSource
- (NSSet)selectedNetworks;
- (NSString)searchString;
- (_TtC4Maps26ChargingNetworksDataSource)init;
- (_TtC4Maps26ChargingNetworksDataSource)initWithExcludedNetworks:(id)networks context:(int64_t)context delegate:(id)delegate;
- (id)indexPathForNetwork:(id)network;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)availableNetworksDidChangeForProvider:(id)provider;
- (void)setSearchString:(id)string;
- (void)setSelectedNetworks:(id)networks;
- (void)updateSearchResultsForSearchController:(id)controller;
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

- (void)setSearchString:(id)string
{
  if (string)
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
  selfCopy = self;

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

- (void)setSelectedNetworks:(id)networks
{
  sub_100014C84(0, &unk_101917480);
  sub_10029BDD8();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps26ChargingNetworksDataSource_selectedNetworks;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (_TtC4Maps26ChargingNetworksDataSource)initWithExcludedNetworks:(id)networks context:(int64_t)context delegate:(id)delegate
{
  networksCopy = networks;
  if (networks)
  {
    sub_100014C84(0, &unk_101917480);
    sub_10029BDD8();
    networksCopy = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_unknownObjectRetain();

  return sub_100524D10(networksCopy, context, delegate, self);
}

- (id)indexPathForNetwork:(id)network
{
  v5 = sub_1000CE6B8(&qword_1019174A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  networkCopy = network;
  selfCopy = self;
  sub_100299ED8(networkCopy, v7);

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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_10029A3E4(viewCopy, section);
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10029A61C(viewCopy, section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10029AA90(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)availableNetworksDidChangeForProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  sub_10029B41C(providerCopy);
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10029BBEC(controllerCopy);
}

@end