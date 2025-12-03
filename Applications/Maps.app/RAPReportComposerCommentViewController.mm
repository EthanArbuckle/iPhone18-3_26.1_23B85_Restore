@interface RAPReportComposerCommentViewController
- (RAPReportComposerCommentTableViewCell)rapReportComposerCommentTableViewCell;
- (RAPReportComposerCommentViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableParts;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation RAPReportComposerCommentViewController

- (id)tableParts
{
  if (!self->_commentPart)
  {
    v3 = [RAPReportComposerCommentPart alloc];
    commentQuestion = [(RAPCommentQuestionProtocol *)self->_question commentQuestion];
    v5 = [(RAPReportComposerCommentPart *)v3 initWithCommentQuestion:commentQuestion];
    commentPart = self->_commentPart;
    self->_commentPart = v5;
  }

  if (MapsFeature_IsEnabled_RAPCommunityID())
  {
    if (([(RAPCommentQuestionProtocol *)self->_question isAnonymous]& 1) != 0)
    {
      v15 = self->_commentPart;
      v7 = [NSArray arrayWithObjects:&v15 count:1];
      goto LABEL_9;
    }

    userInfoPart = [(RAPReportTableViewController *)self userInfoPart];
    v11 = self->_commentPart;
    v16[0] = userInfoPart;
    v16[1] = v11;
    v10 = v16;
  }

  else
  {
    userInfoPart = [(RAPReportTableViewController *)self userInfoPart];
    v9 = self->_commentPart;
    v13 = userInfoPart;
    v14 = v9;
    v10 = &v13;
  }

  v7 = [NSArray arrayWithObjects:v10 count:2, v13, v14];

LABEL_9:

  return v7;
}

- (RAPReportComposerCommentTableViewCell)rapReportComposerCommentTableViewCell
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tableView = [(RAPReportComposerCommentViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v4 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(visibleCells);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RAPReportComposerCommentViewController;
  [(RAPReportComposerCommentViewController *)&v5 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"RAPReportComposerCommentViewControllerDidAppearNotification" object:self];
}

- (RAPReportComposerCommentViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  questionCopy = question;
  v15.receiver = self;
  v15.super_class = RAPReportComposerCommentViewController;
  v10 = [(RAPReportTableViewController *)&v15 initWithReport:report question:questionCopy completion:completion];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, question);
    sendButtonItem = [(RAPReportTableViewController *)v11 sendButtonItem];
    navigationItem = [(RAPReportComposerCommentViewController *)v11 navigationItem];
    [navigationItem setRightBarButtonItem:sendButtonItem];
  }

  return v11;
}

@end