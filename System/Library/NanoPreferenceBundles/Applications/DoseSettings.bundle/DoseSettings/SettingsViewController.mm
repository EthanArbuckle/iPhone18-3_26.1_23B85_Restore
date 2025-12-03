@interface SettingsViewController
- (id)_enableMeasurementsSpecifier;
- (id)_loudEnvironmentSpecifier;
- (id)bundle;
- (id)getNoiseEnabled:(id)enabled;
- (id)localizedPaneTitle;
- (id)notificationCoalescingTitles;
- (id)notificationCoalescingValue:(id)value;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)preferredUserInterfaceStyle;
- (void)_environmentalAudioExposureAboutLinkTapped;
- (void)setNoiseEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setNotificationCoalescingValue:(id)value specifier:(id)specifier;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SettingsViewController

- (void)traitCollectionDidChange:(id)change
{
  preferredContentSizeCategory = [change preferredContentSizeCategory];
  traitCollection = [(SettingsViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
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
    localizedPaneTitle = [(SettingsViewController *)self localizedPaneTitle];
    [(SettingsViewController *)self setTitle:localizedPaneTitle];

    v7 = [PSSpecifier groupSpecifierWithID:@"HEADER"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:PSHeaderCellClassGroupKey];

    v49 = v7;
    [v5 addObject:v7];
    v10 = [PSSpecifier groupSpecifierWithID:@"ENABLE_MEASUREMENTS_GROUP_ID"];
    v11 = +[HUNoiseSettings sharedInstance];
    environmentalMeasurementsFooterDescription = [v11 environmentalMeasurementsFooterDescription];
    [v10 setObject:environmentalMeasurementsFooterDescription forKeyedSubscript:PSFooterTextGroupKey];

    v13 = v5;
    v48 = v10;
    [v5 addObject:v10];
    _enableMeasurementsSpecifier = [(SettingsViewController *)self _enableMeasurementsSpecifier];
    v15 = PSEnabledKey;
    [_enableMeasurementsSpecifier setObject:0 forKeyedSubscript:PSEnabledKey];
    v47 = _enableMeasurementsSpecifier;
    [v5 addObject:_enableMeasurementsSpecifier];
    v16 = +[HUNoiseSettings sharedInstance];
    noiseThresholdSectionTitle = [v16 noiseThresholdSectionTitle];
    v18 = [PSSpecifier groupSpecifierWithID:@"LOUD_NOTIFICATION_GROUP_ID" name:noiseThresholdSectionTitle];

    v19 = +[HUNoiseSettings sharedInstance];
    noiseThresholdFooterDescription = [v19 noiseThresholdFooterDescription];

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v18 setObject:v22 forKeyedSubscript:PSFooterCellClassGroupKey];

    [v18 setObject:noiseThresholdFooterDescription forKeyedSubscript:PSFooterHyperlinkViewTitleKey];
    v23 = +[HUNoiseSettings sharedInstance];
    noiseThresholdFooterLinkTitle = [v23 noiseThresholdFooterLinkTitle];
    v53.location = [noiseThresholdFooterDescription rangeOfString:noiseThresholdFooterLinkTitle];
    v25 = NSStringFromRange(v53);
    [v18 setObject:v25 forKeyedSubscript:PSFooterHyperlinkViewLinkRangeKey];

    v26 = [NSValue valueWithNonretainedObject:self];
    [v18 setObject:v26 forKeyedSubscript:PSFooterHyperlinkViewTargetKey];

    [v18 setObject:@"_environmentalAudioExposureAboutLinkTapped" forKeyedSubscript:PSFooterHyperlinkViewActionKey];
    [v13 addObject:v18];
    _loudEnvironmentSpecifier = [(SettingsViewController *)self _loudEnvironmentSpecifier];
    [_loudEnvironmentSpecifier setObject:0 forKeyedSubscript:v15];
    [v13 addObject:_loudEnvironmentSpecifier];
    v28 = +[NRPairedDeviceRegistry sharedInstance];
    v29 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
    v30 = [v28 getAllDevicesWithArchivedAltAccountDevicesMatching:v29];
    firstObject = [v30 firstObject];

    v32 = [firstObject valueForProperty:NRDevicePropertyIsAltAccount];
    LOBYTE(v30) = [v32 BOOLValue];

    if ((v30 & 1) == 0)
    {
      v33 = +[HUNoiseSettings sharedInstance];
      notificationsEnabled = [v33 notificationsEnabled];

      if (notificationsEnabled)
      {
        v50.receiver = self;
        v50.super_class = SettingsViewController;
        specifiers = [(SettingsViewController *)&v50 specifiers];
        v45 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_COALESCING_GROUP_ID"];
        v36 = [PSSpecifier preferenceSpecifierNamed:@"NOTIFICATION_COALESCING_TITLE" target:self set:"setNotificationCoalescingValue:specifier:" get:"notificationCoalescingValue:" detail:objc_opt_class() cell:2 edit:0];
        v44 = [NSBundle bundleForClass:objc_opt_class()];
        v37 = [NSBundle bundleForClass:objc_opt_class()];
        [v37 localizedStringForKey:@"NOTIFICATION_COALESCING_TITLE" value:&stru_C6C0 table:0];
        v38 = v46 = v13;
        [v44 localizedStringForKey:@"NOTIFICATION_COALESCING_TITLE" value:v38 table:@"Noise"];
        v40 = v39 = noiseThresholdFooterDescription;
        [v36 setName:v40];

        noiseThresholdFooterDescription = v39;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = SettingsViewController;
  pathCopy = path;
  v7 = [(SettingsViewController *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SettingsViewController *)self specifierAtIndexPath:pathCopy, v14.receiver, v14.super_class];

  identifier = [v8 identifier];
  LODWORD(pathCopy) = [identifier isEqualToString:@"ENABLE_MEASUREMENTS_ID"];

  if (pathCopy)
  {
    textLabel = [v7 textLabel];
    [textLabel setNumberOfLines:0];

    textLabel2 = [v7 textLabel];
    LODWORD(v12) = 0.5;
    [textLabel2 _setHyphenationFactor:v12];
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

- (id)notificationCoalescingValue:(id)value
{
  sectionInfo = [(SettingsViewController *)self sectionInfo];
  v4 = [sectionInfo objectForKey:BPSNanoBulletinCoalescingBehavior];

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

- (void)setNotificationCoalescingValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  sectionInfo = [(SettingsViewController *)self sectionInfo];
  [sectionInfo setObject:valueCopy forKey:BPSNanoBulletinCoalescingBehavior];

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
  noiseThresholdTitleDescription = [v2 noiseThresholdTitleDescription];
  v4 = objc_opt_class();
  v5 = [PSSpecifier preferenceSpecifierNamed:noiseThresholdTitleDescription target:v4 set:0 get:"thresholdSPLString" detail:objc_opt_class() cell:2 edit:0];

  [v5 setIdentifier:@"LOUD_NOTIFICATION_ID"];

  return v5;
}

- (id)_enableMeasurementsSpecifier
{
  v3 = +[HUNoiseSettings sharedInstance];
  environmentalMeasurementsTitleDescription = [v3 environmentalMeasurementsTitleDescription];
  v5 = [PSSpecifier preferenceSpecifierNamed:environmentalMeasurementsTitleDescription target:self set:"setNoiseEnabled:forSpecifier:" get:"getNoiseEnabled:" detail:0 cell:6 edit:0];

  [v5 setIdentifier:@"ENABLE_MEASUREMENTS_ID"];

  return v5;
}

- (void)setNoiseEnabled:(id)enabled forSpecifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[HUNoiseSettings sharedInstance];
  [v5 setNoiseEnabled:bOOLValue];
}

- (id)getNoiseEnabled:(id)enabled
{
  v3 = +[HUNoiseSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 noiseEnabled]);

  return v4;
}

@end