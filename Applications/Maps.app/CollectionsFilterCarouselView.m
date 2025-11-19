@interface CollectionsFilterCarouselView
+ (double)defaultHeightForDisplayStyle:(int64_t)a3 inContext:(int64_t)a4;
- (AllCollectinsFilterRoutingDelegate)allCollectionsRoutingDelegate;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CollectionsFilterCarouselView)initWithFrame:(CGRect)a3;
- (CollectionsFilterRoutingDelegate)routingDelegate;
- (GuidesHomeFilterRoutingDelegate)guidesHomeRoutingDelegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (id)titleForFilterAtIndexPath:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureCarouselFilterView;
- (void)configureFiltersCarouselMetadata:(int64_t)a3;
- (void)configureWithContext:(int64_t)a3 routingDelegate:(id)a4 guidesHomeFilters:(id)a5 selectedFilterIndex:(id)a6;
- (void)configureWithContext:(int64_t)a3 withRoutingDelegate:(id)a4 withAllCollectionsResultFilters:(id)a5 withSelectedFilterIndex:(id)a6;
- (void)configureWithContext:(int64_t)a3 withRoutingDelegate:(id)a4 withPublishersResultFilters:(id)a5 withSelectedFilterIndex:(id)a6;
- (void)displayFilters;
- (void)scrollToSelectedFilter;
- (void)setUpCarouselDependenciesUsingSelectedFilterIndexPath:(id)a3;
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

- (id)titleForFilterAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CollectionsFilterCarouselView *)self logicController];
  v6 = [v5 filterAtIndexPath:v4];

  v7 = [v6 filterTitle];

  return v7;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v6 = [(CollectionsFilterCarouselView *)self sizeController:a3];
  [v6 minimumInterItemSpacingForSectionAtIndex:a5];
  v8 = v7;

  return v8;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  IsEnabled_Maps269 = MapsFeature_IsEnabled_Maps269();
  v8 = [(CollectionsFilterCarouselView *)self sizeController];
  v9 = v8;
  if (IsEnabled_Maps269)
  {
    [v8 minimumInterItemSpacingForSectionAtIndex:a5];
  }

  else
  {
    [v8 minimumLineSpacingForSectionAtIndex:a5];
  }

  v11 = v10;

  return v11;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = [(CollectionsFilterCarouselView *)self sizeController:a3];
  [v6 insetForFilterAtIndex:a5];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(CollectionsFilterCarouselView *)self sizeController];
  v8 = [(CollectionsFilterCarouselView *)self logicController];
  v9 = [v8 filterAtIndexPath:v6];

  [v7 sizeForFilter:v9];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v20 = a4;
  v5 = [(CollectionsFilterCarouselView *)self logicController];
  v6 = [v5 selectedFilterIndexPath];

  v7 = v20;
  context = self->_context;
  if (v6 == v20)
  {
    if (context != 2)
    {
      goto LABEL_18;
    }

    v10 = [(CollectionsFilterCarouselView *)self guidesHomeRoutingDelegate];
    [v10 didRouteToConceptFilter:0 atIndexPath:0];
  }

  else if (context == 1)
  {
    v14 = [(CollectionsFilterCarouselView *)self logicController];
    v10 = [v14 routeToSelectedAllCollectionsFilterAtIndexPath:v20];

    v15 = [v10 allCollectionsAddressFilter];

    if (v15)
    {
      v12 = [(CollectionsFilterCarouselView *)self allCollectionsRoutingDelegate];
      v13 = [v10 allCollectionsAddressFilter];
      goto LABEL_10;
    }

    v19 = [v10 allCollectionsKeywordFilter];

    if (v19)
    {
      v12 = [(CollectionsFilterCarouselView *)self allCollectionsRoutingDelegate];
      v18 = [v10 allCollectionsKeywordFilter];
      goto LABEL_15;
    }
  }

  else
  {
    if (context)
    {
      goto LABEL_18;
    }

    v9 = [(CollectionsFilterCarouselView *)self logicController];
    v10 = [v9 routeToSelectedFilterAtIndexPath:v20];

    v11 = [v10 addressFilter];

    if (v11)
    {
      v12 = [(CollectionsFilterCarouselView *)self routingDelegate];
      v13 = [v10 addressFilter];
LABEL_10:
      v16 = v13;
      [v12 didRouteToAddressFilter:v13 atIndexPath:v20];
LABEL_16:

      goto LABEL_17;
    }

    v17 = [v10 keywordFilter];

    if (v17)
    {
      v12 = [(CollectionsFilterCarouselView *)self routingDelegate];
      v18 = [v10 keywordFilter];
LABEL_15:
      v16 = v18;
      [v12 didRouteToKeywordFilter:v18 atIndexPath:v20];
      goto LABEL_16;
    }
  }

LABEL_17:

  v7 = v20;
LABEL_18:
}

- (void)configureCarouselFilterView
{
  v3 = [(CollectionsFilterCarouselView *)self collectionView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(CollectionsFilterCarouselView *)self collectionView];
  [v4 setDelegate:self];

  v5 = [(CollectionsFilterCarouselView *)self collectionView];
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [(CollectionsFilterCarouselView *)self collectionView];
  [(CollectionsFilterCarouselView *)self addSubview:v7];

  v24 = [(CollectionsFilterCarouselView *)self collectionView];
  v23 = [v24 leadingAnchor];
  v22 = [(CollectionsFilterCarouselView *)self leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v25[0] = v21;
  v20 = [(CollectionsFilterCarouselView *)self collectionView];
  v19 = [v20 trailingAnchor];
  v18 = [(CollectionsFilterCarouselView *)self trailingAnchor];
  v8 = [v19 constraintEqualToAnchor:v18];
  v25[1] = v8;
  v9 = [(CollectionsFilterCarouselView *)self collectionView];
  v10 = [v9 topAnchor];
  v11 = [(CollectionsFilterCarouselView *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v25[2] = v12;
  v13 = [(CollectionsFilterCarouselView *)self collectionView];
  v14 = [v13 bottomAnchor];
  v15 = [(CollectionsFilterCarouselView *)self bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v25[3] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v17];
}

- (void)configureFiltersCarouselMetadata:(int64_t)a3
{
  if (a3 <= 2)
  {
    v4 = [(CollectionsFilterCarouselView *)self flowLayout];
    [v4 setScrollDirection:1];
  }
}

- (void)setUpCarouselDependenciesUsingSelectedFilterIndexPath:(id)a3
{
  v13 = a3;
  context = self->_context;
  if (context == 2)
  {
    v10 = [CollectionsFilterLogicController alloc];
    v6 = [(CollectionsFilterCarouselView *)self collectionView];
    v7 = [(CollectionsFilterCarouselView *)self guidesHomeResultFilter];
    v8 = [(CollectionsFilterLogicController *)v10 initWithCollectionView:v6 withGuidesHomeResultFilters:v7 withSelectedFilterIndexPath:v13];
  }

  else if (context == 1)
  {
    v9 = [CollectionsFilterLogicController alloc];
    v6 = [(CollectionsFilterCarouselView *)self collectionView];
    v7 = [(CollectionsFilterCarouselView *)self allCollectionsResultFilter];
    v8 = [(CollectionsFilterLogicController *)v9 initWithCollectionView:v6 withAllCollectionsResultFilters:v7 withSelectedFilterIndexPath:v13];
  }

  else
  {
    if (context)
    {
      goto LABEL_8;
    }

    v5 = [CollectionsFilterLogicController alloc];
    v6 = [(CollectionsFilterCarouselView *)self collectionView];
    v7 = [(CollectionsFilterCarouselView *)self resultFilters];
    v8 = [(CollectionsFilterLogicController *)v5 initWithCollectionView:v6 withResultFilters:v7 withSelectedFilterIndexPath:v13];
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
  v5 = [(CollectionsFilterCarouselView *)self flowLayout];
  v6 = [v4 initWithFrame:v5 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CollectionsFilterCarouselView *)self setCollectionView:v6];

  v7 = [(CollectionsFilterCarouselView *)self collectionView];
  [v7 setAccessibilityIdentifier:@"CollectionsFilterCarouselCollectionView"];

  v8 = [(CollectionsFilterCarouselView *)self collectionView];
  [v8 setShowsVerticalScrollIndicator:0];

  v9 = [(CollectionsFilterCarouselView *)self collectionView];
  [v9 setShowsHorizontalScrollIndicator:0];

  v10 = [(CollectionsFilterCarouselView *)self collectionView];
  [v10 setAllowsSelection:1];

  v11 = [(CollectionsFilterCarouselView *)self collectionView];
  [v11 setAllowsMultipleSelection:0];
}

- (void)scrollToSelectedFilter
{
  v2 = [(CollectionsFilterCarouselView *)self logicController];
  [v2 scrollToSelectedFilter];
}

- (void)displayFilters
{
  v3 = [(CollectionsFilterCarouselView *)self logicController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006E78C8;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [v3 getFilters:v4];
}

- (void)configureWithContext:(int64_t)a3 routingDelegate:(id)a4 guidesHomeFilters:(id)a5 selectedFilterIndex:(id)a6
{
  v10 = a5;
  self->_context = a3;
  v12 = a6;
  objc_storeWeak(&self->_guidesHomeRoutingDelegate, a4);
  guidesHomeResultFilter = self->_guidesHomeResultFilter;
  self->_guidesHomeResultFilter = v10;

  [(CollectionsFilterCarouselView *)self configureFiltersCarouselMetadata:self->_context];
  [(CollectionsFilterCarouselView *)self setUpCarouselDependenciesUsingSelectedFilterIndexPath:v12];
}

- (void)configureWithContext:(int64_t)a3 withRoutingDelegate:(id)a4 withPublishersResultFilters:(id)a5 withSelectedFilterIndex:(id)a6
{
  self->_context = a3;
  v10 = a6;
  v9 = a5;
  [(CollectionsFilterCarouselView *)self setRoutingDelegate:a4];
  [(CollectionsFilterCarouselView *)self setResultFilters:v9];

  [(CollectionsFilterCarouselView *)self configureFiltersCarouselMetadata:self->_context];
  [(CollectionsFilterCarouselView *)self setUpCarouselDependenciesUsingSelectedFilterIndexPath:v10];
}

- (void)configureWithContext:(int64_t)a3 withRoutingDelegate:(id)a4 withAllCollectionsResultFilters:(id)a5 withSelectedFilterIndex:(id)a6
{
  self->_context = a3;
  v10 = a6;
  v9 = a5;
  [(CollectionsFilterCarouselView *)self setAllCollectionsRoutingDelegate:a4];
  [(CollectionsFilterCarouselView *)self setAllCollectionsResultFilter:v9];

  [(CollectionsFilterCarouselView *)self configureFiltersCarouselMetadata:self->_context];
  [(CollectionsFilterCarouselView *)self setUpCarouselDependenciesUsingSelectedFilterIndexPath:v10];
}

- (CollectionsFilterCarouselView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CollectionsFilterCarouselView;
  v3 = [(CollectionsFilterCarouselView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (double)defaultHeightForDisplayStyle:(int64_t)a3 inContext:(int64_t)a4
{
  v4 = [[CollectionsFilterSizeController alloc] initWithCollectionsFilterDisplayStyle:a3 inContext:a4];
  [(CollectionsFilterSizeController *)v4 defaultHeight];
  v6 = v5;

  return v6;
}

@end