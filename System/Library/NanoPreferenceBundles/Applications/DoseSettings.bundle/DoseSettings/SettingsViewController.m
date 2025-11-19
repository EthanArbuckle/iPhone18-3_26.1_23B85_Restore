@interface SettingsViewController
- (id)_enableMeasurementsSpecifier;
- (id)_loudEnvironmentSpecifier;
- (id)bundle;
- (id)getNoiseEnabled:(id)a3;
- (id)localizedPaneTitle;
- (id)notificationCoalescingTitles;
- (id)notificationCoalescingValue:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)preferredUserInterfaceStyle;
- (void)_environmentalAudioExposureAboutLinkTapped;
- (void)setNoiseEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setNotificationCoalescingValue:(id)a3 specifier:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SettingsViewController

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [(SettingsViewController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  if (v4 != v6)
  {

    [(SettingsViewController *)self reload];
  }
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MAIN_PANE_TITLE" value:&stru_C6C0 table:0];
  v5 = [v2 localizedStringForKey:@"MAIN_PANE_TITLE" value:v4 table:@"Noise"];

  return v5;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (int64_t)preferredUserInterfaceStyle
{
  v2 = +[HUNoiseSettings sharedInstance];
  if ([v2 onboardingCompleted])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [(SettingsViewController *)self localizedPaneTitle];
    [(SettingsViewController *)self setTitle:v6];

    v7 = [PSSpecifier groupSpecifierWithID:@"HEADER"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:PSHeaderCellClassGroupKey];

    v49 = v7;
    [v5 addObject:v7];
    v10 = [PSSpecifier groupSpecifierWithID:@"ENABLE_MEASUREMENTS_GROUP_ID"];
    v11 = +[HUNoiseSettings sharedInstance];
    v12 = [v11 environmentalMeasurementsFooterDescription];
    [v10 setObject:v12 forKeyedSubscript:PSFooterTextGroupKey];

    v13 = v5;
    v48 = v10;
    [v5 addObject:v10];
    v14 = [(SettingsViewController *)self _enableMeasurementsSpecifier];
    v15 = PSEnabledKey;
    [v14 setObject:0 forKeyedSubscript:PSEnabledKey];
    v47 = v14;
    [v5 addObject:v14];
    v16 = +[HUNoiseSettings sharedInstance];
    v17 = [v16 noiseThresholdSectionTitle];
    v18 = [PSSpecifier groupSpecifierWithID:@"LOUD_NOTIFICATION_GROUP_ID" name:v17];

    v19 = +[HUNoiseSettings sharedInstance];
    v20 = [v19 noiseThresholdFooterDescription];

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v18 setObject:v22 forKeyedSubscript:PSFooterCellClassGroupKey];

    [v18 setObject:v20 forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
    v23 = +[HUNoiseSettings sharedInstance];
    v24 = [v23 noiseThresholdFooterLinkTitle];
    v53.location = [v20 rangeOfString:v24];
    v25 = NSStringFromRange(v53);
    [v18 setObject:v25 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

    v26 = [NSValue valueWithNonretainedObject:self];
    [v18 setObject:v26 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

    [v18 setObject:@"_environmentalAudioExposureAboutLinkTapped" forKeyedSubscript:PSFooterHyperlinkViewActionKey];
    [v13 addObject:v18];
    v27 = [(SettingsViewController *)self _loudEnvironmentSpecifier];
    [v27 setObject:0 forKeyedSubscript:v15];
    [v13 addObject:v27];
    v28 = +[NRPairedDeviceRegistry sharedInstance];
    v29 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
    v30 = [v28 getAllDevicesWithArchivedAltAccountDevicesMatching:v29];
    v31 = [v30 firstObject];

    v32 = [v31 valueForProperty:NRDevicePropertyIsAltAccount];
    LOBYTE(v30) = [v32 BOOLValue];

    if ((v30 & 1) == 0)
    {
      v33 = +[HUNoiseSettings sharedInstance];
      v34 = [v33 notificationsEnabled];

      if (v34)
      {
        v50.receiver = self;
        v50.super_class = SettingsViewController;
        v35 = [(SettingsViewController *)&v50 specifiers];
        v45 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_COALESCING_GROUP_ID"];
        v36 = [PSSpecifier preferenceSpecifierNamed:@"NOTIFICATION_COALESCING_TITLE" target:self set:"setNotificationCoalescingValue:specifier:" get:"notificationCoalescingValue:" detail:objc_opt_class() cell:2 edit:0];
        v44 = [NSBundle bundleForClass:objc_opt_class()];
        v37 = [NSBundle bundleForClass:objc_opt_class()];
        [v37 localizedStringForKey:@"NOTIFICATION_COALESCING_TITLE" value:&stru_C6C0 table:0];
        v38 = v46 = v13;
        [v44 localizedStringForKey:@"NOTIFICATION_COALESCING_TITLE" value:v38 table:@"Noise"];
        v40 = v39 = v20;
        [v36 setName:v40];

        v20 = v39;
        v13 = v46;

        [v36 setIdentifier:@"NOTIFICATION_COALESCING_ID"];
        [v36 setProperty:@"notificationCoalescingTitles" forKey:PSTitlesDataSourceKey];
        [v36 setProperty:@"notificationCoalescingValues" forKey:PSValuesDataSourceKey];
        v51[0] = v45;
        v51[1] = v36;
        v41 = [NSArray arrayWithObjects:v51 count:2];
        [v46 addObjectsFromArray:v41];
      }
    }

    v42 = *&self->BPSNotificationAppController_opaque[v3];
    *&self->BPSNotificationAppController_opaque[v3] = v13;

    v4 = *&self->BPSNotificationAppController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = SettingsViewController;
  v6 = a4;
  v7 = [(SettingsViewController *)&v14 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(SettingsViewController *)self specifierAtIndexPath:v6, v14.receiver, v14.super_class];

  v9 = [v8 identifier];
  LODWORD(v6) = [v9 isEqualToString:@"ENABLE_MEASUREMENTS_ID"];

  if (v6)
  {
    v10 = [v7 textLabel];
    [v10 setNumberOfLines:0];

    v11 = [v7 textLabel];
    LODWORD(v12) = 0.5;
    [v11 _setHyphenationFactor:v12];
  }

  return v7;
}

- (id)notificationCoalescingTitles
{
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v15 localizedStringForKey:@"NOTIFICATION_COALESCING_OFF" value:&stru_C6C0 table:0];
  v2 = [v14 localizedStringForKey:@"NOTIFICATION_COALESCING_OFF" value:v13 table:@"Noise"];
  v16[0] = v2;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_COALESCING_AUTO" value:&stru_C6C0 table:0];
  v6 = [v3 localizedStringForKey:@"NOTIFICATION_COALESCING_AUTO" value:v5 table:@"Noise"];
  v16[1] = v6;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_COALESCING_BY_APP" value:&stru_C6C0 table:0];
  v10 = [v7 localizedStringForKey:@"NOTIFICATION_COALESCING_BY_APP" value:v9 table:@"Noise"];
  v16[2] = v10;
  v11 = [NSArray arrayWithObjects:v16 count:3];

  return v11;
}

- (id)notificationCoalescingValue:(id)a3
{
  v3 = [(SettingsViewController *)self sectionInfo];
  v4 = [v3 objectForKey:BPSNanoBulletinCoalescingBehavior];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &off_C978;
  }

  v6 = v5;

  return v5;
}

- (void)setNotificationCoalescingValue:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(SettingsViewController *)self sectionInfo];
  [v6 setObject:v5 forKey:BPSNanoBulletinCoalescingBehavior];

  [(SettingsViewController *)self writeSectionState];
}

- (void)_environmentalAudioExposureAboutLinkTapped
{
  v3 = +[UIApplication sharedApplication];
  v2 = [NSURL URLWithString:@"https://support.apple.com/kb/HT209593"];
  [v3 openURL:v2 withCompletionHandler:0];
}

- (id)_loudEnvironmentSpecifier
{
  v2 = +[HUNoiseSettings sharedInstance];
  v3 = [v2 noiseThresholdTitleDescription];
  v4 = objc_opt_class();
  v5 = [PSSpecifier preferenceSpecifierNamed:v3 target:v4 set:0 get:"thresholdSPLString" detail:objc_opt_class() cell:2 edit:0];

  [v5 setIdentifier:@"LOUD_NOTIFICATION_ID"];

  return v5;
}

- (id)_enableMeasurementsSpecifier
{
  v3 = +[HUNoiseSettings sharedInstance];
  v4 = [v3 environmentalMeasurementsTitleDescription];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setNoiseEnabled:forSpecifier:" get:"getNoiseEnabled:" detail:0 cell:6 edit:0];

  [v5 setIdentifier:@"ENABLE_MEASUREMENTS_ID"];

  return v5;
}

- (void)setNoiseEnabled:(id)a3 forSpecifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[HUNoiseSettings sharedInstance];
  [v5 setNoiseEnabled:v4];
}

- (id)getNoiseEnabled:(id)a3
{
  v3 = +[HUNoiseSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 noiseEnabled]);

  return v4;
}

@end