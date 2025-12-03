@interface BKLibraryBookshelfCollectionView
- (BKLibraryBookshelfCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (BKLibraryBookshelfCollectionViewAccessibilityLabelProvider)bkaxLabelProvider;
- (id)accessibilityLabel;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
@end

@implementation BKLibraryBookshelfCollectionView

- (BKLibraryBookshelfCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v10.receiver = self;
  v10.super_class = BKLibraryBookshelfCollectionView;
  v4 = [(BKLibraryBookshelfCollectionView *)&v10 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    traitCollection = [(BKLibraryBookshelfCollectionView *)v4 traitCollection];
    v5->_currentUserInterfaceStyle = [traitCollection userInterfaceStyle];

    [(BKLibraryBookshelfCollectionView *)v5 setContentInsetAdjustmentBehavior:3];
    v7 = +[UITraitCollection bc_allAPITraits];
    v8 = [(BKLibraryBookshelfCollectionView *)v5 registerForTraitChanges:v7 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v5;
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(BKLibraryBookshelfCollectionView *)self traitCollection:change];
  -[BKLibraryBookshelfCollectionView setCurrentUserInterfaceStyle:](self, "setCurrentUserInterfaceStyle:", [v5 userInterfaceStyle]);
}

- (id)accessibilityLabel
{
  bkaxLabelProvider = [(BKLibraryBookshelfCollectionView *)self bkaxLabelProvider];
  bkaxLabel = [bkaxLabelProvider bkaxLabel];

  return bkaxLabel;
}

- (BKLibraryBookshelfCollectionViewAccessibilityLabelProvider)bkaxLabelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->bkaxLabelProvider);

  return WeakRetained;
}

@end