@interface RAPReportComposerCategoryViewController
- (BOOL)_shouldUseServerControlledUI;
- (RAPReportComposerCategoryViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (void)_proceedToIncidentsQuestion:(id)question;
- (void)dealloc;
- (void)incidentsReportingEnablementDidUpdate;
- (void)proceedToArrivalTimeIncorrectQuestion:(id)question;
- (void)proceedToBadRouteSuggestionsQuestion:(id)question;
- (void)proceedToIncorrectSearchResultsQuestion:(id)question;
- (void)proceedToLabelCorrectionsQuestion:(id)question;
- (void)proceedToNextQuestion:(id)question;
- (void)proceedToPlaceClosureQuestion:(id)question;
- (void)proceedToProblemNotListedQuestion:(id)question;
- (void)proceedToProblemWithDirectionsQuestion:(id)question;
- (void)proceedToRAPPersonalPlaceCorrectionsQuestion:(id)question;
- (void)refinementCoordinator:(id)coordinator finishedRefiningCoordinate:(CLLocationCoordinate2D)coordinate withShortcut:(id)shortcut;
- (void)refinementCoordinatorRequestsChangeAddress:(id)address withShortcut:(id)shortcut;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation RAPReportComposerCategoryViewController

- (void)incidentsReportingEnablementDidUpdate
{
  v3 = +[TrafficIncidentLayoutManager sharedInstance];
  if (([v3 isIncidentReportingEnabled] & 1) == 0 && self->_isIncidentReportingEnabled)
  {
    [(RAPReportTableViewController *)self invokeCompletionWithOutcome:0];
  }

  self->_isIncidentReportingEnabled = [v3 isIncidentReportingEnabled];
}

- (void)refinementCoordinator:(id)coordinator finishedRefiningCoordinate:(CLLocationCoordinate2D)coordinate withShortcut:(id)shortcut
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  coordinatorCopy = coordinator;
  shortcutCopy = shortcut;
  v10 = [ShortcutEditSession editSessionWithShortcut:shortcutCopy];
  [v10 setAdjustedCoordinate:{latitude, longitude}];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100D8703C;
  v13[3] = &unk_101661570;
  v14 = shortcutCopy;
  v15 = coordinatorCopy;
  v11 = coordinatorCopy;
  v12 = shortcutCopy;
  [v10 saveWithCompletion:v13];
}

- (void)refinementCoordinatorRequestsChangeAddress:(id)address withShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v7 = +[UIApplication sharedMapsDelegate];
  appCoordinator = [v7 appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];
  [chromeViewController resetForEditingShortcut:shortcutCopy];
}

- (void)proceedToRAPPersonalPlaceCorrectionsQuestion:(id)question
{
  questionCopy = question;
  mainMenuItems = [questionCopy mainMenuItems];
  v5 = [mainMenuItems count];

  mainMenuItems2 = [questionCopy mainMenuItems];
  v7 = mainMenuItems2;
  if (v5 == 1)
  {
    firstObject = [mainMenuItems2 firstObject];

    v9 = [RAPPersonalPlaceCorrectionsQuestion alloc];
    report = [questionCopy report];
    shortcut = [(RAPPersonalPlaceSelectionViewController *)firstObject shortcut];
    v12 = [(RAPPersonalPlaceCorrectionsQuestion *)v9 initWithReport:report parentQuestion:questionCopy shortcut:shortcut];

    [questionCopy setSelectedMenuItem:v12];
    v13 = [RAPPersonalPlaceRefinementCoordinator alloc];
    report2 = [questionCopy report];
    v15 = [(RAPPersonalPlaceRefinementCoordinator *)v13 initWithPresentingViewController:self delegate:self report:report2 question:v12];
    homeWorkCoordinator = self->_homeWorkCoordinator;
    self->_homeWorkCoordinator = v15;

    [(RAPPersonalPlaceRefinementCoordinator *)self->_homeWorkCoordinator beginShortcutRefinement];
  }

  else
  {
    v17 = [mainMenuItems2 count];

    if (!v17)
    {
      goto LABEL_6;
    }

    firstObject = [[RAPPersonalPlaceSelectionViewController alloc] initWithQuestion:questionCopy];
    [(RAPTableViewController *)self segueToViewController:firstObject];
  }

LABEL_6:
}

- (void)proceedToBadRouteSuggestionsQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerBadRouteSuggestionsViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerBadRouteSuggestionsViewController *)v5 initWithReport:report question:questionCopy completion:completion];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)_proceedToIncidentsQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerIncidentsEditorViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerIncidentsEditorViewController *)v5 initWithReport:report question:questionCopy completion:completion];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToLabelCorrectionsQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerLabelNameEditorViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerLabelNameEditorViewController *)v5 initWithReport:report question:questionCopy completion:completion];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToPlaceClosureQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerPlaceClosureViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerPlaceClosureViewController *)v5 initWithReport:report question:questionCopy completion:completion];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToProblemWithDirectionsQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerDirectionsViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerDirectionsViewController *)v5 initWithReport:report question:questionCopy completion:completion];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToIncorrectSearchResultsQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerIncorrectSearchViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerIncorrectSearchViewController *)v5 initWithReport:report question:questionCopy completion:completion];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToArrivalTimeIncorrectQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerCommentViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerCommentViewController *)v5 initWithReport:report question:questionCopy completion:completion];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToProblemNotListedQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerCommentViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerCommentViewController *)v5 initWithReport:report question:questionCopy completion:completion];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToNextQuestion:(id)question
{
  questionCopy = question;
  analyticTarget = [(RAPReportComposerCategoryViewController *)self analyticTarget];
  v5 = questionCopy;
  if (analyticTarget)
  {
    userAction = [questionCopy userAction];
    v5 = questionCopy;
    if (userAction)
    {
      v7 = questionCopy;
      if ([v7 conformsToProtocol:&OBJC_PROTOCOL___RAPInstrumentableTarget])
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = objc_opt_respondsToSelector();
      v11 = +[MKMapService sharedService];
      userAction2 = [v7 userAction];
      analyticTarget2 = [(RAPReportComposerCategoryViewController *)self analyticTarget];
      if (v10)
      {
        eventValue = [v9 eventValue];
        [v11 captureUserAction:userAction2 onTarget:analyticTarget2 eventValue:eventValue];
      }

      else
      {
        [v11 captureUserAction:userAction2 onTarget:analyticTarget2 eventValue:0];
      }

      v5 = questionCopy;
    }
  }

  questionCategory = [v5 questionCategory];
  if (questionCategory <= 11)
  {
    if (questionCategory > 7)
    {
      v16 = questionCopy;
      if (questionCategory == 8)
      {
        [(RAPReportComposerCategoryViewController *)self proceedToLabelCorrectionsQuestion:questionCopy];
        goto LABEL_13;
      }

      if (questionCategory == 9)
      {
        [(RAPReportComposerCategoryViewController *)self proceedToPlaceClosureQuestion:questionCopy];
        goto LABEL_13;
      }
    }

    else
    {
      v16 = questionCopy;
      if (questionCategory == 1)
      {
        [(RAPReportComposerCategoryViewController *)self proceedToProblemNotListedQuestion:questionCopy];
        goto LABEL_13;
      }

      if (questionCategory == 7)
      {
        [(RAPReportComposerCategoryViewController *)self proceedToProblemWithDirectionsQuestion:questionCopy];
        goto LABEL_13;
      }
    }
  }

  else
  {
    if ((questionCategory - 13) < 6)
    {
      [(RAPReportComposerCategoryViewController *)self proceedToRAPPersonalPlaceCorrectionsQuestion:questionCopy];
LABEL_13:
      v16 = questionCopy;
      goto LABEL_14;
    }

    v16 = questionCopy;
    if (questionCategory == 12)
    {
      [(RAPReportComposerCategoryViewController *)self proceedToIncorrectSearchResultsQuestion:questionCopy];
      goto LABEL_13;
    }

    if (questionCategory == 19)
    {
      [(RAPReportComposerCategoryViewController *)self _proceedToIncidentsQuestion:questionCopy];
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RAPReportComposerCategoryViewController;
  [(RAPReportComposerCategoryViewController *)&v5 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"RAPReportComposerCategoryViewControllerDidAppearNotification" object:self];
}

- (BOOL)_shouldUseServerControlledUI
{
  BOOL = GEOConfigGetBOOL();
  if (BOOL)
  {
    objc_opt_class();
    LOBYTE(BOOL) = objc_opt_isKindOfClass();
  }

  return BOOL & 1;
}

- (void)viewDidLoad
{
  v57.receiver = self;
  v57.super_class = RAPReportComposerCategoryViewController;
  [(RAPReportTableViewController *)&v57 viewDidLoad];
  v3 = objc_alloc_init(NSMutableArray);
  if ([(RAPMenu *)self->_categoryQuestion conformsToProtocol:&OBJC_PROTOCOL___RAPSnippetProtocol])
  {
    v4 = self->_categoryQuestion;
    v5 = [[RAPReportComposerSnippetSection alloc] initWithQuestion:v4];
    v6 = [RAPTablePart alloc];
    v60 = v5;
    v7 = [NSArray arrayWithObjects:&v60 count:1];
    v8 = [(RAPTablePart *)v6 initWithSections:v7];

    [v3 addObject:v8];
  }

  v9 = objc_alloc_init(NSMutableArray);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  allMenuItems = [(RAPMenu *)self->_categoryQuestion allMenuItems];
  v11 = [allMenuItems countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v11)
  {
    v12 = *v54;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(allMenuItems);
        }

        v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(&v53 + 1) + 8 * i) questionCategory]);
        [v9 addObject:v14];
      }

      v11 = [allMenuItems countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v11);
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100D883EC;
  v51[3] = &unk_101661A90;
  v51[4] = self;
  v38 = v3;
  v52 = v38;
  v40 = objc_retainBlock(v51);
  v15 = +[TrafficIncidentLayoutManager sharedInstance];
  isIncidentReportingEnabled = [v15 isIncidentReportingEnabled];

  if (([(RAPReportComposerCategoryViewController *)self _shouldUseServerControlledUI]| isIncidentReportingEnabled))
  {
    v16 = [[RAPWorkflowLayoutManager alloc] initWithSupportedCategories:v9];
    layoutManager = self->_layoutManager;
    self->_layoutManager = v16;

    v37 = objc_alloc_init(RAPLayoutOptions);
    [(RAPLayoutOptions *)v37 setLayoutType:4];
    v18 = [[RAPLayoutDownloader alloc] initWithLayoutOptions:v37];
    layoutDownloader = self->_layoutDownloader;
    self->_layoutDownloader = v18;

    v20 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v20;

    [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
    [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    tableView = [(RAPReportComposerCategoryViewController *)self tableView];
    [tableView addSubview:self->_activityIndicator];

    centerXAnchor = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
    tableView2 = [(RAPReportComposerCategoryViewController *)self tableView];
    centerXAnchor2 = [tableView2 centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v58[0] = v25;
    centerYAnchor = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
    tableView3 = [(RAPReportComposerCategoryViewController *)self tableView];
    centerYAnchor2 = [tableView3 centerYAnchor];
    v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v58[1] = v29;
    v30 = [NSArray arrayWithObjects:v58 count:2];
    [NSLayoutConstraint activateConstraints:v30];

    objc_initWeak(&location, self);
    v31 = dispatch_group_create();
    if (((sub_10000FA08(self) != 5) & isIncidentReportingEnabled) == 1)
    {
      dispatch_group_enter(v31);
      v32 = +[TrafficIncidentLayoutManager sharedInstance];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100D884C4;
      v47[3] = &unk_101653948;
      objc_copyWeak(&v49, &location);
      v48 = v31;
      [v32 fetchTrafficIncidentsLayout:v47];

      objc_destroyWeak(&v49);
    }

    if ([(RAPReportComposerCategoryViewController *)self _shouldUseServerControlledUI])
    {
      dispatch_group_enter(v31);
      v33 = *(&self->super.super.super.super.super.super.isa + v35);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100D88538;
      v44[3] = &unk_101653970;
      objc_copyWeak(&v46, &location);
      v45 = v31;
      [v33 fetchLayoutConfig:v44];

      objc_destroyWeak(&v46);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D885BC;
    block[3] = &unk_101660648;
    objc_copyWeak(&v43, &location);
    v42 = v40;
    dispatch_group_notify(v31, &_dispatch_main_q, block);

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  else
  {
    (v40[2])();
  }

  v34 = +[TrafficIncidentLayoutManager sharedInstance];
  [v34 addObserver:self];
  self->_isIncidentReportingEnabled = [v34 isIncidentReportingEnabled];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[TrafficIncidentLayoutManager sharedInstance];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = RAPReportComposerCategoryViewController;
  [(RAPReportComposerCategoryViewController *)&v5 dealloc];
}

- (RAPReportComposerCategoryViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  questionCopy = question;
  v15.receiver = self;
  v15.super_class = RAPReportComposerCategoryViewController;
  v10 = [(RAPReportTableViewController *)&v15 initWithReport:report question:questionCopy completion:completion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_categoryQuestion, question);
    v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v11 action:"_cancel"];
    navigationItem = [(RAPReportComposerCategoryViewController *)v11 navigationItem];
    [navigationItem setRightBarButtonItem:v12];
  }

  return v11;
}

@end