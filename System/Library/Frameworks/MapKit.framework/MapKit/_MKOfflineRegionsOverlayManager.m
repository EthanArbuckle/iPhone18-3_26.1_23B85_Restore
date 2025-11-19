@interface _MKOfflineRegionsOverlayManager
- (MKMapView)mapView;
- (_MKOfflineRegionsOverlayManager)initWithMapView:(id)a3;
- (id)annotationsInMapRect:(id)a3;
- (id)clusterStyleAttributes;
- (id)createDrawableForOverlay:(id)a3;
- (void)_fetchFullyLoadedSubscriptionsForState:(id)a3 completionHandler:(id)a4;
- (void)_setOverlay:(id)a3 customFeatures:(id)a4;
- (void)_update;
- (void)dealloc;
- (void)getClusterAnnotationTextForClusterFeatureCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5;
- (void)getClusterImageTextForClusterFeatureCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5;
- (void)setVisibility:(int64_t)a3;
@end

@implementation _MKOfflineRegionsOverlayManager

- (void)_update
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___MKOfflineRegionsOverlayManager__update__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)clusterStyleAttributes
{
  v2 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{5, 3, 6, 452, 0}];

  return v2;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (id)annotationsInMapRect:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_currentCustomFeatures;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 coordinate];
        GEOMapPointForCoordinate();
        if (GEOMapRectContainsPoint())
        {
          [v4 addObject:v10];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)getClusterImageTextForClusterFeatureCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5
{
  v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v8 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v10 setLocale:v8];

  [v10 setNumberStyle:1];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  *a4 = [v10 stringFromNumber:v9];

  *a5 = @"und";
}

- (void)getClusterAnnotationTextForClusterFeatureCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5
{
  if (a3)
  {
    v7 = a3;
    v8 = MEMORY[0x1E696AEC0];
    v9 = _MKLocalizedStringFromThisBundleFromTable(@"OFFLINE_REGION_CLUSTER_TITLE", @"Offline");
    *a4 = [v8 localizedStringWithFormat:v9, (v7 - 1)];

    *a5 = @"und";
  }
}

- (id)createDrawableForOverlay:(id)a3
{
  v3 = a3;
  v4 = [[_MKMaskingPolygonOverlayRenderer alloc] initWithMultiPolygon:v3];

  [(_MKMaskingPolygonOverlayRenderer *)v4 setStyle:1];

  return v4;
}

- (void)setVisibility:(int64_t)a3
{
  if (self->_visibility != a3)
  {
    self->_visibility = a3;
    [(_MKOfflineRegionsOverlayManager *)self _update];
  }
}

- (void)_setOverlay:(id)a3 customFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___MKOfflineRegionsOverlayManager__setOverlay_customFeatures___block_invoke;
  block[3] = &unk_1E76CCC28;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_fetchFullyLoadedSubscriptionsForState:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  subscriptionsManager = self->_subscriptionsManager;
  if (!subscriptionsManager)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A2190]);
    v8 = self->_subscriptionsManager;
    self->_subscriptionsManager = v7;

    subscriptionsManager = self->_subscriptionsManager;
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92___MKOfflineRegionsOverlayManager__fetchFullyLoadedSubscriptionsForState_completionHandler___block_invoke;
  v11[3] = &unk_1E76CA920;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  [(GEOMapDataSubscriptionManager *)subscriptionsManager fetchAllSubscriptionsWithCallbackQueue:queue completionHandler:v11];
}

- (void)dealloc
{
  fullyLoadedSubscriptionsChangedNotifyToken = self->_fullyLoadedSubscriptionsChangedNotifyToken;
  if (fullyLoadedSubscriptionsChangedNotifyToken != -1)
  {
    notify_cancel(fullyLoadedSubscriptionsChangedNotifyToken);
    self->_fullyLoadedSubscriptionsChangedNotifyToken = -1;
  }

  subscriptionsChangedNotifyToken = self->_subscriptionsChangedNotifyToken;
  if (subscriptionsChangedNotifyToken != -1)
  {
    notify_cancel(subscriptionsChangedNotifyToken);
    self->_subscriptionsChangedNotifyToken = -1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [WeakRetained _removeCustomFeatureDataSource:self];

  v6.receiver = self;
  v6.super_class = _MKOfflineRegionsOverlayManager;
  [(_MKOfflineRegionsOverlayManager *)&v6 dealloc];
}

- (_MKOfflineRegionsOverlayManager)initWithMapView:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = _MKOfflineRegionsOverlayManager;
  v5 = [(_MKOfflineRegionsOverlayManager *)&v28 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mapView, v4);
    v7 = [MEMORY[0x1E69A1B68] currentProcessAuditToken];
    v8 = [v7 offlineCohortId];
    offlineCohortId = v6->_offlineCohortId;
    v6->_offlineCohortId = v8;

    v10 = geo_dispatch_queue_create_with_workloop_qos();
    queue = v6->_queue;
    v6->_queue = v10;

    v12 = objc_alloc(MEMORY[0x1E69A22D8]);
    v13 = [v12 initWithProtocol:&unk_1F16E4EF8 queue:MEMORY[0x1E69E96A0]];
    customFeatureDataSourceObservers = v6->_customFeatureDataSourceObservers;
    v6->_customFeatureDataSourceObservers = v13;

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v6 selector:sel__update name:*MEMORY[0x1E69A16A8] object:0];

    objc_initWeak(&location, v6);
    v16 = *MEMORY[0x1E69A1658];
    v17 = v6->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __51___MKOfflineRegionsOverlayManager_initWithMapView___block_invoke;
    handler[3] = &unk_1E76C6EA0;
    objc_copyWeak(&v26, &location);
    notify_register_dispatch(v16, &v6->_fullyLoadedSubscriptionsChangedNotifyToken, v17, handler);
    v18 = *MEMORY[0x1E69A1660];
    v19 = v6->_queue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51___MKOfflineRegionsOverlayManager_initWithMapView___block_invoke_2;
    v23[3] = &unk_1E76C6EA0;
    objc_copyWeak(&v24, &location);
    notify_register_dispatch(v18, &v6->_subscriptionsChangedNotifyToken, v19, v23);
    WeakRetained = objc_loadWeakRetained(&v6->_mapView);
    [WeakRetained _addCustomFeatureDataSource:v6];

    [(_MKOfflineRegionsOverlayManager *)v6 _update];
    v21 = v6;
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v6;
}

@end