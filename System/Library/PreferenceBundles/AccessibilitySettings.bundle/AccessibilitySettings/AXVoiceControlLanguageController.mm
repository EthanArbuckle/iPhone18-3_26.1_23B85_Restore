@interface AXVoiceControlLanguageController
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AXVoiceControlLanguageController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = VSPreferencesCopyAvailableLanguageIdentifiers();
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = __46__AXVoiceControlLanguageController_specifiers__block_invoke;
    v14 = &unk_259038;
    v15 = self;
    v7 = v5;
    v16 = v7;
    [v6 enumerateObjectsUsingBlock:&v11];
    [v7 sortUsingComparator:{&__block_literal_global_69, v11, v12, v13, v14, v15}];
    if (v6)
    {
      CFRelease(v6);
    }

    v8 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v7;
    v9 = v7;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

void __46__AXVoiceControlLanguageController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSLocale currentLocale];
  v6 = [v4 localizedStringForLocaleIdentifier:v3];

  v5 = [PSSpecifier preferenceSpecifierNamed:v6 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];
  [v5 setProperty:v3 forKey:@"vcLanguage"];

  [*(a1 + 40) addObject:v5];
}

int64_t __46__AXVoiceControlLanguageController_specifiers__block_invoke_2(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a3;
  v5 = [(PSSpecifier *)a2 name];
  v6 = [(PSSpecifier *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = AXVoiceControlLanguageController;
  v4 = [(AXVoiceControlLanguageController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 specifier];
  v6 = [v5 propertyForKey:@"vcLanguage"];

  v7 = VSPreferencesCopySpokenLanguageIdentifier();
  [v4 setChecked:{objc_msgSend(v6, "isEqualToString:", v7)}];
  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = AXVoiceControlLanguageController;
  [(AXVoiceControlLanguageController *)&v25 tableView:v6 didSelectRowAtIndexPath:v7];
  v24.receiver = self;
  v24.super_class = AXVoiceControlLanguageController;
  v19 = v7;
  v18 = [(AXVoiceControlLanguageController *)&v24 tableView:v6 cellForRowAtIndexPath:v7];
  v8 = [v18 specifier];
  v9 = [v8 propertyForKey:@"vcLanguage"];

  VSPreferencesSetSpokenLanguageIdentifier();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v6 visibleCells];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 specifier];
        v17 = [v16 propertyForKey:@"vcLanguage"];
        [v15 setChecked:{objc_msgSend(v9, "isEqualToString:", v17)}];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v12);
  }
}

@end