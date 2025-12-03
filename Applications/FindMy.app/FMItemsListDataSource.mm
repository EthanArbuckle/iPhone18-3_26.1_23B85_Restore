@interface FMItemsListDataSource
- (_TtC6FindMy21FMItemsListDataSource)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)handleSecondaryTabAction;
- (void)handleTabAction;
- (void)handleTertiaryTabAction;
@end

@implementation FMItemsListDataSource

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_10044AB00(section);
  v9 = v8;

  return v9;
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
  v12 = sub_10043D7D8(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_10044AC24(section);
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

- (void)handleTabAction
{
  selfCopy = self;
  sub_100442E1C();
}

- (void)handleSecondaryTabAction
{
  selfCopy = self;
  sub_100442FBC();
}

- (void)handleTertiaryTabAction
{
  selfCopy = self;
  sub_10044300C();
}

- (_TtC6FindMy21FMItemsListDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end