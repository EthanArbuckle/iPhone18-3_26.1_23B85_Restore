@interface RAPReportComposerIncorrectSearchViewController
- (RAPReportComposerIncorrectSearchViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableParts;
- (void)_instrumentSelectedSearch;
- (void)proceedToNextQuestion:(id)a3;
- (void)proceedToPlaceClosureQuestion:(id)a3;
- (void)proceedToProblemNotListedQuestion:(id)a3;
- (void)proceedToSearchResultIncorrectQuestion:(id)a3;
@end

@implementation RAPReportComposerIncorrectSearchViewController

- (void)proceedToSearchResultIncorrectQuestion:(id)a3
{
  v4 = a3;
  v5 = [RAPReportComposerCommentViewController alloc];
  v8 = [(RAPReportTableViewController *)self report];
  v6 = [(RAPReportTableViewController *)self completion];
  v7 = [(RAPReportComposerCommentViewController *)v5 initWithReport:v8 question:v4 completion:v6];

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
  v8 = a3;
  if ([v8 userAction] && -[RAPReportComposerIncorrectSearchViewController analyticTarget](self, "analyticTarget"))
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:objc_msgSend(v8 onTarget:"userAction") eventValue:{-[RAPReportComposerIncorrectSearchViewController analyticTarget](self, "analyticTarget"), 0}];
  }

  v5 = [v8 questionCategory];
  if (v5 == 1)
  {
    [(RAPReportComposerIncorrectSearchViewController *)self proceedToProblemNotListedQuestion:v8];
    goto LABEL_11;
  }

  if (v5 == 9)
  {
    [(RAPReportComposerIncorrectSearchViewController *)self proceedToPlaceClosureQuestion:v8];
    goto LABEL_11;
  }

  v6 = v5 == 10;
  v7 = v8;
  if (v6)
  {
    [(RAPReportComposerIncorrectSearchViewController *)self proceedToSearchResultIncorrectQuestion:v8];
LABEL_11:
    v7 = v8;
  }
}

- (void)_instrumentSelectedSearch
{
  v3 = [(RAPSearchWhichOneQuestion *)self->_question selectedValue];

  if (v3)
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
    v6 = [(RAPSearchWhichOneQuestion *)question selectableSearches];
    v7 = [(RAPSearchWhichOneQuestion *)self->_question selectedValue];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100F0F98C;
    v33[3] = &unk_10165CEC0;
    objc_copyWeak(&v34, &location);
    v8 = [(RAPTableCollapsableCheckmarkSection *)v4 initWithOwner:question initialValues:v6 initialSelectedValue:v7 configureForValue:&stru_10165CE98 selection:v33];
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
  v17 = [(RAPSearchWhichOneQuestion *)self->_question selectedValue];

  if (v17)
  {
    if (!self->_subcategorySection)
    {
      v18 = [RAPReportComposerSearchSubcategorySection alloc];
      v19 = [(RAPSearchWhichOneQuestion *)self->_question followUpQuestion];
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_100F0FA10;
      v31 = &unk_10165CEE8;
      objc_copyWeak(&v32, &location);
      v20 = [(RAPReportComposerSearchSubcategorySection *)v18 initWithQuestion:v19 selection:&v28];
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

- (RAPReportComposerIncorrectSearchViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v17.receiver = self;
  v17.super_class = RAPReportComposerIncorrectSearchViewController;
  v10 = [(RAPReportTableViewController *)&v17 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, a4);
    v12 = [v9 selectableSearches];
    v13 = [v12 count];

    if (v13 == 1)
    {
      v14 = [v9 selectableSearches];
      v15 = [v14 firstObject];
      [v9 setSelectedValue:v15];
    }

    [(RAPQuestion *)v11->_question addObserver:v11 changeHandler:&stru_10165CE58];
  }

  return v11;
}

@end