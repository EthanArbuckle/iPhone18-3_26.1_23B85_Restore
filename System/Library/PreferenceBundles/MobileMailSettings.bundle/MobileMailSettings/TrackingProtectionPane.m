@interface TrackingProtectionPane
- (id)_detailedSettingsWithOptions:(unint64_t)a3;
- (id)_loadRemoteContentSpecifier;
- (id)_preventTrackingSpecifiersWithOptions:(unint64_t)a3;
- (id)readPreferenceValue:(id)a3;
- (id)specifiers;
- (void)_mailPrivacyProtectionLearnMoreLinkTapped:(id)a3;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation TrackingProtectionPane

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TrackingProtectionPane;
  [(TrackingProtectionPane *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TRACKING_PROTECTION" value:&stru_3D2B0 table:@"Preferences"];
  [(TrackingProtectionPane *)self setTitle:v4];
}

- (id)readPreferenceValue:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults em_userDefaults];
  v5 = [v4 integerForKey:EMUserDefaultLoadRemoteContentKey];

  v6 = [v3 identifier];
  v7 = [v6 isEqualToString:@"justSayNoToTracking"];

  if (v7)
  {
    v8 = (v5 & 8) == 0;
    goto LABEL_5;
  }

  v9 = [v3 identifier];
  v10 = [v9 isEqualToString:@"justALittleTrackingPlease"];

  if (v10)
  {
    v8 = (v5 & 4) == 0;
LABEL_5:
    v11 = v8;
    goto LABEL_11;
  }

  v12 = [v3 identifier];
  v13 = [v12 isEqualToString:@"blockRemoteContent"];

  if (v13)
  {
    v11 = (v5 >> 1) & 1;
  }

  else
  {
    v11 = 1;
  }

LABEL_11:
  v14 = [NSNumber numberWithBool:v11];

  return v14;
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = +[NSUserDefaults em_userDefaults];
    v9 = EMUserDefaultLoadRemoteContentKey;
    v10 = [v8 integerForKey:EMUserDefaultLoadRemoteContentKey];
    v11 = [v6 BOOLValue];
    v12 = [v7 identifier];
    v13 = [v12 isEqualToString:@"justSayNoToTracking"];

    if (v13)
    {
      v14 = v10 | 8;
      if (v11)
      {
        v14 = 0;
      }
    }

    else
    {
      v15 = [v7 identifier];
      v16 = [v15 isEqualToString:@"justALittleTrackingPlease"];

      if (v16)
      {
        v14 = v10 | 4;
        if (v11)
        {
          v14 = v10 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      else
      {
        v17 = [v7 identifier];
        v18 = [v17 isEqualToString:@"blockRemoteContent"];

        v14 = v10 & 0xFFFFFFFFFFFFFFFDLL;
        if (v11)
        {
          v14 = v10 | 2;
        }

        if (!v18)
        {
          v14 = v10;
        }
      }
    }

    if ((v14 | 1) != v10)
    {
      [v8 setInteger:v14 | 1 forKey:v9];
      v19 = +[MFNanoBridgeSettingsManager sharedInstance];
      [v19 notifyMobileMailLoadRemoteImagesChanged];

      v20 = +[MFNanoBridgeSettingsManager sharedInstance];
      [v20 notifyMobileMailPrivacyProtectionChanged];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1F508;
      block[3] = &unk_3D030;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = +[NSUserDefaults em_userDefaults];
    v5 = [v4 integerForKey:EMUserDefaultLoadRemoteContentKey];

    v6 = +[MCProfileConnection sharedConnection];
    v7 = [v6 isMailPrivacyProtectionAllowed];

    if (v7)
    {
      v8 = [(TrackingProtectionPane *)self _preventTrackingSpecifiersWithOptions:v5];
      v17[0] = v8;
      v9 = [(TrackingProtectionPane *)self _detailedSettingsWithOptions:v5];
      v17[1] = v9;
      v10 = [NSArray arrayWithObjects:v17 count:2];
      v11 = [v10 ef_flatten];
      v12 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = v11;
    }

    else
    {
      v8 = [(TrackingProtectionPane *)self _loadRemoteContentSpecifier];
      v16 = v8;
      v13 = [NSArray arrayWithObjects:&v16 count:1];
      v9 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = v13;
    }
  }

  v14 = *&self->PSListController_opaque[v3];

  return v14;
}

- (id)_preventTrackingSpecifiersWithOptions:(unint64_t)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PROTECT_FROM_TRACKING" value:&stru_3D2B0 table:@"Preferences"];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v6 setIdentifier:@"justSayNoToTracking"];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TRACKING_PROTECTION_LEARN_MORE" value:&stru_3D2B0 table:@"Preferences"];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"TRACKING_PROTECTION_EXPLANATION" value:&stru_3D2B0 table:@"Preferences"];
  v11 = [NSString localizedStringWithFormat:v10, v8];

  v12 = [PSSpecifier groupSpecifierWithID:@"TRACKING_PROTECTION_EXPLANATION_FOOTER"];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 setObject:v14 forKeyedSubscript:PSFooterCellClassGroupKey];

  [v12 setObject:v11 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
  v21.location = [v11 rangeOfString:v8];
  v15 = NSStringFromRange(v21);
  [v12 setObject:v15 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

  v16 = [NSValue valueWithNonretainedObject:self];
  [v12 setObject:v16 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

  [v12 setObject:@"_mailPrivacyProtectionLearnMoreLinkTapped:" forKeyedSubscript:PSFooterHyperlinkViewActionKey];
  v19[0] = v12;
  v19[1] = v6;
  v17 = [NSArray arrayWithObjects:v19 count:2];

  return v17;
}

- (void)_mailPrivacyProtectionLearnMoreLinkTapped:(id)a3
{
  v4 = [OBTextWelcomeController alloc];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TRACKING_PROTECTION_PRIVACY_TITLE" value:&stru_3D2B0 table:@"Preferences"];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TRACKING_PROTECTION_PRIVACY_TEXT" value:&stru_3D2B0 table:@"Preferences"];
  v9 = [v4 initWithTitle:v6 detailText:v8 symbolName:0];

  objc_initWeak(&location, v9);
  v10 = [UIBarButtonItem alloc];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1FCFC;
  v18 = &unk_3D058;
  objc_copyWeak(&v19, &location);
  v11 = [UIAction actionWithHandler:&v15];
  v12 = [v10 initWithBarButtonSystemItem:0 primaryAction:{v11, v15, v16, v17, v18}];
  v13 = [v9 navigationItem];
  [v13 setRightBarButtonItem:v12];

  v14 = [[UINavigationController alloc] initWithRootViewController:v9];
  [(TrackingProtectionPane *)self presentViewController:v14 animated:1 completion:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (id)_detailedSettingsWithOptions:(unint64_t)a3
{
  if ((a3 & 8) != 0)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"HIDE_IP_ADDRESS" value:&stru_3D2B0 table:@"Preferences"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

    [v7 setIdentifier:@"justALittleTrackingPlease"];
    [v7 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    v8 = [PSSpecifier groupSpecifierWithID:0];
    v11[0] = v8;
    v11[1] = v7;
    v9 = [(TrackingProtectionPane *)self _loadRemoteContentSpecifier];
    v11[2] = v9;
    v3 = [NSArray arrayWithObjects:v11 count:3];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (id)_loadRemoteContentSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"BLOCK_REMOTE_CONTENT" value:&stru_3D2B0 table:@"Preferences"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v5 setIdentifier:@"blockRemoteContent"];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

  return v5;
}

@end