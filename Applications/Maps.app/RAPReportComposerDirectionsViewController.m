@interface RAPReportComposerDirectionsViewController
- (RAPReportComposerDirectionsViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableParts;
- (void)_didTapOnCancel;
- (void)_instrumentSelectingRoute;
- (void)dealloc;
- (void)proceedToArrivalEntryPointIncorrectQuestion:(id)a3;
- (void)proceedToArrivalTimeIncorrectQuestion:(id)a3;
- (void)proceedToBadRouteSuggestionsQuestion:(id)a3;
- (void)proceedToDirectionInstructionsIncorrectQuestion:(id)a3;
- (void)proceedToNextQuestion:(id)a3;
- (void)proceedToProblemNotListedQuestion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation RAPReportComposerDirectionsViewController

- (void)_instrumentSelectingRoute
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:10154 onTarget:-[RAPReportComposerDirectionsViewController analyticTarget](self eventValue:{"analyticTarget"), 0}];
}

- (void)_didTapOnCancel
{
  v3 = [(RAPReportTableViewController *)self completion];

  if (v3)
  {
    v4 = [(RAPReportTableViewController *)self completion];
    v4[2](v4, self, 0);
  }
}

- (void)proceedToDirectionInstructionsIncorrectQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerDirectionInstructionsIncorrectViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)v5 initWithReport:v8 question:v4 completion:v6];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToArrivalEntryPointIncorrectQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerAccessPointViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerAccessPointViewController *)v5 initWithReport:v8 question:v4 completion:v6];

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

- (void)proceedToBadRouteSuggestionsQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerBadRouteSuggestionsViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerBadRouteSuggestionsViewController *)v5 initWithReport:v8 question:v4 completion:v6];

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
  v7 = a3;
  if ([v7 userAction])
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:objc_msgSend(v7 onTarget:"userAction") eventValue:{-[RAPReportComposerDirectionsViewController analyticTarget](self, "analyticTarget"), 0}];
  }

  v5 = [v7 questionCategory];
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      [(RAPReportComposerDirectionsViewController *)self proceedToProblemNotListedQuestion:v7];
    }

    else
    {
      v6 = v7;
      if (v5 != 2)
      {
        goto LABEL_15;
      }

      [(RAPReportComposerDirectionsViewController *)self proceedToBadRouteSuggestionsQuestion:v7];
    }
  }

  else if (v5 == 3)
  {
    [(RAPReportComposerDirectionsViewController *)self proceedToArrivalTimeIncorrectQuestion:v7];
  }

  else
  {
    v6 = v7;
    if (v5 == 4)
    {
      [(RAPReportComposerDirectionsViewController *)self proceedToArrivalEntryPointIncorrectQuestion:v7];
    }

    else
    {
      if (v5 != 6)
      {
        goto LABEL_15;
      }

      [(RAPReportComposerDirectionsViewController *)self proceedToDirectionInstructionsIncorrectQuestion:v7];
    }
  }

  v6 = v7;
LABEL_15:
}

- (id)tableParts
{
  v3 = objc_alloc_init(NSMutableArray);
  objc_initWeak(&location, self);
  if (!self->_directionsRequestsSection)
  {
    v4 = [RAPDirectionsRequestsCheckmarkSection alloc];
    question = self->_question;
    v6 = [(RAPDirectionsWhichOneQuestion *)question selectableDirectionsRequests];
    v7 = [(RAPDirectionsWhichOneQuestion *)self->_question selectedValue];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100CE2154;
    v40[3] = &unk_101650B08;
    objc_copyWeak(&v41, &location);
    v8 = [(RAPTableCollapsableCheckmarkSection *)v4 initWithOwner:question initialValues:v6 initialSelectedValue:v7 configureForValue:0 selection:v40];
    directionsRequestsSection = self->_directionsRequestsSection;
    self->_directionsRequestsSection = v8;

    v10 = [(RAPDirectionsWhichOneQuestion *)self->_question localizedSelectDirectionsRequestPrompt];
    [(RAPTableCollapsableCheckmarkSection *)self->_directionsRequestsSection setHeaderTitle:v10];

    objc_destroyWeak(&v41);
  }

  directionsRequestsPart = self->_directionsRequestsPart;
  if (!directionsRequestsPart)
  {
    v12 = [RAPTablePart alloc];
    v45 = self->_directionsRequestsSection;
    v13 = [NSArray arrayWithObjects:&v45 count:1];
    v14 = [(RAPTablePart *)v12 initWithSections:v13];
    v15 = self->_directionsRequestsPart;
    self->_directionsRequestsPart = v14;

    directionsRequestsPart = self->_directionsRequestsPart;
  }

  [v3 addObject:directionsRequestsPart];
  v16 = [(RAPDirectionsWhichOneQuestion *)self->_question selectedValue];

  if (v16)
  {
    v17 = [RAPReportComposerDirectionsSubcategorySection alloc];
    v18 = [(RAPDirectionsWhichOneQuestion *)self->_question followUpQuestion];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100CE21D8;
    v38[3] = &unk_10165CEE8;
    objc_copyWeak(&v39, &location);
    v19 = [(RAPReportComposerDirectionsSubcategorySection *)v17 initWithQuestion:v18 selection:v38];
    subcategorySection = self->_subcategorySection;
    self->_subcategorySection = v19;

    v21 = +[RAPDirectionsCategoryQuestion localizedHeaderText];
    [(RAPTablePartSection *)self->_subcategorySection setHeaderTitle:v21];

    v22 = [RAPTablePart alloc];
    v44 = self->_subcategorySection;
    v23 = [NSArray arrayWithObjects:&v44 count:1];
    v24 = [(RAPTablePart *)v22 initWithSections:v23];
    subcategoryPart = self->_subcategoryPart;
    self->_subcategoryPart = v24;

    [v3 addObject:self->_subcategoryPart];
    v26 = [(RAPDirectionsWhichOneQuestion *)self->_question followUpQuestion];
    LODWORD(v22) = [v26 shouldShowBetterRouteAvailable];

    if (v22)
    {
      v27 = [RAPReportComposerBadRouteSuggestionSection alloc];
      v28 = [(RAPDirectionsWhichOneQuestion *)self->_question followUpQuestion];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100CE2234;
      v36[3] = &unk_10165CEE8;
      objc_copyWeak(&v37, &location);
      v29 = [(RAPReportComposerBadRouteSuggestionSection *)v27 initWithQuestion:v28 selection:v36];
      betterRouteSection = self->_betterRouteSection;
      self->_betterRouteSection = v29;

      v31 = [RAPTablePart alloc];
      v43 = self->_betterRouteSection;
      v32 = [NSArray arrayWithObjects:&v43 count:1];
      v33 = [(RAPTablePart *)v31 initWithSections:v32];
      betterRoutePart = self->_betterRoutePart;
      self->_betterRoutePart = v33;

      [v3 addObject:self->_betterRoutePart];
      objc_destroyWeak(&v37);
    }

    objc_destroyWeak(&v39);
  }

  objc_destroyWeak(&location);

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RAPReportComposerDirectionsViewController;
  [(RAPReportComposerDirectionsViewController *)&v5 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"RAPReportComposerDirectionsViewControllerDidAppearNotification" object:self];
}

- (void)dealloc
{
  [(RAPQuestion *)self->_question removeObserver:self];
  v3.receiver = self;
  v3.super_class = RAPReportComposerDirectionsViewController;
  [(RAPReportComposerDirectionsViewController *)&v3 dealloc];
}

- (RAPReportComposerDirectionsViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v20.receiver = self;
  v20.super_class = RAPReportComposerDirectionsViewController;
  v10 = [(RAPReportTableViewController *)&v20 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, a4);
    v12 = [v9 selectableDirectionsRequests];
    v13 = [v12 count];

    if (v13 == 1)
    {
      v14 = [v9 selectableDirectionsRequests];
      v15 = [v14 firstObject];
      [v9 setSelectedValue:v15];
    }

    [(RAPQuestion *)v11->_question addObserver:v11 changeHandler:&stru_101650AE0];
    v16 = [v9 parentQuestion];

    if (!v16)
    {
      v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v11 action:"_didTapOnCancel"];
      v18 = [(RAPReportComposerDirectionsViewController *)v11 navigationItem];
      [v18 setLeftBarButtonItem:v17];
    }
  }

  return v11;
}

@end