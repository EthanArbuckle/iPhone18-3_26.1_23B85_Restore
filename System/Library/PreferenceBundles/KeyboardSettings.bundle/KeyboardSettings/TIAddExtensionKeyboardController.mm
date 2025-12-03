@interface TIAddExtensionKeyboardController
+ (id)specifiersForExtensionInputMode:(id)mode parentSpecifier:(id)specifier;
- (id)fetchInputModeEnabled:(id)enabled;
- (id)newSpecifiers;
- (id)selectedInputModes;
- (id)specifiers;
- (void)addCheckedInputModes;
- (void)cancelButtonTapped;
- (void)dealloc;
- (void)didEnterBackground:(id)background;
- (void)doneButtonTapped;
- (void)setNetworkAccessSpecifierForKeyboardInputMode:(id)mode;
- (void)setNetworkPolicyValue:(id)value;
- (void)setPrivacyAccess:(id)access forSpecifier:(id)specifier;
- (void)trackExtensionsContainedInApp;
- (void)updateDoneButton;
- (void)updateNetworkPolicyState;
- (void)updateNetworkPolicyStateIfNecessaryForCell:(id)cell;
@end

@implementation TIAddExtensionKeyboardController

+ (id)specifiersForExtensionInputMode:(id)mode parentSpecifier:(id)specifier
{
  if (![mode isExtensionInputMode])
  {
    return &__NSArray0__struct;
  }

  v6 = +[NSMutableArray array];
  [v6 addObject:{+[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", objc_msgSend(mode, "safe__extendedDisplayName"))}];
  v7 = [objc_msgSend(mode "extension")];
  if (v7)
  {
    v8 = +[NSBundle bundleWithURL:](NSBundle, "bundleWithURL:", [objc_msgSend(v7 "bundleURL")]);
  }

  else
  {
    v8 = 0;
  }

  [specifier setProperty:v8 forKey:PSAppSettingsBundleKey];
  v9 = PSAppSettingsBundleIDKey;
  if (![specifier propertyForKey:PSAppSettingsBundleIDKey])
  {
    [specifier setProperty:objc_msgSend(specifier forKey:{"propertyForKey:", PSIDKey), v9}];
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

        v20 = [PSAppListController specifiersFromDictionary:*(*(&v22 + 1) + 8 * i) stringsTable:v12 parentSpecifier:specifier target:0];
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

- (void)setNetworkAccessSpecifierForKeyboardInputMode:(id)mode
{
  if ([objc_msgSend(objc_msgSend(objc_msgSend(mode "extension")])
  {
    -[TIAddExtensionKeyboardController setSystemPolicy:](self, "setSystemPolicy:", [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:{objc_msgSend(objc_msgSend(mode, "containingBundle"), "bundleIdentifier")}]);
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
  selfCopy = self;
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
        v11 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [v10 displayName], selfCopy, "toggleInputMode:specifier:", "fetchInputModeEnabled:", 0, 6, 0);
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

  -[TIAddExtensionKeyboardController setModuleSpecifiers:](selfCopy, "setModuleSpecifiers:", [v3 sortedArrayUsingComparator:&stru_49930]);
  v12 = [(NSArray *)[(TIAddExtensionKeyboardController *)selfCopy moduleSpecifiers] count];
  selfCopy->_didRequestOpenAccess = v6;
  if (![obj count] || -[TIAddExtensionKeyboardController behavesAsModalForAddSheet](selfCopy, "behavesAsModalForAddSheet") || ((v6 ^ 1) & 1) != 0)
  {
    v13 = v15;
    if (v12 >= 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    -[TIAddExtensionKeyboardController setNetworkAccessSpecifierForKeyboardInputMode:](selfCopy, "setNetworkAccessSpecifierForKeyboardInputMode:", [obj firstObject]);
    v13 = v15;
    [v15 addObject:{-[TIAddExtensionKeyboardController networkAccessSpecifier](selfCopy, "networkAccessSpecifier")}];
    if (v12 >= 2)
    {
      [v15 addObject:{+[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", &stru_49C80)}];
LABEL_19:
      [v13 addObjectsFromArray:{-[TIAddExtensionKeyboardController moduleSpecifiers](selfCopy, "moduleSpecifiers")}];
    }
  }

  [(TIAddExtensionKeyboardController *)selfCopy trackExtensionsContainedInApp];
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

- (void)setPrivacyAccess:(id)access forSpecifier:(id)specifier
{
  v7 = [-[PSSpecifier name](-[TIAddExtensionKeyboardController networkAccessSpecifier](self "networkAccessSpecifier")];
  networkAccessSpecifier = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  if (v7)
  {
    v9 = [-[PSSpecifier identifier](networkAccessSpecifier "identifier")];
    v10 = v9;
    if (!self->_hasShownWarning && v9 && [access BOOLValue])
    {
      v11 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_THIRD_PARTY_KEYBOARD_WARNING_TITLE", &stru_49C80, @"Keyboard"];
      specifier = [(TIAddExtensionKeyboardController *)self specifier];
      v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v11, [specifier propertyForKey:PSTitleKey], _NSConcreteStackBlock, 3221225472, sub_284A4, &unk_49568, self);
      v14 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_THIRD_PARTY_KEYBOARD_WARNING_MESSAGE", &stru_49C80, @"Keyboard"];
      v15 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_THIRD_PARTY_KEYBOARD_WARNING_CANCEL", &stru_49C80, @"Keyboard"];
      v16 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_THIRD_PARTY_KEYBOARD_WARNING_ACTION", &stru_49C80, @"Keyboard"];
      [(TIAddExtensionKeyboardController *)self setNetworkAccessAlertController:[UIAlertController alertControllerWithTitle:v13 message:v14 preferredStyle:1]];
      [(TIAddExtensionKeyboardController *)self setNetworkAccessAlertActionDefault:[UIAlertAction actionWithTitle:v16 style:0 handler:&v21]];
      [(TIAddExtensionKeyboardController *)self setNetworkAccessAlertActionCancel:[UIAlertAction actionWithTitle:v15 style:1 handler:&v21]];
      [(UIAlertController *)[(TIAddExtensionKeyboardController *)self networkAccessAlertController] addAction:[(TIAddExtensionKeyboardController *)self networkAccessAlertActionDefault]];
      [(UIAlertController *)[(TIAddExtensionKeyboardController *)self networkAccessAlertController] addAction:[(TIAddExtensionKeyboardController *)self networkAccessAlertActionCancel]];
      [(TIAddExtensionKeyboardController *)self setSpecifierForWarning:specifier];
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"didEnterBackground:" object:UIApplicationWillResignActiveNotification, 0];
      if ([-[TIAddExtensionKeyboardController view](self "view")])
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = [+[UIWindow keyWindow](UIWindow "keyWindow")];
      }

      [+[UIViewController _viewControllerForFullScreenPresentationFromView:](UIViewController _viewControllerForFullScreenPresentationFromView:{-[TIAddExtensionKeyboardController view](selfCopy, "view")), "presentViewController:animated:completion:", -[TIAddExtensionKeyboardController networkAccessAlertController](self, "networkAccessAlertController"), 1, 0}];
      return;
    }

    networkAccessSpecifier2 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
    [(PSSpecifier *)networkAccessSpecifier2 setProperty:access forKey:PSValueKey];
    if (v10)
    {
      [(TIAddExtensionKeyboardController *)self setNetworkPolicyValue:access];
      self->_didGrantOpenAccess = [access BOOLValue];
      return;
    }
  }

  else
  {
    [(PSSpecifier *)networkAccessSpecifier setProperty:access forKey:PSValueKey];
  }

  systemPolicy = [(TIAddExtensionKeyboardController *)self systemPolicy];
  v20 = *(specifier + OBJC_IVAR___PSSpecifier_setter);

  [systemPolicy performSelector:v20 withObject:access withObject:specifier];
}

- (void)didEnterBackground:(id)background
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

  networkAccessSpecifier = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  v5 = [(PSSpecifier *)networkAccessSpecifier propertyForKey:PSTableCellKey];
  networkAccessSpecifier2 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];

  [v5 reloadWithSpecifier:networkAccessSpecifier2 animated:1];
}

- (void)updateNetworkPolicyStateIfNecessaryForCell:(id)cell
{
  networkAccessSpecifier = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  if ([(PSSpecifier *)networkAccessSpecifier propertyForKey:PSTableCellKey]== cell)
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
  networkAccessSpecifier = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  v13 = [NSNumber numberWithBool:v3 & 1];
  [(PSSpecifier *)networkAccessSpecifier setProperty:v13 forKey:PSValueKey];
  networkAccessSpecifier2 = [(TIAddExtensionKeyboardController *)self networkAccessSpecifier];
  v15 = PSTableCellKey;
  [-[PSSpecifier propertyForKey:](networkAccessSpecifier2 propertyForKey:{PSTableCellKey), "setValue:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v3 & 1)}];
  [-[PSSpecifier propertyForKey:](-[TIAddExtensionKeyboardController networkAccessSpecifier](self "networkAccessSpecifier")];
}

- (void)setNetworkPolicyValue:(id)value
{
  obj = [-[TIAddExtensionKeyboardController specifier](self "specifier")];
  v4 = CFBundleCreate(0, [objc_msgSend(objc_msgSend(obj "firstObject")]);
  if (v4)
  {
    v5 = v4;
    [value BOOLValue];
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
            valueCopy = value;
          }

          else
          {
            valueCopy = &__kCFBooleanFalse;
          }

          v12 = CFBundleCreate(0, [objc_msgSend(objc_msgSend(v10 "extension")]);
          [valueCopy BOOLValue];
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

- (id)fetchInputModeEnabled:(id)enabled
{
  v3 = [enabled propertyForKey:PSTableCellKey];

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
    moduleSpecifiers = [(TIAddExtensionKeyboardController *)self moduleSpecifiers];
    v6 = [(NSArray *)moduleSpecifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(moduleSpecifiers);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([objc_msgSend(objc_msgSend(v12 propertyForKey:{v9), "controlValue"), "BOOLValue"}])
          {
            [v3 addObject:{objc_msgSend(v12, "propertyForKey:", v10)}];
          }
        }

        v7 = [(NSArray *)moduleSpecifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    firstObject = [(NSArray *)[(TIAddExtensionKeyboardController *)self moduleSpecifiers] firstObject];
    [v3 addObject:{objc_msgSend(firstObject, "propertyForKey:", PSIDKey)}];
  }

  return v3;
}

- (void)addCheckedInputModes
{
  v3 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  selectedInputModes = [(TIAddExtensionKeyboardController *)self selectedInputModes];
  if ([selectedInputModes count])
  {
    +[TIKeyboardListController setInputModes:](TIKeyboardListController, "setInputModes:", [v3 arrayByAddingObjectsFromArray:selectedInputModes]);
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
  parentController = [(TIAddExtensionKeyboardController *)self parentController];

  [parentController dismiss];
}

- (void)doneButtonTapped
{
  [(TIAddExtensionKeyboardController *)self addCheckedInputModes];
  parentController = [(TIAddExtensionKeyboardController *)self parentController];

  [parentController dismissForDone];
}

@end