@interface UICollectionView
- (id)mt_dequeueReusableCellClass:(Class)class forIndexPath:(id)path;
- (id)mt_dequeueReusableSupplementaryViewClass:(Class)class supplementaryViewKind:(id)kind forIndexPath:(id)path;
- (id)sectionHeaderIndexPathForItemIndexPath:(id)path;
- (id)sectionHeaderViewForIndexPath:(id)path;
- (id)sectionHeaderViewForItemAtIndexPath:(id)path;
- (void)mt_registerCellClass:(Class)class;
- (void)mt_registerSupplementaryViewClass:(Class)class forSupplementaryViewOfKind:(id)kind;
@end

@implementation UICollectionView

- (id)sectionHeaderIndexPathForItemIndexPath:(id)path
{
  if (path)
  {
    v4 = +[NSIndexPath indexPathForItem:inSection:](NSIndexPath, "indexPathForItem:inSection:", 0, [path section]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sectionHeaderViewForIndexPath:(id)path
{
  if (path)
  {
    v4 = [(UICollectionView *)self supplementaryViewForElementKind:UICollectionElementKindSectionHeader atIndexPath:path];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sectionHeaderViewForItemAtIndexPath:(id)path
{
  v4 = [(UICollectionView *)self sectionHeaderIndexPathForItemIndexPath:path];
  v5 = [(UICollectionView *)self sectionHeaderViewForIndexPath:v4];

  return v5;
}

- (void)mt_registerCellClass:(Class)class
{
  v5 = NSStringFromClass(class);
  [(UICollectionView *)self registerClass:class forCellWithReuseIdentifier:v5];
}

- (void)mt_registerSupplementaryViewClass:(Class)class forSupplementaryViewOfKind:(id)kind
{
  kindCopy = kind;
  v7 = NSStringFromClass(class);
  [(UICollectionView *)self registerClass:class forSupplementaryViewOfKind:kindCopy withReuseIdentifier:v7];
}

- (id)mt_dequeueReusableCellClass:(Class)class forIndexPath:(id)path
{
  pathCopy = path;
  v7 = NSStringFromClass(class);
  v8 = [(UICollectionView *)self dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

  return v8;
}

- (id)mt_dequeueReusableSupplementaryViewClass:(Class)class supplementaryViewKind:(id)kind forIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  v10 = NSStringFromClass(class);
  v11 = [(UICollectionView *)self dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v10 forIndexPath:pathCopy];

  return v11;
}

@end