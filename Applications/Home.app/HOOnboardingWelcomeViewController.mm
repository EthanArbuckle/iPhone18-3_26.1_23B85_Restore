@interface HOOnboardingWelcomeViewController
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingWelcomeViewController)initWithDelegate:(id)a3;
- (void)_continue:(id)a3;
@end

@implementation HOOnboardingWelcomeViewController

- (HOOnboardingWelcomeViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = sub_100046640(@"HOWelcomeView_Title");
  v30.receiver = self;
  v30.super_class = HOOnboardingWelcomeViewController;
  v6 = [(HOOnboardingWelcomeViewController *)&v30 initWithTitle:v5 detailText:0 icon:0];

  if (v6)
  {
    v7 = [UIImage imageNamed:@"HomeWelcomeIcon_Control"];
    v8 = [v7 imageWithRenderingMode:2];

    v9 = +[UIColor systemOrangeColor];
    v10 = [v8 imageWithTintColor:v9];

    [v10 setAccessibilityIdentifier:@"HOOnboardingWelcomeViewController.homeOnboardingImage"];
    v11 = sub_100046640(@"HOWelcomeView_Subtitle_Control");
    v12 = sub_100046640(@"HOWelcomeView_Description_Control");
    [(HOOnboardingWelcomeViewController *)v6 addBulletedListItemWithTitle:v11 description:v12 image:v10];

    v13 = sub_100046640(@"HOWelcomeView_Subtitle_Automate");
    v14 = sub_100046640(@"HOWelcomeView_Description_Automate");
    v15 = [UIImage imageNamed:@"HomeWelcomeIcon_Automation"];
    [(HOOnboardingWelcomeViewController *)v6 addBulletedListItemWithTitle:v13 description:v14 image:v15];

    v16 = sub_100046640(@"HOWelcomeView_Subtitle_Share");
    v17 = sub_100046640(@"HOWelcomeView_Description_Share");
    v18 = [UIImage imageNamed:@"HomeWelcomeIcon_Share"];
    [(HOOnboardingWelcomeViewController *)v6 addBulletedListItemWithTitle:v16 description:v17 image:v18];

    v19 = sub_100046640(@"HOWelcomeView_Subtitle_ActivityHistory");
    v20 = sub_100046640(@"HOWelcomeView_Description_ActivityHistory");
    v21 = [UIImage imageNamed:@"HomeWelcomIcon_ActivityHistory"];
    [(HOOnboardingWelcomeViewController *)v6 addBulletedListItemWithTitle:v19 description:v20 image:v21];

    if ((+[HFUtilities isAMac](HFUtilities, "isAMac") & 1) != 0 || +[HFUtilities isAVisionPro])
    {
      v22 = [(HOOnboardingWelcomeViewController *)v6 buttonTray];
      v23 = sub_100046640(@"HOWelcomeView_FinePrint_AddAccessories");
      [v22 addCaptionText:v23];
    }

    v24 = +[OBBoldTrayButton boldButton];
    continueButton = v6->_continueButton;
    v6->_continueButton = v24;

    [(OBTrayButton *)v6->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = v6->_continueButton;
    v27 = sub_100046640(@"HOWelcomeView_Button_Continue");
    [(OBTrayButton *)v26 setTitle:v27 forState:0];

    [(OBTrayButton *)v6->_continueButton addTarget:v6 action:"_continue:" forControlEvents:64];
    [(OBTrayButton *)v6->_continueButton setAccessibilityIdentifier:@"HOOnboardingWelcomeViewController.continueButton"];
    v28 = [(HOOnboardingWelcomeViewController *)v6 buttonTray];
    [v28 addButton:v6->_continueButton];

    [(HOOnboardingWelcomeViewController *)v6 setModalInPresentation:1];
    [(HOOnboardingWelcomeViewController *)v6 setDelegate:v4];
  }

  return v6;
}

- (void)_continue:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOOnboardingWelcomeViewController-_continue:] User tapped 'continue' button", v8, 2u);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 homeManager];
  [v6 hf_enableEventLogOnboardingFlag];

  v7 = [(HOOnboardingWelcomeViewController *)self delegate];
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