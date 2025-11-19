@interface TrackingActivitySystemApertureElementViewController
- (NSString)associatedScenePersistenceIdentifier;
- (_TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setAssociatedScenePersistenceIdentifier:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation TrackingActivitySystemApertureElementViewController

- (NSString)associatedScenePersistenceIdentifier
{
  if (*(self + OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_associatedScenePersistenceIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_associatedScenePersistenceIdentifier);
    v3 = *(self + OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_associatedScenePersistenceIdentifier + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAssociatedScenePersistenceIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_associatedScenePersistenceIdentifier);
  v7 = *(self + OBJC_IVAR____TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController_associatedScenePersistenceIdentifier + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000021B4();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100002300(a3);
  swift_unknownObjectRelease();
}

- (_TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  sub_100002D80(v5, v7, a4);
  return result;
}

@end