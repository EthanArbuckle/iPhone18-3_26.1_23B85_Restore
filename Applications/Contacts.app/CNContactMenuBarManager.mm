@interface CNContactMenuBarManager
+ (id)sharedInstance;
- (CNContactMenuBarManager)init;
- (void)setNavigationViewControllerAndBuildMenu:(id)menu;
@end

@implementation CNContactMenuBarManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026B0;
  block[3] = &unk_1000205A0;
  block[4] = self;
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
  selfCopy = self;
  v2 = qword_100029298;
  selfCopy2 = self;
  if (v2 != -1)
  {
    dispatch_once(&qword_100029298, block);
  }

  v4 = qword_1000292A0;

  return v4;
}

- (void)setNavigationViewControllerAndBuildMenu:(id)menu
{
  objc_storeStrong(&self->_navigationViewController, menu);
  menuCopy = menu;
  v5 = +[UIMenuSystem mainSystem];

  [v5 setNeedsRebuild];
}

@end