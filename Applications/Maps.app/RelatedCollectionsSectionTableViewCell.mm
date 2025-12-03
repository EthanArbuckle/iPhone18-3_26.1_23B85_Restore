@interface RelatedCollectionsSectionTableViewCell
+ (double)cellHeightWithCollectionsCount:(unint64_t)count;
- (RelatedCollectionsSectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (RelatedSectionTableViewCellDelegate)delegate;
- (void)collectionsCarouselDidRouteToCollectionId:(id)id atIndex:(int64_t)index isSaved:(BOOL)saved;
- (void)collectionsCarouselDidScrollBackward;
- (void)collectionsCarouselDidScrollForward;
- (void)initializeCarouselUsingPlaceCollection:(id)collection carouselRoutingDelegate:(id)delegate;
- (void)prepareForReuse;
- (void)routeToCuratedCollection:(id)collection;
- (void)setPlaceCollections:(id)collections delegate:(id)delegate;
@end

@implementation RelatedCollectionsSectionTableViewCell

- (RelatedSectionTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionsCarouselDidScrollBackward
{
  delegate = [(RelatedCollectionsSectionTableViewCell *)self delegate];
  [delegate relatedSectionTableViewCellDidScrollBackward];
}

- (void)collectionsCarouselDidScrollForward
{
  delegate = [(RelatedCollectionsSectionTableViewCell *)self delegate];
  [delegate relatedSectionTableViewCellDidScrollForward];
}

- (void)collectionsCarouselDidRouteToCollectionId:(id)id atIndex:(int64_t)index isSaved:(BOOL)saved
{
  savedCopy = saved;
  idCopy = id;
  delegate = [(RelatedCollectionsSectionTableViewCell *)self delegate];
  [delegate relatedSectionTappedOnCollectionId:idCopy atIndex:index isSaved:savedCopy];
}

- (void)routeToCuratedCollection:(id)collection
{
  collectionCopy = collection;
  delegate = [(RelatedCollectionsSectionTableViewCell *)self delegate];
  [delegate relatedSectionRouteToCuratedCollection:collectionCopy];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = RelatedCollectionsSectionTableViewCell;
  [(RelatedSectionTableViewCell *)&v3 prepareForReuse];
  [(RelatedCollectionsSectionTableViewCell *)self setPlaceCollections:0];
  [(RelatedCollectionsSectionTableViewCell *)self setDelegate:0];
}

- (void)initializeCarouselUsingPlaceCollection:(id)collection carouselRoutingDelegate:(id)delegate
{
  delegateCopy = delegate;
  collectionCopy = collection;
  v8 = [MKCollectionsCarouselView alloc];
  placeCollections = self->_placeCollections;
  v10 = +[CuratedCollectionSyncManager sharedManager];
  v11 = [v8 initCollectionsCarouselViewWithContext:4 withPlaceCollections:placeCollections usingSyncCoordinator:v10 withRoutingDelegate:delegateCopy withScrollViewDelegate:self withAnalyticsDelegate:self exploreGuides:0];

  [(RelatedCollectionsSectionTableViewCell *)self setCarouselView:v11];
  carouselView = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
  [carouselView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(RelatedCollectionsSectionTableViewCell *)self contentView];
  carouselView2 = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
  [contentView addSubview:carouselView2];

  carouselView3 = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
  leadingAnchor = [carouselView3 leadingAnchor];
  contentView2 = [(RelatedCollectionsSectionTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v35;
  carouselView4 = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
  trailingAnchor = [carouselView4 trailingAnchor];
  contentView3 = [(RelatedCollectionsSectionTableViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[1] = v30;
  carouselView5 = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
  topAnchor = [carouselView5 topAnchor];
  sectionNameLabel = [(RelatedSectionTableViewCell *)self sectionNameLabel];
  bottomAnchor = [sectionNameLabel bottomAnchor];
  v25 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v40[2] = v25;
  carouselView6 = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
  bottomAnchor2 = [carouselView6 bottomAnchor];
  contentView4 = [(RelatedCollectionsSectionTableViewCell *)self contentView];
  bottomAnchor3 = [contentView4 bottomAnchor];
  v19 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v40[3] = v19;
  carouselView7 = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
  heightAnchor = [carouselView7 heightAnchor];
  v22 = [collectionCopy count];

  [MKCollectionsCarouselView horizontalLayoutHeightInContext:4 includeExploreGuidesHeight:0 isSingleCollection:v22 == 1];
  v23 = [heightAnchor constraintEqualToConstant:?];
  v40[4] = v23;
  v24 = [NSArray arrayWithObjects:v40 count:5];
  [NSLayoutConstraint activateConstraints:v24];
}

- (void)setPlaceCollections:(id)collections delegate:(id)delegate
{
  collectionsCopy = collections;
  objc_storeWeak(&self->_delegate, delegate);
  count = self->_count;
  v7 = [collectionsCopy count];
  v8 = [collectionsCopy copy];
  placeCollections = self->_placeCollections;
  self->_placeCollections = v8;

  self->_count = [(NSArray *)self->_placeCollections count];
  carouselView = [(RelatedCollectionsSectionTableViewCell *)self carouselView];

  if (count == v7)
  {
    if (carouselView)
    {
      carouselView2 = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
      [carouselView2 updateCollections:self->_placeCollections];

      goto LABEL_7;
    }
  }

  else if (carouselView)
  {
    carouselView3 = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
    [carouselView3 removeFromSuperview];
  }

  [(RelatedCollectionsSectionTableViewCell *)self initializeCarouselUsingPlaceCollection:collectionsCopy carouselRoutingDelegate:self];
LABEL_7:
  carouselView4 = [(RelatedCollectionsSectionTableViewCell *)self carouselView];
  [carouselView4 displayCollections];
}

- (RelatedCollectionsSectionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = RelatedCollectionsSectionTableViewCell;
  v4 = [(RelatedSectionTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    contentView = [(RelatedCollectionsSectionTableViewCell *)v4 contentView];
    [contentView setBackgroundColor:v5];
  }

  return v4;
}

+ (double)cellHeightWithCollectionsCount:(unint64_t)count
{
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline];
  [v4 _mapkit_scaledValueForValue:20.0];
  v6 = v5;
  [MKCollectionsCarouselView horizontalLayoutHeightInContext:4 includeExploreGuidesHeight:0 isSingleCollection:count == 1];
  v8 = v6 + v7 + 16.0;

  return v8;
}

@end