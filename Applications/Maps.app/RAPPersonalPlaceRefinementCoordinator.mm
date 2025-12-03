@interface RAPPersonalPlaceRefinementCoordinator
- (CLLocationCoordinate2D)originalCoordinate;
- (RAPPersonalPlaceRefinementCoordinator)initWithPresentingViewController:(id)controller delegate:(id)delegate report:(id)report question:(id)question;
- (RAPPersonalPlaceRefinementCoordinator)initWithPresentingViewController:(id)controller delegate:(id)delegate shortcut:(id)shortcut;
- (id)_navigationControllerWithRootViewController:(id)controller;
- (id)_refinementAlertController;
- (void)_cancelLocationRefinement;
- (void)_commonInitWithPresentingViewController:(id)controller delegate:(id)delegate presentationStyle:(int64_t)style shortcut:(id)shortcut;
- (void)_createRAPContext;
- (void)_doneLocationRefinement;
- (void)_presentLocationRefinement;
@end

@implementation RAPPersonalPlaceRefinementCoordinator

- (CLLocationCoordinate2D)originalCoordinate
{
  geoMapItem = [(MapsSuggestionsShortcut *)self->_shortcut geoMapItem];
  [geoMapItem coordinate];
  v5 = v4;
  geoMapItem2 = [(MapsSuggestionsShortcut *)self->_shortcut geoMapItem];
  [geoMapItem2 coordinate];
  v8 = CLLocationCoordinate2DMake(v5, v7);

  latitude = v8.latitude;
  longitude = v8.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)_navigationControllerWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [[UINavigationController alloc] initWithRootViewController:controllerCopy];

  [v4 setModalPresentationStyle:2];
  [v4 setModalInPresentation:1];

  return v4;
}

- (void)_doneLocationRefinement
{
  question = self->_question;
  [(EditLocationViewController *)self->_editLocationViewController selectedCoordinate];
  [(RAPPersonalPlaceCorrectionsQuestion *)question setCorrectedCoordinate:?];
  [(RAPPersonalPlaceCorrectionsQuestion *)self->_question addUserPathItem:5];
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;
    [(EditLocationViewController *)self->_editLocationViewController selectedCoordinate];
    [(RAPPersonalPlaceRefinementCoordinatorDelegate *)delegate refinementCoordinator:self finishedRefiningCoordinate:self->_shortcut withShortcut:?];
  }

  if (self->_presentationStyle == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    traitCollection = [WeakRetained traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      objc_initWeak(&location, self);
      navigationController = [(EditLocationViewController *)self->_editLocationViewController navigationController];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100D9EFEC;
      v11[3] = &unk_101661B98;
      objc_copyWeak(&v12, &location);
      [navigationController dismissViewControllerAnimated:1 completion:v11];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
      return;
    }

    navigationController2 = [(EditLocationViewController *)self->_editLocationViewController navigationController];
    [navigationController2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    navigationController2 = [(EditLocationViewController *)self->_editLocationViewController navigationController];
    v9 = [navigationController2 popViewControllerAnimated:1];
  }
}

- (void)_cancelLocationRefinement
{
  if (self->_presentationStyle == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    traitCollection = [WeakRetained traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    objc_initWeak(&location, self);
    editLocationViewController = self->_editLocationViewController;
    if (userInterfaceIdiom == 5)
    {
      v7 = v10;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100D9F1CC;
      v10[3] = &unk_101661B98;
      objc_copyWeak(&v11, &location);
      [(EditLocationViewController *)editLocationViewController dismissViewControllerAnimated:1 completion:v10];
    }

    else
    {
      v7 = v8;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100D9F234;
      v8[3] = &unk_101661B98;
      objc_copyWeak(&v9, &location);
      [(EditLocationViewController *)editLocationViewController dismissViewControllerAnimated:1 completion:v8];
    }

    objc_destroyWeak(v7 + 4);
    objc_destroyWeak(&location);
  }
}

- (void)_presentLocationRefinement
{
  [(RAPPersonalPlaceRefinementCoordinator *)self originalCoordinate];
  latitude = v36.latitude;
  longitude = v36.longitude;
  MKCoordinateRegionMakeWithDistance(v36, 100.0, 100.0);
  [(MapsSuggestionsShortcut *)self->_shortcut type];
  v5 = MapsSuggestionsShortcutTypeStyleAttributes();
  v6 = [[RAPMarkerViewAttributes alloc] initWithTitle:0 styleAttributes:v5];
  v7 = [EditLocationViewController alloc];
  MKMapRectForCoordinateRegion();
  v12 = [(EditLocationViewController *)v7 initWithInitialCoordinates:603 inMapRect:v6 analyticsTarget:latitude markerViewAttributes:longitude, v8, v9, v10, v11];
  editLocationViewController = self->_editLocationViewController;
  self->_editLocationViewController = v12;

  objc_initWeak(&location, self);
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_100D9F6A0;
  v33 = &unk_101653EC0;
  objc_copyWeak(v34, &location);
  v34[1] = *&latitude;
  v34[2] = *&longitude;
  [(EditLocationViewController *)self->_editLocationViewController setChangeHandler:&v30];
  v14 = [NSBundle mainBundle:v30];
  v15 = [v14 localizedStringForKey:@"Refine Home Location" value:@"localized string not found" table:0];

  if ([(MapsSuggestionsShortcut *)self->_shortcut type]== 3)
  {
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Refine Work Location" value:@"localized string not found" table:0];

    v15 = v17;
  }

  if ([(MapsSuggestionsShortcut *)self->_shortcut type]== 5)
  {
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"Refine School Location" value:@"localized string not found" table:0];

    v15 = v19;
  }

  navigationItem = [(EditLocationViewController *)self->_editLocationViewController navigationItem];
  [navigationItem setTitle:v15];

  v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneLocationRefinement"];
  navigationItem2 = [(EditLocationViewController *)self->_editLocationViewController navigationItem];
  [navigationItem2 setRightBarButtonItem:v21];

  if (self->_presentationStyle != 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    navigationController = [WeakRetained navigationController];
    [navigationController pushViewController:self->_editLocationViewController animated:1];
LABEL_11:

    goto LABEL_12;
  }

  v23 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelLocationRefinement"];
  navigationItem3 = [(EditLocationViewController *)self->_editLocationViewController navigationItem];
  [navigationItem3 setLeftBarButtonItem:v23];

  WeakRetained = [(RAPPersonalPlaceRefinementCoordinator *)self _navigationControllerWithRootViewController:self->_editLocationViewController];
  v26 = objc_loadWeakRetained(&self->_parentViewController);
  traitCollection = [v26 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {
    navigationController = objc_loadWeakRetained(&self->_parentViewController);
    [navigationController _maps_topMostPresentViewController:WeakRetained animated:1 completion:0];
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    [(RAPPersonalPlaceRefinementCoordinatorDelegate *)self->_delegate refinementCoordinator:self presentViewController:WeakRetained];
  }

LABEL_12:

  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

- (id)_refinementAlertController
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Continue Refining location [Personal Place]" value:@"localized string not found" table:0];

  type = [(MapsSuggestionsShortcut *)self->_shortcut type];
  v6 = 0;
  v7 = &stru_1016631F0;
  if (type <= 2)
  {
    if (type >= 2)
    {
      v8 = &stru_1016631F0;
      v9 = &stru_1016631F0;
      if (type != 2)
      {
        goto LABEL_12;
      }

      v10 = @"Change Home Address [Personal Place]";
      v11 = @"Change Home Address Description [Personal Place]";
      v12 = @"Change Home Address? [Personal Place]";
      goto LABEL_11;
    }

LABEL_9:
    v8 = &stru_1016631F0;
    v9 = &stru_1016631F0;
    goto LABEL_17;
  }

  if (type == 6)
  {
    goto LABEL_9;
  }

  if (type == 5)
  {
    v10 = @"Change School Address [Personal Place]";
    v11 = @"Change School Address Description [Personal Place]";
    v12 = @"Change School Address? [Personal Place]";
  }

  else
  {
    v8 = &stru_1016631F0;
    v9 = &stru_1016631F0;
    if (type != 3)
    {
      goto LABEL_12;
    }

    v10 = @"Change Work Address [Personal Place]";
    v11 = @"Change Work Address Description [Personal Place]";
    v12 = @"Change Work Address? [Personal Place]";
  }

LABEL_11:
  v13 = +[NSBundle mainBundle];
  v9 = [v13 localizedStringForKey:v12 value:@"localized string not found" table:0];

  v14 = +[NSBundle mainBundle];
  v8 = [v14 localizedStringForKey:v11 value:@"localized string not found" table:0];

  v15 = +[NSBundle mainBundle];
  v7 = [v15 localizedStringForKey:v10 value:@"localized string not found" table:0];

LABEL_12:
  if (![(__CFString *)v9 length])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    LOWORD(location[0]) = 0;
    v19 = "Assertion failed: changeAddressPrompt.length > 0";
LABEL_28:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v19, location, 2u);
    goto LABEL_29;
  }

  if (![(__CFString *)v8 length])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    LOWORD(location[0]) = 0;
    v19 = "Assertion failed: changeAddressDescription.length > 0";
    goto LABEL_28;
  }

  if (![(__CFString *)v7 length])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    LOWORD(location[0]) = 0;
    v19 = "Assertion failed: changeAddressSelection.length > 0";
    goto LABEL_28;
  }

  if ([v4 length])
  {
    v6 = [UIAlertController alertControllerWithTitle:v9 message:v8 preferredStyle:1];
    v16 = [UIAlertAction actionWithTitle:v4 style:0 handler:0];
    [v6 addAction:v16];

    objc_initWeak(location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100D9FB58;
    v20[3] = &unk_101658AF0;
    objc_copyWeak(&v21, location);
    v17 = [UIAlertAction actionWithTitle:v7 style:1 handler:v20];
    [v6 addAction:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
    goto LABEL_17;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    LOWORD(location[0]) = 0;
    v19 = "Assertion failed: continueRefiningLocation.length > 0";
    goto LABEL_28;
  }

LABEL_29:
  v6 = 0;
LABEL_17:

  return v6;
}

- (void)_createRAPContext
{
  v14 = +[UIApplication sharedMapsDelegate];
  v3 = [RAPAppStateCreator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  _maps_mapsSceneDelegate = [WeakRetained _maps_mapsSceneDelegate];
  v6 = [(RAPAppStateCreator *)v3 initWithSceneDelegate:_maps_mapsSceneDelegate];

  createReportAProblemAppState = [(RAPAppStateCreator *)v6 createReportAProblemAppState];
  v8 = [RAPReport alloc];
  submissionManager = [v14 submissionManager];
  v10 = [(RAPReport *)v8 initWithContext:createReportAProblemAppState submitter:submissionManager];
  report = self->_report;
  self->_report = v10;

  v12 = [[RAPPersonalPlaceCorrectionsQuestion alloc] initWithReport:self->_report parentQuestion:0 shortcut:self->_shortcut];
  question = self->_question;
  self->_question = v12;

  [(RAPReport *)self->_report setInitialQuestion:self->_question];
  [(RAPPersonalPlaceCorrectionsQuestion *)self->_question addUserPathItem:1];
}

- (void)_commonInitWithPresentingViewController:(id)controller delegate:(id)delegate presentationStyle:(int64_t)style shortcut:(id)shortcut
{
  delegateCopy = delegate;
  self->_presentationStyle = style;
  objc_storeStrong(&self->_shortcut, shortcut);
  shortcutCopy = shortcut;
  controllerCopy = controller;
  objc_storeWeak(&self->_parentViewController, controllerCopy);

  delegate = self->_delegate;
  self->_delegate = delegateCopy;

  self->_hasDisplayedRefinementAlert = 0;
}

- (RAPPersonalPlaceRefinementCoordinator)initWithPresentingViewController:(id)controller delegate:(id)delegate report:(id)report question:(id)question
{
  controllerCopy = controller;
  delegateCopy = delegate;
  reportCopy = report;
  questionCopy = question;
  v17.receiver = self;
  v17.super_class = RAPPersonalPlaceRefinementCoordinator;
  v14 = [(RAPPersonalPlaceRefinementCoordinator *)&v17 init];
  if (v14)
  {
    shortcut = [questionCopy shortcut];
    [(RAPPersonalPlaceRefinementCoordinator *)v14 _commonInitWithPresentingViewController:controllerCopy delegate:delegateCopy presentationStyle:0 shortcut:shortcut];

    objc_storeStrong(&v14->_question, question);
    objc_storeStrong(&v14->_report, report);
  }

  return v14;
}

- (RAPPersonalPlaceRefinementCoordinator)initWithPresentingViewController:(id)controller delegate:(id)delegate shortcut:(id)shortcut
{
  controllerCopy = controller;
  delegateCopy = delegate;
  shortcutCopy = shortcut;
  v14.receiver = self;
  v14.super_class = RAPPersonalPlaceRefinementCoordinator;
  v11 = [(RAPPersonalPlaceRefinementCoordinator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(RAPPersonalPlaceRefinementCoordinator *)v11 _commonInitWithPresentingViewController:controllerCopy delegate:delegateCopy presentationStyle:1 shortcut:shortcutCopy];
    [(RAPPersonalPlaceRefinementCoordinator *)v12 _createRAPContext];
  }

  return v12;
}

@end