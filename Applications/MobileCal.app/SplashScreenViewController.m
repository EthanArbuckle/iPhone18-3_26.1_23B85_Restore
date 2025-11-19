@interface SplashScreenViewController
- (SplashScreenViewController)init;
- (unint64_t)supportedInterfaceOrientations;
- (void)_continueButtonTappedCallback;
@end

@implementation SplashScreenViewController

- (SplashScreenViewController)init
{
  v3 = +[CUIKSplashScreenStrings title];
  v28.receiver = self;
  v28.super_class = SplashScreenViewController;
  v4 = [(SplashScreenViewController *)&v28 initWithTitle:v3 detailText:0 icon:0];

  if (v4)
  {
    [(SplashScreenViewController *)v4 setModalPresentationStyle:2];
    v5 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle1 scale:3];
    v6 = +[CUIKSplashScreenStrings reminderIntegrationTitle];
    v7 = +[CUIKSplashScreenStrings reminderIntegrationText];
    v8 = +[CUIKSplashScreenStrings reminderIntegrationIcon];
    v9 = [UIImage systemImageNamed:v8 withConfiguration:v5];
    [(SplashScreenViewController *)v4 addBulletedListItemWithTitle:v6 description:v7 image:v9];

    v10 = +[UIDevice currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (!v11)
    {
      v12 = +[CUIKSplashScreenStrings monthViewScaleTitle];
      v13 = +[CUIKSplashScreenStrings monthViewScaleText];
      v14 = +[CUIKSplashScreenStrings monthViewScaleIcon];
      v15 = [UIImage systemImageNamed:v14 withConfiguration:v5];
      [(SplashScreenViewController *)v4 addBulletedListItemWithTitle:v12 description:v13 image:v15];
    }

    if ((+[EKFeatureSet eventsFoundInAppsEnabled]& 1) == 0)
    {
      v16 = +[CUIKSplashScreenStrings suggestedEventsTitleText];
      v17 = +[CUIKSplashScreenStrings suggestedEventsFeatureText];
      v18 = +[CUIKSplashScreenStrings suggestedEventsIcon];
      v19 = [UIImage systemImageNamed:v18 withConfiguration:v5];
      [(SplashScreenViewController *)v4 addBulletedListItemWithTitle:v16 description:v17 image:v19];
    }

    if ((+[EKFeatureSet automaticGeocodingEnabled]& 1) == 0)
    {
      v20 = +[CUIKSplashScreenStrings timeToLeaveAndAutomaticGeocodingTitleText];
      v21 = +[CUIKSplashScreenStrings timeToLeaveAndAutomaticGeocodingFeatureText];
      v22 = +[CUIKSplashScreenStrings timeToLeaveAndAutomaticGeocodingIcon];
      v23 = [UIImage systemImageNamed:v22 withConfiguration:v5];
      [(SplashScreenViewController *)v4 addBulletedListItemWithTitle:v20 description:v21 image:v23];
    }

    v24 = +[OBBoldTrayButton boldButton];
    v25 = +[CUIKSplashScreenStrings continueButtonText];
    [v24 setTitle:v25 forState:0];

    [v24 addTarget:v4 action:"dismissSplashScreen" forControlEvents:64];
    v26 = [(SplashScreenViewController *)v4 buttonTray];
    [v26 addButton:v24];
  }

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(SplashScreenViewController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  Width = CGRectGetWidth(v20);
  EKUIWidthForWindowSizeParadigm();
  if ((Width >= v12 || (v21.origin.x = v4, v21.origin.y = v6, v21.size.width = v8, v21.size.height = v10, Height = CGRectGetHeight(v21), EKUIHeightForWindowSizeParadigm(), Height >= v14)) && ((v22.origin.x = v4, v22.origin.y = v6, v22.size.width = v8, v22.size.height = v10, v15 = CGRectGetWidth(v22), EKUIWidthForWindowSizeParadigm(), v15 >= v16) || (v23.origin.x = v4, v23.origin.y = v6, v23.size.width = v8, v23.size.height = v10, v17 = CGRectGetHeight(v23), EKUIHeightForWindowSizeParadigm(), v17 >= v18)))
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_continueButtonTappedCallback
{
  dispatch_async(&_dispatch_main_q, &stru_10020F178);
  v3 = [(SplashScreenViewController *)self doneBlock];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
    [(SplashScreenViewController *)self setDoneBlock:0];
  }

  else
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No 'done' blocked given.  Will not notify that [%@] is done.", &v6, 0xCu);
    }
  }
}

@end