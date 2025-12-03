@interface PinnedItemsViewController
- (ShareDelegate)shareDelegate;
- (_TtC4Maps25PinnedItemsViewController)initWithNibName:(id)name bundle:(id)bundle;
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
  selfCopy = self;
  sub_1000DB53C();
}

- (_TtC4Maps25PinnedItemsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1000DC800(v5, v7, bundle);
}

@end