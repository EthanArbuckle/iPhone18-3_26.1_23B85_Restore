@interface CollectionsFilterCarouselView
+ (double)defaultHeightForDisplayStyle:(int64_t)style inContext:(int64_t)context;
- (AllCollectinsFilterRoutingDelegate)allCollectionsRoutingDelegate;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CollectionsFilterCarouselView)initWithFrame:(CGRect)frame;
- (CollectionsFilterRoutingDelegate)routingDelegate;
- (GuidesHomeFilterRoutingDelegate)guidesHomeRoutingDelegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (id)titleForFilterAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureCarouselFilterView;
- (void)configureFiltersCarouselMetadata:(int64_t)metadata;
- (void)configureWithContext:(int64_t)context routingDelegate:(id)delegate guidesHomeFilters:(id)filters selectedFilterIndex:(id)index;
- (void)configureWithContext:(int64_t)context withRoutingDelegate:(id)delegate withAllCollectionsResultFilters:(id)filters withSelectedFilterIndex:(id)index;
- (void)configureWithContext:(int64_t)context withRoutingDelegate:(id)delegate withPublishersResultFilters:(id)filters withSelectedFilterIndex:(id)index;
- (void)displayFilters;
- (void)scrollToSelectedFilter;
- (void)setUpCarouselDependenciesUsingSelectedFilterIndexPath:(id)path;
- (void)setupSubviews;
@end

@implementation CollectionsFilterCarouselView

- (GuidesHomeFilterRoutingDelegate)guidesHomeRoutingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_guidesHomeRoutingDelegate);

  return WeakRetained;
}

- (AllCollectinsFilterRoutingDelegate)allCollectionsRoutingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_allCollectionsRoutingDelegate);

  return WeakRetained;
}

- (CollectionsFilterRoutingDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

- (id)titleForFilterAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(CollectionsFilterCarouselView *)self logicController];
  v6 = [logicController filterAtIndexPath:pathCopy];

  filterTitle = [v6 filterTitle];

  return filterTitle;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  v6 = [(CollectionsFilterCarouselView *)self sizeController:view];
  [v6 minimumInterItemSpacingForSectionAtIndex:index];
  v8 = v7;

  return v8;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  IsEnabled_Maps269 = MapsFeature_IsEnabled_Maps269();
  sizeController = [(CollectionsFilterCarouselView *)self sizeController];
  v9 = sizeController;
  if (IsEnabled_Maps269)
  {
    [sizeController minimumInterItemSpacingForSectionAtIndex:index];
  }

  else
  {
    [sizeController minimumLineSpacingForSectionAtIndex:index];
  }

  v11 = v10;

  return v11;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = [(CollectionsFilterCarouselView *)self sizeController:view];
  [v6 insetForFilterAtIndex:index];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  sizeController = [(CollectionsFilterCarouselView *)self sizeController];
  logicController = [(CollectionsFilterCarouselView *)self logicController];
  v9 = [logicController filterAtIndexPath:pathCopy];

  [sizeController sizeForFilter:v9];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  logicController = [(CollectionsFilterCarouselView *)self logicController];
  selectedFilterIndexPath = [logicController selectedFilterIndexPath];

  v7 = pathCopy;
  context = self->_context;
  if (selectedFilterIndexPath == pathCopy)
  {
    if (context != 2)
    {
      goto LABEL_18;
    }

    guidesHomeRoutingDelegate = [(CollectionsFilterCarouselView *)self guidesHomeRoutingDelegate];
    [guidesHomeRoutingDelegate didRouteToConceptFilter:0 atIndexPath:0];
  }

  else if (context == 1)
  {
    logicController2 = [(CollectionsFilterCarouselView *)self logicController];
    guidesHomeRoutingDelegate = [logicController2 routeToSelectedAllCollectionsFilterAtIndexPath:pathCopy];

    allCollectionsAddressFilter = [guidesHomeRoutingDelegate allCollectionsAddressFilter];

    if (allCollectionsAddressFilter)
    {
      allCollectionsRoutingDelegate = [(CollectionsFilterCarouselView *)self allCollectionsRoutingDelegate];
      allCollectionsAddressFilter2 = [guidesHomeRoutingDelegate allCollectionsAddressFilter];
      goto LABEL_10;
    }

    allCollectionsKeywordFilter = [guidesHomeRoutingDelegate allCollectionsKeywordFilter];

    if (allCollectionsKeywordFilter)
    {
      allCollectionsRoutingDelegate = [(CollectionsFilterCarouselView *)self allCollectionsRoutingDelegate];
      allCollectionsKeywordFilter2 = [guidesHomeRoutingDelegate allCollectionsKeywordFilter];
      goto LABEL_15;
    }
  }

  else
  {
    if (context)
    {
      goto LABEL_18;
    }

    logicController3 = [(CollectionsFilterCarouselView *)self logicController];
    guidesHomeRoutingDelegate = [logicController3 routeToSelectedFilterAtIndexPath:pathCopy];

    addressFilter = [guidesHomeRoutingDelegate addressFilter];

    if (addressFilter)
    {
      allCollectionsRoutingDelegate = [(CollectionsFilterCarouselView *)self routingDelegate];
      allCollectionsAddressFilter2 = [guidesHomeRoutingDelegate addressFilter];
LABEL_10:
      v16 = allCollectionsAddressFilter2;
      [allCollectionsRoutingDelegate didRouteToAddressFilter:allCollectionsAddressFilter2 atIndexPath:pathCopy];
LABEL_16:

      goto LABEL_17;
    }

    keywordFilter = [guidesHomeRoutingDelegate keywordFilter];

    if (keywordFilter)
    {
      allCollectionsRoutingDelegate = [(CollectionsFilterCarouselView *)self routingDelegate];
      allCollectionsKeywordFilter2 = [guidesHomeRoutingDelegate keywordFilter];
LABEL_15:
      v16 = allCollectionsKeywordFilter2;
      [allCollectionsRoutingDelegate didRouteToKeywordFilter:allCollectionsKeywordFilter2 atIndexPath:pathCopy];
      goto LABEL_16;
    }
  }

LABEL_17:

  v7 = pathCopy;
LABEL_18:
}

- (void)configureCarouselFilterView
{
  collectionView = [(CollectionsFilterCarouselView *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView2 = [(CollectionsFilterCarouselView *)self collectionView];
  [collectionView2 setDelegate:self];

  collectionView3 = [(CollectionsFilterCarouselView *)self collectionView];
  v6 = +[UIColor clearColor];
  [collectionView3 setBackgroundColor:v6];

  collectionView4 = [(CollectionsFilterCarouselView *)self collectionView];
  [(CollectionsFilterCarouselView *)self addSubview:collectionView4];

  collectionView5 = [(CollectionsFilterCarouselView *)self collectionView];
  leadingAnchor = [collectionView5 leadingAnchor];
  leadingAnchor2 = [(CollectionsFilterCarouselView *)self leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v21;
  collectionView6 = [(CollectionsFilterCarouselView *)self collectionView];
  trailingAnchor = [collectionView6 trailingAnchor];
  trailingAnchor2 = [(CollectionsFilterCarouselView *)self trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v8;
  collectionView7 = [(CollectionsFilterCarouselView *)self collectionView];
  topAnchor = [collectionView7 topAnchor];
  topAnchor2 = [(CollectionsFilterCarouselView *)self topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[2] = v12;
  collectionView8 = [(CollectionsFilterCarouselView *)self collectionView];
  bottomAnchor = [collectionView8 bottomAnchor];
  bottomAnchor2 = [(CollectionsFilterCarouselView *)self bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)configureFiltersCarouselMetadata:(int64_t)metadata
{
  if (metadata <= 2)
  {
    flowLayout = [(CollectionsFilterCarouselView *)self flowLayout];
    [flowLayout setScrollDirection:1];
  }
}

- (void)setUpCarouselDependenciesUsingSelectedFilterIndexPath:(id)path
{
  pathCopy = path;
  context = self->_context;
  if (context == 2)
  {
    v10 = [CollectionsFilterLogicController alloc];
    collectionView = [(CollectionsFilterCarouselView *)self collectionView];
    guidesHomeResultFilter = [(CollectionsFilterCarouselView *)self guidesHomeResultFilter];
    v8 = [(CollectionsFilterLogicController *)v10 initWithCollectionView:collectionView withGuidesHomeResultFilters:guidesHomeResultFilter withSelectedFilterIndexPath:pathCopy];
  }

  else if (context == 1)
  {
    v9 = [CollectionsFilterLogicController alloc];
    collectionView = [(CollectionsFilterCarouselView *)self collectionView];
    guidesHomeResultFilter = [(CollectionsFilterCarouselView *)self allCollectionsResultFilter];
    v8 = [(CollectionsFilterLogicController *)v9 initWithCollectionView:collectionView withAllCollectionsResultFilters:guidesHomeResultFilter withSelectedFilterIndexPath:pathCopy];
  }

  else
  {
    if (context)
    {
      goto LABEL_8;
    }

    v5 = [CollectionsFilterLogicController alloc];
    collectionView = [(CollectionsFilterCarouselView *)self collectionView];
    guidesHomeResultFilter = [(CollectionsFilterCarouselView *)self resultFilters];
    v8 = [(CollectionsFilterLogicController *)v5 initWithCollectionView:collectionView withResultFilters:guidesHomeResultFilter withSelectedFilterIndexPath:pathCopy];
  }

  v11 = v8;
  [(CollectionsFilterCarouselView *)self setLogicController:v8];

  v12 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:0 inContext:context];
  [(CollectionsFilterCarouselView *)self setSizeController:v12];

LABEL_8:
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(UICollectionViewFlowLayout);
  [(CollectionsFilterCarouselView *)self setFlowLayout:v3];

  v4 = [UICollectionView alloc];
  flowLayout = [(CollectionsFilterCarouselView *)self flowLayout];
  v6 = [v4 initWithFrame:flowLayout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CollectionsFilterCarouselView *)self setCollectionView:v6];

  collectionView = [(CollectionsFilterCarouselView *)self collectionView];
  [collectionView setAccessibilityIdentifier:@"CollectionsFilterCarouselCollectionView"];

  collectionView2 = [(CollectionsFilterCarouselView *)self collectionView];
  [collectionView2 setShowsVerticalScrollIndicator:0];

  collectionView3 = [(CollectionsFilterCarouselView *)self collectionView];
  [collectionView3 setShowsHorizontalScrollIndicator:0];

  collectionView4 = [(CollectionsFilterCarouselView *)self collectionView];
  [collectionView4 setAllowsSelection:1];

  collectionView5 = [(CollectionsFilterCarouselView *)self collectionView];
  [collectionView5 setAllowsMultipleSelection:0];
}

- (void)scrollToSelectedFilter
{
  logicController = [(CollectionsFilterCarouselView *)self logicController];
  [logicController scrollToSelectedFilter];
}

- (void)displayFilters
{
  logicController = [(CollectionsFilterCarouselView *)self logicController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006E78C8;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [logicController getFilters:v4];
}

- (void)configureWithContext:(int64_t)context routingDelegate:(id)delegate guidesHomeFilters:(id)filters selectedFilterIndex:(id)index
{
  filtersCopy = filters;
  self->_context = context;
  indexCopy = index;
  objc_storeWeak(&self->_guidesHomeRoutingDelegate, delegate);
  guidesHomeResultFilter = self->_guidesHomeResultFilter;
  self->_guidesHomeResultFilter = filtersCopy;

  [(CollectionsFilterCarouselView *)self configureFiltersCarouselMetadata:self->_context];
  [(CollectionsFilterCarouselView *)self setUpCarouselDependenciesUsingSelectedFilterIndexPath:indexCopy];
}

- (void)configureWithContext:(int64_t)context withRoutingDelegate:(id)delegate withPublishersResultFilters:(id)filters withSelectedFilterIndex:(id)index
{
  self->_context = context;
  indexCopy = index;
  filtersCopy = filters;
  [(CollectionsFilterCarouselView *)self setRoutingDelegate:delegate];
  [(CollectionsFilterCarouselView *)self setResultFilters:filtersCopy];

  [(CollectionsFilterCarouselView *)self configureFiltersCarouselMetadata:self->_context];
  [(CollectionsFilterCarouselView *)self setUpCarouselDependenciesUsingSelectedFilterIndexPath:indexCopy];
}

- (void)configureWithContext:(int64_t)context withRoutingDelegate:(id)delegate withAllCollectionsResultFilters:(id)filters withSelectedFilterIndex:(id)index
{
  self->_context = context;
  indexCopy = index;
  filtersCopy = filters;
  [(CollectionsFilterCarouselView *)self setAllCollectionsRoutingDelegate:delegate];
  [(CollectionsFilterCarouselView *)self setAllCollectionsResultFilter:filtersCopy];

  [(CollectionsFilterCarouselView *)self configureFiltersCarouselMetadata:self->_context];
  [(CollectionsFilterCarouselView *)self setUpCarouselDependenciesUsingSelectedFilterIndexPath:indexCopy];
}

- (CollectionsFilterCarouselView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CollectionsFilterCarouselView;
  v3 = [(CollectionsFilterCarouselView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(CollectionsFilterCarouselView *)v3 setAccessibilityIdentifier:v5];

    [(CollectionsFilterCarouselView *)v3 setupSubviews];
    [(CollectionsFilterCarouselView *)v3 configureCarouselFilterView];
  }

  return v3;
}

+ (double)defaultHeightForDisplayStyle:(int64_t)style inContext:(int64_t)context
{
  v4 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:style inContext:context];
  [(CollectionsFilterSizeController *)v4 defaultHeight];
  v6 = v5;

  return v6;
}

@end