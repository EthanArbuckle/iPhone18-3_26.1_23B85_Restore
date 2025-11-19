@interface TrafficIncidentItemSource
- (TrafficIncidentItemSource)init;
- (id)allItems;
- (void)dealloc;
- (void)incidentsSourceManagerDidUpdate;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
@end

@implementation TrafficIncidentItemSource

- (id)allItems
{
  v2 = [(PlatformController *)self->_platformController currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = &__NSArray0__struct;
  }

  else
  {
    v5 = +[TrafficIncidentsSourceManager sharedInstance];
    v4 = [v5 cachedIncidentsPersonalizedItems];
  }

  return v4;
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
    v5 = [v4 appSessionController];
    v6 = [v5 primaryPlatformController];
    platformController = v2->_platformController;
    v2->_platformController = v6;

    [(PlatformController *)v2->_platformController registerObserver:v2];
    v8 = v2;
  }

  return v2;
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v7 = a5;
  v8 = a4;
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