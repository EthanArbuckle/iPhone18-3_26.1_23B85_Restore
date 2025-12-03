@interface AXVoiceOverSelectedBrailleTableController
- (VoiceOverBrailleLanguageController)parentBrailleController;
- (id)_defaultTable;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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
  userLocale = [v7 userLocale];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v6;
  selfCopy = self;
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
      bOOLValue = [v16 BOOLValue];

      if (bOOLValue)
      {
        v18 = [v15 objectForKeyedSubscript:@"LanguageDefaults"];
        localeIdentifier = [userLocale localeIdentifier];
        v20 = [v18 objectForKeyedSubscript:localeIdentifier];

        if (v20)
        {
          v21 = [[BRLTTable alloc] initWithIdentifier:v20];
        }

        else
        {
          parentBrailleController = [(AXVoiceOverSelectedBrailleTableController *)selfCopy parentBrailleController];
          tableEnumerator = [parentBrailleController tableEnumerator];
          v21 = [objc_opt_class() defaultTableForLocale:userLocale];

          selfCopy = v33;
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
        replacements = [v21 replacements];
        v26 = [replacements count];

        if (v26)
        {
          goto LABEL_19;
        }
      }

      else if ([v21 isCustomBrailleTable])
      {
        goto LABEL_19;
      }

      localizedNameWithService = [v21 localizedNameWithService];
      v28 = [PSSpecifier preferenceSpecifierNamed:localizedNameWithService target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

      [v28 setProperty:v21 forKey:@"Table"];
      [v34 addObject:v28];

LABEL_19:
    }

    v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v12);
LABEL_21:

  v29 = *&selfCopy->AXUISettingsBaseListController_opaque[v32];
  *&selfCopy->AXUISettingsBaseListController_opaque[v32] = v34;
  v30 = v34;

  v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v32];
LABEL_22:

  return v3;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v7 = [(AXVoiceOverSelectedBrailleTableController *)self specifierForIndexPath:path];
  v8 = [v7 propertyForKey:@"Table"];
  v9 = +[AXSettings sharedInstance];
  voiceOverBrailleTableIdentifier = [v9 voiceOverBrailleTableIdentifier];

  identifier = [v8 identifier];
  if ([identifier isEqualToString:voiceOverBrailleTableIdentifier])
  {

LABEL_3:
    v12 = 3;
    goto LABEL_8;
  }

  if (voiceOverBrailleTableIdentifier)
  {
  }

  else
  {
    identifier2 = [v8 identifier];
    _defaultTable = [(AXVoiceOverSelectedBrailleTableController *)self _defaultTable];
    identifier3 = [_defaultTable identifier];
    v16 = [identifier2 isEqualToString:identifier3];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_8:
  [cellCopy setAccessoryType:v12];
}

- (id)_defaultTable
{
  v3 = +[AXLanguageManager sharedInstance];
  userLocale = [v3 userLocale];

  parentBrailleController = [(AXVoiceOverSelectedBrailleTableController *)self parentBrailleController];
  tableEnumerator = [parentBrailleController tableEnumerator];
  v7 = [objc_opt_class() defaultTableForLocale:userLocale];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v8 = [(AXVoiceOverSelectedBrailleTableController *)self specifierForIndexPath:path];
  v5 = [v8 propertyForKey:@"Table"];
  identifier = [v5 identifier];
  v7 = +[AXSettings sharedInstance];
  [v7 setVoiceOverBrailleTableIdentifier:identifier];

  [(AXVoiceOverSelectedBrailleTableController *)self reload];
}

- (VoiceOverBrailleLanguageController)parentBrailleController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentBrailleController);

  return WeakRetained;
}

@end