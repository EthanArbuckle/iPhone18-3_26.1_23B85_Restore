@interface RoutePlanningFeatureDiscoverOutlineSection
- (BOOL)isActive;
- (RoutePlanningFeatureDiscoverOutlineSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4;
- (id)cellForItemAtIndexPath:(id)a3;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (void)_requireReload;
- (void)setTransitPayActionDelegate:(id)a3;
- (void)willDisplayCell:(id)a3 forIndexPath:(id)a4;
@end

@implementation RoutePlanningFeatureDiscoverOutlineSection

- (BOOL)isActive
{
  v2 = [(RoutePlanningFeatureDiscoveryProvider *)self->_featureDiscoveryProvider suggestedModel];
  v3 = v2 != 0;

  return v3;
}

- (void)_requireReload
{
  v3 = [(RoutePlanningOutlineSection *)self host];
  [v3 outlineSectionRequiresReload:self];
}

- (void)willDisplayCell:(id)a3 forIndexPath:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = RoutePlanningFeatureDiscoverOutlineSection;
  [(RoutePlanningOutlineSection *)&v9 willDisplayCell:v6 forIndexPath:a4];
  v7 = [v6 featureDiscoveryView];
  v8 = [v7 model];
  [v8 markAsDisplayed];
}

- (id)cellForItemAtIndexPath:(id)a3
{
  v4 = [(UICollectionView *)self->super._collectionView dequeueReusableCellWithReuseIdentifier:@"FeatureDiscovery" forIndexPath:a3];
  v5 = [(RoutePlanningFeatureDiscoveryProvider *)self->_featureDiscoveryProvider suggestedModel];
  v6 = [v4 featureDiscoveryView];
  [v6 setModel:v5];

  [v4 setContext:1];

  return v4;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(RoutePlanningFeatureDiscoveryProvider *)self->_featureDiscoveryProvider suggestedModel];
  v4 = v3 != 0;

  return v4;
}

- (void)setTransitPayActionDelegate:(id)a3
{
  if (a3)
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

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6.receiver = self;
  v6.super_class = RoutePlanningFeatureDiscoverOutlineSection;
  v4 = [(RoutePlanningOutlineSection *)&v6 listLayoutSectionConfigurationAtIndex:a3 layoutEnvironment:a4];
  [v4 setSeparatorStyle:0];

  return v4;
}

- (RoutePlanningFeatureDiscoverOutlineSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = RoutePlanningFeatureDiscoverOutlineSection;
  v8 = [(RoutePlanningOutlineSection *)&v15 initWithCollectionView:v6 sectionIdentifier:v7];
  if (v8)
  {
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"FeatureDiscovery"];
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