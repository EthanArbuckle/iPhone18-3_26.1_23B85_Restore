@interface PHSettingsCloudCallingListController
- (void)appendAboutWiFiCallingFooterToGroupSpecifier:(id)a3;
- (void)presentOrUpdateViewController:(id)a3;
- (void)presentPrivacySplashController;
@end

@implementation PHSettingsCloudCallingListController

- (void)presentOrUpdateViewController:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Asked to present or update view controller: %@", buf, 0xCu);
  }

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_40D8;
  v14 = &unk_C618;
  v15 = v4;
  v16 = self;
  v6 = v4;
  v7 = objc_retainBlock(&v11);
  v8 = [(PHSettingsCloudCallingListController *)self presentedViewController:v11];

  if (v8)
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PHSettingsCloudCallingListController *)self presentedViewController];
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "A view controller is already being presented: %@. Dismissing it and presenting the new one", buf, 0xCu);
    }

    [(PHSettingsCloudCallingListController *)self dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    (v7[2])(v7);
  }
}

- (void)appendAboutWiFiCallingFooterToGroupSpecifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = v4;
    v5 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.cloudcalling"];
    v6 = [v5 flow];
    v7 = [v6 localizedButtonTitle];

    v8 = [v16 propertyForKey:PSFooterTextGroupKey];
    if (v8)
    {
      [NSString stringWithFormat:@"%@ %@", v8, v7];
    }

    else
    {
      [NSString stringWithFormat:@"%@", v7, v15];
    }
    v9 = ;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v16 setProperty:v11 forKey:PSFooterCellClassGroupKey];

    [v16 setProperty:v9 forKey:PSFooterHyperlinkViewTitleKey];
    v18.location = [v9 rangeOfString:v7];
    v12 = NSStringFromRange(v18);
    [v16 setProperty:v12 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v13 = [NSValue valueWithNonretainedObject:self];
    [v16 setProperty:v13 forKey:PSFooterHyperlinkViewTargetKey];

    v14 = NSStringFromSelector("presentPrivacySplashController");
    [v16 setProperty:v14 forKey:PSFooterHyperlinkViewActionKey];

    v4 = v16;
  }
}

- (void)presentPrivacySplashController
{
  v6 = [OBPrivacySplashController splashPageWithBundleIdentifier:@"com.apple.onboarding.cloudcalling"];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"privacySplashControllerDidRequestDismissal:"];
  v4 = [v6 navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [[UINavigationController alloc] initWithRootViewController:v6];
  [v5 setModalPresentationStyle:2];
  [(PHSettingsCloudCallingListController *)self presentViewController:v5 animated:1 completion:0];
}

@end