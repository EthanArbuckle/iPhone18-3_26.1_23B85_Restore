@interface AXVoiceOverCapitalLetterFeedbackController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AXVoiceOverCapitalLetterFeedbackController

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
    v8 = settingsLocString(@"CAPITAL_LETTER_SPEAK_CAPITAL", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v9 setProperty:&off_27A710 forKey:@"AXSVoiceOverCapitalLetterFeedback"];
    [v7 addObject:v9];
    v10 = settingsLocString(@"FEEDBACK_PLAY_TONE", @"VoiceOverSettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&off_27A728 forKey:@"AXSVoiceOverCapitalLetterFeedback"];
    [v7 addObject:v11];
    v12 = settingsLocString(@"FEEDBACK_CHANGE_PITCH", @"VoiceOverSettings");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&off_27A740 forKey:@"AXSVoiceOverCapitalLetterFeedback"];
    [v7 addObject:v13];
    v14 = settingsLocString(@"FEEDBACK_DO_NOTHING", @"VoiceOverSettings");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v15 setProperty:&off_27A758 forKey:@"AXSVoiceOverCapitalLetterFeedback"];
    [v7 addObject:v15];
    v16 = [v7 copy];
    v17 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v16;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v10 = a4;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 voiceOverCapitalLetterFeedback];

  v7 = [v10 specifier];
  v8 = [v7 propertyForKey:@"AXSVoiceOverCapitalLetterFeedback"];
  v9 = [v8 integerValue] == v6;

  [v10 setChecked:v9];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = AXVoiceOverCapitalLetterFeedbackController;
  v6 = a4;
  [(AXVoiceOverCapitalLetterFeedbackController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXVoiceOverCapitalLetterFeedbackController *)self specifierForIndexPath:v6, v11.receiver, v11.super_class];

  v8 = [v7 propertyForKey:@"AXSVoiceOverCapitalLetterFeedback"];
  v9 = [v8 integerValue];
  v10 = +[AXSettings sharedInstance];
  [v10 setVoiceOverCapitalLetterFeedback:v9];

  [(AXVoiceOverCapitalLetterFeedbackController *)self beginUpdates];
  [(AXVoiceOverCapitalLetterFeedbackController *)self reloadSpecifiers];
  [(AXVoiceOverCapitalLetterFeedbackController *)self endUpdates];
}

@end