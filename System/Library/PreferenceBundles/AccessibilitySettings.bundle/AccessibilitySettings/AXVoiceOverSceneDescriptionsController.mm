@interface AXVoiceOverSceneDescriptionsController
- (id)_sceneDescriptions:(id)descriptions;
- (id)specifiers;
- (void)_setSceneDescriptions:(id)descriptions specifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation AXVoiceOverSceneDescriptionsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = +[PSSpecifier emptyGroupSpecifier];
    v9 = settingsLocString(@"SCENE_DESCRIPTIONS_FOOTER", @"VoiceOverSettings");
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v7 addObject:v8];
    v10 = settingsLocString(@"VO_SCENE_DESCRIPTIONS", @"VoiceOverSettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"_setSceneDescriptions:specifier:" get:"_sceneDescriptions:" detail:0 cell:6 edit:0];

    [v7 addObject:v11];
    v12 = +[PSSpecifier emptyGroupSpecifier];

    [v7 addObject:v12];
    v13 = settingsLocString(@"VO_APPLY_TO_APPS", @"VoiceOverSettings");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v14 setProperty:@"apps" forKey:PSIDKey];
    [v7 addObject:v14];
    v15 = [v7 copy];
    v16 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v15;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)_setSceneDescriptions:(id)descriptions specifier:(id)specifier
{
  bOOLValue = [descriptions BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setVoiceOverSceneDescriptionsEnabled:bOOLValue];
}

- (id)_sceneDescriptions:(id)descriptions
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 voiceOverSceneDescriptionsEnabled]);

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AXVoiceOverSceneDescriptionsController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:PSIDKey];
  v10 = [v9 isEqualToString:@"apps"];

  if (v10)
  {
    v11 = objc_alloc_init(AXAppSelectionController);
    rootController = [(AXVoiceOverSceneDescriptionsController *)self rootController];
    [(AXAppSelectionController *)v11 setRootController:rootController];

    [(AXAppSelectionController *)v11 setSpecifier:v8];
    [(AXAppSelectionController *)v11 setParentController:self];
    [(AXAppSelectionController *)v11 setIncludesHomeScreen:0];
    objc_initWeak(&location, self);
    [(AXAppSelectionController *)v11 setGetUnselectedApps:&__block_literal_global_32];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __76__AXVoiceOverSceneDescriptionsController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v14[3] = &unk_2563A0;
    objc_copyWeak(&v15, &location);
    [(AXAppSelectionController *)v11 setSetUnselectedApps:v14];
    [(AXVoiceOverSceneDescriptionsController *)self showController:v11 animate:1];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AXVoiceOverSceneDescriptionsController;
    [(AXVoiceOverSceneDescriptionsController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

NSSet *__cdecl __76__AXVoiceOverSceneDescriptionsController_tableView_didSelectRowAtIndexPath___block_invoke(id a1)
{
  v1 = +[AXSettings sharedInstance];
  v2 = [v1 imageCaptioningDisabledApps];

  if (v2)
  {
    v3 = [NSSet setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __76__AXVoiceOverSceneDescriptionsController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 allObjects];

  v5 = +[AXSettings sharedInstance];
  [v5 setImageCaptioningDisabledApps:v4];

  [WeakRetained reloadSpecifierID:@"apps"];
}

@end