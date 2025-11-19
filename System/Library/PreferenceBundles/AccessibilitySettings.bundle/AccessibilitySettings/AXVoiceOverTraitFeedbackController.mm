@interface AXVoiceOverTraitFeedbackController
+ (id)descriptionForOption:(id)a3;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AXVoiceOverTraitFeedbackController

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
    v8 = settingsLocString(@"FEEDBACK_SPEAK_BEFORE", @"VoiceOverSettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v9 setProperty:&off_27A218 forKey:@"AXSVoiceOverTraitFeedback"];
    [v7 addObject:v9];
    v10 = settingsLocString(@"FEEDBACK_SPEAK_AFTER", @"VoiceOverSettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:&off_27A230 forKey:@"AXSVoiceOverTraitFeedback"];
    [v7 addObject:v11];
    v12 = settingsLocString(@"FEEDBACK_SPEAK_NONE", @"VoiceOverSettings");
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v13 setProperty:&off_27A248 forKey:@"AXSVoiceOverTraitFeedback"];
    [v7 addObject:v13];
    v14 = [v7 copy];
    v15 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v14;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v10 = a4;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 voiceOverTraitFeedback];

  v7 = [v10 specifier];
  v8 = [v7 propertyForKey:@"AXSVoiceOverTraitFeedback"];
  v9 = [v8 integerValue] == v6;

  [v10 setChecked:v9];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = AXVoiceOverTraitFeedbackController;
  v6 = a4;
  [(AXVoiceOverTraitFeedbackController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXVoiceOverTraitFeedbackController *)self specifierForIndexPath:v6, v11.receiver, v11.super_class];

  v8 = [v7 propertyForKey:@"AXSVoiceOverTraitFeedback"];
  v9 = [v8 integerValue];
  v10 = +[AXSettings sharedInstance];
  [v10 setVoiceOverTraitFeedback:v9];

  [(AXVoiceOverTraitFeedbackController *)self beginUpdates];
  [(AXVoiceOverTraitFeedbackController *)self reloadSpecifiers];
  [(AXVoiceOverTraitFeedbackController *)self endUpdates];
}

+ (id)descriptionForOption:(id)a3
{
  if (a3)
  {
    v3 = [a3 integerValue];
    v4 = objc_opt_new();
    if (v3 <= 2)
    {
      v5 = settingsLocString(off_2577D0[v3], @"VoiceOverSettings");
      [v4 addObject:v5];
    }

    v6 = [NSListFormatter localizedStringByJoiningStrings:v4];
  }

  else
  {
    v6 = settingsLocString(@"DEFAULT", @"Accessibility");
  }

  return v6;
}

@end