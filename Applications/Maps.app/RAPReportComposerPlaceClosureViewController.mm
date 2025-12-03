@interface RAPReportComposerPlaceClosureViewController
- (RAPReportComposerPlaceClosureViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableParts;
@end

@implementation RAPReportComposerPlaceClosureViewController

- (id)tableParts
{
  if (!self->_issuePart)
  {
    if (!self->_issue)
    {
      objc_initWeak(&location, self);
      v3 = [RAPReportComposerPlaceClosureIssueSection alloc];
      question = self->_question;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1005BB6C8;
      v19[3] = &unk_101661B98;
      objc_copyWeak(&v20, &location);
      v5 = [(RAPReportComposerPlaceClosureIssueSection *)v3 initWithQuestion:question selection:v19];
      issue = self->_issue;
      self->_issue = v5;

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    v7 = [RAPTablePart alloc];
    v23 = self->_issue;
    v8 = [NSArray arrayWithObjects:&v23 count:1];
    v9 = [(RAPTablePart *)v7 initWithSections:v8];
    issuePart = self->_issuePart;
    self->_issuePart = v9;
  }

  if (!self->_commentPart)
  {
    v11 = [RAPReportComposerCommentPart alloc];
    commentQuestion = [(RAPPlaceClosureQuestion *)self->_question commentQuestion];
    v13 = [(RAPReportComposerCommentPart *)v11 initWithCommentQuestion:commentQuestion];
    commentPart = self->_commentPart;
    self->_commentPart = v13;
  }

  userInfoPart = [(RAPReportTableViewController *)self userInfoPart];
  v16 = self->_issuePart;
  v22[0] = userInfoPart;
  v22[1] = v16;
  v22[2] = self->_commentPart;
  v17 = [NSArray arrayWithObjects:v22 count:3];

  return v17;
}

- (RAPReportComposerPlaceClosureViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  questionCopy = question;
  v16.receiver = self;
  v16.super_class = RAPReportComposerPlaceClosureViewController;
  v10 = [(RAPReportTableViewController *)&v16 initWithReport:report question:questionCopy completion:completion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, question);
    sendButtonItem = [(RAPReportTableViewController *)v11 sendButtonItem];
    navigationItem = [(RAPReportComposerPlaceClosureViewController *)v11 navigationItem];
    [navigationItem setRightBarButtonItem:sendButtonItem];

    localizedTitle = [(RAPPlaceClosureQuestion *)v11->_question localizedTitle];
    [(RAPReportComposerPlaceClosureViewController *)v11 setTitle:localizedTitle];
  }

  return v11;
}

@end