@interface FMDevicesListDataSource
- (_TtC6FindMy23FMDevicesListDataSource)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation FMDevicesListDataSource

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC6FindMy23FMDevicesListDataSource_cellsViewModel);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 8 * section + 32) + 16);
    }
  }

  __break(1u);
  return self;
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
  v12 = sub_10031C530(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_10032993C(section);
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

- (_TtC6FindMy23FMDevicesListDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end