@interface TISoftwareLayoutDetailControllerViewController
- (NSArray)multilingualSet;
- (NSString)inputMode;
- (id)newSpecifiers;
- (id)newSpecifiersForChineseShuangpin;
- (id)newSpecifiersForChineseWubi;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_adjustSpecifiersCheckedStateIfNecessary;
- (void)dealloc;
- (void)reloadKeyboardSpecifiers;
- (void)reloadSoftwareLayoutSpecifiersWithMultilingualSet:(id)set;
- (void)removeInputModeInMultilingualSet:(id)set;
- (void)setShuangpinType:(id)type;
- (void)setSoftwareLayout:(id)layout;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTitle;
- (void)viewDidLoad;
@end

@implementation TISoftwareLayoutDetailControllerViewController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TISoftwareLayoutDetailControllerViewController;
  [(TISoftwareLayoutDetailControllerViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TISoftwareLayoutDetailControllerViewController;
  [(TISoftwareLayoutDetailControllerViewController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v3] setEstimatedSectionFooterHeight:0.0];
}

- (void)updateTitle
{
  if ([(NSArray *)[(TISoftwareLayoutDetailControllerViewController *)self multilingualSet] count]< 2)
  {
    [(TISoftwareLayoutDetailControllerViewController *)self inputMode];
    v3 = [TIKeyboardListController keyboardDisplayNameForIdentifier:TIInputModeGetLanguageWithRegion()];
  }

  else
  {
    v3 = TIUIGetLocalizedConcatenatedLanguageNamesForInputModes([(TISoftwareLayoutDetailControllerViewController *)self multilingualSet]);
  }

  v4 = v3;
  navigationItem = [(TISoftwareLayoutDetailControllerViewController *)self navigationItem];

  [navigationItem setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    result = [(TISoftwareLayoutDetailControllerViewController *)self newSpecifiers];
    *&self->PSListController_opaque[v3] = result;
  }

  return result;
}

- (id)newSpecifiers
{
  [(TISoftwareLayoutDetailControllerViewController *)self inputMode];
  if (TIInputModeIsChineseShuangpin())
  {

    return [(TISoftwareLayoutDetailControllerViewController *)self newSpecifiersForChineseShuangpin];
  }

  if (!TIInputModeIsChineseWubi())
  {
    NormalizedIdentifier = UIKeyboardInputModeGetNormalizedIdentifier();
    v69 = [UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
    multilingualSet = [(TISoftwareLayoutDetailControllerViewController *)self multilingualSet];
    if (_os_feature_enabled_impl())
    {
      v4 = [(NSArray *)multilingualSet count]> 1;
    }

    else
    {
      v4 = 0;
    }

    UIKeyboardInputModeGetNormalizedIdentifier();
    v5 = [NSMutableOrderedSet orderedSetWithArray:UIKeyboardGetSupportedSoftwareKeyboardsForInputMode()];
    v68 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableOrderedSet count](v5, "count") + 1}];
    if (_os_feature_enabled_impl())
    {
      v6 = [TIUIGetAddableInputModesForMultilingualSet(multilingualSet) count] != 0;
    }

    else
    {
      v6 = 0;
    }

    [(TISoftwareLayoutDetailControllerViewController *)self setShowingLanguagesSection:v6 || v4];
    if (_os_feature_enabled_impl())
    {
      IsMultiscriptInput = TIUIMultilingualSetIsMultiscriptInput(multilingualSet, 0);
    }

    else
    {
      IsMultiscriptInput = 0;
    }

    v7 = UIKeyboardInputModeGetNormalizedIdentifier();
    v61 = [NSOrderedSet orderedSetWithArray:TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(v7)];
    if (![(NSOrderedSet *)v61 isSubsetOfOrderedSet:v5])
    {
      sub_2C728();
    }

    v60 = v6 || v4;
    if (v6 || v4)
    {
      if (IsMultiscriptInput)
      {
        v5 = [(NSOrderedSet *)v61 mutableCopy];
      }

      else if ((TIUIMultilingualSetContainsTransliterationInputModes(multilingualSet) & 1) == 0)
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v8 = [(NSArray *)multilingualSet countByEnumeratingWithState:&v86 objects:v95 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v87;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v87 != v10)
              {
                objc_enumerationMutation(multilingualSet);
              }

              v12 = *(*(&v86 + 1) + 8 * i);
              UIKeyboardInputModeGetNormalizedIdentifier();
              [(NSMutableOrderedSet *)v5 addObjectsFromArray:UIKeyboardGetSupportedSoftwareKeyboardsForInputMode()];
            }

            v9 = [(NSArray *)multilingualSet countByEnumeratingWithState:&v86 objects:v95 count:16];
          }

          while (v9);
        }
      }

      v57 = NormalizedIdentifier;
      v59 = [PSSpecifier groupSpecifierWithID:0];
      obj = v5;
      v54 = v6;
      v55 = v4;
      if (v4)
      {
        v13 = [(NSArray *)multilingualSet count]!= &dword_0 + 2 || v6;
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        if (v13)
        {
          v15 = @"MULTILINGUAL_DETAIL_FOOTER_3";
        }

        else
        {
          v15 = @"MULTILINGUAL_DETAIL_FOOTER_2";
        }
      }

      else
      {
        v14 = [NSBundle bundleForClass:objc_opt_class()];
        v15 = @"MULTILINGUAL_DETAIL_FOOTER_1";
      }

      v16 = [(NSBundle *)v14 localizedStringForKey:v15 value:&stru_49C80 table:@"Keyboard"];
      [v59 setProperty:v16 forKey:PSFooterTextGroupKey];
      [v68 addObject:v59];
      [(NSArray *)multilingualSet firstObject];
      +[NSLocale preferredLanguages];
      MultilingualSetFromInputModesWithPreferredLanguages = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();
      v82 = 0u;
      v83 = 0u;
      v56 = multilingualSet;
      if ([(NSArray *)MultilingualSetFromInputModesWithPreferredLanguages count])
      {
        v18 = MultilingualSetFromInputModesWithPreferredLanguages;
      }

      else
      {
        v18 = multilingualSet;
      }

      v84 = 0uLL;
      v85 = 0uLL;
      v19 = [(NSArray *)v18 countByEnumeratingWithState:&v82 objects:v94 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v83;
        v22 = PSIDKey;
        v23 = PSValueKey;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v83 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v82 + 1) + 8 * j);
            if ((TIInputModeIsMultilingualOnly() & 1) == 0)
            {
              v26 = [PSSpecifier preferenceSpecifierNamed:[TIKeyboardListController keyboardDisplayNameForIdentifier:TIInputModeGetLanguageWithRegion()] target:0 set:0 get:0 detail:0 cell:3 edit:0];
              [v26 setProperty:v25 forKey:v22];
              [v26 setProperty:@"language" forKey:v23];
              [v68 addObject:v26];
            }
          }

          v20 = [(NSArray *)v18 countByEnumeratingWithState:&v82 objects:v94 count:16];
        }

        while (v20);
      }

      if (v54)
      {
        v27 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"MULTILINGUAL_DETAIL_ADD_LANGUAGE", &stru_49C80, @"Keyboard"];
        v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        [v28 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
        [v68 addObject:v28];
      }

      v5 = obj;
      multilingualSet = v56;
      NormalizedIdentifier = v57;
      v4 = v55;
    }

    else
    {
      v59 = 0;
    }

    obja = v5;
    if (v4)
    {
      v29 = +[UIKeyboardInputMode multilingualSetsFromInputModeIdentifiers:](UIKeyboardInputMode, "multilingualSetsFromInputModeIdentifiers:", +[TIKeyboardListController inputModes]);
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v30 = [v29 countByEnumeratingWithState:&v78 objects:v93 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v79;
        do
        {
          for (k = 0; k != v31; k = k + 1)
          {
            if (*v79 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [*(*(&v78 + 1) + 8 * k) identifier];
            MultilingualSet = TIInputModeGetMultilingualSet();
            if (TIUIGetMultlingualSetsAreEqual(multilingualSet, MultilingualSet))
            {
              [MultilingualSet firstObject];
              v35 = [UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
              if (([v35 isEqualToString:v69] & 1) == 0)
              {
                [(NSMutableOrderedSet *)v5 removeObject:v35];
              }
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v78 objects:v93 count:16];
        }

        while (v31);
      }
    }

    else
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v36 = +[TIKeyboardListController inputModes];
      v37 = [v36 countByEnumeratingWithState:&v74 objects:v92 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v75;
        do
        {
          for (m = 0; m != v38; m = m + 1)
          {
            if (*v75 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v74 + 1) + 8 * m);
            if (!_os_feature_enabled_impl() || [TIUIInputModeGetMultilingualSet(v41) count] <= 1)
            {
              if ([NormalizedIdentifier isEqualToString:UIKeyboardInputModeGetNormalizedIdentifier()])
              {
                v42 = [UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:@"sw"];
                if (([v42 isEqualToString:v69] & 1) == 0)
                {
                  [(NSMutableOrderedSet *)v5 removeObject:v42];
                }
              }
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v74 objects:v92 count:16];
        }

        while (v38);
      }
    }

    v43 = v60;
    if ((IsMultiscriptInput & 1) == 0)
    {
      [(NSMutableOrderedSet *)v5 minusOrderedSet:v61];
    }

    v44 = [(NSMutableOrderedSet *)v5 count];
    if (v44 < 2)
    {
      v64 = 0;
    }

    else
    {
      v45 = [PSSpecifier groupSpecifierWithID:0];
      [v45 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      v64 = v45;
      [v68 addObject:v45];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v46 = [(NSMutableOrderedSet *)obja countByEnumeratingWithState:&v70 objects:v91 count:16];
      if (!v46)
      {
        goto LABEL_94;
      }

      v47 = v46;
      v58 = v44;
      v48 = *v71;
      v49 = PSIDKey;
      v62 = PSRadioGroupCheckedSpecifierKey;
      do
      {
        for (n = 0; n != v47; n = n + 1)
        {
          if (*v71 != v48)
          {
            objc_enumerationMutation(obja);
          }

          v51 = *(*(&v70 + 1) + 8 * n);
          v52 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v51 target:&stru_49C80 set:@"KeyboardLayouts"] get:self detail:0 cell:0 edit:0, 3, 0];
          [v52 setProperty:v51 forKey:v49];
          if ([v69 isEqualToString:v51])
          {
            [v64 setProperty:v52 forKey:v62];
          }

          [v68 addObject:v52];
        }

        v47 = [(NSMutableOrderedSet *)obja countByEnumeratingWithState:&v70 objects:v91 count:16];
      }

      while (v47);
      v43 = v60;
      v44 = v58;
    }

    if (!v43 && v44 <= 1)
    {
      sub_2C7B8(v68, &v90);
      return v90;
    }

LABEL_94:
    if (v44 >= 2 && v43)
    {
      [v59 setName:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_DETAIL_LANGUAGES_TITLE", &stru_49C80, @"Keyboard"}];
      [v64 setName:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"MULTILINGUAL_DETAIL_LAYOUTS_TITLE", &stru_49C80, @"Keyboard"}];
    }

    return v68;
  }

  return [(TISoftwareLayoutDetailControllerViewController *)self newSpecifiersForChineseWubi];
}

- (id)newSpecifiersForChineseShuangpin
{
  v3 = TIGetShuangpinTypes();
  v4 = TIGetCurrentShuangpinType();
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count") + 1}];
  v6 = [PSSpecifier groupSpecifierWithID:0];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v17 = v6;
  [v5 addObject:v6];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v7 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = PSIDKey;
    v16 = PSRadioGroupCheckedSpecifierKey;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        integerValue = [v12 integerValue];
        v14 = [PSSpecifier preferenceSpecifierNamed:TIGetShuangpinNameFromType(integerValue) target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v14 setProperty:objc_msgSend(v12 forKey:{"stringValue"), v10}];
        if (v4 == integerValue)
        {
          [v17 setProperty:v14 forKey:v16];
        }

        [v5 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)newSpecifiersForChineseWubi
{
  v3 = TIGetWubiStandards();
  v4 = TIGetCurrentWubiStandard();
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count") + 1}];
  v6 = [PSSpecifier groupSpecifierWithID:0];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v17 = v6;
  [v5 addObject:v6];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v7 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = PSIDKey;
    v16 = PSRadioGroupCheckedSpecifierKey;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        integerValue = [v12 integerValue];
        v14 = [PSSpecifier preferenceSpecifierNamed:TIGetWubiStandardName(integerValue) target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v14 setProperty:objc_msgSend(v12 forKey:{"stringValue"), v10}];
        if (v4 == integerValue)
        {
          [v17 setProperty:v14 forKey:v16];
        }

        [v5 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = TISoftwareLayoutDetailControllerViewController;
  [TISoftwareLayoutDetailControllerViewController tableView:"tableView:didSelectRowAtIndexPath:" didSelectRowAtIndexPath:?];
  v7 = [view cellForRowAtIndexPath:path];
  if (v7)
  {
    v8 = v7;
    [(TISoftwareLayoutDetailControllerViewController *)self inputMode];
    if (TIInputModeIsChineseShuangpin())
    {
      specifier = [v8 specifier];
      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_msgSend(specifier propertyForKey:{PSIDKey), "integerValue"}]);
      if (v10)
      {
        [(TISoftwareLayoutDetailControllerViewController *)self setShuangpinType:v10];
      }
    }

    else
    {
      [(TISoftwareLayoutDetailControllerViewController *)self inputMode];
      v11 = TIInputModeIsChineseWubi();
      specifier2 = [v8 specifier];
      v13 = [specifier2 propertyForKey:PSIDKey];
      v14 = v13;
      if (v11)
      {
        if (v13)
        {
          -[TISoftwareLayoutDetailControllerViewController setWubiStandard:](self, "setWubiStandard:", [v13 integerValue]);
        }
      }

      else if ([v13 length])
      {
        [(TISoftwareLayoutDetailControllerViewController *)self setSoftwareLayout:v14];
      }
    }
  }
}

- (NSString)inputMode
{
  result = self->_inputMode;
  if (!result)
  {
    specifier = [(TISoftwareLayoutDetailControllerViewController *)self specifier];
    result = [objc_msgSend(specifier propertyForKey:{PSIDKey), "copy"}];
    self->_inputMode = result;
  }

  return result;
}

- (NSArray)multilingualSet
{
  result = self->_multilingualSet;
  if (!result)
  {
    specifier = [(TISoftwareLayoutDetailControllerViewController *)self specifier];
    v5 = [specifier propertyForKey:PSValueKey];
    if (!v5)
    {
      inputMode = [(TISoftwareLayoutDetailControllerViewController *)self inputMode];
      v5 = [NSArray arrayWithObjects:&inputMode count:1];
    }

    result = v5;
    self->_multilingualSet = result;
  }

  return result;
}

- (void)setSoftwareLayout:(id)layout
{
  v5 = [+[TIKeyboardListController inputModes](TIKeyboardListController "inputModes")];
  if ([v5 count])
  {
    v6 = [v5 indexOfObject:{-[TISoftwareLayoutDetailControllerViewController inputMode](self, "inputMode")}];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      if (_os_feature_enabled_impl() && [(NSArray *)[(TISoftwareLayoutDetailControllerViewController *)self multilingualSet] count]>= 2)
      {
        [(TISoftwareLayoutDetailControllerViewController *)self inputMode];
        MultilingualID = TIInputModeGetMultilingualID();
        if (![MultilingualID length] || !objc_msgSend(v5, "count"))
        {
          return;
        }

        v9 = 0;
        v10 = 0x7FFFFFFFFFFFFFFFLL;
        while (1)
        {
          [v5 objectAtIndexedSubscript:v9];
          if ([TIInputModeGetMultilingualID() isEqualToString:MultilingualID])
          {
            if (v10 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v10 = v9;
            }

            [v5 objectAtIndexedSubscript:v9];
            UIKeyboardInputModeGetNormalizedIdentifier();
            if ([UIKeyboardGetSupportedSoftwareKeyboardsForInputMode() containsObject:layout])
            {
              [v5 objectAtIndexedSubscript:v9];
              v11 = UIKeyboardInputModeWithNewSWLayout();
              if (v9 == v10)
              {
                [v5 replaceObjectAtIndex:v9 withObject:v11];
                goto LABEL_25;
              }

              if (v9 > v10)
              {
                break;
              }
            }
          }

          if (++v9 >= [v5 count])
          {
            return;
          }
        }

        [v5 removeObjectAtIndex:v9];
        [v5 insertObject:v11 atIndex:v10];
LABEL_25:
        [(TISoftwareLayoutDetailControllerViewController *)self setInputMode:v11];
        [(TISoftwareLayoutDetailControllerViewController *)self setMultilingualSet:TIInputModeGetMultilingualSetFromInputModes()];
      }

      else
      {
        [(TISoftwareLayoutDetailControllerViewController *)self inputMode];
        v12 = [UIKeyboardInputModeGetComponentsFromIdentifier() mutableCopy];
        v13 = [v12 objectForKey:@"sw"];
        if (v13 && ([v13 isEqualToString:layout] & 1) != 0)
        {
          return;
        }

        [v12 setObject:layout forKey:@"sw"];
        IdentifierFromComponents = UIKeyboardInputModeGetIdentifierFromComponents();
        [v5 replaceObjectAtIndex:v7 withObject:IdentifierFromComponents];
        [(TISoftwareLayoutDetailControllerViewController *)self setInputMode:IdentifierFromComponents];
      }

      [TIKeyboardListController setInputModes:v5];
    }
  }
}

- (void)setShuangpinType:(id)type
{
  v5 = +[TIPreferencesController sharedPreferencesController];
  [v5 setValue:type forPreferenceKey:TIShuangpinTypePreference];
  TIUpdateShuangpinSWLayout();

  [(TISoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
}

- (void)removeInputModeInMultilingualSet:(id)set
{
  v4 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  setCopy = set;
  NormalizedIdentifier = TIInputModeGetNormalizedIdentifier();
  obj = TIUIGetPairedInputModesForInputMode(NormalizedIdentifier);
  v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        multilingualSet = [(TISoftwareLayoutDetailControllerViewController *)self multilingualSet];
        v12 = [(NSArray *)multilingualSet countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(multilingualSet);
              }

              v16 = *(*(&v28 + 1) + 8 * j);
              if ([TIInputModeGetNormalizedIdentifier() isEqualToString:v10])
              {
                [v4 addObject:v16];
              }
            }

            v13 = [(NSArray *)multilingualSet countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v27 = 0;
  if (TIUIMultilingualSetIsMultiscriptInput([(TISoftwareLayoutDetailControllerViewController *)self multilingualSet], &v27))
  {
    if ([v4 count])
    {
      sub_2C890();
    }

    v17 = [(NSArray *)[(TISoftwareLayoutDetailControllerViewController *)self multilingualSet] copy];
    [v17 firstObject];
    v18 = UIKeyboardInputModeGetNormalizedIdentifier();
    firstObject = [UIKeyboardGetSupportedSoftwareKeyboardsForInputMode() firstObject];
    if ([TIUIKeyboardGetSupportedSoftwareMultiscriptLayouts(v18) containsObject:firstObject])
    {
      sub_2C920();
    }

    v36 = UIKeyboardInputModeWithNewSWLayout();
    v20 = [NSArray arrayWithObjects:&v36 count:1];
  }

  else
  {
    v20 = &__NSArray0__struct;
    v17 = &__NSArray0__struct;
  }

  if (v27 == 1)
  {
    sub_2C9B0();
  }

  v21 = [(NSArray *)[(TISoftwareLayoutDetailControllerViewController *)self multilingualSet] mutableCopy];
  [v21 removeObject:v24];
  [v21 removeObjectsInArray:v4];
  [v21 removeObjectsInArray:v17];
  [v21 addObjectsFromArray:v20];
  -[TISoftwareLayoutDetailControllerViewController setInputMode:](self, "setInputMode:", [v21 firstObject]);
  [(TISoftwareLayoutDetailControllerViewController *)self setMultilingualSet:v21];
  v22 = [+[TIKeyboardListController inputModes](TIKeyboardListController "inputModes")];
  [v22 removeObject:v24];
  [v22 removeObjectsInArray:v4];
  [v22 removeObjectsInArray:v17];
  [v22 addObjectsFromArray:v20];
  [TIKeyboardListController setInputModes:v22];
  [(TISoftwareLayoutDetailControllerViewController *)self reloadSpecifiers];
  [(TISoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
  [(TISoftwareLayoutDetailControllerViewController *)self updateTitle];
}

- (void)reloadKeyboardSpecifiers
{
  v2 = [-[TISoftwareLayoutDetailControllerViewController parentController](self "parentController")];
  if (objc_opt_respondsToSelector())
  {

    [v2 setNeedsReloadSpecifiers:1];
  }
}

- (void)reloadSoftwareLayoutSpecifiersWithMultilingualSet:(id)set
{
  -[TISoftwareLayoutDetailControllerViewController setInputMode:](self, "setInputMode:", [set firstObject]);
  [(TISoftwareLayoutDetailControllerViewController *)self setMultilingualSet:set];
  [(TISoftwareLayoutDetailControllerViewController *)self reloadSpecifiers];
  [(TISoftwareLayoutDetailControllerViewController *)self _adjustSpecifiersCheckedStateIfNecessary];

  [(TISoftwareLayoutDetailControllerViewController *)self reloadKeyboardSpecifiers];
}

- (void)_adjustSpecifiersCheckedStateIfNecessary
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  visibleCells = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] visibleCells];
  v3 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = PSValueKey;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(visibleCells);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v8 isChecked])
          {
            sub_2CA40(&v10, v11, v9, &v9[0].isa + 1);
          }

          if ([v8 isChecked])
          {
            if ([objc_msgSend(objc_msgSend(v8 "specifier")])
            {
              [v8 setChecked:0];
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  result = 0;
  if ([(TISoftwareLayoutDetailControllerViewController *)self showingLanguagesSection])
  {
    if (![path section] && objc_msgSend(path, "row") >= 1)
    {
      v7 = [-[TISoftwareLayoutDetailControllerViewController specifiers](self "specifiers")];
      if ([objc_msgSend(v7 propertyForKey:{PSValueKey), "isEqual:", @"language"}])
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    if ([(TISoftwareLayoutDetailControllerViewController *)self showingLanguagesSection])
    {
      if (![path section] && objc_msgSend(path, "row") >= 1)
      {
        v7 = [-[TISoftwareLayoutDetailControllerViewController specifiers](self "specifiers")];
        if ([objc_msgSend(v7 propertyForKey:{PSValueKey), "isEqual:", @"language"}])
        {
          v8 = [v7 propertyForKey:PSIDKey];
          [(TISoftwareLayoutDetailControllerViewController *)self removeSpecifier:v7 animated:1];

          [(TISoftwareLayoutDetailControllerViewController *)self removeInputModeInMultilingualSet:v8];
        }
      }
    }
  }
}

@end