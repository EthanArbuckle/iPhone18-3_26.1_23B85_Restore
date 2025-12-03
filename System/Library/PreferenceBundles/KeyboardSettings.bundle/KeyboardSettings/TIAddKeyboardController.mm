@interface TIAddKeyboardController
+ (BOOL)shouldShowAddKeyboardControllerForInputModes:(id)modes;
- (id)keyboardTypeSpecifiers;
- (id)monolingualSpecifiers;
- (id)multilingualSpecifiers;
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)addCheckedInputModes;
- (void)cancelButtonTapped;
- (void)doneButtonTapped;
- (void)enableMonolingualKeyboards:(id)keyboards;
- (void)enableMultilingualKeyboards:(id)keyboards;
- (void)setSpecifier:(id)specifier;
- (void)toggleInputMode:(id)mode;
- (void)toggleMultilingualInputMode:(id)mode;
- (void)updateDoneButton;
- (void)viewDidLoad;
@end

@implementation TIAddKeyboardController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TIAddKeyboardController;
  [(TIAddKeyboardController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v3] setEstimatedSectionFooterHeight:0.0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    result = [(TIAddKeyboardController *)self newSpecifiers];
    *&self->PSListController_opaque[v3] = result;
  }

  return result;
}

+ (BOOL)shouldShowAddKeyboardControllerForInputModes:(id)modes
{
  if ([modes count] >= 2)
  {
    [modes firstObject];
    if (TIGetAddKeyboardUsesPickerForInputMode())
    {
LABEL_3:
      LOBYTE(v4) = 1;
      return v4;
    }
  }

  LODWORD(v4) = _os_feature_enabled_impl();
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [modes countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
LABEL_7:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(modes);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
        if ([TIUIGetProposedMultilingualSetsForAddingInputMode(NormalizedIdentifier objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController])
        {
          goto LABEL_3;
        }

        if (v5 == ++v7)
        {
          v5 = [modes countByEnumeratingWithState:&v11 objects:v15 count:16];
          LOBYTE(v4) = 0;
          if (v5)
          {
            goto LABEL_7;
          }

          return v4;
        }
      }
    }
  }

  return v4;
}

- (void)setSpecifier:(id)specifier
{
  v16.receiver = self;
  v16.super_class = TIAddKeyboardController;
  [(TIAddKeyboardController *)&v16 setSpecifier:specifier];
  v4 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v5 = +[NSMutableArray array];
  v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSIDKey];
  if (_os_feature_enabled_impl())
  {
    v7 = [TIKeyboardListController supportedBaseInputModesForLanguage:v6];
    if (_os_feature_enabled_impl())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [v5 addObjectsFromArray:{TIUIGetProposedMultilingualSetsForAddingInputMode(*(*(&v12 + 1) + 8 * v11), v4)}];
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
        }

        while (v9);
      }
    }
  }

  [(TIAddKeyboardController *)self setProposedMultilingualInputModes:v5];
}

- (id)newSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if (-[TIAddKeyboardController supportsMultilingual](self, "supportsMultilingual") && ([v3 addObjectsFromArray:{-[TIAddKeyboardController keyboardTypeSpecifiers](self, "keyboardTypeSpecifiers")}], !-[TIAddKeyboardController showsMonolingualOption](self, "showsMonolingualOption")))
  {
    if ([(NSArray *)[(TIAddKeyboardController *)self proposedMultilingualInputModes] count]< 2)
    {
      return v3;
    }

    multilingualSpecifiers = [(TIAddKeyboardController *)self multilingualSpecifiers];
  }

  else
  {
    multilingualSpecifiers = [(TIAddKeyboardController *)self monolingualSpecifiers];
  }

  [v3 addObjectsFromArray:multilingualSpecifiers];
  return v3;
}

- (id)keyboardTypeSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithID:0 name:&stru_49C80];
  [v3 addObject:v4];
  if ([(NSArray *)[(TIAddKeyboardController *)self proposedMultilingualInputModes] count]> 1)
  {
    v11 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"MULTILINGUAL_KEYBOARD_ADD_TITLE" target:&stru_49C80 set:@"Keyboard"] get:self detail:0 cell:0 edit:0, 3, 0];
    [v11 setButtonAction:"enableMultilingualKeyboards:"];
    v12 = PSIDKey;
    [v11 setProperty:@"Multilingual" forKey:PSIDKey];
    [v11 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  }

  else
  {
    firstObject = [(NSArray *)[(TIAddKeyboardController *)self proposedMultilingualInputModes] firstObject];
    v7 = &TUIDictationTitle_ptr;
    if (![(TIAddKeyboardController *)self showsMonolingualOption])
    {
      MultilingualSet = TIUIProposedInputModeGetMultilingualSet(firstObject);
      v15 = TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(MultilingualSet, 0);
      v7 = &TUIDictationTitle_ptr;
      [v4 setProperty:+[NSString localizedStringWithFormat:](NSString forKey:{"localizedStringWithFormat:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_KEYBOARD_ADD_FOOTER", &stru_49C80, @"Keyboard", v15), PSFooterTextGroupKey}];
    }

    Current = TIUIProposedInputModeGetCurrent(firstObject, v6);
    v10 = TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(Current, 0);
    v11 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [v7[402] localizedStringWithFormat:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_KEYBOARD_ADD_TITLE_WITH_LANGUAGE", &stru_49C80, @"Keyboard", v10], self, 0, 0, 0, 3, 0);
    [v11 setButtonAction:"enableMultilingualKeyboards:"];
    [v11 setProperty:firstObject forKey:PSValueKey];
    v12 = PSIDKey;
    [v11 setProperty:@"Multilingual" forKey:PSIDKey];
    [v11 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v11 setUserInfo:&off_4DB98];
  }

  [v3 addObject:v11];
  v13 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_MONOLINGUAL_KEYBOARD_TITLE" target:&stru_49C80 set:@"Keyboard"] get:self detail:0 cell:0 edit:0, 3, 0];
  [v13 setButtonAction:"enableMonolingualKeyboards:"];
  [v13 setProperty:@"Monolingual" forKey:v12];
  [v3 addObject:v13];
  return v3;
}

- (id)multilingualSpecifiers
{
  v17 = objc_alloc_init(NSMutableArray);
  [v17 addObject:{+[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_KEYBOARD_TITLE", &stru_49C80, @"Keyboard", self, 0, 0, 0, 0, 0)}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  obj = [(TIAddKeyboardController *)self proposedMultilingualInputModes];
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    v8 = PSIDKey;
    v9 = PSValueKey;
    v10 = PSAllowMultilineTitleKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        Current = TIUIProposedInputModeGetCurrent(v12, v5);
        v14 = [PSSpecifier preferenceSpecifierNamed:TIUIGetLocalizedConcatenatedLanguageNamesForInputModesWithStyle(Current target:0) set:selfCopy get:0 detail:0 cell:0 edit:3, 0];
        [v14 setButtonAction:"toggleMultilingualInputMode:"];
        [v14 setProperty:@"Multilingual" forKey:v8];
        [v14 setProperty:v12 forKey:v9];
        [v14 setProperty:&__kCFBooleanTrue forKey:v10];
        [v14 setUserInfo:&off_4DBC0];
        [v17 addObject:v14];
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v17;
}

- (id)monolingualSpecifiers
{
  v24 = objc_alloc_init(NSMutableArray);
  v23 = PSIDKey;
  obj = +[TIKeyboardListController supportedBaseInputModesForLanguage:](TIKeyboardListController, "supportedBaseInputModesForLanguage:", [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:?]);
  if ([(TIAddKeyboardController *)self supportsMultilingual])
  {
    v3 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"MONOLINGUAL_KEYBOARD_TITLE", &stru_49C80, @"Keyboard"];
  }

  else
  {
    v3 = 0;
  }

  [v24 addObject:{+[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v3, self, 0, 0, 0, 0, 0)}];
  v26 = [obj count];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v20)
  {
    v19 = *v42;
    v22 = PSEnabledKey;
    do
    {
      v4 = 0;
      do
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = *(*(&v41 + 1) + 8 * v4);
        v6 = [TIKeyboardListController softwareLayoutsForBaseInputMode:v5];
        [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
        v7 = UIKeyboardInputModesMatchingMode();
        SupportedSoftwareMultiscriptLayouts = TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(v5);
        v28 = v6;
        if (![[NSSet isSubsetOfSet:"isSubsetOfSet:" setWithArray:?]
        {
          sub_2C4B0(&v39, v40, &v37, v38);
        }

        v29 = v7;
        if ([v7 count])
        {
          [v7 firstObject];
          DefaultHardwareKeyboardForInputMode = [UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:@"hw"];
        }

        else
        {
          DefaultHardwareKeyboardForInputMode = UIKeyboardGetDefaultHardwareKeyboardForInputMode();
        }

        v27 = DefaultHardwareKeyboardForInputMode;
        if ([v6 count])
        {
          v25 = [v6 count];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v32 = [v6 countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v32)
          {
            v30 = *v34;
            do
            {
              for (i = 0; i != v32; i = i + 1)
              {
                if (*v34 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v10 = *(*(&v33 + 1) + 8 * i);
                if (([SupportedSoftwareMultiscriptLayouts containsObject:v10] & 1) == 0)
                {
                  [UIKeyboardInputModeGetComponentsFromIdentifier() valueForKey:NSLocaleVariantCode];
                  v11 = TUIKeyboardTitle();
                  v12 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v10, &stru_49C80, @"KeyboardLayouts"];
                  v13 = [v11 length];
                  if (v13)
                  {
                    v14 = v11;
                  }

                  else
                  {
                    v14 = v12;
                  }

                  if (v13 && v26 >= 2 && v25 >= 2)
                  {
                    v14 = [NSString stringWithFormat:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"KEYBOARD_VARIANT_%@_WITH_LAYOUT_%@", &stru_49C80, @"Keyboard"], v11, v12];
                  }

                  v15 = UIKeyboardInputModeWithNewSWLayout();
                  if (v27)
                  {
                    v15 = UIKeyboardInputModeWithNewHWLayout();
                  }

                  if ([objc_opt_class() shouldAddInputMode:v15 toEnabledInputModes:v29])
                  {
                    v16 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];
                    [v16 setButtonAction:"toggleInputMode:"];
                    [v16 setProperty:v15 forKey:v23];
                    if ([v29 containsObject:v15])
                    {
                      [v16 setProperty:&__kCFBooleanFalse forKey:v22];
                    }

                    [v24 addObject:v16];
                  }
                }
              }

              v32 = [v28 countByEnumeratingWithState:&v33 objects:v45 count:16];
            }

            while (v32);
          }
        }

        v4 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v20);
  }

  return v24;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = TIAddKeyboardController;
  v6 = [(TIAddKeyboardController *)&v11 tableView:view cellForRowAtIndexPath:?];
  v7 = [(TIAddKeyboardController *)self specifierAtIndex:[(TIAddKeyboardController *)self indexForIndexPath:path]];
  v8 = [v7 propertyForKey:PSIDKey];
  [v6 setAccessibilityIdentifier:v8];
  if ([v6 isUserInteractionEnabled])
  {
    if ([v8 isEqualToString:@"Multilingual"])
    {
      showsMonolingualOption = [(TIAddKeyboardController *)self showsMonolingualOption]^ 1;
    }

    else
    {
      if (![v8 isEqualToString:@"Monolingual"])
      {
        return v6;
      }

      showsMonolingualOption = [(TIAddKeyboardController *)self showsMonolingualOption];
    }
  }

  else
  {
    showsMonolingualOption = 1;
  }

  [v6 setChecked:showsMonolingualOption];
  return v6;
}

- (void)addCheckedInputModes
{
  v15 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v14 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  specifiers = [(TIAddKeyboardController *)self specifiers];
  v4 = [specifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = PSTableCellKey;
    v8 = PSIDKey;
    v13 = PSValueKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(specifiers);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 propertyForKey:{v7, v13}];
        v12 = [v10 propertyForKey:v8];
        if ((![v12 isEqualToString:@"Multilingual"] || -[NSArray count](-[TIAddKeyboardController proposedMultilingualInputModes](selfCopy, "proposedMultilingualInputModes"), "count") <= 1) && (objc_msgSend(v12, "isEqualToString:", @"Monolingual") & 1) == 0 && objc_msgSend(v11, "isChecked"))
        {
          if (_os_feature_enabled_impl() && [objc_msgSend(objc_msgSend(v10 "userInfo")])
          {
            v15 = TIUIGetInputModesByAddingProposedInputMode([v10 propertyForKey:v13], v15);
          }

          else if (([v15 containsObject:v12] & 1) == 0)
          {
            [v14 addObject:v12];
          }
        }
      }

      v5 = [specifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  +[TIKeyboardListController setInputModes:](TIKeyboardListController, "setInputModes:", [v15 arrayByAddingObjectsFromArray:v14]);
}

- (void)updateDoneButton
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  specifiers = [(TIAddKeyboardController *)self specifiers];
  v3 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v6 = PSIDKey;
    v7 = PSTableCellKey;
    v8 = PSEnabledKey;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(specifiers);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 propertyForKey:v6];
        if (([v11 isEqualToString:@"Monolingual"] & 1) == 0 && (!objc_msgSend(v11, "isEqualToString:", @"Multilingual") || -[NSArray count](-[TIAddKeyboardController proposedMultilingualInputModes](self, "proposedMultilingualInputModes"), "count") <= 1))
        {
          v12 = [v10 propertyForKey:v7];
          v13 = [v10 propertyForKey:v8];
          if ([v12 isChecked])
          {
            if (!v13 || ([v13 BOOLValue] & 1) != 0)
            {
              v14 = 1;
              goto LABEL_16;
            }
          }
        }
      }

      v4 = [specifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_16:
  [objc_msgSend(-[TIAddKeyboardController navigationItem](self "navigationItem")];
}

- (void)enableMultilingualKeyboards:(id)keyboards
{
  [(TIAddKeyboardController *)self setShowsMonolingualOption:0];
  [(TIAddKeyboardController *)self reloadSpecifiers];

  [(TIAddKeyboardController *)self updateDoneButton];
}

- (void)enableMonolingualKeyboards:(id)keyboards
{
  [(TIAddKeyboardController *)self setShowsMonolingualOption:1];
  [(TIAddKeyboardController *)self reloadSpecifiers];

  [(TIAddKeyboardController *)self updateDoneButton];
}

- (void)toggleInputMode:(id)mode
{
  v4 = [mode propertyForKey:PSTableCellKey];
  [v4 setChecked:{objc_msgSend(v4, "isChecked") ^ 1}];

  [(TIAddKeyboardController *)self updateDoneButton];
}

- (void)toggleMultilingualInputMode:(id)mode
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  specifiers = [(TIAddKeyboardController *)self specifiers];
  v6 = [specifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = PSTableCellKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(specifiers);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v11 propertyForKey:v9];
        if ([objc_msgSend(objc_msgSend(v11 "userInfo")])
        {
          [v12 setChecked:0];
        }
      }

      v7 = [specifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(TIAddKeyboardController *)self toggleInputMode:mode];
}

- (void)cancelButtonTapped
{
  navigationController = [(TIAddKeyboardController *)self navigationController];

  [navigationController popViewControllerAnimated:1];
}

- (void)doneButtonTapped
{
  [(TIAddKeyboardController *)self addCheckedInputModes];
  parentController = [(TIAddKeyboardController *)self parentController];

  [parentController dismissForDone];
}

@end