@interface UICollectionView
- (id)mt_dequeueReusableCellClass:(Class)a3 forIndexPath:(id)a4;
- (id)mt_dequeueReusableSupplementaryViewClass:(Class)a3 supplementaryViewKind:(id)a4 forIndexPath:(id)a5;
- (id)sectionHeaderIndexPathForItemIndexPath:(id)a3;
- (id)sectionHeaderViewForIndexPath:(id)a3;
- (id)sectionHeaderViewForItemAtIndexPath:(id)a3;
- (void)mt_registerCellClass:(Class)a3;
- (void)mt_registerSupplementaryViewClass:(Class)a3 forSupplementaryViewOfKind:(id)a4;
@end

@implementation UICollectionView

- (id)sectionHeaderIndexPathForItemIndexPath:(id)a3
{
  if (a3)
  {
    v4 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", 0, [a3 section]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sectionHeaderViewForIndexPath:(id)a3
{
  if (a3)
  {
    v4 = [(UICollectionView *)self supplementaryViewForElementKind:UICollectionElementKindSectionHeader atIndexPath:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sectionHeaderViewForItemAtIndexPath:(id)a3
{
  v4 = [(UICollectionView *)self sectionHeaderIndexPathForItemIndexPath:a3];
  v5 = [(UICollectionView *)self sectionHeaderViewForIndexPath:v4];

  return v5;
}

- (void)mt_registerCellClass:(Class)a3
{
  v5 = NSStringFromClass(a3);
  [(UICollectionView *)self registerClass:a3 forCellWithReuseIdentifier:v5];
}

- (void)mt_registerSupplementaryViewClass:(Class)a3 forSupplementaryViewOfKind:(id)a4
{
  v6 = a4;
  v7 = NSStringFromClass(a3);
  [(UICollectionView *)self registerClass:a3 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];
}

- (id)mt_dequeueReusableCellClass:(Class)a3 forIndexPath:(id)a4
{
  v6 = a4;
  v7 = NSStringFromClass(a3);
  v8 = [(UICollectionView *)self dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v6];

  return v8;
}

- (id)mt_dequeueReusableSupplementaryViewClass:(Class)a3 supplementaryViewKind:(id)a4 forIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = NSStringFromClass(a3);
  v11 = [(UICollectionView *)self dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v8];

  return v11;
}

@end