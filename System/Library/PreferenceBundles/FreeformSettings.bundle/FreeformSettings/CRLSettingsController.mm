@interface CRLSettingsController
- (id)p_alignmentGuidesSpecifiers;
- (id)p_appAnalyticsResetUserIdentifierSpecifiers;
- (id)p_linkListSpecifierWithTitle:(id)title userDefaultKey:(id)key values:(id)values titles:(id)titles shortTitles:(id)shortTitles rowIdentifier:(id)identifier;
- (id)p_mathPaperSpecifiers;
- (id)p_pencilSpecifiers;
- (id)p_snapToGridSpecifiers;
- (id)p_switchSpecifierWithTitle:(id)title userDefaultKey:(id)key rowIdentifier:(id)identifier;
- (id)p_systemPolicy;
- (id)p_systemPolicySpecifiers;
- (id)specifiers;
- (void)p_emitNavigationEventForRoot;
@end

@implementation CRLSettingsController

- (void)p_emitNavigationEventForRoot
{
  v9 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.freeform"];
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v5 bundleURL];
  v7 = [v3 initWithKey:@"Freeform" table:@"SettingsStrings" locale:v4 bundleURL:bundleURL];

  v8 = CRLAppBundleIdentifier();
  [(CRLSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v8 title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v9];
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  p_systemPolicySpecifiers = [(CRLSettingsController *)self p_systemPolicySpecifiers];
  [v3 addObjectsFromArray:p_systemPolicySpecifiers];

  if (_os_feature_enabled_impl())
  {
    p_snapToGridSpecifiers = [(CRLSettingsController *)self p_snapToGridSpecifiers];
    [v3 addObjectsFromArray:p_snapToGridSpecifiers];
  }

  p_alignmentGuidesSpecifiers = [(CRLSettingsController *)self p_alignmentGuidesSpecifiers];
  [v3 addObjectsFromArray:p_alignmentGuidesSpecifiers];

  p_pencilSpecifiers = [(CRLSettingsController *)self p_pencilSpecifiers];
  [v3 addObjectsFromArray:p_pencilSpecifiers];

  if (_os_feature_enabled_impl())
  {
    p_appAnalyticsResetUserIdentifierSpecifiers = [(CRLSettingsController *)self p_appAnalyticsResetUserIdentifierSpecifiers];
    [v3 addObjectsFromArray:p_appAnalyticsResetUserIdentifierSpecifiers];
  }

  if (_os_feature_enabled_impl())
  {
    p_mathPaperSpecifiers = [(CRLSettingsController *)self p_mathPaperSpecifiers];
    [v3 addObjectsFromArray:p_mathPaperSpecifiers];
  }

  v10 = OBJC_IVAR___PSListController__specifiers;
  v11 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v12 = v3;

  v13 = *&self->PSListController_opaque[v10];
  v14 = v13;

  return v13;
}

- (id)p_systemPolicy
{
  systemPolicy = self->_systemPolicy;
  if (!systemPolicy)
  {
    v4 = [PSSystemPolicyForApp alloc];
    v5 = CRLAppBundleIdentifier();
    v6 = [v4 initWithBundleIdentifier:v5];
    v7 = self->_systemPolicy;
    self->_systemPolicy = v6;

    [(PSSystemPolicyForApp *)self->_systemPolicy setDelegate:self];
    systemPolicy = self->_systemPolicy;
  }

  return systemPolicy;
}

- (id)p_systemPolicySpecifiers
{
  p_systemPolicy = [(CRLSettingsController *)self p_systemPolicy];
  v3 = [p_systemPolicy specifiersForPolicyOptions:-134348803 force:0];

  return v3;
}

- (id)p_mathPaperSpecifiers
{
  v2 = [PSSpecifier groupSpecifierWithID:@"Math Results"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Math Results" value:0 table:@"SettingsStrings"];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Insert Results" value:0 table:@"SettingsStrings"];
  v17[0] = v6;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Suggest Results" value:0 table:@"SettingsStrings"];
  v17[1] = v8;
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Off" value:0 table:@"SettingsStrings"];
  v17[2] = v10;
  v11 = [NSArray arrayWithObjects:v17 count:3];

  v12 = [(CRLSettingsController *)self p_linkListSpecifierWithTitle:v4 userDefaultKey:@"CRLMathRecognitionMode" values:&off_90D8 titles:v11 shortTitles:0 rowIdentifier:@"MATH_HINTS"];
  v16[0] = v2;
  v16[1] = v12;
  v13 = [NSArray arrayWithObjects:v16 count:2];

  return v13;
}

- (id)p_snapToGridSpecifiers
{
  v3 = [PSSpecifier groupSpecifierWithID:@"Snap to Grid"];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Snap to Grid" value:0 table:@"SettingsStrings"];

  v6 = [(CRLSettingsController *)self p_switchSpecifierWithTitle:v5 userDefaultKey:@"CRLSnapToGrid" rowIdentifier:@"SNAP_TO_GRID"];
  v9[0] = v3;
  v9[1] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

- (id)p_alignmentGuidesSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Alignment Guides" value:0 table:@"SettingsStrings"];

  v5 = [PSSpecifier groupSpecifierWithName:v4];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Center Guides" value:0 table:@"SettingsStrings"];

  v8 = [(CRLSettingsController *)self p_switchSpecifierWithTitle:v7 userDefaultKey:@"CRLDisplayCenterGuides" rowIdentifier:@"CENTER_GUIDES"];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Edge Guides" value:0 table:@"SettingsStrings"];

  v11 = [(CRLSettingsController *)self p_switchSpecifierWithTitle:v10 userDefaultKey:@"CRLDisplayEdgeGuides" rowIdentifier:@"EDGE_GUIDES"];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Spacing Guides" value:0 table:@"SettingsStrings"];

  v14 = [(CRLSettingsController *)self p_switchSpecifierWithTitle:v13 userDefaultKey:@"CRLDisplaySpacingGuides" rowIdentifier:@"SPACING_GUIDES"];
  v17[0] = v5;
  v17[1] = v8;
  v17[2] = v11;
  v17[3] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:4];

  return v15;
}

- (id)p_pencilSpecifiers
{
  if (MGGetBoolAnswer())
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"Apple Pencil" value:0 table:@"SettingsStrings"];

    v5 = [PSSpecifier groupSpecifierWithName:v4];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Use Apple Pencil for selecting objects and scrolling the board." value:0 table:@"SettingsStrings"];

    [v5 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"Select and Scroll" value:0 table:@"SettingsStrings"];

    v10 = [(CRLSettingsController *)self p_switchSpecifierWithTitle:v9 userDefaultKey:@"CRLSelectAndScrollWithApplePencil" rowIdentifier:@"SELECT_AND_SCROLL"];
    v13[0] = v5;
    v13[1] = v10;
    v11 = [NSArray arrayWithObjects:v13 count:2];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (id)p_appAnalyticsResetUserIdentifierSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Privacy" value:0 table:@"SettingsStrings"];

  v5 = [PSSpecifier groupSpecifierWithName:v4];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Turn on to reset the identifier used by Freeform to report statistics to Apple. The identifier will be reset the next time you open the app. To stop reporting statistics value:turn off sharing device analytics in Privacy & Security > Analytics & Improvements." table:{0, @"SettingsStrings"}];

  [v5 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Reset Identifier" value:0 table:@"SettingsStrings"];

  v10 = [(CRLSettingsController *)self p_switchSpecifierWithTitle:v9 userDefaultKey:@"CRLAppAnalyticsResetIdentifier" rowIdentifier:@"RESET_IDENTIFIER"];
  v13[0] = v5;
  v13[1] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:2];

  return v11;
}

- (id)p_switchSpecifierWithTitle:(id)title userDefaultKey:(id)key rowIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyCopy = key;
  v10 = [PSSpecifier preferenceSpecifierNamed:title target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
  [v10 setIdentifier:identifierCopy];

  v11 = [keyCopy copy];
  [v10 setObject:v11 forKeyedSubscript:PSKeyNameKey];

  v12 = +[CRLUserDefaults defaultDefaults];
  v13 = [v12 objectForKeyedSubscript:keyCopy];

  [v10 setObject:v13 forKeyedSubscript:PSDefaultValueKey];
  v14 = CRLAppBundleIdentifier();
  [v10 setObject:v14 forKeyedSubscript:PSDefaultsKey];

  return v10;
}

- (id)p_linkListSpecifierWithTitle:(id)title userDefaultKey:(id)key values:(id)values titles:(id)titles shortTitles:(id)shortTitles rowIdentifier:(id)identifier
{
  identifierCopy = identifier;
  shortTitlesCopy = shortTitles;
  titlesCopy = titles;
  valuesCopy = values;
  keyCopy = key;
  titleCopy = title;
  v19 = [PSSpecifier preferenceSpecifierNamed:titleCopy target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:objc_opt_class() cell:2 edit:0];

  [v19 setIdentifier:identifierCopy];
  v20 = [keyCopy copy];
  [v19 setObject:v20 forKeyedSubscript:PSKeyNameKey];

  v21 = +[CRLUserDefaults defaultDefaults];
  v22 = [v21 objectForKeyedSubscript:keyCopy];

  [v19 setObject:v22 forKeyedSubscript:PSDefaultValueKey];
  v23 = CRLAppBundleIdentifier();
  [v19 setObject:v23 forKeyedSubscript:PSDefaultsKey];

  [v19 setValues:valuesCopy titles:titlesCopy shortTitles:shortTitlesCopy usingLocalizedTitleSorting:0];

  return v19;
}

@end