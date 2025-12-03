@interface COSTinkerPrivacySplashController
- (COSTinkerPrivacySplashController)init;
- (void)continueButtonPressed:(id)pressed;
- (void)learnMorePressed:(id)pressed;
- (void)miniFlowStepComplete:(id)complete;
- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class;
@end

@implementation COSTinkerPrivacySplashController

- (COSTinkerPrivacySplashController)init
{
  v16.receiver = self;
  v16.super_class = COSTinkerPrivacySplashController;
  v2 = [(COSTinkerPrivacySplashController *)&v16 init];
  if (v2)
  {
    v3 = [OBPrivacySplashController alloc];
    v4 = [v3 initWithPrivacyIdentifier:OBPrivacyPrivacyPaneIdentifier];
    splashController = v2->_splashController;
    v2->_splashController = v4;

    [(OBPrivacySplashController *)v2->_splashController setAllowsOpeningSafari:0];
    v6 = +[OBBoldTrayButton boldButton];
    [v6 addTarget:v2 action:"continueButtonPressed:" forControlEvents:64];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"PRIVACY_SPLASH_CONTINUE" value:&stru_10026E598 table:@"SetupFlowLocalizable-tinker"];
    [v6 setTitle:v8 forState:0];

    v9 = BPSPillSelectedColor();
    [v6 setTintColor:v9];

    buttonTray = [(OBPrivacySplashController *)v2->_splashController buttonTray];
    [buttonTray addButton:v6];

    v11 = +[OBLinkTrayButton linkButton];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"LEARN_MORE_PRIVACY_SPLASH" value:&stru_10026E598 table:@"SetupFlowLocalizable-tinker"];
    [v11 setTitle:v13 forState:0];

    [v11 addTarget:v2 action:"learnMorePressed:" forControlEvents:64];
    buttonTray2 = [(OBPrivacySplashController *)v2->_splashController buttonTray];
    [buttonTray2 addButton:v11];
  }

  return v2;
}

- (void)learnMorePressed:(id)pressed
{
  v6 = +[OBPrivacyPresenter presenterForPrivacyUnifiedAbout];
  viewController = [(COSTinkerPrivacySplashController *)self viewController];
  [v6 setPresentingViewController:viewController];

  combinedController = [v6 combinedController];
  [combinedController setPresentedFromPrivacyPane:1];

  [v6 present];
}

- (void)continueButtonPressed:(id)pressed
{
  delegate = [(COSTinkerPrivacySplashController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)complete
{
  delegate = [(COSTinkerPrivacySplashController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class
{
  v5 = objc_alloc_init(class);
  [v5 setMiniFlowDelegate:self];
  [(COSTinkerPrivacySplashController *)self pushController:v5 animated:1];
}

@end