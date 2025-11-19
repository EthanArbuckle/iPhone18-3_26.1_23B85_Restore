@interface MindfulnessSessionDetailViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithCoder:(id)a3;
- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (void)didTapShareButton;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MindfulnessSessionDetailViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MindfulnessSessionDetailViewController();
  v4 = v8.receiver;
  [(MindfulnessSessionDetailViewController *)&v8 viewWillAppear:v3];
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
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (void)didTapShareButton
{
  v2 = self;
  sub_10034ABD8();
}

- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_dataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_sharingImage) = 0;
  v4 = OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_trainer;
  v5 = type metadata accessor for Trainer();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10034C26C();

  return v6;
}

@end