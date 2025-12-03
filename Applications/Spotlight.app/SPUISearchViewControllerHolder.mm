@interface SPUISearchViewControllerHolder
+ (id)sharedInstance;
- (CALayer)searchProtectorLayer;
- (SPUISearchViewControllerHolder)init;
- (UIViewController)rootViewController;
@end

@implementation SPUISearchViewControllerHolder

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002380;
  block[3] = &unk_10000C4D8;
  block[4] = self;
  if (qword_100011F28 != -1)
  {
    dispatch_once(&qword_100011F28, block);
  }

  v2 = qword_100011F20;

  return v2;
}

- (SPUISearchViewControllerHolder)init
{
  v10.receiver = self;
  v10.super_class = SPUISearchViewControllerHolder;
  v2 = [(SPUISearchViewControllerHolder *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SPUISearchViewControllerHolder *)v2 setSearchViewController:v3];

    v4 = [SPUINavigationController alloc];
    searchViewController = [(SPUISearchViewControllerHolder *)v2 searchViewController];
    v6 = [v4 initWithSearchViewController:searchViewController];

    [(SPUISearchViewControllerHolder *)v2 setNavigationController:v6];
    if (+[SPUIDefaults enableFloatingWindow])
    {
      v7 = [[SPUIPlatterContainerViewController alloc] initWithNavigationController:v6];
      [(SPUISearchViewControllerHolder *)v2 setPlatterViewController:v7];
    }

    if (+[SPUIDefaults bottomSearchFieldEnabled])
    {
      v8 = [[SPUIUnifiedFieldViewController alloc] initWithNavigationController:v6];
      [(SPUISearchViewControllerHolder *)v2 setUnifiedFieldController:v8];
    }
  }

  return v2;
}

- (UIViewController)rootViewController
{
  if (+[SPUIDefaults bottomSearchFieldEnabled])
  {
    unifiedFieldController = [(SPUISearchViewControllerHolder *)self unifiedFieldController];
  }

  else
  {
    if ((+[SPUIDefaults enableFloatingWindow]& 1) != 0)
    {
      [(SPUISearchViewControllerHolder *)self platterViewController];
    }

    else
    {
      [(SPUISearchViewControllerHolder *)self navigationController];
    }
    unifiedFieldController = ;
  }

  return unifiedFieldController;
}

- (CALayer)searchProtectorLayer
{
  unifiedFieldController = [(SPUISearchViewControllerHolder *)self unifiedFieldController];
  searchProtectorLayer = [unifiedFieldController searchProtectorLayer];

  return searchProtectorLayer;
}

@end