@interface FileBrowsingTableViewController
- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithCoder:(id)coder;
- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FileBrowsingTableViewController

- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithCoder:(id)coder
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10005AA00(appear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10005AB54();
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
  sub_10005BB34(v9);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10005B63C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics31FileBrowsingTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end