@interface FBARootSplitViewController
+ (BOOL)presentsAuthKitUIModally;
- (FBARootSplitViewController)initWithCoder:(id)a3;
- (id)topMostController;
- (void)clearBlockingUI;
- (void)createAndShowNonParticipantView;
- (void)dealloc;
- (void)displayLoginSplash;
- (void)displayNonParticipant;
- (void)drainAndPresentConsentsWithCompletion:(id)a3;
- (void)performSegueWithIdentifier:(id)a3 sender:(id)a4;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)presentConnectionErrorUI;
- (void)presentStartupUI:(unint64_t)a3;
- (void)presentVersionOutdatedUI;
- (void)signOutHandler;
- (void)unwindToNonParticipant:(id)a3;
- (void)unwindToOutdatedVersion:(id)a3;
- (void)viewDidLoad;
@end

@implementation FBARootSplitViewController

- (FBARootSplitViewController)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = FBARootSplitViewController;
  v3 = [(FBARootSplitViewController *)&v8 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v3->_pendingStartupUI = 0;
    performOnAppear = v3->_performOnAppear;
    v3->_performOnAppear = 0;

    presentedSegueName = v4->_presentedSegueName;
    v4->_presentedSegueName = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = FBARootSplitViewController;
  [(FBARootSplitViewController *)&v9 viewDidLoad];
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 environment];
  v5 = [v4 objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (!v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"displayLoginSplash" name:FBKUserIsLoggingOutNotification object:0];

    v7 = +[FBKData sharedInstance];
    v8 = [v7 notificationCenter];
    [v8 addObserver:self selector:"displayNonParticipant" name:FBKUserNoProgramsNotification object:0];
  }
}

- (void)dealloc
{
  v3 = +[FBKData sharedInstance];
  v4 = [v3 notificationCenter];
  [v4 removeObserver:self];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = FBARootSplitViewController;
  [(FBARootSplitViewController *)&v6 dealloc];
}

- (void)performSegueWithIdentifier:(id)a3 sender:(id)a4
{
  v7.receiver = self;
  v7.super_class = FBARootSplitViewController;
  v6 = a3;
  [(FBARootSplitViewController *)&v7 performSegueWithIdentifier:v6 sender:a4];
  [(FBARootSplitViewController *)self setPresentedSegueName:v6, v7.receiver, v7.super_class];
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v8 = a3;
  v5 = [v8 identifier];
  v6 = [v5 isEqualToString:@"FBALoginFlowModalPresentation"];

  if (v6)
  {
    v7 = [v8 destinationViewController];
    [v7 setPendingUI:{-[FBARootSplitViewController pendingStartupUI](self, "pendingStartupUI")}];

    [(FBARootSplitViewController *)self setPendingStartupUI:0];
  }
}

- (void)clearBlockingUI
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BCFC;
  block[3] = &unk_1000DE430;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)displayLoginSplash
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BE14;
  block[3] = &unk_1000DE430;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)displayNonParticipant
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BED8;
  block[3] = &unk_1000DE430;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)presentConnectionErrorUI
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BF54;
  block[3] = &unk_1000DE430;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)presentVersionOutdatedUI
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C0F0;
  block[3] = &unk_1000DE430;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)presentStartupUI:(unint64_t)a3
{
  if ((a3 & 6) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001C298;
    v5[3] = &unk_1000DEFA8;
    v5[4] = self;
    v5[5] = a3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)unwindToOutdatedVersion:(id)a3
{
  v4 = a3;
  [(FBARootSplitViewController *)self setPresentedSegueName:0];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C518;
  v5[3] = &unk_1000DE708;
  objc_copyWeak(&v6, &location);
  [(FBARootSplitViewController *)self setPerformOnAppear:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)unwindToNonParticipant:(id)a3
{
  v4 = a3;
  [(FBARootSplitViewController *)self setPresentedSegueName:0];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C664;
  v5[3] = &unk_1000DE708;
  objc_copyWeak(&v6, &location);
  [(FBARootSplitViewController *)self setPerformOnAppear:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

+ (BOOL)presentsAuthKitUIModally
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 != 0;
}

- (id)topMostController
{
  v2 = self;
  v3 = [(FBARootSplitViewController *)v2 presentedViewController];

  if (v3)
  {
    do
    {
      v4 = [(FBARootSplitViewController *)v2 presentedViewController];

      v5 = [(FBARootSplitViewController *)v4 presentedViewController];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(FBARootSplitViewController *)v4 topViewController];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (void)createAndShowNonParticipantView
{
  v2 = self;
  sub_10006C010();
}

- (void)signOutHandler
{
  v3 = objc_opt_self();
  v6 = self;
  v4 = [v3 sharedInstance];
  v5 = [v4 loginManager];

  [v5 logOut];
  [objc_opt_self() deleteAllDraftDirectories];
  [(FBARootSplitViewController *)v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)drainAndPresentConsentsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10004BA3C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_10006C304(v7, v6);
  sub_10004BA44(v7);
}

@end