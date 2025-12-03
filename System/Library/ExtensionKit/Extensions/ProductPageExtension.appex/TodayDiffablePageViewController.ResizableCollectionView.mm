@interface TodayDiffablePageViewController.ResizableCollectionView
- (CGRect)frame;
- (_TtCC20ProductPageExtension31TodayDiffablePageViewControllerP33_1991EEFFD99A612C099F937082061B0423ResizableCollectionView)initWithCoder:(id)coder;
- (_TtCC20ProductPageExtension31TodayDiffablePageViewControllerP33_1991EEFFD99A612C099F937082061B0423ResizableCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)reloadData;
- (void)setFrame:(CGRect)frame;
@end

@implementation TodayDiffablePageViewController.ResizableCollectionView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(TodayDiffablePageViewController.ResizableCollectionView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_1002DA030(x, y, width, height);
}

- (void)reloadData
{
  selfCopy = self;
  sub_1002DAA80();
}

- (_TtCC20ProductPageExtension31TodayDiffablePageViewControllerP33_1991EEFFD99A612C099F937082061B0423ResizableCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(TodayDiffablePageViewController.ResizableCollectionView *)&v10 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtCC20ProductPageExtension31TodayDiffablePageViewControllerP33_1991EEFFD99A612C099F937082061B0423ResizableCollectionView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TodayDiffablePageViewController.ResizableCollectionView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end