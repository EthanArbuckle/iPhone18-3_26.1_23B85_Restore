@interface MapsWelcomeScreenViewController
+ (BOOL)hasDisplayedCurrentWelcomeScreen;
+ (id)welcomeControllerWithConfiguration:(id)a3 block:(id)a4;
+ (void)_markWelcomeScreenAsDisplayed;
+ (void)presentWelcomeScreenIfNecessaryInScene:(id)a3 completionBlock:(id)a4;
@end

@implementation MapsWelcomeScreenViewController

+ (id)welcomeControllerWithConfiguration:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [OBWelcomeController alloc];
  v28 = v5;
  v8 = [v5 title];
  v9 = [v7 initWithTitle:v8 detailText:0 icon:0];

  [v9 setModalPresentationStyle:2];
  v10 = +[OBBoldTrayButton boldButton];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"[Welcome Screen] Continue" value:@"localized string not found" table:0];
  [v10 setTitle:v12 forState:0];

  objc_initWeak(&location, v9);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1005AE4A4;
  v33[3] = &unk_101622998;
  objc_copyWeak(&v35, &location);
  v27 = v6;
  v34 = v27;
  v13 = [UIAction actionWithHandler:v33];
  [v10 addAction:v13 forControlEvents:0x2000];

  v14 = [v9 buttonTray];
  [v14 addButton:v10];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = [v5 bullets];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v16)
  {
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = [v19 title];
        v21 = [v19 body];
        v22 = [v19 image];
        v23 = [v19 tintColor];
        [v9 addBulletedListItemWithTitle:v20 description:v21 image:v22 tintColor:v23];
      }

      v16 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v16);
  }

  v24 = [v9 buttonTray];
  v37 = @"com.apple.onboarding.maps";
  v25 = [NSArray arrayWithObjects:&v37 count:1];
  [v24 setPrivacyLinkForBundles:v25];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  return v9;
}

+ (void)presentWelcomeScreenIfNecessaryInScene:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([UIApp launchedToTest])
  {
    goto LABEL_6;
  }

  v8 = +[UMUserManager sharedManager];
  if (([v8 isMultiUser] & 1) == 0 && (objc_msgSend(a1, "hasDisplayedCurrentWelcomeScreen") & 1) == 0 && !GEOConfigGetBOOL())
  {
    BOOL = GEOConfigGetBOOL();

    if (BOOL)
    {
      goto LABEL_6;
    }

    v11 = [v6 delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      if (byte_10195CAE8 != 1)
      {
        v17 = +[GEOCountryConfiguration sharedConfiguration];
        v18 = [v17 countryCode];

        v19 = [WelcomeScreenConfiguration configurationForCountryCode:v18];
        v20 = [v19 bullets];
        v21 = [v20 count];

        v22 = sub_100005610();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
        if (v21)
        {
          if (v23)
          {
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "MapsWelcomeScreen: presenting alert", v26, 2u);
          }

          v24 = [MapsWelcomeScreenViewController welcomeControllerWithConfiguration:v19 block:v7];
          v25 = [v13 chromeViewController];
          [v24 setModalPresentationStyle:2];
          [v24 setModalInPresentation:1];
          [v25 _maps_topMostPresentViewController:v24 animated:1 completion:0];
          byte_10195CAE8 = 1;
        }

        else
        {
          if (v23)
          {
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "MapsWelcomeScreen: no bullets to show for current country/platform/FF configuration", v27, 2u);
          }

          +[MapsWelcomeScreenViewController _markWelcomeScreenAsDisplayed];
          v7[2](v7);
        }

        goto LABEL_32;
      }

      v14 = sub_100005610();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v28 = 0;
        v15 = "MapsWelcomeScreen: is currently being presented";
        v16 = &v28;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v15, v16, 2u);
      }
    }

    else
    {
      v14 = sub_100005610();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v29 = 0;
        v15 = "MapsWelcomeScreen: not valid scene for display";
        v16 = v29;
        goto LABEL_22;
      }
    }

    v7[2](v7);
LABEL_32:

    goto LABEL_11;
  }

LABEL_6:
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "MapsWelcomeScreen: no need to be displayed", buf, 2u);
  }

  if (GEOConfigGetBOOL())
  {
    +[MapsWelcomeScreenViewController _markWelcomeScreenAsDisplayed];
  }

  v7[2](v7);
LABEL_11:
}

+ (void)_markWelcomeScreenAsDisplayed
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setInteger:4 forKey:@"kMapsWelcomeScreenKey"];
}

+ (BOOL)hasDisplayedCurrentWelcomeScreen
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"kMapsWelcomeScreenKey"];

  return v3 > 3;
}

@end