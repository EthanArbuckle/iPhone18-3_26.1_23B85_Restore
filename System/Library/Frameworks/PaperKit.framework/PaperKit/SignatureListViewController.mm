@interface SignatureListViewController
- (_TtC8PaperKit27SignatureListViewController)initWithCoder:(id)coder;
- (_TtC8PaperKit27SignatureListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8PaperKit27SignatureListViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation SignatureListViewController

- (_TtC8PaperKit27SignatureListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return SignatureListViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (_TtC8PaperKit27SignatureListViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit27SignatureListViewController_rowHeight) = 0x4055800000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit27SignatureListViewController_maximumSelectRows) = 3;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit27SignatureListViewController_maximumEditRows) = 4;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit27SignatureListViewController_signatureRowHeight) = 0x4055800000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit27SignatureListViewController_showDescriptions) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit27SignatureListViewController_completion);
  *v3 = UnknownCanvasElementView.flags.modify;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  type metadata accessor for SignatureManager();
  swift_initStaticObject();
  v4 = SignatureManager.signatureItems.getter();
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  SignatureListViewController.tableView(_:cellForRowAt:)(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  specialized SignatureListViewController.tableView(_:willDisplay:forRowAt:)(cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  isEditing = [view isEditing];
  (*(v6 + 8))(v8, v5);
  return isEditing;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  specialized SignatureListViewController.tableView(_:commit:forRowAt:)(viewCopy, style, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  SignatureListViewController.tableView(_:didSelectRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC8PaperKit27SignatureListViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end