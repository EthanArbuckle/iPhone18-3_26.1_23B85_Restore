@interface RAPReportComposerBadRouteSuggestionsViewController
- (RAPReportComposerBadRouteSuggestionsViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableParts;
- (void)_instrumentSelectingRoute;
@end

@implementation RAPReportComposerBadRouteSuggestionsViewController

- (void)_instrumentSelectingRoute
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:10154 onTarget:-[RAPReportComposerBadRouteSuggestionsViewController analyticTarget](self eventValue:{"analyticTarget"), 0}];
}

- (id)tableParts
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(RAPReportTableViewController *)self userInfoPart];
  [v3 addObject:v4];

  whichRoutePart = self->_whichRoutePart;
  if (!whichRoutePart)
  {
    if (!self->_whichRouteSection)
    {
      objc_initWeak(&location, self);
      v6 = [RAPReportComposerBadRouteSelectionSection alloc];
      question = self->_question;
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100A29A64;
      v23 = &unk_101661B98;
      objc_copyWeak(&v24, &location);
      v8 = [(RAPReportComposerBadRouteSelectionSection *)v6 initWithQuestion:question willChangeQuestionRequiringNoScroll:&v20];
      whichRouteSection = self->_whichRouteSection;
      self->_whichRouteSection = v8;

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    v10 = [RAPTablePart alloc];
    v26 = self->_whichRouteSection;
    v11 = [NSArray arrayWithObjects:&v26 count:1];
    v12 = [(RAPTablePart *)v10 initWithSections:v11];
    v13 = self->_whichRoutePart;
    self->_whichRoutePart = v12;

    whichRoutePart = self->_whichRoutePart;
  }

  [v3 addObject:{whichRoutePart, v20, v21, v22, v23}];
  if ([(RAPBadRouteSuggestionsQuestion *)self->_question shouldShowCommentQuestion])
  {
    commentPart = self->_commentPart;
    if (!commentPart)
    {
      v15 = [RAPReportComposerCommentPart alloc];
      v16 = [(RAPBadRouteSuggestionsQuestion *)self->_question commentQuestion];
      v17 = [(RAPReportComposerCommentPart *)v15 initWithCommentQuestion:v16];
      v18 = self->_commentPart;
      self->_commentPart = v17;

      commentPart = self->_commentPart;
    }

    [v3 addObject:commentPart];
  }

  return v3;
}

- (RAPReportComposerBadRouteSuggestionsViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = RAPReportComposerBadRouteSuggestionsViewController;
  v10 = [(RAPReportTableViewController *)&v15 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, a4);
    [(RAPQuestion *)v11->_question addObserver:v11 changeHandler:&stru_101632090];
    v12 = [(RAPReportTableViewController *)v11 sendButtonItem];
    v13 = [(RAPReportComposerBadRouteSuggestionsViewController *)v11 navigationItem];
    [v13 setRightBarButtonItem:v12];
  }

  return v11;
}

@end