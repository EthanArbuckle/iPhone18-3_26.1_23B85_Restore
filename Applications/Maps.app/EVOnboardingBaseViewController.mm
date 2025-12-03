@interface EVOnboardingBaseViewController
- (EVOnboardingBaseViewController)initWithDelegate:(id)delegate;
- (OBBaseWelcomeController)obViewController;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EVOnboardingBaseViewController

- (OBBaseWelcomeController)obViewController
{
  [(EVOnboardingBaseViewController *)self doesNotRecognizeSelector:a2];
  obViewController = self->_obViewController;

  return obViewController;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = EVOnboardingBaseViewController;
  [(EVOnboardingBaseViewController *)&v8 viewWillDisappear:disappear];
  traitCollection = [(EVOnboardingBaseViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 setLockedOrientations:0];
  }

  if ([(EVOnboardingBaseViewController *)self isMovingFromParentViewController])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained onboardingViewControllerWillMoveFromParentViewController:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = EVOnboardingBaseViewController;
  [(EVOnboardingBaseViewController *)&v9 viewWillAppear:?];
  traitCollection = [(EVOnboardingBaseViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v7 = +[UIApplication sharedMapsDelegate];
    [v7 setLockedOrientations:2];

    v8 = +[UIDevice currentDevice];
    [v8 setOrientation:1 animated:appearCopy];
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = EVOnboardingBaseViewController;
  [(EVOnboardingBaseViewController *)&v12 viewDidLoad];
  obViewController = [(EVOnboardingBaseViewController *)self obViewController];
  [(EVOnboardingBaseViewController *)self addChildViewController:obViewController];
  view = [(EVOnboardingBaseViewController *)self view];
  view2 = [obViewController view];
  [view addSubview:view2];

  [obViewController didMoveToParentViewController:self];
  view3 = [obViewController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [obViewController view];
  view5 = [(EVOnboardingBaseViewController *)self view];
  LODWORD(v9) = 1148846080;
  v10 = [view4 _maps_constraintsEqualToEdgesOfView:view5 priority:v9];
  allConstraints = [v10 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (EVOnboardingBaseViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = EVOnboardingBaseViewController;
  v5 = [(EVOnboardingBaseViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end