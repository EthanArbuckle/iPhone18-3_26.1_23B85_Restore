@interface SignatureListViewController
- (_TtC8PaperKit27SignatureListViewController)initWithCoder:(id)a3;
- (_TtC8PaperKit27SignatureListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8PaperKit27SignatureListViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation SignatureListViewController

- (_TtC8PaperKit27SignatureListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SignatureListViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (_TtC8PaperKit27SignatureListViewController)initWithCoder:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  SignatureListViewController.tableView(_:cellForRowAt:)(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  specialized SignatureListViewController.tableView(_:willDisplay:forRowAt:)(v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = [a3 isEditing];
  (*(v6 + 8))(v8, v5);
  return v9;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  specialized SignatureListViewController.tableView(_:commit:forRowAt:)(v12, a4, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  SignatureListViewController.tableView(_:didSelectRowAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC8PaperKit27SignatureListViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end