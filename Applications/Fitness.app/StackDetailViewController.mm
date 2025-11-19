@interface StackDetailViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC10FitnessApp25StackDetailViewController)initWithCoder:(id)a3;
- (_TtC10FitnessApp25StackDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10FitnessApp25StackDetailViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation StackDetailViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for StackDetailViewController();
  v4 = v8.receiver;
  [(StackDetailViewController *)&v8 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    [v7 detachPalette];
  }
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  if (IndexPath.row.getter())
  {
    v8 = IndexPath.row.getter();
    (*(v5 + 8))(v7, v4);
    return v8 != 1;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }
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
  sub_10029F4F4(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC10FitnessApp25StackDetailViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp25StackDetailViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp25StackDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end