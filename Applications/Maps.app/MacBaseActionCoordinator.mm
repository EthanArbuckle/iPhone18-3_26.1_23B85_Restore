@interface MacBaseActionCoordinator
- (BOOL)shouldClearMapSelectionOnDismissOfViewController:(id)controller;
- (CollectionHandler)injectedCollection;
- (ContaineeContentInjection)sidebarContentInjector;
- (id)macChromeViewController;
- (void)handleMapViewTapToDeselect;
- (void)macPresentRouteSearchSuggestionsController:(id)controller;
- (void)makeMapViewFirstResponder;
- (void)setSidebarContentInjector:(id)injector;
- (void)toggleRoutePlanning;
- (void)userProfileViewControllerDismissByGestureWithViewController:(id)controller;
- (void)viewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info;
- (void)viewController:(id)controller removeDroppedPin:(id)pin;
- (void)viewController:(id)controller selectPersonalizedItem:(id)item source:(unint64_t)source saveSelectionState:(BOOL)state;
- (void)viewController:(id)controller selectSearchResult:(id)result addToHistory:(BOOL)history source:(unint64_t)source saveSelectionState:(BOOL)state replaceCurrentCard:(BOOL)card;
- (void)viewControllerGoPreviousState:(id)state withSender:(id)sender;
@end

@implementation MacBaseActionCoordinator

- (void)userProfileViewControllerDismissByGestureWithViewController:(id)controller
{
  macChromeViewController = [(MacBaseActionCoordinator *)self macChromeViewController];
  [macChromeViewController setNeedsUpdateComponent:@"floatingControls" animated:1];
}

- (CollectionHandler)injectedCollection
{
  sidebarContentInjector = [(MacBaseActionCoordinator *)self sidebarContentInjector];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collection = [sidebarContentInjector collection];
  }

  else
  {
    collection = 0;
  }

  return collection;
}

- (void)setSidebarContentInjector:(id)injector
{
  injectorCopy = injector;
  macContainerViewController = [(MacBaseActionCoordinator *)self macContainerViewController];
  [macContainerViewController setSidebarContentInjector:injectorCopy];

  v6 = +[UIMenuSystem mainSystem];
  [v6 setNeedsRebuild];
}

- (ContaineeContentInjection)sidebarContentInjector
{
  macContainerViewController = [(MacBaseActionCoordinator *)self macContainerViewController];
  sidebarContentInjector = [macContainerViewController sidebarContentInjector];

  return sidebarContentInjector;
}

- (void)viewController:(id)controller removeDroppedPin:(id)pin
{
  v8.receiver = self;
  v8.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v8 viewController:controller removeDroppedPin:pin];
  macChromeViewController = [(MacBaseActionCoordinator *)self macChromeViewController];
  mapView = [macChromeViewController mapView];
  _mapLayer = [mapView _mapLayer];
  [_mapLayer clearPreviouslySelectedLabelMarker];
}

- (void)macPresentRouteSearchSuggestionsController:(id)controller
{
  controllerCopy = controller;
  routePlanningOverviewViewController = [(ActionCoordinator *)self routePlanningOverviewViewController];
  v7 = routePlanningOverviewViewController;
  if (qword_10195DF00 == -1)
  {
    v6 = routePlanningOverviewViewController;
  }

  else
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
    v6 = v7;
  }

  [(ActionCoordinator *)self viewController:v6 presentMenuController:controllerCopy animated:1 fromChrome:(byte_10195DF08 & 1) == 0 completion:&stru_101660F28];
}

- (void)makeMapViewFirstResponder
{
  macChromeViewController = [(MacBaseActionCoordinator *)self macChromeViewController];
  mapView = [macChromeViewController mapView];
  [mapView becomeFirstResponder];
}

- (BOOL)shouldClearMapSelectionOnDismissOfViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___MapItemProviding])
  {
    v5 = controllerCopy;
    mapSelectionManager = [(ActionCoordinator *)self mapSelectionManager];
    mapItem = [v5 mapItem];

    v8 = [mapSelectionManager isMapItemSelected:mapItem];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  return v8 & 1;
}

- (void)handleMapViewTapToDeselect
{
  v4 = [[HomeDeselectionReason alloc] initWithAction:3];
  searchViewControllerIfLoaded = [(ActionCoordinator *)self searchViewControllerIfLoaded];
  [searchViewControllerIfLoaded clearSelectionWithReason:v4];
}

- (void)toggleRoutePlanning
{
  isRoutePlanningPresented = [(ActionCoordinator *)self isRoutePlanningPresented];
  v7.receiver = self;
  v7.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v7 toggleRoutePlanning];
  isRoutePlanningPresented2 = [(ActionCoordinator *)self isRoutePlanningPresented];
  if (isRoutePlanningPresented)
  {
    if ((isRoutePlanningPresented2 & 1) == 0)
    {
      v5 = [[HomeDeselectionReason alloc] initWithAction:2];
      searchViewControllerIfLoaded = [(ActionCoordinator *)self searchViewControllerIfLoaded];
      [searchViewControllerIfLoaded clearSelectionWithReason:v5];
    }
  }
}

- (void)viewControllerGoPreviousState:(id)state withSender:(id)sender
{
  v7.receiver = self;
  v7.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v7 viewControllerGoPreviousState:state withSender:sender];
  v5 = [[HomeDeselectionReason alloc] initWithAction:1];
  searchViewControllerIfLoaded = [(ActionCoordinator *)self searchViewControllerIfLoaded];
  [searchViewControllerIfLoaded clearSelectionWithReason:v5];
}

- (void)viewController:(id)controller selectSearchResult:(id)result addToHistory:(BOOL)history source:(unint64_t)source saveSelectionState:(BOOL)state replaceCurrentCard:(BOOL)card
{
  cardCopy = card;
  stateCopy = state;
  historyCopy = history;
  resultCopy = result;
  controllerCopy = controller;
  v16 = sub_1000410AC();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = resultCopy;
    v20 = 2048;
    sourceCopy = source;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Will Present Single Result: %@, source: %lu", buf, 0x16u);
  }

  v17.receiver = self;
  v17.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v17 viewController:controllerCopy selectSearchResult:resultCopy addToHistory:historyCopy source:source saveSelectionState:stateCopy replaceCurrentCard:cardCopy];
}

- (void)viewController:(id)controller doSearchItem:(id)item withUserInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v5 viewController:controller doSearchItem:item withUserInfo:info];
}

- (void)viewController:(id)controller selectPersonalizedItem:(id)item source:(unint64_t)source saveSelectionState:(BOOL)state
{
  v6.receiver = self;
  v6.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v6 viewController:controller selectPersonalizedItem:item source:source saveSelectionState:state];
}

- (id)macChromeViewController
{
  macContainerViewController = [(MacBaseActionCoordinator *)self macContainerViewController];
  chromeViewController = [macContainerViewController chromeViewController];

  return chromeViewController;
}

@end