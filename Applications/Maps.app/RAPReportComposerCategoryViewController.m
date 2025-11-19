@interface RAPReportComposerCategoryViewController
- (BOOL)_shouldUseServerControlledUI;
- (RAPReportComposerCategoryViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (void)_proceedToIncidentsQuestion:(id)a3;
- (void)dealloc;
- (void)incidentsReportingEnablementDidUpdate;
- (void)proceedToArrivalTimeIncorrectQuestion:(id)a3;
- (void)proceedToBadRouteSuggestionsQuestion:(id)a3;
- (void)proceedToIncorrectSearchResultsQuestion:(id)a3;
- (void)proceedToLabelCorrectionsQuestion:(id)a3;
- (void)proceedToNextQuestion:(id)a3;
- (void)proceedToPlaceClosureQuestion:(id)a3;
- (void)proceedToProblemNotListedQuestion:(id)a3;
- (void)proceedToProblemWithDirectionsQuestion:(id)a3;
- (void)proceedToRAPPersonalPlaceCorrectionsQuestion:(id)a3;
- (void)refinementCoordinator:(id)a3 finishedRefiningCoordinate:(CLLocationCoordinate2D)a4 withShortcut:(id)a5;
- (void)refinementCoordinatorRequestsChangeAddress:(id)a3 withShortcut:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
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

- (void)refinementCoordinator:(id)a3 finishedRefiningCoordinate:(CLLocationCoordinate2D)a4 withShortcut:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v8 = a3;
  v9 = a5;
  v10 = [ShortcutEditSession editSessionWithShortcut:v9];
  [v10 setAdjustedCoordinate:{latitude, longitude}];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100D8703C;
  v13[3] = &unk_101661570;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  [v10 saveWithCompletion:v13];
}

- (void)refinementCoordinatorRequestsChangeAddress:(id)a3 withShortcut:(id)a4
{
  v4 = a4;
  v7 = +[UIApplication sharedMapsDelegate];
  v5 = [v7 appCoordinator];
  v6 = [v5 chromeViewController];
  [v6 resetForEditingShortcut:v4];
}

- (void)proceedToRAPPersonalPlaceCorrectionsQuestion:(id)a3
{
  v18 = a3;
  v4 = [v18 mainMenuItems];
  v5 = [v4 count];

  v6 = [v18 mainMenuItems];
  v7 = v6;
  if (v5 == 1)
  {
    v8 = [v6 firstObject];

    v9 = [RAPPersonalPlaceCorrectionsQuestion alloc];
    v10 = [v18 report];
    v11 = [(RAPPersonalPlaceSelectionViewController *)v8 shortcut];
    v12 = [(RAPPersonalPlaceCorrectionsQuestion *)v9 initWithReport:v10 parentQuestion:v18 shortcut:v11];

    [v18 setSelectedMenuItem:v12];
    v13 = [RAPPersonalPlaceRefinementCoordinator alloc];
    v14 = [v18 report];
    v15 = [(RAPPersonalPlaceRefinementCoordinator *)v13 initWithPresentingViewController:self delegate:self report:v14 question:v12];
    homeWorkCoordinator = self->_homeWorkCoordinator;
    self->_homeWorkCoordinator = v15;

    [(RAPPersonalPlaceRefinementCoordinator *)self->_homeWorkCoordinator beginShortcutRefinement];
  }

  else
  {
    v17 = [v6 count];

    if (!v17)
    {
      goto LABEL_6;
    }

    v8 = [[RAPPersonalPlaceSelectionViewController alloc] initWithQuestion:v18];
    [(RAPTableViewController *)self segueToViewController:v8];
  }

LABEL_6:
}

- (void)proceedToBadRouteSuggestionsQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerBadRouteSuggestionsViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerBadRouteSuggestionsViewController *)v5 initWithReport:v8 question:v4 completion:v6];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)_proceedToIncidentsQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerIncidentsEditorViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerIncidentsEditorViewController *)v5 initWithReport:v8 question:v4 completion:v6];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToLabelCorrectionsQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerLabelNameEditorViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerLabelNameEditorViewController *)v5 initWithReport:v8 question:v4 completion:v6];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToPlaceClosureQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerPlaceClosureViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerPlaceClosureViewController *)v5 initWithReport:v8 question:v4 completion:v6];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToProblemWithDirectionsQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerDirectionsViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerDirectionsViewController *)v5 initWithReport:v8 question:v4 completion:v6];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToIncorrectSearchResultsQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerIncorrectSearchViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerIncorrectSearchViewController *)v5 initWithReport:v8 question:v4 completion:v6];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToArrivalTimeIncorrectQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerCommentViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerCommentViewController *)v5 initWithReport:v8 question:v4 completion:v6];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToProblemNotListedQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerCommentViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerCommentViewController *)v5 initWithReport:v8 question:v4 completion:v6];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToNextQuestion:(id)a3
{
  v17 = a3;
  v4 = [(RAPReportComposerCategoryViewController *)self analyticTarget];
  v5 = v17;
  if (v4)
  {
    v6 = [v17 userAction];
    v5 = v17;
    if (v6)
    {
      v7 = v17;
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
      v12 = [v7 userAction];
      v13 = [(RAPReportComposerCategoryViewController *)self analyticTarget];
      if (v10)
      {
        v14 = [v9 eventValue];
        [v11 captureUserAction:v12 onTarget:v13 eventValue:v14];
      }

      else
      {
        [v11 captureUserAction:v12 onTarget:v13 eventValue:0];
      }

      v5 = v17;
    }
  }

  v15 = [v5 questionCategory];
  if (v15 <= 11)
  {
    if (v15 > 7)
    {
      v16 = v17;
      if (v15 == 8)
      {
        [(RAPReportComposerCategoryViewController *)self proceedToLabelCorrectionsQuestion:v17];
        goto LABEL_13;
      }

      if (v15 == 9)
      {
        [(RAPReportComposerCategoryViewController *)self proceedToPlaceClosureQuestion:v17];
        goto LABEL_13;
      }
    }

    else
    {
      v16 = v17;
      if (v15 == 1)
      {
        [(RAPReportComposerCategoryViewController *)self proceedToProblemNotListedQuestion:v17];
        goto LABEL_13;
      }

      if (v15 == 7)
      {
        [(RAPReportComposerCategoryViewController *)self proceedToProblemWithDirectionsQuestion:v17];
        goto LABEL_13;
      }
    }
  }

  else
  {
    if ((v15 - 13) < 6)
    {
      [(RAPReportComposerCategoryViewController *)self proceedToRAPPersonalPlaceCorrectionsQuestion:v17];
LABEL_13:
      v16 = v17;
      goto LABEL_14;
    }

    v16 = v17;
    if (v15 == 12)
    {
      [(RAPReportComposerCategoryViewController *)self proceedToIncorrectSearchResultsQuestion:v17];
      goto LABEL_13;
    }

    if (v15 == 19)
    {
      [(RAPReportComposerCategoryViewController *)self _proceedToIncidentsQuestion:v17];
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RAPReportComposerCategoryViewController;
  [(RAPReportComposerCategoryViewController *)&v5 viewDidAppear:a3];
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
  v10 = [(RAPMenu *)self->_categoryQuestion allMenuItems];
  v11 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v11)
  {
    v12 = *v54;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(&v53 + 1) + 8 * i) questionCategory]);
        [v9 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v53 objects:v59 count:16];
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
  v39 = [v15 isIncidentReportingEnabled];

  if (([(RAPReportComposerCategoryViewController *)self _shouldUseServerControlledUI]| v39))
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
    v22 = [(RAPReportComposerCategoryViewController *)self tableView];
    [v22 addSubview:self->_activityIndicator];

    v36 = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
    v23 = [(RAPReportComposerCategoryViewController *)self tableView];
    v24 = [v23 centerXAnchor];
    v25 = [v36 constraintEqualToAnchor:v24];
    v58[0] = v25;
    v26 = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
    v27 = [(RAPReportComposerCategoryViewController *)self tableView];
    v28 = [v27 centerYAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v58[1] = v29;
    v30 = [NSArray arrayWithObjects:v58 count:2];
    [NSLayoutConstraint activateConstraints:v30];

    objc_initWeak(&location, self);
    v31 = dispatch_group_create();
    if (((sub_10000FA08(self) != 5) & v39) == 1)
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

- (RAPReportComposerCategoryViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = RAPReportComposerCategoryViewController;
  v10 = [(RAPReportTableViewController *)&v15 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_categoryQuestion, a4);
    v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v11 action:"_cancel"];
    v13 = [(RAPReportComposerCategoryViewController *)v11 navigationItem];
    [v13 setRightBarButtonItem:v12];
  }

  return v11;
}

@end