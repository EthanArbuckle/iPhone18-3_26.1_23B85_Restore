@interface RAPReportComposerPlaceClosureViewController
- (RAPReportComposerPlaceClosureViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
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
    v12 = [(RAPPlaceClosureQuestion *)self->_question commentQuestion];
    v13 = [(RAPReportComposerCommentPart *)v11 initWithCommentQuestion:v12];
    commentPart = self->_commentPart;
    self->_commentPart = v13;
  }

  v15 = [(RAPReportTableViewController *)self userInfoPart];
  v16 = self->_issuePart;
  v22[0] = v15;
  v22[1] = v16;
  v22[2] = self->_commentPart;
  v17 = [NSArray arrayWithObjects:v22 count:3];

  return v17;
}

- (RAPReportComposerPlaceClosureViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v16.receiver = self;
  v16.super_class = RAPReportComposerPlaceClosureViewController;
  v10 = [(RAPReportTableViewController *)&v16 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, a4);
    v12 = [(RAPReportTableViewController *)v11 sendButtonItem];
    v13 = [(RAPReportComposerPlaceClosureViewController *)v11 navigationItem];
    [v13 setRightBarButtonItem:v12];

    v14 = [(RAPPlaceClosureQuestion *)v11->_question localizedTitle];
    [(RAPReportComposerPlaceClosureViewController *)v11 setTitle:v14];
  }

  return v11;
}

@end