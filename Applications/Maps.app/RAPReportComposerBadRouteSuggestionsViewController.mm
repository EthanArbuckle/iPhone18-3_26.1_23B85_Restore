@interface RAPReportComposerBadRouteSuggestionsViewController
- (RAPReportComposerBadRouteSuggestionsViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
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
  userInfoPart = [(RAPReportTableViewController *)self userInfoPart];
  [v3 addObject:userInfoPart];

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
      commentQuestion = [(RAPBadRouteSuggestionsQuestion *)self->_question commentQuestion];
      v17 = [(RAPReportComposerCommentPart *)v15 initWithCommentQuestion:commentQuestion];
      v18 = self->_commentPart;
      self->_commentPart = v17;

      commentPart = self->_commentPart;
    }

    [v3 addObject:commentPart];
  }

  return v3;
}

- (RAPReportComposerBadRouteSuggestionsViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  questionCopy = question;
  v15.receiver = self;
  v15.super_class = RAPReportComposerBadRouteSuggestionsViewController;
  v10 = [(RAPReportTableViewController *)&v15 initWithReport:report question:questionCopy completion:completion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, question);
    [(RAPQuestion *)v11->_question addObserver:v11 changeHandler:&stru_101632090];
    sendButtonItem = [(RAPReportTableViewController *)v11 sendButtonItem];
    navigationItem = [(RAPReportComposerBadRouteSuggestionsViewController *)v11 navigationItem];
    [navigationItem setRightBarButtonItem:sendButtonItem];
  }

  return v11;
}

@end