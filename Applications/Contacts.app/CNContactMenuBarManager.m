@interface CNContactMenuBarManager
+ (id)sharedInstance;
- (CNContactMenuBarManager)init;
- (void)setNavigationViewControllerAndBuildMenu:(id)a3;
@end

@implementation CNContactMenuBarManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026B0;
  block[3] = &unk_1000205A0;
  block[4] = a1;
  if (qword_100029290 != -1)
  {
    dispatch_once(&qword_100029290, block);
  }

  v2 = qword_100029288;

  return v2;
}

- (CNContactMenuBarManager)init
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002840;
  block[3] = &unk_1000204D0;
  v7 = self;
  v2 = qword_100029298;
  v3 = self;
  if (v2 != -1)
  {
    dispatch_once(&qword_100029298, block);
  }

  v4 = qword_1000292A0;

  return v4;
}

- (void)setNavigationViewControllerAndBuildMenu:(id)a3
{
  objc_storeStrong(&self->_navigationViewController, a3);
  v4 = a3;
  v5 = +[UIMenuSystem mainSystem];

  [v5 setNeedsRebuild];
}

@end