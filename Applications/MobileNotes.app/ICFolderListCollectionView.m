@interface ICFolderListCollectionView
- (ICFolderListCollectionView)initWithPresentingViewController:(id)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5 viewControllerManager:(id)a6;
- (ICTagContainerCell)tagContainerCell;
- (id)createLayout;
- (void)deselectAllTagsAnimated:(BOOL)a3;
- (void)resetLayout;
- (void)selectTagsWithTagSelection:(id)a3 animated:(BOOL)a4;
- (void)setShouldShowAllowNotificationsView:(BOOL)a3;
- (void)setShouldShowMoveHeader:(BOOL)a3;
@end

@implementation ICFolderListCollectionView

- (id)createLayout
{
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011094C;
  v13[3] = &unk_10064A3A8;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  v3 = objc_retainBlock(v13);
  v4 = +[NSMutableArray array];
  if ([(ICFolderListCollectionView *)self shouldShowMoveHeader])
  {
    v5 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    +[ICMoveHeaderView absoluteHeight];
    v6 = [NSCollectionLayoutDimension absoluteDimension:?];
    v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v5 heightDimension:v6];
    v8 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v7 elementKind:UICollectionElementKindSectionHeader alignment:1];
    [v4 addObject:v8];
  }

  else
  {
    if (![(ICFolderListCollectionView *)self shouldShowAllowNotificationsView])
    {
      goto LABEL_6;
    }

    v5 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v6 = [NSCollectionLayoutDimension estimatedDimension:128.0];
    v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v5 heightDimension:v6];
    v8 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v7 elementKind:UICollectionElementKindSectionHeader alignment:1];
    [v4 addObject:v8];
  }

LABEL_6:
  v9 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
  v10 = [v4 copy];
  [v9 setBoundarySupplementaryItems:v10];

  v11 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v3 configuration:v9];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v11;
}

- (ICFolderListCollectionView)initWithPresentingViewController:(id)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5 viewControllerManager:(id)a6
{
  v9.receiver = self;
  v9.super_class = ICFolderListCollectionView;
  v6 = [(ICCollectionView *)&v9 initWithPresentingViewController:a3 legacyManagedObjectContext:a4 modernManagedObjectContext:a5 viewControllerManager:a6];
  v7 = v6;
  if (v6)
  {
    v6->_hasSwipeActions = 1;
    [(ICFolderListCollectionView *)v6 setDragInteractionEnabled:1];
    [(ICFolderListCollectionView *)v7 setSpringLoaded:1];
  }

  return v7;
}

- (void)setShouldShowMoveHeader:(BOOL)a3
{
  if (self->_shouldShowMoveHeader != a3)
  {
    self->_shouldShowMoveHeader = a3;
    [(ICFolderListCollectionView *)self resetLayout];
  }
}

- (void)setShouldShowAllowNotificationsView:(BOOL)a3
{
  if (self->_shouldShowAllowNotificationsView != a3)
  {
    self->_shouldShowAllowNotificationsView = a3;
    [(ICFolderListCollectionView *)self resetLayout];
  }
}

- (void)resetLayout
{
  v3 = [(ICFolderListCollectionView *)self createLayout];
  if (objc_opt_respondsToSelector())
  {
    [v3 _setRecomputesLayoutForEmptyUpdates:0];
  }

  [(ICFolderListCollectionView *)self setCollectionViewLayout:v3];
}

- (void)deselectAllTagsAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICFolderListCollectionView *)self tagContainerCell];
  [v4 deselectAllItemsAnimated:v3];
}

- (void)selectTagsWithTagSelection:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICFolderListCollectionView *)self tagContainerCell];
  [v7 selectTagsWithTagSelection:v6 animated:v4];
}

- (ICTagContainerCell)tagContainerCell
{
  v3 = [(ICCollectionView *)self diffableDataSource];
  v4 = +[ICTagContainerItemIdentifier sharedItemIdentifier];
  v5 = [v3 indexPathForItemIdentifier:v4];

  if (v5)
  {
    objc_opt_class();
    v6 = [(ICFolderListCollectionView *)self cellForItemAtIndexPath:v5];
    v7 = ICDynamicCast();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end