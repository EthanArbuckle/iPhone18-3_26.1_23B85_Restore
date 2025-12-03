@interface FMMultipartEntityListDataSource
- (_TtC6FindMy31FMMultipartEntityListDataSource)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation FMMultipartEntityListDataSource

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel);
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
  v12 = sub_10044D928(viewCopy);

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