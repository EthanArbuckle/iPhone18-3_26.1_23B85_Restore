@interface HOOnboardingNewFeaturesViewController
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingNewFeaturesViewController)initWithDelegate:(id)a3;
- (void)_continue:(id)a3;
- (void)nextButtonPressed;
@end

@implementation HOOnboardingNewFeaturesViewController

- (HOOnboardingNewFeaturesViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = sub_100023400(@"HONewFeaturesView_Title");
  v22.receiver = self;
  v22.super_class = HOOnboardingNewFeaturesViewController;
  v6 = [(HOOnboardingNewFeaturesViewController *)&v22 initWithTitle:v5 detailText:0 icon:0];

  if (v6)
  {
    v7 = sub_100023400(@"HONewFeaturesView_Subtitle_ControlCenter");
    v8 = sub_100023400(@"HONewFeaturesView_Description_ControlCenter");
    v9 = [UIImage imageNamed:@"NewFeatures_ControlCenter"];
    [(HOOnboardingNewFeaturesViewController *)v6 addBulletedListItemWithTitle:v7 description:v8 image:v9];

    v10 = sub_100023400(@"HONewFeaturesView_Subtitle_AccessoriesOnWatch");
    v11 = sub_100023400(@"HONewFeaturesView_Description_AccessoriesOnWatch");
    v12 = [UIImage imageNamed:@"NewFeatures_Watch"];
    [(HOOnboardingNewFeaturesViewController *)v6 addBulletedListItemWithTitle:v10 description:v11 image:v12];

    v13 = sub_100023400(@"HONewFeaturesView_Subtitle_RestrictedGuest");
    v14 = sub_100023400(@"HONewFeaturesView_Description_RestrictedGuest");
    v15 = [UIImage imageNamed:@"NewFeatures_RestrictedGuest"];
    [(HOOnboardingNewFeaturesViewController *)v6 addBulletedListItemWithTitle:v13 description:v14 image:v15];

    v16 = +[OBBoldTrayButton boldButton];
    continueButton = v6->_continueButton;
    v6->_continueButton = v16;

    [(OBTrayButton *)v6->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = v6->_continueButton;
    v19 = sub_100023400(@"HONewFeaturesView_Button_Continue");
    [(OBTrayButton *)v18 setTitle:v19 forState:0];

    [(OBTrayButton *)v6->_continueButton addTarget:v6 action:"_continue:" forControlEvents:64];
    v20 = [(HOOnboardingNewFeaturesViewController *)v6 buttonTray];
    [v20 addButton:v6->_continueButton];

    [(HOOnboardingNewFeaturesViewController *)v6 setModalInPresentation:1];
    [(HOOnboardingNewFeaturesViewController *)v6 setDelegate:v4];
  }

  return v6;
}

- (void)nextButtonPressed
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HOOnboardingNewFeaturesViewController.m" lineNumber:101 description:@"We aren't supposed to have a next button..."];
}

- (void)_continue:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOOnboardingNewFeaturesViewController-_continue] User tapped continue button", v8, 2u);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 homeManager];
  [v6 hf_enableEventLogOnboardingFlag];

  v7 = [(HOOnboardingNewFeaturesViewController *)self delegate];
  [v7 childViewControllerDidFinish:self];
}

- (HOOnboardingChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->navigationBarDelegate);

  return WeakRetained;
}

@end