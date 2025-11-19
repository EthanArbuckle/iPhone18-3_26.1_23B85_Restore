@interface UGCPhotoCarouselCell
- (UGCPhotoCarouselCell)initWithFrame:(CGRect)a3;
- (UGCPhotoCarouselController)carouselController;
- (UIEdgeInsets)sectionInset;
- (double)estimatedHeight;
- (id)_horizontalCarouselLayout;
- (id)_horizontalGridLayout;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)setCarouselController:(id)a3;
- (void)setSectionInset:(UIEdgeInsets)a3;
@end

@implementation UGCPhotoCarouselCell

- (UIEdgeInsets)sectionInset
{
  top = self->_sectionInset.top;
  left = self->_sectionInset.left;
  bottom = self->_sectionInset.bottom;
  right = self->_sectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UGCPhotoCarouselController)carouselController
{
  WeakRetained = objc_loadWeakRetained(&self->_carouselController);

  return WeakRetained;
}

- (void)setCarouselController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_carouselController);

  if (WeakRetained != v4)
  {
    v6 = objc_storeWeak(&self->_carouselController, v4);
    [v4 setupCollectionView:self->_collectionView];

    [(UGCPhotoCarouselCell *)self estimatedHeight];
    [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];
    if (sub_10000FA08(self) == 5)
    {
      objc_initWeak(&location, self);
      v7 = objc_loadWeakRetained(&self->_carouselController);
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_100C9140C;
      v11 = &unk_101661B98;
      objc_copyWeak(&v12, &location);
      [v7 setChangeHandler:&v8];

      [(UGCPhotoCarouselCell *)self _contentSizeDidChange:v8];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)setSectionInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_sectionInset.top, v3), vceqq_f64(*&self->_sectionInset.bottom, v4))), 0xFuLL))) & 1) == 0)
  {
    self->_sectionInset = a3;
    [(UGCPhotoCarouselCell *)self _contentSizeDidChange];
  }
}

- (id)_horizontalCarouselLayout
{
  if (sub_10000FA08(self) == 5 && (MapsFeature_IsEnabled_SydneyARP() & 1) == 0)
  {
    v3 = [(UGCPhotoCarouselCell *)self _horizontalGridLayout];
  }

  else
  {
    v3 = objc_alloc_init(UICollectionViewFlowLayout);
    [v3 setScrollDirection:1];
    [v3 setMinimumInteritemSpacing:2.0];
    [v3 setSectionInset:{self->_sectionInset.top, self->_sectionInset.left, self->_sectionInset.bottom, self->_sectionInset.right}];
    v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    [v4 _mapkit_scaledValueForValue:90.0];
    v6 = v5;

    [v3 setItemSize:{v6, v6}];
  }

  return v3;
}

- (id)_horizontalGridLayout
{
  v2 = [NSCollectionLayoutDimension fractionalWidthDimension:0.166666672];
  v3 = [NSCollectionLayoutDimension absoluteDimension:49.0];
  v4 = [NSCollectionLayoutSize sizeWithWidthDimension:v2 heightDimension:v3];

  v5 = [NSCollectionLayoutItem itemWithLayoutSize:v4];
  v6 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v7 = [v4 heightDimension];
  v8 = [NSCollectionLayoutSize sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v8 repeatingSubitem:v5 count:6];
  v10 = [NSCollectionLayoutSpacing fixedSpacing:1.0];
  [v9 setInterItemSpacing:v10];

  v11 = [NSCollectionLayoutSection sectionWithGroup:v9];
  [v11 setInterGroupSpacing:1.0];
  v12 = [[UICollectionViewCompositionalLayout alloc] initWithSection:v11];

  return v12;
}

- (void)_updateConstraints
{
  if (sub_10000FA08(self) == 5 && MapsFeature_IsEnabled_SydneyARP())
  {
    WeakRetained = objc_loadWeakRetained(&self->_carouselController);
    v4 = [WeakRetained photoSliderShouldEnablePagingScroll];

    if (v4)
    {
      [NSLayoutConstraint deactivateConstraints:self->_constraints];
      v5 = [[MUPagingScrollContainerView alloc] initWithHorizontalScrollView:self->_collectionView];
      pagingScrollView = self->_pagingScrollView;
      self->_pagingScrollView = v5;

      [(MUPagingScrollContainerView *)self->_pagingScrollView setAutomaticallyFlipsForRTL:1];
      v7 = self->_pagingScrollView;
      [(MUPagingScrollContainerView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UGCPhotoCarouselCell *)self addSubview:v7];
      v22 = [(MUPagingScrollContainerView *)v7 leadingAnchor];
      v21 = [(UGCPhotoCarouselCell *)self leadingAnchor];
      v20 = [v22 constraintEqualToAnchor:v21];
      v23[0] = v20;
      v19 = [(MUPagingScrollContainerView *)v7 topAnchor];
      v18 = [(UGCPhotoCarouselCell *)self topAnchor];
      v8 = [v19 constraintEqualToAnchor:v18];
      v23[1] = v8;
      v9 = [(MUPagingScrollContainerView *)v7 trailingAnchor];
      v10 = [(UGCPhotoCarouselCell *)self trailingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v23[2] = v11;
      v12 = [(MUPagingScrollContainerView *)v7 bottomAnchor];
      v13 = [(UGCPhotoCarouselCell *)self bottomAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      heightConstraint = self->_heightConstraint;
      v23[3] = v14;
      v23[4] = heightConstraint;
      v16 = [NSArray arrayWithObjects:v23 count:5];
      constraints = self->_constraints;
      self->_constraints = v16;

      [NSLayoutConstraint activateConstraints:self->_constraints];
    }
  }
}

- (void)_setupConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  v3 = self;
  [(UGCPhotoCarouselCell *)v3 estimatedHeight];
  if (!v3->_heightConstraint)
  {
    v5 = v4;
    v6 = [(UICollectionView *)v3->_collectionView heightAnchor];
    v7 = [v6 constraintEqualToConstant:v5];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v7;
  }

  v22 = [(UICollectionView *)v3->_collectionView topAnchor];
  v21 = [(UGCPhotoCarouselCell *)v3 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v23[0] = v20;
  v19 = [(UICollectionView *)v3->_collectionView leadingAnchor];
  v18 = [(UGCPhotoCarouselCell *)v3 leadingAnchor];
  v9 = [v19 constraintEqualToAnchor:v18];
  v23[1] = v9;
  v10 = [(UICollectionView *)v3->_collectionView trailingAnchor];
  v11 = [(UGCPhotoCarouselCell *)v3 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v23[2] = v12;
  v13 = [(UICollectionView *)v3->_collectionView bottomAnchor];
  v14 = [(UGCPhotoCarouselCell *)v3 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v23[3] = v15;
  v23[4] = v3->_heightConstraint;
  v16 = [NSArray arrayWithObjects:v23 count:5];
  constraints = self->_constraints;
  self->_constraints = v16;

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)_setupSubviews
{
  v3 = [UICollectionView alloc];
  v4 = [(UGCPhotoCarouselCell *)self _horizontalCarouselLayout];
  v5 = [v3 initWithFrame:v4 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  collectionView = self->_collectionView;
  self->_collectionView = v5;

  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = sub_10000FA08(self);
  v8 = self->_collectionView;
  if (v7 == 5)
  {
    [(UICollectionView *)v8 setScrollEnabled:0];
  }

  else
  {
    [(UICollectionView *)v8 setAlwaysBounceVertical:0];
    [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_carouselController);
  v10 = [WeakRetained collectionViewBackgroundColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v10];

  [(UICollectionView *)self->_collectionView _setCornerRadius:0.0];
  v11 = self->_collectionView;

  [(UGCPhotoCarouselCell *)self addSubview:v11];
}

- (void)_contentSizeDidChange
{
  if (!MapsFeature_IsEnabled_SydneyARP() || (WeakRetained = objc_loadWeakRetained(&self->_carouselController), v4 = [WeakRetained photoSliderShouldEnablePagingScroll], WeakRetained, (v4 & 1) == 0))
  {
    v5 = [(UGCPhotoCarouselCell *)self _horizontalCarouselLayout];
    [(UICollectionView *)self->_collectionView setCollectionViewLayout:v5];
  }

  [(UGCPhotoCarouselCell *)self estimatedHeight];
  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:?];
}

- (double)estimatedHeight
{
  v3 = sub_10000FA08(self);
  WeakRetained = objc_loadWeakRetained(&self->_carouselController);
  v5 = WeakRetained;
  if (v3 == 5)
  {
    v6 = [WeakRetained totalNumberOfItems];

    v7 = ((__PAIR128__(v6, __ROR8__(0xAAAAAAAAAAAAAAABLL * v6, 1)) - 0x2AAAAAAAAAAAAAABLL) >> 64) / 6;
    v8 = objc_loadWeakRetained(&self->_carouselController);
    [v8 preferredCellHeight];
    v10 = v7 + v7 + v9 * (v7 + 1);
  }

  else
  {
    [WeakRetained preferredCellHeight];
    v12 = self->_sectionInset.top + v11 + self->_sectionInset.bottom;

    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    [v8 _mapkit_scaledValueForValue:v12];
    v10 = v13;
  }

  return v10;
}

- (UGCPhotoCarouselCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UGCPhotoCarouselCell;
  v3 = [(UGCPhotoCarouselCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    *&v3->_sectionInset.top = 0u;
    *&v3->_sectionInset.bottom = 0u;
    [(UGCPhotoCarouselCell *)v3 _setupSubviews];
    [(UGCPhotoCarouselCell *)v4 _setupConstraints];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

@end