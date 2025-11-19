@interface PinnedItemsViewController
- (ShareDelegate)shareDelegate;
- (_TtC4Maps25PinnedItemsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps33PinnedItemsViewControllerDelegate_)actionDelegate;
- (void)viewDidLoad;
@end

@implementation PinnedItemsViewController

- (_TtP4Maps33PinnedItemsViewControllerDelegate_)actionDelegate
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
  sub_1000DB53C();
}

- (_TtC4Maps25PinnedItemsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1000DC800(v5, v7, a4);
}

@end