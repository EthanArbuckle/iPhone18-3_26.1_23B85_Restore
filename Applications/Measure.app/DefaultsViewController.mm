@interface DefaultsViewController
- (_TtC7Measure22DefaultsViewController)initWithCoder:(id)coder;
- (_TtC7Measure22DefaultsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Measure22DefaultsViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation DefaultsViewController

- (_TtC7Measure22DefaultsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure22DefaultsViewController_cancellables) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000EA924();
}

- (_TtC7Measure22DefaultsViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Measure22DefaultsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC7Measure22DefaultsViewController_groups);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 24 * section + 48) + 16);
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
  v12 = sub_1000EAD4C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(self + OBJC_IVAR____TtC7Measure22DefaultsViewController_groups);
  if (*(v5 + 16) <= section)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  if (*(v5 + 24 * section + 40))
  {

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure22DefaultsViewController_groups);
  selfCopy = self;
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