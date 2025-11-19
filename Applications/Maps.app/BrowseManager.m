@interface BrowseManager
+ (BOOL)alreadyHasCategoriesForTraits:(id)a3;
+ (BOOL)traitsIsForCurrentLocationOnly:(id)a3;
+ (id)sharedContentCache:(id)a3;
+ (id)sharedManager;
+ (void)checkIfNearbyIsAvailableForTraits:(id)a3 completion:(id)a4;
+ (void)precacheCategoriesForCacheKey:(id)a3 withTraits:(id)a4 completion:(id)a5;
+ (void)prepareImagesForCacheKey:(id)a3 traits:(id)a4 completion:(id)a5;
+ (void)setCacheKey:(id)a3 writesToDisk:(BOOL)a4;
+ (void)updateMapRegionInTraits:(id)a3 withLocation:(id)a4;
- (BOOL)needsRefresh;
- (BOOL)sharesCacheWithManager:(id)a3;
- (BrowseImageManager)imageManager;
- (BrowseManager)initWithCacheKey:(id)a3;
- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate;
- (NSArray)cachedCategories;
- (id)cachedCategoriesForTraits:(id)a3;
- (id)cellImageForCategory:(id)a3;
- (id)searchForCategory:(id)a3 source:(int)a4 completion:(id)a5;
- (id)submitTicketForSearchForCategory:(id)a3 source:(int)a4 completion:(id)a5;
- (id)synchronousImageForCategory:(id)a3 scale:(double)a4 isCarplay:(BOOL)a5;
- (void)getBatchNearby;
- (void)getCategoriesFromSearchHome:(BOOL)a3 completion:(id)a4;
- (void)imageForCategory:(id)a3 scale:(double)a4 isCarplay:(BOOL)a5 resultHandler:(id)a6;
- (void)preCacheWithTraits:(id)a3;
- (void)readCategoriesFromDiskIfNeeded;
- (void)setCacheKey:(id)a3;
- (void)setImageManager:(id)a3;
- (void)setTraits:(id)a3;
- (void)setUserInterfaceDelegate:(id)a3;
- (void)submitBrowseUsageIfNeeded;
@end

@implementation BrowseManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B39C;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195E740 != -1)
  {
    dispatch_once(&qword_10195E740, block);
  }

  v2 = qword_10195E738;

  return v2;
}

- (BrowseImageManager)imageManager
{
  imageManager = self->_imageManager;
  if (!imageManager)
  {
    v4 = objc_opt_new();
    v5 = self->_imageManager;
    self->_imageManager = v4;

    [(BrowseImageManager *)self->_imageManager setBrowseManager:self];
    WeakRetained = objc_loadWeakRetained(&self->_userInterfaceDelegate);
    [(BrowseImageManager *)self->_imageManager setUserInterfaceDelegate:WeakRetained];

    imageManager = self->_imageManager;
  }

  return imageManager;
}

- (void)readCategoriesFromDiskIfNeeded
{
  v2 = [(BrowseManager *)self contentCache];
  [v2 readCategoriesFromDiskIfNeeded];
}

- (NSArray)cachedCategories
{
  v2 = [(BrowseManager *)self contentCache];
  v3 = [v2 categories];

  return v3;
}

- (void)getBatchNearby
{
  v3 = [(BrowseManager *)self contentCache];
  v4 = [v3 needsRefresh];

  if (v4)
  {
    v5 = [(BrowseManager *)self contentCache];
    [v5 setNeedsRefresh:0];

    v6 = [(BrowseManager *)self contentCache];
    [v6 updateCacheWithBlock:&stru_1016389E8];
  }
}

- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceDelegate);

  return WeakRetained;
}

- (void)submitBrowseUsageIfNeeded
{
  v4 = [(BrowseManager *)self cachedCategories];
  if ([v4 count])
  {
    v3 = [(BrowseManager *)self needToSendDisplayedUsage];

    if (v3)
    {
      [GEOAPPortal captureUserAction:17010 target:0 value:0];

      [(BrowseManager *)self setNeedToSendDisplayedUsage:0];
    }
  }

  else
  {
  }
}

- (id)cachedCategoriesForTraits:(id)a3
{
  [(BrowseManager *)self setTraits:a3];
  v4 = [(BrowseManager *)self contentCache];
  v5 = [v4 needsRefresh];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(BrowseManager *)self cachedCategories];
  }

  return v6;
}

- (void)getCategoriesFromSearchHome:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  self->_needToSendDisplayedUsage = 1;
  v7 = [(BrowseManager *)self contentCache];
  if ([v7 needsRefresh])
  {
  }

  else
  {
    v8 = [(BrowseManager *)self cachedCategories];
    v9 = [v8 count];

    if (v9)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100B2D16C;
      block[3] = &unk_101661090;
      block[4] = self;
      v24 = v6;
      dispatch_async(&_dispatch_main_q, block);

      goto LABEL_8;
    }
  }

  v10 = self->_requestCount + 1;
  self->_requestCount = v10;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = v10;
  v11 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v12 = [(BrowseManager *)self traits];
  v13 = [v11 updatedTraitsForCurrentGarageState:v12];
  [(BrowseManager *)self setTraits:v13];

  v14 = +[MKMapService sharedService];
  v15 = [(BrowseManager *)self traits];
  v16 = [v14 ticketForCategoryListWithTraits:v15 isFromNoQueryState:v4];

  v17 = sub_10008C23C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(BrowseManager *)self traits];
    *buf = 138412546;
    v26 = v18;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "The category request is made with the traits: %@ and ticket: %@", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100B2D1CC;
  v19[3] = &unk_1016389A8;
  v21 = v22;
  v19[4] = self;
  v20 = v6;
  [v16 submitWithHandler:v19 networkActivity:0];

  _Block_object_dispose(v22, 8);
LABEL_8:
}

- (void)preCacheWithTraits:(id)a3
{
  v4 = a3;
  [(BrowseManager *)self cacheKey];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B2D4FC;
  v13[3] = &unk_101661A40;
  v5 = v13[4] = self;
  v14 = v5;
  v6 = v4;
  v15 = v6;
  v7 = objc_retainBlock(v13);
  v8 = [(BrowseManager *)self cachedCategories];
  v9 = [v8 count];

  if (v9)
  {
    (v7[2])(v7);
  }

  else
  {
    v10 = objc_opt_class();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100B2D53C;
    v11[3] = &unk_10165F438;
    v12 = v7;
    [v10 precacheCategoriesForCacheKey:v5 withTraits:v6 completion:v11];
  }
}

- (void)setUserInterfaceDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_userInterfaceDelegate, v4);
  [(BrowseImageManager *)self->_imageManager setUserInterfaceDelegate:v4];
}

- (void)setTraits:(id)a3
{
  v4 = a3;
  v5 = [(BrowseManager *)self contentCache];
  [v5 setLatestTraits:v4];

  v9 = [(BrowseManager *)self contentCache];
  v6 = [v9 latestTraits];
  v7 = [v6 copy];
  traits = self->_traits;
  self->_traits = v7;
}

- (id)cellImageForCategory:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(BrowseManager *)self imageManager];
    v6 = [v5 transparentImageForCategory:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)needsRefresh
{
  v2 = [(BrowseManager *)self contentCache];
  v3 = [v2 needsRefresh];

  return v3;
}

- (id)submitTicketForSearchForCategory:(id)a3 source:(int)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(BrowseManager *)self traits];
  v10 = [v9 navigating];

  if (v10)
  {
    v11 = [NavigationRouteHistoryInfoProvider alloc];
    v12 = +[MNNavigationService sharedService];
    v13 = [(NavigationRouteHistoryInfoProvider *)v11 initWithNavigationService:v12];

    v31 = v8;
    v14 = +[MKMapService sharedService];
    [(NavigationRouteHistoryInfoProvider *)v13 originalWaypointRouteRepresentation];
    v15 = v32 = self;
    v16 = [(NavigationRouteHistoryInfoProvider *)v13 legacyRouteRepresentation];
    v17 = [(NavigationRouteHistoryInfoProvider *)v13 sessionState];
    v18 = [(NavigationRouteHistoryInfoProvider *)v13 routeId];
    v19 = [(NavigationRouteHistoryInfoProvider *)v13 routeAttributes];
    v20 = +[MKMapService searchMaxResults];
    v21 = [(BrowseManager *)v32 traits];
    LODWORD(v30) = v20;
    v22 = [v14 ticketForSearchAlongRouteWithCategory:v7 searchQuery:0 completionItem:0 originalWaypointRouteData:v15 zilchData:v16 sessionState:v17 routeId:v18 routeAttributes:v19 maxResults:v30 traits:v21 searchSessionData:0];

    v8 = v31;
    self = v32;
  }

  else
  {
    v13 = +[MKMapService sharedService];
    v23 = +[MKMapService searchMaxResults];
    v14 = [(BrowseManager *)self traits];
    v22 = [(NavigationRouteHistoryInfoProvider *)v13 ticketForCategory:v7 maxResults:v23 traits:v14 searchSessionData:0];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100B2D990;
  v33[3] = &unk_101638980;
  v37 = v8;
  v24 = v22;
  v34 = v24;
  v35 = self;
  v36 = v7;
  v25 = v7;
  v26 = v8;
  [v24 submitWithRefinedHandler:v33 networkActivity:0];
  v27 = v36;
  v28 = v24;

  return v24;
}

- (id)searchForCategory:(id)a3 source:(int)a4 completion:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  if (a5)
  {
    v9 = a5;
    v10 = [(BrowseManager *)self traits];
    [v10 setSource:v6];

    v11 = [(BrowseManager *)self contentCache];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100B2DD4C;
    v18[3] = &unk_101638958;
    v12 = v8;
    v19 = v12;
    [v11 updateCacheWithBlock:v18];

    v13 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
    v14 = [(BrowseManager *)self traits];
    v15 = [v13 updatedTraitsForCurrentGarageState:v14];
    [(BrowseManager *)self setTraits:v15];

    v16 = [(BrowseManager *)self submitTicketForSearchForCategory:v12 source:v6 completion:v9];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setImageManager:(id)a3
{
  v5 = a3;
  if (self->_imageManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_imageManager, a3);
    [(BrowseImageManager *)self->_imageManager setBrowseManager:self];
    v5 = v6;
  }
}

- (void)setCacheKey:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  cacheKey = self->_cacheKey;
  self->_cacheKey = v5;

  v7 = [objc_opt_class() sharedContentCache:v4];

  contentCache = self->_contentCache;
  self->_contentCache = v7;

  v9 = [(BrowseManagerContentCache *)self->_contentCache latestTraits];
  traits = self->_traits;
  self->_traits = v9;
}

- (BOOL)sharesCacheWithManager:(id)a3
{
  v4 = [a3 cacheKey];
  v5 = [(BrowseManager *)self cacheKey];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BrowseManager)initWithCacheKey:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = BrowseManager;
  v6 = [(BrowseManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheKey, a3);
    v8 = [objc_opt_class() sharedContentCache:v5];
    contentCache = v7->_contentCache;
    v7->_contentCache = v8;

    v10 = [(BrowseManagerContentCache *)v7->_contentCache latestTraits];
    traits = v7->_traits;
    v7->_traits = v10;

    v12 = +[NSHashTable weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v12;
  }

  return v7;
}

- (id)synchronousImageForCategory:(id)a3 scale:(double)a4 isCarplay:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(BrowseManager *)self imageManager];
  v10 = [(BrowseManager *)self traits];
  v11 = [v9 synchronousImageForCategory:v8 scale:v10 traits:v5 isCarplay:a4];

  return v11;
}

- (void)imageForCategory:(id)a3 scale:(double)a4 isCarplay:(BOOL)a5 resultHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  v13 = [(BrowseManager *)self imageManager];
  v12 = [(BrowseManager *)self traits];
  [v13 imageForCategory:v11 scale:v12 traits:v6 isCarplay:v10 resultHandler:a4];
}

+ (void)precacheCategoriesForCacheKey:(id)a3 withTraits:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 sharedContentCache:v8];
  [v11 readCategoriesFromDiskIfNeeded];
  v12 = [v11 categories];
  v13 = [v12 count];

  if (v13)
  {
    if (v10)
    {
      v10[2](v10, 1);
    }
  }

  else
  {
    v14 = [[BrowseManager alloc] initWithCacheKey:v8];
    [(BrowseManager *)v14 setTraits:v9];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100B2F290;
    v15[3] = &unk_10165EB78;
    v16 = v10;
    [(BrowseManager *)v14 getCategoriesWithCompletion:v15];
  }
}

+ (void)prepareImagesForCacheKey:(id)a3 traits:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = v9;
  v11 = [v9 hasCarHeadunitInteractionModel];
  v12 = 0.0;
  if (v11)
  {
    v13 = +[CarDisplayController sharedInstance];
    v14 = [v13 screenTraitCollection];
    [v14 displayScale];
    v12 = v15;
  }

  v16 = [a1 sharedContentCache:v8];
  [v16 readCategoriesFromDiskIfNeeded];
  v17 = [v16 categories];
  if ([v17 count])
  {
    v27 = v10;
    v28 = v8;
    v18 = dispatch_group_create();
    v19 = objc_alloc_init(BrowseImageManager);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = v17;
    obj = v17;
    v20 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v37;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v36 + 1) + 8 * i);
          dispatch_group_enter(v18);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100B2F590;
          v34[3] = &unk_1016519B0;
          v35 = v18;
          [(BrowseImageManager *)v19 imageForCategory:v24 scale:v30 traits:v11 isCarplay:v34 resultHandler:v12];
        }

        v21 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v21);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B2F598;
    block[3] = &unk_101661090;
    v32 = v19;
    v10 = v27;
    v33 = v27;
    v25 = v19;
    dispatch_group_notify(v18, &_dispatch_main_q, block);

    v8 = v28;
    v17 = v26;
  }
}

+ (void)updateMapRegionInTraits:(id)a3 withLocation:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 coordinate];
  v8 = v7;
  v10 = v9;
  if (__isnand() || __isinfd())
  {
    v11 = 0;
  }

  else
  {
    v20.latitude = v8;
    v20.longitude = v10;
    v13 = MKMapPointForCoordinate(v20);
    v14 = v13.y + -75.0;
    height = MKMapSizeWorld.height;
    if (v13.y + -75.0 >= 0.0)
    {
      v16 = v13.y + 75.0;
      if (v13.y + 75.0 > height)
      {
        v14 = height + -150.0;
      }
    }

    else
    {
      v16 = 150.0;
    }

    v17 = fmax(v14, 0.0);
    v11 = [[GEOMapRegion alloc] initWithMapRect:{v13.x + -75.0, v17, 150.0, fmin(v16, height) - v17}];
  }

  v18 = v11;
  [v6 setMapRegion:v11];
  v12 = [[GEOLocation alloc] initWithCLLocation:v5];

  [v6 setDeviceLocation:v12];
}

+ (void)checkIfNearbyIsAvailableForTraits:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100B2F8F4;
  v20[3] = &unk_1016589F8;
  v23 = a1;
  v8 = v6;
  v21 = v8;
  v9 = v7;
  v22 = v9;
  v10 = objc_retainBlock(v20);
  v11 = [v8 mapRegion];
  if (v11)
  {
  }

  else
  {
    v12 = [v8 deviceLocation];

    if (!v12)
    {
      v13 = +[MKLocationManager sharedLocationManager];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100B2FA7C;
      v15[3] = &unk_101638930;
      v17 = v9;
      v19 = a1;
      v16 = v8;
      v18 = v10;
      v14 = [v13 singleLocationUpdateWithDesiredAccuracy:v15 handler:kCLLocationAccuracyThreeKilometers timeout:30.0];

      [v14 start];
      goto LABEL_5;
    }
  }

  (v10[2])(v10);
LABEL_5:
}

+ (BOOL)alreadyHasCategoriesForTraits:(id)a3
{
  v4 = a3;
  v5 = [BrowseManager alloc];
  v6 = [a1 nearbyCacheKeyForTraits:v4];
  v7 = [(BrowseManager *)v5 initWithCacheKey:v6];

  v8 = [(BrowseManager *)v7 cachedCategoriesForTraits:v4];

  LOBYTE(v4) = [v8 count] != 0;
  return v4;
}

+ (BOOL)traitsIsForCurrentLocationOnly:(id)a3
{
  v3 = [a3 mapRegion];
  v4 = v3 == 0;

  return v4;
}

+ (void)setCacheKey:(id)a3 writesToDisk:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [objc_opt_class() sharedContentCache:v5];

  [v6 setWritesToDisk:v4];
}

+ (id)sharedContentCache:(id)a3
{
  v3 = a3;
  if (qword_10195E730 != -1)
  {
    dispatch_once(&qword_10195E730, &stru_1016388E0);
  }

  v4 = @"BrowseManagerDefaultContentCache";
  if (v3)
  {
    v4 = v3;
  }

  v5 = v4;
  v6 = [qword_10195E728 objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_opt_new();
    [v6 setNeedsRefresh:1];
    [v6 setDiskCachingKey:v3];
    [qword_10195E728 setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

@end