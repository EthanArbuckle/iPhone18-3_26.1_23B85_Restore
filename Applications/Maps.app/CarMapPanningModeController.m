@interface CarMapPanningModeController
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (CarMapPanningModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)mapView;
- (id)personalizedItemSources;
- (void)_doneButtonPressed;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carMapPanningViewControllerDidPan:(id)a3 inDirection:(int64_t)a4;
- (void)configureNavigationDisplay:(id)a3;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
@end

@implementation CarMapPanningModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)carMapPanningViewControllerDidPan:(id)a3 inDirection:(int64_t)a4
{
  v6 = [(CarMapPanningModeController *)self chromeViewController];
  [v6 captureUserActionPannedInDirection:a4];

  self->_mapWasPanned = 1;
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  if (!a4)
  {
    self->_mapWasPanned = 1;
  }
}

- (void)_doneButtonPressed
{
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 isCarAppSceneHostingNavigation];

  v5 = [(CarMapPanningModeController *)self chromeViewController];
  v6 = v5;
  if (v4)
  {
    v7 = 3051;
  }

  else
  {
    v7 = 4;
  }

  [v5 captureUserAction:v7];

  v8 = +[CarChromeModeCoordinator sharedInstance];
  [v8 popFromContext:self];
}

- (void)configureNavigationDisplay:(id)a3
{
  v3 = a3;
  [v3 setCameraStyle:0];
  [v3 setCameraPaused:&__kCFBooleanTrue];
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100E92F48;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  v5 = a4;
  [v5 addPreparation:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E92FE4;
  v6[3] = &unk_101661738;
  v6[4] = self;
  [v5 addCompletion:v6];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = a4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100E93084;
  v6[3] = &unk_101661AE0;
  v6[4] = self;
  v7 = [v5 isAnimated];
  [v5 addPreparation:v6];
}

- (NSArray)carFocusOrderSequences
{
  v2 = [(CarMapPanningModeController *)self fullscreenViewController];
  v3 = [v2 carFocusOrderSequences];

  return v3;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 4;
  return self;
}

- (id)personalizedItemSources
{
  v2 = [(CarMapPanningModeController *)self chromeViewController];
  v3 = [v2 searchPinsManager];

  if (v3)
  {
    v4 = [v3 searchResultsItemSource];
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)mapView
{
  v2 = [(CarMapPanningModeController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (CarMapPanningModeController)init
{
  v6.receiver = self;
  v6.super_class = CarMapPanningModeController;
  v2 = [(CarMapPanningModeController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CarMapPanningViewController);
    viewController = v2->_viewController;
    v2->_viewController = v3;

    [(CarMapPanningViewController *)v2->_viewController setPanDelegate:v2];
  }

  return v2;
}

@end