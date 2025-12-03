@interface TIKeyboardExtensionController
+ (id)keyboardsForBundleID:(id)d;
- (id)isKeyboardEnabled:(id)enabled;
- (id)specifiers;
- (void)dealloc;
- (void)setKeyboardEnabled:(id)enabled specifier:(id)specifier;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation TIKeyboardExtensionController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TIKeyboardExtensionController;
  [(TIKeyboardExtensionController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v3] setEstimatedSectionFooterHeight:0.0];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TIKeyboardExtensionController;
  [(TIKeyboardExtensionController *)&v3 dealloc];
}

- (id)isKeyboardEnabled:(id)enabled
{
  v4 = +[TIKeyboardListController inputModes];
  v5 = [v4 containsObject:{objc_msgSend(enabled, "propertyForKey:", PSIDKey)}];

  return [NSNumber numberWithBool:v5];
}

- (void)setKeyboardEnabled:(id)enabled specifier:(id)specifier
{
  v6 = [specifier propertyForKey:PSIDKey];
  v7 = [+[TIKeyboardListController inputModes](TIKeyboardListController "inputModes")];
  v8 = [v7 count];
  if ([enabled BOOLValue])
  {
    if (([v7 containsObject:v6] & 1) == 0)
    {
      [v7 addObject:v6];
    }
  }

  else
  {
    [v7 removeObject:v6];
  }

  if (v8 != [v7 count])
  {
    v9 = [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
    if ([v7 count])
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    [v9 saveInputModes:v10];
  }

  if ([(TIAddExtensionKeyboardController *)[(TIKeyboardExtensionController *)self addExtensionKeyboardController] networkAccessSpecifier])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_18F10;
    v16[3] = &unk_49440;
    v16[4] = v7;
    v11 = [objc_msgSend(-[TIKeyboardExtensionController specifier](self "specifier")];
    v12 = OBJC_IVAR___PSListController__specifiers;
    v13 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_18F50;
    v15[3] = &unk_49468;
    v15[4] = self;
    v14 = [v13 indexOfObjectPassingTest:v15];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL || v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11 == 0x7FFFFFFFFFFFFFFFLL && v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        -[TIKeyboardExtensionController removeSpecifier:animated:](self, "removeSpecifier:animated:", [*&self->PSListController_opaque[v12] objectAtIndexedSubscript:v14], 1);
      }
    }

    else
    {
      [(TIKeyboardExtensionController *)self insertSpecifier:[(TIAddExtensionKeyboardController *)[(TIKeyboardExtensionController *)self addExtensionKeyboardController] networkAccessSpecifier] afterSpecifier:[(TIKeyboardExtensionController *)self lastInputModeSpecifier] animated:1];
      [(TIAddExtensionKeyboardController *)[(TIKeyboardExtensionController *)self addExtensionKeyboardController] updateNetworkPolicyState];
    }
  }
}

- (id)specifiers
{
  v24 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v24)
  {
    v20 = OBJC_IVAR___PSListController__specifiers;
    v3 = objc_alloc_init(NSMutableArray);
    [(TIKeyboardExtensionController *)self setTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"KEYBOARDS_SHORT", &stru_49C80, @"Keyboard"]];
    v24 = v3;
    v22 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:?];
    v4 = objc_opt_class();
    selfCopy = self;
    specifier = [(TIKeyboardExtensionController *)self specifier];
    v6 = [v4 keyboardsForBundleID:{objc_msgSend(specifier, "propertyForKey:", PSAppSettingsBundleIDKey)}];
    v7 = +[TIKeyboardListController inputModes];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v6;
    v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v26;
      v12 = PSIDKey;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [v14 displayName], selfCopy, "setKeyboardEnabled:specifier:", "isKeyboardEnabled:", 0, 6, 0);
          [v15 setProperty:objc_msgSend(v14 forKey:{"identifier"), v12}];
          [v15 setProperty:v22 forKey:@"GroupHeader"];
          [v24 addObject:v15];
          v10 |= [v7 containsObject:{objc_msgSend(v14, "identifier")}];
        }

        v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    -[TIKeyboardExtensionController setLastInputModeSpecifier:](selfCopy, "setLastInputModeSpecifier:", [v24 lastObject]);
    firstObject = [obj firstObject];
    [-[TIKeyboardExtensionController specifier](selfCopy "specifier")];
    [-[TIKeyboardExtensionController specifier](selfCopy "specifier")];
    specifier2 = [(TIKeyboardExtensionController *)selfCopy specifier];
    v18 = +[TIKeyboardListController keyboardDisplayNameForIdentifier:](TIKeyboardListController, "keyboardDisplayNameForIdentifier:", [firstObject identifier]);
    [specifier2 setProperty:v18 forKey:PSTitleKey];
    [(TIKeyboardExtensionController *)selfCopy setAddExtensionKeyboardController:objc_alloc_init(TIAddExtensionKeyboardController)];
    [(TIAddExtensionKeyboardController *)[(TIKeyboardExtensionController *)selfCopy addExtensionKeyboardController] setSpecifier:[(TIKeyboardExtensionController *)selfCopy specifier]];
    [(TIAddExtensionKeyboardController *)[(TIKeyboardExtensionController *)selfCopy addExtensionKeyboardController] setNetworkAccessSpecifierForKeyboardInputMode:firstObject];
    if ((v10 & 1) != 0 && [(TIAddExtensionKeyboardController *)[(TIKeyboardExtensionController *)selfCopy addExtensionKeyboardController] networkAccessSpecifier])
    {
      [v24 addObject:{-[TIAddExtensionKeyboardController networkAccessSpecifier](-[TIKeyboardExtensionController addExtensionKeyboardController](selfCopy, "addExtensionKeyboardController"), "networkAccessSpecifier")}];
    }

    if ([(TIKeyboardExtensionController *)selfCopy aboutPrivacyController])
    {
      [(TIAboutKeyboardPrivacyController *)[(TIKeyboardExtensionController *)selfCopy aboutPrivacyController] setSpecifier:v22];
    }

    else
    {
      [(TIKeyboardExtensionController *)selfCopy setAboutPrivacyController:[[TIAboutKeyboardPrivacyController alloc] initWithGroupSpecifier:v22 asHeader:0 inListController:selfCopy]];
    }

    [v24 addObjectsFromArray:{+[TIAddExtensionKeyboardController specifiersForExtensionInputMode:parentSpecifier:](TIAddExtensionKeyboardController, "specifiersForExtensionInputMode:parentSpecifier:", objc_msgSend(obj, "firstObject"), -[TIKeyboardExtensionController specifier](selfCopy, "specifier"))}];
    *&selfCopy->PSListController_opaque[v20] = v24;
  }

  return v24;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  [(TIAddExtensionKeyboardController *)[(TIKeyboardExtensionController *)self addExtensionKeyboardController] updateNetworkPolicyState];
  aboutPrivacyController = [(TIKeyboardExtensionController *)self aboutPrivacyController];

  [(TIAboutKeyboardPrivacyController *)aboutPrivacyController addPrivacyLinkViewIfNecessaryToHeaderView:footerView forSection:section];
}

+ (id)keyboardsForBundleID:(id)d
{
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sharedInputModeController = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController sharedInputModeController];
  v6 = [sharedInputModeController countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(sharedInputModeController);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([d isEqualToString:{objc_msgSend(objc_msgSend(v10, "containingBundle"), "bundleIdentifier")}])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [sharedInputModeController countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end