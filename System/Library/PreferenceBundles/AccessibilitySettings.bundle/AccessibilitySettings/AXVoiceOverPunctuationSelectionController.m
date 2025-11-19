@interface AXVoiceOverPunctuationSelectionController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateSelectedPunctuationGroup;
- (void)viewDidLoad;
@end

@implementation AXVoiceOverPunctuationSelectionController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    v32 = v3;
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = settingsLocString(@"PUNCTUATION_GROUPS", @"VoiceOverSettings");
    v9 = [PSSpecifier groupSpecifierWithName:v8];

    [v7 addObject:v9];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(AXVoiceOverPunctuationBaseController *)self systemPunctuationGroups];
    v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        v13 = 0;
        v14 = v9;
        do
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v39 + 1) + 8 * v13);
          v16 = [v15 name];
          v9 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

          v17 = [v15 uuid];
          [v9 setProperty:v17 forKey:@"punctuationGroupUUID"];

          [v7 addObject:v9];
          v13 = v13 + 1;
          v14 = v9;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v11);
    }

    v18 = [(AXVoiceOverPunctuationBaseController *)self customPunctuationGroups];
    if ([v18 count])
    {
      v19 = settingsLocString(@"CUSTOM_PUNCTUATION_GROUPS", @"VoiceOverSettings");
      v20 = [PSSpecifier groupSpecifierWithName:v19];

      [v7 addObject:v20];
      v9 = v20;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obja = v18;
    v21 = [obja countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      do
      {
        v24 = 0;
        v25 = v9;
        do
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v26 = *(*(&v35 + 1) + 8 * v24);
          v27 = [v26 name];
          v9 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:3 edit:0];

          v28 = [v26 uuid];
          [v9 setProperty:v28 forKey:@"punctuationGroupUUID"];

          [v7 addObject:v9];
          v24 = v24 + 1;
          v25 = v9;
        }

        while (v22 != v24);
        v22 = [obja countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v22);
    }

    v29 = [v7 copy];
    v30 = *&self->super.AXUISettingsBaseListController_opaque[v32];
    *&self->super.AXUISettingsBaseListController_opaque[v32] = v29;

    v4 = *&self->super.AXUISettingsBaseListController_opaque[v32];
  }

  return v4;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AXVoiceOverPunctuationSelectionController;
  [(AXVoiceOverPunctuationSelectionController *)&v7 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __56__AXVoiceOverPunctuationSelectionController_viewDidLoad__block_invoke;
  v4[3] = &unk_255388;
  objc_copyWeak(&v5, &location);
  [v3 registerUpdateBlock:v4 forRetrieveSelector:"voiceOverPunctuationGroup" withListener:self];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__AXVoiceOverPunctuationSelectionController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSelectedPunctuationGroup];
}

- (void)updateSelectedPunctuationGroup
{
  v2 = self;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(AXVoiceOverPunctuationSelectionController *)self specifiers];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v14 = v2;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 propertyForKey:{@"punctuationGroupUUID", v14}];
        v9 = +[AXSettings sharedInstance];
        v10 = [v9 voiceOverPunctuationGroup];
        v11 = [v8 isEqual:v10];

        if (v11)
        {
          v12 = v7;
          goto LABEL_11;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    v12 = 0;
LABEL_11:
    v2 = v14;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(AXVoiceOverPunctuationSelectionController *)v2 indexPathForSpecifier:v12];
  [(AXVoiceOverPunctuationSelectionController *)v2 updateVisibleCellsWithCheckedSelection:v13];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AXVoiceOverPunctuationSelectionController;
  [(AXVoiceOverPunctuationSelectionController *)&v10 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXVoiceOverPunctuationSelectionController *)self specifierForIndexPath:v6];
  v8 = [v7 propertyForKey:@"punctuationGroupUUID"];
  if (v8)
  {
    v9 = +[AXSettings sharedInstance];
    [v9 setVoiceOverPunctuationGroup:v8];

    [(AXVoiceOverPunctuationSelectionController *)self updateVisibleCellsWithCheckedSelection:v6];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v11 = [(AXVoiceOverPunctuationSelectionController *)self specifierForIndexPath:a5];
  v8 = [v11 propertyForKey:@"punctuationGroupUUID"];
  v9 = +[AXSettings sharedInstance];
  v10 = [v9 voiceOverPunctuationGroup];

  if (!v10)
  {
    v10 = AXSettingsDefaultPunctuationGroupUUID();
  }

  [v7 setChecked:{objc_msgSend(v10, "isEqual:", v8)}];
}

@end