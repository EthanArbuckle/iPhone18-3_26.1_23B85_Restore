@interface CarPlayLibraryViewController
- (_TtC5Music28CarPlayLibraryViewController)initWithCoder:(id)coder;
- (_TtC5Music28CarPlayLibraryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5Music28CarPlayLibraryViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)viewDidLoad;
@end

@implementation CarPlayLibraryViewController

- (_TtC5Music28CarPlayLibraryViewController)initWithCoder:(id)coder
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
  tableView = [v2 tableView];
  if (tableView)
  {
    v4 = tableView;
    [tableView _setHeaderAndFooterViewsFloat:0];

    sub_100489B30();
    tableView2 = [v2 tableView];
    if (tableView2)
    {
      v6 = tableView2;
      sub_10048B5C4(tableView2);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  v4 = sub_100489B30();

  v5 = *(*(v4 + 72) + 16);

  return v5;
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
  v12 = sub_100489D3C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return UITableViewAutomaticDimension;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10048A398(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  v6 = sub_100489B30();
  if (section < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(v6 + 72);
  if (*(v8 + 16) <= section)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v9 = *(v8 + section + 32);

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

- (_TtC5Music28CarPlayLibraryViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Music28CarPlayLibraryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end