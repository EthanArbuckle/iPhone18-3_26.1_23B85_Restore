@interface DefaultsViewController
- (_TtC7Measure22DefaultsViewController)initWithCoder:(id)a3;
- (_TtC7Measure22DefaultsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Measure22DefaultsViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation DefaultsViewController

- (_TtC7Measure22DefaultsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure22DefaultsViewController_cancellables) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000EA924();
}

- (_TtC7Measure22DefaultsViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Measure22DefaultsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC7Measure22DefaultsViewController_groups);
    if (*(v4 + 16) > a4)
    {
      return *(*(v4 + 24 * a4 + 48) + 16);
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
  v12 = sub_1000EAD4C(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(self + OBJC_IVAR____TtC7Measure22DefaultsViewController_groups);
  if (*(v5 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  if (*(v5 + 24 * a4 + 40))
  {

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure22DefaultsViewController_groups);
  v10 = self;
  v11 = IndexPath.section.getter();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 >= *(v9 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = *(v9 + 24 * v11 + 48);

  v14 = IndexPath.row.getter();
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v14 >= *(v13 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v15 = v13 + 48 * v14;
  v16 = *(v15 + 64);
  v17 = *(v15 + 72);

  (*(v6 + 8))(v8, v5);

  result = 216.0;
  if (!v16)
  {
    result = 54.0;
  }

  if (!v17)
  {
    return 54.0;
  }

  return result;
}

@end