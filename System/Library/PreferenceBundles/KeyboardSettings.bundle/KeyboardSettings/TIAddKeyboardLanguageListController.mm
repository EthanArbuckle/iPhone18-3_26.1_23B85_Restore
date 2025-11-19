@interface TIAddKeyboardLanguageListController
- (BOOL)inputMode:(id)a3 matchesPredicate:(id)a4;
- (NSOperationQueue)searchQueue;
- (TIAddKeyboardLanguageListController)init;
- (id)generateSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)cancelButtonTapped;
- (void)createAboutPrivacyControllerIfNeeded:(id)a3;
- (void)dealloc;
- (void)dismissForDone;
- (void)emitNavigationEventForAddKeyboardLanguageListController;
- (void)handleSoleInputModeAddition:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)showAddExtensionKeyboardSheet:(id)a3;
- (void)showAddSystemKeyboardSheet:(id)a3;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation TIAddKeyboardLanguageListController

- (TIAddKeyboardLanguageListController)init
{
  v4.receiver = self;
  v4.super_class = TIAddKeyboardLanguageListController;
  v2 = [(TIAddKeyboardLanguageListController *)&v4 init];
  if (v2)
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"willResume" object:UIApplicationWillEnterForegroundNotification, 0];
  }

  return v2;
}

- (NSOperationQueue)searchQueue
{
  result = self->_searchQueue;
  if (!result)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    self->_searchQueue = v4;
    [(NSOperationQueue *)v4 setMaxConcurrentOperationCount:1];
    return self->_searchQueue;
  }

  return result;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];

  v3.receiver = self;
  v3.super_class = TIAddKeyboardLanguageListController;
  [(TIAddKeyboardLanguageListController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TIAddKeyboardLanguageListController;
  [(TIAddKeyboardLanguageListController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v3] setEstimatedSectionFooterHeight:0.0];
  [-[TIAddKeyboardLanguageListController navigationItem](self "navigationItem")];
  [-[TIAddKeyboardLanguageListController navigationItem](self "navigationItem")];
  [objc_msgSend(-[TIAddKeyboardLanguageListController navigationItem](self "navigationItem")];
  [objc_msgSend(objc_msgSend(-[TIAddKeyboardLanguageListController navigationItem](self "navigationItem")];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  [(TIAddKeyboardLanguageListController *)self setSearchText:a4];
  [(NSOperationQueue *)[(TIAddKeyboardLanguageListController *)self searchQueue] cancelAllOperations];
  v5 = objc_alloc_init(NSBlockOperation);
  objc_initWeak(&location, v5);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_29538;
  v6[3] = &unk_49958;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  [v5 addExecutionBlock:v6];
  [(NSOperationQueue *)[(TIAddKeyboardLanguageListController *)self searchQueue] addOperation:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  [(NSOperationQueue *)[(TIAddKeyboardLanguageListController *)self searchQueue] cancelAllOperations];
  [(TIAddKeyboardLanguageListController *)self setSearchText:0];

  [(TIAddKeyboardLanguageListController *)self reloadSpecifiers];
}

- (BOOL)inputMode:(id)a3 matchesPredicate:(id)a4
{
  LanguageWithRegion = TIInputModeGetLanguageWithRegion();
  if ([a4 evaluateWithObject:LanguageWithRegion])
  {
    v6 = 1;
  }

  else
  {
    v7 = [NSMutableSet setWithObject:[TIKeyboardListController keyboardDisplayNameForIdentifier:LanguageWithRegion]];
    -[NSMutableSet addObject:](v7, "addObject:", [+[NSLocale currentLocale](NSLocale localizedStringForLanguage:"localizedStringForLanguage:context:length:" context:LanguageWithRegion length:0, 2]);
    [(NSMutableSet *)v7 addObject:TUIKeyboardTitleInLanguage()];
    [(NSMutableSet *)v7 addObject:[[NSLocale localeWithLocaleIdentifier:?], "localizedStringForLocaleIdentifier:", LanguageWithRegion]];
    v8 = [TIKeyboardListController supportedBaseInputModesForLanguage:LanguageWithRegion];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          [UIKeyboardInputModeGetComponentsFromIdentifier() valueForKey:@"kCFLocaleVariantCodeKey"];
          v14 = TUIKeyboardTitle();
          if ([v14 length])
          {
            [(NSMutableSet *)v7 addObject:v14];
          }

          v15 = TUIKeyboardTitleInLanguage();
          if ([v15 length])
          {
            [(NSMutableSet *)v7 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      while (2)
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v7);
          }

          v20 = *(*(&v24 + 1) + 8 * j);
          if ([a4 evaluateWithObject:v20])
          {
            *(v29 + 24) = 1;
            goto LABEL_25;
          }

          v21 = [v20 length];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_29970;
          v23[3] = &unk_49980;
          v23[4] = a4;
          v23[5] = &v28;
          [v20 enumerateSubstringsInRange:0 options:v21 usingBlock:{3, v23}];
          if (v29[3])
          {
            goto LABEL_25;
          }
        }

        v17 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:
    v6 = *(v29 + 24);
    _Block_object_dispose(&v28, 8);
  }

  return v6 & 1;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    result = [(TIAddKeyboardLanguageListController *)self generateSpecifiers];
    *&self->PSListController_opaque[v3] = result;
  }

  return result;
}

- (id)generateSpecifiers
{
  v3 = +[NSMutableArray array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v4 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v5 = [v4 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        if (([v9 isExtensionInputMode] & 1) == 0)
        {
          [v9 identifier];
          LanguageWithRegion = TIInputModeGetLanguageWithRegion();
          if (([v3 containsObject:LanguageWithRegion] & 1) == 0)
          {
            [v3 addObject:LanguageWithRegion];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v6);
  }

  v45 = +[NSMutableSet set];
  v38 = +[NSMutableArray array];
  v39 = +[NSMutableArray array];
  v42 = +[NSMutableDictionary dictionary];
  val = self;
  if ([(NSString *)[(TIAddKeyboardLanguageListController *)self searchText] length])
  {
    v11 = [NSPredicate predicateWithFormat:@"SELF beginswith[cd] %@", [(TIAddKeyboardLanguageListController *)self searchText]];
  }

  else
  {
    v11 = 0;
  }

  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  obj = UIKeyboardGetSupportedInputModes();
  v12 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v53;
    v43 = _kCFBundleDisplayNameKey;
    v41 = PSTitleKey;
    v44 = PSIDKey;
    v40 = PSCellClassKey;
    v37 = PSBundlePathKey;
    v36 = PSBundleHasBundleIconKey;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v52 + 1) + 8 * j);
        if ((!v11 || [(TIAddKeyboardLanguageListController *)val inputMode:*(*(&v52 + 1) + 8 * j) matchesPredicate:v11]) && (!_os_feature_enabled_impl() || (TIInputModeIsMultilingualOnly() & 1) == 0))
        {
          v17 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v16];
          if ((-[UIKeyboardInputMode isExtensionInputMode](v17, "isExtensionInputMode") & 1) != 0 || [+[TIKeyboardListController availableInputModesForLanguage:](TIKeyboardListController availableInputModesForLanguage:{v16), "count"}])
          {
            if ([(UIKeyboardInputMode *)v17 isExtensionInputMode])
            {
              v18 = [-[UIKeyboardInputMode containingBundle](v17 "containingBundle")];
              if (!v18)
              {
                continue;
              }

              v19 = v18;
              v20 = [(UIKeyboardInputMode *)v17 identifier];
              v21 = [-[UIKeyboardInputMode containingBundle](v17 "containingBundle")];
              v22 = [-[UIKeyboardInputMode containingBundle](v17 "containingBundle")];
              if (!v22)
              {
                v22 = [-[UIKeyboardInputMode containingBundle](v17 "containingBundle")];
              }

              v23 = v22;
            }

            else
            {
              v21 = TIInputModeGetLanguageWithRegion();
              v23 = [TIKeyboardListController keyboardDisplayNameForIdentifier:v21];
              v19 = 0;
              v20 = v21;
            }

            if (![v45 member:v20])
            {
              [v45 addObject:v20];
              if (!-[UIKeyboardInputMode isExtensionInputMode](v17, "isExtensionInputMode") || (v24 = [v42 objectForKey:{objc_msgSend(-[UIKeyboardInputMode containingBundle](v17, "containingBundle"), "bundlePath")}]) == 0)
              {
                v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:val set:0 get:0 detail:0 cell:3 edit:0];
                [v24 setControllerLoadAction:"showAddSystemKeyboardSheet:"];
                [v24 setProperty:v23 forKey:v41];
                [v24 setProperty:v21 forKey:v44];
                [v24 setProperty:objc_opt_class() forKey:v40];
              }

              if ([(UIKeyboardInputMode *)v17 isExtensionInputMode])
              {
                v25 = [v24 propertyForKey:@"TIKBAllIdentifiersKey"];
                if (!v25)
                {
                  v25 = +[NSMutableArray array];
                  [v24 setProperty:v25 forKey:@"TIKBAllIdentifiersKey"];
                }

                [v25 addObject:v17];
                if (([objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")] & 1) == 0)
                {
                  v26 = [v24 propertyForKey:@"TIKBIdentifiersKey"];
                  if (!v26)
                  {
                    v26 = +[NSMutableArray array];
                    [v24 setProperty:v26 forKey:@"TIKBIdentifiersKey"];
                  }

                  [v26 addObject:v17];
                  [v24 setProperty:v19 forKey:v37];
                  [v24 setProperty:&__kCFBooleanTrue forKey:v36];
                  [v24 setControllerLoadAction:"showAddExtensionKeyboardSheet:"];
                  [v42 setObject:v24 forKey:v19];
                }
              }

              else
              {
                if ([v3 containsObject:{objc_msgSend(v24, "propertyForKey:", v44)}])
                {
                  v27 = v38;
                }

                else
                {
                  v27 = v39;
                }

                [v27 addObject:v24];
              }
            }
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v13);
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_2A27C;
  v51[3] = &unk_499A8;
  v51[4] = v3;
  [v38 sortUsingComparator:v51];
  [v39 sortUsingComparator:&stru_499C8];
  v28 = [objc_msgSend(v42 "allValues")];
  v29 = [v38 count];
  v30 = [v28 count];
  v31 = [v39 count];
  v32 = +[NSMutableArray array];
  if (v29)
  {
    [v32 addObject:{+[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SUGGESTED_KEYBOARDS", &stru_49C80, @"Keyboard"}];
  }

  [v32 addObjectsFromArray:v38];
  if (v30)
  {
    v33 = [PSSpecifier groupSpecifierWithName:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"APP_KEYBOARDS", &stru_49C80, @"Keyboard"]];
    [v32 addObject:v33];
    [(TIAddKeyboardLanguageListController *)val createAboutPrivacyControllerIfNeeded:v33];
  }

  else
  {
    objc_initWeak(&location, val);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2A33C;
    block[3] = &unk_499F0;
    objc_copyWeak(&v49, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  [v32 addObjectsFromArray:v28];
  if (v31)
  {
    v34 = [PSSpecifier groupSpecifierWithName:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:[UIDevice modelSpecificLocalizedStringKeyForKey:@"DEVICE_KEYBOARDS"], &stru_49C80, @"Keyboard"]];
  }

  else
  {
    v34 = +[PSSpecifier emptyGroupSpecifier];
  }

  [v32 addObject:v34];
  [v32 addObjectsFromArray:v39];
  return v32;
}

- (void)createAboutPrivacyControllerIfNeeded:(id)a3
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v5 = sub_2A43C;
  v6 = &unk_49A18;
  objc_copyWeak(&v8, &location);
  v7 = a3;
  if (+[NSThread isMainThread])
  {
    v5(block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)handleSoleInputModeAddition:(id)a3
{
  +[TIKeyboardListController setInputModes:](TIKeyboardListController, "setInputModes:", [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")]);
  v4 = [-[TIAddKeyboardLanguageListController parentController](self "parentController")];
  if (objc_opt_respondsToSelector())
  {
    [v4 setNewKeyboardsAdded:1];
    [v4 reloadSpecifiers];
  }

  v5 = [(TIAddKeyboardLanguageListController *)self parentController];

  [v5 dismiss];
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v7 = [(TIAddKeyboardLanguageListController *)self aboutPrivacyController];

  [(TIAboutKeyboardPrivacyController *)v7 addPrivacyLinkViewIfNecessaryToHeaderView:a4 forSection:a5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = TIAddKeyboardLanguageListController;
  v6 = [(TIAddKeyboardLanguageListController *)&v9 tableView:a3 cellForRowAtIndexPath:?];
  v7 = [(TIAddKeyboardLanguageListController *)self specifierAtIndex:[(TIAddKeyboardLanguageListController *)self indexForIndexPath:a4]];
  [v6 setAccessibilityIdentifier:{objc_msgSend(v7, "propertyForKey:", PSIDKey)}];
  return v6;
}

- (void)showAddSystemKeyboardSheet:(id)a3
{
  v5 = [a3 propertyForKey:PSIDKey];
  v6 = [TIKeyboardListController supportedInputModesForLanguage:v5];
  if (!+[TIAddKeyboardController shouldShowAddKeyboardControllerForInputModes:](TIAddKeyboardController, "shouldShowAddKeyboardControllerForInputModes:", v6) && (v7 = +[TIKeyboardListController availableInputModesForLanguage:](TIKeyboardListController, "availableInputModesForLanguage:", v5), v8 = [v6 count], v8 == objc_msgSend(v7, "count")) && (v9 = objc_msgSend(v7, "firstObject")) != 0)
  {
    v10 = v9;
    if (UIKeyboardGetDefaultHardwareKeyboardForInputMode())
    {
      v10 = UIKeyboardInputModeWithNewHWLayout();
    }

    [(TIAddKeyboardLanguageListController *)self handleSoleInputModeAddition:v10];
  }

  else
  {
    v11 = objc_alloc_init(TIAddKeyboardController);
    [(TIAddKeyboardController *)v11 setParentController:self];
    [(TIAddKeyboardController *)v11 setSpecifier:a3];
    [a3 setTarget:self];

    [(TIAddKeyboardLanguageListController *)self showController:v11 animate:?];
  }
}

- (void)showAddExtensionKeyboardSheet:(id)a3
{
  v5 = objc_alloc_init(TIAddExtensionKeyboardController);
  [(TIAddExtensionKeyboardController *)v5 setBehavesAsModalForAddSheet:1];
  [(TIAddExtensionKeyboardController *)v5 setParentController:self];
  [(TIAddExtensionKeyboardController *)v5 setSpecifier:a3];
  [a3 setTarget:self];
  if ([-[TIAddExtensionKeyboardController specifiers](v5 "specifiers")])
  {

    [(TIAddKeyboardLanguageListController *)self showController:v5 animate:?];
  }

  else
  {
    v6 = [objc_msgSend(objc_msgSend(a3 propertyForKey:{@"TIKBIdentifiersKey", "firstObject"), "identifier"}];

    [(TIAddKeyboardLanguageListController *)self handleSoleInputModeAddition:v6];
  }
}

- (void)cancelButtonTapped
{
  v2 = [(TIAddKeyboardLanguageListController *)self parentController];

  [v2 dismiss];
}

- (void)dismissForDone
{
  v3 = [-[TIAddKeyboardLanguageListController parentController](self "parentController")];
  if (objc_opt_respondsToSelector())
  {
    [v3 setNewKeyboardsAdded:1];
    [v3 reloadSpecifiers];
  }

  v4 = [(TIAddKeyboardLanguageListController *)self parentController];

  [v4 dismiss];
}

- (void)emitNavigationEventForAddKeyboardLanguageListController
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/KEYBOARDS/AddNewKeyboard"];
  v4[0] = +[KeyboardController localizedStringForGeneralKeyboardSpecifier];
  v4[1] = [[_NSLocalizedStringResource alloc] initWithKey:@"KEYBOARDS_SHORT" table:@"Keyboard" locale:+[NSLocale currentLocale](NSLocale bundleURL:{"currentLocale"), -[NSBundle bundleURL](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "bundleURL")}];
  -[TIAddKeyboardLanguageListController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", [[_NSLocalizedStringResource alloc] initWithKey:@"ADD_NEW_KEYBOARD_SHORT" table:@"Keyboard" locale:+[NSLocale currentLocale](NSLocale bundleURL:{"currentLocale"), -[NSBundle bundleURL](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "bundleURL")}], +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v4, 3), v3);
}

@end