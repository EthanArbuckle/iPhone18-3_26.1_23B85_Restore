@interface ICBrowseAttachmentsCell
- (UICollectionView)innerCollectionView;
- (id)preferredFocusEnvironments;
@end

@implementation ICBrowseAttachmentsCell

- (id)preferredFocusEnvironments
{
  v3 = [(ICBrowseAttachmentsCell *)self innerCollectionView];

  if (v3)
  {
    v4 = [(ICBrowseAttachmentsCell *)self innerCollectionView];
    v8 = v4;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICBrowseAttachmentsCell;
    v5 = [(ICBrowseAttachmentsCell *)&v7 preferredFocusEnvironments];
  }

  return v5;
}

- (UICollectionView)innerCollectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_innerCollectionView);

  return WeakRetained;
}

@end