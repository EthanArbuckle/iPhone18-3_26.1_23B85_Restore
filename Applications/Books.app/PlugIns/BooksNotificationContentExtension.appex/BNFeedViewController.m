@interface BNFeedViewController
- (BNFeedViewControllerDelegate)notificationDelegate;
- (CGSize)_windowSize;
- (void)feedViewController:(id)a3 willTransitionToContentHeight:(double)a4;
@end

@implementation BNFeedViewController

- (void)feedViewController:(id)a3 willTransitionToContentHeight:(double)a4
{
  v7.receiver = self;
  v7.super_class = BNFeedViewController;
  [(BNFeedViewController *)&v7 feedViewController:a3 willTransitionToContentHeight:?];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000021FC;
  v6[3] = &unk_100008490;
  v6[4] = self;
  *&v6[5] = a4;
  dispatch_async(&_dispatch_main_q, v6);
}

- (CGSize)_windowSize
{
  v2 = +[BNJSAWindowProvider sharedInstance];
  v3 = [v2 window];

  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BNFeedViewControllerDelegate)notificationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationDelegate);

  return WeakRetained;
}

@end