@interface FMMultipartEntityListDataSource
- (_TtC6FindMy31FMMultipartEntityListDataSource)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
@end

@implementation FMMultipartEntityListDataSource

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel);
    if (*(v4 + 16) > a4)
    {
      return *(*(v4 + 8 * a4 + 32) + 16);
    }
  }

  __break(1u);
  return self;
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
  v12 = sub_10044D928(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC6FindMy31FMMultipartEntityListDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end