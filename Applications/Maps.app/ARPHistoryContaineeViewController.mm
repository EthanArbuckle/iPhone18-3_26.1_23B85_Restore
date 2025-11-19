@interface ARPHistoryContaineeViewController
- (_TtC4Maps33ARPHistoryContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps33ARPHistoryContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps41ARPHistoryContaineeViewControllerDelegate_)actionDelegate;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
@end

@implementation ARPHistoryContaineeViewController

- (_TtP4Maps41ARPHistoryContaineeViewControllerDelegate_)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ContaineeViewController *)&v5 willBecomeCurrent:v3];
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
  v3 = [v2 cardPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setPresentedModally:1];

    v5 = [v2 cardPresentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setTakesAvailableHeight:1];

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

- (_TtC4Maps33ARPHistoryContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v8;
  }

  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC4Maps33ARPHistoryContaineeViewController_viewModel;
  type metadata accessor for ARPHistoryViewModel();
  swift_allocObject();
  v10 = a4;
  *(self + v9) = sub_100354AE8();
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(MapsHostingContaineeViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC4Maps33ARPHistoryContaineeViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC4Maps33ARPHistoryContaineeViewController_viewModel;
  type metadata accessor for ARPHistoryViewModel();
  swift_allocObject();
  v7 = a3;
  *(self + v6) = sub_100354AE8();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(MapsHostingContaineeViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end