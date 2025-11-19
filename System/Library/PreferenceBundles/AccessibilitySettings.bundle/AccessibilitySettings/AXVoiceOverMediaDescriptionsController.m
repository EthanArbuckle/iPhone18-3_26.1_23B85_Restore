@interface AXVoiceOverMediaDescriptionsController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AXVoiceOverMediaDescriptionsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v7 = +[NSMutableArray array];
    v8 = +[PSSpecifier emptyGroupSpecifier];
    v9 = settingsLocString(@"MEDIA_DESC_FOOTER", @"VoiceOverSettings");
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v7 addObject:v8];
    v10 = AXParameterizedLocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&off_279D68 forKey:@"AXSVoiceOverMediaDescriptions"];
    v12 = PSIDKey;
    [v11 setProperty:@"mdOff" forKey:PSIDKey];
    [v7 addObject:v11];
    v13 = AXParameterizedLocalizedString();
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:&off_279D80 forKey:@"AXSVoiceOverMediaDescriptions"];
    [v14 setProperty:@"mdSpeech" forKey:v12];
    [v7 addObject:v14];
    v15 = AXParameterizedLocalizedString();
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v16 setProperty:&off_279D98 forKey:@"AXSVoiceOverMediaDescriptions"];
    [v16 setProperty:@"mdBraille" forKey:v12];
    [v7 addObject:v16];
    v17 = AXParameterizedLocalizedString();
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v18 setProperty:&off_279DB0 forKey:@"AXSVoiceOverMediaDescriptions"];
    [v18 setProperty:@"mdSpeechAndBraille" forKey:v12];
    [v7 addObject:v18];
    v19 = [v7 copy];
    v20 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v19;

    self->_oldSelectionIndex = 0x7FFFFFFFFFFFFFFFLL;
    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = +[AXSettings sharedInstance];
  v9 = [v8 voiceOverDescribedMedia];

  v10 = [v13 specifier];
  v11 = [v10 propertyForKey:@"AXSVoiceOverMediaDescriptions"];
  v12 = [v11 integerValue];

  if (v12 == v9)
  {
    self->_oldSelectionIndex = [v7 row];
  }

  [v13 setChecked:v12 == v9];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = AXVoiceOverMediaDescriptionsController;
  [(AXVoiceOverMediaDescriptionsController *)&v17 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(AXVoiceOverMediaDescriptionsController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"AXSVoiceOverMediaDescriptions"];
  v10 = [v9 integerValue];
  v11 = +[AXSettings sharedInstance];
  [v11 setVoiceOverDescribedMedia:v10];

  oldSelectionIndex = self->_oldSelectionIndex;
  v13 = [v7 row];
  self->_oldSelectionIndex = v13;
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", oldSelectionIndex, [v7 section]);
    v15 = [v6 cellForRowAtIndexPath:v14];
    [v15 setChecked:0];
  }

  v16 = [v6 cellForRowAtIndexPath:v7];
  [v16 setChecked:1];
}

@end