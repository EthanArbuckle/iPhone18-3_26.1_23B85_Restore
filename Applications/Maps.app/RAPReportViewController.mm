@interface RAPReportViewController
- (RAPReportViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
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
  v3 = [(RAPReportViewController *)self view];
  [v3 endEditing:1];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D89F50;
  v4[3] = &unk_101653830;
  v4[4] = self;
  [RAPPrivacy performPrivacyCheckWithAppearance:1 completion:v4];
}

- (RAPReportViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = RAPReportViewController;
  v11 = [(RAPReportViewController *)&v16 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = [[RAPReportViewControllerDelegate alloc] initWithReport:v8 completion:v10 delegate:v11];
    rapDelegate = v11->_rapDelegate;
    v11->_rapDelegate = v12;

    if (v9)
    {
      [v9 localizedTitle];
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