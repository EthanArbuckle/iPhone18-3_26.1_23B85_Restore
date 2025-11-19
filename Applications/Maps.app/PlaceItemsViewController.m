@interface PlaceItemsViewController
- (ShareDelegate)shareDelegate;
- (_TtC4Maps24PlaceItemsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps21LibraryActionDelegate_)actionDelegate;
- (_TtP4Maps24SortOptionPickerDelegate_)sortOptionPickerDelegate;
- (void)viewDidLoad;
@end

@implementation PlaceItemsViewController

- (_TtP4Maps21LibraryActionDelegate_)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ShareDelegate)shareDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP4Maps24SortOptionPickerDelegate_)sortOptionPickerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1001F1650();
}

- (_TtC4Maps24PlaceItemsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1001F420C(v5, v7, a4);
}

@end