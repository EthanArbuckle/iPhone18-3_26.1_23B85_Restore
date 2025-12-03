@interface NearbyTransitFeatureDiscoverySource
- (BOOL)_isUserEligibleForNotification;
- (BOOL)_shouldShowNearbyTransitBanner;
- (BOOL)hasDismissedNotificationRecently;
- (BOOL)hasUserIgnoredTipTooMuch;
- (GEOObserverHashTable)observers;
- (NearbyTransitFeatureDiscoverySource)init;
- (NearbyTransitFeatureDiscoverySource)initWithDataStore:(id)store;
- (id)discoveryModelWithActionHandler:(id)handler displayHandler:(id)displayHandler cancelHandler:(id)cancelHandler;
- (unint64_t)_daysSinceDate:(id)date;
- (void)_checkForExistingNearbyTransitFavorite;
- (void)_updateAndNotifyObservers:(BOOL)observers;
- (void)_updateIsTransitUserHere;
- (void)_updateShouldShowFeature;
- (void)dismissedTipNotification;
- (void)setActive:(BOOL)active;
- (void)setAddedFavorite:(BOOL)favorite;
- (void)setHasInitialData:(BOOL)data;
- (void)setShowFeature:(BOOL)feature;
- (void)setTransitUserHere:(BOOL)here;
- (void)updateFeatureAvailabilityIfNecessary;
@end

@implementation NearbyTransitFeatureDiscoverySource

- (void)updateFeatureAvailabilityIfNecessary
{
  if (self->_active)
  {
    if ([(NearbyTransitFeatureDiscoverySource *)self _isUserEligibleForNotification])
    {

      [(NearbyTransitFeatureDiscoverySource *)self _updateIsTransitUserHere];
    }
  }

  else
  {
    v4 = sub_10005F62C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = v5;
      v7 = NSStringFromSelector(a2);
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ %@: Exiting early since the source is inactive", &v8, 0x16u);
    }
  }
}

- (BOOL)_isUserEligibleForNotification
{
  hasInitialData = [(NearbyTransitFeatureDiscoverySource *)self hasInitialData];
  if (hasInitialData)
  {
    dataStore = [(NearbyTransitFeatureDiscoverySource *)self dataStore];
    hasUserEverAddedFavorite = [dataStore hasUserEverAddedFavorite];

    if (hasUserEverAddedFavorite)
    {
      v7 = sub_10005F62C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = v8;
        v10 = NSStringFromSelector(a2);
        v15 = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v10;
        v11 = "%@ %@: _isUserEligibleForNotification: user either currently has or previously had the favorite";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v11, &v15, 0x16u);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if ([(NearbyTransitFeatureDiscoverySource *)self hasDismissedNotificationRecently])
    {
      v7 = sub_10005F62C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v9 = v12;
        v10 = NSStringFromSelector(a2);
        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v10;
        v11 = "%@ %@: _isUserEligibleForNotification: tip was dismissed too recently";
        goto LABEL_11;
      }

LABEL_12:

      LOBYTE(hasInitialData) = 0;
      return hasInitialData;
    }

    if ([(NearbyTransitFeatureDiscoverySource *)self hasUserIgnoredTipTooMuch])
    {
      v7 = sub_10005F62C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v9 = v13;
        v10 = NSStringFromSelector(a2);
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v10;
        v11 = "%@ %@: _isUserEligibleForNotification: tip has been displayed too much with no user activity";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    LOBYTE(hasInitialData) = 1;
  }

  return hasInitialData;
}

- (void)_checkForExistingNearbyTransitFavorite
{
  dataStore = [(NearbyTransitFeatureDiscoverySource *)self dataStore];
  hasUserEverAddedFavorite = [dataStore hasUserEverAddedFavorite];

  if (hasUserEverAddedFavorite)
  {
    [(NearbyTransitFeatureDiscoverySource *)self setAddedFavorite:1];
  }

  else
  {
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    hasInitialData = [v5 hasInitialData];

    if (!hasInitialData)
    {
      return;
    }

    v7 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    -[NearbyTransitFeatureDiscoverySource setAddedFavorite:](self, "setAddedFavorite:", [v7 hasShortcutForNearbyTransit]);
  }

  [(NearbyTransitFeatureDiscoverySource *)self setHasInitialData:1];
}

- (void)_updateShouldShowFeature
{
  _shouldShowNearbyTransitBanner = [(NearbyTransitFeatureDiscoverySource *)self _shouldShowNearbyTransitBanner];

  [(NearbyTransitFeatureDiscoverySource *)self setShowFeature:_shouldShowNearbyTransitBanner];
}

- (BOOL)_shouldShowNearbyTransitBanner
{
  _isUserEligibleForNotification = [(NearbyTransitFeatureDiscoverySource *)self _isUserEligibleForNotification];
  if (_isUserEligibleForNotification)
  {
    if ([(NearbyTransitFeatureDiscoverySource *)self isTransitUserHere])
    {
      LOBYTE(_isUserEligibleForNotification) = 1;
    }

    else
    {

      LOBYTE(_isUserEligibleForNotification) = [(NearbyTransitFeatureDiscoverySource *)self shouldForceTransitUser];
    }
  }

  return _isUserEligibleForNotification;
}

- (BOOL)hasDismissedNotificationRecently
{
  dataStore = [(NearbyTransitFeatureDiscoverySource *)self dataStore];
  numberOfTimesDismissed = [dataStore numberOfTimesDismissed];

  if (!numberOfTimesDismissed)
  {
    return 0;
  }

  if (numberOfTimesDismissed >= GEOConfigGetUInteger())
  {
    return 1;
  }

  dataStore2 = [(NearbyTransitFeatureDiscoverySource *)self dataStore];
  lastDismissedDate = [dataStore2 lastDismissedDate];

  if (lastDismissedDate)
  {
    v7 = [(NearbyTransitFeatureDiscoverySource *)self _daysSinceDate:lastDismissedDate];
    v8 = v7 < GEOConfigGetUInteger();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasUserIgnoredTipTooMuch
{
  if ([(NearbyTransitFeatureDiscoverySource *)self hasRecordedSession])
  {
    return 0;
  }

  dataStore = [(NearbyTransitFeatureDiscoverySource *)self dataStore];
  hasUserEverAddedFavorite = [dataStore hasUserEverAddedFavorite];

  if (hasUserEverAddedFavorite)
  {
    return 1;
  }

  dataStore2 = [(NearbyTransitFeatureDiscoverySource *)self dataStore];
  numberOfTimesDismissed = [dataStore2 numberOfTimesDismissed];

  if (numberOfTimesDismissed)
  {
    return 0;
  }

  dataStore3 = [(NearbyTransitFeatureDiscoverySource *)self dataStore];
  numberOfSessionsShown = [dataStore3 numberOfSessionsShown];

  UInteger = GEOConfigGetUInteger();
  dataStore4 = [(NearbyTransitFeatureDiscoverySource *)self dataStore];
  initialTipDisplayDate = [dataStore4 initialTipDisplayDate];

  if (initialTipDisplayDate)
  {
    v14 = [(NearbyTransitFeatureDiscoverySource *)self _daysSinceDate:initialTipDisplayDate];
    v5 = v14 > GEOConfigGetUInteger() && numberOfSessionsShown > UInteger;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NearbyTransitFeatureDiscoverySource)init
{
  v3 = objc_alloc_init(NearbyTransitFeatureDiscoveryDataStore);
  v4 = [(NearbyTransitFeatureDiscoverySource *)self initWithDataStore:v3];

  return v4;
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)_updateIsTransitUserHere
{
  objc_initWeak(&location, self);
  mapsSuggestionsHomeFeatureDiscoveryQueue = self->_mapsSuggestionsHomeFeatureDiscoveryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061AF4;
  block[3] = &unk_10165FBC0;
  objc_copyWeak(v6, &location);
  v6[1] = a2;
  dispatch_async(mapsSuggestionsHomeFeatureDiscoveryQueue, block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (id)discoveryModelWithActionHandler:(id)handler displayHandler:(id)displayHandler cancelHandler:(id)cancelHandler
{
  handlerCopy = handler;
  displayHandlerCopy = displayHandler;
  cancelHandlerCopy = cancelHandler;
  v12 = +[NSBundle mainBundle];
  v33 = [v12 localizedStringForKey:@"[Feature Discoverability] Nearby Transit title" value:@"localized string not found" table:0];

  v13 = +[NSBundle mainBundle];
  v32 = [v13 localizedStringForKey:@"[Feature Discoverability]  Nearby Transit  description" value:@"localized string not found" table:0];

  LODWORD(v13) = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v14 = +[NSBundle mainBundle];
  v15 = v14;
  if (v13)
  {
    v16 = @"[Feature Discoverability] Nearby Transit action - pin";
  }

  else
  {
    v16 = @"[Feature Discoverability] Nearby Transit action - add to favorites";
  }

  v31 = [v14 localizedStringForKey:v16 value:@"localized string not found" table:0];

  v30 = +[GEOFeatureStyleAttributes nearbyTransitStyleAttributes];
  v17 = +[UIScreen mainScreen];
  [v17 scale];
  v19 = v18;
  traitCollection = [v17 traitCollection];
  v21 = [traitCollection userInterfaceStyle] == 2;

  v22 = [MKIconManager imageForStyle:v30 size:4 forScale:0 format:v21 nightMode:v19];
  v23 = [FeatureDiscoveryModel alloc];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10068C35C;
  v40[3] = &unk_1016589F8;
  v41 = handlerCopy;
  v42 = a2;
  v40[4] = self;
  v36 = a2;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10068C46C;
  v37[3] = &unk_1016589F8;
  v38 = displayHandlerCopy;
  v39 = a2;
  v37[4] = self;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10068C5A0;
  v34[3] = &unk_1016589F8;
  v34[4] = self;
  v35 = cancelHandlerCopy;
  v24 = cancelHandlerCopy;
  v25 = displayHandlerCopy;
  v26 = handlerCopy;
  LOBYTE(v29) = 0;
  v27 = [(FeatureDiscoveryModel *)v23 initWithImage:v22 title:v33 subtitle:v32 actionTitle:v31 actionHandler:v40 bodyTapHandler:0 displayedHandler:v37 dismissHandler:v34 disableAffordanceAfterAction:v29];

  return v27;
}

- (void)dismissedTipNotification
{
  dataStore = [(NearbyTransitFeatureDiscoverySource *)self dataStore];
  [dataStore userDismissedTip];

  [(NearbyTransitFeatureDiscoverySource *)self _updateShouldShowFeature];
}

- (unint64_t)_daysSinceDate:(id)date
{
  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSDate date];
  v6 = [v4 components:16 fromDate:dateCopy toDate:v5 options:0];

  v7 = [v6 day];
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  return v8;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    [(NearbyTransitFeatureDiscoverySource *)self updateFeatureAvailabilityIfNecessary];
    v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
    v6 = v5;
    if (activeCopy)
    {
      [v5 registerObserver:self];

      [(NearbyTransitFeatureDiscoverySource *)self _checkForExistingNearbyTransitFavorite];
    }

    else
    {
      [v5 unregisterObserver:self];
    }
  }
}

- (void)setHasInitialData:(BOOL)data
{
  if (self->_hasInitialData != data)
  {
    self->_hasInitialData = data;
    [(NearbyTransitFeatureDiscoverySource *)self _updateShouldShowFeature];
    [(NearbyTransitFeatureDiscoverySource *)self updateFeatureAvailabilityIfNecessary];

    [(NearbyTransitFeatureDiscoverySource *)self _updateAndNotifyObservers:1];
  }
}

- (void)setTransitUserHere:(BOOL)here
{
  if (self->_transitUserHere != here)
  {
    self->_transitUserHere = here;
    [(NearbyTransitFeatureDiscoverySource *)self _updateShouldShowFeature];
  }
}

- (void)setAddedFavorite:(BOOL)favorite
{
  if (self->_addedFavorite != favorite)
  {
    self->_addedFavorite = favorite;
    if (favorite)
    {
      [(NearbyTransitFeatureDiscoveryDataStore *)self->_dataStore setUserEverAddedFavorite:1];
      v5 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
      [v5 unregisterObserver:self];
    }

    [(NearbyTransitFeatureDiscoverySource *)self _updateShouldShowFeature];
  }
}

- (void)setShowFeature:(BOOL)feature
{
  if (self->_showFeature != feature)
  {
    self->_showFeature = feature;
    [(NearbyTransitFeatureDiscoverySource *)self _updateAndNotifyObservers:1];
  }
}

- (void)_updateAndNotifyObservers:(BOOL)observers
{
  if (self->_active && observers)
  {
    [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
  }
}

- (NearbyTransitFeatureDiscoverySource)initWithDataStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = NearbyTransitFeatureDiscoverySource;
  v6 = [(NearbyTransitFeatureDiscoverySource *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.Maps.home.mapsSuggestions", v7);
    mapsSuggestionsHomeFeatureDiscoveryQueue = v6->_mapsSuggestionsHomeFeatureDiscoveryQueue;
    v6->_mapsSuggestionsHomeFeatureDiscoveryQueue = v8;

    objc_storeStrong(&v6->_dataStore, store);
    v6->_addedFavorite = [(NearbyTransitFeatureDiscoveryDataStore *)v6->_dataStore hasUserEverAddedFavorite];
    v6->_showFeature = 0;
    v6->_hasInitialData = [(NearbyTransitFeatureDiscoveryDataStore *)v6->_dataStore hasUserEverAddedFavorite];
    v10 = +[GEOPlatform sharedPlatform];
    LODWORD(v7) = [v10 isInternalInstall];

    if (v7)
    {
      v11 = +[NSUserDefaults standardUserDefaults];
      v6->_shouldForceTransitUser = [v11 BOOLForKey:@"__internal__NearbyTransitDebugForceTransitUser"];
    }

    else
    {
      v6->_shouldForceTransitUser = 0;
    }
  }

  return v6;
}

@end