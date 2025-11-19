@interface RAPReportComposerCommentViewController
- (RAPReportComposerCommentTableViewCell)rapReportComposerCommentTableViewCell;
- (RAPReportComposerCommentViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableParts;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation RAPReportComposerCommentViewController

- (id)tableParts
{
  if (!self->_commentPart)
  {
    v3 = [RAPReportComposerCommentPart alloc];
    v4 = [(RAPCommentQuestionProtocol *)self->_question commentQuestion];
    v5 = [(RAPReportComposerCommentPart *)v3 initWithCommentQuestion:v4];
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

    v8 = [(RAPReportTableViewController *)self userInfoPart];
    v11 = self->_commentPart;
    v16[0] = v8;
    v16[1] = v11;
    v10 = v16;
  }

  else
  {
    v8 = [(RAPReportTableViewController *)self userInfoPart];
    v9 = self->_commentPart;
    v13 = v8;
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
  v2 = [(RAPReportComposerCommentViewController *)self tableView];
  v3 = [v2 visibleCells];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RAPReportComposerCommentViewController;
  [(RAPReportComposerCommentViewController *)&v5 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"RAPReportComposerCommentViewControllerDidAppearNotification" object:self];
}

- (RAPReportComposerCommentViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = RAPReportComposerCommentViewController;
  v10 = [(RAPReportTableViewController *)&v15 initWithReport:a3 question:v9 completion:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_question, a4);
    v12 = [(RAPReportTableViewController *)v11 sendButtonItem];
    v13 = [(RAPReportComposerCommentViewController *)v11 navigationItem];
    [v13 setRightBarButtonItem:v12];
  }

  return v11;
}

@end