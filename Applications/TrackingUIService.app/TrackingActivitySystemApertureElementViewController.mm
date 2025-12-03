@interface TrackingActivitySystemApertureElementViewController
- (NSString)associatedScenePersistenceIdentifier;
- (_TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setAssociatedScenePersistenceIdentifier:(id)identifier;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
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

- (void)setAssociatedScenePersistenceIdentifier:(id)identifier
{
  if (identifier)
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
  selfCopy = self;
  sub_1000021B4();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100002300(coordinator);
  swift_unknownObjectRelease();
}

- (_TtC17TrackingUIService51TrackingActivitySystemApertureElementViewController)initWithNibName:(id)name bundle:(id)bundle
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
  sub_100002D80(v5, v7, bundle);
  return result;
}

@end