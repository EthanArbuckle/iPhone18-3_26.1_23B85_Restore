@interface EnvironmentalFeatureDiscoverySource
- (EnvironmentalFeatureDiscoverySource)initWithPriority:(int64_t)priority delegate:(id)delegate;
- (FeatureDiscoveryModel)model;
- (FeatureDiscoverySourceDelegate)delegate;
- (id)_bestModelForCurrentState;
- (void)_performActionHandler;
- (void)_reloadAvailability;
- (void)markAsShown;
- (void)setTransportType:(int64_t)type routeCollection:(id)collection;
@end

@implementation EnvironmentalFeatureDiscoverySource

- (FeatureDiscoverySourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)markAsShown
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"EnvironmentalFeatureDiscoverySourceShown"];
}

- (void)_performActionHandler
{
  v2 = +[UIApplication sharedMapsDelegate];
  appCoordinator = [v2 appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];

  [baseActionCoordinator switchRoutePlanningTransportTypeToType:3];
}

- (id)_bestModelForCurrentState
{
  if (self->_available)
  {
    v3 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:30.0];
    v4 = [UIImage systemImageNamed:@"leaf.circle.fill" withConfiguration:v3];
    v5 = +[UIColor systemGreenColor];
    v6 = [v4 _flatImageWithColor:v5];
    v7 = [v6 imageWithRenderingMode:1];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"[Feature Discovery] Reducing Climate Impact" value:@"localized string not found" table:0];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"[Feature Discovery] Climate Impact Description" value:@"localized string not found" table:0];

    objc_initWeak(&location, self);
    v12 = [FeatureDiscoveryModel alloc];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1009C6B30;
    v16[3] = &unk_101661B98;
    objc_copyWeak(&v17, &location);
    LOBYTE(v15) = 1;
    v13 = [(FeatureDiscoveryModel *)v12 initWithImage:v7 title:v9 subtitle:v11 actionTitle:0 actionHandler:0 bodyTapHandler:0 displayedHandler:0 dismissHandler:v16 disableAffordanceAfterAction:v15];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_reloadAvailability
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"EnvironmentalFeatureDiscoverySourceShown"];

  available = self->_available;
  if ((v4 & 1) != 0 || self->_dismissed || self->_transportType != 1 || !self->_areRoutesImpacted)
  {
    v6 = 0;
  }

  else
  {
    v6 = GEOConfigGetBOOL() ^ 1;
  }

  self->_available = v6;
  if (available != v6)
  {
    if ((v6 & 1) == 0)
    {
      model = self->_model;
      self->_model = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained source:self didUpdateAvailability:self->_available];
  }
}

- (void)setTransportType:(int64_t)type routeCollection:(id)collection
{
  self->_transportType = type;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  currentRoute = [collection currentRoute];
  waypoints = [currentRoute waypoints];

  v7 = [waypoints countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(waypoints);
        }

        mapItemStorage = [*(*(&v15 + 1) + 8 * v10) mapItemStorage];
        _bestAvailableCountryCode = [mapItemStorage _bestAvailableCountryCode];
        v13 = [_bestAvailableCountryCode isEqual:@"FR"];

        if (!v13)
        {
          v14 = 0;
          goto LABEL_11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [waypoints countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  self->_areRoutesImpacted = v14;
  [(EnvironmentalFeatureDiscoverySource *)self _reloadAvailability];
}

- (FeatureDiscoveryModel)model
{
  model = self->_model;
  if (!model)
  {
    _bestModelForCurrentState = [(EnvironmentalFeatureDiscoverySource *)self _bestModelForCurrentState];
    v5 = self->_model;
    self->_model = _bestModelForCurrentState;

    model = self->_model;
  }

  return model;
}

- (EnvironmentalFeatureDiscoverySource)initWithPriority:(int64_t)priority delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = EnvironmentalFeatureDiscoverySource;
  v7 = [(EnvironmentalFeatureDiscoverySource *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_priority = priority;
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

@end