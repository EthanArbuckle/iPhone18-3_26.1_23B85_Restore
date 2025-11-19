@interface HomeCuratedCollectionsCollectionViewCell
- (void)_updateAnimated:(BOOL)a3;
- (void)setCellModel:(id)a3;
@end

@implementation HomeCuratedCollectionsCollectionViewCell

- (void)_updateAnimated:(BOOL)a3
{
  v4 = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel curatedCollections];
  v5 = v4;
  v6 = &__NSArray0__struct;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  [(MKCollectionsCarouselView *)self->_carouselView updateCollections:v7];
  carouselView = self->_carouselView;

  [(MKCollectionsCarouselView *)carouselView displayCollections];
}

- (void)setCellModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_cellModel != v5 && ![(HomeCuratedCollectionsCollectionViewCellModel *)v5 isEqual:?])
  {
    cellModel = self->_cellModel;
    if (cellModel)
    {
      v8 = [(HomeCuratedCollectionsCollectionViewCellModel *)cellModel observers];
      [v8 unregisterObserver:self];

      [(MKCollectionsCarouselView *)self->_carouselView removeFromSuperview];
      carouselView = self->_carouselView;
      self->_carouselView = 0;
    }

    objc_storeStrong(&self->_cellModel, a3);
    v10 = self->_cellModel;
    if (v10)
    {
      v11 = [(HomeCuratedCollectionsCollectionViewCellModel *)v10 observers];
      [v11 registerObserver:self];

      v12 = [MKCollectionsCarouselView alloc];
      v13 = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel syncCoordinator];
      v14 = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel delegate];
      v15 = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel delegate];
      v16 = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel exploreGuides];
      v17 = [v12 initCollectionsCarouselViewWithContext:7 withPlaceCollections:&__NSArray0__struct usingSyncCoordinator:v13 withRoutingDelegate:v14 withScrollViewDelegate:0 withAnalyticsDelegate:v15 exploreGuides:v16];
      v18 = self->_carouselView;
      self->_carouselView = v17;

      [(MKCollectionsCarouselView *)self->_carouselView setAccessibilityIdentifier:@"HomeCuratedCollectionsCarousel"];
      v19 = [(HomeCuratedCollectionsCollectionViewCell *)self contentView];
      [v19 addSubview:self->_carouselView];

      v20 = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel exploreGuides];
      v21 = [(HomeCuratedCollectionsCollectionViewCell *)self cellModel];
      v22 = [v21 curatedCollections];
      +[MKCollectionsCarouselView horizontalLayoutHeightInContext:includeExploreGuidesHeight:isSingleCollection:](MKCollectionsCarouselView, "horizontalLayoutHeightInContext:includeExploreGuidesHeight:isSingleCollection:", 7, v20 != 0, [v22 count] == 1);

      v23 = [MUEdgeLayout alloc];
      v24 = self->_carouselView;
      v25 = [(HomeCuratedCollectionsCollectionViewCell *)self contentView];
      v26 = [v23 initWithItem:v24 container:v25];

      v27 = [MUSizeLayout alloc];
      v28 = self->_carouselView;
      +[MUSizeLayout useIntrinsicContentSize];
      v29 = [v27 initWithItem:v28 size:?];
      v31[0] = v26;
      v31[1] = v29;
      v30 = [NSArray arrayWithObjects:v31 count:2];
      [NSLayoutConstraint _mapsui_activateLayouts:v30];

      [(HomeCuratedCollectionsCollectionViewCell *)self _updateAnimated:0];
    }
  }
}

@end