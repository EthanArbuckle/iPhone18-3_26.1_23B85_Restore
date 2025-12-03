@interface CarIncompatibleNavigationModeController
- (CarIncompatibleNavigationModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)fullscreenViewControllerDismissalTransition;
- (id)fullscreenViewControllerPresentationTransition;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
@end

@implementation CarIncompatibleNavigationModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)carFocusOrderSequences
{
  if ([(CarAlertViewController *)self->_viewController isViewLoaded])
  {
    focusOrderSubItems = [(CarAlertViewController *)self->_viewController focusOrderSubItems];
    v4 = sub_100021DB0(focusOrderSubItems, &stru_101655C10);
    v5 = [CarFocusOrderSequence sequenceWithItems:v4 options:5];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  [(CarAlertViewController *)self->_viewController reset:controller];
  v5 = +[MNNavigationService sharedService];
  if ([v5 desiredTransportType])
  {
    desiredTransportType = [v5 desiredTransportType];
    if (desiredTransportType > 5)
    {
      v7 = 1;
    }

    else
    {
      v7 = qword_1012160D0[desiredTransportType];
    }

    v10 = sub_100FB2100(v7);
    v14 = [v10 objectForKeyedSubscript:@"kMapsInterruptionTitle"];
    [(CarAlertViewController *)self->_viewController setAlertTitle:v14];

    v15 = [v10 objectForKeyedSubscript:@"kMapsInterruptionMessage"];
    [(CarAlertViewController *)self->_viewController setAlertMessage:v15];

    v13 = [v10 objectForKeyedSubscript:@"kMapsInterruptionActions"];
  }

  else
  {
    v8 = sub_100FA8E84();
    [(CarAlertViewController *)self->_viewController setAlertTitle:v8];

    v9 = sub_100FB2098();
    [(CarAlertViewController *)self->_viewController setAlertMessage:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"End Navigation [CarPlay value:Stepping]" table:{@"localized string not found", 0}];
    v12 = [MapsInterruptionAction actionWithTitle:v11 cancels:0 handler:&stru_101655BA8];
    v21 = v12;
    v13 = [NSArray arrayWithObjects:&v21 count:1];
  }

  [(CarAlertViewController *)self->_viewController setActions:v13];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100E21C54;
  v19[3] = &unk_101655BD0;
  v20 = v13;
  viewController = self->_viewController;
  v17 = v13;
  [(CarAlertViewController *)viewController setResultBlock:v19];
  chromeViewController = [(CarIncompatibleNavigationModeController *)self chromeViewController];
  [chromeViewController setHardwareBackButtonBehavior:2 forContext:self];
}

- (id)fullscreenViewControllerDismissalTransition
{
  v2 = objc_opt_new();
  [v2 setOperation:2];

  return v2;
}

- (id)fullscreenViewControllerPresentationTransition
{
  v2 = objc_opt_new();
  [v2 setOperation:1];

  return v2;
}

- (CarIncompatibleNavigationModeController)init
{
  v7.receiver = self;
  v7.super_class = CarIncompatibleNavigationModeController;
  v2 = [(CarIncompatibleNavigationModeController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(CarAlertViewController);
    viewController = v2->_viewController;
    v2->_viewController = v3;

    navigationItem = [(CarAlertViewController *)v2->_viewController navigationItem];
    [navigationItem setHidesBackButton:1];
  }

  return v2;
}

@end