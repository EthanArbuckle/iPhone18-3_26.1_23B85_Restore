@interface FRArticleNotificationViewController
- (CGSize)articlePreferredSize;
- (FRArticleNotificationArticleSource)articleSource;
- (void)didReceiveNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation FRArticleNotificationViewController

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = FRArticleNotificationViewController;
  [(FRArticleNotificationViewController *)&v17 viewDidLoad];
  v3 = [[NSSArticleViewControllerInternal alloc] initWithNibName:0 bundle:0];
  [(FRArticleNotificationViewController *)self setArticleViewController:v3];

  articleViewController = [(FRArticleNotificationViewController *)self articleViewController];
  view = [articleViewController view];
  [view setAutoresizingMask:18];

  view2 = [(FRArticleNotificationViewController *)self view];
  [view2 bounds];
  Width = CGRectGetWidth(v18);
  view3 = [(FRArticleNotificationViewController *)self view];
  [view3 bounds];
  Height = CGRectGetHeight(v19);
  articleViewController2 = [(FRArticleNotificationViewController *)self articleViewController];
  view4 = [articleViewController2 view];
  [view4 setFrame:{0.0, 0.0, Width, Height}];

  articleViewController3 = [(FRArticleNotificationViewController *)self articleViewController];
  [(FRArticleNotificationViewController *)self addChildViewController:articleViewController3];

  view5 = [(FRArticleNotificationViewController *)self view];
  articleViewController4 = [(FRArticleNotificationViewController *)self articleViewController];
  view6 = [articleViewController4 view];
  [view5 addSubview:view6];

  articleViewController5 = [(FRArticleNotificationViewController *)self articleViewController];
  [articleViewController5 didMoveToParentViewController:self];
}

- (FRArticleNotificationArticleSource)articleSource
{
  articleSource = self->_articleSource;
  if (!articleSource)
  {
    v4 = FCURLForContainerizedUserAccountCachesDirectory();
    v5 = [[FRArticleNotificationArticleSource alloc] initWithCachesDirectory:v4];
    v6 = self->_articleSource;
    self->_articleSource = v5;

    articleSource = self->_articleSource;
  }

  return articleSource;
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];

  request2 = [notificationCopy request];
  content2 = [request2 content];
  attachments = [content2 attachments];
  v11 = [attachments count];

  v12 = [userInfo objectForKeyedSubscript:FCNotificationPayloadNewsKey];
  v13 = [v12 objectForKeyedSubscript:FCNotificationPayloadArticleIDKey];
  [(FRArticleNotificationViewController *)self setArticleID:v13];
  objc_initWeak(&location, self);
  if (v11)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100002404;
    v19[3] = &unk_100008358;
    objc_copyWeak(&v20, &location);
    [NSSArticleInternal articleFromNotification:notificationCopy completion:v19];
    v14 = &v20;
  }

  else
  {
    articleSource = [(FRArticleNotificationViewController *)self articleSource];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002508;
    v16[3] = &unk_100008380;
    objc_copyWeak(&v18, &location);
    v17 = notificationCopy;
    [articleSource fetchArticleWithID:v13 completion:v16];

    v14 = &v18;
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (CGSize)articlePreferredSize
{
  width = self->_articlePreferredSize.width;
  height = self->_articlePreferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end