@interface TIAddExtensionKeyboardController
+ (id)specifiersForExtensionInputMode:(id)a3 parentSpecifier:(id)a4;
- (id)fetchInputModeEnabled:(id)a3;
- (id)newSpecifiers;
- (id)selectedInputModes;
- (id)specifiers;
- (void)addCheckedInputModes;
- (void)cancelButtonTapped;
- (void)dealloc;
- (void)didEnterBackground:(id)a3;
- (void)doneButtonTapped;
- (void)setNetworkAccessSpecifierForKeyboardInputMode:(id)a3;
- (void)setNetworkPolicyValue:(id)a3;
- (void)setPrivacyAccess:(id)a3 forSpecifier:(id)a4;
- (void)trackExtensionsContainedInApp;
- (void)updateDoneButton;
- (void)updateNetworkPolicyState;
- (void)updateNetworkPolicyStateIfNecessaryForCell:(id)a3;
@end

@implementation TIAddExtensionKeyboardController

+ (id)specifiersForExtensionInputMode:(id)a3 parentSpecifier:(id)a4
{
  if (![a3 isExtensionInputMode])
  {
    return &__NSArray0__struct;
  }

  v6 = +[NSMutableArray array];
  [v6 addObject:{+[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", objc_msgSend(a3, "safe__extendedDisplayName"))}];
  v7 = [objc_msgSend(a3 "extension")];
  if (v7)
  {
    v8 = +[NSBundle bundleWithURL:](NSBundle, "bundleWithURL:", [objc_msgSend(v7 "bundleURL")]);
  }

  else
  {
    v8 = 0;
  }

  [a4 setProperty:v8 forKey:PSAppSettingsBundleKey];
  v9 = PSAppSettingsBundleIDKey;
  if (![a4 propertyForKey:PSAppSettingsBundleIDKey])
  {
    [a4 setProperty:objc_msgSend(a4 forKey:{"propertyForKey:", PSIDKey), v9}];
  }

  v10 = [(NSBundle *)v8 pathForResource:@"Root" ofType:@"plist"];
  if (!v10)
  {
    return &__NSArray0__struct;
  }

  v11 = [NSDictionary dictionaryWithContentsOfFile:v10];
  v12 = [-[NSDictionary objectForKey:](v11 objectForKey:{PSStringsTableKey), "stringByDeletingPathExtension"}];
  v13 = [(NSDictionary *)v11 objectForKey:PSSpecifiersKey];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  v15 = &__NSArray0__struct;
  if (v14)
  {
    v16 = v14;
    v17 = 0;
    v18 = *v23;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = [PSAppListController specifiersFromDictionary:*(*(&v22 + 1) + 8 * i) stringsTable:v12 parentSpecifier:a4 target:0];
        if (v20)
        {
          [v6 addObjectsFromArray:v20];
          v17 = 1;
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
    if (v17)
    {
      return v6;
    }
  }

  return v15;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];

  v3.receiver = self;
  v3.super_class = TIAddExtensionKeyboardController;
  [(TIAddExtensionKeyboardController *)&v3 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSAppListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    result = [(TIAddExtensionKeyboardController *)self newSpecifiers];
    *&self->PSAppListController_opaque[v3] = result;
  }

  return result;
}

- (void)setNetworkAccessSpecifierForKeyboardInputMode:(id)a3
{
  if ([objc_msgSend(objc_msgSend(objc_msgSend(a3 "extension")])
  {
    -[TIAddExtensionKeyboardController setSystemPolicy:](self, "setSystemPolicy:", [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:{objc_msgSend(objc_msgSend(a3, "containingBundle"), "bundleIdentifier")}]);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_27BA8;
    v5[3] = &unk_49910;
    v5[4] = self;
    [objc_msgSend(-[TIAddExtensionKeyboardController systemPolicy](self "systemPolicy")];
  }
}

- (id)newSpecifiers
{
  v15 = objc_alloc_init(NSMutableArray);
  v3 = +[NSMutableArray array];
  v17 = self;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [-[TIAddExtensionKeyboardController specifier](self "specifier")];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    LOBYTE(v6) = 0;
    v7 = *v19;
    v8 = PSIDKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [v10 displayName], v17, "toggleInputMode:specifier:", "fetchInputModeEnabled:", 0, 6, 0);
        [v11 setProperty:objc_msgSend(v10 forKey:{"identifier"), v8}];
        [v3 addObject:v11];
        if (v6)
        {
          v6 = 1;
        }

        else
        {
          v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v10 "extension")];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  -[TIAddExtensionKeyboardController setModuleSpecifiers:](v17, "setModuleSpecifiers:", [v3 sortedArrayUsingComparator:&stru_49930]);
  v12 = [(NSArray *)[(TIAddExtensionKeyboardController *)v17 moduleSpecifiers] count];
  v17->_didRequestOpenAccess = v6;
  if (![obj count] || -[TIAddExtensionKeyboardController behavesAsModalForAddSheet](v17, "behavesAsModalForAddSheet") || ((v6 ^ 1) & 1) != 0)
  {
    v13 = v15;
    if (v12 >= 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    -[TIAddExtensionKeyboardController setNetworkAccessSpecifierForKeyboardInputMode:](v17, "setNetworkAccessSpecifierForKeyboardInputMode:", [obj firstObject]);
    v13 = v15;
    [v15 addObject:{-[TIAddExtensionKeyboardController networkAccessSpecifier](v17, "networkAccessSpecifier")}];
    if (v12 >= 2)
    {
      [v15 addObject:{+[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", &stru_49C80)}];
LABEL_19:
      [v13 addObjectsFromArray:{-[TIAddExtensionKeyboardController moduleSpecifiers](v17, "moduleSpecifiers")}];
    }
  }

  [(TIAddExtensionKeyboardController *)v17 trackExtensionsContainedInApp];
  return v13;
}

- (void)trackExtensionsContainedInApp
{
  if (TIStatisticShouldSample())
  {
    v3 = [-[TIAddExtensionKeyboardController specifier](self "specifier")];
    TIStatisticGetKey();
    [v3 count];
    TIStatisticScalarSetValue();
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v10;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v3);
          }

          if ([objc_msgSend(objc_opt_class() specifiersForExtensionInputMode:*(*(&v9 + 1) + 8 * i) parentSpecifier:{-[TIAddExtensionKeyboardController specifier](self, "specifier")), "count"}])
          {
            ++v6;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    TIStatisticGetKey();
    TIStatisticScalarSetValue();
  }
}

- (void)setPrivacyAccess:(id)a3 forSpecifier:(id)a4
{
  v7 = [-[PSSpecifier name](-[TIAddExtensionKeyboardController networkAccessSpecifier](self "networkAccessSpecifier")];
  v8 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  if (v7)
  {
    v9 = [-[PSSpecifier identifier](v8 "identifier")];
    v10 = v9;
    if (!self->_hasShownWarning && v9 && [a3 BOOLValue])
    {
      v11 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_THIRD_PARTY_KEYBOARD_WARNING_TITLE", &stru_49C80, @"Keyboard"];
      v12 = [(TIAddExtensionKeyboardController *)self specifier];
      v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v11, [v12 propertyForKey:PSTitleKey], _NSConcreteStackBlock, 3221225472, sub_284A4, &unk_49568, self);
      v14 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_THIRD_PARTY_KEYBOARD_WARNING_MESSAGE", &stru_49C80, @"Keyboard"];
      v15 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_THIRD_PARTY_KEYBOARD_WARNING_CANCEL", &stru_49C80, @"Keyboard"];
      v16 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_THIRD_PARTY_KEYBOARD_WARNING_ACTION", &stru_49C80, @"Keyboard"];
      [(TIAddExtensionKeyboardController *)self setNetworkAccessAlertController:[UIAlertController alertControllerWithTitle:v13 message:v14 preferredStyle:1]];
      [(TIAddExtensionKeyboardController *)self setNetworkAccessAlertActionDefault:[UIAlertAction actionWithTitle:v16 style:0 handler:&v21]];
      [(TIAddExtensionKeyboardController *)self setNetworkAccessAlertActionCancel:[UIAlertAction actionWithTitle:v15 style:1 handler:&v21]];
      [(UIAlertController *)[(TIAddExtensionKeyboardController *)self networkAccessAlertController] addAction:[(TIAddExtensionKeyboardController *)self networkAccessAlertActionDefault]];
      [(UIAlertController *)[(TIAddExtensionKeyboardController *)self networkAccessAlertController] addAction:[(TIAddExtensionKeyboardController *)self networkAccessAlertActionCancel]];
      [(TIAddExtensionKeyboardController *)self setSpecifierForWarning:a4];
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"didEnterBackground:" object:UIApplicationWillResignActiveNotification, 0];
      if ([-[TIAddExtensionKeyboardController view](self "view")])
      {
        v17 = self;
      }

      else
      {
        v17 = [+[UIWindow keyWindow](UIWindow "keyWindow")];
      }

      [+[UIViewController _viewControllerForFullScreenPresentationFromView:](UIViewController _viewControllerForFullScreenPresentationFromView:{-[TIAddExtensionKeyboardController view](v17, "view")), "presentViewController:animated:completion:", -[TIAddExtensionKeyboardController networkAccessAlertController](self, "networkAccessAlertController"), 1, 0}];
      return;
    }

    v18 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
    [(PSSpecifier *)v18 setProperty:a3 forKey:PSValueKey];
    if (v10)
    {
      [(TIAddExtensionKeyboardController *)self setNetworkPolicyValue:a3];
      self->_didGrantOpenAccess = [a3 BOOLValue];
      return;
    }
  }

  else
  {
    [(PSSpecifier *)v8 setProperty:a3 forKey:PSValueKey];
  }

  v19 = [(TIAddExtensionKeyboardController *)self systemPolicy];
  v20 = *(a4 + OBJC_IVAR___PSSpecifier_setter);

  [v19 performSelector:v20 withObject:a3 withObject:a4];
}

- (void)didEnterBackground:(id)a3
{
  if ([(TIAddExtensionKeyboardController *)self specifierForWarning])
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIApplicationWillResignActiveNotification, 0];
    [(UIAlertController *)[(TIAddExtensionKeyboardController *)self networkAccessAlertController] dismissViewControllerAnimated:0 completion:0];
    [(TIAddExtensionKeyboardController *)self setSpecifierForWarning:0];
    [(TIAddExtensionKeyboardController *)self setNetworkAccessAlertController:0];
    [(TIAddExtensionKeyboardController *)self setNetworkAccessAlertActionCancel:0];
    [(TIAddExtensionKeyboardController *)self setNetworkAccessAlertActionDefault:0];
  }

  v4 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  v5 = [(PSSpecifier *)v4 propertyForKey:PSTableCellKey];
  v6 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];

  [v5 reloadWithSpecifier:v6 animated:1];
}

- (void)updateNetworkPolicyStateIfNecessaryForCell:(id)a3
{
  v5 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  if ([(PSSpecifier *)v5 propertyForKey:PSTableCellKey]== a3)
  {

    [(TIAddExtensionKeyboardController *)self updateNetworkPolicyState];
  }
}

- (void)updateNetworkPolicyState
{
  if (![(TIAddExtensionKeyboardController *)self behavesAsModalForAddSheet])
  {
    v4 = CFBundleCreate(0, [objc_msgSend(objc_msgSend(objc_msgSend(-[TIAddExtensionKeyboardController specifier](self "specifier")]);
    if (!v4)
    {
      return;
    }

    cf = v4;
    v5 = TCCAccessCopyInformationForBundle();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v3 = 0;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 objectForKey:kTCCInfoService];
          if ([v11 isEqualToString:kTCCServiceKeyboardNetwork])
          {
            v3 |= [objc_msgSend(v10 objectForKey:{kTCCInfoGranted), "BOOLValue"}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    CFRelease(v5);
LABEL_15:
    CFRelease(cf);
    goto LABEL_16;
  }

  LOBYTE(v3) = 0;
LABEL_16:
  v12 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  v13 = [NSNumber numberWithBool:v3 & 1];
  [(PSSpecifier *)v12 setProperty:v13 forKey:PSValueKey];
  v14 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  v15 = PSTableCellKey;
  [-[PSSpecifier propertyForKey:](v14 propertyForKey:{PSTableCellKey), "setValue:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v3 & 1)}];
  [-[PSSpecifier propertyForKey:](-[TIAddExtensionKeyboardController networkAccessSpecifier](self "networkAccessSpecifier")];
}

- (void)setNetworkPolicyValue:(id)a3
{
  obj = [-[TIAddExtensionKeyboardController specifier](self "specifier")];
  v4 = CFBundleCreate(0, [objc_msgSend(objc_msgSend(obj "firstObject")]);
  if (v4)
  {
    v5 = v4;
    [a3 BOOLValue];
    TCCAccessSetForBundle();
    CFRelease(v5);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([objc_msgSend(objc_msgSend(objc_msgSend(v10 "extension")])
          {
            v11 = a3;
          }

          else
          {
            v11 = &__kCFBooleanFalse;
          }

          v12 = CFBundleCreate(0, [objc_msgSend(objc_msgSend(v10 "extension")]);
          [v11 BOOLValue];
          TCCAccessSetForBundle();
          CFRelease(v12);
          [objc_msgSend(v10 "extension")];
        }

        v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (id)fetchInputModeEnabled:(id)a3
{
  v3 = [a3 propertyForKey:PSTableCellKey];

  return [v3 controlValue];
}

- (id)selectedInputModes
{
  v3 = +[NSMutableArray array];
  if ([(NSArray *)[(TIAddExtensionKeyboardController *)self moduleSpecifiers] count]> 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(TIAddExtensionKeyboardController *)self moduleSpecifiers];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      v9 = PSTableCellKey;
      v10 = PSIDKey;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([objc_msgSend(objc_msgSend(v12 propertyForKey:{v9), "controlValue"), "BOOLValue"}])
          {
            [v3 addObject:{objc_msgSend(v12, "propertyForKey:", v10)}];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = [(NSArray *)[(TIAddExtensionKeyboardController *)self moduleSpecifiers] firstObject];
    [v3 addObject:{objc_msgSend(v4, "propertyForKey:", PSIDKey)}];
  }

  return v3;
}

- (void)addCheckedInputModes
{
  v3 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v4 = [(TIAddExtensionKeyboardController *)self selectedInputModes];
  if ([v4 count])
  {
    +[TIKeyboardListController setInputModes:](TIKeyboardListController, "setInputModes:", [v3 arrayByAddingObjectsFromArray:v4]);
    if (TIStatisticShouldSample())
    {
      if (self->_didRequestOpenAccess)
      {
        TIStatisticGetKey();
        TIStatisticScalarIncrement();
        if (self->_didGrantOpenAccess)
        {
          TIStatisticGetKey();

          TIStatisticScalarIncrement();
        }
      }
    }
  }
}

- (void)updateDoneButton
{
  if ([(TIAddExtensionKeyboardController *)self behavesAsModalForAddSheet])
  {
    v3 = [-[TIAddExtensionKeyboardController selectedInputModes](self "selectedInputModes")] != 0;
    v4 = [-[TIAddExtensionKeyboardController navigationItem](self "navigationItem")];

    [v4 setEnabled:v3];
  }
}

- (void)cancelButtonTapped
{
  v2 = [(TIAddExtensionKeyboardController *)self parentController];

  [v2 dismiss];
}

- (void)doneButtonTapped
{
  [(TIAddExtensionKeyboardController *)self addCheckedInputModes];
  v3 = [(TIAddExtensionKeyboardController *)self parentController];

  [v3 dismissForDone];
}

@end