@interface MacBaseActionCoordinator
- (BOOL)shouldClearMapSelectionOnDismissOfViewController:(id)a3;
- (CollectionHandler)injectedCollection;
- (ContaineeContentInjection)sidebarContentInjector;
- (id)macChromeViewController;
- (void)handleMapViewTapToDeselect;
- (void)macPresentRouteSearchSuggestionsController:(id)a3;
- (void)makeMapViewFirstResponder;
- (void)setSidebarContentInjector:(id)a3;
- (void)toggleRoutePlanning;
- (void)userProfileViewControllerDismissByGestureWithViewController:(id)a3;
- (void)viewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5;
- (void)viewController:(id)a3 removeDroppedPin:(id)a4;
- (void)viewController:(id)a3 selectPersonalizedItem:(id)a4 source:(unint64_t)a5 saveSelectionState:(BOOL)a6;
- (void)viewController:(id)a3 selectSearchResult:(id)a4 addToHistory:(BOOL)a5 source:(unint64_t)a6 saveSelectionState:(BOOL)a7 replaceCurrentCard:(BOOL)a8;
- (void)viewControllerGoPreviousState:(id)a3 withSender:(id)a4;
@end

@implementation MacBaseActionCoordinator

- (void)userProfileViewControllerDismissByGestureWithViewController:(id)a3
{
  v3 = [(MacBaseActionCoordinator *)self macChromeViewController];
  [v3 setNeedsUpdateComponent:@"floatingControls" animated:1];
}

- (CollectionHandler)injectedCollection
{
  v2 = [(MacBaseActionCoordinator *)self sidebarContentInjector];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 collection];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSidebarContentInjector:(id)a3
{
  v4 = a3;
  v5 = [(MacBaseActionCoordinator *)self macContainerViewController];
  [v5 setSidebarContentInjector:v4];

  v6 = +[UIMenuSystem mainSystem];
  [v6 setNeedsRebuild];
}

- (ContaineeContentInjection)sidebarContentInjector
{
  v2 = [(MacBaseActionCoordinator *)self macContainerViewController];
  v3 = [v2 sidebarContentInjector];

  return v3;
}

- (void)viewController:(id)a3 removeDroppedPin:(id)a4
{
  v8.receiver = self;
  v8.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v8 viewController:a3 removeDroppedPin:a4];
  v5 = [(MacBaseActionCoordinator *)self macChromeViewController];
  v6 = [v5 mapView];
  v7 = [v6 _mapLayer];
  [v7 clearPreviouslySelectedLabelMarker];
}

- (void)macPresentRouteSearchSuggestionsController:(id)a3
{
  v4 = a3;
  v5 = [(ActionCoordinator *)self routePlanningOverviewViewController];
  v7 = v5;
  if (qword_10195DF00 == -1)
  {
    v6 = v5;
  }

  else
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
    v6 = v7;
  }

  [(ActionCoordinator *)self viewController:v6 presentMenuController:v4 animated:1 fromChrome:(byte_10195DF08 & 1) == 0 completion:&stru_101660F28];
}

- (void)makeMapViewFirstResponder
{
  v3 = [(MacBaseActionCoordinator *)self macChromeViewController];
  v2 = [v3 mapView];
  [v2 becomeFirstResponder];
}

- (BOOL)shouldClearMapSelectionOnDismissOfViewController:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___MapItemProviding])
  {
    v5 = v4;
    v6 = [(ActionCoordinator *)self mapSelectionManager];
    v7 = [v5 mapItem];

    v8 = [v6 isMapItemSelected:v7];
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
  v3 = [(ActionCoordinator *)self searchViewControllerIfLoaded];
  [v3 clearSelectionWithReason:v4];
}

- (void)toggleRoutePlanning
{
  v3 = [(ActionCoordinator *)self isRoutePlanningPresented];
  v7.receiver = self;
  v7.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v7 toggleRoutePlanning];
  v4 = [(ActionCoordinator *)self isRoutePlanningPresented];
  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      v5 = [[HomeDeselectionReason alloc] initWithAction:2];
      v6 = [(ActionCoordinator *)self searchViewControllerIfLoaded];
      [v6 clearSelectionWithReason:v5];
    }
  }
}

- (void)viewControllerGoPreviousState:(id)a3 withSender:(id)a4
{
  v7.receiver = self;
  v7.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v7 viewControllerGoPreviousState:a3 withSender:a4];
  v5 = [[HomeDeselectionReason alloc] initWithAction:1];
  v6 = [(ActionCoordinator *)self searchViewControllerIfLoaded];
  [v6 clearSelectionWithReason:v5];
}

- (void)viewController:(id)a3 selectSearchResult:(id)a4 addToHistory:(BOOL)a5 source:(unint64_t)a6 saveSelectionState:(BOOL)a7 replaceCurrentCard:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v14 = a4;
  v15 = a3;
  v16 = sub_1000410AC();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = v14;
    v20 = 2048;
    v21 = a6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Will Present Single Result: %@, source: %lu", buf, 0x16u);
  }

  v17.receiver = self;
  v17.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v17 viewController:v15 selectSearchResult:v14 addToHistory:v11 source:a6 saveSelectionState:v9 replaceCurrentCard:v8];
}

- (void)viewController:(id)a3 doSearchItem:(id)a4 withUserInfo:(id)a5
{
  v5.receiver = self;
  v5.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v5 viewController:a3 doSearchItem:a4 withUserInfo:a5];
}

- (void)viewController:(id)a3 selectPersonalizedItem:(id)a4 source:(unint64_t)a5 saveSelectionState:(BOOL)a6
{
  v6.receiver = self;
  v6.super_class = MacBaseActionCoordinator;
  [(ActionCoordinator *)&v6 viewController:a3 selectPersonalizedItem:a4 source:a5 saveSelectionState:a6];
}

- (id)macChromeViewController
{
  v2 = [(MacBaseActionCoordinator *)self macContainerViewController];
  v3 = [v2 chromeViewController];

  return v3;
}

@end