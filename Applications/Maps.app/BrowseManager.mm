@interface BrowseManager
+ (BOOL)alreadyHasCategoriesForTraits:(id)traits;
+ (BOOL)traitsIsForCurrentLocationOnly:(id)only;
+ (id)sharedContentCache:(id)cache;
+ (id)sharedManager;
+ (void)checkIfNearbyIsAvailableForTraits:(id)traits completion:(id)completion;
+ (void)precacheCategoriesForCacheKey:(id)key withTraits:(id)traits completion:(id)completion;
+ (void)prepareImagesForCacheKey:(id)key traits:(id)traits completion:(id)completion;
+ (void)setCacheKey:(id)key writesToDisk:(BOOL)disk;
+ (void)updateMapRegionInTraits:(id)traits withLocation:(id)location;
- (BOOL)needsRefresh;
- (BOOL)sharesCacheWithManager:(id)manager;
- (BrowseImageManager)imageManager;
- (BrowseManager)initWithCacheKey:(id)key;
- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate;
- (NSArray)cachedCategories;
- (id)cachedCategoriesForTraits:(id)traits;
- (id)cellImageForCategory:(id)category;
- (id)searchForCategory:(id)category source:(int)source completion:(id)completion;
- (id)submitTicketForSearchForCategory:(id)category source:(int)source completion:(id)completion;
- (id)synchronousImageForCategory:(id)category scale:(double)scale isCarplay:(BOOL)carplay;
- (void)getBatchNearby;
- (void)getCategoriesFromSearchHome:(BOOL)home completion:(id)completion;
- (void)imageForCategory:(id)category scale:(double)scale isCarplay:(BOOL)carplay resultHandler:(id)handler;
- (void)preCacheWithTraits:(id)traits;
- (void)readCategoriesFromDiskIfNeeded;
- (void)setCacheKey:(id)key;
- (void)setImageManager:(id)manager;
- (void)setTraits:(id)traits;
- (void)setUserInterfaceDelegate:(id)delegate;
- (void)submitBrowseUsageIfNeeded;
@end

@implementation BrowseManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B39C;
  block[3] = &unk_1016611D0;
  block[4] = self;
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
  contentCache = [(BrowseManager *)self contentCache];
  [contentCache readCategoriesFromDiskIfNeeded];
}

- (NSArray)cachedCategories
{
  contentCache = [(BrowseManager *)self contentCache];
  categories = [contentCache categories];

  return categories;
}

- (void)getBatchNearby
{
  contentCache = [(BrowseManager *)self contentCache];
  needsRefresh = [contentCache needsRefresh];

  if (needsRefresh)
  {
    contentCache2 = [(BrowseManager *)self contentCache];
    [contentCache2 setNeedsRefresh:0];

    contentCache3 = [(BrowseManager *)self contentCache];
    [contentCache3 updateCacheWithBlock:&stru_1016389E8];
  }
}

- (MapsUIImageCacheUserInterfaceDelegate)userInterfaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userInterfaceDelegate);

  return WeakRetained;
}

- (void)submitBrowseUsageIfNeeded
{
  cachedCategories = [(BrowseManager *)self cachedCategories];
  if ([cachedCategories count])
  {
    needToSendDisplayedUsage = [(BrowseManager *)self needToSendDisplayedUsage];

    if (needToSendDisplayedUsage)
    {
      [GEOAPPortal captureUserAction:17010 target:0 value:0];

      [(BrowseManager *)self setNeedToSendDisplayedUsage:0];
    }
  }

  else
  {
  }
}

- (id)cachedCategoriesForTraits:(id)traits
{
  [(BrowseManager *)self setTraits:traits];
  contentCache = [(BrowseManager *)self contentCache];
  needsRefresh = [contentCache needsRefresh];

  if (needsRefresh)
  {
    cachedCategories = 0;
  }

  else
  {
    cachedCategories = [(BrowseManager *)self cachedCategories];
  }

  return cachedCategories;
}

- (void)getCategoriesFromSearchHome:(BOOL)home completion:(id)completion
{
  homeCopy = home;
  completionCopy = completion;
  self->_needToSendDisplayedUsage = 1;
  contentCache = [(BrowseManager *)self contentCache];
  if ([contentCache needsRefresh])
  {
  }

  else
  {
    cachedCategories = [(BrowseManager *)self cachedCategories];
    v9 = [cachedCategories count];

    if (v9)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100B2D16C;
      block[3] = &unk_101661090;
      block[4] = self;
      v24 = completionCopy;
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
  traits = [(BrowseManager *)self traits];
  v13 = [v11 updatedTraitsForCurrentGarageState:traits];
  [(BrowseManager *)self setTraits:v13];

  v14 = +[MKMapService sharedService];
  traits2 = [(BrowseManager *)self traits];
  v16 = [v14 ticketForCategoryListWithTraits:traits2 isFromNoQueryState:homeCopy];

  v17 = sub_10008C23C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    traits3 = [(BrowseManager *)self traits];
    *buf = 138412546;
    v26 = traits3;
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
  v20 = completionCopy;
  [v16 submitWithHandler:v19 networkActivity:0];

  _Block_object_dispose(v22, 8);
LABEL_8:
}

- (void)preCacheWithTraits:(id)traits
{
  traitsCopy = traits;
  [(BrowseManager *)self cacheKey];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B2D4FC;
  v13[3] = &unk_101661A40;
  v5 = v13[4] = self;
  v14 = v5;
  v6 = traitsCopy;
  v15 = v6;
  v7 = objc_retainBlock(v13);
  cachedCategories = [(BrowseManager *)self cachedCategories];
  v9 = [cachedCategories count];

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

- (void)setUserInterfaceDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_userInterfaceDelegate, delegateCopy);
  [(BrowseImageManager *)self->_imageManager setUserInterfaceDelegate:delegateCopy];
}

- (void)setTraits:(id)traits
{
  traitsCopy = traits;
  contentCache = [(BrowseManager *)self contentCache];
  [contentCache setLatestTraits:traitsCopy];

  contentCache2 = [(BrowseManager *)self contentCache];
  latestTraits = [contentCache2 latestTraits];
  v7 = [latestTraits copy];
  traits = self->_traits;
  self->_traits = v7;
}

- (id)cellImageForCategory:(id)category
{
  if (category)
  {
    categoryCopy = category;
    imageManager = [(BrowseManager *)self imageManager];
    v6 = [imageManager transparentImageForCategory:categoryCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)needsRefresh
{
  contentCache = [(BrowseManager *)self contentCache];
  needsRefresh = [contentCache needsRefresh];

  return needsRefresh;
}

- (id)submitTicketForSearchForCategory:(id)category source:(int)source completion:(id)completion
{
  categoryCopy = category;
  completionCopy = completion;
  traits = [(BrowseManager *)self traits];
  navigating = [traits navigating];

  if (navigating)
  {
    v11 = [NavigationRouteHistoryInfoProvider alloc];
    v12 = +[MNNavigationService sharedService];
    v13 = [(NavigationRouteHistoryInfoProvider *)v11 initWithNavigationService:v12];

    v31 = completionCopy;
    traits3 = +[MKMapService sharedService];
    [(NavigationRouteHistoryInfoProvider *)v13 originalWaypointRouteRepresentation];
    v15 = v32 = self;
    legacyRouteRepresentation = [(NavigationRouteHistoryInfoProvider *)v13 legacyRouteRepresentation];
    sessionState = [(NavigationRouteHistoryInfoProvider *)v13 sessionState];
    routeId = [(NavigationRouteHistoryInfoProvider *)v13 routeId];
    routeAttributes = [(NavigationRouteHistoryInfoProvider *)v13 routeAttributes];
    v20 = +[MKMapService searchMaxResults];
    traits2 = [(BrowseManager *)v32 traits];
    LODWORD(v30) = v20;
    v22 = [traits3 ticketForSearchAlongRouteWithCategory:categoryCopy searchQuery:0 completionItem:0 originalWaypointRouteData:v15 zilchData:legacyRouteRepresentation sessionState:sessionState routeId:routeId routeAttributes:routeAttributes maxResults:v30 traits:traits2 searchSessionData:0];

    completionCopy = v31;
    self = v32;
  }

  else
  {
    v13 = +[MKMapService sharedService];
    v23 = +[MKMapService searchMaxResults];
    traits3 = [(BrowseManager *)self traits];
    v22 = [(NavigationRouteHistoryInfoProvider *)v13 ticketForCategory:categoryCopy maxResults:v23 traits:traits3 searchSessionData:0];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100B2D990;
  v33[3] = &unk_101638980;
  v37 = completionCopy;
  v24 = v22;
  v34 = v24;
  selfCopy = self;
  v36 = categoryCopy;
  v25 = categoryCopy;
  v26 = completionCopy;
  [v24 submitWithRefinedHandler:v33 networkActivity:0];
  v27 = v36;
  v28 = v24;

  return v24;
}

- (id)searchForCategory:(id)category source:(int)source completion:(id)completion
{
  v6 = *&source;
  categoryCopy = category;
  if (completion)
  {
    completionCopy = completion;
    traits = [(BrowseManager *)self traits];
    [traits setSource:v6];

    contentCache = [(BrowseManager *)self contentCache];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100B2DD4C;
    v18[3] = &unk_101638958;
    v12 = categoryCopy;
    v19 = v12;
    [contentCache updateCacheWithBlock:v18];

    v13 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
    traits2 = [(BrowseManager *)self traits];
    v15 = [v13 updatedTraitsForCurrentGarageState:traits2];
    [(BrowseManager *)self setTraits:v15];

    v16 = [(BrowseManager *)self submitTicketForSearchForCategory:v12 source:v6 completion:completionCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setImageManager:(id)manager
{
  managerCopy = manager;
  if (self->_imageManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_imageManager, manager);
    [(BrowseImageManager *)self->_imageManager setBrowseManager:self];
    managerCopy = v6;
  }
}

- (void)setCacheKey:(id)key
{
  keyCopy = key;
  v5 = [keyCopy copy];
  cacheKey = self->_cacheKey;
  self->_cacheKey = v5;

  v7 = [objc_opt_class() sharedContentCache:keyCopy];

  contentCache = self->_contentCache;
  self->_contentCache = v7;

  latestTraits = [(BrowseManagerContentCache *)self->_contentCache latestTraits];
  traits = self->_traits;
  self->_traits = latestTraits;
}

- (BOOL)sharesCacheWithManager:(id)manager
{
  cacheKey = [manager cacheKey];
  cacheKey2 = [(BrowseManager *)self cacheKey];
  v6 = [cacheKey isEqualToString:cacheKey2];

  return v6;
}

- (BrowseManager)initWithCacheKey:(id)key
{
  keyCopy = key;
  v15.receiver = self;
  v15.super_class = BrowseManager;
  v6 = [(BrowseManager *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheKey, key);
    v8 = [objc_opt_class() sharedContentCache:keyCopy];
    contentCache = v7->_contentCache;
    v7->_contentCache = v8;

    latestTraits = [(BrowseManagerContentCache *)v7->_contentCache latestTraits];
    traits = v7->_traits;
    v7->_traits = latestTraits;

    v12 = +[NSHashTable weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v12;
  }

  return v7;
}

- (id)synchronousImageForCategory:(id)category scale:(double)scale isCarplay:(BOOL)carplay
{
  carplayCopy = carplay;
  categoryCopy = category;
  imageManager = [(BrowseManager *)self imageManager];
  traits = [(BrowseManager *)self traits];
  v11 = [imageManager synchronousImageForCategory:categoryCopy scale:traits traits:carplayCopy isCarplay:scale];

  return v11;
}

- (void)imageForCategory:(id)category scale:(double)scale isCarplay:(BOOL)carplay resultHandler:(id)handler
{
  carplayCopy = carplay;
  handlerCopy = handler;
  categoryCopy = category;
  imageManager = [(BrowseManager *)self imageManager];
  traits = [(BrowseManager *)self traits];
  [imageManager imageForCategory:categoryCopy scale:traits traits:carplayCopy isCarplay:handlerCopy resultHandler:scale];
}

+ (void)precacheCategoriesForCacheKey:(id)key withTraits:(id)traits completion:(id)completion
{
  keyCopy = key;
  traitsCopy = traits;
  completionCopy = completion;
  v11 = [self sharedContentCache:keyCopy];
  [v11 readCategoriesFromDiskIfNeeded];
  categories = [v11 categories];
  v13 = [categories count];

  if (v13)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v14 = [[BrowseManager alloc] initWithCacheKey:keyCopy];
    [(BrowseManager *)v14 setTraits:traitsCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100B2F290;
    v15[3] = &unk_10165EB78;
    v16 = completionCopy;
    [(BrowseManager *)v14 getCategoriesWithCompletion:v15];
  }
}

+ (void)prepareImagesForCacheKey:(id)key traits:(id)traits completion:(id)completion
{
  keyCopy = key;
  traitsCopy = traits;
  completionCopy = completion;
  v30 = traitsCopy;
  hasCarHeadunitInteractionModel = [traitsCopy hasCarHeadunitInteractionModel];
  v12 = 0.0;
  if (hasCarHeadunitInteractionModel)
  {
    v13 = +[CarDisplayController sharedInstance];
    screenTraitCollection = [v13 screenTraitCollection];
    [screenTraitCollection displayScale];
    v12 = v15;
  }

  v16 = [self sharedContentCache:keyCopy];
  [v16 readCategoriesFromDiskIfNeeded];
  categories = [v16 categories];
  if ([categories count])
  {
    v27 = completionCopy;
    v28 = keyCopy;
    v18 = dispatch_group_create();
    v19 = objc_alloc_init(BrowseImageManager);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = categories;
    obj = categories;
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
          [(BrowseImageManager *)v19 imageForCategory:v24 scale:v30 traits:hasCarHeadunitInteractionModel isCarplay:v34 resultHandler:v12];
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
    completionCopy = v27;
    v33 = v27;
    v25 = v19;
    dispatch_group_notify(v18, &_dispatch_main_q, block);

    keyCopy = v28;
    categories = v26;
  }
}

+ (void)updateMapRegionInTraits:(id)traits withLocation:(id)location
{
  locationCopy = location;
  traitsCopy = traits;
  [locationCopy coordinate];
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
  [traitsCopy setMapRegion:v11];
  v12 = [[GEOLocation alloc] initWithCLLocation:locationCopy];

  [traitsCopy setDeviceLocation:v12];
}

+ (void)checkIfNearbyIsAvailableForTraits:(id)traits completion:(id)completion
{
  traitsCopy = traits;
  completionCopy = completion;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100B2F8F4;
  v20[3] = &unk_1016589F8;
  selfCopy = self;
  v8 = traitsCopy;
  v21 = v8;
  v9 = completionCopy;
  v22 = v9;
  v10 = objc_retainBlock(v20);
  mapRegion = [v8 mapRegion];
  if (mapRegion)
  {
  }

  else
  {
    deviceLocation = [v8 deviceLocation];

    if (!deviceLocation)
    {
      v13 = +[MKLocationManager sharedLocationManager];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100B2FA7C;
      v15[3] = &unk_101638930;
      v17 = v9;
      selfCopy2 = self;
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

+ (BOOL)alreadyHasCategoriesForTraits:(id)traits
{
  traitsCopy = traits;
  v5 = [BrowseManager alloc];
  v6 = [self nearbyCacheKeyForTraits:traitsCopy];
  v7 = [(BrowseManager *)v5 initWithCacheKey:v6];

  v8 = [(BrowseManager *)v7 cachedCategoriesForTraits:traitsCopy];

  LOBYTE(traitsCopy) = [v8 count] != 0;
  return traitsCopy;
}

+ (BOOL)traitsIsForCurrentLocationOnly:(id)only
{
  mapRegion = [only mapRegion];
  v4 = mapRegion == 0;

  return v4;
}

+ (void)setCacheKey:(id)key writesToDisk:(BOOL)disk
{
  diskCopy = disk;
  keyCopy = key;
  v6 = [objc_opt_class() sharedContentCache:keyCopy];

  [v6 setWritesToDisk:diskCopy];
}

+ (id)sharedContentCache:(id)cache
{
  cacheCopy = cache;
  if (qword_10195E730 != -1)
  {
    dispatch_once(&qword_10195E730, &stru_1016388E0);
  }

  v4 = @"BrowseManagerDefaultContentCache";
  if (cacheCopy)
  {
    v4 = cacheCopy;
  }

  v5 = v4;
  v6 = [qword_10195E728 objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_opt_new();
    [v6 setNeedsRefresh:1];
    [v6 setDiskCachingKey:cacheCopy];
    [qword_10195E728 setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

@end