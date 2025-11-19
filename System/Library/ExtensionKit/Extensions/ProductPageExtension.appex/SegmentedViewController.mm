@interface SegmentedViewController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (_TtC20ProductPageExtension23SegmentedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)takeSelectedIndexFrom:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SegmentedViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1006EED78();
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  sub_1006EEF48();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1006EF178(a3);
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  width = a4.width;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1006F1B14(width);
  v9 = v8;
  swift_unknownObjectRelease();

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)takeSelectedIndexFrom:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [v4 selectedSegmentIndex];
  v6 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedIndex);
  *(&v7->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension23SegmentedViewController_selectedIndex) = v5;
  sub_1006EF77C(v6, v5);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1006F05EC();
}

- (_TtC20ProductPageExtension23SegmentedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1006F1700(v5, v7, a4);
}

@end