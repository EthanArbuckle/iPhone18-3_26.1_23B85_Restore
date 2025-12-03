@interface UserGuidesListContaineeViewController
- (ShareDelegate)shareDelegate;
- (_TtC4Maps37UserGuidesListContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
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
  selfCopy = self;
  sub_1002ABC40();
}

- (_TtC4Maps37UserGuidesListContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1002AC5C4(v5, v7, bundle);
}

@end