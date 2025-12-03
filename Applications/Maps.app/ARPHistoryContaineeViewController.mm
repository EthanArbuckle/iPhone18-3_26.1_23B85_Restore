@interface ARPHistoryContaineeViewController
- (_TtC4Maps33ARPHistoryContaineeViewController)initWithCoder:(id)coder;
- (_TtC4Maps33ARPHistoryContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps41ARPHistoryContaineeViewControllerDelegate_)actionDelegate;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
@end

@implementation ARPHistoryContaineeViewController

- (_TtP4Maps41ARPHistoryContaineeViewControllerDelegate_)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willBecomeCurrent:(BOOL)current
{
  currentCopy = current;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ContaineeViewController *)&v5 willBecomeCurrent:currentCopy];
  sub_100353640();
}

- (void)didResignCurrent
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ContaineeViewController *)&v3 didResignCurrent];
  sub_10035435C();
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(MapsHostingContaineeViewController *)&v7 viewDidLoad];
  cardPresentationController = [v2 cardPresentationController];
  if (cardPresentationController)
  {
    v4 = cardPresentationController;
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [v2 cardPresentationController];
    if (cardPresentationController2)
    {
      v6 = cardPresentationController2;
      [cardPresentationController2 setTakesAvailableHeight:1];

      sub_1005359A8();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC4Maps33ARPHistoryContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v8;
  }

  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC4Maps33ARPHistoryContaineeViewController_viewModel;
  type metadata accessor for ARPHistoryViewModel();
  swift_allocObject();
  bundleCopy = bundle;
  *(self + v9) = sub_100354AE8();
  if (name)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(MapsHostingContaineeViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC4Maps33ARPHistoryContaineeViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC4Maps33ARPHistoryContaineeViewController_viewModel;
  type metadata accessor for ARPHistoryViewModel();
  swift_allocObject();
  coderCopy = coder;
  *(self + v6) = sub_100354AE8();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(MapsHostingContaineeViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end