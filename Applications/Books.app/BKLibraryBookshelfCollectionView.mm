@interface BKLibraryBookshelfCollectionView
- (BKLibraryBookshelfCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (BKLibraryBookshelfCollectionViewAccessibilityLabelProvider)bkaxLabelProvider;
- (id)accessibilityLabel;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation BKLibraryBookshelfCollectionView

- (BKLibraryBookshelfCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v10.receiver = self;
  v10.super_class = BKLibraryBookshelfCollectionView;
  v4 = [(BKLibraryBookshelfCollectionView *)&v10 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v6 = [(BKLibraryBookshelfCollectionView *)v4 traitCollection];
    v5->_currentUserInterfaceStyle = [v6 userInterfaceStyle];

    [(BKLibraryBookshelfCollectionView *)v5 setContentInsetAdjustmentBehavior:3];
    v7 = +[UITraitCollection bc_allAPITraits];
    v8 = [(BKLibraryBookshelfCollectionView *)v5 registerForTraitChanges:v7 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v5;
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(BKLibraryBookshelfCollectionView *)self traitCollection:a3];
  -[BKLibraryBookshelfCollectionView setCurrentUserInterfaceStyle:](self, "setCurrentUserInterfaceStyle:", [v5 userInterfaceStyle]);
}

- (id)accessibilityLabel
{
  v2 = [(BKLibraryBookshelfCollectionView *)self bkaxLabelProvider];
  v3 = [v2 bkaxLabel];

  return v3;
}

- (BKLibraryBookshelfCollectionViewAccessibilityLabelProvider)bkaxLabelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->bkaxLabelProvider);

  return WeakRetained;
}

@end