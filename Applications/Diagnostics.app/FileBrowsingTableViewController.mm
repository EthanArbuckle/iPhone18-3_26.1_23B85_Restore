@interface FileBrowsingTableViewController
- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithCoder:(id)a3;
- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FileBrowsingTableViewController

- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_reviewBrowsingCellIdentifier);
  *v3 = 0xD00000000000001CLL;
  v3[1] = 0x800000010018B3E0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_completion);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_files) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10005AA00(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10005AB54();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10005BB34(v9);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics31FileBrowsingTableViewController_files);
  if (v4 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
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
  v12 = sub_10005B63C(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end