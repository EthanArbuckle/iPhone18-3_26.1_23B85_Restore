@interface UserGuidesListContaineeViewController
- (ShareDelegate)shareDelegate;
- (_TtC4Maps37UserGuidesListContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps45UserGuidesListContaineeViewControllerDelegate_)actionDelegate;
- (void)viewDidLoad;
@end

@implementation UserGuidesListContaineeViewController

- (_TtP4Maps45UserGuidesListContaineeViewControllerDelegate_)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ShareDelegate)shareDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1002ABC40();
}

- (_TtC4Maps37UserGuidesListContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1002AC5C4(v5, v7, a4);
}

@end