@interface TitleValueTableViewController
- (_TtC7Journal29TitleValueTableViewController)initWithCoder:(id)coder;
- (_TtC7Journal29TitleValueTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7Journal29TitleValueTableViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)refreshData;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation TitleValueTableViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100401670();
}

- (void)refreshData
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *((swift_isaMask & self->super.super.super.super.isa) + 0x78);
  selfCopy = self;
  v6();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = selfCopy;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1003E9628(0, 0, v5, &unk_100954EC8, v11);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sub_100402640(section);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  selfCopy = self;
  sub_1004026A4(headerViewCopy);
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
  v12 = sub_100402854();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100402B2C();

  (*(v7 + 8))(v9, v6);
}

- (_TtC7Journal29TitleValueTableViewController)initWithStyle:(int64_t)style
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data) = _swiftEmptyArrayStorage;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TitleValueTableViewController();
  return [(TitleValueTableViewController *)&v5 initWithStyle:style];
}

- (_TtC7Journal29TitleValueTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data) = _swiftEmptyArrayStorage;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data) = _swiftEmptyArrayStorage;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TitleValueTableViewController();
  v9 = [(TitleValueTableViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC7Journal29TitleValueTableViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data) = _swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TitleValueTableViewController();
  coderCopy = coder;
  v5 = [(TitleValueTableViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end