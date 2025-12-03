@interface FBARootSplitViewController
+ (BOOL)presentsAuthKitUIModally;
- (FBARootSplitViewController)initWithCoder:(id)coder;
- (id)topMostController;
- (void)clearBlockingUI;
- (void)createAndShowNonParticipantView;
- (void)dealloc;
- (void)displayLoginSplash;
- (void)displayNonParticipant;
- (void)drainAndPresentConsentsWithCompletion:(id)completion;
- (void)performSegueWithIdentifier:(id)identifier sender:(id)sender;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)presentConnectionErrorUI;
- (void)presentStartupUI:(unint64_t)i;
- (void)presentVersionOutdatedUI;
- (void)signOutHandler;
- (void)unwindToNonParticipant:(id)participant;
- (void)unwindToOutdatedVersion:(id)version;
- (void)viewDidLoad;
@end

@implementation FBARootSplitViewController

- (FBARootSplitViewController)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = FBARootSplitViewController;
  v3 = [(FBARootSplitViewController *)&v8 initWithCoder:coder];
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
  environment = [v3 environment];
  v5 = [environment objectForKeyedSubscript:@"FBK_UNIT_TEST"];

  if (!v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"displayLoginSplash" name:FBKUserIsLoggingOutNotification object:0];

    v7 = +[FBKData sharedInstance];
    notificationCenter = [v7 notificationCenter];
    [notificationCenter addObserver:self selector:"displayNonParticipant" name:FBKUserNoProgramsNotification object:0];
  }
}

- (void)dealloc
{
  v3 = +[FBKData sharedInstance];
  notificationCenter = [v3 notificationCenter];
  [notificationCenter removeObserver:self];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = FBARootSplitViewController;
  [(FBARootSplitViewController *)&v6 dealloc];
}

- (void)performSegueWithIdentifier:(id)identifier sender:(id)sender
{
  v7.receiver = self;
  v7.super_class = FBARootSplitViewController;
  identifierCopy = identifier;
  [(FBARootSplitViewController *)&v7 performSegueWithIdentifier:identifierCopy sender:sender];
  [(FBARootSplitViewController *)self setPresentedSegueName:identifierCopy, v7.receiver, v7.super_class];
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  identifier = [segueCopy identifier];
  v6 = [identifier isEqualToString:@"FBALoginFlowModalPresentation"];

  if (v6)
  {
    destinationViewController = [segueCopy destinationViewController];
    [destinationViewController setPendingUI:{-[FBARootSplitViewController pendingStartupUI](self, "pendingStartupUI")}];

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

- (void)presentStartupUI:(unint64_t)i
{
  if ((i & 6) != 0)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001C298;
    v5[3] = &unk_1000DEFA8;
    v5[4] = self;
    v5[5] = i;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)unwindToOutdatedVersion:(id)version
{
  versionCopy = version;
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

- (void)unwindToNonParticipant:(id)participant
{
  participantCopy = participant;
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
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  return userInterfaceIdiom != 0;
}

- (id)topMostController
{
  selfCopy = self;
  presentedViewController = [(FBARootSplitViewController *)selfCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [(FBARootSplitViewController *)selfCopy presentedViewController];

      v4PresentedViewController = [(FBARootSplitViewController *)presentedViewController2 presentedViewController];

      selfCopy = presentedViewController2;
    }

    while (v4PresentedViewController);
  }

  else
  {
    presentedViewController2 = selfCopy;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [(FBARootSplitViewController *)presentedViewController2 topViewController];
  }

  else
  {
    topViewController = presentedViewController2;
  }

  v7 = topViewController;

  return v7;
}

- (void)createAndShowNonParticipantView
{
  selfCopy = self;
  sub_10006C010();
}

- (void)signOutHandler
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedInstance = [v3 sharedInstance];
  loginManager = [sharedInstance loginManager];

  [loginManager logOut];
  [objc_opt_self() deleteAllDraftDirectories];
  [(FBARootSplitViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)drainAndPresentConsentsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_10006C304(v7, v6);
  sub_10004BA44(v7);
}

@end