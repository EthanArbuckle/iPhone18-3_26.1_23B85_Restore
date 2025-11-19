@interface TodayDiffablePageViewController.ResizableCollectionView
- (CGRect)frame;
- (_TtCC18ASMessagesProvider31TodayDiffablePageViewControllerP33_F897689D5BD94832546FFC7F758EEFE023ResizableCollectionView)initWithCoder:(id)a3;
- (_TtCC18ASMessagesProvider31TodayDiffablePageViewControllerP33_F897689D5BD94832546FFC7F758EEFE023ResizableCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)reloadData;
- (void)setFrame:(CGRect)a3;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_392F88(x, y, width, height);
}

- (void)reloadData
{
  v2 = self;
  sub_3939D8();
}

- (_TtCC18ASMessagesProvider31TodayDiffablePageViewControllerP33_F897689D5BD94832546FFC7F758EEFE023ResizableCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(TodayDiffablePageViewController.ResizableCollectionView *)&v10 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtCC18ASMessagesProvider31TodayDiffablePageViewControllerP33_F897689D5BD94832546FFC7F758EEFE023ResizableCollectionView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(TodayDiffablePageViewController.ResizableCollectionView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end