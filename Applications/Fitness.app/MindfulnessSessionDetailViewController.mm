@interface MindfulnessSessionDetailViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithCoder:(id)coder;
- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)activityViewControllerLinkPresentationMetadata:(id)metadata;
- (void)didTapShareButton;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MindfulnessSessionDetailViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MindfulnessSessionDetailViewController();
  v4 = v8.receiver;
  [(MindfulnessSessionDetailViewController *)&v8 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    [v7 detachPalette];
  }
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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
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
  selfCopy = self;
  sub_10034ABD8();
}

- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithCoder:(id)coder
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

- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp38MindfulnessSessionDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityViewControllerLinkPresentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_10034C26C();

  return v6;
}

@end