@interface RAPReportViewController
- (RAPReportViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (RAPUserInfoPart)userInfoPart;
- (void)_send;
@end

@implementation RAPReportViewController

- (RAPUserInfoPart)userInfoPart
{
  userInfoPart = self->_userInfoPart;
  if (!userInfoPart)
  {
    v4 = objc_alloc_init(RAPUserInfoPart);
    v5 = self->_userInfoPart;
    self->_userInfoPart = v4;

    userInfoPart = self->_userInfoPart;
  }

  return userInfoPart;
}

- (void)_send
{
  view = [(RAPReportViewController *)self view];
  [view endEditing:1];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D89F50;
  v4[3] = &unk_101653830;
  v4[4] = self;
  [RAPPrivacy performPrivacyCheckWithAppearance:1 completion:v4];
}

- (RAPReportViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  reportCopy = report;
  questionCopy = question;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = RAPReportViewController;
  v11 = [(RAPReportViewController *)&v16 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = [[RAPReportViewControllerDelegate alloc] initWithReport:reportCopy completion:completionCopy delegate:v11];
    rapDelegate = v11->_rapDelegate;
    v11->_rapDelegate = v12;

    if (questionCopy)
    {
      [questionCopy localizedTitle];
    }

    else
    {
      +[RAPQuestion RAPTitle];
    }
    v14 = ;
    [(RAPReportViewController *)v11 setTitle:v14];
  }

  return v11;
}

@end