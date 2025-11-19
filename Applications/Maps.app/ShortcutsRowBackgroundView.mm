@interface ShortcutsRowBackgroundView
- (ShortcutsRowBackgroundView)initWithCollectionView:(id)a3;
- (UICollectionView)collectionView;
- (void)layoutSubviews;
@end

@implementation ShortcutsRowBackgroundView

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = ShortcutsRowBackgroundView;
  [(ShortcutsRowBackgroundView *)&v27 layoutSubviews];
  if (self->_myPlacesFeaturesEnabled)
  {
    [(ShortcutsRowBackgroundView *)self bounds];
    y = v4;
    v7 = v6;
    Height = v8;
  }

  else
  {
    v10 = [(ShortcutsRowBackgroundView *)self effectiveUserInterfaceLayoutDirection];
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    [WeakRetained contentOffset];
    v13 = v12;

    v14 = objc_loadWeakRetained(&self->_collectionView);
    [v14 contentSize];
    Width = v15;

    v17 = objc_loadWeakRetained(&self->_collectionView);
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v28.origin.x = v19;
    v28.origin.y = v21;
    v28.size.width = v23;
    v28.size.height = v25;
    if (Width <= CGRectGetWidth(v28))
    {
      v29.origin.x = v19;
      v29.origin.y = v21;
      v29.size.width = v23;
      v29.size.height = v25;
      Width = CGRectGetWidth(v29);
    }

    y = CGRectZero.origin.y;
    v7 = Width + -32.0;
    v30.origin.x = v19;
    v30.origin.y = v21;
    v30.size.width = v23;
    v30.size.height = v25;
    Height = CGRectGetHeight(v30);
    if (v10 == 1)
    {
      [(ShortcutsRowBackgroundView *)self bounds];
      MaxX = CGRectGetMaxX(v31);
      v32.origin.x = CGRectZero.origin.x;
      v32.origin.y = y;
      v32.size.width = v7;
      v32.size.height = Height;
      v3 = v13 + MaxX + -16.0 - CGRectGetWidth(v32);
    }

    else
    {
      v3 = 16.0 - v13;
    }
  }

  [(UIView *)self->_platterView setFrame:v3, y, v7, Height];
}

- (ShortcutsRowBackgroundView)initWithCollectionView:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ShortcutsRowBackgroundView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(ShortcutsRowBackgroundView *)&v16 initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_collectionView, v4);
    v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    platterView = v9->_platterView;
    v9->_platterView = v10;

    v12 = +[UIColor secondarySystemGroupedBackgroundColor];
    [(UIView *)v9->_platterView setBackgroundColor:v12];

    [(UIView *)v9->_platterView _setContinuousCornerRadius:10.0];
    v13 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v9->_myPlacesFeaturesEnabled = v13;
    if (v13)
    {
      v14 = [(UIView *)v9->_platterView layer];
      [v14 setMaskedCorners:0];
    }

    [(ShortcutsRowBackgroundView *)v9 addSubview:v9->_platterView];
  }

  return v9;
}

@end