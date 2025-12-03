@interface CHRecentAndRelevantCollectionViewCell
- (void)setCollectionView:(id)view;
@end

@implementation CHRecentAndRelevantCollectionViewCell

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  collectionView = self->_collectionView;
  if (collectionView != viewCopy)
  {
    [(UICollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, view);
    contentView = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    [contentView addSubview:self->_collectionView];

    leadingAnchor = [(UICollectionView *)self->_collectionView leadingAnchor];
    contentView2 = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    trailingAnchor = [(UICollectionView *)self->_collectionView trailingAnchor];
    contentView3 = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    topAnchor = [(UICollectionView *)self->_collectionView topAnchor];
    contentView4 = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];

    bottomAnchor = [(UICollectionView *)self->_collectionView bottomAnchor];
    contentView5 = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    v25[0] = v11;
    v25[1] = v15;
    v25[2] = v19;
    v25[3] = v23;
    v24 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v24];
  }
}

@end