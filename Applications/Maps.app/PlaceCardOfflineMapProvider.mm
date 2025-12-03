@interface PlaceCardOfflineMapProvider
- (NSProgress)downloadProgress;
- (PlaceCardOfflineMapProvider)initWithMapItem:(id)item;
- (int64_t)downloadState;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setSubscriptionInfo:(id)info;
- (void)subscriptionInfosDidChange:(id)change;
@end

@implementation PlaceCardOfflineMapProvider

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_101934E30 != context)
  {
    goto LABEL_8;
  }

  subscriptionInfo = [(PlaceCardOfflineMapProvider *)self subscriptionInfo];
  state = [subscriptionInfo state];
  v15 = state;
  if (state != objectCopy)
  {

LABEL_8:
    v17.receiver = self;
    v17.super_class = PlaceCardOfflineMapProvider;
    [(PlaceCardOfflineMapProvider *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_9;
  }

  if (qword_10195EEC8 != -1)
  {
    dispatch_once(&qword_10195EEC8, &stru_101650A10);
  }

  v16 = [qword_10195EED0 containsObject:pathCopy];

  if (!v16)
  {
    goto LABEL_8;
  }

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CDD384;
  block[3] = &unk_101661340;
  objc_copyWeak(&v19, &location);
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
LABEL_9:
}

- (void)subscriptionInfosDidChange:(id)change
{
  v4 = +[MapsOfflineUIHelper sharedHelper];
  mapItem = [(PlaceCardOfflineMapProvider *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  offlineDownloadRegion = [_geoMapItem offlineDownloadRegion];
  v8 = [v4 subscriptionInfoForRegion:offlineDownloadRegion];
  [(PlaceCardOfflineMapProvider *)self setSubscriptionInfo:v8];

  observers = self->_observers;

  [(GEOObserverHashTable *)observers offlineMapProviderUpdated:self];
}

- (NSProgress)downloadProgress
{
  subscriptionInfo = [(PlaceCardOfflineMapProvider *)self subscriptionInfo];
  state = [subscriptionInfo state];
  downloadProgress = [state downloadProgress];

  return downloadProgress;
}

- (int64_t)downloadState
{
  state = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
  loadState = [state loadState];

  if ((loadState - 1) < 2)
  {
    return 5;
  }

  if (loadState == 3)
  {
    return 1;
  }

  if (loadState)
  {
    return 0;
  }

  state2 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
  downloadState = [state2 downloadState];

  if (downloadState >= 6)
  {
    return 0;
  }

  return qword_101215AF8[downloadState];
}

- (void)setSubscriptionInfo:(id)info
{
  infoCopy = info;
  subscriptionInfo = self->_subscriptionInfo;
  if (subscriptionInfo != infoCopy && ![(MapDataSubscriptionInfo *)subscriptionInfo isEqual:infoCopy])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = infoCopy;
    if (qword_10195EEC8 != -1)
    {
      dispatch_once(&qword_10195EEC8, &stru_101650A10);
    }

    v7 = qword_10195EED0;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          state = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
          [state removeObserver:self forKeyPath:v12 context:off_101934E30];
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_subscriptionInfo, info);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (qword_10195EEC8 != -1)
    {
      dispatch_once(&qword_10195EEC8, &stru_101650A10);
    }

    infoCopy = v21;
    v14 = qword_10195EED0;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * j);
          state2 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
          [state2 addObserver:self forKeyPath:v19 options:0 context:off_101934E30];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }
  }
}

- (void)dealloc
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  [v3 removeObserver:self];

  [(PlaceCardOfflineMapProvider *)self setSubscriptionInfo:0];
  v4.receiver = self;
  v4.super_class = PlaceCardOfflineMapProvider;
  [(PlaceCardOfflineMapProvider *)&v4 dealloc];
}

- (PlaceCardOfflineMapProvider)initWithMapItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = PlaceCardOfflineMapProvider;
  v6 = [(PlaceCardOfflineMapProvider *)&v16 init];
  if (v6)
  {
    v7 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MUOfflineMapProviderObserver queue:&_dispatch_main_q];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_mapItem, item);
    v9 = +[MapsOfflineUIHelper sharedHelper];
    [v9 addObserver:v6];

    v10 = +[MapsOfflineUIHelper sharedHelper];
    mapItem = [(PlaceCardOfflineMapProvider *)v6 mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    offlineDownloadRegion = [_geoMapItem offlineDownloadRegion];
    v14 = [v10 subscriptionInfoForRegion:offlineDownloadRegion];
    [(PlaceCardOfflineMapProvider *)v6 setSubscriptionInfo:v14];
  }

  return v6;
}

@end