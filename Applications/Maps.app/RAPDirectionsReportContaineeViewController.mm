@interface RAPDirectionsReportContaineeViewController
- (RAPDirectionsReportContaineeViewController)initWithReport:(id)report directionsReportContext:(unint64_t)context;
- (double)heightForLayout:(unint64_t)layout;
- (id)_routeFeedbackViewControllerForRequest:(id)request;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)rapRouteListViewController:(id)controller didSelectRequest:(id)request;
- (void)rapRouteListViewControllerDidDismiss:(id)dismiss;
- (void)routeFeedbackViewControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation RAPDirectionsReportContaineeViewController

- (void)rapRouteListViewController:(id)controller didSelectRequest:(id)request
{
  v5 = [(RAPDirectionsReportContaineeViewController *)self _routeFeedbackViewControllerForRequest:request];
  [(UINavigationController *)self->_navController pushViewController:v5 animated:1];
}

- (void)rapRouteListViewControllerDidDismiss:(id)dismiss
{
  v4 = sub_100798874();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "rapRouteListViewControllerDidDismiss: will dismiss directionsReportContaineeVC", v8, 2u);
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  if (usingSheetPresentation)
  {
    containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
    [containeeDelegate containeeViewControllerGoToPreviousState:self withSender:0];
  }

  else
  {
    [(RAPDirectionsReportContaineeViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController availableHeight];
  v5 = v4;

  return v5;
}

- (void)routeFeedbackViewControllerDidDismiss:(id)dismiss
{
  v4 = sub_100798874();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "routeFeedbackViewControllerDidDismiss: will dismiss the card", v8, 2u);
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  if (usingSheetPresentation)
  {
    containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
    [containeeDelegate containeeViewControllerGoToPreviousState:self withSender:0];
  }

  else
  {
    [(RAPDirectionsReportContaineeViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_cancelButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = sub_100798874();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_cancelButtonPressed: will dismiss directionsReportContaineeVC", v9, 2u);
  }

  [GEOAPPortal captureUserAction:10109 target:31 value:0];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  if (usingSheetPresentation)
  {
    containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
    [containeeDelegate containeeViewControllerGoToPreviousState:self withSender:pressedCopy];
  }

  else
  {
    [(RAPDirectionsReportContaineeViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_routeFeedbackViewControllerForRequest:(id)request
{
  recording = [request recording];
  initialQuestion = [(RAPReport *)self->_report initialQuestion];

  if (!initialQuestion)
  {
    v6 = [[RAPWebBundleQuestion alloc] initWithReport:self->_report directionsRecording:recording];
    [(RAPReport *)self->_report setInitialQuestion:v6];
  }

  initialQuestion2 = [(RAPReport *)self->_report initialQuestion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = initialQuestion2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setDirectionsRecording:recording];
  v10 = [[RAPRouteFeedbackViewController alloc] initWithReport:self->_report recording:recording delegate:self];
  [(RAPRouteFeedbackViewController *)v10 setAllowsScrolling:1];
  v11 = +[UIColor systemGroupedBackgroundColor];
  view = [(RAPRouteFeedbackViewController *)v10 view];
  [view setBackgroundColor:v11];

  return v10;
}

- (void)_setupConstraints
{
  view = [(UINavigationController *)self->_navController view];
  topAnchor = [view topAnchor];
  view2 = [(RAPDirectionsReportContaineeViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v19;
  view3 = [(UINavigationController *)self->_navController view];
  leadingAnchor = [view3 leadingAnchor];
  view4 = [(RAPDirectionsReportContaineeViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[1] = v14;
  view5 = [(UINavigationController *)self->_navController view];
  trailingAnchor = [view5 trailingAnchor];
  view6 = [(RAPDirectionsReportContaineeViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[2] = v6;
  view7 = [(UINavigationController *)self->_navController view];
  bottomAnchor = [view7 bottomAnchor];
  view8 = [(RAPDirectionsReportContaineeViewController *)self view];
  bottomAnchor2 = [view8 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setTakesAvailableHeight:1];

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 setAllowsSwipeToDismiss:0];

  cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController4 setDefaultContaineeLayout:5];

  v7 = [[UINavigationController alloc] initWithRootViewController:self->_contentViewController];
  view = [(UINavigationController *)v7 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [(RAPDirectionsReportContaineeViewController *)self addChildViewController:v7];
  view2 = [(RAPDirectionsReportContaineeViewController *)self view];
  view3 = [(UINavigationController *)v7 view];
  [view2 addSubview:view3];

  [(UINavigationController *)v7 didMoveToParentViewController:self];
  navController = self->_navController;
  self->_navController = v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RAPDirectionsReportContaineeViewController;
  [(ContaineeViewController *)&v3 viewDidLoad];
  [(RAPDirectionsReportContaineeViewController *)self _setupViews];
  [(RAPDirectionsReportContaineeViewController *)self _setupConstraints];
}

- (RAPDirectionsReportContaineeViewController)initWithReport:(id)report directionsReportContext:(unint64_t)context
{
  reportCopy = report;
  if (context || (-[RAPReport _context](self->_report, "_context"), v18 = objc_claimAutoreleasedReturnValue(), [v18 directionsHistory], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "firstObject"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "recording"), v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v19, v18, !v21))
  {
    v27.receiver = self;
    v27.super_class = RAPDirectionsReportContaineeViewController;
    v8 = [(RAPDirectionsReportContaineeViewController *)&v27 init];
    v9 = v8;
    if (!v8)
    {
LABEL_13:
      self = v9;
      selfCopy = self;
      goto LABEL_14;
    }

    v8->_context = context;
    objc_storeStrong(&v8->_report, report);
    context = v9->_context;
    if (context == 1)
    {
      v25 = [[RAPRouteListViewController alloc] initWithReport:v9->_report delegate:v9];
      contentViewController = v9->_contentViewController;
      v9->_contentViewController = &v25->super;
    }

    else
    {
      if (context)
      {
LABEL_12:
        [(ContaineeViewController *)v9 setKeepOriginalSafeInsets:1];
        goto LABEL_13;
      }

      _context = [(RAPReport *)v9->_report _context];
      directionsHistory = [_context directionsHistory];
      firstObject = [directionsHistory firstObject];
      v14 = [(RAPDirectionsReportContaineeViewController *)v9 _routeFeedbackViewControllerForRequest:firstObject];
      v15 = v9->_contentViewController;
      v9->_contentViewController = v14;

      contentViewController = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v9 action:"_cancelButtonPressed:"];
      navigationItem = [(UIViewController *)v9->_contentViewController navigationItem];
      [navigationItem setLeftBarButtonItem:contentViewController];
    }

    goto LABEL_12;
  }

  v22 = sub_100798874();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    report = self->_report;
    *buf = 138412290;
    reportCopy2 = report;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Tried to present RAPDirectionsReportContaineeVC, but didn't have a route in the report: %@", buf, 0xCu);
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

@end