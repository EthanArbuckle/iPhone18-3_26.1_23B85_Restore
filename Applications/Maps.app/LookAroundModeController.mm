@interface LookAroundModeController
- (LookAroundModeController)initWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen originFrame:(CGRect)frame;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (id)personalizedItemSources;
- (id)viewsToRenderMapsScreenshotService:(id)service;
- (int64_t)preferredMapScaleVisibility;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)getCurrentSceneTitleWithCompletion:(id)completion;
- (void)lookAroundContainerViewControllerDidAnimateFromModeTransition:(id)transition;
- (void)mapInsetsDidChangeAnimated:(BOOL)animated;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
@end

@implementation LookAroundModeController

- (id)viewsToRenderMapsScreenshotService:(id)service
{
  chromeViewController = [(ContainerViewController *)self->_containerViewController chromeViewController];
  mapView = [chromeViewController mapView];

  lookAroundView = [(LookAroundContainerViewController *)self->_containerViewController lookAroundView];
  if ([(LookAroundModeController *)self isDisplayingLookAroundPIP])
  {
    v13 = mapView;
    v7 = &v13;
  }

  else
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"__internal_kScreenshotMultipages"];

    if (v9)
    {
      v15[0] = lookAroundView;
      v15[1] = mapView;
      v7 = v15;
      v10 = 2;
      goto LABEL_7;
    }

    v14 = lookAroundView;
    v7 = &v14;
  }

  v10 = 1;
LABEL_7:
  v11 = [NSArray arrayWithObjects:v7 count:v10];

  return v11;
}

- (void)lookAroundContainerViewControllerDidAnimateFromModeTransition:(id)transition
{
  lookAroundViewState = self->_lookAroundViewState;
  lookAroundView = [transition lookAroundView];
  [(_LookAroundViewState *)lookAroundViewState restoreStateToLookAroundView:lookAroundView];
}

- (void)getCurrentSceneTitleWithCompletion:(id)completion
{
  completionCopy = completion;
  isDisplayingLookAroundPIP = [(LookAroundModeController *)self isDisplayingLookAroundPIP];
  lookAroundView = [(LookAroundModeController *)self lookAroundView];
  v7 = lookAroundView;
  if (isDisplayingLookAroundPIP)
  {
    [lookAroundView sceneTitle];
  }

  else
  {
    [lookAroundView expandedSceneTitle];
  }
  v8 = ;

  completionCopy[2](completionCopy, v8);
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C81108;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C811F0;
  v4[3] = &unk_101661738;
  v4[4] = self;
  [animation addCompletion:v4];
}

- (id)fullscreenViewControllerDismissalTransition
{
  v2 = objc_alloc_init(FromLookAroundModeTransitionController);

  return v2;
}

- (id)fullscreenViewControllerPresentationTransition
{
  v2 = objc_alloc_init(ToLookAroundModeTransitionController);

  return v2;
}

- (id)personalizedItemSources
{
  chromeViewController = [(LookAroundModeController *)self chromeViewController];
  searchPinsManager = [chromeViewController searchPinsManager];

  if (searchPinsManager)
  {
    searchResultsItemSource = [searchPinsManager searchResultsItemSource];
    v8[0] = searchResultsItemSource;
    singleSearchResultItemSource = [searchPinsManager singleSearchResultItemSource];
    v8[1] = singleSearchResultItemSource;
    v6 = [NSArray arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)mapInsetsDidChangeAnimated:(BOOL)animated
{
  actionCoordinator = [(LookAroundModeController *)self actionCoordinator];
  dataCoordinator = [actionCoordinator dataCoordinator];
  [dataCoordinator synchronizeMapViewIfNeeded];
}

- (int64_t)preferredMapScaleVisibility
{
  chromeViewController = [(LookAroundModeController *)self chromeViewController];
  v3 = sub_10000FA08(chromeViewController) == 5;

  return v3;
}

- (LookAroundModeController)initWithEntryPoint:(id)point lookAroundView:(id)view showsFullScreen:(BOOL)screen originFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  screenCopy = screen;
  pointCopy = point;
  viewCopy = view;
  v19.receiver = self;
  v19.super_class = LookAroundModeController;
  v15 = [(LookAroundModeController *)&v19 init];
  if (v15)
  {
    v16 = [[LookAroundContainerViewController alloc] initWithEntryPoint:pointCopy lookAroundView:viewCopy showsFullScreen:screenCopy];
    containerViewController = v15->_containerViewController;
    v15->_containerViewController = v16;

    if (sub_10000FA08(v15->_containerViewController) == 5)
    {
      [(ContainerViewController *)v15->_containerViewController setStackOnOppositeSide:1];
    }

    [(ContainerViewController *)v15->_containerViewController setAllowOnlyStandardStyle:0];
    [(LookAroundContainerViewController *)v15->_containerViewController setAnimationDelegate:v15];
    [(LookAroundContainerViewController *)v15->_containerViewController setOriginFrame:x, y, width, height];
    [(ContainerViewController *)v15->_containerViewController setChromeContext:v15];
  }

  return v15;
}

@end