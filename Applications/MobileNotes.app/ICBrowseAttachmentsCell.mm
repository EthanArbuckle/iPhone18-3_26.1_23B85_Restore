@interface ICBrowseAttachmentsCell
- (UICollectionView)innerCollectionView;
- (id)preferredFocusEnvironments;
@end

@implementation ICBrowseAttachmentsCell

- (id)preferredFocusEnvironments
{
  innerCollectionView = [(ICBrowseAttachmentsCell *)self innerCollectionView];

  if (innerCollectionView)
  {
    innerCollectionView2 = [(ICBrowseAttachmentsCell *)self innerCollectionView];
    v8 = innerCollectionView2;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICBrowseAttachmentsCell;
    preferredFocusEnvironments = [(ICBrowseAttachmentsCell *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (UICollectionView)innerCollectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_innerCollectionView);

  return WeakRetained;
}

@end