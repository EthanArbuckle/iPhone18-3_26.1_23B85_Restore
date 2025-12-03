@interface GuidedAccessController
- (GuidedAccessController)init;
- (id)accessibilityPreferenceForSpecifier:(id)specifier;
- (id)autoLockTime:(id)time;
- (id)specifiers;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)_reallyToggleGAXSettingFromValue:(BOOL)value;
- (void)accessibilitySetPreference:(id)preference specifier:(id)specifier;
- (void)dealloc;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActive;
@end

@implementation GuidedAccessController

- (GuidedAccessController)init
{
  v6.receiver = self;
  v6.super_class = GuidedAccessController;
  v2 = [(GuidedAccessController *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_orientationChange:" name:UIDeviceOrientationDidChangeNotification object:0];

    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GuidedAccessController;
  [(GuidedAccessController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v40 = OBJC_IVAR___PSListController__specifiers;
    v4 = [(GuidedAccessController *)self loadSpecifiersFromPlistName:@"GuidedAccessSettings" target:self];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = PSIDKey;
    [v5 setProperty:@"GAXAutoLockGroup" forKey:PSIDKey];
    v39 = v5;
    [v4 addObject:v5];
    v7 = GAXSLocString(@"AUTO_LOCK");
    selfCopy = self;
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"autoLockTime:" detail:objc_opt_class() cell:2 edit:0];

    [v8 setProperty:@"GuidedAccessAutoLockTime" forKey:v6];
    v38 = v8;
    [v4 addObject:v8];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v4;
    v9 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = v9;
    v11 = *v50;
    v43 = PSFooterTextGroupKey;
    v12 = @"GAXDescriptionGroup";
    v13 = PSAllowMultilineTitleKey;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = [v15 propertyForKey:v6];
        if ([v16 isEqualToString:v12])
        {
          v47 = v16;
          v17 = AXLocStringKeyForHomeButtonAndExclusiveModel();
          v44 = GAXSLocString(v17);
          v45 = [NSString alloc];
          +[UIDevice currentDevice];
          v18 = v46 = v15;
          [v18 localizedModel];
          v19 = v13;
          v20 = v12;
          v21 = v10;
          v22 = v11;
          v24 = v23 = v6;
          v25 = [v45 initWithFormat:v44, v24];

          v6 = v23;
          v11 = v22;
          v10 = v21;
          v12 = v20;
          v13 = v19;

          v15 = v46;
        }

        else
        {
          if ([v16 isEqualToString:@"GAXAXFeaturesGroup"])
          {
            v47 = v16;
            v26 = AXLocStringKeyForHomeButtonAndExclusiveModel();
          }

          else
          {
            if (![v16 isEqualToString:@"GAXAutoLockGroup"])
            {
              goto LABEL_16;
            }

            v47 = v16;
            v26 = AXLocStringKeyForModel();
          }

          v17 = v26;
          v25 = GAXSLocString(v26);
        }

        v16 = v47;
        if (v25)
        {
          [v15 setProperty:v25 forKey:v43];
        }

LABEL_16:
        [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (!v10)
      {
LABEL_18:

        v48 = [obj specifierForID:@"GuidedAccessSecurityLinkListGroup"];
        v53[0] = v48;
        v27 = [obj specifierForID:@"GuidedAccessSecurityLinkList"];
        v53[1] = v27;
        v28 = [obj specifierForID:@"GuidedAccessTimeRestrictionsLinkListGroup"];
        v53[2] = v28;
        v29 = [obj specifierForID:@"GuidedAccessTimeRestrictionsLinkList"];
        v53[3] = v29;
        v30 = [obj specifierForID:@"GAXAXFeaturesGroup"];
        v53[4] = v30;
        v31 = [obj specifierForID:@"GuidedAccessEnableAXFeatures"];
        v53[5] = v31;
        v32 = [obj specifierForID:@"GAXAutoLockGroup"];
        v53[6] = v32;
        v33 = [obj specifierForID:@"GuidedAccessAutoLockTime"];
        v53[7] = v33;
        v34 = [NSArray arrayWithObjects:v53 count:8];
        [(GuidedAccessController *)selfCopy setDetailItems:v34];

        v35 = [(GuidedAccessController *)selfCopy specifiersByRemovingDetailItemsFromOriginalSpecifiers:obj ifHidden:_AXSGuidedAccessEnabled() == 0];
        v36 = *&selfCopy->AXUISettingsBaseListController_opaque[v40];
        *&selfCopy->AXUISettingsBaseListController_opaque[v40] = v35;

        v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v40];
        break;
      }
    }
  }

  return v3;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = GuidedAccessController;
  v7 = [(GuidedAccessController *)&v18 tableView:viewCopy titleForFooterInSection:section];
  v8 = +[NSLocale preferredLanguages];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    v10 = [v9 hasPrefix:@"en"];

    if (v10)
    {
      window = [viewCopy window];
      windowScene = [window windowScene];
      interfaceOrientation = [windowScene interfaceOrientation];

      v14 = +[UIDevice currentDevice];
      if ([v14 userInterfaceIdiom] != &dword_0 + 1)
      {
LABEL_7:

        goto LABEL_8;
      }

      if (section == 1 && (interfaceOrientation - 1) <= 1)
      {
        v15 = [v7 componentsSeparatedByString:@" "];
        v14 = [v15 mutableCopy];

        [v14 insertObject:@"\n" atIndex:{objc_msgSend(v14, "count") - 2}];
        v16 = [v14 componentsJoinedByString:@" "];

        v7 = v16;
        goto LABEL_7;
      }
    }
  }

LABEL_8:

  return v7;
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = GuidedAccessController;
  [(GuidedAccessController *)&v3 willBecomeActive];
  [(GuidedAccessController *)self setDetailItemsHidden:_AXSGuidedAccessEnabled() == 0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = GuidedAccessController;
  [(GuidedAccessController *)&v4 viewWillAppear:appear];
  [(GuidedAccessController *)self reloadSpecifiers];
}

- (id)accessibilityPreferenceForSpecifier:(id)specifier
{
  properties = [specifier properties];
  v4 = [properties objectForKey:PSIDKey];

  if ([v4 isEqualToString:@"EnableGuidedAccess"])
  {
    v5 = [NSNumber numberWithUnsignedChar:_AXSGuidedAccessEnabled()];
  }

  else if ([v4 isEqualToString:@"GuidedAccessEnableAXFeatures"])
  {
    v6 = +[AXSettings sharedInstance];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 guidedAccessAXFeaturesEnabled]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_reallyToggleGAXSettingFromValue:(BOOL)value
{
  valueCopy = value;
  _AXSGuidedAccessSetEnabled();
  if (valueCopy)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  [(GuidedAccessController *)self setDetailItemsHidden:_AXSGuidedAccessEnabled() == 0];
}

- (void)accessibilitySetPreference:(id)preference specifier:(id)specifier
{
  preferenceCopy = preference;
  specifierCopy = specifier;
  properties = [specifierCopy properties];
  v9 = [properties objectForKey:PSIDKey];

  bOOLValue = [preferenceCopy BOOLValue];
  if ([v9 isEqualToString:@"EnableGuidedAccess"])
  {
    if (bOOLValue)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __63__GuidedAccessController_accessibilitySetPreference_specifier___block_invoke;
      v19[3] = &unk_2554E8;
      v19[4] = self;
      v20 = bOOLValue;
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = __63__GuidedAccessController_accessibilitySetPreference_specifier___block_invoke_2;
      v16 = &unk_255538;
      v17 = specifierCopy;
      selfCopy = self;
      [(GuidedAccessController *)self accessibilityPerformTripleClickAddingBlockConfirmingSOSConflicts:v19 cancellationBlock:&v13];
    }

    else
    {
      [(GuidedAccessController *)self _reallyToggleGAXSettingFromValue:0];
    }
  }

  else if ([v9 isEqualToString:@"GuidedAccessEnableAXFeatures"])
  {
    bOOLValue2 = [preferenceCopy BOOLValue];
    v12 = +[AXSettings sharedInstance];
    [v12 setGuidedAccessAXFeaturesEnabled:bOOLValue2];
  }

  [(GuidedAccessController *)self setDetailItemsHidden:_AXSGuidedAccessEnabled() == 0, v13, v14, v15, v16];
}

id __63__GuidedAccessController_accessibilitySetPreference_specifier___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProperty:&__kCFBooleanFalse forKey:PSValueKey];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 reloadSpecifier:v3];
}

void __40__GuidedAccessController__unsetPasscode__block_invoke(id a1)
{
  v1 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  [v1 setPasscode:0];
}

- (id)autoLockTime:(id)time
{
  v3 = +[AXSettings sharedInstance];
  v4 = GuidedAccessDescriptionForAutoLockTime([v3 guidedAccessAutoLockTimeInSeconds]);

  return v4;
}

@end