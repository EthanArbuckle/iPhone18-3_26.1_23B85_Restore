@interface RCUIViewControllerNoticationObserver
- (RCUIViewControllerNoticationObserver)init;
- (UIViewController)viewController;
@end

@implementation RCUIViewControllerNoticationObserver

- (RCUIViewControllerNoticationObserver)init
{
  v18.receiver = self;
  v18.super_class = RCUIViewControllerNoticationObserver;
  v2 = [(RCUIViewControllerNoticationObserver *)&v18 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    observations = v2->_observations;
    v2->_observations = v3;

    objc_initWeak(&location, v2);
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = v2->_observations;
    v7 = +[NSOperationQueue mainQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006DDC0;
    v15[3] = &unk_10028B460;
    objc_copyWeak(&v16, &location);
    v8 = [v5 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v7 usingBlock:v15];
    [(NSMutableArray *)v6 addObject:v8];

    v9 = v2->_observations;
    v10 = +[NSOperationQueue mainQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006DE18;
    v13[3] = &unk_10028B460;
    objc_copyWeak(&v14, &location);
    v11 = [v5 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v10 usingBlock:v13];
    [(NSMutableArray *)v9 addObject:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  return v2;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end