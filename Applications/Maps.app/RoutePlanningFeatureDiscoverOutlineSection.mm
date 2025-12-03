@interface RoutePlanningFeatureDiscoverOutlineSection
- (BOOL)isActive;
- (RoutePlanningFeatureDiscoverOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier;
- (id)cellForItemAtIndexPath:(id)path;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (void)_requireReload;
- (void)setTransitPayActionDelegate:(id)delegate;
- (void)willDisplayCell:(id)cell forIndexPath:(id)path;
@end

@implementation RoutePlanningFeatureDiscoverOutlineSection

- (BOOL)isActive
{
  suggestedModel = [(RoutePlanningFeatureDiscoveryProvider *)self->_featureDiscoveryProvider suggestedModel];
  v3 = suggestedModel != 0;

  return v3;
}

- (void)_requireReload
{
  host = [(RoutePlanningOutlineSection *)self host];
  [host outlineSectionRequiresReload:self];
}

- (void)willDisplayCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  v9.receiver = self;
  v9.super_class = RoutePlanningFeatureDiscoverOutlineSection;
  [(RoutePlanningOutlineSection *)&v9 willDisplayCell:cellCopy forIndexPath:path];
  featureDiscoveryView = [cellCopy featureDiscoveryView];
  model = [featureDiscoveryView model];
  [model markAsDisplayed];
}

- (id)cellForItemAtIndexPath:(id)path
{
  v4 = [(UICollectionView *)self->super._collectionView dequeueReusableCellWithReuseIdentifier:@"FeatureDiscovery" forIndexPath:path];
  suggestedModel = [(RoutePlanningFeatureDiscoveryProvider *)self->_featureDiscoveryProvider suggestedModel];
  featureDiscoveryView = [v4 featureDiscoveryView];
  [featureDiscoveryView setModel:suggestedModel];

  [v4 setContext:1];

  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  suggestedModel = [(RoutePlanningFeatureDiscoveryProvider *)self->_featureDiscoveryProvider suggestedModel];
  v4 = suggestedModel != 0;

  return v4;
}

- (void)setTransitPayActionDelegate:(id)delegate
{
  if (delegate)
  {
    featureDiscoveryProvider = self->_featureDiscoveryProvider;

    [(RoutePlanningFeatureDiscoveryProvider *)featureDiscoveryProvider setTransitPayActionDelegate:?];
  }

  else
  {
    v4 = sub_10003D020();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RoutePlanningOutlineRootController.m";
      v8 = 1024;
      v9 = 882;
      v10 = 2082;
      v11 = "[RoutePlanningFeatureDiscoverOutlineSection setTransitPayActionDelegate:]";
      v12 = 2082;
      v13 = "nil == transitPayActionDelegate";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Transit + Pay requires an action delegate", &v6, 0x26u);
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RoutePlanningOutlineRootController.m";
      v8 = 1024;
      v9 = 882;
      v10 = 2082;
      v11 = "[RoutePlanningFeatureDiscoverOutlineSection setTransitPayActionDelegate:]";
      v12 = 2082;
      v13 = "nil == transitPayActionDelegate";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Transit + Pay requires an action delegate", &v6, 0x26u);
    }
  }
}

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  v6.receiver = self;
  v6.super_class = RoutePlanningFeatureDiscoverOutlineSection;
  v4 = [(RoutePlanningOutlineSection *)&v6 listLayoutSectionConfigurationAtIndex:index layoutEnvironment:environment];
  [v4 setSeparatorStyle:0];

  return v4;
}

- (RoutePlanningFeatureDiscoverOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = RoutePlanningFeatureDiscoverOutlineSection;
  v8 = [(RoutePlanningOutlineSection *)&v15 initWithCollectionView:viewCopy sectionIdentifier:identifierCopy];
  if (v8)
  {
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"FeatureDiscovery"];
    v9 = objc_alloc_init(RoutePlanningFeatureDiscoveryProvider);
    featureDiscoveryProvider = v8->_featureDiscoveryProvider;
    v8->_featureDiscoveryProvider = v9;

    objc_initWeak(&location, v8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1009CD634;
    v12[3] = &unk_101631258;
    objc_copyWeak(&v13, &location);
    [(RoutePlanningFeatureDiscoveryProvider *)v8->_featureDiscoveryProvider setChangeHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v8;
}

@end