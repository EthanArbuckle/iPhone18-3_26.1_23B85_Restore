@interface CarPlayLibraryViewController
- (_TtC5Music28CarPlayLibraryViewController)initWithCoder:(id)a3;
- (_TtC5Music28CarPlayLibraryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5Music28CarPlayLibraryViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)viewDidLoad;
@end

@implementation CarPlayLibraryViewController

- (_TtC5Music28CarPlayLibraryViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(MCDTableViewController *)&v7 viewDidLoad];
  v3 = [v2 tableView];
  if (v3)
  {
    v4 = v3;
    [v3 _setHeaderAndFooterViewsFloat:0];

    sub_100489B30();
    v5 = [v2 tableView];
    if (v5)
    {
      v6 = v5;
      sub_10048B5C4(v5);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = self;
  v4 = sub_100489B30();

  v5 = *(*(v4 + 72) + 16);

  return v5;
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
  v12 = sub_100489D3C(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return UITableViewAutomaticDimension;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10048A398(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = self;
  v6 = sub_100489B30();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(v6 + 72);
  if (*(v8 + 16) <= a4)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v9 = *(v8 + a4 + 32);

  if (v9 >= 2)
  {
    v10 = UITableViewAutomaticDimension;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (_TtC5Music28CarPlayLibraryViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Music28CarPlayLibraryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end