@interface LibraryRecentlyAddedContaineeViewController
- (_TtC4Maps43LibraryRecentlyAddedContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps21LibraryActionDelegate_)actionDelegate;
- (void)viewDidLoad;
@end

@implementation LibraryRecentlyAddedContaineeViewController

- (_TtP4Maps21LibraryActionDelegate_)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1001FE8B4();
}

- (_TtC4Maps43LibraryRecentlyAddedContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1001FFE6C(v5, v7, a4);
}

@end