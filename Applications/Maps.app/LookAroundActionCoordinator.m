@interface LookAroundActionCoordinator
- (AppCoordinator)appCoordinator;
- (BOOL)pptTestIsTrayType:(int64_t)a3;
- (GEOMapServiceTraits)newTraits;
- (LookAroundActionCoordinator)initWithContainerViewController:(id)a3;
- (LookAroundContainerViewController)containerViewController;
- (LookAroundPIPDataCoordinator)dataCoordinator;
- (MKMapItem)currentMapItem;
- (id)activityViewControllerForPlaceViewController:(id)a3;
- (id)mapView;
- (id)placeCardViewController;
- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)a3;
- (id)trayContaineeViewControllerWithLookAroundView:(id)a3;
- (int64_t)displayedViewMode;
- (int64_t)overriddenInterfaceStyleForPlaceViewControllerSubviews:(id)a3;
- (void)_captureLookAroundUserAction:(int)a3 onTarget:(int)a4;
- (void)_handleEnterToBackgroundNotification:(id)a3;
- (void)_handleEnterToForegroundNotification:(id)a3;
- (void)_registerBackgroundNotifications;
- (void)collectionPickerClosed:(id)a3;
- (void)collectionPickerNewCollection:(id)a3;
- (void)didDismissViewController:(id)a3 mapItem:(id)a4;
- (void)exitLookAround;
- (void)placeCardViewController:(id)a3 didSelectParent:(id)a4;
- (void)placeCardViewController:(id)a3 doDirectionItem:(id)a4 userInfo:(id)a5;
- (void)placeCardViewController:(id)a3 presentPOIEnrichmentWithCoordinator:(id)a4;
- (void)placeCardViewController:(id)a3 requestCopyLinkToClipboard:(id)a4;
- (void)placeCardViewController:(id)a3 seeAllCollections:(id)a4 usingTitle:(id)a5 usingCollectionIds:(id)a6;
- (void)placeCardViewController:(id)a3 selectExploreGuidesWithGuideLocation:(id)a4;
- (void)placeCardViewController:(id)a3 showCollection:(id)a4;
- (void)placeCardViewController:(id)a3 showCuratedCollection:(id)a4;
- (void)placeCardViewController:(id)a3 showCuratedCollectionIdentifier:(id)a4;
- (void)placeCardViewController:(id)a3 showRelatedMapItems:(id)a4 withTitle:(id)a5 originalMapItem:(id)a6 analyticsDelegate:(id)a7;
- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4;
- (void)presentFromContainerViewController:(id)a3 animated:(BOOL)a4;
- (void)viewController:(id)a3 createNewCollectionWithSession:(id)a4;
- (void)viewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6;
- (void)viewController:(id)a3 openURL:(id)a4;
- (void)viewController:(id)a3 pickCollectionWithSession:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6;
- (void)viewController:(id)a3 presentPlaceCardForItem:(id)a4 animated:(BOOL)a5;
- (void)viewControllerGoPreviousState:(id)a3 withSender:(id)a4;
- (void)viewControllerPresentLookAround:(id)a3 showsFullScreen:(BOOL)a4;
- (void)viewControllerPresentTTR:(id)a3;
- (void)viewControllerPresentTray:(id)a3 showsFullScreen:(BOOL)a4 usingLookAroundView:(id)a5;
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

- (void)_captureLookAroundUserAction:(int)a3 onTarget:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v16 = [WeakRetained lookAroundView];

  [v16 centerCoordinate];
  v9 = [[GEOLocation alloc] initWithLatitude:v7 longitude:v8];
  [v16 presentationYaw];
  v11 = v10;
  v12 = [v16 visiblePlaceMUIDs];
  v13 = [v12 count];
  if ([v16 showsRoadLabels])
  {
    v14 = 1;
  }

  else
  {
    v14 = [v16 showsPointLabels];
  }

  LOBYTE(v15) = v14;
  [GEOAPPortal captureLookAroundUserAction:v5 onTarget:v4 eventValue:0 location:v9 heading:v11 zoom:v13 numberPoisInView:0.0 labelingShown:v15];
}

- (void)pptTestDismissTrayAnimated:(BOOL)a3 assertTrayType:(int64_t)a4
{
  if ((a4 - 1) >= 2)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained popLastViewControllerAnimated:v5];
  }
}

- (BOOL)pptTestIsTrayType:(int64_t)a3
{
  if (a3 != 3)
  {
    return 0;
  }

  v3 = [(LookAroundActionCoordinator *)self containerViewController];
  v4 = [v3 isDisplayingLookAroundFullScreen];

  return v4;
}

- (void)_handleEnterToBackgroundNotification:(id)a3
{
  v4 = [a3 object];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [WeakRetained _maps_uiScene];

  if (v4 == v6)
  {

    [GEOAPPortal captureLookAroundUserAction:6059 onTarget:0 eventValue:0];
  }
}

- (void)_handleEnterToForegroundNotification:(id)a3
{
  v4 = [a3 object];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [WeakRetained _maps_uiScene];

  if (v4 == v6)
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

- (int64_t)overriddenInterfaceStyleForPlaceViewControllerSubviews:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [WeakRetained isDisplayingLookAroundFullScreen];

  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = [v4 preferredUserInterfaceStyle];
  }

  return v7;
}

- (id)activityViewControllerForPlaceViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained createActivityViewControllerForCurrentContext];

  return v4;
}

- (void)exitLookAround
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = sub_10000FA08(WeakRetained);

  v5 = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [v5 isDisplayingLookAroundPIP];
  v7 = 0.26;
  if (v4 != 5)
  {
    v7 = 0.0;
  }

  if (v6)
  {
    v8 = 0.75;
  }

  else
  {
    v8 = v7;
  }

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  [v9 prepareForExit];

  v10 = [(LookAroundActionCoordinator *)self dataCoordinator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C84910;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, &location);
  [v10 exitLookAroundPIPAfter:v11 withCompletion:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)didDismissViewController:(id)a3 mapItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PlaceCardItem alloc] initWithMapItem:v6];

  [(LookAroundActionCoordinator *)self viewController:v7 presentPlaceCardForItem:v8];
}

- (void)viewController:(id)a3 openURL:(id)a4
{
  v5 = a4;
  v6 = [MapsWebLinkPresenter alloc];
  v7 = [(LookAroundActionCoordinator *)self containerViewController];
  v8 = [(MapsWebLinkPresenter *)v6 initWithPresentingViewController:v7];

  [(MapsWebLinkPresenter *)v8 presentWebURL:v5];
}

- (void)viewController:(id)a3 pickCollectionWithSession:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a5;
  v13 = a4;
  v14 = [[CollectionPicker alloc] initWithCollectionEditSession:v13 sourceView:v12 sourceRect:x, y, width, height];

  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = v14;

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

- (void)viewControllerPresentTTR:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v5 = [WeakRetained lookAroundView];
  v6 = [v5 fullSharingURL];
  v7 = [v6 absoluteString];

  v8 = [NSString stringWithFormat:@"Summary:\n\nSteps to Reproduce:\n\nResults:\n\nTest Environment:\n\nShare Link:\n%@", v7];
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
    v12 = self;
    if (!v12)
    {
      v17 = @"<nil>";
      goto LABEL_12;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(LookAroundActionCoordinator *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_10;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_10:

LABEL_12:
    *buf = 138543362;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR for lookaround", buf, 0xCu);
  }

  v18 = +[MapsRadarController sharedInstance];
  [v18 launchTTRWithRadar:v9];
}

- (void)viewControllerPresentTray:(id)a3 showsFullScreen:(BOOL)a4 usingLookAroundView:(id)a5
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v7 = [(LookAroundActionCoordinator *)self trayContaineeViewControllerWithLookAroundView:v6];

  [WeakRetained presentTray:v7];
}

- (void)presentFromContainerViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 setContaineeDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v6 animated:v4];
}

- (void)viewController:(id)a3 presentPlaceCardForItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v17 = a4;
  v7 = [(LookAroundActionCoordinator *)self placeCardViewController];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v9 = [WeakRetained currentViewController];

  v10 = [v7 placeCardItem];
  v11 = [v10 mapItem];
  v12 = [v11 _geoMapItem];

  v13 = [v17 mapItem];
  v14 = [v13 _geoMapItem];

  IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();
  if (v9 == v7 && (IsEqualToMapItemForPurpose & 1) != 0)
  {
    v16 = [v7 cardPresentationController];
    [v16 wantsLayout:2];
  }

  else
  {
    [(LookAroundActionCoordinator *)self _captureLookAroundUserAction:21 onTarget:201];
    [v7 setPlaceCardItem:v17 withHistory:0];
    v16 = objc_loadWeakRetained(&self->_containerViewController);
    [v16 presentController:v7 animated:v5];
  }
}

- (void)viewControllerPresentLookAround:(id)a3 showsFullScreen:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained animateTransitionToFullScreen:v4];
}

- (void)viewControllerGoPreviousState:(id)a3 withSender:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_4:
    if (self->_placeCardViewController == v6)
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

    else if (self->_trayContaineeViewController != v6)
    {
      v12 = objc_loadWeakRetained(&self->_containerViewController);
      [v12 popLastViewControllerAnimated:1];
    }

    goto LABEL_12;
  }

  v9 = objc_loadWeakRetained(&self->_containerViewController);
  v10 = [v9 _maps_mapsSceneDelegate];
  v11 = [v10 topMostPresentedViewController];

  if (([(LookAroundTrayContaineeViewController *)v11 conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol]& 1) != 0)
  {

    goto LABEL_4;
  }

  if (v11 != v6)
  {
    v15 = [(LookAroundTrayContaineeViewController *)v6 presentedViewController];

    if (v15 == v11)
    {
      [(LookAroundTrayContaineeViewController *)v11 dismissViewControllerAnimated:1 completion:0];
    }
  }

LABEL_12:
}

- (void)viewController:(id)a3 createNewCollectionWithSession:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 collection];
  if ([v7 handlerType] == 3)
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

  v9 = [[CollectionCreateViewController alloc] initWithEditSession:v6];
  [(ContaineeViewController *)v9 setContaineeDelegate:self];
  [(CollectionCreateViewController *)v9 setTarget:v8];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained presentController:v9 animated:1];
}

- (void)viewController:(id)a3 editNameOfMapItem:(id)a4 saveHandler:(id)a5 cancelHandler:(id)a6
{
  v8 = [UIViewController _maps_viewControllerForRenamingMapItem:a4 saveHandler:a5 cancelHandler:a6];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained _maps_topMostPresentViewController:v8 animated:1 completion:0];
}

- (void)collectionPickerNewCollection:(id)a3
{
  v4 = a3;
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = 0;

  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C85744;
  v11[3] = &unk_10164F880;
  objc_copyWeak(&v13, &location);
  v6 = v4;
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

- (void)collectionPickerClosed:(id)a3
{
  collectionPicker = self->_collectionPicker;
  self->_collectionPicker = 0;
}

- (id)trayContaineeViewControllerWithLookAroundView:(id)a3
{
  trayContaineeViewController = self->_trayContaineeViewController;
  if (!trayContaineeViewController)
  {
    v5 = a3;
    v6 = [[LookAroundTrayContaineeViewController alloc] initWithLookAroundView:v5];

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
    v4 = [(LookAroundActionCoordinator *)self mapView];
    v5 = [(LookAroundPIPDataCoordinatorImpl *)v3 initWithMapView:v4];
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
  v2 = [(LookAroundActionCoordinator *)self appCoordinator];
  v3 = [v2 chromeViewController];
  v4 = [v3 mapView];

  return v4;
}

- (MKMapItem)currentMapItem
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained currentMapItem];

  return v3;
}

- (LookAroundActionCoordinator)initWithContainerViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LookAroundActionCoordinator;
  v5 = [(LookAroundActionCoordinator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerViewController, v4);
    [(LookAroundActionCoordinator *)v6 _registerBackgroundNotifications];
  }

  return v6;
}

- (id)placeCardViewControllerRequestsMapViewAssociatedWithVC:(id)a3
{
  v3 = objc_alloc_init(MKMapView);

  return v3;
}

- (void)placeCardViewController:(id)a3 requestCopyLinkToClipboard:(id)a4
{
  v5 = a4;
  v7 = [(LookAroundActionCoordinator *)self containerViewController];
  v6 = [v7 chromeViewController];
  [v6 copy:v5];
}

- (void)placeCardViewController:(id)a3 presentPOIEnrichmentWithCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LookAroundActionCoordinator *)self containerViewController];
  [v6 setContainerViewController:v8];

  v9 = [v7 containeeDelegate];

  [v6 setContaineeDelegate:v9];
  v10 = [(LookAroundActionCoordinator *)self appCoordinator];
  [v10 presentPOIEnrichmentWithCoordinator:v6];
}

- (void)placeCardViewController:(id)a3 seeAllCollections:(id)a4 usingTitle:(id)a5 usingCollectionIds:(id)a6
{
  v8 = a5;
  v9 = a4;
  v10 = [(LookAroundActionCoordinator *)self appCoordinator];
  [v10 openCuratedCollectionsList:v9 usingTitle:v8];
}

- (void)placeCardViewController:(id)a3 selectExploreGuidesWithGuideLocation:(id)a4
{
  v5 = a4;
  v6 = [(LookAroundActionCoordinator *)self appCoordinator];
  [v6 openGuidesHomeWithGuideLocation:v5];
}

- (void)placeCardViewController:(id)a3 showCuratedCollectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(LookAroundActionCoordinator *)self appCoordinator];
  [v6 openCuratedCollectionWithIdentifier:v5];
}

- (void)placeCardViewController:(id)a3 showCuratedCollection:(id)a4
{
  v5 = a4;
  v6 = [MKMapItemIdentifier alloc];
  v7 = [v5 collectionIdentifier];

  v9 = [v6 initWithGEOMapItemIdentifier:v7];
  v8 = [(LookAroundActionCoordinator *)self appCoordinator];
  [v8 openCuratedCollectionWithIdentifier:v9];
}

- (void)placeCardViewController:(id)a3 showRelatedMapItems:(id)a4 withTitle:(id)a5 originalMapItem:(id)a6 analyticsDelegate:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [(LookAroundActionCoordinator *)self appCoordinator];
  [v15 openRelatedMapItems:v14 withTitle:v13 originalMapItem:v12 analyticsDelegate:v11];
}

- (void)placeCardViewController:(id)a3 showCollection:(id)a4
{
  v5 = a4;
  v6 = [(LookAroundActionCoordinator *)self appCoordinator];
  [v6 openCollection:v5];
}

- (void)placeCardViewController:(id)a3 doDirectionItem:(id)a4 userInfo:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(LookAroundActionCoordinator *)self appCoordinator];
  [v9 enterRoutePlanningWithDirectionItem:v8 allowToPromptEditing:1 withUserInfo:v7];
}

- (void)placeCardViewController:(id)a3 didSelectParent:(id)a4
{
  v5 = a4;
  v6 = [(LookAroundActionCoordinator *)self appCoordinator];
  [v6 openParentMapItem:v5];
}

- (GEOMapServiceTraits)newTraits
{
  v2 = [(LookAroundActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 currentTraits];

  return v4;
}

- (int64_t)displayedViewMode
{
  v2 = [(LookAroundActionCoordinator *)self containerViewController];
  v3 = [v2 chromeViewController];
  v4 = [v3 displayedViewMode];

  return v4;
}

@end