@interface TrafficIncidentItemSource
- (TrafficIncidentItemSource)init;
- (id)allItems;
- (void)dealloc;
- (void)incidentsSourceManagerDidUpdate;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
@end

@implementation TrafficIncidentItemSource

- (id)allItems
{
  currentSession = [(PlatformController *)self->_platformController currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    cachedIncidentsPersonalizedItems = &__NSArray0__struct;
  }

  else
  {
    v5 = +[TrafficIncidentsSourceManager sharedInstance];
    cachedIncidentsPersonalizedItems = [v5 cachedIncidentsPersonalizedItems];
  }

  return cachedIncidentsPersonalizedItems;
}

- (TrafficIncidentItemSource)init
{
  v10.receiver = self;
  v10.super_class = TrafficIncidentItemSource;
  v2 = [(TrafficIncidentItemSource *)&v10 init];
  if (v2)
  {
    v3 = +[TrafficIncidentsSourceManager sharedInstance];
    [v3 addObserver:v2];

    v4 = +[UIApplication sharedMapsDelegate];
    appSessionController = [v4 appSessionController];
    primaryPlatformController = [appSessionController primaryPlatformController];
    platformController = v2->_platformController;
    v2->_platformController = primaryPlatformController;

    [(PlatformController *)v2->_platformController registerObserver:v2];
    v8 = v2;
  }

  return v2;
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  sessionCopy = session;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10 & 1) != 0 || (isKindOfClass)
  {

    [(TrafficIncidentItemSource *)self incidentsSourceManagerDidUpdate];
  }
}

- (void)incidentsSourceManagerDidUpdate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A46B34;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dealloc
{
  v3 = +[TrafficIncidentsSourceManager sharedInstance];
  [v3 removeObserver:self];

  [(PlatformController *)self->_platformController unregisterObserver:self];
  v4.receiver = self;
  v4.super_class = TrafficIncidentItemSource;
  [(TrafficIncidentItemSource *)&v4 dealloc];
}

@end