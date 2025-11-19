@interface PlaceCardOfflineMapProvider
- (NSProgress)downloadProgress;
- (PlaceCardOfflineMapProvider)initWithMapItem:(id)a3;
- (int64_t)downloadState;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setSubscriptionInfo:(id)a3;
- (void)subscriptionInfosDidChange:(id)a3;
@end

@implementation PlaceCardOfflineMapProvider

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_101934E30 != a6)
  {
    goto LABEL_8;
  }

  v13 = [(PlaceCardOfflineMapProvider *)self subscriptionInfo];
  v14 = [v13 state];
  v15 = v14;
  if (v14 != v11)
  {

LABEL_8:
    v17.receiver = self;
    v17.super_class = PlaceCardOfflineMapProvider;
    [(PlaceCardOfflineMapProvider *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_9;
  }

  if (qword_10195EEC8 != -1)
  {
    dispatch_once(&qword_10195EEC8, &stru_101650A10);
  }

  v16 = [qword_10195EED0 containsObject:v10];

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

- (void)subscriptionInfosDidChange:(id)a3
{
  v4 = +[MapsOfflineUIHelper sharedHelper];
  v5 = [(PlaceCardOfflineMapProvider *)self mapItem];
  v6 = [v5 _geoMapItem];
  v7 = [v6 offlineDownloadRegion];
  v8 = [v4 subscriptionInfoForRegion:v7];
  [(PlaceCardOfflineMapProvider *)self setSubscriptionInfo:v8];

  observers = self->_observers;

  [(GEOObserverHashTable *)observers offlineMapProviderUpdated:self];
}

- (NSProgress)downloadProgress
{
  v2 = [(PlaceCardOfflineMapProvider *)self subscriptionInfo];
  v3 = [v2 state];
  v4 = [v3 downloadProgress];

  return v4;
}

- (int64_t)downloadState
{
  v3 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
  v4 = [v3 loadState];

  if ((v4 - 1) < 2)
  {
    return 5;
  }

  if (v4 == 3)
  {
    return 1;
  }

  if (v4)
  {
    return 0;
  }

  v5 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
  v6 = [v5 downloadState];

  if (v6 >= 6)
  {
    return 0;
  }

  return qword_101215AF8[v6];
}

- (void)setSubscriptionInfo:(id)a3
{
  v5 = a3;
  subscriptionInfo = self->_subscriptionInfo;
  if (subscriptionInfo != v5 && ![(MapDataSubscriptionInfo *)subscriptionInfo isEqual:v5])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v5;
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
          v13 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
          [v13 removeObserver:self forKeyPath:v12 context:off_101934E30];
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->_subscriptionInfo, a3);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (qword_10195EEC8 != -1)
    {
      dispatch_once(&qword_10195EEC8, &stru_101650A10);
    }

    v5 = v21;
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
          v20 = [(MapDataSubscriptionInfo *)self->_subscriptionInfo state];
          [v20 addObserver:self forKeyPath:v19 options:0 context:off_101934E30];
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

- (PlaceCardOfflineMapProvider)initWithMapItem:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = PlaceCardOfflineMapProvider;
  v6 = [(PlaceCardOfflineMapProvider *)&v16 init];
  if (v6)
  {
    v7 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MUOfflineMapProviderObserver queue:&_dispatch_main_q];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_mapItem, a3);
    v9 = +[MapsOfflineUIHelper sharedHelper];
    [v9 addObserver:v6];

    v10 = +[MapsOfflineUIHelper sharedHelper];
    v11 = [(PlaceCardOfflineMapProvider *)v6 mapItem];
    v12 = [v11 _geoMapItem];
    v13 = [v12 offlineDownloadRegion];
    v14 = [v10 subscriptionInfoForRegion:v13];
    [(PlaceCardOfflineMapProvider *)v6 setSubscriptionInfo:v14];
  }

  return v6;
}

@end