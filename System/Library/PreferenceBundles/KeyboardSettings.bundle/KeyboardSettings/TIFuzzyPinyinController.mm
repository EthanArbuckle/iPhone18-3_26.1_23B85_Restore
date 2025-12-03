@interface TIFuzzyPinyinController
- (NSArray)fuzzyPinyinPairSpecifiers;
- (id)keyboardPreferenceValue:(id)value;
- (id)readFuzzyPinyinPairs;
- (id)specifiers;
- (void)dealloc;
- (void)emitNavigationEventForFuzzyPinyinController;
- (void)setKeyboardPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TIFuzzyPinyinController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TIFuzzyPinyinController;
  [(TIFuzzyPinyinController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TIFuzzyPinyinController;
  [(TIFuzzyPinyinController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v3] setEstimatedSectionFooterHeight:0.0];
}

- (NSArray)fuzzyPinyinPairSpecifiers
{
  fuzzyPinyinPairSpecifiers = self->_fuzzyPinyinPairSpecifiers;
  if (!fuzzyPinyinPairSpecifiers)
  {
    [(TIFuzzyPinyinController *)self setFuzzyPinyinPairs:[(TIFuzzyPinyinController *)self readFuzzyPinyinPairs]];
    v2 = +[TIChineseShared validFuzzyPinyinPairs];
    fuzzyPinyinPairSpecifiers = objc_alloc_init(NSMutableArray);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = &TUIDictationTitle_ptr;
      v6 = *v19;
      v15 = PSIDKey;
      v14 = PSKeyNameKey;
      v12 = PSCellClassKey;
      v13 = PSValueKey;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = [objc_msgSend(v5[389] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"FUZZY_PINYIN_PAIR_FORMAT", &stru_49C80, @"Keyboard"}];
          if ([v8 count] == &dword_0 + 2)
          {
            v10 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", v9, [v8 objectAtIndex:0], objc_msgSend(v8, "objectAtIndex:", 1)), self, 0, 0, 0, 3, 0);
            [v10 setProperty:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@↔︎%@", objc_msgSend(v8, "objectAtIndexedSubscript:", 0), objc_msgSend(v8, "objectAtIndexedSubscript:", 1)), v15}];
            [v10 setProperty:v8 forKey:@"TISpecifierKeyFuzzyPinyinPair"];
            [v10 setProperty:&off_4DB80 forKey:v14];
            v5 = &TUIDictationTitle_ptr;
            [v10 setProperty:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", -[NSMutableSet containsObject:](-[TIFuzzyPinyinController fuzzyPinyinPairs](self, "fuzzyPinyinPairs"), "containsObject:", v8)), v13}];
            [v10 setProperty:objc_opt_class() forKey:v12];
            [(NSArray *)fuzzyPinyinPairSpecifiers addObject:v10];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }

    self->_fuzzyPinyinPairSpecifiers = fuzzyPinyinPairSpecifiers;
  }

  return fuzzyPinyinPairSpecifiers;
}

- (id)readFuzzyPinyinPairs
{
  v2 = +[TIPreferencesController sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:TIFuzzyPinyinPairsPreference];
  v4 = +[TIChineseShared validFuzzyPinyinPairs];
  v5 = +[NSMutableSet set];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          if ([v4 containsObject:v10])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v11 = +[TIChineseShared defaultFuzzyPinyinPairs];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v5 addObject:*(*(&v17 + 1) + 8 * j)];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }
  }

  return v5;
}

- (id)keyboardPreferenceValue:(id)value
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIFuzzyPinyinPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setKeyboardPreferenceValue:(id)value forSpecifier:(id)specifier
{
  v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:{@"FUZZY_PINYIN_PAIRS_GROUP", specifier}];
  bOOLValue = [value BOOLValue];
  fuzzyPinyinPairSpecifiers = [(TIFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers];
  if (bOOLValue)
  {
    [(TIFuzzyPinyinController *)self insertContiguousSpecifiers:fuzzyPinyinPairSpecifiers afterSpecifier:v6 animated:1];
  }

  else
  {
    [(TIFuzzyPinyinController *)self removeContiguousSpecifiers:fuzzyPinyinPairSpecifiers animated:1];
    [(TIFuzzyPinyinController *)self setFuzzyPinyinPairSpecifiers:0];
  }

  v9 = +[TIPreferencesController sharedPreferencesController];
  v10 = TIFuzzyPinyinPreference;

  [v9 setValue:value forPreferenceKey:v10];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    v5 = +[NSMutableArray array];
    [v5 addObject:{+[PSSpecifier groupSpecifierWithID:](PSSpecifier, "groupSpecifierWithID:", @"FUZZY_PINYIN_GROUP"}];
    v6 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"FUZZY_PINYIN_OPTION" target:&stru_49C80 set:@"Keyboard"] get:self detail:"setKeyboardPreferenceValue:forSpecifier:" cell:"keyboardPreferenceValue:" edit:0, 6, 0];
    v15[0] = PSDefaultsKey;
    v15[1] = PSDefaultValueKey;
    v16[0] = @"com.apple.InputModePreferences";
    v16[1] = @"0";
    v15[2] = PSIDKey;
    v15[3] = PSKeyNameKey;
    v16[2] = @"FuzzyPinyin";
    v16[3] = @"FuzzyPinyin";
    [v6 setProperties:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v16, v15, 4)}];
    [v5 addObject:v6];
    v7 = [PSSpecifier groupSpecifierWithID:@"FUZZY_PINYIN_PAIRS_GROUP"];
    [v5 addObject:v7];
    v8 = [v5 indexOfObject:v7];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = +[TIPreferencesController sharedPreferencesController];
      if ([v10 BOOLForPreferenceKey:TIFuzzyPinyinPreference])
      {
        v11 = v9 + 1;
        v12 = [NSMutableIndexSet indexSetWithIndex:v9 + 1];
        v13 = [(NSArray *)[(TIFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers] count];
        if (v13)
        {
          v14 = v13;
          do
          {
            [(NSMutableIndexSet *)v12 addIndex:v11++];
            --v14;
          }

          while (v14);
        }

        [v5 insertObjects:-[TIFuzzyPinyinController fuzzyPinyinPairSpecifiers](self atIndexes:{"fuzzyPinyinPairSpecifiers"), v12}];
      }
    }

    result = v5;
    *&self->PSListController_opaque[v3] = result;
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17.receiver = self;
  v17.super_class = TIFuzzyPinyinController;
  [TIFuzzyPinyinController tableView:"tableView:didSelectRowAtIndexPath:" didSelectRowAtIndexPath:?];
  if ([path section] == &dword_0 + 1)
  {
    v7 = [path row];
    if (v7 < [(NSArray *)[(TIFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers] count])
    {
      v8 = [(NSArray *)[(TIFuzzyPinyinController *)self fuzzyPinyinPairSpecifiers] objectAtIndex:v7];
      v9 = [view cellForRowAtIndexPath:path];
      accessoryType = [v9 accessoryType];
      if (accessoryType == &dword_0 + 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = 3;
      }

      [v9 setAccessoryType:v11];
      v12 = [v8 propertyForKey:@"TISpecifierKeyFuzzyPinyinPair"];
      fuzzyPinyinPairs = [(TIFuzzyPinyinController *)self fuzzyPinyinPairs];
      if (accessoryType == &dword_0 + 3)
      {
        [(NSMutableSet *)fuzzyPinyinPairs removeObject:v12];
      }

      else
      {
        [(NSMutableSet *)fuzzyPinyinPairs addObject:v12];
      }

      v14 = [NSNumber numberWithInt:accessoryType != &dword_0 + 3];
      [v8 setProperty:v14 forKey:PSValueKey];
      v15 = +[TIPreferencesController sharedPreferencesController];
      allObjects = [(NSMutableSet *)[(TIFuzzyPinyinController *)self fuzzyPinyinPairs] allObjects];
      [v15 setValue:allObjects forPreferenceKey:TIFuzzyPinyinPairsPreference];
    }
  }
}

- (void)emitNavigationEventForFuzzyPinyinController
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/FUZZY_PINYIN_OPTION"];
  v4 = +[KeyboardController localizedStringForGeneralKeyboardSpecifier];
  -[TIFuzzyPinyinController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", [[_NSLocalizedStringResource alloc] initWithKey:@"FUZZY_PINYIN_OPTION" table:@"Keyboard" locale:+[NSLocale currentLocale](NSLocale bundleURL:{"currentLocale"), -[NSBundle bundleURL](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "bundleURL")}], +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v4, 2), v3);
}

@end