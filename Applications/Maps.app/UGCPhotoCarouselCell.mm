@interface UGCPhotoCarouselCell
- (UGCPhotoCarouselCell)initWithFrame:(CGRect)frame;
- (UGCPhotoCarouselController)carouselController;
- (UIEdgeInsets)sectionInset;
- (double)estimatedHeight;
- (id)_horizontalCarouselLayout;
- (id)_horizontalGridLayout;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)setCarouselController:(id)controller;
- (void)setSectionInset:(UIEdgeInsets)inset;
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

- (void)setCarouselController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_carouselController);

  if (WeakRetained != controllerCopy)
  {
    v6 = objc_storeWeak(&self->_carouselController, controllerCopy);
    [controllerCopy setupCollectionView:self->_collectionView];

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

- (void)setSectionInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_sectionInset.top, v3), vceqq_f64(*&self->_sectionInset.bottom, v4))), 0xFuLL))) & 1) == 0)
  {
    self->_sectionInset = inset;
    [(UGCPhotoCarouselCell *)self _contentSizeDidChange];
  }
}

- (id)_horizontalCarouselLayout
{
  if (sub_10000FA08(self) == 5 && (MapsFeature_IsEnabled_SydneyARP() & 1) == 0)
  {
    _horizontalGridLayout = [(UGCPhotoCarouselCell *)self _horizontalGridLayout];
  }

  else
  {
    _horizontalGridLayout = objc_alloc_init(UICollectionViewFlowLayout);
    [_horizontalGridLayout setScrollDirection:1];
    [_horizontalGridLayout setMinimumInteritemSpacing:2.0];
    [_horizontalGridLayout setSectionInset:{self->_sectionInset.top, self->_sectionInset.left, self->_sectionInset.bottom, self->_sectionInset.right}];
    v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
    [v4 _mapkit_scaledValueForValue:90.0];
    v6 = v5;

    [_horizontalGridLayout setItemSize:{v6, v6}];
  }

  return _horizontalGridLayout;
}

- (id)_horizontalGridLayout
{
  v2 = [NSCollectionLayoutDimension fractionalWidthDimension:0.166666672];
  v3 = [NSCollectionLayoutDimension absoluteDimension:49.0];
  v4 = [NSCollectionLayoutSize sizeWithWidthDimension:v2 heightDimension:v3];

  v5 = [NSCollectionLayoutItem itemWithLayoutSize:v4];
  v6 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  heightDimension = [v4 heightDimension];
  v8 = [NSCollectionLayoutSize sizeWithWidthDimension:v6 heightDimension:heightDimension];

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
    photoSliderShouldEnablePagingScroll = [WeakRetained photoSliderShouldEnablePagingScroll];

    if (photoSliderShouldEnablePagingScroll)
    {
      [NSLayoutConstraint deactivateConstraints:self->_constraints];
      v5 = [[MUPagingScrollContainerView alloc] initWithHorizontalScrollView:self->_collectionView];
      pagingScrollView = self->_pagingScrollView;
      self->_pagingScrollView = v5;

      [(MUPagingScrollContainerView *)self->_pagingScrollView setAutomaticallyFlipsForRTL:1];
      v7 = self->_pagingScrollView;
      [(MUPagingScrollContainerView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UGCPhotoCarouselCell *)self addSubview:v7];
      leadingAnchor = [(MUPagingScrollContainerView *)v7 leadingAnchor];
      leadingAnchor2 = [(UGCPhotoCarouselCell *)self leadingAnchor];
      v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v23[0] = v20;
      topAnchor = [(MUPagingScrollContainerView *)v7 topAnchor];
      topAnchor2 = [(UGCPhotoCarouselCell *)self topAnchor];
      v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v23[1] = v8;
      trailingAnchor = [(MUPagingScrollContainerView *)v7 trailingAnchor];
      trailingAnchor2 = [(UGCPhotoCarouselCell *)self trailingAnchor];
      v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v23[2] = v11;
      bottomAnchor = [(MUPagingScrollContainerView *)v7 bottomAnchor];
      bottomAnchor2 = [(UGCPhotoCarouselCell *)self bottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  selfCopy = self;
  [(UGCPhotoCarouselCell *)selfCopy estimatedHeight];
  if (!selfCopy->_heightConstraint)
  {
    v5 = v4;
    heightAnchor = [(UICollectionView *)selfCopy->_collectionView heightAnchor];
    v7 = [heightAnchor constraintEqualToConstant:v5];
    heightConstraint = selfCopy->_heightConstraint;
    selfCopy->_heightConstraint = v7;
  }

  topAnchor = [(UICollectionView *)selfCopy->_collectionView topAnchor];
  topAnchor2 = [(UGCPhotoCarouselCell *)selfCopy topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[0] = v20;
  leadingAnchor = [(UICollectionView *)selfCopy->_collectionView leadingAnchor];
  leadingAnchor2 = [(UGCPhotoCarouselCell *)selfCopy leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[1] = v9;
  trailingAnchor = [(UICollectionView *)selfCopy->_collectionView trailingAnchor];
  trailingAnchor2 = [(UGCPhotoCarouselCell *)selfCopy trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[2] = v12;
  bottomAnchor = [(UICollectionView *)selfCopy->_collectionView bottomAnchor];
  bottomAnchor2 = [(UGCPhotoCarouselCell *)selfCopy bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[3] = v15;
  v23[4] = selfCopy->_heightConstraint;
  v16 = [NSArray arrayWithObjects:v23 count:5];
  constraints = self->_constraints;
  self->_constraints = v16;

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)_setupSubviews
{
  v3 = [UICollectionView alloc];
  _horizontalCarouselLayout = [(UGCPhotoCarouselCell *)self _horizontalCarouselLayout];
  v5 = [v3 initWithFrame:_horizontalCarouselLayout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
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
  collectionViewBackgroundColor = [WeakRetained collectionViewBackgroundColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:collectionViewBackgroundColor];

  [(UICollectionView *)self->_collectionView _setCornerRadius:0.0];
  v11 = self->_collectionView;

  [(UGCPhotoCarouselCell *)self addSubview:v11];
}

- (void)_contentSizeDidChange
{
  if (!MapsFeature_IsEnabled_SydneyARP() || (WeakRetained = objc_loadWeakRetained(&self->_carouselController), v4 = [WeakRetained photoSliderShouldEnablePagingScroll], WeakRetained, (v4 & 1) == 0))
  {
    _horizontalCarouselLayout = [(UGCPhotoCarouselCell *)self _horizontalCarouselLayout];
    [(UICollectionView *)self->_collectionView setCollectionViewLayout:_horizontalCarouselLayout];
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
    totalNumberOfItems = [WeakRetained totalNumberOfItems];

    v7 = ((__PAIR128__(totalNumberOfItems, __ROR8__(0xAAAAAAAAAAAAAAABLL * totalNumberOfItems, 1)) - 0x2AAAAAAAAAAAAAABLL) >> 64) / 6;
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

- (UGCPhotoCarouselCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UGCPhotoCarouselCell;
  v3 = [(UGCPhotoCarouselCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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