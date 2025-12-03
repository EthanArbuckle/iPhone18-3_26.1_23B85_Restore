@interface TIKeyboardListController
+ (id)attributedStringForSymbolName:(id)name;
+ (id)attributedTitleForSymbolName:(id)name cellTitle:(id)title;
+ (id)availableInputModesForLanguage:(id)language;
+ (id)availableSoftwareLayoutsForBaseInputMode:(id)mode;
+ (id)displayNameForHardwareLayout:(id)layout inputMode:(id)mode;
+ (id)inputModes;
+ (id)softwareLayoutsForBaseInputMode:(id)mode;
+ (id)supportedBaseInputModesForLanguage:(id)language;
+ (id)supportedInputModesForLanguage:(id)language;
+ (unint64_t)count;
+ (void)setInputModes:(id)modes;
- (TIKeyboardListController)init;
- (id)specifierForExtensionInputMode:(id)mode;
- (id)specifierForInputMode:(id)mode;
- (id)specifierForMultilingualInputModes:(id)modes;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_writeKeyboards;
- (void)addNewKeyboards:(id)keyboards;
- (void)dealloc;
- (void)emitNavigationEventForKeyboardListController;
- (void)manager:(id)manager didUpdateStatus:(int64_t)status forInputMode:(id)mode;
- (void)reloadSpecifiers;
- (void)removeInputModeWithIdentifier:(id)identifier;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)updateEditButtonState;
- (void)viewDidLoad;
@end

@implementation TIKeyboardListController

- (void)viewDidLoad
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  if (objc_opt_respondsToSelector())
  {
    [v3 setDisableFloatingKeyboardFilter:1];
  }

  v5.receiver = self;
  v5.super_class = TIKeyboardListController;
  [(TIKeyboardListController *)&v5 viewDidLoad];
  v4 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v4] setEstimatedSectionFooterHeight:0.0];
}

- (TIKeyboardListController)init
{
  v5.receiver = self;
  v5.super_class = TIKeyboardListController;
  v2 = [(TIKeyboardListController *)&v5 init];
  v2->_groupSeparator = +[PSSpecifier emptyGroupSpecifier];
  if ([objc_opt_class() showAddNewKeyboardButton])
  {
    v3 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ADD_NEW_KEYBOARD" target:&stru_49C80 set:@"Keyboard"] get:v2 detail:0 cell:0 edit:0, 13, 0];
    v2->_addNewInputModeSpecifier = v3;
    [(PSSpecifier *)v3 setProperty:@"AddNewKeyboard" forKey:PSIDKey];
    [(PSSpecifier *)v2->_addNewInputModeSpecifier setButtonAction:"addNewKeyboards:"];
  }

  [-[TIKeyboardListController navigationItem](v2 "navigationItem")];
  [objc_msgSend(-[TIKeyboardListController navigationItem](v2 "navigationItem")];
  return v2;
}

- (void)dealloc
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  if (objc_opt_respondsToSelector())
  {
    [v3 setDisableFloatingKeyboardFilter:0];
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardListController;
  [(TIKeyboardListController *)&v4 dealloc];
}

- (void)updateEditButtonState
{
  parentController = [(TIKeyboardListController *)self parentController];
  if (objc_opt_respondsToSelector())
  {

    [parentController setNeedsReloadSpecifiers:1];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  if ([path section])
  {
    return 0;
  }

  v8 = [objc_msgSend(view cellForRowAtIndexPath:{path), "specifier"}];
  [v8 propertyForKey:PSIDKey];
  return ([UIKeyboardInputModeGetNormalizedIdentifier() isEqualToString:@"emoji"] & 1) != 0 || self->_numberOfEnabledKeyboards - self->_emojiEnabled > 1;
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  if ([(TIKeyboardListController *)self isEditing:view]&& self->deletingRow)
  {
    [(TIKeyboardListController *)self setEditing:0 animated:1];
  }

  self->deletingRow = 0;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  if ([path section])
  {
    sub_2C58C(a2, self);
  }

  if ([indexPath section])
  {
    sub_2C5E8(a2, self);
  }

  v9 = [path row];
  v10 = [indexPath row];
  v11 = objc_alloc_init(NSMutableArray);
  v12 = OBJC_IVAR___PSListController__specifiers;
  [v11 addObjectsFromArray:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers]];
  v13 = [v11 objectAtIndex:v9 + 1];
  v14 = v13;
  [v11 removeObject:v13];
  [v11 insertObject:v13 atIndex:v10 + 1];

  *&self->PSListController_opaque[v12] = v11;

  [(TIKeyboardListController *)self _writeKeyboards];
}

- (id)specifierForInputMode:(id)mode
{
  v5 = objc_opt_class();
  if ([objc_msgSend(v5 availableSoftwareLayoutsForBaseInputMode:{UIKeyboardInputModeGetNormalizedIdentifier()), "count"}] || (TIInputModeIsChineseShuangpin() & 1) != 0 || TIInputModeIsChineseWubi())
  {
    v6 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  }

  else
  {
    v6 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  }

  v7 = v6;
  [v6 setProperty:mode forKey:PSIDKey];
  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
  return v7;
}

- (id)specifierForMultilingualInputModes:(id)modes
{
  v4 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  firstObject = [modes firstObject];
  [v4 setProperty:firstObject forKey:PSIDKey];
  [v4 setProperty:modes forKey:PSValueKey];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  return v4;
}

- (id)specifierForExtensionInputMode:(id)mode
{
  v5 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v5 setProperty:mode forKey:PSIDKey];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v6 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:mode];
  v23 = v6;
  [v5 setProperty:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", &v23, 1), @"TIKBIdentifiersKey"}];
  v7 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v13 "containingBundle")])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [v5 setProperty:v7 forKey:@"TIKBAllIdentifiersKey"];
  containingBundle = [(UIKeyboardInputMode *)v6 containingBundle];
  v15 = [containingBundle objectForInfoDictionaryKey:_kCFBundleDisplayNameKey];
  if (!v15)
  {
    v15 = [-[UIKeyboardInputMode containingBundle](v6 "containingBundle")];
  }

  [v5 setProperty:v15 forKey:PSTitleKey];
  v16 = objc_alloc_init(TIAddExtensionKeyboardController);
  [(TIAddExtensionKeyboardController *)v16 setParentController:self];
  [(TIAddExtensionKeyboardController *)v16 setSpecifier:v5];
  [v5 setTarget:self];
  if ([-[TIAddExtensionKeyboardController specifiers](v16 "specifiers")])
  {
    [v5 setDetailControllerClass:objc_opt_class()];
    [v5 setCellType:2];
  }

  return v5;
}

- (void)reloadSpecifiers
{
  if (self->_newKeyboardsAdded)
  {
    [(TIKeyboardListController *)self updateEditButtonState];
    self->_newKeyboardsAdded = 0;
  }

  v4.receiver = self;
  v4.super_class = TIKeyboardListController;
  [(TIKeyboardListController *)&v4 reloadSpecifiers];
  v3 = ([(TIKeyboardListController *)self isEditing]& 1) != 0 || self->_numberOfEnabledKeyboards > 1;
  [objc_msgSend(-[TIKeyboardListController navigationItem](self "navigationItem")];
}

- (id)specifiers
{
  v21 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v21)
  {
    return v21;
  }

  v17 = OBJC_IVAR___PSListController__specifiers;
  v3 = objc_alloc_init(NSMutableArray);
  [(TIKeyboardListController *)self setTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"KEYBOARDS_SHORT", &stru_49C80, @"Keyboard"]];
  v21 = v3;
  v16 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:?];
  keyboardsArray = self->_keyboardsArray;
  if (keyboardsArray)
  {
  }

  self->_keyboardsArray = objc_alloc_init(NSMutableArray);
  self->_emojiEnabled = 0;
  self->_numberOfEnabledKeyboards = 0;
  self->_totalKeyboardsCount = [UIKeyboardGetSupportedInputModes() count];
  [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  obj = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v5 = 0;
  if (_os_feature_enabled_impl())
  {
    v5 = +[NSMutableArray array];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v6)
  {
    v18 = 0;
    goto LABEL_30;
  }

  v7 = v6;
  v19 = v5;
  v18 = 0;
  v8 = *v23;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v22 + 1) + 8 * i);
      if (_os_feature_enabled_impl() && (v11 = TIUIGetMultilingualIDFromInputMode(), [v11 length]))
      {
        if ([v19 containsObject:v11])
        {
          continue;
        }

        [v19 addObject:v11];
        MultilingualSetFromInputModes = TIUIInputModeGetMultilingualSetFromInputModes(v10, obj);
      }

      else
      {
        MultilingualSetFromInputModes = 0;
      }

      [(NSMutableArray *)self->_keyboardsArray addObject:v10];
      NormalizedIdentifier = UIKeyboardInputModeGetNormalizedIdentifier();
      if ([+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")])
      {
        if (_os_feature_enabled_impl() && [MultilingualSetFromInputModes count] >= 2)
        {
          v14 = [(TIKeyboardListController *)self specifierForMultilingualInputModes:MultilingualSetFromInputModes];
        }

        else
        {
          v14 = [(TIKeyboardListController *)self specifierForInputMode:v10];
        }

        [v21 addObject:v14];
        if ([NormalizedIdentifier isEqualToString:@"emoji"])
        {
          self->_emojiEnabled = 1;
        }
      }

      else
      {
        if (![UIKeyboardInputMode keyboardInputModeWithIdentifier:v10])
        {
          continue;
        }

        [v21 addObject:{-[TIKeyboardListController specifierForExtensionInputMode:](self, "specifierForExtensionInputMode:", v10)}];
        v18 = 1;
      }

      ++self->_numberOfEnabledKeyboards;
    }

    v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v7);
LABEL_30:
  if ((self->deletingRow || ([(TIKeyboardListController *)self isEditing]& 1) == 0) && ![(TIKeyboardListController *)self allKeyboardsEnabled]&& self->_addNewInputModeSpecifier)
  {
    [v21 addObject:self->_groupSeparator];
    [v21 addObject:self->_addNewInputModeSpecifier];
  }

  if (v18)
  {
    if ([(TIKeyboardListController *)self aboutPrivacyController])
    {
      [(TIAboutKeyboardPrivacyController *)[(TIKeyboardListController *)self aboutPrivacyController] setSpecifier:v16];
    }

    else
    {
      [(TIKeyboardListController *)self setAboutPrivacyController:[[TIAboutKeyboardPrivacyController alloc] initWithGroupSpecifier:v16 asHeader:0 inListController:self]];
    }
  }

  *&self->PSListController_opaque[v17] = v21;
  return v21;
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  aboutPrivacyController = [(TIKeyboardListController *)self aboutPrivacyController];

  [(TIAboutKeyboardPrivacyController *)aboutPrivacyController addPrivacyLinkViewIfNecessaryToHeaderView:footerView forSection:section];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = TIKeyboardListController;
  v6 = [(TIKeyboardListController *)&v9 tableView:view cellForRowAtIndexPath:?];
  v7 = [(TIKeyboardListController *)self specifierAtIndex:[(TIKeyboardListController *)self indexForIndexPath:path]];
  [v6 setAccessibilityIdentifier:{objc_msgSend(v7, "propertyForKey:", PSIDKey)}];
  return v6;
}

- (void)addNewKeyboards:(id)keyboards
{
  v5 = objc_alloc_init(TIAddKeyboardLanguageListSetupController);
  [(TIAddKeyboardLanguageListSetupController *)v5 setParentController:self];
  [(TIAddKeyboardLanguageListSetupController *)v5 setSpecifier:keyboards];
  [keyboards setTarget:self];

  [(TIKeyboardListController *)self showController:v5];
}

- (void)_writeKeyboards
{
  v21 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = PSIDKey;
    v8 = &selRef_setCheckSpellingPreferenceValue_forSpecifier_;
    v9 = "TextInputCore";
    v10 = "multilingual_keyboard";
    do
    {
      v11 = 0;
      v20 = v5;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v12 = [*(*(&v22 + 1) + 8 * v11) propertyForKey:{v7, v20}];
        if ([*&self->PSListController_opaque[*(v8 + 446)] containsObject:v12])
        {
          if (_os_feature_enabled_impl())
          {
            v13 = v7;
            v14 = v6;
            v15 = v8;
            v16 = v3;
            v17 = v10;
            v18 = v9;
            MultilingualSet = TIUIInputModeGetMultilingualSet(v12);
            if ([MultilingualSet count] < 2)
            {
              [v21 addObject:v12];
            }

            else
            {
              [v21 addObjectsFromArray:MultilingualSet];
            }

            v9 = v18;
            v10 = v17;
            v3 = v16;
            v8 = v15;
            v6 = v14;
            v7 = v13;
            v5 = v20;
          }

          else
          {
            [v21 addObject:v12];
          }
        }

        v11 = v11 + 1;
      }

      while (v5 != v11);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  [objc_opt_class() setInputModes:v21];
  if ([(TIKeyboardListController *)self allKeyboardsEnabled])
  {
    if (self->_addNewInputModeSpecifier)
    {
      [(TIKeyboardListController *)self removeSpecifier:self->_groupSeparator animated:1];
      [(TIKeyboardListController *)self removeSpecifier:self->_addNewInputModeSpecifier animated:1];
    }
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:{objc_msgSend(path, "row", view) + 1}];
    -[TIKeyboardListController removeInputModeWithIdentifier:](self, "removeInputModeWithIdentifier:", [v6 propertyForKey:PSIDKey]);
    [(TIKeyboardListController *)self removeSpecifier:v6 animated:1];
    [(TIKeyboardListController *)self updateEditButtonState];
    if ([(TIKeyboardListController *)self isEditing]&& self->_numberOfEnabledKeyboards == 1)
    {

      [(TIKeyboardListController *)self setEditing:0 animated:1];
    }

    else
    {

      [(TIKeyboardListController *)self reloadSpecifiers];
    }
  }
}

- (void)removeInputModeWithIdentifier:(id)identifier
{
  if (identifier)
  {
    [(NSMutableArray *)self->_keyboardsArray removeObject:?];
    --self->_numberOfEnabledKeyboards;
    [(TIKeyboardListController *)self _writeKeyboards];
    NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
    if (NormalizedIdentifier)
    {
      v5 = NormalizedIdentifier;
      v6 = +[TIPreferencesController sharedPreferencesController];
      v7 = TIKeyboardLastUsedForLanguagePreference;
      v8 = [objc_msgSend(v6 valueForPreferenceKey:{TIKeyboardLastUsedForLanguagePreference), "mutableCopy"}];
      if (v8)
      {
        v9 = v8;
        v10 = +[NSMutableArray array];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v17 + 1) + 8 * i);
              [v9 objectForKey:v15];
              if ([TIInputModeGetNormalizedIdentifier() isEqualToString:v5])
              {
                [v10 addObject:v15];
              }
            }

            v12 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v12);
        }

        [v9 removeObjectsForKeys:v10];
        if ([v9 count])
        {
          v16 = v9;
        }

        else
        {
          v16 = 0;
        }

        [+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")];
      }
    }
  }
}

- (void)manager:(id)manager didUpdateStatus:(int64_t)status forInputMode:(id)mode
{
  v9 = KeyboardSettingsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138413058;
    managerCopy = manager;
    v12 = 2112;
    v13 = [NSNumber numberWithInteger:status];
    v14 = 2112;
    modeCopy = mode;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Asset status manager %@ did update status for input mode %@ to %@ (delegate = %@)", &v10, 0x2Au);
  }

  [(TIKeyboardListController *)self reloadSpecifiers];
}

+ (unint64_t)count
{
  if (_os_feature_enabled_impl())
  {

    return TIUIGetCountOfUserVisibleInputModes();
  }

  else
  {
    inputModes = [self inputModes];

    return [inputModes count];
  }
}

+ (id)inputModes
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];

  return [v2 enabledInputModeIdentifiers];
}

+ (void)setInputModes:(id)modes
{
  v4 = +[UIKeyboardImpl sharedInstance];
  [(UIKeyboardImpl *)v4 saveInputModesPreference:modes];

  [(UIKeyboardImpl *)v4 setShouldUpdateCacheOnInputModesChange:1];
}

+ (id)supportedBaseInputModesForLanguage:(id)language
{
  if (!language)
  {
    return 0;
  }

  [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v4 = [+[TIInputModeController sharedInputModeController](TIInputModeController "sharedInputModeController")];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_13764;
  v6[3] = &unk_492C0;
  v6[4] = language;
  return [v4 objectsAtIndexes:{objc_msgSend(v4, "indexesOfObjectsPassingTest:", v6)}];
}

+ (id)softwareLayoutsForBaseInputMode:(id)mode
{
  SupportedSoftwareKeyboardsForInputMode = UIKeyboardGetSupportedSoftwareKeyboardsForInputMode();
  if (([mode isEqualToString:@"ja_JP-Kana"] & 1) != 0 || objc_msgSend(mode, "isEqualToString:", @"ja_JP"))
  {
    firstObject = [SupportedSoftwareKeyboardsForInputMode firstObject];
    if (firstObject)
    {
      v7 = firstObject;
      return [NSArray arrayWithObjects:&v7 count:1];
    }

    return SupportedSoftwareKeyboardsForInputMode;
  }

  if (!TIInputModeIsChineseShuangpin())
  {
    return SupportedSoftwareKeyboardsForInputMode;
  }

  return TIFilteredLayoutsByCurrentShuangpinType(SupportedSoftwareKeyboardsForInputMode);
}

+ (id)supportedInputModesForLanguage:(id)language
{
  v5 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  obj = [self supportedBaseInputModesForLanguage:language];
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v17 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v6;
        v7 = *(*(&v25 + 1) + 8 * v6);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [selfCopy softwareLayoutsForBaseInputMode:v7];
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * i);
              if ([(__CFString *)v13 hasPrefix:@"Kana"])
              {
                v13 = @"Kana";
              }

              [objc_msgSend(UIKeyboardInputModeGetComponentsFromIdentifier() "mutableCopy")];
              IdentifierFromComponents = UIKeyboardInputModeGetIdentifierFromComponents();
              if (([v5 containsObject:IdentifierFromComponents] & 1) == 0)
              {
                [v5 addObject:IdentifierFromComponents];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }

        v6 = v20 + 1;
      }

      while ((v20 + 1) != v19);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  return v5;
}

+ (id)availableInputModesForLanguage:(id)language
{
  v5 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v6 = [objc_msgSend(self supportedInputModesForLanguage:{language), "mutableCopy"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (!_os_feature_enabled_impl() || [TIUIInputModeGetMultilingualSet(v11) count] <= 1)
        {
          v12 = [UIKeyboardInputModeGetComponentsFromIdentifier() mutableCopy];
          [v12 removeObjectForKey:@"hw"];
          if ([objc_msgSend(v12 objectForKey:{@"sw", "hasPrefix:", @"Kana"}])
          {
            [v12 setObject:@"Kana" forKey:@"sw"];
          }

          [v6 removeObject:UIKeyboardInputModeGetIdentifierFromComponents()];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)availableSoftwareLayoutsForBaseInputMode:(id)mode
{
  v4 = [UIKeyboardGetSupportedSoftwareKeyboardsForInputMode() mutableCopy];
  if (TIInputModeIsChineseShuangpin())
  {
    v4 = [(NSMutableArray *)TIFilteredLayoutsByCurrentShuangpinType(v4) mutableCopy];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = +[TIKeyboardListController inputModes];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([mode isEqualToString:UIKeyboardInputModeGetNormalizedIdentifier()])
        {
          v11 = [UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
          if ([mode hasPrefix:@"ja_JP"] && (objc_msgSend(v11, "_containsSubstring:", @"Kana") & 1) != 0)
          {
            [v4 removeAllObjects];
            return v4;
          }

          [v4 removeObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

+ (id)displayNameForHardwareLayout:(id)layout inputMode:(id)mode
{
  layoutCopy = layout;
  if ([layout isEqualToString:@"Automatic"])
  {
    v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Automatic", &stru_49C80, @"KeyboardLayouts"];
    layoutCopy = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_56998;
  if (qword_56998 || (v8 = [UISystemRootDirectory() stringByAppendingPathComponent:@"System/Library/KeyboardLayouts/USBKeyboardLayouts.bundle"], v7 = +[NSBundle bundleWithPath:](NSBundle, "bundleWithPath:", objc_msgSend(v8, "stringByResolvingSymlinksInPath")), (qword_56998 = v7) != 0) || (NSLog(@"%s: Error: could not locate bundle at '%@'", "+[TIKeyboardListController displayNameForHardwareLayout:inputMode:]", v8), (v7 = qword_56998) != 0))
  {
    layoutCopy = [(NSBundle *)v7 localizedStringForKey:layoutCopy value:0 table:@"InfoPlist"];
    if (v6)
    {
      return [NSString localizedStringWithFormat:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"%@ — %@", &stru_49C80, @"Automatic - <Resolved Keyboard Layout Name>"], v6, layoutCopy];
    }
  }

  else if (v6)
  {
    return v6;
  }

  return layoutCopy;
}

+ (id)attributedTitleForSymbolName:(id)name cellTitle:(id)title
{
  v6 = objc_alloc_init(NSMutableAttributedString);
  if (name)
  {
    v7 = [objc_opt_class() attributedStringForSymbolName:name];
    if (v7)
    {
      v8 = v7;
      if ([+[UIApplication userInterfaceLayoutDirection]== &dword_0 + 1 sharedApplication]
      {
        [v6 appendAttributedString:{objc_msgSend([NSAttributedString alloc], "initWithString:", @"\u200F"}];
      }

      [v6 appendAttributedString:{objc_msgSend([NSAttributedString alloc], "initWithString:", @"\t⁨"}];
      [v6 appendAttributedString:v8];
      [v6 appendAttributedString:{objc_msgSend([NSAttributedString alloc], "initWithString:", @"⁩\t"}];
    }
  }

  [v6 appendAttributedString:{objc_msgSend([NSAttributedString alloc], "initWithString:", title)}];
  v9 = [+[NSParagraphStyle defaultParagraphStyle](NSParagraphStyle mutableCopy];
  v13[0] = [[NSTextTab alloc] initWithTextAlignment:4 location:&__NSDictionary0__struct options:0.0];
  v13[1] = [[NSTextTab alloc] initWithTextAlignment:1 location:&__NSDictionary0__struct options:10.0];
  v13[2] = [[NSTextTab alloc] initWithTextAlignment:4 location:&__NSDictionary0__struct options:28.0];
  [v9 setTabStops:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v13, 3)}];
  v11 = NSParagraphStyleAttributeName;
  v12 = v9;
  [v6 addAttributes:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary range:{"dictionaryWithObjects:forKeys:count:", &v12, &v11, 1), 0, objc_msgSend(v6, "length")}];
  return v6;
}

+ (id)attributedStringForSymbolName:(id)name
{
  v4 = [[NSAttributedString alloc] initWithString:name];
  v5 = [[UIImage systemImageNamed:?], "imageWithRenderingMode:", 2];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [[NSTextAttachment alloc] initWithData:0 ofType:0];
  [v7 setImage:v6];
  if (![v7 image])
  {
    return v4;
  }

  return [NSAttributedString attributedStringWithAttachment:v7];
}

- (void)emitNavigationEventForKeyboardListController
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/KEYBOARDS"];
  v4 = +[KeyboardController localizedStringForGeneralKeyboardSpecifier];
  -[TIKeyboardListController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", [[_NSLocalizedStringResource alloc] initWithKey:@"KEYBOARDS_SHORT" table:@"Keyboard" locale:+[NSLocale currentLocale](NSLocale bundleURL:{"currentLocale"), -[NSBundle bundleURL](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "bundleURL")}], +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v4, 2), v3);
}

@end