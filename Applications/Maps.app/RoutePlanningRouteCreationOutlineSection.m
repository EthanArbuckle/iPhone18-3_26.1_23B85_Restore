@interface RoutePlanningRouteCreationOutlineSection
- (MapsCustomRouteCellDelegate)customRouteDelegate;
- (RoutePlanningOverviewRouteCreationCellDelegate)routeCreationDelegate;
- (RoutePlanningRouteCreationOutlineSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4;
- (id)cellForItemAtIndexPath:(id)a3;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (void)_configureCell:(id)a3;
- (void)_configureCustomRouteCell:(id)a3;
@end

@implementation RoutePlanningRouteCreationOutlineSection

- (MapsCustomRouteCellDelegate)customRouteDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customRouteDelegate);

  return WeakRetained;
}

- (RoutePlanningOverviewRouteCreationCellDelegate)routeCreationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routeCreationDelegate);

  return WeakRetained;
}

- (void)_configureCustomRouteCell:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningRouteCreationOutlineSection *)self customRouteDelegate];
  [v4 setDelegate:v5];
}

- (void)_configureCell:(id)a3
{
  v4 = a3;
  v5 = [(RoutePlanningRouteCreationOutlineSection *)self routeCreationDelegate];
  [v4 setDelegate:v5];
}

- (id)cellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = _UISolariumEnabled();
  v6 = [(UICollectionView *)self->super._collectionView dequeueReusableCellWithReuseIdentifier:@"RouteCreation" forIndexPath:v4];

  if (v5)
  {
    [(RoutePlanningRouteCreationOutlineSection *)self _configureCustomRouteCell:v6];
  }

  else
  {
    [(RoutePlanningRouteCreationOutlineSection *)self _configureCell:v6];
  }

  return v6;
}

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v9.receiver = self;
  v9.super_class = RoutePlanningRouteCreationOutlineSection;
  v5 = [(RoutePlanningOutlineSection *)&v9 listLayoutSectionConfigurationAtIndex:a3 layoutEnvironment:a4];
  [v5 setSeparatorStyle:0];
  [v5 setEstimatedRowHeight:0.0];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(UICollectionView *)self->super._collectionView frame];
    Width = CGRectGetWidth(v11);
    v7 = [(UICollectionView *)self->super._collectionView traitCollection];
    [RoutePlanningOverviewRouteCreationCell heightForWidth:v7 traitCollection:Width];
    [v5 setRowHeight:?];
  }

  return v5;
}

- (RoutePlanningRouteCreationOutlineSection)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = RoutePlanningRouteCreationOutlineSection;
  v7 = [(RoutePlanningOutlineSection *)&v9 initWithCollectionView:v6 sectionIdentifier:a4];
  if (v7)
  {
    _UISolariumEnabled();
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"RouteCreation"];
  }

  return v7;
}

@end