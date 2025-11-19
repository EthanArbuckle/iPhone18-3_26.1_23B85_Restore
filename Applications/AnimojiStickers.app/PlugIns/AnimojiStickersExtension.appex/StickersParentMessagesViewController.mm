@interface StickersParentMessagesViewController
- (BOOL)automaticallyDisplaysLandscapeRotationOverlay;
- (StickersMessagesViewController)childStickersMessagesViewController;
- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)a3;
- (id)landscapeOverlayMessage;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)requestExpandedPresentation;
- (void)viewDidLoad;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation StickersParentMessagesViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = StickersParentMessagesViewController;
  [(BaseMessagesViewController *)&v7 viewDidLoad];
  v3 = [(StickersParentMessagesViewController *)self defaultMessagesChildViewControllerForPresentationContext:[(StickersParentMessagesViewController *)self presentationContext]];
  [(StickersParentMessagesViewController *)self addChildViewController:v3];
  v4 = [v3 view];
  v5 = [(StickersParentMessagesViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];

  [v4 setAutoresizingMask:18];
  v6 = [(StickersParentMessagesViewController *)self view];
  [v6 addSubview:v4];

  [v3 didMoveToParentViewController:self];
  [(BaseMessagesViewController *)self setBaseMessagesViewController:v3];
}

- (void)requestExpandedPresentation
{
  [(StickersParentMessagesViewController *)self setWaitingOnPresentationStyleChange:1];
  [(StickersParentMessagesViewController *)self requestPresentationStyle:1];
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1000041D4;
  v12 = sub_100004200;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004208;
  v6[3] = &unk_10000C428;
  objc_copyWeak(&v7, &location);
  v6[4] = &v8;
  v3 = objc_retainBlock(v6);
  v4 = v9[5];
  v9[5] = v3;

  v5 = dispatch_time(0, 500000000);
  dispatch_after(v5, &_dispatch_main_q, v9[5]);
  objc_destroyWeak(&v7);
  _Block_object_dispose(&v8, 8);

  objc_destroyWeak(&location);
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = StickersParentMessagesViewController;
  [(BaseMessagesViewController *)&v6 willTransitionToPresentationStyle:?];
  v5 = [(StickersParentMessagesViewController *)self childStickersMessagesViewController];
  [v5 willTransitionToPresentationStyle:a3];
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = StickersParentMessagesViewController;
  [(BaseMessagesViewController *)&v6 didTransitionToPresentationStyle:?];
  v5 = [(StickersParentMessagesViewController *)self childStickersMessagesViewController];
  [v5 didTransitionToPresentationStyle:a3];

  [(StickersParentMessagesViewController *)self setWaitingOnPresentationStyleChange:0];
}

- (id)defaultMessagesChildViewControllerForPresentationContext:(unint64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[StickersView] Parent view default child requested", v6, 2u);
  }

  v4 = objc_alloc_init(StickersMessagesViewController);
  [(StickersParentMessagesViewController *)self setChildStickersMessagesViewController:v4];
  [(StickersMessagesViewController *)v4 setDelegate:self];

  return v4;
}

- (BOOL)automaticallyDisplaysLandscapeRotationOverlay
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    if ([v5 userInterfaceIdiom] == 5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(StickersParentMessagesViewController *)self childStickersMessagesViewController];
      v7 = [v6 editorViewController];
      if (v7)
      {
        v4 = 1;
      }

      else
      {
        v8 = +[AVTUIControllerPresentation pendingGlobalPresentation];
        v9 = [v8 modalMessagesController];
        v4 = v9 != 0;
      }
    }
  }

  return v4;
}

- (id)landscapeOverlayMessage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"sStickersLandscapeTrapMessage" value:&stru_10000C578 table:@"Localized"];

  return v3;
}

- (StickersMessagesViewController)childStickersMessagesViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_childStickersMessagesViewController);

  return WeakRetained;
}

@end