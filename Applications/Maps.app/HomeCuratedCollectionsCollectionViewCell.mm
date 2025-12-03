@interface HomeCuratedCollectionsCollectionViewCell
- (void)_updateAnimated:(BOOL)animated;
- (void)setCellModel:(id)model;
@end

@implementation HomeCuratedCollectionsCollectionViewCell

- (void)_updateAnimated:(BOOL)animated
{
  curatedCollections = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel curatedCollections];
  v5 = curatedCollections;
  v6 = &__NSArray0__struct;
  if (curatedCollections)
  {
    v6 = curatedCollections;
  }

  v7 = v6;

  [(MKCollectionsCarouselView *)self->_carouselView updateCollections:v7];
  carouselView = self->_carouselView;

  [(MKCollectionsCarouselView *)carouselView displayCollections];
}

- (void)setCellModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_cellModel != modelCopy && ![(HomeCuratedCollectionsCollectionViewCellModel *)modelCopy isEqual:?])
  {
    cellModel = self->_cellModel;
    if (cellModel)
    {
      observers = [(HomeCuratedCollectionsCollectionViewCellModel *)cellModel observers];
      [observers unregisterObserver:self];

      [(MKCollectionsCarouselView *)self->_carouselView removeFromSuperview];
      carouselView = self->_carouselView;
      self->_carouselView = 0;
    }

    objc_storeStrong(&self->_cellModel, model);
    v10 = self->_cellModel;
    if (v10)
    {
      observers2 = [(HomeCuratedCollectionsCollectionViewCellModel *)v10 observers];
      [observers2 registerObserver:self];

      v12 = [MKCollectionsCarouselView alloc];
      syncCoordinator = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel syncCoordinator];
      delegate = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel delegate];
      delegate2 = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel delegate];
      exploreGuides = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel exploreGuides];
      v17 = [v12 initCollectionsCarouselViewWithContext:7 withPlaceCollections:&__NSArray0__struct usingSyncCoordinator:syncCoordinator withRoutingDelegate:delegate withScrollViewDelegate:0 withAnalyticsDelegate:delegate2 exploreGuides:exploreGuides];
      v18 = self->_carouselView;
      self->_carouselView = v17;

      [(MKCollectionsCarouselView *)self->_carouselView setAccessibilityIdentifier:@"HomeCuratedCollectionsCarousel"];
      contentView = [(HomeCuratedCollectionsCollectionViewCell *)self contentView];
      [contentView addSubview:self->_carouselView];

      exploreGuides2 = [(HomeCuratedCollectionsCollectionViewCellModel *)self->_cellModel exploreGuides];
      cellModel = [(HomeCuratedCollectionsCollectionViewCell *)self cellModel];
      curatedCollections = [cellModel curatedCollections];
      +[MKCollectionsCarouselView horizontalLayoutHeightInContext:includeExploreGuidesHeight:isSingleCollection:](MKCollectionsCarouselView, "horizontalLayoutHeightInContext:includeExploreGuidesHeight:isSingleCollection:", 7, exploreGuides2 != 0, [curatedCollections count] == 1);

      v23 = [MUEdgeLayout alloc];
      v24 = self->_carouselView;
      contentView2 = [(HomeCuratedCollectionsCollectionViewCell *)self contentView];
      v26 = [v23 initWithItem:v24 container:contentView2];

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