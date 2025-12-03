@interface RoutePlanningPreferredRoutesSection
- (BOOL)isActive;
- (BOOL)updateWithTransportType:(int64_t)type routeCollection:(id)collection;
- (RoutePlanningPreferredRoutesSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier;
- (id)cellForItemAtIndexPath:(id)path;
- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (void)_requireReload;
- (void)markRouteTipkitViewSeen;
@end

@implementation RoutePlanningPreferredRoutesSection

- (void)markRouteTipkitViewSeen
{
  GEOConfigSetBOOL();
  host = [(RoutePlanningOutlineSection *)self host];
  [host outlineSectionRequiresReload:self];
}

- (BOOL)isActive
{
  BOOL = GEOConfigGetBOOL();
  if ([(RoutePlanningPreferredRoutesSection *)self transportType]== 1)
  {
    return [(RoutePlanningPreferredRoutesSection *)self isFamiliarRoute]& (BOOL ^ 1);
  }

  else
  {
    return 0;
  }
}

- (void)_requireReload
{
  host = [(RoutePlanningOutlineSection *)self host];
  if (host)
  {
    model = self->_model;

    if (!model)
    {
      v5 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:30.0];
      v6 = [UIImage _systemImageNamed:@"person.crop.badge.arrow.trianglehead.turn.up.right" withConfiguration:v5];
      v7 = +[UIColor systemGrayColor];
      v8 = [v6 _flatImageWithColor:v7];
      v9 = [v8 imageWithRenderingMode:1];

      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"[Feature Discovery] Preferred Route Title" value:@"localized string not found" table:0];

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"[Feature Discovery] Preferred Route Subtitle" value:@"localized string not found" table:0];

      objc_initWeak(&location, self);
      v14 = [FeatureDiscoveryModel alloc];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1009CE568;
      v19[3] = &unk_101661B98;
      objc_copyWeak(&v20, &location);
      LOBYTE(v18) = 1;
      v15 = [(FeatureDiscoveryModel *)v14 initWithImage:v9 title:v11 subtitle:v13 actionTitle:0 actionHandler:0 bodyTapHandler:0 displayedHandler:0 dismissHandler:v19 disableAffordanceAfterAction:v18];
      v16 = self->_model;
      self->_model = v15;

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  host2 = [(RoutePlanningOutlineSection *)self host];
  [host2 outlineSectionRequiresReload:self];
}

- (id)cellForItemAtIndexPath:(id)path
{
  v4 = [(UICollectionView *)self->super.super._collectionView dequeueReusableCellWithReuseIdentifier:@"PreferredRouteCellIdentifier" forIndexPath:path];
  [v4 updateViewModel:self->_model];

  return v4;
}

- (BOOL)updateWithTransportType:(int64_t)type routeCollection:(id)collection
{
  [(RoutePlanningPreferredRoutesSection *)self setTransportType:type, collection];
  [(RoutePlanningPreferredRoutesSection *)self _requireReload];
  return 1;
}

- (id)listLayoutSectionConfigurationAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  v6.receiver = self;
  v6.super_class = RoutePlanningPreferredRoutesSection;
  v4 = [(RoutePlanningFeatureDiscoverOutlineSection *)&v6 listLayoutSectionConfigurationAtIndex:index layoutEnvironment:environment];
  [v4 setSeparatorStyle:0];

  return v4;
}

- (RoutePlanningPreferredRoutesSection)initWithCollectionView:(id)view sectionIdentifier:(id)identifier
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = RoutePlanningPreferredRoutesSection;
  v7 = [(RoutePlanningFeatureDiscoverOutlineSection *)&v10 initWithCollectionView:viewCopy sectionIdentifier:identifier];
  if (v7)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 BOOLForKey:@"RoutePlanningPreferredRouteTipkitShownKey"];

    GEOConfigSetBOOL();
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PreferredRouteCellIdentifier"];
  }

  return v7;
}

@end