@interface RAPReportComposerDirectionsViewController
- (RAPReportComposerDirectionsViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableParts;
- (void)_didTapOnCancel;
- (void)_instrumentSelectingRoute;
- (void)dealloc;
- (void)proceedToArrivalEntryPointIncorrectQuestion:(id)question;
- (void)proceedToArrivalTimeIncorrectQuestion:(id)question;
- (void)proceedToBadRouteSuggestionsQuestion:(id)question;
- (void)proceedToDirectionInstructionsIncorrectQuestion:(id)question;
- (void)proceedToNextQuestion:(id)question;
- (void)proceedToProblemNotListedQuestion:(id)question;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation RAPReportComposerDirectionsViewController

- (void)_instrumentSelectingRoute
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:10154 onTarget:-[RAPReportComposerDirectionsViewController analyticTarget](self eventValue:{"analyticTarget"), 0}];
}

- (void)_didTapOnCancel
{
  completion = [(RAPReportTableViewController *)self completion];

  if (completion)
  {
    completion2 = [(RAPReportTableViewController *)self completion];
    completion2[2](completion2, self, 0);
  }
}

- (void)proceedToDirectionInstructionsIncorrectQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerDirectionInstructionsIncorrectViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerDirectionInstructionsIncorrectViewController *)v5 initWithReport:report question:questionCopy completion:completion];

  [(RAPTableViewController *)self segueToViewController:v7];
}

- (void)proceedToArrivalEntryPointIncorrectQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerAccessPointViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerAccessPointViewController *)v5 initWithReport:report question:questionCopy completion:completion];

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

- (void)proceedToBadRouteSuggestionsQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerBadRouteSuggestionsViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerBadRouteSuggestionsViewController *)v5 initWithReport:report question:questionCopy completion:completion];

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
  if ([questionCopy userAction])
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:objc_msgSend(questionCopy onTarget:"userAction") eventValue:{-[RAPReportComposerDirectionsViewController analyticTarget](self, "analyticTarget"), 0}];
  }

  questionCategory = [questionCopy questionCategory];
  if (questionCategory <= 2)
  {
    if (questionCategory == 1)
    {
      [(RAPReportComposerDirectionsViewController *)self proceedToProblemNotListedQuestion:questionCopy];
    }

    else
    {
      v6 = questionCopy;
      if (questionCategory != 2)
      {
        goto LABEL_15;
      }

      [(RAPReportComposerDirectionsViewController *)self proceedToBadRouteSuggestionsQuestion:questionCopy];
    }
  }

  else if (questionCategory == 3)
  {
    [(RAPReportComposerDirectionsViewController *)self proceedToArrivalTimeIncorrectQuestion:questionCopy];
  }

  else
  {
    v6 = questionCopy;
    if (questionCategory == 4)
    {
      [(RAPReportComposerDirectionsViewController *)self proceedToArrivalEntryPointIncorrectQuestion:questionCopy];
    }

    else
    {
      if (questionCategory != 6)
      {
        goto LABEL_15;
      }

      [(RAPReportComposerDirectionsViewController *)self proceedToDirectionInstructionsIncorrectQuestion:questionCopy];
    }
  }

  v6 = questionCopy;
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
    selectableDirectionsRequests = [(RAPDirectionsWhichOneQuestion *)question selectableDirectionsRequests];
    selectedValue = [(RAPDirectionsWhichOneQuestion *)self->_question selectedValue];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100CE2154;
    v40[3] = &unk_101650B08;
    objc_copyWeak(&v41, &location);
    v8 = [(RAPTableCollapsableCheckmarkSection *)v4 initWithOwner:question initialValues:selectableDirectionsRequests initialSelectedValue:selectedValue configureForValue:0 selection:v40];
    directionsRequestsSection = self->_directionsRequestsSection;
    self->_directionsRequestsSection = v8;

    localizedSelectDirectionsRequestPrompt = [(RAPDirectionsWhichOneQuestion *)self->_question localizedSelectDirectionsRequestPrompt];
    [(RAPTableCollapsableCheckmarkSection *)self->_directionsRequestsSection setHeaderTitle:localizedSelectDirectionsRequestPrompt];

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
  selectedValue2 = [(RAPDirectionsWhichOneQuestion *)self->_question selectedValue];

  if (selectedValue2)
  {
    v17 = [RAPReportComposerDirectionsSubcategorySection alloc];
    followUpQuestion = [(RAPDirectionsWhichOneQuestion *)self->_question followUpQuestion];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100CE21D8;
    v38[3] = &unk_10165CEE8;
    objc_copyWeak(&v39, &location);
    v19 = [(RAPReportComposerDirectionsSubcategorySection *)v17 initWithQuestion:followUpQuestion selection:v38];
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
    followUpQuestion2 = [(RAPDirectionsWhichOneQuestion *)self->_question followUpQuestion];
    LODWORD(v22) = [followUpQuestion2 shouldShowBetterRouteAvailable];

    if (v22)
    {
      v27 = [RAPReportComposerBadRouteSuggestionSection alloc];
      followUpQuestion3 = [(RAPDirectionsWhichOneQuestion *)self->_question followUpQuestion];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100CE2234;
      v36[3] = &unk_10165CEE8;
      objc_copyWeak(&v37, &location);
      v29 = [(RAPReportComposerBadRouteSuggestionSection *)v27 initWithQuestion:followUpQuestion3 selection:v36];
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

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RAPReportComposerDirectionsViewController;
  [(RAPReportComposerDirectionsViewController *)&v5 viewDidAppear:appear];
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

- (RAPReportComposerDirectionsViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  questionCopy = question;
  v20.receiver = self;
  v20.super_class = RAPReportComposerDirectionsViewController;
  v10 = [(RAPReportTableViewController *)&v20 initWithReport:report question:questionCopy completion:completion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, question);
    selectableDirectionsRequests = [questionCopy selectableDirectionsRequests];
    v13 = [selectableDirectionsRequests count];

    if (v13 == 1)
    {
      selectableDirectionsRequests2 = [questionCopy selectableDirectionsRequests];
      firstObject = [selectableDirectionsRequests2 firstObject];
      [questionCopy setSelectedValue:firstObject];
    }

    [(RAPQuestion *)v11->_question addObserver:v11 changeHandler:&stru_101650AE0];
    parentQuestion = [questionCopy parentQuestion];

    if (!parentQuestion)
    {
      v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v11 action:"_didTapOnCancel"];
      navigationItem = [(RAPReportComposerDirectionsViewController *)v11 navigationItem];
      [navigationItem setLeftBarButtonItem:v17];
    }
  }

  return v11;
}

@end