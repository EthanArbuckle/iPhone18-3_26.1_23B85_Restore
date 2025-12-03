@interface CarDisplayController
+ (BOOL)_isCarIntegrationSupported;
+ (BOOL)isCarPlayAvailable;
+ (CarDisplayController)sharedInstance;
+ (int64_t)enablingState;
+ (unint64_t)maximumListLength;
+ (void)_updateCarIntegrationState;
+ (void)launchPerformanceSetup;
- (BOOL)_shouldSendEvent:(id)event toCarDisplayWindow:(id)window;
- (BOOL)_validateTransitionFromState:(unint64_t)state toState:(unint64_t)toState;
- (BOOL)activelyOnScreen:(id *)screen;
- (BOOL)isAnyCarSceneHostingDrivingNavigation;
- (BOOL)isAnyCarSceneHostingNavigation;
- (BOOL)isCarAppSceneHostingNavigation;
- (BOOL)isChromeAvailable;
- (BOOL)isCurrentlyConnectedToAnyCarScene;
- (BOOL)isCurrentlyConnectedToCarAppScene;
- (CGSize)screenSize;
- (CarDisplayController)init;
- (CarDisplayDelegate)delegate;
- (CarMapsSuggestionsController)mapsSuggestionsController;
- (CarRouteGeniusManager)routeGeniusManager;
- (GEOCarInfo)connectedCarMainScreenInfo;
- (GuidanceObserver)guidanceObserver;
- (NSMapTable)connectedCarScreenInfos;
- (UITraitCollection)screenTraitCollection;
- (double)_activationDelay;
- (id)availableCarPlayScreen;
- (id)contextsForCurrentAppState;
- (id)presentInterruptionOfKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler;
- (id)processDirectionItem:(id)item userInfo:(id)info;
- (id)processSearchFieldItem:(id)item searchInfo:(id)info userInfo:(id)userInfo;
- (int64_t)connectionType;
- (int64_t)touchscreenFidelity;
- (unint64_t)primaryInteractionModel;
- (unint64_t)supportedInteractionModels;
- (void)_carDisplayDidFinishLaunching:(id)launching;
- (void)_carSessionControllerObserversDidChange:(id)change;
- (void)_carSessionController_updateNavigationHostingState;
- (void)_clearExistingTimeoutAssertionIfNeededAfterDelay:(double)delay;
- (void)_destroyChrome;
- (void)_didBecomeActive;
- (void)_didEnterBackground;
- (void)_externalDeviceUpdated;
- (void)_externalNavigationOwnershipUpdated:(id)updated;
- (void)_geoServiceDidUpdateCountryConfiguration:(id)configuration;
- (void)_iOSBasedPlaceCardDidDismiss:(id)dismiss;
- (void)_iOSBasedPlaceCardDidPresent:(id)present;
- (void)_idleTimeoutFired:(id)fired;
- (void)_mapsCar_rebuildContextsForCurrentAppState;
- (void)_mapsCar_scene:(id)car_scene willConnectToSession:(id)session options:(id)options;
- (void)_popIfTopModeIsInvalidAfterReconnection:(BOOL)reconnection;
- (void)_prepareChromeForFirstUse;
- (void)_prepareNearby;
- (void)_presentQueuedInterruptionIfNeeded;
- (void)_reactivateChromeAfterDelay:(double)delay;
- (void)_registerCarInfoForGEOLogging;
- (void)_removeQueuedInterruptionWithKey:(id)key animated:(BOOL)animated;
- (void)_repeatGuidanceForExternalDevice;
- (void)_screenDidConnect:(id)connect;
- (void)_screenDidDisconnect:(id)disconnect;
- (void)_searchSessionWillStart:(id)start;
- (void)_sendMapsSuggestionsSignals;
- (void)_setChromeSuppressed:(BOOL)suppressed;
- (void)_setNeedsScreenUpdate;
- (void)_setOverrideShouldSuppressChrome:(BOOL)chrome refreshScreenConnection:(BOOL)connection;
- (void)_setupCarPlayIfNeeded;
- (void)_setupClusterSuggestionControllerIfNeeded;
- (void)_startObservingSharedAppState;
- (void)_startTimingIdleTimeout;
- (void)_stopObservingSharedAppState;
- (void)_stopTimingIdleTimout;
- (void)_tearDownCarPlayIfNeeded;
- (void)_tearDownClusterSuggestionController;
- (void)_updateForCurrentScreen;
- (void)_updateIOHIDMonitoringAndNotification;
- (void)_updateLowFuelSuggestionState;
- (void)_willEnterForeground;
- (void)_willResignActive;
- (void)dealloc;
- (void)detourToMapItem:(id)item;
- (void)detourToWaypoint:(id)waypoint replacingWaypoint:(id)replacingWaypoint;
- (void)didFinishLaunchingSuspendedWithOptions:(id)options;
- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (void)observerDeliveryPolicyDidChange:(id)change;
- (void)prepareCarPlay;
- (void)processItem:(id)item userInfo:(id)info;
- (void)refreshedEVChargersReceieved:(id)receieved;
- (void)runNewScreenRefreshTasksIfNeeded;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)searchSessionDidChangeSearchFieldItem:(id)item;
- (void)searchSessionDidChangeSearchResults:(id)results;
- (void)searchSessionDidFail:(id)fail;
- (void)searchSessionDidInvalidate:(id)invalidate reason:(unint64_t)reason;
- (void)searchSessionWillPerformSearch:(id)search;
- (void)session:(id)session didUpdateConfiguration:(id)configuration;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setMapsSuggestionsController:(id)controller;
- (void)setScreen:(id)screen;
- (void)setState:(unint64_t)state;
- (void)setWasConnectedToAnyCarScene:(BOOL)scene;
- (void)updateForCurrentEnablingState;
- (void)updateMapsSuggestionsSignalForMapType:(int)type;
@end

@implementation CarDisplayController

+ (CarDisplayController)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000676C;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195F910 != -1)
  {
    dispatch_once(&qword_10195F910, block);
  }

  v2 = qword_10195F908;

  return v2;
}

+ (BOOL)isCarPlayAvailable
{
  if (qword_10195F920 != -1)
  {
    dispatch_once(&qword_10195F920, &stru_10165FB48);
  }

  if (byte_10195F918 != 1)
  {
    return 0;
  }

  return [self _isCarIntegrationSupported];
}

+ (BOOL)_isCarIntegrationSupported
{
  v2 = qword_10193CE88;
  if (qword_10193CE88 == -1)
  {
    [self _updateCarIntegrationState];
    v2 = qword_10193CE88;
  }

  return v2 == 1;
}

+ (void)_updateCarIntegrationState
{
  v2 = +[GEOCountryConfiguration sharedConfiguration];
  qword_10193CE88 = [v2 currentCountrySupportsCarIntegration];
}

- (CarDisplayController)init
{
  v13.receiver = self;
  v13.super_class = CarDisplayController;
  v2 = [(CarDisplayController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasRunNewScreenRefreshTasks = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_carDisplayDidFinishLaunching:" name:@"CarDisplayDidFinishLaunchingNotification" object:0];
    [v4 addObserver:v3 selector:"_carDisplayDidUpdateEnablingState:" name:@"CarDisplayDidUpdateEnablingStateNotification" object:0];
    [v4 addObserver:v3 selector:"_externalDeviceUpdated" name:@"MapsExternalDeviceUpdated" object:0];
    [v4 addObserver:v3 selector:"_geoServiceDidUpdateCountryConfiguration:" name:GEOCountryConfigurationProvidersDidChangeNotification object:0];
    v5 = +[_TtC4Maps22CarPlayMetadataUpdater mapsExternalNavigationOwnershipUpdatedNotification];
    [v4 addObserver:v3 selector:"_externalNavigationOwnershipUpdated:" name:v5 object:0];

    v6 = +[CarSessionController sharedInstance];
    [v4 addObserver:v3 selector:"_carSessionControllerObserversDidChange:" name:@"CarSessionControllerObserversDidChangeNotification" object:v6];

    [v4 addObserver:v3 selector:"_iOSBasedPlaceCardDidPresent:" name:@"IOSBasedPlaceCardDidPresent" object:0];
    [v4 addObserver:v3 selector:"_iOSBasedPlaceCardDidDismiss:" name:@"IOSBasedPlaceCardDidDismiss" object:0];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MSgSignalPackDonaterQueue", v7);
    signalPackQueue = v3->_signalPackQueue;
    v3->_signalPackQueue = v8;

    v10 = objc_opt_new();
    carSessionStatus = v3->_carSessionStatus;
    v3->_carSessionStatus = v10;

    [(CARSessionStatus *)v3->_carSessionStatus addSessionObserver:v3];
    v3->_lastMapTypeFromiOSChrome = 0;
  }

  return v3;
}

- (void)prepareCarPlay
{
  if (![(CarDisplayController *)self state])
  {
    [(CarDisplayController *)self updateForCurrentEnablingState];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E538;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateForCurrentEnablingState
{
  enablingState = [objc_opt_class() enablingState];
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = enablingState;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Updating for current enabling state (state:%ld)", &v6, 0xCu);
  }

  if (enablingState >= 2)
  {
    if (enablingState == 2)
    {
      [(CarDisplayController *)self _setOverrideShouldSuppressChrome:0 refreshScreenConnection:0];
      [(CarDisplayController *)self _tearDownCarPlayIfNeeded];
      goto LABEL_8;
    }

    if (enablingState != 3)
    {
      return;
    }
  }

  [(CarDisplayController *)self _setOverrideShouldSuppressChrome:enablingState == 1 refreshScreenConnection:[(CarDisplayController *)self state]!= 0];
  [(CarDisplayController *)self _setupCarPlayIfNeeded];
LABEL_8:
  delegate = [(CarDisplayController *)self delegate];
  [delegate carDisplayControllerDidUpdateNavigationVisibility:self];
}

+ (int64_t)enablingState
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 valueForKey:@"StarkDisplayEnablingState"];

  if (v3)
  {
    integerValue = [v3 integerValue];
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134217984;
      v8 = integerValue;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Overriding enablingState from defaults (state:%ld)", &v7, 0xCu);
    }
  }

  else if (+[CarDisplayController isCarPlayAvailable])
  {
    integerValue = 0;
  }

  else
  {
    integerValue = 2;
  }

  return integerValue;
}

- (void)_setupCarPlayIfNeeded
{
  if ([objc_opt_class() enablingState] == 2)
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v7 = 0;
      v4 = "Will not prepare CarPlay, disallowed.";
      v5 = &v7;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([(CarDisplayController *)self state])
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0;
      v4 = "Will not prepare CarPlay, already running/ready.";
      v5 = &v6;
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  [(CarDisplayController *)self setState:1];

  [(CarDisplayController *)self _setupClusterSuggestionControllerIfNeeded];
}

- (GuidanceObserver)guidanceObserver
{
  guidanceObserver = self->_guidanceObserver;
  if (!guidanceObserver)
  {
    v4 = objc_alloc_init(GuidanceObserver);
    v5 = self->_guidanceObserver;
    self->_guidanceObserver = v4;

    guidanceObserver = self->_guidanceObserver;
  }

  return guidanceObserver;
}

- (void)_setupClusterSuggestionControllerIfNeeded
{
  carSessionStatus = [(CarDisplayController *)self carSessionStatus];
  currentSession = [carSessionStatus currentSession];

  if (currentSession)
  {
    if (self->_clusterSuggestionController)
    {
      return;
    }

    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Car supports instrument cluster. Creating a suggestion controller.", v8, 2u);
    }

    v6 = objc_alloc_init(CarClusterSuggestionController);
    p_super = &self->_clusterSuggestionController->super;
    self->_clusterSuggestionController = v6;
  }

  else
  {
    p_super = sub_100006E1C();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_INFO, "No current CARSession. We're not creating a suggestion controller.", buf, 2u);
    }
  }
}

- (CarDisplayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isAnyCarSceneHostingNavigation
{
  isCurrentlyConnectedToAnyCarScene = [(CarDisplayController *)self isCurrentlyConnectedToAnyCarScene];
  if (isCurrentlyConnectedToAnyCarScene)
  {
    platformController = [(CarDisplayController *)self platformController];
    currentSession = [platformController currentSession];

    objc_opt_class();
    LOBYTE(platformController) = objc_opt_isKindOfClass();

    LOBYTE(isCurrentlyConnectedToAnyCarScene) = platformController & (currentSession != 0);
  }

  return isCurrentlyConnectedToAnyCarScene;
}

- (BOOL)isCurrentlyConnectedToAnyCarScene
{
  v3 = +[CarSessionController sharedInstance];
  sessionObservers = [v3 sessionObservers];
  v5 = [sessionObservers count];

  return (v5 != 1 || [(CarDisplayController *)self state]!= 1) && v5 != 0;
}

- (BOOL)isAnyCarSceneHostingDrivingNavigation
{
  isAnyCarSceneHostingNavigation = [(CarDisplayController *)self isAnyCarSceneHostingNavigation];
  if (isAnyCarSceneHostingNavigation)
  {
    platformController = [(CarDisplayController *)self platformController];
    currentSession = [platformController currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = currentSession;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    currentTransportType = [v7 currentTransportType];
    LOBYTE(isAnyCarSceneHostingNavigation) = currentTransportType == 1;
  }

  return isAnyCarSceneHostingNavigation;
}

+ (void)launchPerformanceSetup
{
  if (qword_10195F928 != -1)
  {
    dispatch_once(&qword_10195F928, &stru_10165FC98);
  }
}

- (UITraitCollection)screenTraitCollection
{
  screen = [(CarDisplayController *)self screen];

  if (screen)
  {
    [(CarDisplayController *)self screen];
  }

  else
  {
    +[UIScreen _carScreen];
  }
  v4 = ;
  traitCollection = [v4 traitCollection];

  return traitCollection;
}

- (BOOL)isCurrentlyConnectedToCarAppScene
{
  screen = [(CarDisplayController *)self screen];
  v3 = screen != 0;

  return v3;
}

- (void)_willResignActive
{
  windowScene = [(CarDisplayController *)self windowScene];

  if (windowScene)
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Notified main CarPlay scene will resign active", buf, 2u);
    }

    if ([(CarDisplayController *)self state]!= 2)
    {
      v5 = sub_100006E1C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Chrome is not running, do nothing", v6, 2u);
      }
    }
  }
}

- (BOOL)isCarAppSceneHostingNavigation
{
  isCurrentlyConnectedToCarAppScene = [(CarDisplayController *)self isCurrentlyConnectedToCarAppScene];
  if (isCurrentlyConnectedToCarAppScene)
  {
    platformController = [(CarDisplayController *)self platformController];
    currentSession = [platformController currentSession];

    objc_opt_class();
    LOBYTE(platformController) = objc_opt_isKindOfClass();

    LOBYTE(isCurrentlyConnectedToCarAppScene) = platformController & (currentSession != 0);
  }

  return isCurrentlyConnectedToCarAppScene;
}

- (CarRouteGeniusManager)routeGeniusManager
{
  routeGeniusManager = self->_routeGeniusManager;
  if (!routeGeniusManager)
  {
    v4 = objc_alloc_init(CarRouteGeniusManager);
    v5 = self->_routeGeniusManager;
    self->_routeGeniusManager = v4;

    routeGeniusManager = self->_routeGeniusManager;
  }

  return routeGeniusManager;
}

+ (unint64_t)maximumListLength
{
  v2 = +[MapsExternalDevice sharedInstance];
  limitLongLists = [v2 limitLongLists];

  if (limitLongLists)
  {
    return 12;
  }

  else
  {
    return -1;
  }
}

- (CGSize)screenSize
{
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FA5518;
  block[3] = &unk_1016605F8;
  block[4] = self;
  draftCopy = draft;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = draftCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_registerCarInfoForGEOLogging
{
  connectedCarMainScreenInfo = [(CarDisplayController *)self connectedCarMainScreenInfo];
  v3 = sub_100006E1C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (connectedCarMainScreenInfo)
  {
    if (v4)
    {
      v8 = 0;
      v5 = "Will register all CarPlay screen traits for analytics";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    *buf = 0;
    v5 = "Will register for analytics that we do not have a current CarPlay screen";
    v6 = buf;
    goto LABEL_6;
  }

  v7 = +[GEOAPSharedStateData sharedData];
  [v7 setCarPlayInfo:connectedCarMainScreenInfo];
}

- (void)_setOverrideShouldSuppressChrome:(BOOL)chrome refreshScreenConnection:(BOOL)connection
{
  connectionCopy = connection;
  chromeCopy = chrome;
  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"NO";
    if (chromeCopy)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
  }

  byte_10195F931 = chromeCopy;
  if (connectionCopy)
  {
    [(CarDisplayController *)self _setNeedsScreenUpdate];
  }
}

- (void)didFinishLaunchingSuspendedWithOptions:(id)options
{
  if ([(CarDisplayController *)self hasMapsSuggestionsController])
  {
    v4 = +[MapsExternalDevice sharedInstance];
    needsFuel = [v4 needsFuel];

    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = @"NO";
      if (needsFuel)
      {
        v7 = @"YES";
      }

      v8 = v7;
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "launched suspended, needsFuel=%@", &v10, 0xCu);
    }

    if (needsFuel)
    {
      mapsSuggestionsController = [(CarDisplayController *)self mapsSuggestionsController];
      [mapsSuggestionsController setHoldProcessAssertion:1];
    }
  }
}

- (void)_removeQueuedInterruptionWithKey:(id)key animated:(BOOL)animated
{
  keyCopy = key;
  v6 = [(NSUUID *)self->_queuedInterruptionKey isEqual:keyCopy];
  queuedInterruptionDismissalBlock = sub_100006E1C();
  v8 = os_log_type_enabled(queuedInterruptionDismissalBlock, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = keyCopy;
      _os_log_impl(&_mh_execute_header, queuedInterruptionDismissalBlock, OS_LOG_TYPE_DEFAULT, "Will remove queued interruption (key:%@)", &v14, 0xCu);
    }

    queuedInterruptionKey = self->_queuedInterruptionKey;
    self->_queuedInterruptionKey = 0;

    queuedInterruptionHandler = self->_queuedInterruptionHandler;
    self->_queuedInterruptionHandler = 0;

    queuedInterruptionUserInfo = self->_queuedInterruptionUserInfo;
    self->_queuedInterruptionKind = 0;
    self->_queuedInterruptionUserInfo = 0;

    if (self->_queuedInterruptionDismissalBlock)
    {
      v12 = sub_100006E1C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = keyCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will fire interruption's dismissal block (key:%@)", &v14, 0xCu);
      }

      (*(self->_queuedInterruptionDismissalBlock + 2))();
      queuedInterruptionDismissalBlock = self->_queuedInterruptionDismissalBlock;
    }

    else
    {
      queuedInterruptionDismissalBlock = 0;
    }

    self->_queuedInterruptionDismissalBlock = 0;
  }

  else if (v8)
  {
    v13 = self->_queuedInterruptionKey;
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = keyCopy;
    _os_log_impl(&_mh_execute_header, queuedInterruptionDismissalBlock, OS_LOG_TYPE_DEFAULT, "Will not remove queued interruption, (current key:%@, passed key:%@)", &v14, 0x16u);
  }
}

- (void)_presentQueuedInterruptionIfNeeded
{
  if (!self->_queuedInterruptionKey)
  {
    v4 = sub_100006E1C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v17 = "Will not present queued interruption, we don't have one";
    goto LABEL_11;
  }

  if (![(CarDisplayController *)self isChromeAvailable])
  {
    v4 = sub_100006E1C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v17 = "Will not present queued interruption, no chrome available";
LABEL_11:
    v18 = v4;
    v19 = 2;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_13;
  }

  queuedInterruptionKind = self->_queuedInterruptionKind;
  v4 = sub_100006E1C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!queuedInterruptionKind)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    queuedInterruptionKey = self->_queuedInterruptionKey;
    *buf = 138412290;
    v26 = queuedInterruptionKey;
    v17 = "Will not present queued interruption, it's already been presented (key:%@)";
    v18 = v4;
    v19 = 12;
    goto LABEL_12;
  }

  if (v5)
  {
    v6 = self->_queuedInterruptionKey;
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Will present queued interruption (key:%@)", buf, 0xCu);
  }

  v7 = self->_queuedInterruptionKey;
  objc_initWeak(buf, self);
  v8 = [self->_queuedInterruptionHandler copy];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100FA6898;
  v21[3] = &unk_10165FC78;
  objc_copyWeak(&v24, buf);
  v9 = v8;
  v23 = v9;
  v4 = v7;
  v22 = v4;
  v10 = objc_retainBlock(v21);
  chromeViewController = [(CarDisplayController *)self chromeViewController];
  v12 = [chromeViewController presentInterruptionOfKind:self->_queuedInterruptionKind userInfo:self->_queuedInterruptionUserInfo completionHandler:v10];
  v13 = [v12 copy];
  queuedInterruptionDismissalBlock = self->_queuedInterruptionDismissalBlock;
  self->_queuedInterruptionDismissalBlock = v13;

  self->_queuedInterruptionKind = 0;
  queuedInterruptionHandler = self->_queuedInterruptionHandler;
  self->_queuedInterruptionHandler = 0;

  queuedInterruptionUserInfo = self->_queuedInterruptionUserInfo;
  self->_queuedInterruptionUserInfo = 0;

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
LABEL_13:
}

- (id)presentInterruptionOfKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  if ([(CarDisplayController *)self isCurrentlyConnectedToCarAppScene]&& [(CarDisplayController *)self isChromeAvailable])
  {
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Will present interruption immediately in CarChromeViewController", buf, 2u);
    }

    chromeViewController = [(CarDisplayController *)self chromeViewController];
    v12 = [chromeViewController presentInterruptionOfKind:kind userInfo:infoCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = [handlerCopy copy];
    queuedInterruptionHandler = self->_queuedInterruptionHandler;
    self->_queuedInterruptionHandler = v13;

    v15 = [infoCopy copy];
    queuedInterruptionUserInfo = self->_queuedInterruptionUserInfo;
    self->_queuedInterruptionUserInfo = v15;

    self->_queuedInterruptionKind = kind;
    v17 = +[NSUUID UUID];
    objc_storeStrong(&self->_queuedInterruptionKey, v17);
    v18 = sub_100006E1C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Will queue interruption, chrome not available (key:%@)", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100FA6BD8;
    v21[3] = &unk_10165FC50;
    v22 = v17;
    v19 = v17;
    objc_copyWeak(&v23, buf);
    v12 = objc_retainBlock(v21);
    objc_destroyWeak(&v23);

    objc_destroyWeak(buf);
  }

  return v12;
}

- (void)_prepareNearby
{
  chromeViewController = [(CarDisplayController *)self chromeViewController];

  if (!chromeViewController)
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will prepare Nearby for CarPlay", v4, 2u);
    }

    +[CarSearchCategoriesModeController prepareNearby];
  }
}

- (void)_stopObservingSharedAppState
{
  if (self->_observingMapsAppState)
  {
    v11 = v2;
    v12 = v3;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will stop observing shared app state (SearchSession, PlatformController)", v10, 2u);
    }

    self->_observingMapsAppState = 0;
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:@"SearchSessionWillStart" object:0];

    v7 = +[MapsRadarController sharedInstance];
    [v7 removeAttachmentProvider:self];

    [(SearchSession *)self->_searchSession unregisterObserver:self];
    searchSession = self->_searchSession;
    self->_searchSession = 0;

    v9 = +[CarSessionController sharedInstance];
    [v9 removeObserver:self];
  }
}

- (void)_startObservingSharedAppState
{
  if (!self->_observingMapsAppState)
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will start observing shared app state (SearchSession, PlatformController)", v8, 2u);
    }

    self->_observingMapsAppState = 1;
    v4 = +[CarSessionController sharedInstance];
    [v4 addObserver:self];

    v5 = +[MapsRadarController sharedInstance];
    [v5 addAttachmentProvider:self];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_searchSessionWillStart:" name:@"SearchSessionWillStart" object:0];

    guidanceObserver = [(CarDisplayController *)self guidanceObserver];
  }
}

- (void)detourToWaypoint:(id)waypoint replacingWaypoint:(id)replacingWaypoint
{
  waypointCopy = waypoint;
  replacingWaypointCopy = replacingWaypoint;
  if ([(CarDisplayController *)self isCarAppSceneHostingNavigation])
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100FA7460;
    v33[3] = &unk_101661B18;
    v33[4] = self;
    v8 = objc_retainBlock(v33);
    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes())
    {
      platformController = [(CarDisplayController *)self platformController];
      currentNavigationSession = [platformController currentNavigationSession];
      waypointController = [currentNavigationSession waypointController];

      if (waypointController)
      {
        v12 = sub_100006E1C();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (replacingWaypointCopy)
        {
          if (v13)
          {
            name = [replacingWaypointCopy name];
            name2 = [waypointCopy name];
            *buf = 138412546;
            v35 = name;
            v36 = 2112;
            v37 = name2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[MPR] replacing waypoint %@ with %@", buf, 0x16u);
          }

          [waypointController replaceWaypoint:replacingWaypointCopy with:waypointCopy];
        }

        else
        {
          if (v13)
          {
            name3 = [waypointCopy name];
            *buf = 138412290;
            v35 = name3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[MPR] inserting new waypoint %@", buf, 0xCu);
          }

          [waypointController insertWaypoint:waypointCopy];
        }
      }

      else
      {
        v29 = sub_100006E1C();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Failed to access nav waypoint controller in CarDisplayController", buf, 2u);
        }
      }

      (v8[2])(v8);
    }

    else
    {
      v18 = sub_100006E1C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        name4 = [waypointCopy name];
        *buf = 138412290;
        v35 = name4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "MPR is not enabled, will replace destination with %@", buf, 0xCu);
      }

      v20 = +[MNNavigationService sharedService];
      [v20 updateDestination:waypointCopy];

      platformController2 = [(CarDisplayController *)self platformController];
      waypointController = [platformController2 auxiliaryTasksManager];

      routePlanningSessionRouteLoadedNotifier = [waypointController routePlanningSessionRouteLoadedNotifier];
      currentRouteHistoryEntry = [routePlanningSessionRouteLoadedNotifier currentRouteHistoryEntry];

      historyEntry = [currentRouteHistoryEntry historyEntry];
      v25 = historyEntry == 0;

      v26 = sub_100006E1C();
      v27 = v26;
      if (v25)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to interrupt route, because the history was nil", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          mapsSuggestionsController = [(CarDisplayController *)self mapsSuggestionsController];
          *buf = 138412546;
          v35 = currentRouteHistoryEntry;
          v36 = 2112;
          v37 = mapsSuggestionsController;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Will interrupt route with history entry: %@, hinting refresh on engine: %@.", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100FA7550;
        v31[3] = &unk_1016600B8;
        objc_copyWeak(&v32, buf);
        [currentRouteHistoryEntry setNavigationInterrupted:1 completion:v31];
        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
      }

      (v8[2])(v8);
    }
  }

  else
  {
    v16 = sub_100006E1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [waypointCopy shortDescription];
      *buf = 138412290;
      v35 = shortDescription;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Dropping detour request to mapItem: %@", buf, 0xCu);
    }
  }
}

- (void)detourToMapItem:(id)item
{
  itemCopy = item;
  _geoMapItem = [itemCopy _geoMapItem];
  v16 = [GEOMapItemStorage mapItemStorageForGEOMapItem:_geoMapItem];

  v6 = [[GEOComposedWaypoint alloc] initWithMapItem:v16];
  v7 = +[MNNavigationService sharedService];
  arrivalInfo = [v7 arrivalInfo];

  v9 = +[MNNavigationService sharedService];
  route = [v9 route];

  legs = [route legs];
  v12 = [legs objectAtIndex:{objc_msgSend(arrivalInfo, "legIndex")}];

  pointOfInterestCategory = [itemCopy pointOfInterestCategory];

  if ([pointOfInterestCategory isEqualToString:MKPointOfInterestCategoryEVCharger] && ((objc_msgSend(arrivalInfo, "isInArrivalState") & 1) != 0 || (objc_msgSend(arrivalInfo, "isInParkingState") & 1) != 0))
  {
    chargingStationInfo = [v12 chargingStationInfo];

    if (chargingStationInfo)
    {
      destination = [arrivalInfo destination];
      [(CarDisplayController *)self detourToWaypoint:v6 replacingWaypoint:destination];

      goto LABEL_8;
    }
  }

  else
  {
  }

  [(CarDisplayController *)self detourToWaypoint:v6];
LABEL_8:
}

- (void)_repeatGuidanceForExternalDevice
{
  v2 = +[MNNavigationService sharedService];
  isInNavigatingState = [v2 isInNavigatingState];

  v4 = sub_100006E1C();
  v5 = v4;
  if (isInNavigatingState)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Repeating current guidance for external device", buf, 2u);
    }

    v5 = +[MNNavigationService sharedService];
    [v5 repeatCurrentGuidance:0];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Asked to repeat current guidance, but guidance is not running", v6, 2u);
  }
}

- (void)_updateIOHIDMonitoringAndNotification
{
  isAnyCarSceneHostingNavigation = [(CarDisplayController *)self isAnyCarSceneHostingNavigation];
  externalDeviceRepeatGuidanceObserver = self->_externalDeviceRepeatGuidanceObserver;
  if (isAnyCarSceneHostingNavigation)
  {
    if (!externalDeviceRepeatGuidanceObserver)
    {
      objc_initWeak(location, self);
      v5 = sub_100006E1C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registering for External Device notifications to repeat current guidance", buf, 2u);
      }

      v6 = +[NSNotificationCenter defaultCenter];
      v7 = +[MapsExternalDevice sharedInstance];
      v8 = +[NSOperationQueue mainQueue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100FA7AE4;
      v16[3] = &unk_10165FBE8;
      objc_copyWeak(&v17, location);
      v9 = [v6 addObserverForName:@"MapsExternalDeviceRepeatNavigationInstructionNotification" object:v7 queue:v8 usingBlock:v16];
      v10 = self->_externalDeviceRepeatGuidanceObserver;
      self->_externalDeviceRepeatGuidanceObserver = v9;

      v11 = +[MapsExternalDevice sharedInstance];
      [v11 startMonitoringIOHIDRepeatCurrentGuidance];

      objc_destroyWeak(&v17);
      objc_destroyWeak(location);
    }
  }

  else if (externalDeviceRepeatGuidanceObserver)
  {
    v12 = sub_100006E1C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unregistering from External Device notifications to repeat current guidance", location, 2u);
    }

    v13 = +[MapsExternalDevice sharedInstance];
    [v13 stopMonitoringIOHIDRepeatCurrentGuidance];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 removeObserver:self->_externalDeviceRepeatGuidanceObserver];

    v15 = self->_externalDeviceRepeatGuidanceObserver;
    self->_externalDeviceRepeatGuidanceObserver = 0;
  }
}

- (id)processDirectionItem:(id)item userInfo:(id)info
{
  itemCopy = item;
  if (info)
  {
    v7 = [info mutableCopy];
  }

  else
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:1];
  }

  v8 = v7;
  [v7 setObject:&off_1016EAC28 forKeyedSubscript:@"DirectionsSessionInitiatorKey"];
  v9 = [v8 copy];
  chromeViewController = [(CarDisplayController *)self chromeViewController];
  currentTraits = [chromeViewController currentTraits];
  v12 = sub_100D506E0(itemCopy, currentTraits, 0, v9);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [NSString stringWithFormat:@"Created session was not a RoutePlanningSession"];
      v21 = 136316162;
      v22 = "[CarDisplayController processDirectionItem:userInfo:]";
      v23 = 2080;
      v24 = "CarDisplayController.m";
      v25 = 1024;
      v26 = 1702;
      v27 = 2080;
      v28 = "[routePlanningSession isKindOfClass:RoutePlanningSession.class]";
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v21, 0x30u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        v21 = 138412290;
        v22 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
      }
    }
  }

  platformController = [(CarDisplayController *)self platformController];
  currentSession = [platformController currentSession];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [platformController replaceCurrentSessionWithSession:v12];
  }

  else
  {
    [platformController pushSession:v12];
  }

  return v12;
}

- (void)_iOSBasedPlaceCardDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received notification of iOS place card dismissing", &v15, 2u);
  }

  object = [dismissCopy object];

  if (object && ([object platformController], v7 = objc_claimAutoreleasedReturnValue(), -[CarDisplayController platformController](self, "platformController"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
  {
    v12 = sub_100006E1C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      placeCardItem = [object placeCardItem];
      v15 = 138412290;
      v16 = placeCardItem;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Dismissing CarPlay place card to match iOS with place item %@", &v15, 0xCu);
    }

    v9 = +[CarChromeModeCoordinator sharedInstance];
    placeCardItem2 = [object placeCardItem];
    [v9 endPlaceCardWithItem:placeCardItem2];
  }

  else
  {
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      platformController = [object platformController];
      platformController2 = [(CarDisplayController *)self platformController];
      v15 = 138412802;
      v16 = object;
      v17 = 2112;
      v18 = platformController;
      v19 = 2112;
      v20 = platformController2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Synchronization info is either nil or platform controllers are not the same %@, %@, %@", &v15, 0x20u);
    }
  }
}

- (void)_iOSBasedPlaceCardDidPresent:(id)present
{
  presentCopy = present;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received notification of iOS place card presenting", &v15, 2u);
  }

  object = [presentCopy object];

  if (object && ([object platformController], v7 = objc_claimAutoreleasedReturnValue(), -[CarDisplayController platformController](self, "platformController"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
  {
    v12 = sub_100006E1C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      placeCardItem = [object placeCardItem];
      v15 = 138412290;
      v16 = placeCardItem;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Displaying CarPlay place card to match iOS with place item %@", &v15, 0xCu);
    }

    v9 = +[CarChromeModeCoordinator sharedInstance];
    placeCardItem2 = [object placeCardItem];
    [v9 displayPlaceCardWithPlaceCardItem:placeCardItem2 shouldNotify:0];
  }

  else
  {
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      platformController = [object platformController];
      platformController2 = [(CarDisplayController *)self platformController];
      v15 = 138412802;
      v16 = object;
      v17 = 2112;
      v18 = platformController;
      v19 = 2112;
      v20 = platformController2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Synchronization info is either nil or platform controllers are not the same %@, %@, %@", &v15, 0x20u);
    }
  }
}

- (void)searchSessionDidInvalidate:(id)invalidate reason:(unint64_t)reason
{
  invalidateCopy = invalidate;
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = invalidateCopy;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_10;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(SearchSession *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

LABEL_10:
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (self->_searchSession == invalidateCopy)
  {
    if ([(SearchSession *)invalidateCopy origin]!= 1)
    {
      v13 = +[MNNavigationService sharedService];
      isInNavigatingState = [v13 isInNavigatingState];

      if ((isInNavigatingState & 1) == 0)
      {
        v15 = +[CarChromeModeCoordinator sharedInstance];
        [v15 endSearchSession:invalidateCopy];
      }
    }

    searchSession = self->_searchSession;
    self->_searchSession = 0;
  }
}

- (void)searchSessionDidFail:(id)fail
{
  failCopy = fail;
  v5 = sub_100006E1C();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  v6 = failCopy;
  if (!v6)
  {
    v11 = @"<nil>";
    goto LABEL_10;
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 performSelector:"accessibilityIdentifier"];
    v10 = v9;
    if (v9 && ![v9 isEqualToString:v8])
    {
      v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

      goto LABEL_8;
    }
  }

  v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
  v12 = NSStringFromSelector(a2);
  lastError = [v6 lastError];
  *buf = 138412802;
  v22 = v11;
  v23 = 2112;
  v24 = v12;
  v25 = 2112;
  v26 = lastError;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ error=(%@)", buf, 0x20u);

LABEL_11:
  lastError2 = [failCopy lastError];
  domain = [lastError2 domain];
  v16 = GEOErrorDomain();
  v17 = [domain isEqualToString:v16];

  if (v17)
  {
    v18 = +[CarChromeModeCoordinator sharedInstance];
    [v18 displaySearchSession:failCopy];
  }

  else
  {
    v18 = +[UIApplication sharedMapsDelegate];
    lastError3 = [failCopy lastError];
    v20 = sub_100FA86E4(lastError3, 0);
    [v18 interruptApplicationWithKind:3 userInfo:v20 completionHandler:0];
  }
}

- (void)refreshedEVChargersReceieved:(id)receieved
{
  receievedCopy = receieved;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = receievedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did receive the search results to update the ev charger information. Results: %@", &v9, 0xCu);
  }

  v6 = +[CarChromeModeCoordinator sharedInstance];
  chromeViewController = [(CarDisplayController *)self chromeViewController];
  contexts = [chromeViewController contexts];
  [v6 refreshSessionWithEVResults:receievedCopy contexts:contexts];
}

- (void)searchSessionDidChangeSearchResults:(id)results
{
  resultsCopy = results;
  currentResultsSearchInfo = [resultsCopy currentResultsSearchInfo];
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = resultsCopy;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_10;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

LABEL_10:
    v13 = NSStringFromSelector(a2);
    results = [currentResultsSearchInfo results];
    *buf = 138412802;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2048;
    v21 = [results count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ Did receive %lu search results", buf, 0x20u);
  }

  v15 = +[CarChromeModeCoordinator sharedInstance];
  [v15 displaySearchSession:resultsCopy];
}

- (void)searchSessionWillPerformSearch:(id)search
{
  searchCopy = search;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = searchCopy;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
  }
}

- (void)searchSessionDidChangeSearchFieldItem:(id)item
{
  itemCopy = item;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = itemCopy;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
  }
}

- (void)_searchSessionWillStart:(id)start
{
  object = [start object];
  v5 = object;
  if (object && self->_searchSession != object && [(SearchSession *)object origin]!= 1)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      [(SearchSession *)v5 registerObserver:self];
      objc_storeStrong(&self->_searchSession, v5);
      goto LABEL_12;
    }

    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(SearchSession *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

    *buf = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);

    goto LABEL_11;
  }

LABEL_12:
}

- (id)processSearchFieldItem:(id)item searchInfo:(id)info userInfo:(id)userInfo
{
  itemCopy = item;
  infoCopy = info;
  userInfoCopy = userInfo;
  searchSession = self->_searchSession;
  if (!searchSession || -[SearchSession origin](searchSession, "origin") != 1 || ([infoCopy shouldPreserveResults] & 1) == 0)
  {
    [(SearchSession *)self->_searchSession unregisterObserver:self];
    [(SearchSession *)self->_searchSession invalidate];
    v12 = self->_searchSession;
    self->_searchSession = 0;
  }

  if (itemCopy)
  {
    if (!self->_searchSession)
    {
      v13 = [SearchSession alloc];
      v14 = [userInfoCopy objectForKeyedSubscript:@"LowFuel"];
      v15 = [(SearchSession *)v13 initWithOrigin:1 options:v14 != 0];
      v16 = self->_searchSession;
      self->_searchSession = v15;

      [(SearchSession *)self->_searchSession registerObserver:self];
      chromeViewController = [(CarDisplayController *)self chromeViewController];
      currentTraits = [chromeViewController currentTraits];

      v19 = +[MNNavigationService sharedService];
      isInNavigatingState = [v19 isInNavigatingState];

      if (isInNavigatingState)
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }

      [currentTraits setSearchOriginationType:v21];
      v22 = [userInfoCopy objectForKeyedSubscript:@"SearchSessionIsSearchAlongRouteEVStationRequest"];

      if (v22)
      {
        [currentTraits setSearchOriginationType:3];
        v23 = objc_alloc_init(GEOSearchImplicitFilterInfo);
        [v23 setSearchImplicitType:1];
        v24 = [userInfoCopy objectForKeyedSubscript:@"SearchSessionSearchAlongRouteImplicitRequestMUID"];
        [v23 setSearchAlongRouteMuid:{objc_msgSend(v24, "unsignedLongLongValue")}];

        [currentTraits setSearchImplicitFilterInfo:v23];
      }

      [currentTraits useOnlineToOfflineFailoverRequestModeIfAllowed];
      [(SearchSession *)self->_searchSession setTraits:currentTraits];
      v25 = [userInfoCopy objectForKeyedSubscript:@"Source"];
      if (v25)
      {
        v26 = [userInfoCopy objectForKeyedSubscript:@"Source"];
        integerValue = [v26 integerValue];
      }

      else
      {
        integerValue = 6;
      }

      [(SearchSession *)self->_searchSession setSource:integerValue];
      v29 = [userInfoCopy objectForKeyedSubscript:@"CreateHistoryEntry"];
      if (v29)
      {
        v30 = [userInfoCopy objectForKeyedSubscript:@"CreateHistoryEntry"];
        bOOLValue = [v30 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      [(SearchSession *)self->_searchSession setShouldCreateHistoryEntry:bOOLValue];
      v32 = [userInfoCopy objectForKeyedSubscript:@"ShouldBroadcast"];

      if (v32)
      {
        v33 = [userInfoCopy objectForKeyedSubscript:@"ShouldBroadcast"];
        -[SearchSession setShouldBroadcast:](self->_searchSession, "setShouldBroadcast:", [v33 BOOLValue]);
      }
    }

    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes())
    {
      v34 = +[MNNavigationService sharedService];
      isInNavigatingState2 = [v34 isInNavigatingState];
      traits = [(SearchSession *)self->_searchSession traits];
      [traits setNavigating:isInNavigatingState2];
    }

    v37 = self->_searchSession;
    if (infoCopy)
    {
      [(SearchSession *)v37 restoreSearchForItem:itemCopy withResults:infoCopy];
    }

    else
    {
      [(SearchSession *)v37 startSearch:itemCopy];
    }

    v28 = self->_searchSession;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)processItem:(id)item userInfo:(id)info
{
  itemCopy = item;
  infoCopy = info;
  v6 = [SearchFieldItem searchFieldItemWithObject:itemCopy];
  v7 = v6;
  if (v6)
  {
    completion = [v6 completion];

    if (completion)
    {
      v9 = 12;
    }

    else
    {
      v9 = 6;
    }

    v10 = [NSNumber numberWithInt:v9];
    v11 = [NSMutableDictionary dictionaryWithObject:v10 forKey:@"Source"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:@"CreateHistoryEntry"];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:@"CreateHistoryEntry"];
        v12 = itemCopy;
        v13 = +[Recents sharedRecents];
        [v13 recordCoreRecentContact:v12];
      }
    }

    v14 = [infoCopy objectForKeyedSubscript:@"userTypedSearchString"];
    [v7 setUserTypedStringForRAP:v14];

    v15 = +[CarDisplayController sharedInstance];
    v16 = [v11 copy];
    v17 = [v15 processSearchFieldItem:v7 searchInfo:0 userInfo:v16];
  }
}

- (void)observerDeliveryPolicyDidChange:(id)change
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FA9DB0;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  changeCopy = change;
  v3 = changeCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (BOOL)_shouldSendEvent:(id)event toCarDisplayWindow:(id)window
{
  eventCopy = event;
  type = [eventCopy type];
  _shouldAllowKnobFocusMovement = 1;
  if (type > 5)
  {
    if (type != 6)
    {
      if (type != 7 || ([eventCopy subtype] & 0xFFFFFFFFFFFFFFFELL) != 0xC8)
      {
        goto LABEL_33;
      }

      chromeViewController = [(CarDisplayController *)self chromeViewController];
      _shouldAllowKnobFocusMovement = [chromeViewController _shouldAllowKnobFocusMovement];
    }

LABEL_31:
    chromeViewController2 = [(CarDisplayController *)self chromeViewController];
    [chromeViewController2 interruptAutohideForIncidentalInteraction];
LABEL_32:

    goto LABEL_33;
  }

  if (!type)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    chromeViewController2 = [eventCopy allTouches];
    v17 = [chromeViewController2 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(chromeViewController2);
          }

          if ([*(*(&v27 + 1) + 8 * i) type] == 1)
          {
LABEL_30:

            _shouldAllowKnobFocusMovement = 1;
            goto LABEL_31;
          }
        }

        v18 = [chromeViewController2 countByEnumeratingWithState:&v27 objects:v32 count:16];
        _shouldAllowKnobFocusMovement = 1;
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_32;
  }

  if (type == 3)
  {
    v8 = eventCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    chromeViewController2 = v9;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    allPresses = [chromeViewController2 allPresses];
    v12 = [allPresses countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      while (2)
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(allPresses);
          }

          if ([*(*(&v23 + 1) + 8 * j) type] == 4)
          {

            goto LABEL_30;
          }
        }

        v13 = [allPresses countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    _shouldAllowKnobFocusMovement = 1;
    goto LABEL_32;
  }

LABEL_33:
  chromeViewController3 = [(CarDisplayController *)self chromeViewController];
  [chromeViewController3 restartAutohideIdleTimerIfStarted];

  return _shouldAllowKnobFocusMovement;
}

- (int64_t)connectionType
{
  v2 = +[MapsExternalDevice sharedInstance];
  connectionType = [v2 connectionType];

  return connectionType;
}

- (int64_t)touchscreenFidelity
{
  screen = [(CarDisplayController *)self screen];
  v3 = [screen _capabilityForKey:_UIScreenCapabilityTouchLevelsKey];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (unint64_t)supportedInteractionModels
{
  screen = [(CarDisplayController *)self screen];
  traitCollection = [screen traitCollection];
  interactionModel = [traitCollection interactionModel];

  return interactionModel;
}

- (unint64_t)primaryInteractionModel
{
  screen = [(CarDisplayController *)self screen];
  traitCollection = [screen traitCollection];
  primaryInteractionModel = [traitCollection primaryInteractionModel];

  return primaryInteractionModel;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  [(CarDisplayController *)self setWindowScene:0];
  screen = [disconnectCopy screen];

  [(CarDisplayController *)self _screenDidDisconnect:screen];
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  windowScene = [(CarDisplayController *)self windowScene];

  if (windowScene != backgroundCopy)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      goto LABEL_14;
    }

    v7 = backgroundCopy;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_12;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_12:
    *buf = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] did enter background", buf, 0xCu);

    goto LABEL_13;
  }

  [(CarDisplayController *)self _didEnterBackground];
LABEL_14:
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  windowScene = [(CarDisplayController *)self windowScene];

  if (windowScene != activeCopy)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      goto LABEL_14;
    }

    v7 = activeCopy;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_12;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_12:
    *buf = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] will resign active", buf, 0xCu);

    goto LABEL_13;
  }

  [(CarDisplayController *)self _willResignActive];
LABEL_14:
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  windowScene = [(CarDisplayController *)self windowScene];

  if (windowScene != activeCopy)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      goto LABEL_14;
    }

    v7 = activeCopy;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_12;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_12:
    *buf = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] did become active", buf, 0xCu);

    goto LABEL_13;
  }

  [(CarDisplayController *)self _didBecomeActive];
LABEL_14:
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  windowScene = [(CarDisplayController *)self windowScene];

  if (windowScene != foregroundCopy)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:

      goto LABEL_14;
    }

    v7 = foregroundCopy;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_12;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_12:
    *buf = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] will enter foreground", buf, 0xCu);

    goto LABEL_13;
  }

  [(CarDisplayController *)self _willEnterForeground];
LABEL_14:
}

- (void)_mapsCar_rebuildContextsForCurrentAppState
{
  chromeViewController = [(CarDisplayController *)self chromeViewController];
  contextsForCurrentAppState = [(CarDisplayController *)self contextsForCurrentAppState];
  [chromeViewController setContexts:contextsForCurrentAppState animated:0 completion:0];

  chromeViewController2 = [(CarDisplayController *)self chromeViewController];
  [chromeViewController2 setNeedsUpdateComponent:@"accessories" animated:0];
}

- (void)_mapsCar_scene:(id)car_scene willConnectToSession:(id)session options:(id)options
{
  car_sceneCopy = car_scene;
  [(CarDisplayController *)self setWindowScene:car_sceneCopy];
  [(CarDisplayController *)self prepareCarPlay];
  [(CarDisplayController *)self _prepareChromeForFirstUse];
  screen = [car_sceneCopy screen];

  [(CarDisplayController *)self _screenDidConnect:screen];
}

- (void)_carSessionController_updateNavigationHostingState
{
  isAnyCarSceneHostingNavigation = [(CarDisplayController *)self isAnyCarSceneHostingNavigation];
  v4 = +[MapsExternalDevice sharedInstance];
  if (isAnyCarSceneHostingNavigation != [v4 carPlayIsNavigating])
  {
    [v4 setCarPlayIsNavigating:isAnyCarSceneHostingNavigation];
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notify delegate: didUpdateNavigationVisibility", v7, 2u);
    }

    delegate = [(CarDisplayController *)self delegate];
    [delegate carDisplayControllerDidUpdateNavigationVisibility:self];
  }

  [(CarDisplayController *)self _updateIOHIDMonitoringAndNotification];
}

- (void)setWasConnectedToAnyCarScene:(BOOL)scene
{
  if (self->_wasConnectedToAnyCarScene != scene)
  {
    self->_wasConnectedToAnyCarScene = scene;
    delegate = [(CarDisplayController *)self delegate];
    [delegate carDisplayControllerDidUpdateNavigationVisibility:self];
  }
}

- (void)_updateForCurrentScreen
{
  if (!self->_updatingScreen)
  {
    if (+[NSThread isMainThread])
    {
      WeakRetained = objc_loadWeakRetained(&self->_screenUpdateOperation);
      [WeakRetained cancel];

      objc_storeWeak(&self->_screenUpdateOperation, 0);
      self->_updatingScreen = 1;
      screen = [(CarDisplayController *)self screen];
      if ([(CarDisplayController *)self state]&& screen)
      {
        if (!self->_window)
        {
          v5 = [CarDisplayWindow alloc];
          windowScene = [(CarDisplayController *)self windowScene];
          v7 = [(CarDisplayWindow *)v5 initWithWindowScene:windowScene];
          window = self->_window;
          self->_window = v7;

          [(CarDisplayWindow *)self->_window setAccessibilityIdentifier:@"Maps.CarPlayApplication"];
        }
      }

      else if (!screen)
      {
        goto LABEL_10;
      }

      if (self->_window)
      {
        windowScene2 = [(CarDisplayController *)self windowScene];
        coordinateSpace = [windowScene2 coordinateSpace];
        [coordinateSpace bounds];
        [(CarDisplayWindow *)self->_window setFrame:?];
      }

LABEL_10:
      state = [(CarDisplayController *)self state];
      if (state != 2)
      {
        if (state != 1)
        {
          [(CarDisplayWindow *)self->_window setHidden:1];
          [(CarDisplayWindow *)self->_window setRootViewController:0];
          v26 = self->_window;
          self->_window = 0;

          self->_updatingScreen = 0;
LABEL_53:

          return;
        }

        v12 = sub_100006E1C();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will show launch screen, in prepare state", buf, 2u);
        }

        rootViewController = [(CarDisplayWindow *)self->_window rootViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v15 = objc_alloc_init(CarLaunchLoadingViewController);
          [(CarDisplayWindow *)self->_window setRootViewController:v15];
        }

        [(CarDisplayWindow *)self->_window setHidden:0];
LABEL_45:
        carSessionStatus = [(CarDisplayController *)self carSessionStatus];
        currentSession = [carSessionStatus currentSession];
        configuration = [currentSession configuration];

        _maps_primaryScreen = [configuration _maps_primaryScreen];
        [_maps_primaryScreen pixelSize];
        self->_screenSize.width = v38;
        self->_screenSize.height = v39;
        v40 = +[MNNavigationService sharedService];
        isInNavigatingState = [v40 isInNavigatingState];

        if (isInNavigatingState)
        {
          isCurrentlyConnectedToCarAppScene = [(CarDisplayController *)self isCurrentlyConnectedToCarAppScene];
          v43 = +[MNNavigationService sharedService];
          [v43 setIsConnectedToCarplay:isCurrentlyConnectedToCarAppScene];

          v44 = +[NavigationFeedbackCollector sharedFeedbackCollector];
          [v44 setIsConnectedToCarplay:isCurrentlyConnectedToCarAppScene];

          [(CarDisplayController *)self _carSessionController_updateNavigationHostingState];
        }

        if (self->_window)
        {
          v45 = +[NSDate date];
        }

        else
        {
          v45 = 0;
        }

        dateOfLastScreenUpdate = self->_dateOfLastScreenUpdate;
        self->_dateOfLastScreenUpdate = v45;

        v47 = sub_100006E1C();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = self->_dateOfLastScreenUpdate;
          *buf = 138412290;
          v55 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Recorded date of last screen update: %@", buf, 0xCu);
        }

        self->_updatingScreen = 0;
        goto LABEL_53;
      }

      if (!screen)
      {
        [(CarDisplayController *)self _setChromeSuppressed:1];
        if (self->_window)
        {
          v27 = sub_100006E1C();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Will suppress CarChromeViewController and tear down the window", buf, 2u);
          }

          [(CarDisplayWindow *)self->_window setHidden:1];
          [(CarDisplayWindow *)self->_window setRootViewController:0];
          v28 = self->_window;
          self->_window = 0;
        }

        [(CarDisplayController *)self setState:1];
        goto LABEL_45;
      }

      rootViewController2 = [(CarDisplayWindow *)self->_window rootViewController];
      chromeViewController = [(CarDisplayController *)self chromeViewController];

      if (rootViewController2 != chromeViewController)
      {
        v18 = sub_100006E1C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Will attach CarChromeViewController to window and unsuppress it", buf, 2u);
        }

        chromeViewController2 = [(CarDisplayController *)self chromeViewController];
        [(CarDisplayWindow *)self->_window setRootViewController:chromeViewController2];

        [(CarDisplayWindow *)self->_window setHidden:0];
      }

      [(CarDisplayController *)self _setChromeSuppressed:0];
      v53 = 0;
      v20 = [(CarDisplayController *)self activelyOnScreen:&v53];
      v21 = v53;
      v22 = sub_100006E1C();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v23)
        {
          v24 = &stru_1016631F0;
          if (v21)
          {
            v24 = v21;
          }

          *buf = 138412290;
          v55 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "CarChromeViewController should be active, we are on-screen (%@)", buf, 0xCu);
        }

        chromeDeactivationToken = self->_chromeDeactivationToken;
        self->_chromeDeactivationToken = 0;
      }

      else
      {
        if (v23)
        {
          v29 = &stru_1016631F0;
          if (v21)
          {
            v29 = v21;
          }

          *buf = 138412290;
          v55 = v29;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "CarChromeViewController should be inactive, we are not on-screen (%@)", buf, 0xCu);
        }

        if (self->_chromeDeactivationToken)
        {
          goto LABEL_44;
        }

        chromeViewController3 = [(CarDisplayController *)self chromeViewController];
        chromeDeactivationToken = chromeViewController3;
        if (v21)
        {
          v31 = v21;
        }

        else
        {
          v31 = @"(not actively on screen)");
        }

        v32 = [chromeViewController3 acquireChromeDeactivationTokenForReason:v31];
        v33 = self->_chromeDeactivationToken;
        self->_chromeDeactivationToken = v32;
      }

LABEL_44:
      goto LABEL_45;
    }

    v49 = sub_10006D178();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [NSString stringWithFormat:@"updateForCurrentScreen called off main thread, will attempt to reroute"];
      *buf = 136316162;
      v55 = "[CarDisplayController _updateForCurrentScreen]";
      v56 = 2080;
      v57 = "CarDisplayController.m";
      v58 = 1024;
      v59 = 1187;
      v60 = 2080;
      v61 = "isMainThread";
      v62 = 2112;
      v63 = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v51 = sub_10006D178();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v55 = v52;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    [(CarDisplayController *)self _setNeedsScreenUpdate];
  }
}

- (void)_setNeedsScreenUpdate
{
  if ([objc_opt_class() enablingState] == 2)
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_opt_class() enablingState]);
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will not schedule screen update (enablingState:%@)", buf, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_screenUpdateOperation);

    if (!WeakRetained)
    {
      v6 = sub_100006E1C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will schedule a screen update", buf, 2u);
      }

      objc_initWeak(buf, self);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100FAC5B8;
      v12[3] = &unk_101661B98;
      objc_copyWeak(&v13, buf);
      v7 = objc_retainBlock(v12);
      if (self->_updatingScreen || self->_dateOfLastScreenUpdate && self->_screen)
      {
        v8 = [NSBlockOperation blockOperationWithBlock:v7];
        objc_storeWeak(&self->_screenUpdateOperation, v8);
        v9 = +[NSOperationQueue mainQueue];
        [v9 addOperation:v8];
      }

      else
      {
        v10 = sub_100006E1C();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Will perform first screen update immediately", v11, 2u);
        }

        (v7[2])(v7);
      }

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }
  }
}

- (void)setMapsSuggestionsController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_mapsSuggestionsController = &selfCopy->_mapsSuggestionsController;
  mapsSuggestionsController = selfCopy->_mapsSuggestionsController;
  if (mapsSuggestionsController != controllerCopy)
  {
    if (mapsSuggestionsController)
    {
      [(CarMapsSuggestionsController *)mapsSuggestionsController setSinkAttached:0];
      v9 = *p_mapsSuggestionsController;
      *p_mapsSuggestionsController = 0;
    }

    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *p_mapsSuggestionsController;
      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = controllerCopy;
    }

    objc_storeStrong(&selfCopy->_mapsSuggestionsController, controller);
    [(CarDisplayController *)selfCopy _updateLowFuelSuggestionState];
  }

  objc_sync_exit(selfCopy);
}

- (CarMapsSuggestionsController)mapsSuggestionsController
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mapsSuggestionsController = selfCopy->_mapsSuggestionsController;
  if (!mapsSuggestionsController)
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      state = [(CarDisplayController *)selfCopy state];
    }

    v5 = objc_opt_new();
    v6 = selfCopy->_mapsSuggestionsController;
    selfCopy->_mapsSuggestionsController = v5;

    mapsSuggestionsController = selfCopy->_mapsSuggestionsController;
  }

  v7 = mapsSuggestionsController;
  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)activelyOnScreen:(id *)screen
{
  if (GEOConfigGetBOOL())
  {
    LOBYTE(BOOL) = 1;
    if (screen)
    {
      v6 = @"deactivation has been overridden, will report we're actively on-screen";
LABEL_14:
      *screen = v6;
    }
  }

  else if (self->_screen)
  {
    if ([objc_opt_class() enablingState] == 3)
    {
      LOBYTE(BOOL) = 0;
      if (screen)
      {
        v6 = @"simulated no screen ownership";
        goto LABEL_14;
      }
    }

    else
    {
      v7 = +[MapsExternalDevice sharedInstance];
      ownsScreen = [v7 ownsScreen];

      if (ownsScreen)
      {
        BOOL = GEOConfigGetBOOL();
        v6 = @"device owns screen";
        if (BOOL)
        {
          v6 = @"device owns screen, but override default allows it";
        }

        if (screen)
        {
          goto LABEL_14;
        }
      }

      else
      {
        isCarAppSceneHostingNavigation = [(CarDisplayController *)self isCarAppSceneHostingNavigation];
        v6 = @"hosting navigation";
        if (!isCarAppSceneHostingNavigation)
        {
          v6 = 0;
        }

        LOBYTE(BOOL) = 1;
        if (screen)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    LOBYTE(BOOL) = 0;
    if (screen)
    {
      v6 = @"no screen";
      goto LABEL_14;
    }
  }

  return BOOL;
}

- (void)setScreen:(id)screen
{
  screenCopy = screen;
  if ([(CarDisplayController *)self overrideShouldSuppressChrome])
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Overriding screen to nil", &v19, 2u);
    }

    screenCopy = 0;
  }

  screen = self->_screen;
  if (screen != screenCopy)
  {
    v7 = (screenCopy == 0) ^ (screen == 0);
    objc_storeStrong(&self->_screen, screenCopy);
    v8 = sub_100006E1C();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (screenCopy)
    {
      if (v9)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will attach to a new screen", &v19, 2u);
      }

      [(CarDisplayController *)self _stopTimingIdleTimout];
      if (!self->_HIDEventObserver)
      {
        v10 = objc_alloc_init(BKSHIDEventDeliveryPolicyObserver);
        [v10 addObserver:self];
        HIDEventObserver = self->_HIDEventObserver;
        self->_HIDEventObserver = v10;
      }

      displayConfiguration = [(UIScreen *)screenCopy displayConfiguration];
      hardwareIdentifier = [displayConfiguration hardwareIdentifier];

      v14 = [BKSHIDEventDisplay displayWithHardwareIdentifier:hardwareIdentifier];
      [(BKSHIDEventDeliveryPolicyObserver *)self->_HIDEventObserver setDisplay:v14];
    }

    else
    {
      if (v9)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will detach from its screen", &v19, 2u);
      }

      self->_hasRunNewScreenRefreshTasks = 0;
      v15 = self->_HIDEventObserver;
      if (v15)
      {
        [(BKSHIDEventDeliveryPolicyObserver *)v15 removeObserver:self];
        v16 = self->_HIDEventObserver;
        self->_HIDEventObserver = 0;
      }

      [(CarDisplayController *)self _startTimingIdleTimeout];
      [(CarDisplayController *)self _registerCarInfoForGEOLogging];
      [(CarDisplayController *)self _popIfTopModeIsInvalidAfterReconnection:0];
    }

    [(CarDisplayController *)self _setNeedsScreenUpdate];
    if (v7)
    {
      v17 = sub_100006E1C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = @"CarDisplayDidChangeConnectedNotification";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Post notification (%@)", &v19, 0xCu);
      }

      v18 = +[NSNotificationCenter defaultCenter];
      [v18 postNotificationName:@"CarDisplayDidChangeConnectedNotification" object:self];
    }
  }
}

- (void)_screenDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  screen = [(CarDisplayController *)self screen];

  if (screen == disconnectCopy)
  {
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified its CarPlay screen was disconnected", v7, 2u);
    }

    [(CarDisplayController *)self setScreen:0];
  }
}

- (void)_screenDidConnect:(id)connect
{
  connectCopy = connect;
  screen = [(CarDisplayController *)self screen];

  if (screen != connectCopy)
  {
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified of incoming CarPlay screen", v7, 2u);
    }

    [(CarDisplayController *)self setScreen:connectCopy];
  }
}

- (id)availableCarPlayScreen
{
  v2 = +[UIScreen _carScreen];
  v3 = sub_100006E1C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Did find connected CarPlay screen", buf, 2u);
    }

    v5 = v2;
  }

  else
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Did not find any connected CarPlay screens", v7, 2u);
    }
  }

  return v2;
}

- (NSMapTable)connectedCarScreenInfos
{
  carSessionStatus = [(CarDisplayController *)self carSessionStatus];
  connectedCarScreenInfos = [carSessionStatus connectedCarScreenInfos];

  return connectedCarScreenInfos;
}

- (GEOCarInfo)connectedCarMainScreenInfo
{
  if ([(CarDisplayController *)self isCurrentlyConnectedToAnyCarScene])
  {
    carSessionStatus = [(CarDisplayController *)self carSessionStatus];
    carSessionStatus2 = [(CarDisplayController *)self carSessionStatus];
    currentSession = [carSessionStatus2 currentSession];
    configuration = [currentSession configuration];
    _maps_primaryScreen = [configuration _maps_primaryScreen];
    v8 = [carSessionStatus carInfoForScreen:_maps_primaryScreen];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_popIfTopModeIsInvalidAfterReconnection:(BOOL)reconnection
{
  v3 = +[CarChromeModeCoordinator sharedInstance];
  [v3 cleanupForDisconnect];
}

- (void)_clearExistingTimeoutAssertionIfNeededAfterDelay:(double)delay
{
  v5 = self->_idleTimeoutAssertion;
  v6 = sub_100006E1C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 134218240;
      v13 = v5;
      v14 = 2048;
      delayCopy = delay;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will invalidate idle timeout assertion %p after %#.1lfs", buf, 0x16u);
    }

    idleTimeoutAssertion = self->_idleTimeoutAssertion;
    self->_idleTimeoutAssertion = 0;

    v9 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100FAD174;
    block[3] = &unk_101661B18;
    v11 = v5;
    dispatch_after(v9, &_dispatch_main_q, block);
    v6 = v11;
  }

  else if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No timeout assertion to invalidate", buf, 2u);
  }
}

- (void)_idleTimeoutFired:(id)fired
{
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarDisplayController notified idle timeout fired", &v10, 2u);
  }

  [(NSTimer *)self->_idleTimeoutTimer invalidate];
  idleTimeoutTimer = self->_idleTimeoutTimer;
  self->_idleTimeoutTimer = 0;

  screen = [(CarDisplayController *)self screen];

  if (screen)
  {
    v7 = sub_100006E1C();
    v8 = 1.0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "CarDisplayController tried to destroy chrome with active screen, aborting.", &v10, 2u);
    }
  }

  else
  {
    [(CarDisplayController *)self _destroyChrome];
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = @"CarDisplayIsDisconnectedAndIdle";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Post notification (%@)", &v10, 0xCu);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"CarDisplayIsDisconnectedAndIdle" object:self];
    v8 = 3.0;
  }

  [(CarDisplayController *)self _clearExistingTimeoutAssertionIfNeededAfterDelay:v8];
}

- (void)_stopTimingIdleTimout
{
  idleTimeoutTimer = self->_idleTimeoutTimer;
  v4 = sub_100006E1C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (idleTimeoutTimer)
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarDisplayController stopped tracking idle timeout", v7, 2u);
    }

    [(NSTimer *)self->_idleTimeoutTimer invalidate];
    v6 = self->_idleTimeoutTimer;
    self->_idleTimeoutTimer = 0;

    [(CarDisplayController *)self _clearExistingTimeoutAssertionIfNeededAfterDelay:1.0];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CarDisplayController asked to stop tracking idle timeout, but no timer", buf, 2u);
    }
  }
}

- (void)_startTimingIdleTimeout
{
  [(NSTimer *)self->_idleTimeoutTimer invalidate];
  idleTimeoutTimer = self->_idleTimeoutTimer;
  self->_idleTimeoutTimer = 0;

  [(CarDisplayController *)self _clearExistingTimeoutAssertionIfNeededAfterDelay:1.0];
  GEOConfigGetDouble();
  if (v4 == 0.0)
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CarDisplayController will not track disconnected and idle timeout, will fire immediately", &v19, 2u);
    }

    [(CarDisplayController *)self _idleTimeoutFired:0];
  }

  else
  {
    v6 = v4;
    if (v4 == -1.0)
    {
      v7 = sub_100006E1C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CarDisplayController will not track disconnected and idle timeout, will keep chrome alive", &v19, 2u);
      }
    }

    else
    {
      if (GEOConfigGetBOOL())
      {
        [(CarDisplayController *)self _clearExistingTimeoutAssertionIfNeededAfterDelay:1.0];
        v8 = sub_100006E1C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CarDisplayController will take assertion for idle timeout timer", &v19, 2u);
        }

        v9 = [[BKSProcessAssertion alloc] initWithBundleIdentifier:@"com.apple.Maps" flags:1 reason:7 name:@"recent CarPlay disconnection"];
        idleTimeoutAssertion = self->_idleTimeoutAssertion;
        self->_idleTimeoutAssertion = v9;

        acquire = [(BKSProcessAssertion *)self->_idleTimeoutAssertion acquire];
        v12 = sub_100006E1C();
        v13 = v12;
        if (acquire)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v14 = self->_idleTimeoutAssertion;
            v19 = 134217984;
            v20 = *&v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Acquired idle timeout assertion %p", &v19, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v15 = self->_idleTimeoutAssertion;
            v19 = 134217984;
            v20 = *&v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to acquire idle timeout assertion %p, clearing ivar", &v19, 0xCu);
          }

          v13 = self->_idleTimeoutAssertion;
          self->_idleTimeoutAssertion = 0;
        }
      }

      v16 = sub_100006E1C();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CarDisplayController started tracking idle timeout: %lfs", &v19, 0xCu);
      }

      v17 = [NSTimer scheduledTimerWithTimeInterval:self target:"_idleTimeoutFired:" selector:0 userInfo:0 repeats:v6];
      v18 = self->_idleTimeoutTimer;
      self->_idleTimeoutTimer = v17;
    }
  }
}

- (void)runNewScreenRefreshTasksIfNeeded
{
  if (self->_hasRunNewScreenRefreshTasks)
  {
    goto LABEL_2;
  }

  chromeViewController = [(CarDisplayController *)self chromeViewController];
  isSuppressed = [chromeViewController isSuppressed];

  if (isSuppressed)
  {
    if (self->_hasRunNewScreenRefreshTasks)
    {
LABEL_2:
      v2 = sub_100006E1C();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
LABEL_5:

        return;
      }

      *buf = 0;
      v3 = "Not running new screen refresh tasks because we've already run them";
      v4 = buf;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, v4, 2u);
      goto LABEL_5;
    }

    chromeViewController2 = [(CarDisplayController *)self chromeViewController];
    isSuppressed2 = [chromeViewController2 isSuppressed];

    if (isSuppressed2)
    {
      v2 = sub_100006E1C();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      v13 = 0;
      v3 = "Not running new screen refresh tasks because the chrome VC is suppressed";
      v4 = &v13;
      goto LABEL_4;
    }
  }

  else
  {
    v10 = sub_100006E1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Running new screen refresh tasks", v15, 2u);
    }

    [(CarDisplayController *)self _prepareNearby];
    v11 = +[MSPSharedTripService sharedInstance];
    [(CarDisplayController *)self _registerCarInfoForGEOLogging];
    mapsSuggestionsController = [(CarDisplayController *)self mapsSuggestionsController];
    [mapsSuggestionsController setAllowLowFuelAlert:1];

    self->_hasRunNewScreenRefreshTasks = 1;
  }
}

- (void)_updateLowFuelSuggestionState
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = +[MapsExternalDevice sharedInstance];
    v10 = 134218240;
    hasEngineType = [v4 hasEngineType];
    v12 = 2048;
    state = [(CarDisplayController *)self state];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[CarDisplayController] - Update low fuel suggestion state with Engine type availability: %ld, And state is: %ld", &v10, 0x16u);
  }

  v5 = +[MapsExternalDevice sharedInstance];
  hasEngineType2 = [v5 hasEngineType];
  mapsSuggestionsController = [(CarDisplayController *)self mapsSuggestionsController];
  [mapsSuggestionsController setMonitorLowFuel:hasEngineType2];

  v8 = +[MapsExternalDevice sharedInstance];
  LOBYTE(hasEngineType2) = [v8 needsFuel];

  if ((hasEngineType2 & 1) == 0)
  {
    mapsSuggestionsController2 = [(CarDisplayController *)self mapsSuggestionsController];
    [mapsSuggestionsController2 setAllowLowFuelAlert:1];
  }
}

- (void)_externalDeviceUpdated
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[CarDisplayController] - External device is updated.", v6, 2u);
  }

  v4 = +[MapsExternalDevice sharedInstance];
  ownsScreen = [v4 ownsScreen];

  if (ownsScreen)
  {
    [(CarDisplayController *)self _setNeedsScreenUpdate];
  }

  else
  {
    [(CarDisplayController *)self _updateForCurrentScreen];
  }

  [(CarDisplayController *)self _updateLowFuelSuggestionState];
}

- (void)_didBecomeActive
{
  windowScene = [(CarDisplayController *)self windowScene];

  if (windowScene)
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Notified main CarPlay scene did become active", buf, 2u);
    }

    if ([(CarDisplayController *)self state]!= 2)
    {
      v5 = sub_100006E1C();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Chrome is not running, do nothing", v6, 2u);
      }
    }
  }
}

- (void)_willEnterForeground
{
  windowScene = [(CarDisplayController *)self windowScene];

  if (windowScene)
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Notified main CarPlay scene will enter foreground", v11, 2u);
    }

    [(CarDisplayController *)self _registerCarInfoForGEOLogging];
    [GEOAPPortal captureUserAction:2196 target:0 value:0];
    if ([(CarDisplayController *)self state]== 2)
    {
      backgroundAutoHideStateTrackingDate = [(CarDisplayController *)self backgroundAutoHideStateTrackingDate];
      if (!backgroundAutoHideStateTrackingDate || (v6 = backgroundAutoHideStateTrackingDate, -[CarDisplayController backgroundAutoHideStateTrackingDate](self, "backgroundAutoHideStateTrackingDate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 timeIntervalSinceNow], v9 = fabs(v8), v7, v6, v9 > 480.0))
      {
        chromeViewController = [(CarDisplayController *)self chromeViewController];
        [chromeViewController interruptAutohideForIncidentalInteraction];
      }

      [(CarDisplayController *)self setBackgroundAutoHideStateTrackingDate:0];
    }

    [(CarDisplayController *)self _updateForCurrentScreen];
  }
}

- (void)_didEnterBackground
{
  windowScene = [(CarDisplayController *)self windowScene];

  if (windowScene)
  {
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Notified main CarPlay scene did enter background", &v11, 2u);
    }

    if ([(CarDisplayController *)self state]== 2)
    {
      chromeViewController = [(CarDisplayController *)self chromeViewController];
      isAutohidingContentHiddenForCurrentContext = [chromeViewController isAutohidingContentHiddenForCurrentContext];

      if (isAutohidingContentHiddenForCurrentContext)
      {
        v7 = +[NSDate date];
        [(CarDisplayController *)self setBackgroundAutoHideStateTrackingDate:v7];

        v8 = sub_100006E1C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          backgroundAutoHideStateTrackingDate = [(CarDisplayController *)self backgroundAutoHideStateTrackingDate];
          v11 = 138412290;
          v12 = backgroundAutoHideStateTrackingDate;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Recorded background autohide state tracking date as %@", &v11, 0xCu);
        }
      }

      [(CarDisplayController *)self _registerCarInfoForGEOLogging];
      [GEOAPPortal captureUserAction:2197 target:0 value:0];
      [(CarDisplayController *)self _updateForCurrentScreen];
    }

    else
    {
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Chrome is not running, do nothing", &v11, 2u);
      }
    }
  }
}

- (void)_carDisplayDidFinishLaunching:(id)launching
{
  if ([(CarDisplayController *)self state]== 1)
  {

    [(CarDisplayController *)self setState:2];
  }
}

- (void)_tearDownClusterSuggestionController
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Tearing down clusterSuggestionController", v5, 2u);
  }

  clusterSuggestionController = self->_clusterSuggestionController;
  self->_clusterSuggestionController = 0;
}

- (void)_reactivateChromeAfterDelay:(double)delay
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100FAE1B8;
  v7[3] = &unk_10165FBC0;
  objc_copyWeak(v8, &location);
  v8[1] = *&delay;
  v4 = objc_retainBlock(v7);
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    delayCopy = delay;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will reactivate chrome after %#.2lfs delay", buf, 0xCu);
  }

  if (delay == -1.0)
  {
    dispatch_async(&_dispatch_main_q, v4);
  }

  else if (delay == 0.0)
  {
    (v4[2])(v4);
  }

  else
  {
    v6 = dispatch_time(0, (delay * 1000000000.0));
    dispatch_after(v6, &_dispatch_main_q, v4);
  }

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)_setChromeSuppressed:(BOOL)suppressed
{
  suppressedCopy = suppressed;
  chromeViewController = [(CarDisplayController *)self chromeViewController];

  if (chromeViewController)
  {
    chromeViewController2 = [(CarDisplayController *)self chromeViewController];
    v7 = chromeViewController2;
    if (suppressedCopy)
    {
      [chromeViewController2 setSuppressed:1];

      self->_isPreparingNavigation = 0;
    }

    else
    {
      isSuppressed = [chromeViewController2 isSuppressed];

      chromeViewController3 = [(CarDisplayController *)self chromeViewController];
      v15 = chromeViewController3;
      if (isSuppressed)
      {
        [chromeViewController3 loadViewIfNeeded];

        chromeViewController4 = [(CarDisplayController *)self chromeViewController];
        [chromeViewController4 setSuppressed:0];

        v14 = sub_100006E1C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Will attempt to run new screen refresh tasks and present queued interruption because we unsuppressed a suppressed chrome", buf, 2u);
        }

        [(CarDisplayController *)self runNewScreenRefreshTasksIfNeeded];
        [(CarDisplayController *)self _presentQueuedInterruptionIfNeeded];
      }

      else
      {
        [chromeViewController3 setSuppressed:0];
      }
    }
  }

  else
  {
    v8 = sub_100006E1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = @"NO";
      if (suppressedCopy)
      {
        v9 = @"YES";
      }

      v10 = v9;
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "We don't have a chromeVC yet; ignoring suppression(%{public}@)", buf, 0xCu);
    }
  }
}

- (void)_destroyChrome
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will tear down and destroy the chrome.", v7, 2u);
  }

  [(CarDisplayController *)self _stopObservingSharedAppState];
  chromeViewController = [(CarDisplayController *)self chromeViewController];
  [chromeViewController setContexts:&__NSArray0__struct];

  chromeViewController2 = [(CarDisplayController *)self chromeViewController];
  [chromeViewController2 setSuppressed:1];

  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = 0;

  [(CarDisplayController *)self setChromeViewController:0];
}

- (id)contextsForCurrentAppState
{
  v3 = objc_opt_new();
  v4 = [NSMutableArray arrayWithObject:v3];
  v5 = +[CarDisplayController sharedInstance];
  platformController = [v5 platformController];
  currentSession = [platformController currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [CarRouteGeniusModeController alloc];
    v9 = +[CarRouteGeniusService sharedService];
    suggestion = [v9 suggestion];
    v11 = [(CarRouteGeniusModeController *)v8 initWithSuggestion:suggestion];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[_TtC4Maps23CarRoutePlanningContext alloc] initWithRoutePlanningSession:currentSession];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }

      v13 = currentSession;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      isCarNavigationCompatible = [v15 isCarNavigationCompatible];
      v17 = off_1015F6138;
      if (!isCarNavigationCompatible)
      {
        v17 = off_1015F6120;
      }

      v12 = objc_alloc_init(*v17);
    }

    v11 = v12;
  }

  [v4 addObject:v11];

LABEL_14:
  v18 = sub_100006E1C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v4;
    v20 = v19;
    if (v19)
    {
      if ([v19 count])
      {
        v40 = v18;
        selfCopy = self;
        v42 = currentSession;
        v43 = v4;
        v44 = v3;
        v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v20 count]);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v39 = v20;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v45 objects:buf count:16];
        if (!v23)
        {
          goto LABEL_34;
        }

        v24 = v23;
        v25 = *v46;
        while (1)
        {
          v26 = 0;
          do
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v45 + 1) + 8 * v26);
            if (v27)
            {
              v28 = objc_opt_class();
              v29 = NSStringFromClass(v28);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_27;
              }

              v30 = [v27 performSelector:"accessibilityIdentifier"];
              v31 = v30;
              if (v30 && ![v30 isEqualToString:v29])
              {
                v32 = [NSString stringWithFormat:@"%@<%p, %@>", v29, v27, v31];
              }

              else
              {

LABEL_27:
                v32 = [NSString stringWithFormat:@"%@<%p>", v29, v27];
              }

              goto LABEL_30;
            }

            v32 = @"<nil>";
LABEL_30:

            [v21 addObject:v32];
            v26 = v26 + 1;
          }

          while (v24 != v26);
          v33 = [v22 countByEnumeratingWithState:&v45 objects:buf count:16];
          v24 = v33;
          if (!v33)
          {
LABEL_34:

            v34 = [v22 componentsJoinedByString:{@", "}];
            v35 = [NSString stringWithFormat:@"<%p> [%@]", v22, v34];

            v4 = v43;
            v3 = v44;
            self = selfCopy;
            currentSession = v42;
            v20 = v39;
            v18 = v40;
            goto LABEL_37;
          }
        }
      }

      v35 = [NSString stringWithFormat:@"<%p> (empty)", v20];
    }

    else
    {
      v35 = @"<nil>";
    }

LABEL_37:

    chromeViewController = [(CarDisplayController *)self chromeViewController];
    *buf = 138412546;
    v50 = v35;
    v51 = 2048;
    v52 = chromeViewController;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Recreating current app state with modes: %@ for chrome: %p", buf, 0x16u);
  }

  v37 = [v4 copy];

  return v37;
}

- (void)_prepareChromeForFirstUse
{
  chromeViewController = [(CarDisplayController *)self chromeViewController];

  if (!chromeViewController)
  {
    v4 = +[CarDisplayController sharedInstance];
    platformController = [v4 platformController];
    currentSession = [platformController currentSession];

    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Instantiating and suppressing CarChromeViewController.", buf, 2u);
    }

    windowScene = [(CarDisplayController *)self windowScene];
    delegate = [windowScene delegate];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = delegate;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (!v11)
    {
      v36 = sub_10006D178();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v46 = "[CarDisplayController _prepareChromeForFirstUse]";
        v47 = 2080;
        v48 = "CarDisplayController.m";
        v49 = 1024;
        v50 = 580;
        v51 = 2080;
        v52 = "carSceneDelegate != nil";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v37 = sub_10006D178();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v46 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v12 = [CarChromeViewController alloc];
    sceneType = [v11 sceneType];

    v14 = [(CarChromeViewController *)v12 initWithCarSceneType:sceneType];
    [(CarDisplayController *)self setChromeViewController:v14];

    chromeViewController2 = [(CarDisplayController *)self chromeViewController];
    v39 = _NSConcreteStackBlock;
    v40 = 3221225472;
    v41 = sub_100FAEFDC;
    v42 = &unk_10165FB98;
    v16 = currentSession;
    v43 = v16;
    [chromeViewController2 setFallbackContextCoordinationBlock:&v39];

    v17 = [(CarDisplayController *)self chromeViewController:v39];
    v18 = [v17 acquireChromeDeactivationTokenForReason:@"CarPlay preparing new chrome for first use"];
    chromeDeactivationToken = self->_chromeDeactivationToken;
    self->_chromeDeactivationToken = v18;

    chromeViewController3 = [(CarDisplayController *)self chromeViewController];
    [chromeViewController3 setSuppressed:1];

    v21 = +[NSUserDefaults standardUserDefaults];
    if ([v21 BOOLForKey:@"__internal_CarCardTestDebug"])
    {
      v22 = +[GEOPlatform sharedPlatform];
      isInternalInstall = [v22 isInternalInstall];

      if (isInternalInstall)
      {
        chromeViewController5 = objc_alloc_init(CarCardTestModeController);
        v25 = sub_100006E1C();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Will set CarCardTestModeController as root mode for new CarChromeViewController.", buf, 2u);
        }

        chromeViewController4 = [(CarDisplayController *)self chromeViewController];
        v44 = chromeViewController5;
        v27 = [NSArray arrayWithObjects:&v44 count:1];
        [chromeViewController4 setContexts:v27 animated:0 completion:0];

        goto LABEL_17;
      }
    }

    else
    {
    }

    v28 = sub_100006E1C();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Will set contextsForCurrentAppState as the new mode stack.", buf, 2u);
    }

    chromeViewController5 = [(CarDisplayController *)self chromeViewController];
    chromeViewController4 = [(CarDisplayController *)self contextsForCurrentAppState];
    [(CarCardTestModeController *)chromeViewController5 setContexts:chromeViewController4 animated:0 completion:0];
LABEL_17:

    v29 = +[CarChromeModeCoordinator sharedInstance];
    chromeViewController6 = [(CarDisplayController *)self chromeViewController];
    [v29 addChromeViewController:chromeViewController6];

    v31 = +[SearchSession currentSearchSession];
    platformController2 = [(CarDisplayController *)self platformController];
    currentSession2 = [platformController2 currentSession];
    if (currentSession2 || !v31)
    {
    }

    else
    {
      origin = [v31 origin];

      if (origin == 1)
      {
LABEL_25:
        [(CarDisplayController *)self _startObservingSharedAppState];

        return;
      }

      v35 = sub_100006E1C();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Will display current search session.", buf, 2u);
      }

      objc_storeStrong(&self->_searchSession, v31);
      [(SearchSession *)self->_searchSession registerObserver:self];
      platformController2 = +[CarChromeModeCoordinator sharedInstance];
      [platformController2 displaySearchSession:v31];
    }

    goto LABEL_25;
  }
}

- (double)_activationDelay
{
  v2 = 0.0;
  if (+[CarDisplayController debugLaunchPerformance])
  {
    +[CarDisplayController debugLaunchPerformanceDelay];
    v2 = v3;
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Overriding activationDelay for debugging (delay:%#.1lfs)", &v6, 0xCu);
    }
  }

  return v2;
}

- (void)_tearDownCarPlayIfNeeded
{
  if ([(CarDisplayController *)self state])
  {
    [(CarDisplayController *)self setState:0];
    [(CarDisplayController *)self _tearDownClusterSuggestionController];

    [(CarDisplayController *)self _tearDownMapsSuggestionsController];
  }

  else
  {
    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Will not tear down CarPlay, already stopped.", v4, 2u);
    }
  }
}

- (void)setState:(unint64_t)state
{
  state = self->_state;
  if (state != state && [(CarDisplayController *)self _validateTransitionFromState:state toState:state])
  {
    self->_state = state;
    if (state)
    {
      if (state == 2)
      {
        v8 = sub_100006E1C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CarPlay is running", v15, 2u);
        }

        v9 = +[MapsExternalDevice sharedInstance];
        [v9 checkForActiveCarPlayConnection];

        [(CarDisplayController *)self _prepareChromeForFirstUse];
        [(CarDisplayController *)self _activationDelay];
        [(CarDisplayController *)self _reactivateChromeAfterDelay:?];
        [(CarDisplayController *)self _setNeedsScreenUpdate];
      }

      else if (state == 1)
      {
        v6 = sub_100006E1C();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will prepare CarPlay", buf, 2u);
        }

        guidanceObserver = [(CarDisplayController *)self guidanceObserver];
      }
    }

    else
    {
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Will tear down the CarPlay stack", v14, 2u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_screenUpdateOperation);
      [WeakRetained cancel];

      [(CarDisplayController *)self _destroyChrome];
      dateOfLastScreenUpdate = self->_dateOfLastScreenUpdate;
      self->_dateOfLastScreenUpdate = 0;

      window = [(CarDisplayController *)self window];
      [window setRootViewController:0];

      [(CarDisplayController *)self setWindow:0];
      [(CarDisplayController *)self setScreen:0];
    }
  }
}

- (BOOL)_validateTransitionFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (state == toState || state == 1 && (toState & 0xFFFFFFFFFFFFFFFDLL) == 0 || state == 2 && toState < 2)
  {
    return 1;
  }

  return !state && toState == 1;
}

- (BOOL)isChromeAvailable
{
  if ([(CarDisplayController *)self state]!= 2)
  {
    return 0;
  }

  chromeViewController = [(CarDisplayController *)self chromeViewController];
  v4 = chromeViewController != 0;

  return v4;
}

- (void)session:(id)session didUpdateConfiguration:(id)configuration
{
  sessionCopy = session;
  configurationCopy = configuration;
  v8 = sub_100006E1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = sessionCopy;
    v11 = 2112;
    v12 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "carSession: %@, didUpdateConfiguration: %@", &v9, 0x16u);
  }

  [(CarDisplayController *)self _setupClusterSuggestionControllerIfNeeded];
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FAF6F4;
  block[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v10 = disconnectCopy;
  v5 = disconnectCopy;
  dispatch_async(&_dispatch_main_q, block);
  signalPackQueue = self->_signalPackQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100FAF894;
  v7[3] = &unk_101661B98;
  objc_copyWeak(&v8, &location);
  dispatch_async(signalPackQueue, v7);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FAFADC;
  block[3] = &unk_101661340;
  objc_copyWeak(&v11, &location);
  v10 = connectCopy;
  v5 = connectCopy;
  dispatch_async(&_dispatch_main_q, block);
  signalPackQueue = self->_signalPackQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100FAFC7C;
  v7[3] = &unk_101661B98;
  objc_copyWeak(&v8, &location);
  dispatch_async(signalPackQueue, v7);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)updateMapsSuggestionsSignalForMapType:(int)type
{
  objc_initWeak(&location, self);
  signalPackQueue = self->_signalPackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FAFE40;
  block[3] = &unk_10165FB70;
  objc_copyWeak(&v7, &location);
  typeCopy = type;
  dispatch_async(signalPackQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_sendMapsSuggestionsSignals
{
  if (!self->_donater)
  {
    v4 = objc_alloc_init(MapsSuggestionsDonater);
    donater = self->_donater;
    self->_donater = v4;
  }

  if (!self->_signalPack)
  {
    v6 = objc_alloc_init(MapsSuggestionsMutableSignalPack);
    signalPack = self->_signalPack;
    self->_signalPack = v6;
  }

  if (self->_shouldOverrideMapTypeToStandard)
  {
    lastMapTypeFromiOSChrome = 1;
  }

  else
  {
    lastMapTypeFromiOSChrome = self->_lastMapTypeFromiOSChrome;
  }

  *&v2 = lastMapTypeFromiOSChrome;
  [(MapsSuggestionsMutableSignalPack *)self->_signalPack writeSignalValue:21 forType:v2];
  v9 = self->_donater;
  v10 = [(MapsSuggestionsMutableSignalPack *)self->_signalPack copy];
  [(MapsSuggestionsDonater *)v9 donateSignalPack:v10];

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    shouldOverrideMapTypeToStandard = self->_shouldOverrideMapTypeToStandard;
    if (lastMapTypeFromiOSChrome >= 5)
    {
      lastMapTypeFromiOSChrome = [NSString stringWithFormat:@"(unknown: %i)", lastMapTypeFromiOSChrome];
    }

    else
    {
      lastMapTypeFromiOSChrome = off_10165FE80[lastMapTypeFromiOSChrome];
    }

    *buf = 67109378;
    v15 = shouldOverrideMapTypeToStandard;
    v16 = 2112;
    v17 = lastMapTypeFromiOSChrome;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_shouldOverrideMapTypeToStandard: %d, sending: %@", buf, 0x12u);
  }
}

- (void)_carSessionControllerObserversDidChange:(id)change
{
  isCurrentlyConnectedToAnyCarScene = [(CarDisplayController *)self isCurrentlyConnectedToAnyCarScene];

  [(CarDisplayController *)self setWasConnectedToAnyCarScene:isCurrentlyConnectedToAnyCarScene];
}

- (void)_externalNavigationOwnershipUpdated:(id)updated
{
  v3 = +[MNNavigationService sharedService];
  isInNavigatingState = [v3 isInNavigatingState];

  v5 = +[MapsExternalDevice sharedInstance];
  externalAccessoryIsNavigating = [v5 externalAccessoryIsNavigating];

  v7 = sub_100006E1C();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (externalAccessoryIsNavigating)
  {
    v9 = isInNavigatingState == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v8)
    {
      if (externalAccessoryIsNavigating)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      if (isInNavigatingState)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = v12;
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Maps external navigation ownership changed but either the external device is not navigating (%{public}@) or we aren't navigating (%{public}@); ignoring", &v14, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Will stop iOS navigation because the built-in car system has started its own navigation", &v14, 2u);
    }

    v7 = +[MNNavigationService sharedService];
    [v7 stopNavigationWithReason:2];
  }
}

- (void)_geoServiceDidUpdateCountryConfiguration:(id)configuration
{
  v3 = objc_opt_class();

  [v3 _updateCarIntegrationState];
}

- (void)dealloc
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v12 = "[CarDisplayController dealloc]";
        v13 = 2080;
        v14 = "CarDisplayController.m";
        v15 = 1024;
        v16 = 265;
        v17 = 2080;
        v18 = "dispatch_get_main_queue()";
        v19 = 2080;
        v20 = dispatch_queue_get_label(&_dispatch_main_q);
        v21 = 2080;
        v22 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v8 = sub_10006D178();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v12 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  [(CarDisplayController *)self _tearDownCarPlayIfNeeded];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v10.receiver = self;
  v10.super_class = CarDisplayController;
  [(CarDisplayController *)&v10 dealloc];
}

@end