@interface FRArticleNotificationViewController
- (CGSize)articlePreferredSize;
- (FRArticleNotificationArticleSource)articleSource;
- (void)didReceiveNotification:(id)a3;
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

  v4 = [(FRArticleNotificationViewController *)self articleViewController];
  v5 = [v4 view];
  [v5 setAutoresizingMask:18];

  v6 = [(FRArticleNotificationViewController *)self view];
  [v6 bounds];
  Width = CGRectGetWidth(v18);
  v8 = [(FRArticleNotificationViewController *)self view];
  [v8 bounds];
  Height = CGRectGetHeight(v19);
  v10 = [(FRArticleNotificationViewController *)self articleViewController];
  v11 = [v10 view];
  [v11 setFrame:{0.0, 0.0, Width, Height}];

  v12 = [(FRArticleNotificationViewController *)self articleViewController];
  [(FRArticleNotificationViewController *)self addChildViewController:v12];

  v13 = [(FRArticleNotificationViewController *)self view];
  v14 = [(FRArticleNotificationViewController *)self articleViewController];
  v15 = [v14 view];
  [v13 addSubview:v15];

  v16 = [(FRArticleNotificationViewController *)self articleViewController];
  [v16 didMoveToParentViewController:self];
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

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = [v4 request];
  v9 = [v8 content];
  v10 = [v9 attachments];
  v11 = [v10 count];

  v12 = [v7 objectForKeyedSubscript:FCNotificationPayloadNewsKey];
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
    [NSSArticleInternal articleFromNotification:v4 completion:v19];
    v14 = &v20;
  }

  else
  {
    v15 = [(FRArticleNotificationViewController *)self articleSource];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002508;
    v16[3] = &unk_100008380;
    objc_copyWeak(&v18, &location);
    v17 = v4;
    [v15 fetchArticleWithID:v13 completion:v16];

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