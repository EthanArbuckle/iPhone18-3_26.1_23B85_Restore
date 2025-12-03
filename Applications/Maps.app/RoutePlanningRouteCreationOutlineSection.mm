@interface RoutePlanningRouteCreationOutlineSection
- (MapsCustomRouteCellDelegate)customRouteDelegate;
- (RoutePlanningOverviewRouteCreationCellDelegate)routeCreationDelegate;
- (RoutePlanningRouteCreationOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier;
- (id)cellForItemAtIndexPath:(id)path;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (void)_configureCell:(id)cell;
- (void)_configureCustomRouteCell:(id)cell;
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

- (void)_configureCustomRouteCell:(id)cell
{
  cellCopy = cell;
  customRouteDelegate = [(RoutePlanningRouteCreationOutlineSection *)self customRouteDelegate];
  [cellCopy setDelegate:customRouteDelegate];
}

- (void)_configureCell:(id)cell
{
  cellCopy = cell;
  routeCreationDelegate = [(RoutePlanningRouteCreationOutlineSection *)self routeCreationDelegate];
  [cellCopy setDelegate:routeCreationDelegate];
}

- (id)cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = _UISolariumEnabled();
  v6 = [(UICollectionView *)self->super._collectionView dequeueReusableCellWithReuseIdentifier:@"RouteCreation" forIndexPath:pathCopy];

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

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  v9.receiver = self;
  v9.super_class = RoutePlanningRouteCreationOutlineSection;
  v5 = [(RoutePlanningOutlineSection *)&v9 listLayoutSectionConfigurationAtIndex:index layoutEnvironment:environment];
  [v5 setSeparatorStyle:0];
  [v5 setEstimatedRowHeight:0.0];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(UICollectionView *)self->super._collectionView frame];
    Width = CGRectGetWidth(v11);
    traitCollection = [(UICollectionView *)self->super._collectionView traitCollection];
    [RoutePlanningOverviewRouteCreationCell heightForWidth:traitCollection traitCollection:Width];
    [v5 setRowHeight:?];
  }

  return v5;
}

- (RoutePlanningRouteCreationOutlineSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = RoutePlanningRouteCreationOutlineSection;
  v7 = [(RoutePlanningOutlineSection *)&v9 initWithCollectionView:viewCopy sectionIdentifier:identifier];
  if (v7)
  {
    _UISolariumEnabled();
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"RouteCreation"];
  }

  return v7;
}

@end