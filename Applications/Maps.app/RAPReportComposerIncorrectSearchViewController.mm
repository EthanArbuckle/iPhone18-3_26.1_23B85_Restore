@interface RAPReportComposerIncorrectSearchViewController
- (RAPReportComposerIncorrectSearchViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableParts;
- (void)_instrumentSelectedSearch;
- (void)proceedToNextQuestion:(id)question;
- (void)proceedToPlaceClosureQuestion:(id)question;
- (void)proceedToProblemNotListedQuestion:(id)question;
- (void)proceedToSearchResultIncorrectQuestion:(id)question;
@end

@implementation RAPReportComposerIncorrectSearchViewController

- (void)proceedToSearchResultIncorrectQuestion:(id)question
{
  questionCopy = question;
  v5 = [RAPReportComposerCommentViewController alloc];
  report = [(RAPReportTableViewController *)self report];
  completion = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerCommentViewController *)v5 initWithReport:report question:questionCopy completion:completion];

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
  if ([questionCopy userAction] && -[RAPReportComposerIncorrectSearchViewController analyticTarget](self, "analyticTarget"))
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:objc_msgSend(questionCopy onTarget:"userAction") eventValue:{-[RAPReportComposerIncorrectSearchViewController analyticTarget](self, "analyticTarget"), 0}];
  }

  questionCategory = [questionCopy questionCategory];
  if (questionCategory == 1)
  {
    [(RAPReportComposerIncorrectSearchViewController *)self proceedToProblemNotListedQuestion:questionCopy];
    goto LABEL_11;
  }

  if (questionCategory == 9)
  {
    [(RAPReportComposerIncorrectSearchViewController *)self proceedToPlaceClosureQuestion:questionCopy];
    goto LABEL_11;
  }

  v6 = questionCategory == 10;
  v7 = questionCopy;
  if (v6)
  {
    [(RAPReportComposerIncorrectSearchViewController *)self proceedToSearchResultIncorrectQuestion:questionCopy];
LABEL_11:
    v7 = questionCopy;
  }
}

- (void)_instrumentSelectedSearch
{
  selectedValue = [(RAPSearchWhichOneQuestion *)self->_question selectedValue];

  if (selectedValue)
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:10140 onTarget:-[RAPReportComposerIncorrectSearchViewController analyticTarget](self eventValue:{"analyticTarget"), 0}];
  }
}

- (id)tableParts
{
  v3 = objc_alloc_init(NSMutableArray);
  objc_initWeak(&location, self);
  if (!self->_searchSection)
  {
    v4 = [RAPReportComposerWhichSearchSection alloc];
    question = self->_question;
    selectableSearches = [(RAPSearchWhichOneQuestion *)question selectableSearches];
    selectedValue = [(RAPSearchWhichOneQuestion *)self->_question selectedValue];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100F0F98C;
    v33[3] = &unk_10165CEC0;
    objc_copyWeak(&v34, &location);
    v8 = [(RAPTableCollapsableCheckmarkSection *)v4 initWithOwner:question initialValues:selectableSearches initialSelectedValue:selectedValue configureForValue:&stru_10165CE98 selection:v33];
    searchSection = self->_searchSection;
    self->_searchSection = v8;

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Result [Report an Issue header]" value:@"localized string not found" table:0];
    [(RAPTableCollapsableCheckmarkSection *)self->_searchSection setHeaderTitle:v11];

    objc_destroyWeak(&v34);
  }

  searchRequestPart = self->_searchRequestPart;
  if (!searchRequestPart)
  {
    v13 = [RAPTablePart alloc];
    v37 = self->_searchSection;
    v14 = [NSArray arrayWithObjects:&v37 count:1];
    v15 = [(RAPTablePart *)v13 initWithSections:v14];
    v16 = self->_searchRequestPart;
    self->_searchRequestPart = v15;

    searchRequestPart = self->_searchRequestPart;
  }

  [v3 addObject:searchRequestPart];
  selectedValue2 = [(RAPSearchWhichOneQuestion *)self->_question selectedValue];

  if (selectedValue2)
  {
    if (!self->_subcategorySection)
    {
      v18 = [RAPReportComposerSearchSubcategorySection alloc];
      followUpQuestion = [(RAPSearchWhichOneQuestion *)self->_question followUpQuestion];
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_100F0FA10;
      v31 = &unk_10165CEE8;
      objc_copyWeak(&v32, &location);
      v20 = [(RAPReportComposerSearchSubcategorySection *)v18 initWithQuestion:followUpQuestion selection:&v28];
      subcategorySection = self->_subcategorySection;
      self->_subcategorySection = v20;

      objc_destroyWeak(&v32);
    }

    subcategoryPart = self->_subcategoryPart;
    if (!subcategoryPart)
    {
      v23 = [RAPTablePart alloc];
      v36 = self->_subcategorySection;
      v24 = [NSArray arrayWithObjects:&v36 count:1];
      v25 = [(RAPTablePart *)v23 initWithSections:v24];
      v26 = self->_subcategoryPart;
      self->_subcategoryPart = v25;

      subcategoryPart = self->_subcategoryPart;
    }

    [v3 addObject:{subcategoryPart, v28, v29, v30, v31}];
  }

  objc_destroyWeak(&location);

  return v3;
}

- (RAPReportComposerIncorrectSearchViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  questionCopy = question;
  v17.receiver = self;
  v17.super_class = RAPReportComposerIncorrectSearchViewController;
  v10 = [(RAPReportTableViewController *)&v17 initWithReport:report question:questionCopy completion:completion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, question);
    selectableSearches = [questionCopy selectableSearches];
    v13 = [selectableSearches count];

    if (v13 == 1)
    {
      selectableSearches2 = [questionCopy selectableSearches];
      firstObject = [selectableSearches2 firstObject];
      [questionCopy setSelectedValue:firstObject];
    }

    [(RAPQuestion *)v11->_question addObserver:v11 changeHandler:&stru_10165CE58];
  }

  return v11;
}

@end