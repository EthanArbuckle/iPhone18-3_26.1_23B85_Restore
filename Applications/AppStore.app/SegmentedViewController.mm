@interface SegmentedViewController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (_TtC8AppStore23SegmentedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)takeSelectedIndexFrom:(id)from;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SegmentedViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002B188C();
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  sub_1002B1A5C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1002B1C8C(change);
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1002B45F0(width);
  v9 = v8;
  swift_unknownObjectRelease();

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)takeSelectedIndexFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  selectedSegmentIndex = [fromCopy selectedSegmentIndex];
  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedIndex);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedIndex) = selectedSegmentIndex;
  sub_1002B2290(v6, selectedSegmentIndex);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1002B3100();
}

- (_TtC8AppStore23SegmentedViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1002B4214(v5, v7, bundle);
}

@end