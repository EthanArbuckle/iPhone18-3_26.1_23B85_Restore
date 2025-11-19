@interface CHRecentAndRelevantCollectionViewCell
- (void)setCollectionView:(id)a3;
@end

@implementation CHRecentAndRelevantCollectionViewCell

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  collectionView = self->_collectionView;
  if (collectionView != v5)
  {
    [(UICollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, a3);
    v7 = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    [v7 addSubview:self->_collectionView];

    v8 = [(UICollectionView *)self->_collectionView leadingAnchor];
    v9 = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    v10 = [v9 leadingAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];

    v12 = [(UICollectionView *)self->_collectionView trailingAnchor];
    v13 = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    v14 = [v13 trailingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];

    v16 = [(UICollectionView *)self->_collectionView topAnchor];
    v17 = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    v18 = [v17 topAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];

    v20 = [(UICollectionView *)self->_collectionView bottomAnchor];
    v21 = [(CHRecentAndRelevantCollectionViewCell *)self contentView];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];

    v25[0] = v11;
    v25[1] = v15;
    v25[2] = v19;
    v25[3] = v23;
    v24 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v24];
  }
}

@end