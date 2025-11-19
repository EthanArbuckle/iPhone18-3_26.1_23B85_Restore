@interface AXVoiceOverSelectedBrailleTableController
- (VoiceOverBrailleLanguageController)parentBrailleController;
- (id)_defaultTable;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AXVoiceOverSelectedBrailleTableController

- (id)specifiers
{
  v2 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
    goto LABEL_22;
  }

  v32 = OBJC_IVAR___PSListController__specifiers;
  v34 = +[NSMutableArray array];
  v5 = +[AXSettings sharedInstance];
  [v5 voiceOverBrailleLanguageRotorItems];
  v6 = v33 = self;

  v7 = +[AXLanguageManager sharedInstance];
  v8 = [v7 userLocale];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v6;
  v10 = self;
  obj = v9;
  v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = v11;
  v13 = *v37;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v37 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v36 + 1) + 8 * i);
      v16 = [v15 objectForKeyedSubscript:@"Default"];
      v17 = [v16 BOOLValue];

      if (v17)
      {
        v18 = [v15 objectForKeyedSubscript:@"LanguageDefaults"];
        v19 = [v8 localeIdentifier];
        v20 = [v18 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [[BRLTTable alloc] initWithIdentifier:v20];
        }

        else
        {
          v23 = [(AXVoiceOverSelectedBrailleTableController *)v10 parentBrailleController];
          v24 = [v23 tableEnumerator];
          v21 = [objc_opt_class() defaultTableForLocale:v8];

          v10 = v33;
        }
      }

      else
      {
        v22 = [BRLTTable alloc];
        v18 = [v15 objectForKeyedSubscript:@"RotorItem"];
        v21 = [v22 initWithIdentifier:v18];
      }

      if (VOSCustomBrailleEnabled())
      {
        v25 = [v21 replacements];
        v26 = [v25 count];

        if (v26)
        {
          goto LABEL_19;
        }
      }

      else if ([v21 isCustomBrailleTable])
      {
        goto LABEL_19;
      }

      v27 = [v21 localizedNameWithService];
      v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:v10 set:0 get:0 detail:0 cell:3 edit:0];

      [v28 setProperty:v21 forKey:@"Table"];
      [v34 addObject:v28];

LABEL_19:
    }

    v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v12);
LABEL_21:

  v29 = *&v10->AXUISettingsBaseListController_opaque[v32];
  *&v10->AXUISettingsBaseListController_opaque[v32] = v34;
  v30 = v34;

  v3 = *&v10->AXUISettingsBaseListController_opaque[v32];
LABEL_22:

  return v3;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v17 = a4;
  v7 = [(AXVoiceOverSelectedBrailleTableController *)self specifierForIndexPath:a5];
  v8 = [v7 propertyForKey:@"Table"];
  v9 = +[AXSettings sharedInstance];
  v10 = [v9 voiceOverBrailleTableIdentifier];

  v11 = [v8 identifier];
  if ([v11 isEqualToString:v10])
  {

LABEL_3:
    v12 = 3;
    goto LABEL_8;
  }

  if (v10)
  {
  }

  else
  {
    v13 = [v8 identifier];
    v14 = [(AXVoiceOverSelectedBrailleTableController *)self _defaultTable];
    v15 = [v14 identifier];
    v16 = [v13 isEqualToString:v15];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_8:
  [v17 setAccessoryType:v12];
}

- (id)_defaultTable
{
  v3 = +[AXLanguageManager sharedInstance];
  v4 = [v3 userLocale];

  v5 = [(AXVoiceOverSelectedBrailleTableController *)self parentBrailleController];
  v6 = [v5 tableEnumerator];
  v7 = [objc_opt_class() defaultTableForLocale:v4];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = [(AXVoiceOverSelectedBrailleTableController *)self specifierForIndexPath:a4];
  v5 = [v8 propertyForKey:@"Table"];
  v6 = [v5 identifier];
  v7 = +[AXSettings sharedInstance];
  [v7 setVoiceOverBrailleTableIdentifier:v6];

  [(AXVoiceOverSelectedBrailleTableController *)self reload];
}

- (VoiceOverBrailleLanguageController)parentBrailleController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentBrailleController);

  return WeakRetained;
}

@end