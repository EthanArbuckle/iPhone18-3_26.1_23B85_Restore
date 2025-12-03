@interface GuidedAccessSecurityController
- (id)accessibilityPreferenceForSpecifier:(id)specifier;
- (id)specifiers;
- (void)accessibilitySetPreference:(id)preference specifier:(id)specifier;
@end

@implementation GuidedAccessSecurityController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(GuidedAccessSecurityController *)self loadSpecifiersFromPlistName:@"GuidedAccessSecuritySettings" target:self];
    v6 = [v5 mutableCopy];

    IsMultiUser = AXDeviceIsMultiUser();
    if (AXDeviceHasPearl() && (IsMultiUser & 1) == 0)
    {
      v8 = +[PSSpecifier emptyGroupSpecifier];
      v9 = settingsLocString(@"GUIDED_ACCESS_FACE_ID_DESCRIPTION", @"Accessibility");
      [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

      [v6 addObject:v8];
      v10 = settingsLocString(@"GUIDED_ACCESS_FACE_ID_SWITCH_TITLE", @"Accessibility");
      v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"accessibilitySetPreference:specifier:" get:"accessibilityPreferenceForSpecifier:" detail:0 cell:6 edit:0];

      [v11 setProperty:@"GAXTouchIDSwitch" forKey:PSIDKey];
      [v6 addObject:v11];
    }

    if (!(IsMultiUser & 1 | ((MGGetBoolAnswer() & 1) == 0)))
    {
      v12 = +[PSSpecifier emptyGroupSpecifier];
      v13 = settingsLocString(@"GUIDED_ACCESS_TOUCH_ID_DESCRIPTION", @"GuidedAccessSecuritySettings");
      [v12 setProperty:v13 forKey:PSFooterTextGroupKey];

      [v6 addObject:v12];
      v14 = settingsLocString(@"GUIDED_ACCESS_TOUCH_ID_SWITCH_TITLE", @"GuidedAccessSecuritySettings");
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"accessibilitySetPreference:specifier:" get:"accessibilityPreferenceForSpecifier:" detail:0 cell:6 edit:0];

      [v15 setProperty:@"GAXTouchIDSwitch" forKey:PSIDKey];
      [v6 addObject:v15];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      v20 = PSAllowMultilineTitleKey;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v25 + 1) + 8 * i) setObject:&__kCFBooleanTrue forKeyedSubscript:v20];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    v22 = [v16 copy];
    v23 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v22;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)accessibilityPreferenceForSpecifier:(id)specifier
{
  properties = [specifier properties];
  v4 = [properties objectForKey:PSIDKey];

  if ([v4 isEqualToString:@"GAXTouchIDSwitch"])
  {
    v5 = +[AXSettings sharedInstance];
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 guidedAccessAllowsUnlockWithTouchID]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)accessibilitySetPreference:(id)preference specifier:(id)specifier
{
  preferenceCopy = preference;
  properties = [specifier properties];
  v6 = [properties objectForKey:PSIDKey];

  if ([v6 isEqualToString:@"GAXTouchIDSwitch"])
  {
    bOOLValue = [preferenceCopy BOOLValue];
    v8 = +[AXSettings sharedInstance];
    [v8 setGuidedAccessAllowsUnlockWithTouchID:bOOLValue];
  }
}

@end