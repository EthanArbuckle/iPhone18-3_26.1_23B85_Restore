@interface AXVoiceOverNumberFeedbackController
- (id)getValueSelectedBlock;
- (id)setValueSelectedBlock;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation AXVoiceOverNumberFeedbackController

- (id)getValueSelectedBlock
{
  v2 = [(AXVoiceOverNumberFeedbackController *)self specifier];
  v3 = [v2 propertyForKey:@"getValueSelectedBlock"];

  return v3;
}

- (id)setValueSelectedBlock
{
  v2 = [(AXVoiceOverNumberFeedbackController *)self specifier];
  v3 = [v2 propertyForKey:@"setValueSelectedBlock"];

  return v3;
}

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
    v8 = [(AXVoiceOverNumberFeedbackController *)self specifier];
    v9 = [v8 propertyForKey:@"showDefault"];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = settingsLocString(@"DEFAULT", @"VoiceOverSettings");
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v7 addObject:v12];
    }

    v13 = settingsLocString(@"NUMBER_FEEDBACK_WORDS", @"VoiceOverSettings");
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:&off_27ADD0 forKey:@"AXSVoiceOverNumberFeedback"];
    [v7 addObject:v14];
    v15 = settingsLocString(@"NUMBER_FEEDBACK_DIGITS", @"VoiceOverSettings");
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v16 setProperty:&off_27ADE8 forKey:@"AXSVoiceOverNumberFeedback"];
    [v7 addObject:v16];
    v17 = [v7 copy];
    v18 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v17;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13 = a4;
  v6 = [(AXVoiceOverNumberFeedbackController *)self getValueSelectedBlock];
  if (v6)
  {
    v7 = [(AXVoiceOverNumberFeedbackController *)self getValueSelectedBlock];
    v8 = v7[2]();
    v9 = [v8 integerValue];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    v9 = [v7 voiceOverNumberFeedback];
  }

  v10 = [v13 specifier];
  v11 = [v10 propertyForKey:@"AXSVoiceOverNumberFeedback"];
  v12 = [v11 integerValue] == v9;

  [v13 setChecked:v12];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = AXVoiceOverNumberFeedbackController;
  v6 = a4;
  [(AXVoiceOverNumberFeedbackController *)&v12 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXVoiceOverNumberFeedbackController *)self specifierForIndexPath:v6, v12.receiver, v12.super_class];

  v8 = [v7 propertyForKey:@"AXSVoiceOverNumberFeedback"];

  v9 = [(AXVoiceOverNumberFeedbackController *)self setValueSelectedBlock];

  if (v9)
  {
    v10 = [(AXVoiceOverNumberFeedbackController *)self setValueSelectedBlock];
    (v10)[2](v10, v8);
  }

  else
  {
    v11 = [v8 integerValue];
    v10 = +[AXSettings sharedInstance];
    [v10 setVoiceOverNumberFeedback:v11];
  }

  [(AXVoiceOverNumberFeedbackController *)self beginUpdates];
  [(AXVoiceOverNumberFeedbackController *)self reloadSpecifiers];
  [(AXVoiceOverNumberFeedbackController *)self endUpdates];
}

@end