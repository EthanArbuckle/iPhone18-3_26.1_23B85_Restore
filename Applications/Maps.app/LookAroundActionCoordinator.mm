@interface LookAroundActionCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)pptTestIsTrayType:(int64_t)type;
- (GEOMapServiceTraits)newTraits;
- (LookAroundActionCoordinator)initWithContainerViewController:(id)controller;
- (LookAroundContainerViewController)containerViewController;
- (LookAroundPIPDataCoordinator)dataCoordinator;
- (MKMapItem)currentMapItem;
- (id)activityViewControllerForPlaceViewController:(id)controller;
- (id)mapView;
- (id)placeCardViewController;
- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)c;
- (id)trayContaineeViewControllerWithLookAroundView:(id)view;
- (int64_t)displayedViewMode;
- (int64_t)overriddenInterfaceStyleForPlaceViewControllerSubviews:(id)subviews;
- (void)_captureLookAroundUserAction:(int)action onTarget:(int)target;
- (void)_handleEnterToBackgroundNotification:(id)notification;
- (void)_handleEnterToForegroundNotification:(id)notification;
- (void)_registerBackgroundNotifications;
- (void)collectionPickerClosed:(id)closed;
- (void)collectionPickerNewCollection:(id)collection;
- (void)didDismissViewController:(id)controller mapItem:(id)item;
- (void)exitLookAround;
- (void)placeCardViewController:(id)controller didSelectParent:(id)parent;
- (void)placeCardViewController:(id)controller doDirectionItem:(id)item userInfo:(id)info;
- (void)placeCardViewController:(id)controller presentPOIEnrichmentWithCoordinator:(id)coordinator;
- (void)placeCardViewController:(id)controller requestCopyLinkToClipboard:(id)clipboard;
- (void)placeCardViewController:(id)controller seeAllCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids;
- (void)placeCardViewController:(id)controller selectExploreGuidesWithGuideLocation:(id)location;
- (void)placeCardViewController:(id)controller showCollection:(id)collection;
- (void)placeCardViewController:(id)controller showCuratedCollection:(id)collection;
- (void)placeCardViewController:(id)controller showCuratedCollectionIdentifier:(id)identifier;
- (void)placeCardViewController:(id)controller showRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate;
- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type;
- (void)presentFromContainerViewController:(id)controller animated:(BOOL)animated;
- (void)viewController:(id)controller createNewCollectionWithSession:(id)session;
- (void)viewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)viewController:(id)controller openURL:(id)l;
- (void)viewController:(id)controller pickCollectionWithSession:(id)session sourceView:(id)view sourceRect:(CGRect)rect;
- (void)viewController:(id)controller presentPlaceCardForItem:(id)item animated:(BOOL)animated;
- (void)viewControllerGoPreviousState:(id)state withSender:(id)sender;
- (void)viewControllerPresentLookAround:(id)around showsFullScreen:(BOOL)screen;
- (void)viewControllerPresentTTR:(id)r;
- (void)viewControllerPresentTray:(id)tray showsFullScreen:(BOOL)screen usingLookAroundView:(id)view;
@end

@implementation LookAroundActionCoordinator

- (LookAroundContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (AppCoordinator)appCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_appCoordinator);

  return WeakRetained;
}

- (void)_captureLookAroundUserAction:(int)action onTarget:(int)target
{
  v4 = *&target;
  v5 = *&action;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  lookAroundView = [WeakRetained lookAroundView];

  [lookAroundView centerCoordinate];
  v9 = [[GEOLocation alloc] initWithLatitude:v7 longitude:v8];
  [lookAroundView presentationYaw];
  v11 = v10;
  visiblePlaceMUIDs = [lookAroundView visiblePlaceMUIDs];
  v13 = [visiblePlaceMUIDs count];
  if ([lookAroundView showsRoadLabels])
  {
    showsPointLabels = 1;
  }

  else
  {
    showsPointLabels = [lookAroundView showsPointLabels];
  }

  LOBYTE(v15) = showsPointLabels;
  [GEOAPPortal captureLookAroundUserAction:v5 onTarget:v4 eventValue:0 location:v9 heading:v11 zoom:v13 numberPoisInView:0.0 labelingShown:v15];
}

- (void)pptTestDismissTrayAnimated:(BOOL)animated assertTrayType:(int64_t)type
{
  if ((type - 1) >= 2)
  {
    animatedCopy = animated;
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained popLastViewControllerAnimated:animatedCopy];
  }
}

- (BOOL)pptTestIsTrayType:(int64_t)type
{
  if (type != 3)
  {
    return 0;
  }

  containerViewController = [(LookAroundActionCoordinator *)self containerViewController];
  isDisplayingLookAroundFullScreen = [containerViewController isDisplayingLookAroundFullScreen];

  return isDisplayingLookAroundFullScreen;
}

- (void)_handleEnterToBackgroundNotification:(id)notification
{
  object = [notification object];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  _maps_uiScene = [WeakRetained _maps_uiScene];

  if (object == _maps_uiScene)
  {

    [GEOAPPortal captureLookAroundUserAction:6059 onTarget:0 eventValue:0];
  }
}

- (void)_handleEnterToForegroundNotification:(id)notification
{
  object = [notification object];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  _maps_uiScene = [WeakRetained _maps_uiScene];

  if (object == _maps_uiScene)
  {

    [GEOAPPortal captureLookAroundUserAction:6058 onTarget:0 eventValue:0];
  }
}

- (void)_registerBackgroundNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleEnterToBackgroundNotification:" name:UISceneDidEnterBackgroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleEnterToForegroundNotification:" name:UISceneWillEnterForegroundNotification object:0];
}

- (int64_t)overriddenInterfaceStyleForPlaceViewControllerSubviews:(id)subviews
{
  subviewsCopy = subviews;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  isDisplayingLookAroundFullScreen = [WeakRetained isDisplayingLookAroundFullScreen];

  if (isDisplayingLookAroundFullScreen)
  {
    preferredUserInterfaceStyle = 2;
  }

  else
  {
    preferredUserInterfaceStyle = [subviewsCopy preferredUserInterfaceStyle];
  }

  return preferredUserInterfaceStyle;
}

- (id)activityViewControllerForPlaceViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  createActivityViewControllerForCurrentContext = [WeakRetained createActivityViewControllerForCurrentContext];

  return createActivityViewControllerForCurrentContext;
}

- (void)exitLookAround
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = sub_10000FA08(WeakRetained);

  v5 = objc_loadWeakRetained(&self->_containerViewController);
  isDisplayingLookAroundPIP = [v5 isDisplayingLookAroundPIP];
  v7 = 0.26;
  if (v4 != 5)
  {
    v7 = 0.0;
  }

  if (isDisplayingLookAroundPIP)
  {
    v8 = 0.75;
  }

  else
  {
    v8 = v7;
  }

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  [v9 prepareForExit];

  dataCoordinator = [(LookAroundActionCoordinator *)self dataCoordinator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C84910;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, &location);
  [dataCoordinator exitLookAroundPIPAfter:v11 withCompletion:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)didDismissViewController:(id)controller mapItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  v8 = [[PlaceCardItem alloc] initWithMapItem:itemCopy];

  [(LookAroundActionCoordinator *)self viewController:controllerCopy presentPlaceCardForItem:v8];
}

- (void)viewController:(id)controller openURL:(id)l
{
  lCopy = l;
  v6 = [MapsWebLinkPresenter alloc];
  containerViewController = [(LookAroundActionCoordinator *)self containerViewController];
  v8 = [(MapsWebLinkPresenter *)v6 initWithPresentingViewController:containerViewController];

  [(MapsWebLinkPresenter *)v8 presentWebURL:lCopy];
}

- (void)viewController:(id)controller pickCollectionWithSession:(id)session sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  sessionCopy = session;
  height = [[CollectionPicker alloc] initWithCollectionEditSession:sessionCopy sourceView:viewCopy sourceRect:x, y, width, height];

  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = height;

  [(CollectionPicker *)self->_collectionPicker setDelegate:self];
  v16 = self->_collectionPicker;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100C84BD4;
  v18[3] = &unk_10164F8D0;
  v18[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100C84C4C;
  v17[3] = &unk_10164F8F8;
  v17[4] = self;
  [(CollectionPicker *)v16 viewControllerToPresentIfContainee:v18 ifAlertController:v17];
}

- (void)viewControllerPresentTTR:(id)r
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  lookAroundView = [WeakRetained lookAroundView];
  fullSharingURL = [lookAroundView fullSharingURL];
  absoluteString = [fullSharingURL absoluteString];

  v8 = [NSString stringWithFormat:@"Summary:\n\nSteps to Reproduce:\n\nResults:\n\nTest Environment:\n\nShare Link:\n%@", absoluteString];
  v9 = objc_opt_new();
  [v9 setTitle:@"[LookAround] "];
  [v9 addNote:v8];
  v10 = +[MapsRadarComponent mapsComponent];
  [v9 setComponent:v10];

  if (qword_10195EDB8 != -1)
  {
    dispatch_once(&qword_10195EDB8, &stru_10164F918);
  }

  v11 = qword_10195EDB0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_12;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(LookAroundActionCoordinator *)selfCopy performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

        goto LABEL_10;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_10:

LABEL_12:
    *buf = 138543362;
    v20 = selfCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR for lookaround", buf, 0xCu);
  }

  v18 = +[MapsRadarController sharedInstance];
  [v18 launchTTRWithRadar:v9];
}

- (void)viewControllerPresentTray:(id)tray showsFullScreen:(BOOL)screen usingLookAroundView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [(LookAroundActionCoordinator *)self trayContaineeViewControllerWithLookAroundView:viewCopy];

  [WeakRetained presentTray:v7];
}

- (void)presentFromContainerViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [controllerCopy setContaineeDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:controllerCopy animated:animatedCopy];
}

- (void)viewController:(id)controller presentPlaceCardForItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  placeCardViewController = [(LookAroundActionCoordinator *)self placeCardViewController];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  currentViewController = [WeakRetained currentViewController];

  placeCardItem = [placeCardViewController placeCardItem];
  mapItem = [placeCardItem mapItem];
  _geoMapItem = [mapItem _geoMapItem];

  mapItem2 = [itemCopy mapItem];
  _geoMapItem2 = [mapItem2 _geoMapItem];

  IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();
  if (currentViewController == placeCardViewController && (IsEqualToMapItemForPurpose & 1) != 0)
  {
    cardPresentationController = [placeCardViewController cardPresentationController];
    [cardPresentationController wantsLayout:2];
  }

  else
  {
    [(LookAroundActionCoordinator *)self _captureLookAroundUserAction:21 onTarget:201];
    [placeCardViewController setPlaceCardItem:itemCopy withHistory:0];
    cardPresentationController = objc_loadWeakRetained(&self->_containerViewController);
    [cardPresentationController presentController:placeCardViewController animated:animatedCopy];
  }
}

- (void)viewControllerPresentLookAround:(id)around showsFullScreen:(BOOL)screen
{
  screenCopy = screen;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained animateTransitionToFullScreen:screenCopy];
}

- (void)viewControllerGoPreviousState:(id)state withSender:(id)sender
{
  stateCopy = state;
  senderCopy = sender;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_4:
    if (self->_placeCardViewController == stateCopy)
    {
      [(LookAroundActionCoordinator *)self _captureLookAroundUserAction:4 onTarget:201];
      WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
      [WeakRetained popLastViewControllerAnimated:1];

      v14 = dispatch_time(0, 250000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100C853DC;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_after(v14, &_dispatch_main_q, block);
    }

    else if (self->_trayContaineeViewController != stateCopy)
    {
      v12 = objc_loadWeakRetained(&self->_containerViewController);
      [v12 popLastViewControllerAnimated:1];
    }

    goto LABEL_12;
  }

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  _maps_mapsSceneDelegate = [v9 _maps_mapsSceneDelegate];
  topMostPresentedViewController = [_maps_mapsSceneDelegate topMostPresentedViewController];

  if (([(LookAroundTrayContaineeViewController *)topMostPresentedViewController conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol]& 1) != 0)
  {

    goto LABEL_4;
  }

  if (topMostPresentedViewController != stateCopy)
  {
    presentedViewController = [(LookAroundTrayContaineeViewController *)stateCopy presentedViewController];

    if (presentedViewController == topMostPresentedViewController)
    {
      [(LookAroundTrayContaineeViewController *)topMostPresentedViewController dismissViewControllerAnimated:1 completion:0];
    }
  }

LABEL_12:
}

- (void)viewController:(id)controller createNewCollectionWithSession:(id)session
{
  controllerCopy = controller;
  sessionCopy = session;
  collection = [sessionCopy collection];
  if ([collection handlerType] == 3)
  {
    v8 = 256;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 251;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = 201;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  v9 = [[CollectionCreateViewController alloc] initWithEditSession:sessionCopy];
  [(ContaineeViewController *)v9 setContaineeDelegate:self];
  [(CollectionCreateViewController *)v9 setTarget:v8];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v9 animated:1];
}

- (void)viewController:(id)controller editNameOfMapItem:(id)item saveHandler:(id)handler cancelHandler:(id)cancelHandler
{
  v8 = [UIViewController _maps_viewControllerForRenamingMapItem:item saveHandler:handler cancelHandler:cancelHandler];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)collectionPickerNewCollection:(id)collection
{
  collectionCopy = collection;
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = 0;

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C85744;
  v11[3] = &unk_10164F880;
  objc_copyWeak(&v13, &location);
  v6 = collectionCopy;
  v12 = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C857C0;
  v8[3] = &unk_10164F8A8;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v7 viewControllerToPresentIfContainee:v11 ifAlertController:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)collectionPickerClosed:(id)closed
{
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = 0;
}

- (id)trayContaineeViewControllerWithLookAroundView:(id)view
{
  trayContaineeViewController = self->_trayContaineeViewController;
  if (!trayContaineeViewController)
  {
    viewCopy = view;
    v6 = [[LookAroundTrayContaineeViewController alloc] initWithLookAroundView:viewCopy];

    v7 = self->_trayContaineeViewController;
    self->_trayContaineeViewController = v6;

    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController loadViewIfNeeded];
    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController setActionCoordinator:self];
    [self->_trayContaineeViewController setContaineeDelegate:self];
    trayContaineeViewController = self->_trayContaineeViewController;
  }

  return trayContaineeViewController;
}

- (LookAroundPIPDataCoordinator)dataCoordinator
{
  if (!self->_dataCoordinator)
  {
    v3 = [LookAroundPIPDataCoordinatorImpl alloc];
    mapView = [(LookAroundActionCoordinator *)self mapView];
    v5 = [(LookAroundPIPDataCoordinatorImpl *)v3 initWithMapView:mapView];
    dataCoordinator = self->_dataCoordinator;
    self->_dataCoordinator = v5;
  }

  if (!self->_analyticsController)
  {
    v7 = [[LookAroundPIPAnalyticsController alloc] initWithDataCoordinator:self->_dataCoordinator];
    analyticsController = self->_analyticsController;
    self->_analyticsController = v7;
  }

  v9 = self->_dataCoordinator;

  return v9;
}

- (id)placeCardViewController
{
  placeCardViewController = self->_placeCardViewController;
  if (!placeCardViewController)
  {
    v4 = objc_alloc_init(PlaceCardViewController);
    v5 = self->_placeCardViewController;
    self->_placeCardViewController = v4;

    [(PlaceCardViewController *)self->_placeCardViewController setExcludedContent:13006];
    [(PlaceCardViewController *)self->_placeCardViewController setPlaceCardDelegate:self];
    [(InfoCardViewController *)self->_placeCardViewController setContaineeDelegate:self];
    [(PlaceCardViewController *)self->_placeCardViewController setActionCoordinator:self];
    placeCardViewController = self->_placeCardViewController;
  }

  return placeCardViewController;
}

- (id)mapView
{
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (MKMapItem)currentMapItem
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  currentMapItem = [WeakRetained currentMapItem];

  return currentMapItem;
}

- (LookAroundActionCoordinator)initWithContainerViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = LookAroundActionCoordinator;
  v5 = [(LookAroundActionCoordinator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, controllerCopy);
    [(LookAroundActionCoordinator *)v6 _registerBackgroundNotifications];
  }

  return v6;
}

- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)c
{
  v3 = objc_alloc_init(MKMapView);

  return v3;
}

- (void)placeCardViewController:(id)controller requestCopyLinkToClipboard:(id)clipboard
{
  clipboardCopy = clipboard;
  containerViewController = [(LookAroundActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  [chromeViewController copy:clipboardCopy];
}

- (void)placeCardViewController:(id)controller presentPOIEnrichmentWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  containerViewController = [(LookAroundActionCoordinator *)self containerViewController];
  [coordinatorCopy setContainerViewController:containerViewController];

  containeeDelegate = [controllerCopy containeeDelegate];

  [coordinatorCopy setContaineeDelegate:containeeDelegate];
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  [appCoordinator presentPOIEnrichmentWithCoordinator:coordinatorCopy];
}

- (void)placeCardViewController:(id)controller seeAllCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids
{
  titleCopy = title;
  collectionsCopy = collections;
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  [appCoordinator openCuratedCollectionsList:collectionsCopy usingTitle:titleCopy];
}

- (void)placeCardViewController:(id)controller selectExploreGuidesWithGuideLocation:(id)location
{
  locationCopy = location;
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  [appCoordinator openGuidesHomeWithGuideLocation:locationCopy];
}

- (void)placeCardViewController:(id)controller showCuratedCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  [appCoordinator openCuratedCollectionWithIdentifier:identifierCopy];
}

- (void)placeCardViewController:(id)controller showCuratedCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [MKMapItemIdentifier alloc];
  collectionIdentifier = [collectionCopy collectionIdentifier];

  v9 = [v6 initWithGEOMapItemIdentifier:collectionIdentifier];
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  [appCoordinator openCuratedCollectionWithIdentifier:v9];
}

- (void)placeCardViewController:(id)controller showRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate
{
  delegateCopy = delegate;
  itemCopy = item;
  titleCopy = title;
  itemsCopy = items;
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  [appCoordinator openRelatedMapItems:itemsCopy withTitle:titleCopy originalMapItem:itemCopy analyticsDelegate:delegateCopy];
}

- (void)placeCardViewController:(id)controller showCollection:(id)collection
{
  collectionCopy = collection;
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  [appCoordinator openCollection:collectionCopy];
}

- (void)placeCardViewController:(id)controller doDirectionItem:(id)item userInfo:(id)info
{
  infoCopy = info;
  itemCopy = item;
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  [appCoordinator enterRoutePlanningWithDirectionItem:itemCopy allowToPromptEditing:1 withUserInfo:infoCopy];
}

- (void)placeCardViewController:(id)controller didSelectParent:(id)parent
{
  parentCopy = parent;
  appCoordinator = [(LookAroundActionCoordinator *)self appCoordinator];
  [appCoordinator openParentMapItem:parentCopy];
}

- (GEOMapServiceTraits)newTraits
{
  containerViewController = [(LookAroundActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  return currentTraits;
}

- (int64_t)displayedViewMode
{
  containerViewController = [(LookAroundActionCoordinator *)self containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  displayedViewMode = [chromeViewController displayedViewMode];

  return displayedViewMode;
}

@end