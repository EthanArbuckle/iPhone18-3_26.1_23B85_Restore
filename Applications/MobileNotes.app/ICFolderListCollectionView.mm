@interface ICFolderListCollectionView
- (ICFolderListCollectionView)initWithPresentingViewController:(id)controller legacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext viewControllerManager:(id)manager;
- (ICTagContainerCell)tagContainerCell;
- (id)createLayout;
- (void)deselectAllTagsAnimated:(BOOL)animated;
- (void)resetLayout;
- (void)selectTagsWithTagSelection:(id)selection animated:(BOOL)animated;
- (void)setShouldShowAllowNotificationsView:(BOOL)view;
- (void)setShouldShowMoveHeader:(BOOL)header;
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

- (ICFolderListCollectionView)initWithPresentingViewController:(id)controller legacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext viewControllerManager:(id)manager
{
  v9.receiver = self;
  v9.super_class = ICFolderListCollectionView;
  v6 = [(ICCollectionView *)&v9 initWithPresentingViewController:controller legacyManagedObjectContext:context modernManagedObjectContext:objectContext viewControllerManager:manager];
  v7 = v6;
  if (v6)
  {
    v6->_hasSwipeActions = 1;
    [(ICFolderListCollectionView *)v6 setDragInteractionEnabled:1];
    [(ICFolderListCollectionView *)v7 setSpringLoaded:1];
  }

  return v7;
}

- (void)setShouldShowMoveHeader:(BOOL)header
{
  if (self->_shouldShowMoveHeader != header)
  {
    self->_shouldShowMoveHeader = header;
    [(ICFolderListCollectionView *)self resetLayout];
  }
}

- (void)setShouldShowAllowNotificationsView:(BOOL)view
{
  if (self->_shouldShowAllowNotificationsView != view)
  {
    self->_shouldShowAllowNotificationsView = view;
    [(ICFolderListCollectionView *)self resetLayout];
  }
}

- (void)resetLayout
{
  createLayout = [(ICFolderListCollectionView *)self createLayout];
  if (objc_opt_respondsToSelector())
  {
    [createLayout _setRecomputesLayoutForEmptyUpdates:0];
  }

  [(ICFolderListCollectionView *)self setCollectionViewLayout:createLayout];
}

- (void)deselectAllTagsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  tagContainerCell = [(ICFolderListCollectionView *)self tagContainerCell];
  [tagContainerCell deselectAllItemsAnimated:animatedCopy];
}

- (void)selectTagsWithTagSelection:(id)selection animated:(BOOL)animated
{
  animatedCopy = animated;
  selectionCopy = selection;
  tagContainerCell = [(ICFolderListCollectionView *)self tagContainerCell];
  [tagContainerCell selectTagsWithTagSelection:selectionCopy animated:animatedCopy];
}

- (ICTagContainerCell)tagContainerCell
{
  diffableDataSource = [(ICCollectionView *)self diffableDataSource];
  v4 = +[ICTagContainerItemIdentifier sharedItemIdentifier];
  v5 = [diffableDataSource indexPathForItemIdentifier:v4];

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